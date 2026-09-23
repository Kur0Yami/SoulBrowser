package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.GenericData;

/* loaded from: classes3.dex */
public class ClientCredentialsTokenRequest extends TokenRequest {
    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public final TokenRequest set(String str, Object obj) {
        return (ClientCredentialsTokenRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public final TokenRequest setGrantType(String str) {
        super.setGrantType(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public final TokenRequest setResponseClass(Class cls) {
        this.responseClass = TokenResponse.class;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public final TokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        super.setTokenServerUrl(genericUrl);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public final GenericData set(String str, Object obj) {
        return (ClientCredentialsTokenRequest) super.set(str, obj);
    }
}
