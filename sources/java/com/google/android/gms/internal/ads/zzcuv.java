package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcuv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcua f5490a;
    public final zzijp b;

    public zzcuv(zzcua zzcuaVar, zzijf zzijfVar) {
        this.f5490a = zzcuaVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzcuu(this.f5490a.f5474a.d, (Executor) this.b.zzb());
    }
}
