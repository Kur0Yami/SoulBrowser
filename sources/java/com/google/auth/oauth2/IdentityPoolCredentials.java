package com.google.auth.oauth2;

import com.google.auth.oauth2.ExternalAccountCredentials;
import java.util.List;

/* loaded from: classes3.dex */
public class IdentityPoolCredentials extends ExternalAccountCredentials {

    /* loaded from: classes3.dex */
    public static class Builder extends ExternalAccountCredentials.Builder {
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        throw null;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        ExternalAccountCredentials.Builder builder = new ExternalAccountCredentials.Builder(this);
        builder.g = list;
        new ExternalAccountCredentials(builder);
        throw null;
    }
}
