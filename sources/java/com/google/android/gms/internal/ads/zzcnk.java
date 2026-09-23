package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcnk implements zzdyv {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5305a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public zzbon f5306c;

    public /* synthetic */ zzcnk(zzcmv zzcmvVar) {
        this.f5305a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final /* bridge */ /* synthetic */ zzdyv a(zzbon zzbonVar) {
        zzbonVar.getClass();
        this.f5306c = zzbonVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final /* bridge */ /* synthetic */ zzdyv b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final zzdyw zza() {
        zzijo.b(Context.class, this.b);
        zzijo.b(zzbon.class, this.f5306c);
        return new zzcnl(this.f5305a, this.b, this.f5306c);
    }
}
