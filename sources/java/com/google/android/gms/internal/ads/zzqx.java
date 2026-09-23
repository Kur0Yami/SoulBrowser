package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes.dex */
public final class zzqx {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f9206a;
    public final zzqy b;

    public zzqx(Handler handler, zzqy zzqyVar) {
        this.f9206a = handler;
        this.b = zzqyVar;
    }

    public final void a(zzik zzikVar) {
        synchronized (zzikVar) {
        }
        Handler handler = this.f9206a;
        if (handler != null) {
            handler.post(new zzqr(this, zzikVar));
        }
    }
}
