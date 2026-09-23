package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzez {

    /* renamed from: a, reason: collision with root package name */
    public final int f7109a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7110c;
    public long d;
    public final /* synthetic */ zzfa e;

    public zzez(zzfa zzfaVar, int i) {
        this.e = zzfaVar;
        this.f7109a = i;
    }

    public final void a() {
        zzfa zzfaVar = this.e;
        zzbb zzbbVar = zzfaVar.f7144a;
        zzdx zzdxVar = zzfaVar.e;
        int zzi = ((zzkp) zzbbVar).zzi();
        zzkp zzkpVar = (zzkp) zzfaVar.f7144a;
        if (zzkpVar.zzk() && zzkpVar.zzh() != 1 && zzkpVar.zzh() != 4 && zzi != 0 && zzi != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            boolean z = this.f7110c;
            int i = this.f7109a;
            if (z && this.b == zzi) {
                if (elapsedRealtime - this.d >= i) {
                    zzfaVar.f7145c.a(new zzfb(4, i));
                    return;
                }
                return;
            } else {
                this.f7110c = true;
                this.d = elapsedRealtime;
                this.b = zzi;
                zzdxVar.h(4);
                zzdxVar.f(4, i);
                return;
            }
        }
        if (this.f7110c) {
            zzdxVar.h(4);
        }
        this.f7110c = false;
    }
}
