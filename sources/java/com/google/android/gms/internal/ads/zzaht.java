package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaht implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final int f4045a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4046c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final byte[] h;

    public zzaht(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f4045a = i;
        this.b = str;
        this.f4046c = str2;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = bArr;
    }

    public static zzaht b(zzer zzerVar) {
        int b = zzerVar.b();
        String h = zzas.h(zzerVar.k(zzerVar.b(), StandardCharsets.US_ASCII));
        String k = zzerVar.k(zzerVar.b(), StandardCharsets.UTF_8);
        int b2 = zzerVar.b();
        int b3 = zzerVar.b();
        int b4 = zzerVar.b();
        int b5 = zzerVar.b();
        int b6 = zzerVar.b();
        byte[] bArr = new byte[b6];
        zzerVar.H(bArr, 0, b6);
        return new zzaht(b, h, k, b2, b3, b4, b5, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final void a(zzam zzamVar) {
        zzamVar.a(this.h, this.f4045a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaht.class == obj.getClass()) {
            zzaht zzahtVar = (zzaht) obj;
            if (this.f4045a == zzahtVar.f4045a && this.b.equals(zzahtVar.b) && this.f4046c.equals(zzahtVar.f4046c) && this.d == zzahtVar.d && this.e == zzahtVar.e && this.f == zzahtVar.f && this.g == zzahtVar.g && Arrays.equals(this.h, zzahtVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.h) + ((((((((((this.f4046c.hashCode() + ((this.b.hashCode() + ((this.f4045a + 527) * 31)) * 31)) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31);
    }

    public final String toString() {
        String str = this.b;
        int length = String.valueOf(str).length() + 32;
        String str2 = this.f4046c;
        return android.support.v4.media.a.r(new StringBuilder(str2.length() + length), "Picture: mimeType=", str, ", description=", str2);
    }
}
