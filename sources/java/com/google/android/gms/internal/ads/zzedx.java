package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzedx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6409a;

    public zzedx(zzijp zzijpVar) {
        this.f6409a = zzijpVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzedq, com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks, com.google.android.gms.internal.ads.zzedw, com.google.android.gms.common.internal.BaseGmsClient$BaseOnConnectionFailedListener] */
    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzedw zzb() {
        Context a2 = ((zzclp) this.f6409a).a();
        ?? zzedqVar = new zzedq();
        zzedqVar.h = 1;
        zzedqVar.f = new zzbyc(a2, com.google.android.gms.ads.internal.zzt.zzs().zza(), zzedqVar, zzedqVar);
        return zzedqVar;
    }
}
