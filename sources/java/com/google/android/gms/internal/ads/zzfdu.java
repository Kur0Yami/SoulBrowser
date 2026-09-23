package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfdu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7254a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7255c;
    public final zzffl d;
    public final zzijf e;
    public final zzijp f;

    public zzfdu(zzijh zzijhVar, zzijf zzijfVar, zzijh zzijhVar2, zzffl zzfflVar, zzijf zzijfVar2, zzcmg zzcmgVar) {
        this.f7254a = zzijhVar;
        this.b = zzijfVar;
        this.f7255c = zzijhVar2;
        this.d = zzfflVar;
        this.e = zzijfVar2;
        this.f = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzfdb((Context) this.f7254a.f9006a, (Executor) this.b.zzb(), (zzclg) this.f7255c.zzb(), this.d.zzb(), (zzfdr) this.e.zzb(), new zzfij(), ((zzcmg) this.f).a());
    }
}
