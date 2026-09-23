package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes.dex */
public final class zzadf {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f3922a;
    public final zzadg b;

    public zzadf(Handler handler, zzadg zzadgVar) {
        if (zzadgVar != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.f3922a = handler;
        this.b = zzadgVar;
    }

    public final void a(final zzbv zzbvVar) {
        Handler handler = this.f3922a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzacz
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    String str = zzfj.f7405a;
                    zzadf.this.b.d(zzbvVar);
                }
            });
        }
    }

    public final void b(zzik zzikVar) {
        synchronized (zzikVar) {
        }
        Handler handler = this.f3922a;
        if (handler != null) {
            handler.post(new zzadc(this, zzikVar));
        }
    }
}
