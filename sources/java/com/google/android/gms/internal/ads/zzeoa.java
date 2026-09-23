package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeoa implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6743a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f6744c;

    public zzeoa(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f6743a = zzijfVar;
        this.b = zzijfVar2;
        this.f6744c = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzenz((Context) this.f6743a.zzb(), (Executor) this.b.zzb(), (zzdtj) this.f6744c.f9006a);
    }
}
