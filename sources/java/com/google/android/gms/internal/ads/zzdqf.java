package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzdqf {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6023a;
    public final zzdqu b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdqz f6024c;
    public final zzdwy d;

    public zzdqf(zzgyw zzgywVar, zzdqu zzdquVar, zzdqz zzdqzVar, zzdwy zzdwyVar) {
        this.f6023a = zzgywVar;
        this.b = zzdquVar;
        this.f6024c = zzdqzVar;
        this.d = zzdwyVar;
    }

    public final void a(ListenableFuture listenableFuture, zzdwm zzdwmVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P2)).booleanValue()) {
            listenableFuture.k(new zzgyk(listenableFuture, new zzdqc(this, zzdwmVar)), this.f6023a);
        }
    }
}
