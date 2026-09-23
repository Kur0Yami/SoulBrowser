package com.google.auth.oauth2;

import com.google.api.client.util.Clock;
import com.google.auth.Credentials;
import com.google.auth.ServiceAccountSigner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Throwables;
import com.google.common.base.Ticker;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.UncheckedExecutionException;
import j$.util.Objects;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ServiceAccountJwtAccessCredentials extends Credentials implements JwtProvider, ServiceAccountSigner, QuotaProjectIdProvider {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f12139c = 0;

    /* renamed from: com.google.auth.oauth2.ServiceAccountJwtAccessCredentials$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends CacheLoader<JwtClaims, JwtCredentials> {
        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            int i = JwtCredentials.m;
            Clock clock = Clock.SYSTEM;
            TimeUnit.HOURS.toSeconds(1L);
            int i2 = ServiceAccountJwtAccessCredentials.f12139c;
            throw null;
        }
    }

    /* renamed from: com.google.auth.oauth2.ServiceAccountJwtAccessCredentials$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends Ticker {
        @Override // com.google.common.base.Ticker
        public final long a() {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    static {
        TimeUnit.HOURS.toSeconds(1L);
        TimeUnit.MINUTES.toSeconds(5L);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.auth.oauth2.AutoValue_JwtClaims$Builder, java.lang.Object] */
    @Override // com.google.auth.Credentials
    public final Map a(URI uri) {
        if (uri != null) {
            try {
                ?? obj = new Object();
                obj.d = ImmutableMap.k();
                obj.f12103a = uri.toString();
                obj.b = null;
                obj.f12104c = null;
                if (obj.d != null) {
                    throw null;
                }
                throw new IllegalStateException("Missing required properties: additionalClaims");
            } catch (UncheckedExecutionException e) {
                Throwables.a(e);
                throw new IllegalStateException("generateJwtAccess threw an unchecked exception that couldn't be rethrown", e);
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                Object obj2 = Throwables.f12191a;
                if (cause != null && IOException.class.isInstance(cause)) {
                    throw ((Throwable) IOException.class.cast(cause));
                }
                if (cause != null) {
                    Throwables.a(cause);
                }
                throw new IllegalStateException("generateJwtAccess threw an unexpected checked exception", e2.getCause());
            }
        }
        throw new IOException("JwtAccess requires Audience uri to be passed in or the defaultAudience to be specified");
    }

    @Override // com.google.auth.Credentials
    public final void b() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ServiceAccountJwtAccessCredentials)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(null, null, null, null, null, null);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "clientId");
        b.b(null, "clientEmail");
        b.b(null, "privateKeyId");
        b.b(null, "defaultAudience");
        b.b(null, "quotaProjectId");
        return b.toString();
    }
}
