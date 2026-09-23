package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfzk extends zzfzi {
    public static zzfzk i;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzfzi, com.google.android.gms.internal.ads.zzfzk] */
    public static final zzfzk f(Context context) {
        zzfzk zzfzkVar;
        synchronized (zzfzk.class) {
            try {
                if (i == null) {
                    i = new zzfzi(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
                }
                zzfzkVar = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfzkVar;
    }

    public final zzfzf g(long j, boolean z) {
        synchronized (zzfzk.class) {
            try {
                if (!this.g.c()) {
                    return new zzfzf();
                }
                return a(null, null, j, z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (zzfzk.class) {
            try {
                zzfzh zzfzhVar = this.f;
                if (zzfzhVar.b.contains(this.f7747a)) {
                    c(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
