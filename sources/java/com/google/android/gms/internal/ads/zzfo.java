package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzfo {

    /* renamed from: a, reason: collision with root package name */
    public final zzfn f7512a;
    public final zzdx b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdx f7513c;
    public boolean d;
    public boolean e;

    public zzfo(Context context, Looper looper, zzfc zzfcVar) {
        this.f7512a = new zzfn(context.getApplicationContext());
        this.b = zzfcVar.a(looper, null);
        this.f7513c = zzfcVar.a(Looper.getMainLooper(), null);
    }

    public final void a(boolean z) {
        if (this.e != z) {
            this.e = z;
            if (this.d) {
                b(true, z);
            }
        }
    }

    public final void b(final boolean z, final boolean z2) {
        zzdx zzdxVar = this.b;
        if (z && z2) {
            zzdxVar.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfl
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfo.this.f7512a.a(z, z2);
                }
            });
            return;
        }
        final zzfn zzfnVar = this.f7512a;
        Objects.requireNonNull(zzfnVar);
        final Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfk
            @Override // java.lang.Runnable
            public final void run() {
                zzfn zzfnVar2 = zzfn.this;
                synchronized (zzfnVar2) {
                    PowerManager.WakeLock wakeLock = zzfnVar2.b;
                    if (wakeLock != null) {
                        wakeLock.release();
                    }
                }
            }
        };
        this.f7513c.d(runnable);
        zzdxVar.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfo zzfoVar = zzfo.this;
                zzfoVar.f7513c.i(runnable);
                zzfoVar.f7512a.a(z, z2);
            }
        });
    }
}
