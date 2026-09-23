package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
public final class y3 extends v3 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ y3(d7 d7Var, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.v3
    public final q4 u0() {
        switch (this.h) {
            case 0:
                return new p4((LongBinaryOperator) this.i);
            case 1:
                return new b4((DoubleBinaryOperator) this.i);
            case 2:
                return new g4((BinaryOperator) this.i);
            default:
                return new m4((IntBinaryOperator) this.i);
        }
    }
}
