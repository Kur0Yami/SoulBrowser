package com.google.api.client.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;

/* loaded from: classes3.dex */
public class TokenErrorResponse extends GenericJson {

    @Key
    private String error;

    @Key("error_description")
    private String errorDescription;

    @Key("error_uri")
    private String errorUri;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final GenericJson clone() {
        return (TokenErrorResponse) super.clone();
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public final GenericJson set(String str, Object obj) {
        return (TokenErrorResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final GenericData clone() {
        return (TokenErrorResponse) super.clone();
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public final GenericData set(String str, Object obj) {
        return (TokenErrorResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public final Object clone() {
        return (TokenErrorResponse) super.clone();
    }
}
