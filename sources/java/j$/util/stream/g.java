package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Collector {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ java.util.stream.Collector f21420a;

    public /* synthetic */ g(java.util.stream.Collector collector) {
        this.f21420a = collector;
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f21420a.accumulator();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return a7.a(this.f21420a.characteristics());
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f21420a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.Collector collector = this.f21420a;
        if (obj instanceof g) {
            obj = ((g) obj).f21420a;
        }
        return collector.equals(obj);
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f21420a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f21420a.hashCode();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f21420a.supplier();
    }
}
