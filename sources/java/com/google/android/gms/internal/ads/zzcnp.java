package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcnp implements zzffx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5315a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public String f5316c;
    public com.google.android.gms.ads.internal.client.zzr d;

    public /* synthetic */ zzcnp(zzcmv zzcmvVar) {
        this.f5315a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final /* bridge */ /* synthetic */ zzffx a(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzrVar.getClass();
        this.d = zzrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final /* bridge */ /* synthetic */ zzffx b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final zzffy zza() {
        zzijo.b(Context.class, this.b);
        zzijo.b(String.class, this.f5316c);
        zzijo.b(com.google.android.gms.ads.internal.client.zzr.class, this.d);
        return new zzcnq(this.f5315a, this.b, this.f5316c, this.d);
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final /* bridge */ /* synthetic */ zzffx zzc(String str) {
        str.getClass();
        this.f5316c = str;
        return this;
    }
}
