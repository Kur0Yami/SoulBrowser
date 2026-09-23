package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final class h2 extends i2 {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h2(v3 v3Var, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(v3Var, spliterator, longFunction, binaryOperator);
        this.k = i;
    }

    @Override // j$.util.stream.i2, j$.util.stream.d
    public final d c(Spliterator spliterator) {
        switch (this.k) {
            case 0:
                return new i2(this, spliterator);
            case 1:
                return new i2(this, spliterator);
            case 2:
                return new i2(this, spliterator);
            default:
                return new i2(this, spliterator);
        }
    }

    @Override // j$.util.stream.i2, j$.util.stream.d
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
            case 0:
                return a();
            case 1:
                return a();
            case 2:
                return a();
            default:
                return a();
        }
    }
}
