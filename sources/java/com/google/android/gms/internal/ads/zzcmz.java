package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcmz implements zzfcu {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5284a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public String f5285c;

    public /* synthetic */ zzcmz(zzcmv zzcmvVar) {
        this.f5284a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfcu
    public final /* bridge */ /* synthetic */ zzfcu a(String str) {
        str.getClass();
        this.f5285c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfcu
    public final /* bridge */ /* synthetic */ zzfcu b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfcu
    public final zzfcv zza() {
        zzijo.b(Context.class, this.b);
        zzijo.b(String.class, this.f5285c);
        return new zzcna(this.f5284a, this.b, this.f5285c);
    }
}
