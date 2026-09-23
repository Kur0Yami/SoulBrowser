package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfna implements zzdhw, zzdba, zzdia {

    /* renamed from: c, reason: collision with root package name */
    public final zzfno f7493c;
    public final zzfne f;

    public zzfna(Context context, zzfno zzfnoVar) {
        this.f7493c = zzfnoVar;
        this.f = a.o(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbid.d.c()).booleanValue()) {
            String adError = zzeVar.zza().toString();
            zzfne zzfneVar = this.f;
            zzfneVar.zzk(adError);
            zzfneVar.zzd(false);
            this.f7493c.a(zzfneVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdia
    public final void zza() {
        if (((Boolean) zzbid.d.c()).booleanValue()) {
            zzfne zzfneVar = this.f;
            zzfneVar.zzd(true);
            this.f7493c.a(zzfneVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdia
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzh() {
        if (((Boolean) zzbid.d.c()).booleanValue()) {
            this.f.zza();
        }
    }
}
