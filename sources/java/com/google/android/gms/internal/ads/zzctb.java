package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzctb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5447a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5448c;

    public zzctb(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f5447a = zzijfVar;
        this.b = zzijfVar2;
        this.f5448c = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzddl zzb() {
        return new zzddl((ScheduledExecutorService) this.f5447a.zzb(), (Clock) this.b.zzb(), (zzdxe) this.f5448c.zzb());
    }
}
