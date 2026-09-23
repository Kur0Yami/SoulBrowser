package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class i implements Collector {

    /* renamed from: a, reason: collision with root package name */
    public final Supplier f21432a;
    public final BiConsumer b;

    /* renamed from: c, reason: collision with root package name */
    public final BinaryOperator f21433c;
    public final Function d;
    public final Set e;

    public i(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Function function, Set set) {
        this.f21432a = supplier;
        this.b = biConsumer;
        this.f21433c = binaryOperator;
        this.d = function;
        this.e = set;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Set set) {
        this(supplier, biConsumer, binaryOperator, new j$.time.h(21), set);
        Set set2 = Collectors.f21377a;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.b;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.f21432a;
    }

    @Override // j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f21433c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.d;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.e;
    }
}
