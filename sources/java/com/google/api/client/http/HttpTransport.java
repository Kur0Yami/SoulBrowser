package com.google.api.client.http;

import java.util.Arrays;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class HttpTransport {
    static final Logger LOGGER = Logger.getLogger(HttpTransport.class.getName());
    private static final String[] SUPPORTED_METHODS;

    static {
        String[] strArr = {HttpMethods.DELETE, HttpMethods.GET, HttpMethods.POST, HttpMethods.PUT};
        SUPPORTED_METHODS = strArr;
        Arrays.sort(strArr);
    }

    public HttpRequest buildRequest() {
        return new HttpRequest(this, null);
    }

    public abstract LowLevelHttpRequest buildRequest(String str, String str2);

    public final HttpRequestFactory createRequestFactory() {
        return createRequestFactory(null);
    }

    public boolean isMtls() {
        return false;
    }

    public boolean isShutdown() {
        return true;
    }

    public void shutdown() {
    }

    public boolean supportsMethod(String str) {
        if (Arrays.binarySearch(SUPPORTED_METHODS, str) >= 0) {
            return true;
        }
        return false;
    }

    public final HttpRequestFactory createRequestFactory(HttpRequestInitializer httpRequestInitializer) {
        return new HttpRequestFactory(this, httpRequestInitializer);
    }
}
