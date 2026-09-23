package com.google.auth.oauth2;

import com.google.api.client.util.Preconditions;
import com.google.auth.oauth2.OAuth2Credentials;
import com.google.common.base.MoreObjects;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class GoogleCredentials extends OAuth2Credentials implements QuotaProjectIdProvider {
    public static final /* synthetic */ int p = 0;
    public final String n;
    public final boolean o;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class GoogleCredentialsInfo {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ GoogleCredentialsInfo[] f12117c = {new Enum("USER_CREDENTIALS", 0), new Enum("SERVICE_ACCOUNT_CREDENTIALS", 1), new Enum("GDCH_CREDENTIALS", 2), new Enum("EXTERNAL_ACCOUNT_CREDENTIALS", 3), new Enum("EXTERNAL_ACCOUNT_AUTHORIZED_USER_CREDENTIALS", 4), new Enum("IMPERSONATED_CREDENTIALS", 5), new Enum("APP_ENGINE_CREDENTIALS", 6), new Enum("CLOUD_SHELL_CREDENTIALS", 7), new Enum("COMPUTE_ENGINE_CREDENTIALS", 8)};

        /* JADX INFO: Fake field, exist only in values array */
        GoogleCredentialsInfo EF5;

        public static GoogleCredentialsInfo valueOf(String str) {
            return (GoogleCredentialsInfo) Enum.valueOf(GoogleCredentialsInfo.class, str);
        }

        public static GoogleCredentialsInfo[] values() {
            return (GoogleCredentialsInfo[]) f12117c.clone();
        }
    }

    public GoogleCredentials(Builder builder) {
        super(builder.f12131a, builder.b, builder.f12132c);
        String str = builder.d;
        if (str != null && !str.trim().isEmpty()) {
            this.n = str;
            this.o = true;
        } else {
            this.n = "googleapis.com";
            this.o = false;
        }
    }

    public static Map k(Map map) {
        Preconditions.checkNotNull(map);
        return DesugarCollections.unmodifiableMap(new HashMap(map));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final Map e() {
        return OAuth2Credentials.m;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof GoogleCredentials) {
            GoogleCredentials googleCredentials = (GoogleCredentials) obj;
            if (Objects.equals(this.n, googleCredentials.n) && Boolean.valueOf(this.o).equals(Boolean.valueOf(googleCredentials.o))) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(null, this.n, Boolean.valueOf(this.o));
    }

    public String m() {
        return this.n;
    }

    public MoreObjects.ToStringHelper n() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.d = true;
        b.b(null, "quotaProjectId");
        b.b(this.n, "universeDomain");
        b.d("isExplicitUniverseDomain", this.o);
        return b;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return n().toString();
    }

    /* loaded from: classes3.dex */
    public static class Builder extends OAuth2Credentials.Builder {
        public final String d;

        public Builder() {
            this.b = OAuth2Credentials.l;
            this.f12132c = OAuth2Credentials.k;
        }

        public Builder(GoogleCredentials googleCredentials) {
            this.b = OAuth2Credentials.l;
            this.f12132c = OAuth2Credentials.k;
            this.f12131a = googleCredentials.d();
            this.b = googleCredentials.f;
            this.f12132c = googleCredentials.f12128c;
            if (googleCredentials.o) {
                this.d = googleCredentials.n;
            }
        }
    }

    public GoogleCredentials l(List list) {
        return this;
    }
}
