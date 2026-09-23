package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdkc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5851a;

    public zzdkc(zzijf zzijfVar) {
        this.f5851a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzczb) this.f5851a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
