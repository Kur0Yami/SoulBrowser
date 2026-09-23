package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzctt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5466a;

    public zzctt(zzctj zzctjVar, zzijf zzijfVar) {
        this.f5466a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzcuz) this.f5466a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
