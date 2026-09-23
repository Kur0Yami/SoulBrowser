package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzelv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6655a;
    public final zzijh b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6656c;

    public zzelv(zzijf zzijfVar, zzijh zzijhVar, zzijp zzijpVar) {
        this.f6655a = zzijfVar;
        this.b = zzijhVar;
        this.f6656c = zzijpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzelu((Context) this.f6655a.zzb(), (zzdlv) this.b.f9006a, (Executor) this.f6656c.zzb());
    }
}
