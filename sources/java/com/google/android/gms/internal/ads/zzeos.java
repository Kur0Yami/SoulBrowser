package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes.dex */
final class zzeos implements com.google.android.gms.ads.internal.zzg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f6766a;
    public final /* synthetic */ zzfic b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfhr f6767c;
    public final /* synthetic */ zzeoz d;
    public final /* synthetic */ zzeou e;

    public zzeos(zzeou zzeouVar, zzcdt zzcdtVar, zzfic zzficVar, zzfhr zzfhrVar, zzeoz zzeozVar) {
        this.f6766a = zzcdtVar;
        this.b = zzficVar;
        this.f6767c = zzfhrVar;
        this.d = zzeozVar;
        this.e = zzeouVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zza(View view) {
        zzeoz zzeozVar = this.d;
        zzepd zzepdVar = this.e.d;
        zzfic zzficVar = this.b;
        zzfhr zzfhrVar = this.f6767c;
        zzcdt zzcdtVar = this.f6766a;
        zzdjw zzdjwVar = new zzdjw(new zzepa(zzepdVar, zzfhrVar), null);
        zzdjt d = zzepdVar.f6781a.d(new zzcwa(zzficVar, zzfhrVar, null), zzdjwVar);
        zzepc zzepcVar = new zzepc(zzepdVar, d);
        synchronized (zzeozVar) {
            zzeozVar.f6776a = zzepcVar;
        }
        zzcdtVar.a(d.g());
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
    }
}
