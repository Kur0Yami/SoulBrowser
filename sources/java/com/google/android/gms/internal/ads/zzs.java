package com.google.android.gms.internal.ads;

import android.os.Build;
import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public final class zzs {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f9235a;

    public final int a(int i) {
        SparseBooleanArray sparseBooleanArray = this.f9235a;
        zzgqa.i(i, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        SparseBooleanArray sparseBooleanArray = zzsVar.f9235a;
        int i = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray2 = this.f9235a;
        if (i < 24) {
            if (sparseBooleanArray2.size() != sparseBooleanArray.size()) {
                return false;
            }
            for (int i2 = 0; i2 < sparseBooleanArray2.size(); i2++) {
                if (a(i2) != zzsVar.a(i2)) {
                    return false;
                }
            }
            return true;
        }
        return sparseBooleanArray2.equals(sparseBooleanArray);
    }

    public final int hashCode() {
        int i = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f9235a;
        if (i < 24) {
            int size = sparseBooleanArray.size();
            for (int i2 = 0; i2 < sparseBooleanArray.size(); i2++) {
                size = (size * 31) + a(i2);
            }
            return size;
        }
        return sparseBooleanArray.hashCode();
    }
}
