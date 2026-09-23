package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxf;

/* loaded from: classes.dex */
final class zzgzb extends zzgxf.zzf implements Runnable {
    public final Runnable l;

    public zzgzb(Runnable runnable) {
        runnable.getClass();
        this.l = runnable;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        String obj = this.l.toString();
        return android.support.v4.media.a.q(new StringBuilder(obj.length() + 7), "task=[", obj, "]");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.l.run();
        } catch (Throwable th) {
            d(th);
            throw th;
        }
    }
}
