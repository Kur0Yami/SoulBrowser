package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwa;

/* loaded from: classes.dex */
final class zzwr extends zzwa.zzf implements Runnable {
    public final Runnable l;

    public zzwr(Runnable runnable) {
        runnable.getClass();
        this.l = runnable;
    }

    @Override // com.google.android.gms.internal.cast.zzwa
    public final String e() {
        String obj = this.l.toString();
        return android.support.v4.media.a.q(new StringBuilder(obj.length() + 7), "task=[", obj, "]");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.l.run();
        } catch (Throwable th) {
            if (zzwb.k.g(this, null, new zzwa.zzc(th))) {
                zzwa.g(this);
            }
            throw th;
        }
    }
}
