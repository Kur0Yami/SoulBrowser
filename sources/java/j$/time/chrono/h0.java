package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class h0 extends a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final h0 f21159c = new h0();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return k0.BEFORE_BE;
        }
        if (i == 1) {
            return k0.BE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final String f() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.m
    public final String j() {
        return "buddhist";
    }

    @Override // j$.time.chrono.m
    public final b D(int i, int i2, int i3) {
        return new j0(j$.time.g.U(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.m
    public final b k(int i, int i2) {
        return new j0(j$.time.g.W(i - 543, i2));
    }

    @Override // j$.time.chrono.m
    public final b e(long j) {
        return new j0(j$.time.g.V(j));
    }

    @Override // j$.time.chrono.a
    public final b g() {
        return new j0(j$.time.g.M(j$.time.g.T(j$.com.android.tools.r8.a.S())));
    }

    @Override // j$.time.chrono.m
    public final b w(j$.time.temporal.n nVar) {
        if (nVar instanceof j0) {
            return (j0) nVar;
        }
        return new j0(j$.time.g.M(nVar));
    }

    @Override // j$.time.chrono.m
    public final boolean J(long j) {
        return t.f21173c.J(j - 543);
    }

    @Override // j$.time.chrono.m
    public final int r(n nVar, int i) {
        if (nVar instanceof k0) {
            return nVar == k0.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    private h0() {
    }

    @Override // j$.time.chrono.m
    public final List p() {
        return j$.com.android.tools.r8.a.J(k0.values());
    }

    @Override // j$.time.chrono.m
    public final j$.time.temporal.v n(j$.time.temporal.a aVar) {
        int i = g0.f21156a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.v vVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.v.f(vVar.f21258a + 6516, vVar.d + 6516);
        }
        if (i == 2) {
            j$.time.temporal.v vVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.v.g(1L, (-(vVar2.f21258a + 543)) + 1, vVar2.d + 543);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.v vVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.v.f(vVar3.f21258a + 543, vVar3.d + 543);
    }

    @Override // j$.time.chrono.a, j$.time.chrono.m
    public final b F(Map map, j$.time.format.e0 e0Var) {
        return (j0) super.F(map, e0Var);
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
