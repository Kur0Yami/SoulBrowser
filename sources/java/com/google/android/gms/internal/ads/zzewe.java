package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewe implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzexv f7015a;
    public final zzijp b;

    public zzewe(zzexv zzexvVar, zzijf zzijfVar) {
        this.f7015a = zzexvVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzeyj(new zzext((zzfhq) this.f7015a.f7065a.zzb()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
