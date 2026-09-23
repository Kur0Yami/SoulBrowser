package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzacu {

    /* renamed from: a, reason: collision with root package name */
    public final zzacm f3910a;
    public final zzack b = new zzack();

    /* renamed from: c, reason: collision with root package name */
    public final zzff f3911c = new zzff();
    public final zzff d = new zzff();
    public final zzeg e;
    public final zzacn f;
    public long g;
    public long h;
    public long i;
    public zzbv j;
    public long k;
    public final zzabm l;

    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzeg] */
    public zzacu(zzabm zzabmVar, zzacm zzacmVar, zzacn zzacnVar) {
        this.l = zzabmVar;
        this.f3910a = zzacmVar;
        this.f = zzacnVar;
        ?? obj = new Object();
        int i = 16;
        if (Integer.bitCount(16) != 1) {
            int highestOneBit = Integer.highestOneBit(15);
            i = highestOneBit + highestOneBit;
        }
        obj.f6467a = 0;
        obj.b = -1;
        obj.f6468c = 0;
        obj.d = new long[i];
        obj.e = i - 1;
        this.e = obj;
        this.g = -9223372036854775807L;
        this.j = zzbv.d;
        this.h = -9223372036854775807L;
        this.i = -9223372036854775807L;
    }

    public final void a(long j, long j2) {
        zzacm zzacmVar;
        long j3;
        boolean z;
        zzv zzvVar;
        boolean z2;
        boolean z3;
        double doubleValue;
        final zzabm zzabmVar = this.l;
        zzabn zzabnVar = zzabmVar.b;
        while (true) {
            zzeg zzegVar = this.e;
            int i = zzegVar.f6468c;
            if (i == 0) {
                return;
            }
            if (i != 0) {
                long j4 = zzegVar.d[zzegVar.f6467a];
                Long l = (Long) this.d.e(j4);
                if (l != null && l.longValue() != this.k) {
                    this.k = l.longValue();
                    this.f3910a.a(2);
                }
                long j5 = this.k;
                zzacm zzacmVar2 = this.f3910a;
                zzack zzackVar = this.b;
                int f = zzacmVar2.f(j4, j, j2, j5, false, false, zzackVar);
                if (f != 5 && f != 4) {
                    long j6 = zzackVar.f3900a;
                    zzacn zzacnVar = this.f;
                    zzacnVar.getClass();
                    if (j4 != -9223372036854775807L) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzgqa.a(z2);
                    if (j6 != -9223372036854775807L) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zzgqa.a(z3);
                    zzacmVar = zzacmVar2;
                    long j7 = zzacnVar.f3903a;
                    if (j7 != -9223372036854775807L) {
                        if (zzacnVar.b != -9223372036854775807L && j4 != j7) {
                            doubleValue = (j6 - r11) / (j4 - j7);
                            zzacnVar.f3904c = (((Double) zzacnVar.d.clamp(Double.valueOf(doubleValue))).doubleValue() * 0.20000000298023224d) + (zzacnVar.f3904c * 0.800000011920929d);
                            zzacnVar.f3903a = j4;
                            zzacnVar.b = j6;
                        }
                    }
                    doubleValue = ((Double) zzacnVar.d.getUpper()).doubleValue();
                    zzacnVar.f3904c = (((Double) zzacnVar.d.clamp(Double.valueOf(doubleValue))).doubleValue() * 0.20000000298023224d) + (zzacnVar.f3904c * 0.800000011920929d);
                    zzacnVar.f3903a = j4;
                    zzacnVar.b = j6;
                } else {
                    zzacmVar = zzacmVar2;
                }
                if (f != 0 && f != 1) {
                    if (f != 2 && f != 3) {
                        if (f != 4) {
                            return;
                        } else {
                            this.h = j4;
                        }
                    } else {
                        this.h = j4;
                        zzegVar.a();
                        zzabnVar.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabk
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzabm.this.b.h.zzc();
                            }
                        });
                        ((zzadj) zzabnVar.d.remove()).zzb();
                    }
                } else {
                    this.h = j4;
                    long a2 = zzegVar.a();
                    final zzbv zzbvVar = (zzbv) this.f3911c.e(a2);
                    if (zzbvVar != null && !zzbvVar.equals(zzbv.d) && !zzbvVar.equals(this.j)) {
                        this.j = zzbvVar;
                        zzt zztVar = new zzt();
                        zztVar.s = zzbvVar.f4911a;
                        zztVar.t = zzbvVar.b;
                        zztVar.e("video/raw");
                        zzabmVar.f3874a = new zzv(zztVar);
                        zzabnVar.i.execute(new Runnable(zzbvVar) { // from class: com.google.android.gms.internal.ads.zzabl
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzabm.this.b.h.getClass();
                            }
                        });
                    }
                    if (f == 0) {
                        j3 = System.nanoTime();
                    } else {
                        j3 = zzackVar.b;
                    }
                    zzacm zzacmVar3 = zzacmVar;
                    int i2 = zzacmVar3.d;
                    zzacmVar3.d = 3;
                    zzacmVar3.f = zzfj.s(zzacmVar3.k.zzb());
                    if (i2 != 3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && zzabnVar.e != null) {
                        zzabnVar.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabj
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzabm.this.b.h.zzb();
                            }
                        });
                    }
                    zzv zzvVar2 = zzabmVar.f3874a;
                    if (zzvVar2 == null) {
                        zzvVar = new zzv(new zzt());
                    } else {
                        zzvVar = zzvVar2;
                    }
                    long j8 = j3;
                    zzabnVar.j.j(a2, j8, zzvVar, null);
                    ((zzadj) zzabnVar.d.remove()).a(j8);
                }
            } else {
                throw new NoSuchElementException();
            }
        }
    }
}
