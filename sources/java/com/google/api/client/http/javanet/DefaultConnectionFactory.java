package com.google.api.client.http.javanet;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes3.dex */
public class DefaultConnectionFactory implements ConnectionFactory {
    private final Proxy proxy;

    public DefaultConnectionFactory() {
        this(null);
    }

    @Override // com.google.api.client.http.javanet.ConnectionFactory
    public HttpURLConnection openConnection(URL url) {
        URLConnection openConnection;
        Proxy proxy = this.proxy;
        if (proxy == null) {
            openConnection = url.openConnection();
        } else {
            openConnection = url.openConnection(proxy);
        }
        return (HttpURLConnection) openConnection;
    }

    public DefaultConnectionFactory(Proxy proxy) {
        this.proxy = proxy;
    }
}
