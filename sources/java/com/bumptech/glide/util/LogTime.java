package com.bumptech.glide.util;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class LogTime {

    /* renamed from: a, reason: collision with root package name */
    public static final double f2490a = 1.0d / Math.pow(10.0d, 6.0d);
    public static final /* synthetic */ int b = 0;

    public static double a(long j) {
        return (SystemClock.elapsedRealtimeNanos() - j) * f2490a;
    }
}
