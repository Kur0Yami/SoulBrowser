package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.Locale;

@Beta
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class RateLimiter {

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f12593a;

    /* loaded from: classes3.dex */
    public static abstract class SleepingStopwatch {

        /* renamed from: com.google.common.util.concurrent.RateLimiter$SleepingStopwatch$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends SleepingStopwatch {
        }
    }

    public abstract double a();

    public final Object b() {
        Object obj;
        Object obj2 = this.f12593a;
        if (obj2 == null) {
            synchronized (this) {
                try {
                    obj = this.f12593a;
                    if (obj == null) {
                        obj = new Object();
                        this.f12593a = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        }
        return obj2;
    }

    public final String toString() {
        double a2;
        Locale locale = Locale.ROOT;
        synchronized (b()) {
            a2 = a();
        }
        return String.format(locale, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(a2));
    }
}
