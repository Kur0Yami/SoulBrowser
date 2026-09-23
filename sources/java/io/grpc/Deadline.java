package io.grpc;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class Deadline implements Comparable<Deadline> {

    /* loaded from: classes3.dex */
    public static class SystemTicker extends Ticker {
    }

    /* loaded from: classes3.dex */
    public static abstract class Ticker {
    }

    static {
        TimeUnit.DAYS.toNanos(36500L);
        TimeUnit.SECONDS.toNanos(1L);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Deadline deadline) {
        deadline.getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof Deadline)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.asList(null, 0L).hashCode();
    }

    public final String toString() {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        throw null;
    }
}
