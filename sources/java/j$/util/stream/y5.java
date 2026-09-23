package j$.util.stream;

import j$.util.Spliterator;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public abstract class y5 {
    public static long c(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        return j3 >= 0 ? j3 : LongCompanionObject.MAX_VALUE;
    }

    public static long a(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    public static Spliterator b(d7 d7Var, Spliterator spliterator, long j, long j2) {
        long c2 = c(j, j2);
        int i = w5.f21503a[d7Var.ordinal()];
        if (i == 1) {
            return new b8(spliterator, j, c2);
        }
        if (i == 2) {
            return new a8((Spliterator.OfInt) spliterator, j, c2);
        }
        if (i == 3) {
            return new a8((Spliterator.OfLong) spliterator, j, c2);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + d7Var);
        }
        return new a8((Spliterator.OfDouble) spliterator, j, c2);
    }

    public static p5 h(f5 f5Var, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new p5(f5Var, d(j2), j, j2);
    }

    public static r5 f(x0 x0Var, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new r5(x0Var, d(j2), j, j2);
    }

    public static t5 g(g1 g1Var, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new t5(g1Var, d(j2), j, j2);
    }

    public static v5 e(y yVar, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new v5(yVar, d(j2), j, j2);
    }

    public static int d(long j) {
        return (j != -1 ? c7.u : 0) | c7.t;
    }
}
