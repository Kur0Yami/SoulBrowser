package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes.dex */
final class zzepc implements com.google.android.gms.ads.internal.zzg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdjt f6780a;

    public zzepc(zzepd zzepdVar, zzdjt zzdjtVar) {
        this.f6780a = zzdjtVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zza(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
        this.f6780a.b().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
        zzdjt zzdjtVar = this.f6780a;
        zzdjtVar.c().zza();
        zzdit d = zzdjtVar.d();
        synchronized (d) {
            d.s0(zzdis.f5821a);
        }
    }
}
