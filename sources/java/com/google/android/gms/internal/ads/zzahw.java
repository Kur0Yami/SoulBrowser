package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzahw extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4050c;
    public final int d;
    public final byte[] e;

    public zzahw(int i, String str, String str2, byte[] bArr) {
        super("APIC");
        this.b = str;
        this.f4050c = str2;
        this.d = i;
        this.e = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaig, com.google.android.gms.internal.ads.zzao
    public final void a(zzam zzamVar) {
        zzamVar.a(this.e, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahw.class == obj.getClass()) {
            zzahw zzahwVar = (zzahw) obj;
            if (this.d == zzahwVar.d && Objects.equals(this.b, zzahwVar.b) && Objects.equals(this.f4050c, zzahwVar.f4050c) && Arrays.equals(this.e, zzahwVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = 0;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        String str2 = this.f4050c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return Arrays.hashCode(this.e) + ((((((this.d + 527) * 31) + i) * 31) + i2) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        int length2 = String.valueOf(str2).length();
        String str3 = this.f4050c;
        StringBuilder sb = new StringBuilder(length + 11 + length2 + 14 + String.valueOf(str3).length());
        android.support.v4.media.a.z(sb, str, ": mimeType=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }
}
