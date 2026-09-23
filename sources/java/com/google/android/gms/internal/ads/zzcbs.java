package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcbs extends zzcbx {
    public final Clock b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5026c;
    public final zzijf d;
    public final zzijf e;

    public zzcbs(Context context, Clock clock, com.google.android.gms.ads.internal.util.zzj zzjVar, zzcbw zzcbwVar) {
        this.b = clock;
        zzijh a2 = zzijh.a(context);
        zzijh a3 = zzijh.a(zzjVar);
        this.f5026c = zzijf.a(new zzcbm(a2, a3));
        zzijh a4 = zzijh.a(clock);
        zzijf a5 = zzijf.a(new zzcbo(a4, a3, zzijh.a(zzcbwVar)));
        this.d = a5;
        this.e = zzijf.a(new zzccd(a2, new zzcbq(a5, a4)));
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final zzcbp a() {
        return new zzcbp(this.b, (zzcbn) this.d.zzb());
    }
}
