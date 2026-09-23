package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdkr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5865a;

    public zzdkr(zzijf zzijfVar) {
        this.f5865a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzdlk) this.f5865a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
