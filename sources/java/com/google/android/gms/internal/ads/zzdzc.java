package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzdzc implements zzdyn {

    /* renamed from: a, reason: collision with root package name */
    public final long f6272a;
    public final zzdyr b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfhi f6273c;

    public zzdzc(long j, Context context, zzdyr zzdyrVar, zzclg zzclgVar, String str) {
        this.f6272a = j;
        this.b = zzdyrVar;
        zzcnv zzcnvVar = (zzcnv) zzclgVar.s();
        zzcnvVar.b(context);
        zzcnvVar.f5322c = str;
        this.f6273c = ((zzcnw) zzcnvVar.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void a(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        try {
            this.f6273c.zzc(zzmVar, new zzdza(this));
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void zzb() {
        try {
            zzfhi zzfhiVar = this.f6273c;
            zzfhiVar.zze(new zzdzb(this));
            zzfhiVar.zzb(new ObjectWrapper(null));
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void zzc() {
    }
}
