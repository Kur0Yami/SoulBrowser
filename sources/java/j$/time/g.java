package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class g implements j$.time.temporal.m, j$.time.temporal.o, j$.time.chrono.b, Serializable {
    public static final g d = U(-999999999, 1, 1);
    public static final g e = U(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* renamed from: a, reason: collision with root package name */
    public final int f21225a;
    public final short b;

    /* renamed from: c, reason: collision with root package name */
    public final short f21226c;

    static {
        U(1970, 1, 1);
    }

    public static g T(a aVar) {
        Objects.requireNonNull(aVar, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = aVar.f21145a;
        Objects.requireNonNull(ofEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return V(j$.com.android.tools.r8.a.N(ofEpochMilli.getEpochSecond() + zoneId.K().d(ofEpochMilli).f21144a, 86400));
    }

    public static g U(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.u(i);
        j$.time.temporal.a.MONTH_OF_YEAR.u(i2);
        j$.time.temporal.a.DAY_OF_MONTH.u(i3);
        return L(i, i2, i3);
    }

    public static g W(int i, int i2) {
        long j = i;
        j$.time.temporal.a.YEAR.u(j);
        j$.time.temporal.a.DAY_OF_YEAR.u(i2);
        boolean J = j$.time.chrono.t.f21173c.J(j);
        if (i2 == 366 && !J) {
            throw new RuntimeException("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        m N = m.N(((i2 - 1) / 31) + 1);
        if (i2 > (N.L(J) + N.K(J)) - 1) {
            N = m.f21233a[((((int) 1) + 12) + N.ordinal()) % 12];
        }
        return new g(i, N.getValue(), (i2 - N.K(J)) + 1);
    }

    public static g V(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.u(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new g(aVar.b.a(j7, aVar), i3, i4);
    }

    public static g M(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        g gVar = (g) nVar.d(j$.time.temporal.s.f);
        if (gVar != null) {
            return gVar;
        }
        throw new RuntimeException("Unable to obtain LocalDate from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    public static g L(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (j$.time.chrono.t.f21173c.J(i)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new RuntimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new RuntimeException("Invalid date '" + m.N(i2).name() + " " + i3 + "'");
            }
        }
        return new g(i, i2, i3);
    }

    public static g c0(int i, int i2, int i3) {
        if (i2 == 2) {
            i3 = Math.min(i3, j$.time.chrono.t.f21173c.J((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new g(i, i2, i3);
    }

    public g(int i, int i2, int i3) {
        this.f21225a = i;
        this.b = (short) i2;
        this.f21226c = (short) i3;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.k(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            if (aVar.isDateBased()) {
                int i = f.f21184a[aVar.ordinal()];
                if (i == 1) {
                    return j$.time.temporal.v.f(1L, R());
                }
                if (i == 2) {
                    return j$.time.temporal.v.f(1L, H());
                }
                if (i == 3) {
                    return j$.time.temporal.v.f(1L, (m.N(this.b) != m.FEBRUARY || m()) ? 5L : 4L);
                }
                if (i != 4) {
                    return aVar.b;
                }
                return this.f21225a <= 0 ? j$.time.temporal.v.f(1L, 1000000000L) : j$.time.temporal.v.f(1L, 999999999L);
            }
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return N(rVar);
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.EPOCH_DAY) {
                return z();
            }
            if (rVar != j$.time.temporal.a.PROLEPTIC_MONTH) {
                return N(rVar);
            }
            return ((this.f21225a * 12) + this.b) - 1;
        }
        return rVar.i(this);
    }

    public final int N(j$.time.temporal.r rVar) {
        switch (f.f21184a[((j$.time.temporal.a) rVar).ordinal()]) {
            case 1:
                return this.f21226c;
            case 2:
                return P();
            case 3:
                return ((this.f21226c - 1) / 7) + 1;
            case 4:
                int i = this.f21225a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return O().getValue();
            case 6:
                return ((this.f21226c - 1) % 7) + 1;
            case 7:
                return ((P() - 1) % 7) + 1;
            case 8:
                throw new RuntimeException("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((P() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new RuntimeException("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f21225a;
            case 13:
                return this.f21225a >= 1 ? 1 : 0;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.m getChronology() {
        return j$.time.chrono.t.f21173c;
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.n B() {
        return this.f21225a >= 1 ? j$.time.chrono.u.CE : j$.time.chrono.u.BCE;
    }

    public final int P() {
        return (m.N(this.b).K(m()) + this.f21226c) - 1;
    }

    public final d O() {
        return d.K(((int) j$.com.android.tools.r8.a.M(z() + 3, 7)) + 1);
    }

    @Override // j$.time.chrono.b
    public final boolean m() {
        return j$.time.chrono.t.f21173c.J(this.f21225a);
    }

    public final int R() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m() ? 29 : 28;
    }

    @Override // j$.time.chrono.b
    public final int H() {
        return m() ? 366 : 365;
    }

    @Override // j$.time.chrono.b
    /* renamed from: e0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final g t(j$.time.temporal.o oVar) {
        if (oVar instanceof g) {
            return (g) oVar;
        }
        return (g) oVar.l(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final g a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            aVar.u(j);
            switch (f.f21184a[aVar.ordinal()]) {
                case 1:
                    int i = (int) j;
                    if (this.f21226c != i) {
                        return U(this.f21225a, this.b, i);
                    }
                    return this;
                case 2:
                    int i2 = (int) j;
                    if (P() != i2) {
                        return W(this.f21225a, i2);
                    }
                    return this;
                case 3:
                    return a0(j - y(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH));
                case 4:
                    if (this.f21225a < 1) {
                        j = 1 - j;
                    }
                    return f0((int) j);
                case 5:
                    return Y(j - O().getValue());
                case 6:
                    return Y(j - y(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return Y(j - y(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return V(j);
                case 9:
                    return a0(j - y(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR));
                case 10:
                    int i3 = (int) j;
                    if (this.b != i3) {
                        j$.time.temporal.a.MONTH_OF_YEAR.u(i3);
                        return c0(this.f21225a, i3, this.f21226c);
                    }
                    return this;
                case 11:
                    return Z(j - (((this.f21225a * 12) + this.b) - 1));
                case 12:
                    return f0((int) j);
                case 13:
                    if (y(j$.time.temporal.a.ERA) != j) {
                        return f0(1 - this.f21225a);
                    }
                    return this;
                default:
                    throw new RuntimeException(c.a("Unsupported field: ", rVar));
            }
        }
        return (g) rVar.l(this, j);
    }

    public final g f0(int i) {
        if (this.f21225a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.u(i);
        return c0(i, this.b, this.f21226c);
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.b E(j$.time.temporal.q qVar) {
        if (qVar != null) {
            r rVar = (r) qVar;
            return Z((rVar.f21240a * 12) + rVar.b).Y(rVar.f21241c);
        }
        Objects.requireNonNull(qVar, "amountToAdd");
        return (g) ((r) qVar).d(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final g b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            switch (f.b[((j$.time.temporal.b) tVar).ordinal()]) {
                case 1:
                    return Y(j);
                case 2:
                    return a0(j);
                case 3:
                    return Z(j);
                case 4:
                    return b0(j);
                case 5:
                    return b0(j$.com.android.tools.r8.a.O(j, 10));
                case 6:
                    return b0(j$.com.android.tools.r8.a.O(j, 100));
                case 7:
                    return b0(j$.com.android.tools.r8.a.O(j, 1000));
                case 8:
                    j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                    return a(j$.com.android.tools.r8.a.I(y(aVar), j), aVar);
                default:
                    throw new RuntimeException("Unsupported unit: " + tVar);
            }
        }
        return (g) tVar.d(this, j);
    }

    public final g b0(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return c0(aVar.b.a(this.f21225a + j, aVar), this.b, this.f21226c);
    }

    public final g Z(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f21225a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return c0(aVar.b.a(j$.com.android.tools.r8.a.N(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.M(j2, j3)) + 1, this.f21226c);
    }

    public final g a0(long j) {
        return Y(j$.com.android.tools.r8.a.O(j, 7));
    }

    public final g Y(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.f21226c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new g(this.f21225a, this.b, (int) j2);
            }
            if (j2 <= 59) {
                long R = R();
                if (j2 <= R) {
                    return new g(this.f21225a, this.b, (int) j2);
                }
                short s = this.b;
                if (s < 12) {
                    return new g(this.f21225a, s + 1, (int) (j2 - R));
                }
                j$.time.temporal.a.YEAR.u(this.f21225a + 1);
                return new g(this.f21225a + 1, 1, (int) (j2 - R));
            }
        }
        return V(j$.com.android.tools.r8.a.I(z(), j));
    }

    @Override // j$.time.temporal.m
    /* renamed from: S, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final g u(long j, j$.time.temporal.t tVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, tVar).b(1L, tVar) : b(-j, tVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        return hVar == j$.time.temporal.s.f ? this : j$.com.android.tools.r8.a.m(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return j$.com.android.tools.r8.a.a(this, mVar);
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.e A(k kVar) {
        return LocalDateTime.N(this, kVar);
    }

    @Override // j$.time.chrono.b
    public final long z() {
        long j = this.f21225a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.f21226c - 1);
        if (j2 > 2) {
            j4 = !m() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // java.lang.Comparable
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j$.time.chrono.b bVar) {
        if (bVar instanceof g) {
            return K((g) bVar);
        }
        return j$.com.android.tools.r8.a.b(this, bVar);
    }

    public final int K(g gVar) {
        int i = this.f21225a - gVar.f21225a;
        if (i != 0) {
            return i;
        }
        int i2 = this.b - gVar.b;
        return i2 == 0 ? this.f21226c - gVar.f21226c : i2;
    }

    public final boolean Q(j$.time.chrono.b bVar) {
        return bVar instanceof g ? K((g) bVar) < 0 : z() < bVar.z();
    }

    @Override // j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && K((g) obj) == 0;
    }

    @Override // j$.time.chrono.b
    public final int hashCode() {
        int i = this.f21225a;
        return (((i << 11) + (this.b << 6)) + this.f21226c) ^ (i & (-2048));
    }

    @Override // j$.time.chrono.b
    public final String toString() {
        int i = this.f21225a;
        short s = this.b;
        short s2 = this.f21226c;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
