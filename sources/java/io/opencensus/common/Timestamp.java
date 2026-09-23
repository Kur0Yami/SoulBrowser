package io.opencensus.common;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Timestamp implements Comparable<Timestamp> {
    public abstract int a();

    public abstract long b();

    @Override // java.lang.Comparable
    public final int compareTo(Timestamp timestamp) {
        int i;
        Timestamp timestamp2 = timestamp;
        long b = b();
        long b2 = timestamp2.b();
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
        long a3 = timestamp2.a();
        if (a2 < a3) {
            return -1;
        }
        if (a2 != a3) {
            return 1;
        }
        return 0;
    }
}
