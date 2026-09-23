package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcne implements zzfeh {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5293a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public String f5294c;
    public com.google.android.gms.ads.internal.client.zzr d;

    public /* synthetic */ zzcne(zzcmv zzcmvVar) {
        this.f5293a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfeh
    public final /* bridge */ /* synthetic */ zzfeh a(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzrVar.getClass();
        this.d = zzrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfeh
    public final /* bridge */ /* synthetic */ zzfeh b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfeh
    public final zzfei zza() {
        zzijo.b(Context.class, this.b);
        zzijo.b(String.class, this.f5294c);
        zzijo.b(com.google.android.gms.ads.internal.client.zzr.class, this.d);
        return new zzcnf(this.f5293a, this.b, this.f5294c, this.d);
    }

    @Override // com.google.android.gms.internal.ads.zzfeh
    public final /* bridge */ /* synthetic */ zzfeh zzc(String str) {
        str.getClass();
        this.f5294c = str;
        return this;
    }
}
