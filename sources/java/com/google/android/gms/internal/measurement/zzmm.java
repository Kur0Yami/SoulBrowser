package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
public final class zzmm {

    /* renamed from: a, reason: collision with root package name */
    public final int f10405a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f10406c;
    public int d = -1;

    public zzmm(int i, int[] iArr, Object[] objArr) {
        this.f10405a = i;
        this.b = iArr;
        this.f10406c = objArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmm)) {
            return false;
        }
        zzmm zzmmVar = (zzmm) obj;
        int i = zzmmVar.f10405a;
        int i2 = this.f10405a;
        if (i2 == i) {
            int[] iArr = zzmmVar.b;
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    if (this.b[i3] != iArr[i3]) {
                        break;
                    }
                    i3++;
                } else {
                    Object[] objArr = zzmmVar.f10406c;
                    for (int i4 = 0; i4 < i2; i4++) {
                        if (this.f10406c[i4].equals(objArr[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f10405a;
        int i2 = (i + 527) * 31;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + this.b[i5];
        }
        int i6 = (i2 + i4) * 31;
        for (int i7 = 0; i7 < i; i7++) {
            i3 = (i3 * 31) + this.f10406c[i7].hashCode();
        }
        return i6 + i3;
    }
}
