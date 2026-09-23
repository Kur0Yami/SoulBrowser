package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.time.InstantKt;

/* loaded from: classes2.dex */
public final class w extends a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final w f21176c = new w();
    private static final long serialVersionUID = 459996390165777884L;

    @Override // j$.time.chrono.m
    public final String f() {
        return "Japanese";
    }

    @Override // j$.time.chrono.m
    public final String j() {
        return "japanese";
    }

    @Override // j$.time.chrono.m
    public final b D(int i, int i2, int i3) {
        return new y(j$.time.g.U(i, i2, i3));
    }

    @Override // j$.time.chrono.m
    public final b k(int i, int i2) {
        return new y(j$.time.g.W(i, i2));
    }

    @Override // j$.time.chrono.m
    public final b e(long j) {
        return new y(j$.time.g.V(j));
    }

    @Override // j$.time.chrono.a
    public final b g() {
        return new y(j$.time.g.M(j$.time.g.T(j$.com.android.tools.r8.a.S())));
    }

    @Override // j$.time.chrono.m
    public final b w(j$.time.temporal.n nVar) {
        if (nVar instanceof y) {
            return (y) nVar;
        }
        return new y(j$.time.g.M(nVar));
    }

    @Override // j$.time.chrono.m
    public final List p() {
        z[] zVarArr = z.e;
        return j$.com.android.tools.r8.a.J((z[]) Arrays.copyOf(zVarArr, zVarArr.length));
    }

    @Override // j$.time.chrono.m
    public final boolean J(long j) {
        return t.f21173c.J(j);
    }

    private w() {
    }

    @Override // j$.time.chrono.m
    public final int r(n nVar, int i) {
        if (!(nVar instanceof z)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int i2 = ((z) nVar).b.f21225a;
        int i3 = (i2 + i) - 1;
        if (i != 1 && (i3 < -999999999 || i3 > 999999999 || i3 < i2 || nVar != z.e(j$.time.g.U(i3, 1, 1)))) {
            throw new RuntimeException("Invalid yearOfEra value");
        }
        return i3;
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        return z.j(i);
    }

    @Override // j$.time.chrono.m
    public final j$.time.temporal.v n(j$.time.temporal.a aVar) {
        switch (v.f21175a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new RuntimeException("Unsupported field: " + aVar);
            case 5:
                z[] zVarArr = z.e;
                int i = zVarArr[zVarArr.length - 1].b.f21225a;
                int i2 = InstantKt.NANOS_PER_SECOND - zVarArr[zVarArr.length - 1].b.f21225a;
                int i3 = zVarArr[0].b.f21225a;
                int i4 = 1;
                while (true) {
                    z[] zVarArr2 = z.e;
                    if (i4 >= zVarArr2.length) {
                        return j$.time.temporal.v.g(1L, i2, 999999999 - i);
                    }
                    z zVar = zVarArr2[i4];
                    i2 = Math.min(i2, (zVar.b.f21225a - i3) + 1);
                    i3 = zVar.b.f21225a;
                    i4++;
                }
            case 6:
                z zVar2 = z.d;
                long j = j$.time.temporal.a.DAY_OF_YEAR.b.f21259c;
                long j2 = j;
                for (z zVar3 : z.e) {
                    long min = Math.min(j2, (zVar3.b.H() - zVar3.b.P()) + 1);
                    j2 = zVar3.f() != null ? Math.min(min, zVar3.f().b.P() - 1) : min;
                }
                return j$.time.temporal.v.g(1L, j2, j$.time.temporal.a.DAY_OF_YEAR.b.d);
            case 7:
                return j$.time.temporal.v.f(y.d.f21225a, 999999999L);
            case 8:
                long j3 = z.d.f21180a;
                z[] zVarArr3 = z.e;
                return j$.time.temporal.v.f(j3, zVarArr3[zVarArr3.length - 1].f21180a);
            default:
                return aVar.b;
        }
    }

    @Override // j$.time.chrono.a, j$.time.chrono.m
    public final b F(Map map, j$.time.format.e0 e0Var) {
        return (y) super.F(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final b y(Map map, j$.time.format.e0 e0Var) {
        j$.time.g W;
        y R;
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        Long l = (Long) map.get(aVar);
        z j = l != null ? z.j(n(aVar).a(l.longValue(), aVar)) : null;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(aVar2);
        int a2 = l2 != null ? n(aVar2).a(l2.longValue(), aVar2) : 0;
        if (j == null && l2 != null && !map.containsKey(j$.time.temporal.a.YEAR) && e0Var != j$.time.format.e0.STRICT) {
            z[] zVarArr = z.e;
            j = ((z[]) Arrays.copyOf(zVarArr, zVarArr.length))[((z[]) Arrays.copyOf(zVarArr, zVarArr.length)).length - 1];
        }
        if (l2 != null && j != null) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                j$.time.temporal.a aVar4 = j$.time.temporal.a.DAY_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    map.remove(aVar);
                    map.remove(aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return new y(j$.time.g.U((j.b.f21225a + a2) - 1, 1, 1)).O(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar3)).longValue(), 1L), j$.time.temporal.b.MONTHS).O(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar4)).longValue(), 1L), j$.time.temporal.b.DAYS);
                    }
                    int a3 = n(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a4 = n(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    if (e0Var != j$.time.format.e0.SMART) {
                        j$.time.g gVar = y.d;
                        Objects.requireNonNull(j, "era");
                        j$.time.g U = j$.time.g.U((j.b.f21225a + a2) - 1, a3, a4);
                        if (U.Q(j.b) || j != z.e(U)) {
                            throw new RuntimeException("year, month, and day not valid for Era");
                        }
                        return new y(j, a2, U);
                    }
                    if (a2 < 1) {
                        throw new RuntimeException("Invalid YearOfEra: " + a2);
                    }
                    int i = (j.b.f21225a + a2) - 1;
                    try {
                        R = new y(j$.time.g.U(i, a3, a4));
                    } catch (j$.time.b unused) {
                        R = new y(j$.time.g.U(i, a3, 1)).R(new j$.time.h(2));
                    }
                    if (R.b == j || j$.time.temporal.s.a(R, j$.time.temporal.a.YEAR_OF_ERA) <= 1 || a2 <= 1) {
                        return R;
                    }
                    throw new RuntimeException("Invalid YearOfEra for Era: " + j + " " + a2);
                }
            }
            j$.time.temporal.a aVar5 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar5)) {
                map.remove(aVar);
                map.remove(aVar2);
                if (e0Var == j$.time.format.e0.LENIENT) {
                    return new y(j$.time.g.W((j.b.f21225a + a2) - 1, 1)).O(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar5)).longValue(), 1L), j$.time.temporal.b.DAYS);
                }
                int a5 = n(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5);
                j$.time.g gVar2 = y.d;
                Objects.requireNonNull(j, "era");
                if (a2 == 1) {
                    j$.time.g gVar3 = j.b;
                    W = j$.time.g.W(gVar3.f21225a, (gVar3.P() + a5) - 1);
                } else {
                    W = j$.time.g.W((j.b.f21225a + a2) - 1, a5);
                }
                if (W.Q(j.b) || j != z.e(W)) {
                    throw new RuntimeException("Invalid parameters");
                }
                return new y(j, a2, W);
            }
        }
        return null;
    }

    @Override // j$.time.chrono.m
    public final j G(Instant instant, ZoneId zoneId) {
        return l.L(this, instant, zoneId);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new f0((byte) 1, this);
    }
}
