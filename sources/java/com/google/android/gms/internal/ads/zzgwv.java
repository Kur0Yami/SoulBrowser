package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class zzgwv implements Serializable {
    public static final zzgwv g = new zzgwv(0, new int[0]);

    /* renamed from: c, reason: collision with root package name */
    public final int[] f8280c;
    public final int f;

    public zzgwv(int i, int[] iArr) {
        this.f8280c = iArr;
        this.f = i;
    }

    public final boolean equals(Object obj) {
        zzgwv zzgwvVar;
        int i;
        int i2;
        if (obj != this) {
            if ((obj instanceof zzgwv) && (i2 = this.f) == (i = (zzgwvVar = (zzgwv) obj).f)) {
                for (int i3 = 0; i3 < i2; i3++) {
                    zzgqa.i(i3, i2);
                    int i4 = this.f8280c[i3];
                    zzgqa.i(i3, i);
                    if (i4 == zzgwvVar.f8280c[i3]) {
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f; i2++) {
            i = (i * 31) + this.f8280c[i2];
        }
        return i;
    }

    public final String toString() {
        int i = this.f;
        if (i != 0) {
            StringBuilder sb = new StringBuilder(i * 5);
            sb.append('[');
            int[] iArr = this.f8280c;
            sb.append(iArr[0]);
            for (int i2 = 1; i2 < i; i2++) {
                sb.append(", ");
                sb.append(iArr[i2]);
            }
            sb.append(']');
            return sb.toString();
        }
        return "[]";
    }
}
