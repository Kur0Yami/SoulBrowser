package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaib extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4055c;
    public final String d;
    public final byte[] e;

    public zzaib(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.b = str;
        this.f4055c = str2;
        this.d = str3;
        this.e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaib.class == obj.getClass()) {
            zzaib zzaibVar = (zzaib) obj;
            if (Objects.equals(this.b, zzaibVar.b) && Objects.equals(this.f4055c, zzaibVar.f4055c) && Objects.equals(this.d, zzaibVar.d) && Arrays.equals(this.e, zzaibVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return Arrays.hashCode(this.e) + ((this.d.hashCode() + ((this.f4055c.hashCode() + ((i + 527) * 31)) * 31)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        int b = android.support.v4.media.a.b(length, 11, String.valueOf(str2).length(), 11);
        String str3 = this.f4055c;
        int length2 = str3.length() + b + 14;
        String str4 = this.d;
        StringBuilder sb = new StringBuilder(str4.length() + length2);
        android.support.v4.media.a.z(sb, str, ": mimeType=", str2, ", filename=");
        return android.support.v4.media.a.q(sb, str3, ", description=", str4);
    }
}
