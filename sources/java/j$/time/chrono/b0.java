package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class b0 extends a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21148c = new b0();
    private static final long serialVersionUID = 1039765215346859963L;

    @Override // j$.time.chrono.m
    public final String f() {
        return "Minguo";
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return e0.BEFORE_ROC;
        }
        if (i == 1) {
            return e0.ROC;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final String j() {
        return "roc";
    }

    @Override // j$.time.chrono.m
    public final b D(int i, int i2, int i3) {
        return new d0(j$.time.g.U(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.m
    public final b k(int i, int i2) {
        return new d0(j$.time.g.W(i + 1911, i2));
    }

    @Override // j$.time.chrono.m
    public final b e(long j) {
        return new d0(j$.time.g.V(j));
    }

    @Override // j$.time.chrono.a
    public final b g() {
        return new d0(j$.time.g.M(j$.time.g.T(j$.com.android.tools.r8.a.S())));
    }

    @Override // j$.time.chrono.m
    public final b w(j$.time.temporal.n nVar) {
        if (nVar instanceof d0) {
            return (d0) nVar;
        }
        return new d0(j$.time.g.M(nVar));
    }

    @Override // j$.time.chrono.m
    public final boolean J(long j) {
        return t.f21173c.J(j + 1911);
    }

    @Override // j$.time.chrono.m
    public final int r(n nVar, int i) {
        if (nVar instanceof e0) {
            return nVar == e0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.m
    public final List p() {
        return j$.com.android.tools.r8.a.J(e0.values());
    }

    @Override // j$.time.chrono.m
    public final j$.time.temporal.v n(j$.time.temporal.a aVar) {
        int i = a0.f21147a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.v vVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.v.f(vVar.f21258a - 22932, vVar.d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.v vVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.v.g(1L, vVar2.d - 1911, (-vVar2.f21258a) + 1912);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.v vVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.v.f(vVar3.f21258a - 1911, vVar3.d - 1911);
    }

    @Override // j$.time.chrono.a, j$.time.chrono.m
    public final b F(Map map, j$.time.format.e0 e0Var) {
        return (d0) super.F(map, e0Var);
    }

    private b0() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.m
    public final j G(Instant instant, ZoneId zoneId) {
        return l.L(this, instant, zoneId);
    }

    public Object writeReplace() {
        return new f0((byte) 1, this);
    }
}
