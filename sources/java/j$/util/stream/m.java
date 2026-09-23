package j$.util.stream;

import com.google.android.gms.common.ConnectionResult;
import j$.util.Optional;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Predicate$CC;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;

/* loaded from: classes2.dex */
public final /* synthetic */ class m implements BiConsumer, ObjDoubleConsumer, DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, Supplier, Predicate, ToIntFunction, IntBinaryOperator, ObjIntConsumer, ObjLongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21452a;

    public /* synthetic */ m(int i) {
        this.f21452a = i;
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        ((j$.util.b0) obj).accept(j);
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f21452a) {
            case 9:
                return Predicate$CC.$default$and(this, predicate);
            case 10:
            case 12:
            default:
                return Predicate$CC.$default$and(this, predicate);
            case 11:
                return Predicate$CC.$default$and(this, predicate);
            case 13:
                return Predicate$CC.$default$and(this, predicate);
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21452a) {
            case 0:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 2:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case ConnectionResult.API_DISABLED /* 23 */:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.max(d, d2);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.f21452a) {
            case 21:
                return Math.min(i, i2);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f21452a) {
            case 9:
                return Predicate$CC.$default$negate(this);
            case 10:
            case 12:
            default:
                return Predicate$CC.$default$negate(this);
            case 11:
                return Predicate$CC.$default$negate(this);
            case 13:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f21452a) {
            case 9:
                return Predicate$CC.$default$or(this, predicate);
            case 10:
            case 12:
            default:
                return Predicate$CC.$default$or(this, predicate);
            case 11:
                return Predicate$CC.$default$or(this, predicate);
            case 13:
                return Predicate$CC.$default$or(this, predicate);
        }
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.f21452a) {
            case 9:
                return ((j$.util.c0) obj).f21302a;
            case 10:
            case 12:
            default:
                return ((Optional) obj).isPresent();
            case 11:
                return ((j$.util.d0) obj).f21329a;
            case 13:
                return ((j$.util.e0) obj).f21333a;
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        switch (this.f21452a) {
            case 1:
                ((j$.util.y) obj).accept(d);
                return;
            default:
                double[] dArr = (double[]) obj;
                Collectors.a(dArr, d);
                dArr[2] = dArr[2] + d;
                return;
        }
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f21452a) {
            case 7:
                return new double[3];
            case 10:
                return new Object();
            case 12:
                return new Object();
            case 14:
                return new Object();
            case 16:
                return new Object();
            default:
                return new long[2];
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.f21452a) {
            case 22:
                ((j$.util.z) obj).accept(i);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21452a) {
            case 0:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                dArr[3] = dArr[3] + dArr2[3];
                return;
            case 2:
                ((j$.util.y) obj).a((j$.util.y) obj2);
                return;
            case ConnectionResult.API_DISABLED /* 23 */:
                ((j$.util.z) obj).a((j$.util.z) obj2);
                return;
            default:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                return;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f21452a) {
            case 5:
                return new Double[i];
            case 17:
                return new Object[i];
            case 18:
                return new Integer[i];
            default:
                return Integer.valueOf(i);
        }
    }
}
