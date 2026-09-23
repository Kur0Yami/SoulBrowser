package j$.util.stream;

import com.google.android.gms.common.ConnectionResult;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.function.ToLongFunction;

/* loaded from: classes2.dex */
public final /* synthetic */ class y0 implements LongBinaryOperator, ToLongFunction, BiConsumer, IntFunction, LongFunction, Supplier, ObjLongConsumer, Consumer, BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21509a;

    public /* synthetic */ y0(int i) {
        this.f21509a = i;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f21509a;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21509a) {
            case 2:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21509a) {
            case 13:
                return BiFunction$CC.$default$andThen(this, function);
            case 14:
            case 16:
            default:
                return BiFunction$CC.$default$andThen(this, function);
            case 15:
                return BiFunction$CC.$default$andThen(this, function);
            case 17:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21509a) {
            case 10:
                return Consumer$CC.$default$andThen(this, consumer);
            case ConnectionResult.API_DISABLED /* 23 */:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.f21509a) {
            case 4:
                return Long.valueOf(j);
            case 12:
                return v3.e0(j);
            case 14:
                return v3.n0(j);
            default:
                return v3.o0(j);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.f21509a) {
            case 0:
                return Math.min(j, j2);
            case 8:
                return Math.max(j, j2);
            default:
                return j + j2;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f21509a) {
            case 3:
                return new Long[i];
            case 11:
                return new Object[i];
            case 19:
                return new Object[i];
            case 20:
                return new Integer[i];
            case 21:
                return new Long[i];
            case 22:
                return new Double[i];
            case 25:
                return new Integer[i];
            case 26:
                return new Integer[i];
            case 27:
                return new Long[i];
            case 28:
                return new Long[i];
            default:
                return new Double[i];
        }
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new long[2];
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21509a) {
            case 2:
                ((j$.util.b0) obj).a((j$.util.b0) obj2);
                return;
            default:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                return;
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f21509a) {
            case 13:
                return new e2((w1) obj, (w1) obj2);
            case 14:
            case 16:
            default:
                return new e2((c2) obj, (c2) obj2);
            case 15:
                return new e2((y1) obj, (y1) obj2);
            case 17:
                return new e2((a2) obj, (a2) obj2);
        }
    }
}
