package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes3.dex */
public class GoogleAuthorizationCodeTokenRequest extends AuthorizationCodeTokenRequest {
    public GoogleAuthorizationCodeTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3, String str4) {
        this(httpTransport, jsonFactory, GoogleOAuthConstants.TOKEN_SERVER_URL, str, str2, str3, str4);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ AuthorizationCodeTokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public GoogleAuthorizationCodeTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3, String str4, String str5) {
        super(httpTransport, jsonFactory, new GenericUrl(str), "authorization_code");
        setCode(str4);
        m9setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(str2, str3));
        setRedirectUri(str5);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public GoogleTokenResponse execute() {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    public GoogleAuthorizationCodeTokenRequest setCode(String str) {
        super.setCode(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    public GoogleAuthorizationCodeTokenRequest setRedirectUri(String str) {
        Preconditions.checkNotNull(str);
        super.setRedirectUri(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    /* renamed from: setClientAuthentication, reason: merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m9setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        Preconditions.checkNotNull(httpExecuteInterceptor);
        super.m9setClientAuthentication(httpExecuteInterceptor);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setGrantType(String str) {
        super.setGrantType(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    /* renamed from: setRequestInitializer, reason: merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m10setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        super.m10setRequestInitializer(httpRequestInitializer);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setScopes(Collection<String> collection) {
        super.setScopes((Collection) collection);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        super.setTokenServerUrl(genericUrl);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public GoogleAuthorizationCodeTokenRequest set(String str, Object obj) {
        return (GoogleAuthorizationCodeTokenRequest) super.set(str, obj);
    }
}
