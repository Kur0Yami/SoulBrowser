package com.google.auth.oauth2;

import com.google.auth.oauth2.JwtClaims;
import java.util.Map;

/* loaded from: classes3.dex */
final class AutoValue_JwtClaims extends JwtClaims {

    /* renamed from: c, reason: collision with root package name */
    public final String f12102c;
    public final String f;
    public final String g;
    public final Map h;

    /* loaded from: classes3.dex */
    public static final class Builder extends JwtClaims.Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f12103a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f12104c;
        public Map d;
    }

    public AutoValue_JwtClaims(String str, String str2, String str3, Map map) {
        this.f12102c = str;
        this.f = str2;
        this.g = str3;
        this.h = map;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    public final Map a() {
        return this.h;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    public final String b() {
        return this.f12102c;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    public final String c() {
        return this.f;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    public final String d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof JwtClaims) {
                JwtClaims jwtClaims = (JwtClaims) obj;
                String str = this.f12102c;
                if (str == null) {
                    if (jwtClaims.b() != null) {
                        return false;
                    }
                } else if (!str.equals(jwtClaims.b())) {
                    return false;
                }
                String str2 = this.f;
                if (str2 == null) {
                    if (jwtClaims.c() != null) {
                        return false;
                    }
                } else if (!str2.equals(jwtClaims.c())) {
                    return false;
                }
                String str3 = this.g;
                if (str3 == null) {
                    if (jwtClaims.d() != null) {
                        return false;
                    }
                } else if (!str3.equals(jwtClaims.d())) {
                    return false;
                }
                if (this.h.equals(jwtClaims.a())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        String str = this.f12102c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.f;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str3 = this.g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((i ^ i3) * 1000003) ^ this.h.hashCode();
    }

    public final String toString() {
        return "JwtClaims{audience=" + this.f12102c + ", issuer=" + this.f + ", subject=" + this.g + ", additionalClaims=" + this.h + "}";
    }
}
