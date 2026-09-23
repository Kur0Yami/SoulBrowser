package j$.util.stream;

import j$.util.stream.Collector;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class h4 extends v3 {
    public final /* synthetic */ BinaryOperator h;
    public final /* synthetic */ BiConsumer i;
    public final /* synthetic */ Supplier j;
    public final /* synthetic */ Collector k;

    @Override // j$.util.stream.v3
    public final q4 u0() {
        return new i4(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.v3, j$.util.stream.n8
    public final int v() {
        if (this.k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return c7.r;
        }
        return 0;
    }

    public h4(d7 d7Var, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }
}
