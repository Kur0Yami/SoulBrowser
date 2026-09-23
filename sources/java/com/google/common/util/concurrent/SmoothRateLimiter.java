package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.concurrent.TimeUnit;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
abstract class SmoothRateLimiter extends RateLimiter {

    /* loaded from: classes3.dex */
    public static final class SmoothBursty extends SmoothRateLimiter {
    }

    /* loaded from: classes3.dex */
    public static final class SmoothWarmingUp extends SmoothRateLimiter {
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final double a() {
        return TimeUnit.SECONDS.toMicros(1L) / 0.0d;
    }
}
