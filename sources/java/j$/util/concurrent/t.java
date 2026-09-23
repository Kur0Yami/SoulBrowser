package j$.util.concurrent;

import j$.util.Spliterator;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.stream.c7;
import j$.util.stream.d7;
import j$.util.stream.k1;
import j$.util.stream.n8;
import j$.util.stream.o1;
import j$.util.stream.p1;
import j$.util.stream.q1;
import j$.util.stream.q7;
import j$.util.stream.v3;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class t implements BiConsumer, BiFunction, Consumer, Supplier, n8 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21318a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f21319c;

    public /* synthetic */ t(int i, Object obj, Object obj2) {
        this.f21318a = i;
        this.b = obj;
        this.f21319c = obj2;
    }

    public /* synthetic */ t(BiFunction biFunction, Function function) {
        this.f21318a = 2;
        this.f21319c = biFunction;
        this.b = function;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21318a) {
            case 0:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21318a) {
            case 3:
                return Consumer$CC.$default$andThen(this, consumer);
            case 4:
                return Consumer$CC.$default$andThen(this, consumer);
            case 5:
            case 6:
            default:
                return Consumer$CC.$default$andThen(this, consumer);
            case 7:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.b).apply(((BiFunction) this.f21319c).apply(obj, obj2));
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21318a) {
            case 0:
                java.util.concurrent.ConcurrentMap concurrentMap = (java.util.concurrent.ConcurrentMap) this.b;
                BiFunction biFunction = (BiFunction) this.f21319c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                BiConsumer biConsumer = (BiConsumer) this.b;
                BiConsumer biConsumer2 = (BiConsumer) this.f21319c;
                biConsumer.accept(obj, obj2);
                biConsumer2.accept(obj, obj2);
                return;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new k1((p1) this.b, (Predicate) this.f21319c);
    }

    public t(d7 d7Var, p1 p1Var, Supplier supplier) {
        this.f21318a = 6;
        this.b = p1Var;
        this.f21319c = supplier;
    }

    @Override // j$.util.stream.n8
    public int v() {
        return c7.u | c7.r;
    }

    @Override // j$.util.stream.n8
    public Object f(j$.util.stream.a aVar, Spliterator spliterator) {
        o1 o1Var = (o1) ((Supplier) this.f21319c).get();
        aVar.v0(spliterator, o1Var);
        return Boolean.valueOf(o1Var.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.n8
    public Object i(v3 v3Var, Spliterator spliterator) {
        return (Boolean) new q1(this, (j$.util.stream.a) v3Var, spliterator).invoke();
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        switch (this.f21318a) {
            case 3:
                Consumer consumer = (Consumer) this.b;
                Consumer consumer2 = (Consumer) this.f21319c;
                consumer.n(obj);
                consumer2.n(obj);
                return;
            case 4:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f21319c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
            case 6:
            default:
                q7 q7Var = (q7) this.b;
                Consumer consumer3 = (Consumer) this.f21319c;
                if (q7Var.b.putIfAbsent(obj != null ? obj : q7.d, Boolean.TRUE) == null) {
                    consumer3.n(obj);
                    return;
                }
                return;
            case 7:
                ((BiConsumer) this.b).accept(this.f21319c, obj);
                return;
        }
    }
}
