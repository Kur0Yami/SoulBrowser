package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdmt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5919a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5920c;
    public final zzijp d;

    public zzdmt(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f5919a = zzijfVar;
        this.b = zzijfVar2;
        this.f5920c = zzijfVar3;
        this.d = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbch zzbchVar = (zzbch) this.f5919a.zzb();
        Executor executor = (Executor) this.b.zzb();
        Context context = (Context) this.f5920c.zzb();
        return new zzcsh(executor, new zzcrt(context, zzbchVar), (Clock) this.d.zzb());
    }
}
