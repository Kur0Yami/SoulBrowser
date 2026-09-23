package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfzj extends zzfzi {
    public static zzfzj i;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzfzj, com.google.android.gms.internal.ads.zzfzi] */
    public static final zzfzj f(Context context) {
        zzfzj zzfzjVar;
        synchronized (zzfzj.class) {
            try {
                if (i == null) {
                    i = new zzfzi(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
                }
                zzfzjVar = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfzjVar;
    }

    public final zzfzf g(long j, boolean z) {
        zzfzf a2;
        synchronized (zzfzj.class) {
            a2 = a(null, null, j, z);
        }
        return a2;
    }

    public final void h() {
        synchronized (zzfzj.class) {
            c(false);
        }
    }

    public final void i() {
        synchronized (zzfzj.class) {
            c(true);
        }
    }
}
