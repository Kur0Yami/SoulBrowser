package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdkl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5861a;

    public zzdkl(zzijf zzijfVar) {
        this.f5861a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzczb) this.f5861a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
