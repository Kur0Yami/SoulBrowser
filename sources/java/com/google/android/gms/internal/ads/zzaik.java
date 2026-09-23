package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaik extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f4064c;

    public zzaik(String str, byte[] bArr) {
        super("PRIV");
        this.b = str;
        this.f4064c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaik.class == obj.getClass()) {
            zzaik zzaikVar = (zzaik) obj;
            if (Objects.equals(this.b, zzaikVar.b) && Arrays.equals(this.f4064c, zzaikVar.f4064c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f4064c) + ((this.b.hashCode() + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length() + 8;
        String str2 = this.b;
        return android.support.v4.media.a.q(new StringBuilder(str2.length() + length), str, ": owner=", str2);
    }
}
