package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzbl {

    /* renamed from: a, reason: collision with root package name */
    public final zzbo f11454a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public long f11455c;
    public long d;

    public zzbl(zzbo zzboVar) {
        if (zzboVar != null) {
            this.f11454a = zzboVar;
            return;
        }
        throw new NullPointerException("ticker");
    }

    public final void a() {
        if (!this.b) {
            this.b = true;
            this.d = this.f11454a.a();
            return;
        }
        throw new IllegalStateException("This stopwatch is already running.");
    }

    public final String toString() {
        long j;
        String str;
        if (this.b) {
            j = (this.f11454a.a() - this.d) + this.f11455c;
        } else {
            j = this.f11455c;
        }
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(j, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(j, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(j, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(j, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(j, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        String format = String.format(Locale.ROOT, "%.4g", Double.valueOf(j / timeUnit2.convert(1L, timeUnit)));
        switch (zzbk.f11453a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        return a.D(format, " ", str);
    }
}
