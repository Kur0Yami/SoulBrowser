package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdjx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5846a;

    public zzdjx(zzijf zzijfVar) {
        this.f5846a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzczb) this.f5846a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
