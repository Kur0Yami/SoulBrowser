package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;

/* loaded from: classes.dex */
final class zzsj implements zzpx {

    /* renamed from: a, reason: collision with root package name */
    public final zzqi f9246a;
    public final /* synthetic */ zzss b;

    public /* synthetic */ zzsj(zzss zzssVar, zzqi zzqiVar) {
        this.b = zzssVar;
        this.f9246a = zzqiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void a(final long j) {
        zzrc zzrcVar;
        final zzqx zzqxVar;
        Handler handler;
        zzss zzssVar = this.b;
        if (equals(zzssVar.i) && (zzrcVar = zzssVar.m) != null && (handler = (zzqxVar = ((zzsv) zzrcVar).f9262a.G0).f9206a) != null) {
            handler.post(new Runnable(j) { // from class: com.google.android.gms.internal.ads.zzqo
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1010, new Object());
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzb() {
        zzrc zzrcVar;
        zzmh zzmhVar;
        zzss zzssVar = this.b;
        if (equals(zzssVar.i) && (zzrcVar = zzssVar.m) != null && zzssVar.M && (zzmhVar = ((zzsv) zzrcVar).f9262a.L) != null) {
            zzmhVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzc() {
        zzss zzssVar = this.b;
        if (!equals(zzssVar.i)) {
            return;
        }
        zzssVar.L = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzd() {
        long j;
        zzss zzssVar = this.b;
        if (equals(zzssVar.i) && zzssVar.m != null) {
            zzsm zzsmVar = zzssVar.o;
            int i = zzsmVar.d;
            if (i != -1) {
                long j2 = zzsmVar.e.d / i;
                zzpz zzpzVar = zzssVar.r;
                zzpzVar.getClass();
                j = zzfj.t(zzpzVar.zzi(), j2);
            } else {
                j = -9223372036854775807L;
            }
            final long elapsedRealtime = SystemClock.elapsedRealtime() - zzssVar.S;
            zzrc zzrcVar = zzssVar.m;
            final int i2 = zzssVar.o.e.d;
            final zzqx zzqxVar = ((zzsv) zzrcVar).f9262a.G0;
            final long r = zzfj.r(j);
            Handler handler = zzqxVar.f9206a;
            if (handler != null) {
                handler.post(new Runnable(i2, r, elapsedRealtime) { // from class: com.google.android.gms.internal.ads.zzqp
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqx zzqxVar2 = zzqx.this;
                        zzqxVar2.getClass();
                        String str = zzfj.f7405a;
                        zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                        zzozVar.n(zzozVar.r(), 1011, new Object());
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzqz, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zze() {
        zzss.X.getAndDecrement();
        zzrc zzrcVar = this.b.m;
        if (zzrcVar != null) {
            int i = this.f9246a.f9191a;
            final ?? obj = new Object();
            final zzqx zzqxVar = ((zzsv) zzrcVar).f9262a.G0;
            Handler handler = zzqxVar.f9206a;
            if (handler != null) {
                handler.post(new Runnable(obj) { // from class: com.google.android.gms.internal.ads.zzql
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqx zzqxVar2 = zzqx.this;
                        zzqxVar2.getClass();
                        String str = zzfj.f7405a;
                        zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                        zzozVar.n(zzozVar.r(), 1032, new Object());
                    }
                });
            }
        }
    }
}
