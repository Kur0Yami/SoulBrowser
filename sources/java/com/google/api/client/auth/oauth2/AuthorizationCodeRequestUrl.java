package com.google.api.client.auth.oauth2;

import com.google.api.client.util.Key;
import java.util.Collection;

/* loaded from: classes3.dex */
public class AuthorizationCodeRequestUrl extends AuthorizationRequestUrl {

    @Key("code_challenge")
    String codeChallenge;

    @Key("code_challenge_method")
    String codeChallengeMethod;

    public String getCodeChallenge() {
        return this.codeChallenge;
    }

    public String getCodeChallengeMethod() {
        return this.codeChallengeMethod;
    }

    public void setCodeChallenge(String str) {
        this.codeChallenge = str;
    }

    public void setCodeChallengeMethod(String str) {
        this.codeChallengeMethod = str;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setRedirectUri(String str) {
        super.setRedirectUri(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setScopes(Collection collection) {
        super.setScopes(collection);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setState(String str) {
        super.setState(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setClientId(String str) {
        super.setClientId(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setResponseTypes(Collection collection) {
        super.setResponseTypes(collection);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public AuthorizationCodeRequestUrl set(String str, Object obj) {
        return (AuthorizationCodeRequestUrl) super.set(str, obj);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public AuthorizationCodeRequestUrl clone() {
        return (AuthorizationCodeRequestUrl) super.clone();
    }
}
