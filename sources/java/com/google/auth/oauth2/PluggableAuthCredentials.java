package com.google.auth.oauth2;

import com.google.auth.oauth2.ExecutableHandler;
import com.google.auth.oauth2.ExternalAccountCredentials;
import java.util.List;

/* loaded from: classes3.dex */
public class PluggableAuthCredentials extends ExternalAccountCredentials {

    /* renamed from: com.google.auth.oauth2.PluggableAuthCredentials$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ExecutableHandler.ExecutableOptions {
    }

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
