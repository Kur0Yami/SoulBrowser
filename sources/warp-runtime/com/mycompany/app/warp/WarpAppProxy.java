package com.mycompany.app.warp;

import android.util.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.List;

/**
 * Routes JVM HTTP(S) (HttpURLConnection, OkHttp default selector, etc.) through the
 * local soulamz CONNECT proxy while WARP is up. WebView still uses
 * {@link WebViewProxyHelper} separately.
 */
public final class WarpAppProxy {
    private static final String TAG = "WarpAppProxy";

    private static final Object LOCK = new Object();
    private static volatile Proxy activeProxy = Proxy.NO_PROXY;
    private static volatile ProxySelector previousSelector;
    private static volatile boolean installed;

    private WarpAppProxy() {}

    /** Install process-wide proxy routing for {@code host:port}. */
    public static void install(String hostPort) {
        if (hostPort == null || hostPort.isEmpty()) {
            uninstall();
            return;
        }
        int colon = hostPort.lastIndexOf(':');
        String host = colon > 0 ? hostPort.substring(0, colon) : "127.0.0.1";
        int port;
        try {
            port =
                    colon > 0
                            ? Integer.parseInt(hostPort.substring(colon + 1))
                            : PrefWarp.DEFAULT_PORT;
        } catch (NumberFormatException e) {
            Log.e(TAG, "bad listen address " + hostPort, e);
            return;
        }
        final Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(host, port));
        synchronized (LOCK) {
            activeProxy = proxy;
            if (!installed) {
                previousSelector = ProxySelector.getDefault();
                installed = true;
            }
            ProxySelector.setDefault(new Selector(proxy, previousSelector));
            System.setProperty("http.proxyHost", host);
            System.setProperty("http.proxyPort", Integer.toString(port));
            System.setProperty("https.proxyHost", host);
            System.setProperty("https.proxyPort", Integer.toString(port));
            System.setProperty("http.nonProxyHosts", "localhost|127.*|[::1]|*.localhost");
            Log.i(TAG, "installed app HTTP proxy " + hostPort);
        }
    }

    /** Remove process-wide proxy routing. */
    public static void uninstall() {
        synchronized (LOCK) {
            activeProxy = Proxy.NO_PROXY;
            if (installed) {
                ProxySelector.setDefault(previousSelector);
                previousSelector = null;
                installed = false;
            }
            System.clearProperty("http.proxyHost");
            System.clearProperty("http.proxyPort");
            System.clearProperty("https.proxyHost");
            System.clearProperty("https.proxyPort");
            System.clearProperty("http.nonProxyHosts");
            Log.i(TAG, "uninstalled app HTTP proxy");
        }
    }

    /** Explicit open used by smali patches of Soul HTTP chokepoints. */
    public static URLConnection open(URL url) throws IOException {
        Proxy proxy = activeProxy;
        if (proxy == null || proxy == Proxy.NO_PROXY || shouldBypass(url)) {
            return url.openConnection();
        }
        return url.openConnection(proxy);
    }

    private static boolean shouldBypass(URL url) {
        if (url == null) {
            return true;
        }
        String host = url.getHost();
        if (host == null || host.isEmpty()) {
            return true;
        }
        String h = host.toLowerCase();
        return "localhost".equals(h)
                || "127.0.0.1".equals(h)
                || "[::1]".equals(h)
                || h.endsWith(".localhost");
    }

    private static final class Selector extends ProxySelector {
        private final Proxy proxy;
        private final ProxySelector fallback;

        Selector(Proxy proxy, ProxySelector fallback) {
            this.proxy = proxy;
            this.fallback = fallback;
        }

        @Override
        public List<Proxy> select(URI uri) {
            if (uri == null) {
                return Collections.singletonList(Proxy.NO_PROXY);
            }
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if (host != null) {
                String h = host.toLowerCase();
                if ("localhost".equals(h)
                        || "127.0.0.1".equals(h)
                        || "[::1]".equals(h)
                        || h.endsWith(".localhost")) {
                    return Collections.singletonList(Proxy.NO_PROXY);
                }
            }
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                return Collections.singletonList(proxy);
            }
            if (fallback != null) {
                return fallback.select(uri);
            }
            return Collections.singletonList(Proxy.NO_PROXY);
        }

        @Override
        public void connectFailed(URI uri, SocketAddress sa, IOException ioe) {
            if (fallback != null) {
                fallback.connectFailed(uri, sa, ioe);
            }
        }
    }
}
