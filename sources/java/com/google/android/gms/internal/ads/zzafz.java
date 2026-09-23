package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzafz {

    /* renamed from: a, reason: collision with root package name */
    public final int f3992a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3993c;
    public final int d;

    public zzafz(byte[] bArr, int i, int i2, int i3) {
        this.f3992a = i;
        this.b = bArr;
        this.f3993c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafz.class == obj.getClass()) {
            zzafz zzafzVar = (zzafz) obj;
            if (this.f3992a == zzafzVar.f3992a && this.f3993c == zzafzVar.f3993c && this.d == zzafzVar.d && Arrays.equals(this.b, zzafzVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.b) + (this.f3992a * 31)) * 31) + this.f3993c) * 31) + this.d;
    }
}
