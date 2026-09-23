package j$.util.stream;

import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class c9 implements IntFunction, ObjDoubleConsumer {
    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        Collectors.a(dArr, d);
        dArr[3] = dArr[3] + d;
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Double[i];
    }
}
