package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzaqi implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4346a = new zzer(4);
    public final zzaft b = new zzaft(-1, -1, "image/webp");

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.b.c(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzer zzerVar = this.f4346a;
        zzerVar.y(4);
        zzaef zzaefVar = (zzaef) zzaepVar;
        zzaefVar.m(zzerVar.f6834a, 0, 4, false);
        if (zzerVar.P() == 1380533830) {
            zzaefVar.e(4, false);
            zzerVar.y(4);
            zzaefVar.m(zzerVar.f6834a, 0, 4, false);
            if (zzerVar.P() == 1464156752) {
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
