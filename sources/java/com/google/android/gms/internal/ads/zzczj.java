package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzczj implements com.google.android.gms.ads.internal.overlay.zzr {
    public final zzfic f;
    public final zzfhr g;
    public final Clock h;
    public final zzdxe i;
    public final ScheduledExecutorService j;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5622c = new Object();
    public final zzfoi k = zzfoj.D();
    public boolean l = false;
    public boolean m = false;

    public zzczj(zzfic zzficVar, zzfhr zzfhrVar, Clock clock, zzdxe zzdxeVar, ScheduledExecutorService scheduledExecutorService) {
        this.f = zzficVar;
        this.g = zzfhrVar;
        this.h = clock;
        this.i = zzdxeVar;
        this.j = scheduledExecutorService;
    }

    public final void a() {
        synchronized (this.f5622c) {
            try {
                zzdxe zzdxeVar = this.i;
                String str = this.f.b.b.b;
                String encodeToString = Base64.encodeToString(((zzfoj) this.k.m()).h(), 1);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ke)).booleanValue()) {
                    zzdxd a2 = zzdxeVar.a();
                    a2.b("action", "pclma");
                    a2.b("pclmd", encodeToString);
                    a2.b("gqi", str);
                    a2.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(int i) {
        synchronized (this.f5622c) {
            try {
                if (!this.m && this.l) {
                    zzfoi zzfoiVar = this.k;
                    zzfnc D = zzfnd.D();
                    D.k();
                    ((zzfnd) D.f).F(i);
                    long currentTimeMillis = this.h.currentTimeMillis();
                    D.k();
                    ((zzfnd) D.f).E(currentTimeMillis);
                    zzfnd zzfndVar = (zzfnd) D.m();
                    zzfoiVar.k();
                    ((zzfoj) zzfoiVar.f).E(zzfndVar);
                    if (i == 10) {
                        a();
                        this.m = true;
                    }
                }
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
        b(3);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
        b(5);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
        b(4);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        b(7);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
        b(8);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
        b(6);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
        b(9);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
        b(10);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
    }
}
