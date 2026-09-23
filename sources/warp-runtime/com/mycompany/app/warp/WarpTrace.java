package com.mycompany.app.warp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/** Fetches Cloudflare {@code /cdn-cgi/trace} (optionally via the local WARP HTTP proxy). */
final class WarpTrace {
    private static final String TRACE_URL = "https://www.cloudflare.com/cdn-cgi/trace";
    private static final int TIMEOUT_MS = 12000;

    static final class Info {
        final String ip;
        final String colo;
        final String loc;
        final String warp;
        final String rawError;

        Info(String ip, String colo, String loc, String warp, String rawError) {
            this.ip = ip;
            this.colo = colo;
            this.loc = loc;
            this.warp = warp;
            this.rawError = rawError;
        }

        String summary() {
            if (rawError != null) {
                return rawError;
            }
            StringBuilder sb = new StringBuilder();
            if (ip != null && !ip.isEmpty()) {
                sb.append(ip);
            }
            if (colo != null && !colo.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(" · ");
                }
                sb.append(colo);
            }
            if (loc != null && !loc.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(" · ");
                }
                sb.append(loc);
            }
            if (warp != null && !warp.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(" · ");
                }
                sb.append("warp=").append(warp);
            }
            return sb.length() > 0 ? sb.toString() : "—";
        }
    }

    private WarpTrace() {}

    /**
     * @param proxyListen host:port for HTTP proxy, or null for a direct request
     */
    static Info fetch(String proxyListen) {
        HttpURLConnection conn = null;
        try {
            URL url = new URL(TRACE_URL);
            if (proxyListen != null && !proxyListen.isEmpty()) {
                int colon = proxyListen.lastIndexOf(':');
                String host = colon > 0 ? proxyListen.substring(0, colon) : "127.0.0.1";
                int port =
                        colon > 0
                                ? Integer.parseInt(proxyListen.substring(colon + 1))
                                : PrefWarp.DEFAULT_PORT;
                Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(host, port));
                conn = (HttpURLConnection) url.openConnection(proxy);
            } else {
                conn = (HttpURLConnection) url.openConnection();
            }
            conn.setConnectTimeout(TIMEOUT_MS);
            conn.setReadTimeout(TIMEOUT_MS);
            conn.setInstanceFollowRedirects(true);
            conn.setRequestMethod("GET");
            int code = conn.getResponseCode();
            BufferedReader reader =
                    new BufferedReader(
                            new InputStreamReader(
                                    code >= 400 ? conn.getErrorStream() : conn.getInputStream(),
                                    StandardCharsets.UTF_8));
            StringBuilder body = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                body.append(line).append('\n');
            }
            reader.close();
            if (code != 200) {
                return new Info(null, null, null, null, "HTTP " + code);
            }
            Map<String, String> map = parse(body.toString());
            return new Info(map.get("ip"), map.get("colo"), map.get("loc"), map.get("warp"), null);
        } catch (Exception e) {
            String msg = e.getMessage();
            return new Info(null, null, null, null, msg != null ? msg : e.getClass().getSimpleName());
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    private static Map<String, String> parse(String body) {
        HashMap<String, String> map = new HashMap<>();
        for (String line : body.split("\n")) {
            int eq = line.indexOf('=');
            if (eq > 0) {
                map.put(line.substring(0, eq).trim(), line.substring(eq + 1).trim());
            }
        }
        return map;
    }
}
