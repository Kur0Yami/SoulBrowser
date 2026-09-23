package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcnv implements zzfhk {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5321a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public String f5322c;

    public /* synthetic */ zzcnv(zzcmv zzcmvVar) {
        this.f5321a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfhk
    public final /* synthetic */ zzfhk a(String str) {
        this.f5322c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhk
    public final /* bridge */ /* synthetic */ zzfhk b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhk
    public final zzfhl zza() {
        zzijo.b(Context.class, this.b);
        return new zzcnw(this.f5321a, this.b, this.f5322c);
    }
}
