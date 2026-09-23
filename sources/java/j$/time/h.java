package j$.time;

import com.google.android.gms.common.ConnectionResult;
import j$.util.Map;
import j$.util.Objects;
import j$.util.b0;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class h implements j$.time.temporal.o, Function, IntFunction, BinaryOperator, Supplier, BiConsumer, DoubleBinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21227a;

    public /* synthetic */ h(int i) {
        this.f21227a = i;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f21227a) {
            case 14:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 17:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            case 25:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21227a) {
            case 12:
                return BiFunction$CC.$default$andThen(this, function);
            case 15:
                return BiFunction$CC.$default$andThen(this, function);
            default:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.Function
    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function mo17andThen(Function function) {
        switch (this.f21227a) {
            case 10:
                return Function$CC.$default$andThen(this, function);
            default:
                return Function$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f21227a) {
            default:
                Set set = Collectors.f21377a;
            case 10:
                return obj;
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f21227a) {
            case 10:
                return Function$CC.$default$compose(this, function);
            default:
                return Function$CC.$default$compose(this, function);
        }
    }

    @Override // j$.time.temporal.o
    public j$.time.temporal.m l(j$.time.temporal.m mVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return mVar.a(mVar.i(aVar).d, aVar);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f21227a) {
            case 12:
                Map map = (Map) obj;
                Set set = Collectors.f21377a;
                for (Map.Entry entry : ((Map) obj2).entrySet()) {
                    Object key = entry.getKey();
                    Object requireNonNull = Objects.requireNonNull(entry.getValue());
                    Object a2 = Map.EL.a(map, key, requireNonNull);
                    if (a2 != null) {
                        throw new IllegalStateException(String.format("Duplicate key %s (attempted merging values %s and %s)", key, a2, requireNonNull));
                    }
                }
                return map;
            case 15:
                Collection collection = (Collection) obj;
                Set set2 = Collectors.f21377a;
                collection.addAll((Collection) obj2);
                return collection;
            default:
                List list = (List) obj;
                Set set3 = Collectors.f21377a;
                list.addAll((List) obj2);
                return list;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f21227a) {
            case 14:
                ((Collection) obj).add(obj2);
                return;
            case 17:
                ((List) obj).add(obj2);
                return;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                ((LinkedHashSet) obj).add(obj2);
                return;
            case 25:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                return;
            default:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                return;
        }
    }

    public Object d(j$.time.temporal.n nVar) {
        switch (this.f21227a) {
            case 0:
                return LocalDateTime.L(nVar);
            case 1:
                ZoneId zoneId = (ZoneId) nVar.d(j$.time.temporal.s.f21256a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 2:
            default:
                j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_DAY;
                if (nVar.c(aVar)) {
                    return k.P(nVar.y(aVar));
                }
                return null;
            case 3:
                return (ZoneId) nVar.d(j$.time.temporal.s.f21256a);
            case 4:
                return (j$.time.chrono.m) nVar.d(j$.time.temporal.s.b);
            case 5:
                return (j$.time.temporal.t) nVar.d(j$.time.temporal.s.f21257c);
            case 6:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.OFFSET_SECONDS;
                if (nVar.c(aVar2)) {
                    return ZoneOffset.R(nVar.g(aVar2));
                }
                return null;
            case 7:
                ZoneId zoneId2 = (ZoneId) nVar.d(j$.time.temporal.s.f21256a);
                return zoneId2 != null ? zoneId2 : (ZoneId) nVar.d(j$.time.temporal.s.d);
            case 8:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.EPOCH_DAY;
                if (nVar.c(aVar3)) {
                    return g.V(nVar.y(aVar3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f21227a) {
            case 3:
                return "ZoneId";
            case 4:
                return "Chronology";
            case 5:
                return "Precision";
            case 6:
                return "ZoneOffset";
            case 7:
                return "Zone";
            case 8:
                return "LocalDate";
            case 9:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f21227a) {
            case 13:
                return new j$.util.y();
            case 14:
            case 15:
            case 17:
            case 20:
            case 21:
            default:
                return new double[4];
            case 16:
                return new ArrayList();
            case 18:
                return new j$.util.z();
            case 19:
                return new b0();
            case 22:
                return new HashMap();
            case ConnectionResult.API_DISABLED /* 23 */:
                return new LinkedHashSet();
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }
}
