package com.google.api.client.testing.http.javanet;

import com.google.api.client.util.Beta;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Map;

@Beta
/* loaded from: classes3.dex */
public class MockHttpURLConnection extends HttpURLConnection {
    @Override // java.net.URLConnection
    public final void connect() {
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        return null;
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        throw null;
    }

    @Override // java.net.URLConnection
    public final Map getHeaderFields() {
        return null;
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        if (((HttpURLConnection) this).responseCode < 400) {
            return null;
        }
        throw new IOException();
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() {
        return ((HttpURLConnection) this).responseCode;
    }

    @Override // java.net.URLConnection
    public final void setDoOutput(boolean z) {
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        return false;
    }
}
