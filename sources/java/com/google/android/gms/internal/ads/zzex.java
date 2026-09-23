package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzex {

    /* renamed from: a, reason: collision with root package name */
    public final int f7040a;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public int f7041c;
    public int d;
    public long e;
    public boolean f;
    public long g;
    public final /* synthetic */ zzfa h;

    public zzex(zzfa zzfaVar, int i) {
        this.h = zzfaVar;
        this.f7040a = i;
    }

    public final void a() {
        Object f;
        zzfa zzfaVar = this.h;
        zzbb zzbbVar = zzfaVar.f7144a;
        zzdx zzdxVar = zzfaVar.e;
        if (!((zzf) zzbbVar).a()) {
            if (this.f) {
                zzdxVar.h(2);
            }
            this.f = false;
            return;
        }
        zzkp zzkpVar = (zzkp) zzbbVar;
        zzbf zzq = zzkpVar.zzq();
        if (zzq.g()) {
            f = null;
        } else {
            f = zzq.f(zzkpVar.zzr());
        }
        int g = zzkpVar.g();
        int zzz = zzkpVar.zzz();
        long zzu = zzkpVar.zzu();
        if (f != null && g == -1) {
            zzq.o(f, zzfaVar.d);
            zzu -= zzfj.r(0L);
            g = -1;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = this.f;
        int i = this.f7040a;
        if (z && Objects.equals(f, this.b) && g == this.f7041c && zzz == this.d && zzu == this.e) {
            if (elapsedRealtime - this.g >= i) {
                zzfaVar.f7145c.a(new zzfb(2, i));
                return;
            }
            return;
        }
        this.f = true;
        this.g = elapsedRealtime;
        this.b = f;
        this.f7041c = g;
        this.d = zzz;
        this.e = zzu;
        zzdxVar.h(2);
        zzdxVar.f(2, i);
    }
}
