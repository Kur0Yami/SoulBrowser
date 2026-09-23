// Command soulamz wraps the unofficial amz Cloudflare WARP SDK as a local
// HTTP CONNECT proxy for Soul Browser (WebView ProxyController + app HttpURLConnection/OkHttp).
package main

import (
	"context"
	"crypto/tls"
	"crypto/x509"
	"flag"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"net/url"
	"os"
	"os/signal"
	"path/filepath"
	"strings"
	"syscall"
	"time"

	"github.com/skye-z/amz"
)

func init() {
	configureAndroidDNS()
	configureAndroidCerts()
}

func configureAndroidDNS() {
	// Android often has no /etc/resolv.conf. Pure-Go DNS then defaults to
	// 127.0.0.1 / ::1:53, which refuses connections inside an app sandbox.
	net.DefaultResolver = &net.Resolver{
		PreferGo: true,
		Dial: func(ctx context.Context, network, _ string) (net.Conn, error) {
			d := net.Dialer{Timeout: 5 * time.Second}
			var last error
			for _, dns := range []string{"1.1.1.1:53", "1.0.0.1:53", "8.8.8.8:53"} {
				c, err := d.DialContext(ctx, "udp", dns)
				if err == nil {
					return c, nil
				}
				last = err
			}
			if last != nil {
				return nil, last
			}
			return d.DialContext(ctx, network, "1.1.1.1:53")
		},
	}
}

func configureAndroidCerts() {
	pool, err := x509.SystemCertPool()
	if err != nil || pool == nil {
		pool = x509.NewCertPool()
	}
	dirs := []string{
		"/system/etc/security/cacerts",
		"/apex/com.android.conscrypt/cacerts",
		"/data/misc/keychain/cacerts-added",
	}
	added := 0
	for _, dir := range dirs {
		entries, err := os.ReadDir(dir)
		if err != nil {
			continue
		}
		for _, entry := range entries {
			if entry.IsDir() {
				continue
			}
			path := filepath.Join(dir, entry.Name())
			data, err := os.ReadFile(path)
			if err != nil {
				continue
			}
			if pool.AppendCertsFromPEM(data) {
				added++
				continue
			}
			if cert, err := x509.ParseCertificate(data); err == nil {
				pool.AddCert(cert)
				added++
			}
		}
	}
	if added == 0 {
		log.Printf("warning: no Android CA certificates loaded from known paths")
	} else {
		log.Printf("loaded Android CA material (%d files parsed)", added)
	}
	x509.SetFallbackRoots(pool)

	tlsConfig := &tls.Config{RootCAs: pool}
	if transport, ok := http.DefaultTransport.(*http.Transport); ok {
		clone := transport.Clone()
		clone.TLSClientConfig = tlsConfig
		http.DefaultTransport = clone
	} else {
		http.DefaultTransport = &http.Transport{
			Proxy:                 http.ProxyFromEnvironment,
			ForceAttemptHTTP2:     true,
			MaxIdleConns:          100,
			IdleConnTimeout:       90 * time.Second,
			TLSHandshakeTimeout:   10 * time.Second,
			ExpectContinueTimeout: 1 * time.Second,
			TLSClientConfig:       tlsConfig,
		}
	}
}

// Preferred MASQUE endpoints. amz auto-select often picks *:443 first, but
// Cloudflare serves masque.cloudflareclient.com there while amz uses SNI
// warp.cloudflare.com on port 443 — CONNECT then fails with protocol errors.
// Non-443 ports use pinned MASQUE trust and work (verified: 4443/4500/500/1701).
var preferredEndpoints = []string{
	"162.159.198.2:4443",
	"162.159.198.2:4500",
	"162.159.198.2:500",
	"162.159.198.2:1701",
	"engage.cloudflareclient.com:4443",
	"engage.cloudflareclient.com:4500",
	"engage.cloudflareclient.com:500",
	"engage.cloudflareclient.com:1701",
}

func main() {
	listen := flag.String("listen", "127.0.0.1:19811", "HTTP proxy listen address")
	storage := flag.String("storage", "amz.state.json", "amz registration state file")
	endpoint := flag.String("endpoint", "", "Force WARP MASQUE endpoint host:port (empty = try preferred list)")
	flag.Parse()

	runCtx, stop := signal.NotifyContext(context.Background(), syscall.SIGINT, syscall.SIGTERM)
	defer stop()

	candidates := preferredEndpoints
	if strings.TrimSpace(*endpoint) != "" {
		candidates = []string{strings.TrimSpace(*endpoint)}
	}

	var (
		client *amz.Client
		addr   string
		last   error
	)
	for _, ep := range candidates {
		// Use a fresh background context per attempt so a failed probe/close
		// cannot cancel later Start() calls (amz ties runtime to Start's ctx).
		c, a, err := startWithEndpoint(context.Background(), *listen, *storage, ep)
		if err != nil {
			last = err
			log.Printf("endpoint %s failed to start: %v", ep, err)
			time.Sleep(300 * time.Millisecond)
			continue
		}
		if err := probeProxy(runCtx, a); err != nil {
			last = err
			log.Printf("endpoint %s probe failed: %v", ep, err)
			_ = c.Close()
			time.Sleep(300 * time.Millisecond)
			continue
		}
		client = c
		addr = a
		log.Printf("using WARP endpoint %s via %s", ep, addr)
		break
	}
	if client == nil {
		log.Fatalf("no working WARP endpoint: %v", last)
	}
	defer client.Close()

	fmt.Fprintf(os.Stdout, "READY %s\n", addr)
	_ = os.Stdout.Sync()

	<-runCtx.Done()
	if err := client.Close(); err != nil {
		log.Printf("amz.Close: %v", err)
	}
}

func startWithEndpoint(parent context.Context, listen, storage, endpoint string) (*amz.Client, string, error) {
	client, err := amz.NewClient(amz.Options{
		Storage: amz.StorageOptions{
			Path: storage,
		},
		Listen: amz.ListenOptions{
			Address: listen,
		},
		Transport: amz.TransportOptions{
			Endpoint: endpoint,
			SNI:      "masque.cloudflareclient.com",
		},
		HTTP: amz.HTTPOptions{
			Enabled: true,
		},
		SOCKS5: amz.SOCKS5Options{
			Enabled: false,
		},
		Logger: log.Default(),
	})
	if err != nil {
		return nil, "", err
	}
	if err := client.Start(parent); err != nil {
		_ = client.Close()
		return nil, "", err
	}
	addr := client.ListenAddress()
	if addr == "" {
		addr = listen
	}
	return client, addr, nil
}

func probeProxy(ctx context.Context, listenAddr string) error {
	proxyURL, err := url.Parse("http://" + listenAddr)
	if err != nil {
		return err
	}
	probeCtx, cancel := context.WithTimeout(ctx, 25*time.Second)
	defer cancel()
	req, err := http.NewRequestWithContext(probeCtx, http.MethodGet, "https://www.cloudflare.com/cdn-cgi/trace", nil)
	if err != nil {
		return err
	}
	httpClient := &http.Client{
		Transport: &http.Transport{Proxy: http.ProxyURL(proxyURL)},
		Timeout:   25 * time.Second,
	}
	resp, err := httpClient.Do(req)
	if err != nil {
		return err
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(io.LimitReader(resp.Body, 2048))
	if resp.StatusCode != http.StatusOK {
		return fmt.Errorf("probe status %d: %s", resp.StatusCode, strings.TrimSpace(string(body)))
	}
	if !strings.Contains(string(body), "warp=on") {
		return fmt.Errorf("probe missing warp=on: %s", strings.TrimSpace(string(body)))
	}
	return nil
}
