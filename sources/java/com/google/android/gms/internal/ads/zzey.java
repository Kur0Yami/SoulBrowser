package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzey {

    /* renamed from: a, reason: collision with root package name */
    public final int f7073a;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public int f7074c;
    public int d;
    public boolean e;
    public long f;
    public final /* synthetic */ zzfa g;

    public zzey(zzfa zzfaVar, int i) {
        this.g = zzfaVar;
        this.f7073a = i;
    }

    public final void a() {
        Object f;
        long j;
        long j2;
        zzfa zzfaVar = this.g;
        zzbb zzbbVar = zzfaVar.f7144a;
        zzbd zzbdVar = zzfaVar.d;
        zzdx zzdxVar = zzfaVar.e;
        zzbf zzq = ((zzkp) zzbbVar).zzq();
        if (zzq.g()) {
            f = null;
        } else {
            f = zzq.f(((zzkp) zzbbVar).zzr());
        }
        zzkp zzkpVar = (zzkp) zzbbVar;
        int g = zzkpVar.g();
        int zzz = zzkpVar.zzz();
        long zzu = zzkpVar.zzu();
        if (f != null && g == -1) {
            zzq.o(f, zzbdVar);
            zzu -= zzfj.r(0L);
            j = -9223372036854775807L;
            j2 = zzfj.r(zzbdVar.d);
            g = -1;
        } else {
            j = -9223372036854775807L;
            if (g != -1) {
                j2 = zzkpVar.r();
            } else {
                j2 = -9223372036854775807L;
            }
        }
        boolean a2 = ((zzf) zzbbVar).a();
        if (a2 && j2 != j && zzu >= j2) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            boolean z = this.e;
            int i = this.f7073a;
            if (z && Objects.equals(f, this.b) && g == this.f7074c && zzz == this.d) {
                if (elapsedRealtime - this.f >= i) {
                    zzfaVar.f7145c.a(new zzfb(3, i));
                    return;
                }
                return;
            }
            this.e = true;
            this.f = elapsedRealtime;
            this.b = f;
            this.f7074c = g;
            this.d = zzz;
            zzdxVar.h(3);
            zzdxVar.f(3, i);
            return;
        }
        zzdxVar.h(3);
        if (a2 && j2 != j) {
            zzkpVar.p();
            zzdxVar.f(3, (int) Math.ceil(((float) (j2 - zzu)) / zzkpVar.X.o.f4431a));
        }
        this.e = false;
    }
}
