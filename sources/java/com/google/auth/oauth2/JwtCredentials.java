package com.google.auth.oauth2;

import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Clock;
import com.google.auth.Credentials;
import com.google.common.base.Preconditions;
import j$.util.Objects;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class JwtCredentials extends Credentials implements JwtProvider {
    public static final long l = TimeUnit.MINUTES.toSeconds(5);
    public static final /* synthetic */ int m = 0;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f12121c = new byte[0];
    public final PrivateKey f;
    public final JwtClaims g;
    public final Long h;
    public transient Clock i;
    public transient String j;
    public transient Long k;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public PrivateKey f12122a;
        public JwtClaims b;

        /* renamed from: c, reason: collision with root package name */
        public Clock f12123c;
        public Long d;
    }

    public JwtCredentials(Builder builder) {
        boolean z;
        boolean z2 = false;
        PrivateKey privateKey = builder.f12122a;
        privateKey.getClass();
        this.f = privateKey;
        JwtClaims jwtClaims = builder.b;
        jwtClaims.getClass();
        this.g = jwtClaims;
        if (jwtClaims.a().containsKey("scope") && !((String) jwtClaims.a().get("scope")).isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        if ((jwtClaims.b() != null || z) && jwtClaims.c() != null && jwtClaims.d() != null) {
            z2 = true;
        }
        Preconditions.m(z2, "JWT claims must contain audience, issuer, and subject.");
        Long l2 = builder.d;
        l2.getClass();
        this.h = l2;
        Clock clock = builder.f12123c;
        clock.getClass();
        this.i = clock;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if ((r7.i.currentTimeMillis() / 1000) > (r7.k.longValue() - com.google.auth.oauth2.JwtCredentials.l)) goto L11;
     */
    @Override // com.google.auth.Credentials
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map a(java.net.URI r8) {
        /*
            r7 = this;
            java.lang.String r8 = "Bearer "
            byte[] r0 = r7.f12121c
            monitor-enter(r0)
            java.lang.Long r1 = r7.k     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L27
            com.google.api.client.util.Clock r1 = r7.i     // Catch: java.lang.Throwable -> L44
            if (r1 != 0) goto L11
            com.google.api.client.util.Clock r1 = com.google.api.client.util.Clock.SYSTEM     // Catch: java.lang.Throwable -> L44
            r7.i = r1     // Catch: java.lang.Throwable -> L44
        L11:
            com.google.api.client.util.Clock r1 = r7.i     // Catch: java.lang.Throwable -> L44
            long r1 = r1.currentTimeMillis()     // Catch: java.lang.Throwable -> L44
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r3
            java.lang.Long r3 = r7.k     // Catch: java.lang.Throwable -> L44
            long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L44
            long r5 = com.google.auth.oauth2.JwtCredentials.l     // Catch: java.lang.Throwable -> L44
            long r3 = r3 - r5
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L2a
        L27:
            r7.b()     // Catch: java.lang.Throwable -> L44
        L2a:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L44
            java.lang.String r8 = r7.j     // Catch: java.lang.Throwable -> L44
            r1.append(r8)     // Catch: java.lang.Throwable -> L44
            java.lang.String r8 = r1.toString()     // Catch: java.lang.Throwable -> L44
            java.util.List r8 = java.util.Collections.singletonList(r8)     // Catch: java.lang.Throwable -> L44
            java.lang.String r1 = "Authorization"
            java.util.Map r8 = java.util.Collections.singletonMap(r1, r8)     // Catch: java.lang.Throwable -> L44
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L44
            return r8
        L44:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L44
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.auth.oauth2.JwtCredentials.a(java.net.URI):java.util.Map");
    }

    @Override // com.google.auth.Credentials
    public final void b() {
        JsonWebSignature.Header header = new JsonWebSignature.Header();
        header.g();
        header.c();
        header.h(null);
        JsonWebToken.Payload payload = new JsonWebToken.Payload();
        payload.setAudience(this.g.b());
        payload.setIssuer(this.g.c());
        payload.setSubject(this.g.d());
        long currentTimeMillis = this.i.currentTimeMillis() / 1000;
        payload.setIssuedAtTimeSeconds(Long.valueOf(currentTimeMillis));
        payload.setExpirationTimeSeconds(Long.valueOf(this.h.longValue() + currentTimeMillis));
        payload.putAll(this.g.a());
        synchronized (this.f12121c) {
            try {
                this.k = payload.getExpirationTimeSeconds();
                try {
                    this.j = JsonWebSignature.signUsingRsaSha256(this.f, OAuth2Utils.d, header, payload);
                } catch (GeneralSecurityException e) {
                    throw new IOException("Error signing service account JWT access header with private key.", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof JwtCredentials) {
            JwtCredentials jwtCredentials = (JwtCredentials) obj;
            if (Objects.equals(this.f, jwtCredentials.f) && Objects.equals(this.g, jwtCredentials.g) && Objects.equals(this.h, jwtCredentials.h)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f, null, this.g, this.h);
    }
}
