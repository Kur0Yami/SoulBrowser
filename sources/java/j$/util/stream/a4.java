package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class a4 extends v3 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a4(d7 d7Var, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.v3
    public final q4 u0() {
        switch (this.h) {
            case 0:
                return new x3((Supplier) this.i, (ObjLongConsumer) this.k, (n) this.j);
            case 1:
                return new d4((Supplier) this.i, (ObjDoubleConsumer) this.k, (n) this.j);
            case 2:
                return new f4(this.i, (BiFunction) this.k, (BinaryOperator) this.j);
            case 3:
                return new j4((Supplier) this.i, (BiConsumer) this.k, (BiConsumer) this.j);
            default:
                return new n4((Supplier) this.i, (ObjIntConsumer) this.k, (n) this.j);
        }
    }
}
