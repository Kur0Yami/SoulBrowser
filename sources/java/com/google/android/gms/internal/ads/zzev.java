package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzev {

    /* renamed from: a, reason: collision with root package name */
    public final int f6973a;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public int f6974c;
    public int d;
    public long e;
    public long f;
    public boolean g;
    public long h;
    public final /* synthetic */ zzfa i;

    public zzev(zzfa zzfaVar, int i) {
        this.i = zzfaVar;
        this.f6973a = i;
    }

    public final void a() {
        Object f;
        int i;
        zzfa zzfaVar = this.i;
        zzbb zzbbVar = zzfaVar.f7144a;
        zzdx zzdxVar = zzfaVar.e;
        if (((zzkp) zzbbVar).zzh() == 2) {
            zzkp zzkpVar = (zzkp) zzbbVar;
            if (zzkpVar.zzk() && zzkpVar.zzi() == 0) {
                zzbf zzq = zzkpVar.zzq();
                if (zzq.g()) {
                    f = null;
                } else {
                    f = zzq.f(zzkpVar.zzr());
                }
                int g = zzkpVar.g();
                int zzz = zzkpVar.zzz();
                long s = zzkpVar.s();
                long max = Math.max(0L, zzkpVar.zzw() - Math.max(0L, s - zzkpVar.zzu()));
                if (f != null && g == -1) {
                    zzq.o(f, zzfaVar.d);
                    s -= zzfj.r(0L);
                    g = -1;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                boolean z = this.g;
                int i2 = this.f6973a;
                if (z && Objects.equals(f, this.b) && g == this.f6974c && zzz == this.d) {
                    i = g;
                    if (s == this.e && max == this.f) {
                        if (elapsedRealtime - this.h >= i2) {
                            zzfaVar.f7145c.a(new zzfb(1, i2));
                            return;
                        }
                        return;
                    }
                } else {
                    i = g;
                }
                this.g = true;
                this.h = elapsedRealtime;
                this.b = f;
                this.f6974c = i;
                this.d = zzz;
                this.e = s;
                this.f = max;
                zzdxVar.h(1);
                zzdxVar.f(1, i2);
                return;
            }
        }
        if (this.g) {
            zzdxVar.h(1);
        }
        this.g = false;
    }
}
