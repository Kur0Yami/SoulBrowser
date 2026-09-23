package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzdyy implements zzdyn {

    /* renamed from: a, reason: collision with root package name */
    public final long f6269a;
    public final zzeqx b;

    public zzdyy(long j, Context context, zzdyr zzdyrVar, zzclg zzclgVar, String str) {
        this.f6269a = j;
        zzcnp zzcnpVar = (zzcnp) zzclgVar.p();
        zzcnpVar.b(context);
        zzcnpVar.d = new com.google.android.gms.ads.internal.client.zzr();
        zzcnpVar.zzc(str);
        zzeqx zza = ((zzcnq) zzcnpVar.zza()).zza();
        this.b = zza;
        zza.zzdR(new zzdyx(this, zzdyrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void a(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        this.b.zze(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void zzb() {
        this.b.zzR(new ObjectWrapper(null));
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void zzc() {
        this.b.zzc();
    }
}
