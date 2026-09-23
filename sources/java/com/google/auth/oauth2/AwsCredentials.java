package com.google.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.GenericData;
import com.google.auth.oauth2.ExternalAccountCredentials;
import java.util.List;

/* loaded from: classes3.dex */
public class AwsCredentials extends ExternalAccountCredentials {

    /* loaded from: classes3.dex */
    public static class Builder extends ExternalAccountCredentials.Builder {
        public AwsSecurityCredentialsSupplier h;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.api.client.util.GenericData, com.google.api.client.json.GenericJson] */
    public static GenericJson o(String str, String str2) {
        ?? genericData = new GenericData();
        genericData.setFactory(OAuth2Utils.d);
        genericData.put("key", str);
        genericData.put("value", str2);
        return genericData;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        throw null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.auth.oauth2.AwsCredentials$Builder, com.google.auth.oauth2.ExternalAccountCredentials$Builder] */
    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        ?? builder = new ExternalAccountCredentials.Builder(this);
        builder.h = null;
        builder.g = list;
        new ExternalAccountCredentials(builder);
        throw null;
    }
}
