package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes3.dex */
public class AuthorizationRequestUrl extends GenericUrl {

    @Key("client_id")
    private String clientId;

    @Key("redirect_uri")
    private String redirectUri;

    @Key("response_type")
    private String responseTypes;

    @Key("scope")
    private String scopes;

    @Key
    private String state;

    public AuthorizationRequestUrl(String str, String str2, Set set) {
        super(str);
        boolean z;
        if (getFragment() == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        setClientId(str2);
        setResponseTypes(set);
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public final String getResponseTypes() {
        return this.responseTypes;
    }

    public final String getScopes() {
        return this.scopes;
    }

    public final String getState() {
        return this.state;
    }

    public AuthorizationRequestUrl setClientId(String str) {
        this.clientId = (String) Preconditions.checkNotNull(str);
        return this;
    }

    public AuthorizationRequestUrl setRedirectUri(String str) {
        this.redirectUri = str;
        return this;
    }

    public AuthorizationRequestUrl setResponseTypes(Collection collection) {
        this.responseTypes = Joiner.on(' ').join(collection);
        return this;
    }

    public AuthorizationRequestUrl setScopes(Collection collection) {
        String join;
        if (!collection.iterator().hasNext()) {
            join = null;
        } else {
            join = Joiner.on(' ').join(collection);
        }
        this.scopes = join;
        return this;
    }

    public AuthorizationRequestUrl setState(String str) {
        this.state = str;
        return this;
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public AuthorizationRequestUrl set(String str, Object obj) {
        return (AuthorizationRequestUrl) super.set(str, obj);
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public AuthorizationRequestUrl clone() {
        return (AuthorizationRequestUrl) super.clone();
    }
}
