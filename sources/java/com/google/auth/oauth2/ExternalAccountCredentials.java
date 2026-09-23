package com.google.auth.oauth2;

import com.google.auth.RequestMetadataCallback;
import com.google.auth.http.HttpTransportFactory;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.base.MoreObjects;
import java.io.IOException;
import java.io.Serializable;
import java.net.URI;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ExternalAccountCredentials extends GoogleCredentials {
    public final transient HttpTransportFactory q;

    /* renamed from: com.google.auth.oauth2.ExternalAccountCredentials$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements RequestMetadataCallback {
    }

    /* loaded from: classes3.dex */
    public static abstract class Builder extends GoogleCredentials.Builder {
        public final EnvironmentProvider e;
        public final HttpTransportFactory f;
        public Collection g;

        public Builder(ExternalAccountCredentials externalAccountCredentials) {
            super(externalAccountCredentials);
            this.f = externalAccountCredentials.q;
            this.g = null;
            this.e = null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class CredentialSource implements Serializable {
    }

    /* loaded from: classes3.dex */
    public static final class ServiceAccountImpersonationOptions implements Serializable {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class SubjectTokenTypes {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SubjectTokenTypes[] f12116c = {new Enum("AWS4", 0), new Enum("JWT", 1), new Enum("SAML2", 2), new Enum("ID_TOKEN", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        SubjectTokenTypes EF5;

        public static SubjectTokenTypes valueOf(String str) {
            return (SubjectTokenTypes) Enum.valueOf(SubjectTokenTypes.class, str);
        }

        public static SubjectTokenTypes[] values() {
            return (SubjectTokenTypes[]) f12116c.clone();
        }
    }

    public ExternalAccountCredentials(Builder builder) {
        super(builder);
        this.q = (HttpTransportFactory) MoreObjects.a(builder.f, OAuth2Credentials.f(OAuth2Utils.f12138c));
        throw null;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public final Map a(URI uri) {
        return GoogleCredentials.k(super.a(uri));
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final String m() {
        try {
            return this.n;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
