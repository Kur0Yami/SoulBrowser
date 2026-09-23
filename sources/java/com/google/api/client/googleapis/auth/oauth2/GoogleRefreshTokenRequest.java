package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.RefreshTokenRequest;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import java.util.Collection;

/* loaded from: classes3.dex */
public class GoogleRefreshTokenRequest extends RefreshTokenRequest {
    public GoogleRefreshTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3) {
        super(httpTransport, jsonFactory, new GenericUrl(GoogleOAuthConstants.TOKEN_SERVER_URL), str);
        m14setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(str2, str3));
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ RefreshTokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public GoogleTokenResponse execute() {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest
    public GoogleRefreshTokenRequest setRefreshToken(String str) {
        super.setRefreshToken(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest
    /* renamed from: setClientAuthentication, reason: merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m14setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        super.m14setClientAuthentication(httpExecuteInterceptor);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setGrantType(String str) {
        super.setGrantType(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest
    /* renamed from: setRequestInitializer, reason: merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m15setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        super.m15setRequestInitializer(httpRequestInitializer);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setScopes(Collection<String> collection) {
        super.setScopes((Collection) collection);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        super.setTokenServerUrl(genericUrl);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public GoogleRefreshTokenRequest set(String str, Object obj) {
        return (GoogleRefreshTokenRequest) super.set(str, obj);
    }
}
