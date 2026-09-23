package j$.time;

import j$.time.format.e0;
import j$.time.format.f0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class u implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* renamed from: a, reason: collision with root package name */
    public final int f21264a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f21264a - ((u) obj).f21264a;
    }

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.m(j$.time.temporal.a.YEAR, 4, 10, f0.EXCEEDS_PAD);
        uVar.q(Locale.getDefault(), e0.SMART, null);
    }

    public static u K(int i) {
        j$.time.temporal.a.YEAR.u(i);
        return new u(i);
    }

    public u(int i) {
        this.f21264a = i;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.v.f(1L, this.f21264a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        return i(rVar).a(y(rVar), rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = t.f21243a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                int i2 = this.f21264a;
                if (i2 < 1) {
                    i2 = 1 - i2;
                }
                return i2;
            }
            if (i == 2) {
                return this.f21264a;
            }
            if (i == 3) {
                return this.f21264a < 1 ? 0 : 1;
            }
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final u a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            aVar.u(j);
            int i = t.f21243a[aVar.ordinal()];
            if (i == 1) {
                if (this.f21264a < 1) {
                    j = 1 - j;
                }
                return K((int) j);
            }
            if (i == 2) {
                return K((int) j);
            }
            if (i == 3) {
                return y(j$.time.temporal.a.ERA) == j ? this : K(1 - this.f21264a);
            }
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return (u) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public final u b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            int i = t.b[((j$.time.temporal.b) tVar).ordinal()];
            if (i == 1) {
                return M(j);
            }
            if (i == 2) {
                return M(j$.com.android.tools.r8.a.O(j, 10));
            }
            if (i == 3) {
                return M(j$.com.android.tools.r8.a.O(j, 100));
            }
            if (i == 4) {
                return M(j$.com.android.tools.r8.a.O(j, 1000));
            }
            if (i == 5) {
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return a(j$.com.android.tools.r8.a.I(y(aVar), j), aVar);
            }
            throw new RuntimeException("Unsupported unit: " + tVar);
        }
        return (u) tVar.d(this, j);
    }

    public final u M(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return K(aVar.b.a(this.f21264a + j, aVar));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.b) {
            return j$.time.chrono.t.f21173c;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.YEARS;
        }
        return j$.time.temporal.s.c(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.G(mVar).equals(j$.time.chrono.t.f21173c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.a(this.f21264a, j$.time.temporal.a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && this.f21264a == ((u) obj).f21264a;
    }

    public final int hashCode() {
        return this.f21264a;
    }

    public final String toString() {
        return Integer.toString(this.f21264a);
    }

    private Object writeReplace() {
        return new s((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return (u) j$.com.android.tools.r8.a.a(gVar, this);
    }
}
