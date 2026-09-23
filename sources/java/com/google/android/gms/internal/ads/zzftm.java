package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes.dex */
final class zzftm implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = zzftp.i;
        if (handler != null) {
            handler.post(zzftp.j);
            zzftp.i.postDelayed(zzftp.k, 200L);
        }
    }
}
