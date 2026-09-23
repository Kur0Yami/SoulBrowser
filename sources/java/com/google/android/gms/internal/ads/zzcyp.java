package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzcyp implements zzddq, zzdjd {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5598c;
    public final zzfik f;
    public final VersionInfoParcel g;
    public final com.google.android.gms.ads.internal.util.zzg h;
    public final zzdzp i;
    public final zzfnr j;
    public final zzeak k;

    public zzcyp(Context context, zzfik zzfikVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.util.zzj zzjVar, zzdzp zzdzpVar, zzfnr zzfnrVar, zzeak zzeakVar) {
        this.f5598c = context;
        this.f = zzfikVar;
        this.g = versionInfoParcel;
        this.h = zzjVar;
        this.i = zzdzpVar;
        this.j = zzfnrVar;
        this.k = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
    }

    public final void a() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q4)).booleanValue()) {
            String str = this.f.g;
            zzccv zzi = this.h.zzi();
            com.google.android.gms.ads.internal.zzt.zzl().zzb(this.f5598c, this.g, str, zzi, this.j, this.k.g());
        }
        this.i.a();
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
        a();
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj zzbjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.R4)).booleanValue()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zze(String str) {
    }
}
