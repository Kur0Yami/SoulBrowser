package com.google.api.client.auth.oauth2;

import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.util.Data;
import com.google.api.client.util.Preconditions;
import java.util.Map;

/* loaded from: classes3.dex */
public class ClientParametersAuthentication implements HttpRequestInitializer, HttpExecuteInterceptor {

    /* renamed from: a, reason: collision with root package name */
    public final String f12071a;
    public final String b;

    public ClientParametersAuthentication(String str, String str2) {
        this.f12071a = (String) Preconditions.checkNotNull(str);
        this.b = str2;
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public final void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public final void intercept(HttpRequest httpRequest) {
        Map<String, Object> mapOf = Data.mapOf(UrlEncodedContent.getContent(httpRequest).getData());
        mapOf.put("client_id", this.f12071a);
        String str = this.b;
        if (str != null) {
            mapOf.put("client_secret", str);
        }
    }
}
