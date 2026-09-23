package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public abstract class v3 implements n8 {

    /* renamed from: a, reason: collision with root package name */
    public static final u2 f21500a = new Object();
    public static final s2 b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final t2 f21501c = new Object();
    public static final r2 d = new Object();
    public static final int[] e = new int[0];
    public static final long[] f = new long[0];
    public static final double[] g = new double[0];

    public abstract void c0(Spliterator spliterator, n5 n5Var);

    public abstract boolean d0(Spliterator spliterator, n5 n5Var);

    public abstract c2 g0(Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract long h0(Spliterator spliterator);

    public abstract u1 s0(long j, IntFunction intFunction);

    public abstract q4 u0();

    @Override // j$.util.stream.n8
    public /* synthetic */ int v() {
        return 0;
    }

    public abstract n5 v0(Spliterator spliterator, n5 n5Var);

    public abstract n5 w0(n5 n5Var);

    public abstract Spliterator x0(Spliterator spliterator);

    public static j$.util.p m0(Function function) {
        j$.util.p pVar = new j$.util.p(5);
        pVar.b = function;
        return pVar;
    }

    public static j$.util.concurrent.t t0(p1 p1Var, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(p1Var);
        return new j$.util.concurrent.t(d7.REFERENCE, p1Var, new j$.util.concurrent.t(5, p1Var, predicate));
    }

    public static v2 f0(d7 d7Var) {
        int i = d2.f21401a[d7Var.ordinal()];
        if (i == 1) {
            return f21500a;
        }
        if (i == 2) {
            return b;
        }
        if (i == 3) {
            return f21501c;
        }
        if (i == 4) {
            return d;
        }
        throw new IllegalStateException("Unknown shape " + d7Var);
    }

    public static j$.util.concurrent.t q0(p1 p1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(p1Var);
        return new j$.util.concurrent.t(d7.INT_VALUE, p1Var, new j1(p1Var, 1));
    }

    public static c2 V(c2 c2Var, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == c2Var.count()) {
            return c2Var;
        }
        Spliterator spliterator = c2Var.spliterator();
        long j3 = j2 - j;
        u1 W = W(j3, intFunction);
        W.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new y0(10)); i++) {
        }
        if (j2 == c2Var.count()) {
            spliterator.forEachRemaining(W);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(W); i2++) {
            }
        }
        W.end();
        return W.build();
    }

    public static e2 b0(d7 d7Var, c2 c2Var, c2 c2Var2) {
        int i = d2.f21401a[d7Var.ordinal()];
        if (i == 1) {
            return new e2(c2Var, c2Var2);
        }
        if (i == 2) {
            return new e2((y1) c2Var, (y1) c2Var2);
        }
        if (i == 3) {
            return new e2((a2) c2Var, (a2) c2Var2);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + d7Var);
        }
        return new e2((w1) c2Var, (w1) c2Var2);
    }

    public static j$.util.concurrent.t r0(p1 p1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(p1Var);
        return new j$.util.concurrent.t(d7.LONG_VALUE, p1Var, new j1(p1Var, 0));
    }

    public static void J() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static j$.util.concurrent.t p0(p1 p1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(p1Var);
        return new j$.util.concurrent.t(d7.DOUBLE_VALUE, p1Var, new j1(p1Var, 2));
    }

    public static void K() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.f2, j$.util.stream.u1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.u1, j$.util.stream.y6] */
    public static u1 W(long j, IntFunction intFunction) {
        if (j >= 0 && j < 2147483639) {
            return new f2(j, intFunction);
        }
        return new y6();
    }

    public static void C() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void F(l5 l5Var, Integer num) {
        if (p8.f21480a) {
            p8.a(l5Var.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        l5Var.accept(num.intValue());
    }

    public static void H(m5 m5Var, Long l) {
        if (p8.f21480a) {
            p8.a(m5Var.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        m5Var.accept(l.longValue());
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.s1, j$.util.stream.x2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.x6, j$.util.stream.s1] */
    public static s1 n0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new x6();
        }
        return new x2(j);
    }

    public static void D(k5 k5Var, Double d2) {
        if (p8.f21480a) {
            p8.a(k5Var.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        k5Var.accept(d2.doubleValue());
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.g3, j$.util.stream.t1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.x6, j$.util.stream.t1] */
    public static t1 o0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new x6();
        }
        return new g3(j);
    }

    public static Object[] L(b2 b2Var, IntFunction intFunction) {
        if (p8.f21480a) {
            p8.a(b2Var.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (b2Var.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) b2Var.count());
        b2Var.k(objArr, 0);
        return objArr;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.o2, j$.util.stream.r1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.x6, j$.util.stream.r1] */
    public static r1 e0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new x6();
        }
        return new o2(j);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.util.stream.i0, java.util.function.LongFunction, java.lang.Object] */
    public static c2 X(v3 v3Var, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long h0 = v3Var.h0(spliterator);
        if (h0 < 0 || !spliterator.hasCharacteristics(16384)) {
            ?? obj = new Object();
            obj.f21434a = intFunction;
            c2 c2Var = (c2) new h2(v3Var, spliterator, obj, new y0(18), 3).invoke();
            return z ? i0(c2Var, intFunction) : c2Var;
        }
        if (h0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) h0);
        new m3(spliterator, v3Var, objArr).invoke();
        return new f2(objArr);
    }

    public static void Q(y1 y1Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            y1Var.g((IntConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(y1Var.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfInt) y1Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void N(y1 y1Var, Integer[] numArr, int i) {
        if (p8.f21480a) {
            p8.a(y1Var.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) y1Var.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static y1 T(y1 y1Var, long j, long j2) {
        if (j == 0 && j2 == y1Var.count()) {
            return y1Var;
        }
        long j3 = j2 - j;
        Spliterator.OfInt ofInt = (Spliterator.OfInt) y1Var.spliterator();
        s1 n0 = n0(j3);
        n0.c(j3);
        for (int i = 0; i < j && ofInt.tryAdvance((IntConsumer) new x1(0)); i++) {
        }
        if (j2 == y1Var.count()) {
            ofInt.forEachRemaining((IntConsumer) n0);
        } else {
            for (int i2 = 0; i2 < j3 && ofInt.tryAdvance((IntConsumer) n0); i2++) {
            }
        }
        n0.end();
        return n0.build();
    }

    public static y1 Z(v3 v3Var, Spliterator spliterator, boolean z) {
        long h0 = v3Var.h0(spliterator);
        if (h0 < 0 || !spliterator.hasCharacteristics(16384)) {
            y1 y1Var = (y1) new h2(v3Var, spliterator, new y0(14), new y0(15), 1).invoke();
            return z ? k0(y1Var) : y1Var;
        }
        if (h0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) h0];
        new k3(spliterator, v3Var, iArr).invoke();
        return new x2(iArr);
    }

    public static a2 a0(v3 v3Var, Spliterator spliterator, boolean z) {
        long h0 = v3Var.h0(spliterator);
        if (h0 < 0 || !spliterator.hasCharacteristics(16384)) {
            a2 a2Var = (a2) new h2(v3Var, spliterator, new y0(16), new y0(17), 2).invoke();
            return z ? l0(a2Var) : a2Var;
        }
        if (h0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) h0];
        new l3(spliterator, v3Var, jArr).invoke();
        return new g3(jArr);
    }

    public static void R(a2 a2Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            a2Var.g((LongConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(a2Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfLong) a2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void O(a2 a2Var, Long[] lArr, int i) {
        if (p8.f21480a) {
            p8.a(a2Var.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) a2Var.b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static a2 U(a2 a2Var, long j, long j2) {
        if (j == 0 && j2 == a2Var.count()) {
            return a2Var;
        }
        long j3 = j2 - j;
        Spliterator.OfLong ofLong = (Spliterator.OfLong) a2Var.spliterator();
        t1 o0 = o0(j3);
        o0.c(j3);
        for (int i = 0; i < j && ofLong.tryAdvance((LongConsumer) new z1(0)); i++) {
        }
        if (j2 == a2Var.count()) {
            ofLong.forEachRemaining((LongConsumer) o0);
        } else {
            for (int i2 = 0; i2 < j3 && ofLong.tryAdvance((LongConsumer) o0); i2++) {
            }
        }
        o0.end();
        return o0.build();
    }

    public static w1 Y(v3 v3Var, Spliterator spliterator, boolean z) {
        long h0 = v3Var.h0(spliterator);
        if (h0 < 0 || !spliterator.hasCharacteristics(16384)) {
            w1 w1Var = (w1) new h2(v3Var, spliterator, new y0(12), new y0(13), 0).invoke();
            return z ? j0(w1Var) : w1Var;
        }
        if (h0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) h0];
        new j3(spliterator, v3Var, dArr).invoke();
        return new o2(dArr);
    }

    public static c2 i0(c2 c2Var, IntFunction intFunction) {
        if (c2Var.o() <= 0) {
            return c2Var;
        }
        long count = c2Var.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new t3(c2Var, objArr).invoke();
        return new f2(objArr);
    }

    public static void P(w1 w1Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            w1Var.g((DoubleConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(w1Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfDouble) w1Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static y1 k0(y1 y1Var) {
        if (y1Var.o() <= 0) {
            return y1Var;
        }
        long count = y1Var.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) count];
        new s3(y1Var, iArr).invoke();
        return new x2(iArr);
    }

    public static void M(w1 w1Var, Double[] dArr, int i) {
        if (p8.f21480a) {
            p8.a(w1Var.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) w1Var.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static w1 S(w1 w1Var, long j, long j2) {
        if (j == 0 && j2 == w1Var.count()) {
            return w1Var;
        }
        long j3 = j2 - j;
        Spliterator.OfDouble ofDouble = (Spliterator.OfDouble) w1Var.spliterator();
        r1 e0 = e0(j3);
        e0.c(j3);
        for (int i = 0; i < j && ofDouble.tryAdvance((DoubleConsumer) new v1(0)); i++) {
        }
        if (j2 == w1Var.count()) {
            ofDouble.forEachRemaining((DoubleConsumer) e0);
        } else {
            for (int i2 = 0; i2 < j3 && ofDouble.tryAdvance((DoubleConsumer) e0); i2++) {
            }
        }
        e0.end();
        return e0.build();
    }

    public static a2 l0(a2 a2Var) {
        if (a2Var.o() <= 0) {
            return a2Var;
        }
        long count = a2Var.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) count];
        new s3(a2Var, jArr).invoke();
        return new g3(jArr);
    }

    public static w1 j0(w1 w1Var) {
        if (w1Var.o() <= 0) {
            return w1Var;
        }
        long count = w1Var.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) count];
        new s3(w1Var, dArr).invoke();
        return new o2(dArr);
    }

    @Override // j$.util.stream.n8
    public Object f(a aVar, Spliterator spliterator) {
        q4 u0 = u0();
        aVar.v0(spliterator, u0);
        return u0.get();
    }

    @Override // j$.util.stream.n8
    public Object i(v3 v3Var, Spliterator spliterator) {
        return ((q4) new x4(this, v3Var, spliterator).invoke()).get();
    }
}
