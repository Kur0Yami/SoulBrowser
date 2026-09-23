package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;

/* loaded from: classes3.dex */
public class AuthorizationCodeResponseUrl extends GenericUrl {

    @Key
    private String code;

    @Key
    private String error;

    @Key("error_description")
    private String errorDescription;

    @Key("error_uri")
    private String errorUri;

    @Key
    private String state;

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final GenericUrl clone() {
        return (AuthorizationCodeResponseUrl) super.clone();
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public final GenericUrl set(String str, Object obj) {
        return (AuthorizationCodeResponseUrl) super.set(str, obj);
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final GenericData clone() {
        return (AuthorizationCodeResponseUrl) super.clone();
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public final GenericData set(String str, Object obj) {
        return (AuthorizationCodeResponseUrl) super.set(str, obj);
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final Object clone() {
        return (AuthorizationCodeResponseUrl) super.clone();
    }
}
