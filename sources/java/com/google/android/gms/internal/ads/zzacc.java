package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.Range;
import android.view.Surface;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzacc implements zzadl {

    /* renamed from: a, reason: collision with root package name */
    public zzgtd f3892a;
    public zzv b;

    /* renamed from: c, reason: collision with root package name */
    public long f3893c;
    public long d;
    public int e;
    public final /* synthetic */ zzaci f;

    public zzacc(zzaci zzaciVar, Context context) {
        this.f = zzaciVar;
        zzfj.j(context);
        zzgvs zzgvsVar = zzgtd.f;
        this.f3892a = zzguy.i;
        this.d = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void a(float f) {
        boolean z;
        zzaci zzaciVar = this.f;
        zzacn zzacnVar = zzaciVar.i;
        zzacnVar.getClass();
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        zzacnVar.d = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / f));
        zzacnVar.a();
        ((zzabn) zzaciVar.e).a(f);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void c(long j, long j2) {
        ((zzabn) this.f.e).c(j + this.f3893c, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void d(Surface surface, zzes zzesVar) {
        zzaci zzaciVar = this.f;
        Pair pair = zzaciVar.l;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzes) zzaciVar.l.second).equals(zzesVar)) {
            return;
        }
        zzaciVar.l = Pair.create(surface, zzesVar);
        zzesVar.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean e(long j, zzadj zzadjVar) {
        long j2;
        int i;
        zzgqa.f(false);
        long j3 = j + this.f3893c;
        zzaci zzaciVar = this.f;
        zzacn zzacnVar = zzaciVar.i;
        if (zzacnVar.f3903a == -9223372036854775807L) {
            j2 = -9223372036854775807L;
        } else {
            j2 = (long) (((j3 - r3) * zzacnVar.f3904c) + zzacnVar.b);
        }
        if (j2 != -9223372036854775807L) {
            long j4 = zzaciVar.h;
            if (j4 != -9223372036854775807L && j2 < j4 && (i = this.e) < 2) {
                this.e = i + 1;
                ((zzabs) zzadjVar).zzb();
                return true;
            }
        }
        int i2 = zzaciVar.p;
        if (i2 == -1 || i2 != 0) {
            return false;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void f(List list) {
        if (!this.f3892a.equals(list)) {
            this.f3892a = zzgtd.v(list);
            zzv zzvVar = this.b;
            if (zzvVar == null) {
                return;
            }
            zzt zztVar = new zzt(zzvVar);
            zzi zziVar = zzvVar.C;
            if (zziVar == null || !zziVar.d()) {
                zziVar = zzi.h;
            }
            zztVar.B = zziVar;
            zztVar.b();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void g(long j) {
        this.f3893c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void h(zzv zzvVar, long j, int i, List list) {
        zzgqa.f(false);
        this.f3892a = zzgtd.v(list);
        this.b = zzvVar;
        this.f.getClass();
        zzt zztVar = new zzt(zzvVar);
        zzi zziVar = zzvVar.C;
        if (zziVar == null || !zziVar.d()) {
            zziVar = zzi.h;
        }
        zztVar.B = zziVar;
        zztVar.b();
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.internal.ads.zzh, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean i(zzv zzvVar) {
        boolean z;
        boolean z2;
        zzaci zzaciVar = this.f;
        boolean z3 = false;
        boolean z4 = true;
        if (zzaciVar.n == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        zzi zziVar = zzvVar.C;
        if (zziVar == null || !zziVar.d()) {
            zziVar = zzi.h;
        }
        try {
            int i = zziVar.f8903c;
            try {
                if (i == 7) {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 34) {
                        if (i2 >= 33 && zzdv.d("EGL_EXT_gl_colorspace_bt2020_pq")) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            ?? obj = new Object();
                            obj.f8317a = zziVar.f8902a;
                            obj.b = zziVar.b;
                            obj.d = zziVar.d;
                            obj.e = zziVar.e;
                            obj.f = zziVar.f;
                            obj.f8318c = 6;
                            zziVar = obj.a();
                            zzdn zzdnVar = zzaciVar.f;
                            Looper myLooper = Looper.myLooper();
                            myLooper.getClass();
                            final zzdx a2 = zzdnVar.a(myLooper, null);
                            zzaciVar.k = a2;
                            zzbs zzbsVar = zzaciVar.b;
                            Context context = zzaciVar.f3898a;
                            zzl zzlVar = zzl.f9078a;
                            ((zzacg) zzbsVar).a(context, zziVar, zzaciVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzacb
                                @Override // java.util.concurrent.Executor
                                public final /* synthetic */ void execute(Runnable runnable) {
                                    zzdx.this.g(runnable);
                                }
                            });
                            throw null;
                        }
                    }
                    i = 7;
                }
                if (!z4 && Build.VERSION.SDK_INT >= 29) {
                    String str = zzfj.f7405a;
                    Locale locale = Locale.US;
                    zzee.c("PlaybackVidGraphWrapper", "Color transfer " + i + " is not supported. Falling back to OpenGl tone mapping.");
                    zziVar = zzi.h;
                    zzdn zzdnVar2 = zzaciVar.f;
                    Looper myLooper2 = Looper.myLooper();
                    myLooper2.getClass();
                    final zzdx a22 = zzdnVar2.a(myLooper2, null);
                    zzaciVar.k = a22;
                    zzbs zzbsVar2 = zzaciVar.b;
                    Context context2 = zzaciVar.f3898a;
                    zzl zzlVar2 = zzl.f9078a;
                    ((zzacg) zzbsVar2).a(context2, zziVar, zzaciVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzacb
                        @Override // java.util.concurrent.Executor
                        public final /* synthetic */ void execute(Runnable runnable) {
                            zzdx.this.g(runnable);
                        }
                    });
                    throw null;
                }
                zzbs zzbsVar22 = zzaciVar.b;
                Context context22 = zzaciVar.f3898a;
                zzl zzlVar22 = zzl.f9078a;
                ((zzacg) zzbsVar22).a(context22, zziVar, zzaciVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzacb
                    @Override // java.util.concurrent.Executor
                    public final /* synthetic */ void execute(Runnable runnable) {
                        zzdx.this.g(runnable);
                    }
                });
                throw null;
            } catch (zzbo e) {
                throw new zzadk(e, zzvVar);
            }
            if (i == 6) {
                if (Build.VERSION.SDK_INT >= 33 && zzdv.d("EGL_EXT_gl_colorspace_bt2020_pq")) {
                    z3 = true;
                }
                z4 = z3;
            } else if (i == 7) {
                z4 = zzdv.d("EGL_EXT_gl_colorspace_bt2020_hlg");
            }
            if (i == 2 || i == 10) {
                zziVar = zzi.h;
            }
            zzdn zzdnVar22 = zzaciVar.f;
            Looper myLooper22 = Looper.myLooper();
            myLooper22.getClass();
            final zzdx a222 = zzdnVar22.a(myLooper22, null);
            zzaciVar.k = a222;
        } catch (zzdu e2) {
            throw new zzadk(e2, zzvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void j(zzacj zzacjVar) {
        ((zzabn) this.f.e).j = zzacjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void l(int i) {
        ((zzabn) this.f.e).l(i);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zza() {
        zzaci zzaciVar = this.f;
        if (zzaciVar.d) {
            ((zzabn) zzaciVar.e).zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzb() {
        zzaci zzaciVar = this.f;
        if (zzaciVar.d) {
            ((zzabn) zzaciVar.e).zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzg(boolean z) {
        this.d = -9223372036854775807L;
        final zzaci zzaciVar = this.f;
        if (zzaciVar.n == 1) {
            zzaciVar.m++;
            ((zzabn) zzaciVar.e).zzg(z);
            while (zzaciVar.j.c() > 1) {
                zzaciVar.j.d();
            }
            if (zzaciVar.j.c() != 1) {
                zzaciVar.o = -9223372036854775807L;
                zzdx zzdxVar = zzaciVar.k;
                zzdxVar.getClass();
                zzdxVar.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzacd
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzaci zzaciVar2 = zzaci.this;
                        zzaciVar2.m--;
                    }
                });
                return;
            }
            ((zzach) zzaciVar.j.d()).getClass();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zzh(boolean z) {
        return ((zzabn) this.f.e).f3875a.e(false);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzi() {
        long j = this.d;
        zzaci zzaciVar = this.f;
        zzaciVar.getClass();
        if (zzaciVar.o >= j) {
            ((zzabn) zzaciVar.e).zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zzj() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final Surface zzk() {
        zzgqa.f(false);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzq() {
        zzaci zzaciVar = this.f;
        zzaciVar.getClass();
        zzes.f6870c.getClass();
        zzaciVar.l = null;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzt() {
        zzaci zzaciVar = this.f;
        if (zzaciVar.j.c() == 0) {
            ((zzabn) zzaciVar.e).zzt();
            return;
        }
        zzff zzffVar = new zzff();
        if (zzaciVar.j.c() <= 0) {
            zzaciVar.j = zzffVar;
        } else {
            ((zzach) zzaciVar.j.d()).getClass();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzw(boolean z) {
        zzaci zzaciVar = this.f;
        if (zzaciVar.d) {
            ((zzabn) zzaciVar.e).zzw(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzx() {
        zzaci zzaciVar = this.f;
        if (zzaciVar.n == 2) {
            return;
        }
        zzdx zzdxVar = zzaciVar.k;
        if (zzdxVar != null) {
            zzdxVar.zzm();
        }
        zzaciVar.l = null;
        zzaciVar.n = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void b(zzadi zzadiVar) {
    }
}
