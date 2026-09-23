package j$.util;

import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.DoubleStream;
import j$.util.stream.IntStream;
import j$.util.stream.LongStream;
import j$.util.stream.Stream;
import j$.util.stream.b7;
import j$.util.stream.l8;
import j$.util.stream.n5;
import j$.util.stream.s7;
import j$.util.stream.u7;
import j$.util.stream.w7;
import j$.util.stream.z6;
import java.util.EnumMap;
import java.util.Map;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class p implements Consumer, Predicate, Supplier, DoubleFunction, Function, LongFunction, BooleanSupplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21370a;
    public Object b;

    public /* synthetic */ p(int i) {
        this.f21370a = i;
    }

    public /* synthetic */ p(int i, Object obj) {
        this.f21370a = i;
        this.b = obj;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21370a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            case 7:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.b).test(obj);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return z6.f((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.a0.f((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return j$.util.stream.z.f((java.util.stream.DoubleStream) apply);
        }
        if (apply instanceof LongStream) {
            return j$.util.stream.i1.f((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return j$.util.stream.h1.f((java.util.stream.LongStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.a0.f((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return j$.util.stream.z.f((java.util.stream.DoubleStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof LongStream) {
            return j$.util.stream.i1.f((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return j$.util.stream.h1.f((java.util.stream.LongStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f21370a) {
            case 10:
                s7 s7Var = (s7) this.b;
                return s7Var.d.tryAdvance(s7Var.e);
            case 11:
                u7 u7Var = (u7) this.b;
                return u7Var.d.tryAdvance(u7Var.e);
            case 12:
                w7 w7Var = (w7) this.b;
                return w7Var.d.tryAdvance(w7Var.e);
            default:
                l8 l8Var = (l8) this.b;
                return l8Var.d.tryAdvance(l8Var.e);
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f21370a) {
            case 2:
                return ((j$.util.stream.a) this.b).I0(0);
            default:
                return (Spliterator) this.b;
        }
    }

    public void a(b7 b7Var) {
        ((EnumMap) ((java.util.Map) this.b)).put((EnumMap) b7Var, (b7) 1);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f21370a) {
            case 0:
                ((Consumer) this.b).accept(new q((Map.Entry) obj));
                return;
            case 7:
                ((n5) this.b).accept((n5) obj);
                return;
            default:
                ((java.util.List) this.b).add(obj);
                return;
        }
    }
}
