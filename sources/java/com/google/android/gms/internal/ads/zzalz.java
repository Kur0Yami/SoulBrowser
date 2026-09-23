package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class zzalz implements zzaer {

    /* renamed from: c, reason: collision with root package name */
    public final zzaer f4171c;
    public final zzalw f;
    public final SparseArray g = new SparseArray();
    public boolean h;

    public zzalz(zzaer zzaerVar, zzalw zzalwVar) {
        this.f4171c = zzaerVar;
        this.f = zzalwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void e(zzafr zzafrVar) {
        this.f4171c.e(zzafrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final zzaga f(int i, int i2) {
        zzaer zzaerVar = this.f4171c;
        if (i2 != 3) {
            this.h = true;
            return zzaerVar.f(i, i2);
        }
        SparseArray sparseArray = this.g;
        zzamb zzambVar = (zzamb) sparseArray.get(i);
        if (zzambVar != null) {
            return zzambVar;
        }
        zzamb zzambVar2 = new zzamb(zzaerVar.f(i, 3), this.f);
        sparseArray.put(i, zzambVar2);
        return zzambVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zzv() {
        this.f4171c.zzv();
        if (this.h) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = this.g;
                if (i < sparseArray.size()) {
                    ((zzamb) sparseArray.valueAt(i)).i = true;
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
