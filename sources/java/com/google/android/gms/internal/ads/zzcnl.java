package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcnl implements zzdyw {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5307a;
    public final zzbon b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcmv f5308c;
    public final zzcnl d = this;
    public final zzijf e;

    public zzcnl(zzcmv zzcmvVar, Context context, zzbon zzbonVar) {
        this.f5308c = zzcmvVar;
        this.f5307a = context;
        this.b = zzbonVar;
        this.e = zzijf.a(new zzdyu(zzijh.a(this), new zzdys(zzijh.a(zzbonVar))));
    }

    @Override // com.google.android.gms.internal.ads.zzdyw
    public final zzdyt zzb() {
        return (zzdyt) this.e.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdyw
    public final zzdyo zzc() {
        return new zzcni(this.f5308c, this.d);
    }
}
