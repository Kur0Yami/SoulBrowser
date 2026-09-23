package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class zzehj extends zzehm {

    /* renamed from: a, reason: collision with root package name */
    public final String f6505a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f6506c;

    public zzehj(String str, String str2, Drawable drawable) {
        this.f6505a = str;
        if (str2 != null) {
            this.b = str2;
            this.f6506c = drawable;
            return;
        }
        throw new NullPointerException("Null imageUrl");
    }

    @Override // com.google.android.gms.internal.ads.zzehm
    public final String a() {
        return this.f6505a;
    }

    @Override // com.google.android.gms.internal.ads.zzehm
    public final String b() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzehm
    public final Drawable c() {
        return this.f6506c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzehm) {
                zzehm zzehmVar = (zzehm) obj;
                String str = this.f6505a;
                if (str == null) {
                    if (zzehmVar.a() != null) {
                        return false;
                    }
                } else if (!str.equals(zzehmVar.a())) {
                    return false;
                }
                if (this.b.equals(zzehmVar.b())) {
                    Drawable drawable = this.f6506c;
                    if (drawable == null) {
                        if (zzehmVar.c() == null) {
                            return true;
                        }
                        return false;
                    }
                    if (drawable.equals(zzehmVar.c())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        String str = this.f6505a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode2 = ((hashCode ^ 1000003) * 1000003) ^ this.b.hashCode();
        Drawable drawable = this.f6506c;
        if (drawable != null) {
            i = drawable.hashCode();
        }
        return i ^ (hashCode2 * 1000003);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f6506c);
        String str = this.f6505a;
        int length = String.valueOf(str).length();
        int length2 = valueOf.length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(str2.length() + length + 42 + 7 + length2 + 1);
        android.support.v4.media.a.z(sb, "OfflineAdAssets{advertiserName=", str, ", imageUrl=", str2);
        return android.support.v4.media.a.q(sb, ", icon=", valueOf, "}");
    }
}
