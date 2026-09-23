package io.opencensus.common;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Duration implements Comparable<Duration> {
    public abstract int a();

    public abstract long b();

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        int i;
        Duration duration2 = duration;
        long b = b();
        long b2 = duration2.b();
        int i2 = TimeUtils.f21063a;
        if (b < b2) {
            i = -1;
        } else if (b == b2) {
            i = 0;
        } else {
            i = 1;
        }
        if (i != 0) {
            return i;
        }
        long a2 = a();
        long a3 = duration2.a();
        if (a2 < a3) {
            return -1;
        }
        if (a2 != a3) {
            return 1;
        }
        return 0;
    }
}
