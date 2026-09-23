package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfhq {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f7365a;
    public final zzdxe b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7366c = new Object();
    public volatile int e = 1;
    public volatile long d = 0;

    public zzfhq(Clock clock, zzdxe zzdxeVar) {
        this.f7365a = clock;
        this.b = zzdxeVar;
    }

    public final void a(boolean z) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ve)).booleanValue()) {
            zzdxd a2 = this.b.a();
            a2.b("action", "mbs_state");
            if (true != z) {
                str = "0";
            } else {
                str = "1";
            }
            a2.b("mbs_state", str);
            a2.c();
        }
        if (z) {
            d(1, 2);
        } else {
            d(2, 1);
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f7366c) {
            c();
            if (this.e == 3) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void c() {
        long currentTimeMillis = this.f7365a.currentTimeMillis();
        synchronized (this.f7366c) {
            try {
                if (this.e == 3) {
                    if (this.d + ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O6)).longValue() <= currentTimeMillis) {
                        this.e = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(int i, int i2) {
        c();
        Object obj = this.f7366c;
        long currentTimeMillis = this.f7365a.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.e != i) {
                    return;
                }
                this.e = i2;
                if (this.e == 3) {
                    this.d = currentTimeMillis;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
