package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzctw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5469a;

    public zzctw(zzijf zzijfVar) {
        this.f5469a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdij((zzcuz) this.f5469a.zzb(), zzcdo.g));
        zzijo.a(singleton);
        return singleton;
    }
}
