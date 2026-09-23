package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzagt implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4019a = new zzer(4);
    public final zzaft b = new zzaft(-1, -1, "image/avif");

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.b.c(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzaef zzaefVar = (zzaef) zzaepVar;
        zzaefVar.e(4, false);
        zzer zzerVar = this.f4019a;
        zzerVar.y(4);
        zzaefVar.m(zzerVar.f6834a, 0, 4, false);
        if (zzerVar.P() == 1718909296) {
            zzerVar.y(4);
            zzaefVar.m(zzerVar.f6834a, 0, 4, false);
            if (zzerVar.P() == 1635150182) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        return this.b.e(zzaepVar, zzafoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.b.f(zzaerVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
