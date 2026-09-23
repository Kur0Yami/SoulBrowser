package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzahv implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final int f4048a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4049c;
    public final String d;
    public final boolean e;
    public final int f;

    public zzahv(String str, int i, int i2, String str2, boolean z, String str3) {
        boolean z2 = true;
        if (i2 != -1 && i2 <= 0) {
            z2 = false;
        }
        zzgqa.a(z2);
        this.f4048a = i;
        this.b = str;
        this.f4049c = str2;
        this.d = str3;
        this.e = z;
        this.f = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final void a(zzam zzamVar) {
        String str = this.f4049c;
        if (str != null) {
            zzamVar.x = str;
        }
        String str2 = this.b;
        if (str2 != null) {
            zzamVar.w = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahv.class == obj.getClass()) {
            zzahv zzahvVar = (zzahv) obj;
            if (this.f4048a == zzahvVar.f4048a && Objects.equals(this.b, zzahvVar.b) && Objects.equals(this.f4049c, zzahvVar.f4049c) && Objects.equals(this.d, zzahvVar.d) && this.e == zzahvVar.e && this.f == zzahvVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        String str2 = this.f4049c;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i4 = ((this.f4048a + 527) * 31) + i;
        String str3 = this.d;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return (((((((i4 * 31) + i2) * 31) + i3) * 31) + (this.e ? 1 : 0)) * 31) + this.f;
    }

    public final String toString() {
        String str = this.f4049c;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        int length2 = String.valueOf(str2).length();
        int i = this.f4048a;
        int length3 = String.valueOf(i).length();
        int i2 = this.f;
        StringBuilder sb = new StringBuilder(length + 28 + length2 + 11 + length3 + 19 + String.valueOf(i2).length());
        android.support.v4.media.a.z(sb, "IcyHeaders: name=\"", str, "\", genre=\"", str2);
        return com.mycompany.app.dialog.a.m(sb, "\", bitrate=", i, ", metadataInterval=", i2);
    }
}
