package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* loaded from: classes.dex */
final class zzyc {
    public final SparseArray b = new SparseArray();

    /* renamed from: c, reason: collision with root package name */
    public final zzdr f9383c = zzxs.f9375a;

    /* renamed from: a, reason: collision with root package name */
    public int f9382a = -1;

    public final Object a(int i) {
        SparseArray sparseArray;
        if (this.f9382a == -1) {
            this.f9382a = 0;
        }
        while (true) {
            int i2 = this.f9382a;
            sparseArray = this.b;
            if (i2 > 0 && i < sparseArray.keyAt(i2)) {
                this.f9382a--;
            }
        }
        while (this.f9382a < sparseArray.size() - 1 && i >= sparseArray.keyAt(this.f9382a + 1)) {
            this.f9382a++;
        }
        return sparseArray.valueAt(this.f9382a);
    }
}
