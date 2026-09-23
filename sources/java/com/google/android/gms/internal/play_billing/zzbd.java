package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class zzbd {

    /* renamed from: a, reason: collision with root package name */
    public static final zzbo f11449a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.play_billing.zzbo] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    static {
        ?? r0;
        try {
            SystemClock.elapsedRealtimeNanos();
            r0 = new Object();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            r0 = new Object();
        }
        f11449a = r0;
    }
}
