package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzdqi implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f6028a;

    public zzdqi(zzdqu zzdquVar, zzcdt zzcdtVar) {
        this.f6028a = zzcdtVar;
        Objects.requireNonNull(zzdquVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        zzcdt zzcdtVar = this.f6028a;
        if (zzcirVar != null) {
            zzcirVar.l("/video", new zzcgj(new zzdqh(zzcdtVar)));
            zzcirVar.r();
        } else {
            zzcdtVar.b(new zzebr(1, "Missing webview from video view future."));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load media data due to video view load failure.");
        this.f6028a.b(th);
    }
}
