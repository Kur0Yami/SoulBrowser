package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public final class zzmw {

    /* renamed from: a, reason: collision with root package name */
    public final zzs f9129a;
    public final SparseArray b;

    public zzmw(zzs zzsVar, SparseArray sparseArray) {
        this.f9129a = zzsVar;
        SparseBooleanArray sparseBooleanArray = zzsVar.f9235a;
        SparseArray sparseArray2 = new SparseArray(sparseBooleanArray.size());
        for (int i = 0; i < sparseBooleanArray.size(); i++) {
            int a2 = zzsVar.a(i);
            zzmv zzmvVar = (zzmv) sparseArray.get(a2);
            zzmvVar.getClass();
            sparseArray2.append(a2, zzmvVar);
        }
        this.b = sparseArray2;
    }

    public final boolean a(int i) {
        return this.f9129a.f9235a.get(i);
    }
}
