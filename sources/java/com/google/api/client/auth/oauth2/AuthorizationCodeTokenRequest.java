package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes3.dex */
public class AuthorizationCodeTokenRequest extends TokenRequest {

    @Key
    private String code;

    @Key("redirect_uri")
    private String redirectUri;

    public final String getCode() {
        return this.code;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public AuthorizationCodeTokenRequest setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        this.clientAuthentication = httpExecuteInterceptor;
        return this;
    }

    public AuthorizationCodeTokenRequest setCode(String str) {
        this.code = (String) Preconditions.checkNotNull(str);
        return this;
    }

    public AuthorizationCodeTokenRequest setRedirectUri(String str) {
        this.redirectUri = str;
        return this;
    }

    public AuthorizationCodeTokenRequest setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        this.requestInitializer = httpRequestInitializer;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setScopes(Collection collection) {
        super.setScopes(collection);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setGrantType(String str) {
        super.setGrantType(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setResponseClass(Class<? extends TokenResponse> cls) {
        this.responseClass = cls;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        super.setTokenServerUrl(genericUrl);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public AuthorizationCodeTokenRequest set(String str, Object obj) {
        return (AuthorizationCodeTokenRequest) super.set(str, obj);
    }
}
