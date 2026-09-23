package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaij extends zzaig {
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4063c;
    public final int d;
    public final int[] e;
    public final int[] f;

    public zzaij(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        super("MLLT");
        this.b = i;
        this.f4063c = i2;
        this.d = i3;
        this.e = iArr;
        this.f = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaij.class == obj.getClass()) {
            zzaij zzaijVar = (zzaij) obj;
            if (this.b == zzaijVar.b && this.f4063c == zzaijVar.f4063c && this.d == zzaijVar.d && Arrays.equals(this.e, zzaijVar.e) && Arrays.equals(this.f, zzaijVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f) + ((Arrays.hashCode(this.e) + ((((((this.b + 527) * 31) + this.f4063c) * 31) + this.d) * 31)) * 31);
    }
}
