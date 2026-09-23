package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzffb implements zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfff f7293a;

    public zzffb(zzfff zzfffVar) {
        this.f7293a = zzfffVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgpr
    public final Object apply(Object obj) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (zzeef) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzfff zzfffVar = this.f7293a;
        zzfik zzb = zzfffVar.b.zzb();
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzb.d;
        String str = zzb.g;
        com.google.android.gms.ads.internal.client.zzx zzxVar = zzb.k;
        zzfkg zzfkgVar = ((zzfka) zzfffVar.f7297a).b;
        zzffd zzffdVar = new zzffd(null, new zzfkk(zzmVar, str, new zzbzd(zzfkgVar.f7432c).a().j, zzfkgVar.k, zzxVar));
        zzfffVar.d = zzffdVar;
        return zzffdVar;
    }
}
