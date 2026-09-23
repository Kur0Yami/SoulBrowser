package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfpf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7527a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzczy f7528c;
    public final zzijp d;
    public final zzijf e;
    public final zzdaa f;
    public final zzijf g;
    public final zzijp h;
    public final zzijp i;

    public zzfpf(zzijf zzijfVar, zzijp zzijpVar, zzczy zzczyVar, zzijp zzijpVar2, zzijf zzijfVar2, zzdaa zzdaaVar, zzijf zzijfVar3, zzijp zzijpVar3, zzijp zzijpVar4) {
        this.f7527a = zzijfVar;
        this.b = zzijpVar;
        this.f7528c = zzczyVar;
        this.d = zzijpVar2;
        this.e = zzijfVar2;
        this.f = zzdaaVar;
        this.g = zzijfVar3;
        this.h = zzijpVar3;
        this.i = zzijpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzemr zzemrVar = (zzemr) this.f7527a.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.b).a();
        String str = ((zzcxa) this.f7528c.f5642a.zzb()).f.e;
        zzijo.a(str);
        return new zzfpe(zzemrVar, a2, str, (String) this.d.zzb(), (Context) this.e.zzb(), this.f.f5647a.d, (zzfie) this.g.zzb(), (Clock) this.h.zzb(), (zzayq) this.i.zzb());
    }
}
