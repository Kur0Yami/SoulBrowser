package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzccd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f5037a;
    public final zzcbq b;

    public zzccd(zzijh zzijhVar, zzcbq zzcbqVar) {
        this.f5037a = zzijhVar;
        this.b = zzcbqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f5037a.f9006a;
        zzcbq zzcbqVar = this.b;
        return new zzccc(context, new zzcbp((Clock) zzcbqVar.f5023a.f9006a, (zzcbn) zzcbqVar.b.zzb()));
    }
}
