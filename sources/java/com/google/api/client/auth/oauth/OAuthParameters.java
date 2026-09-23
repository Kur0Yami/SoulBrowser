package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Data;
import com.google.api.client.util.escape.PercentEscaper;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;

@Beta
/* loaded from: classes3.dex */
public final class OAuthParameters implements HttpExecuteInterceptor, HttpRequestInitializer {

    /* renamed from: a, reason: collision with root package name */
    public static final SecureRandom f12068a = new SecureRandom();

    /* loaded from: classes3.dex */
    public static class Parameter implements Comparable<Parameter> {
        @Override // java.lang.Comparable
        public final int compareTo(Parameter parameter) {
            parameter.getClass();
            throw null;
        }
    }

    static {
        new PercentEscaper("-_.~");
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public final void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public final void intercept(HttpRequest httpRequest) {
        Long.toHexString(Math.abs(f12068a.nextLong()));
        Long.toString(System.currentTimeMillis() / 1000);
        try {
            GenericUrl url = httpRequest.getUrl();
            HttpContent content = httpRequest.getContent();
            if (content instanceof UrlEncodedContent) {
                url.putAll(Data.mapOf(((UrlEncodedContent) content).getData()));
            }
            httpRequest.getRequestMethod();
            throw null;
        } catch (GeneralSecurityException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        }
    }
}
