package j$.time;

import j$.time.format.e0;
import j$.time.format.f0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class w implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21266c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* renamed from: a, reason: collision with root package name */
    public final int f21267a;
    public final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        w wVar = (w) obj;
        int i = this.f21267a - wVar.f21267a;
        return i == 0 ? this.b - wVar.b : i;
    }

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.m(j$.time.temporal.a.YEAR, 4, 10, f0.EXCEEDS_PAD);
        uVar.d('-');
        uVar.l(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        uVar.q(Locale.getDefault(), e0.SMART, null);
    }

    public w(int i, int i2) {
        this.f21267a = i;
        this.b = i2;
    }

    public final w O(int i, int i2) {
        return (this.f21267a == i && this.b == i2) ? this : new w(i, i2);
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.MONTH_OF_YEAR || rVar == j$.time.temporal.a.PROLEPTIC_MONTH || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.v.f(1L, this.f21267a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        return i(rVar).a(y(rVar), rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        int i;
        if (rVar instanceof j$.time.temporal.a) {
            int i2 = v.f21265a[((j$.time.temporal.a) rVar).ordinal()];
            if (i2 == 1) {
                i = this.b;
            } else {
                if (i2 == 2) {
                    return K();
                }
                if (i2 == 3) {
                    int i3 = this.f21267a;
                    if (i3 < 1) {
                        i3 = 1 - i3;
                    }
                    return i3;
                }
                if (i2 != 4) {
                    if (i2 == 5) {
                        return this.f21267a < 1 ? 0 : 1;
                    }
                    throw new RuntimeException(c.a("Unsupported field: ", rVar));
                }
                i = this.f21267a;
            }
            return i;
        }
        return rVar.i(this);
    }

    public final long K() {
        return ((this.f21267a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final w a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            aVar.u(j);
            int i = v.f21265a[aVar.ordinal()];
            if (i == 1) {
                int i2 = (int) j;
                j$.time.temporal.a.MONTH_OF_YEAR.u(i2);
                return O(this.f21267a, i2);
            }
            if (i == 2) {
                return M(j - K());
            }
            if (i == 3) {
                if (this.f21267a < 1) {
                    j = 1 - j;
                }
                int i3 = (int) j;
                j$.time.temporal.a.YEAR.u(i3);
                return O(i3, this.b);
            }
            if (i == 4) {
                int i4 = (int) j;
                j$.time.temporal.a.YEAR.u(i4);
                return O(i4, this.b);
            }
            if (i != 5) {
                throw new RuntimeException(c.a("Unsupported field: ", rVar));
            }
            if (y(j$.time.temporal.a.ERA) == j) {
                return this;
            }
            int i5 = 1 - this.f21267a;
            j$.time.temporal.a.YEAR.u(i5);
            return O(i5, this.b);
        }
        return (w) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public final w b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            switch (v.b[((j$.time.temporal.b) tVar).ordinal()]) {
                case 1:
                    return M(j);
                case 2:
                    return N(j);
                case 3:
                    return N(j$.com.android.tools.r8.a.O(j, 10));
                case 4:
                    return N(j$.com.android.tools.r8.a.O(j, 100));
                case 5:
                    return N(j$.com.android.tools.r8.a.O(j, 1000));
                case 6:
                    j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                    return a(j$.com.android.tools.r8.a.I(y(aVar), j), aVar);
                default:
                    throw new RuntimeException("Unsupported unit: " + tVar);
            }
        }
        return (w) tVar.d(this, j);
    }

    public final w N(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return O(aVar.b.a(this.f21267a + j, aVar), this.b);
    }

    public final w M(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f21267a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return O(aVar.b.a(j$.com.android.tools.r8.a.N(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.M(j2, j3)) + 1);
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
            return j$.time.temporal.b.MONTHS;
        }
        return j$.time.temporal.s.c(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.G(mVar).equals(j$.time.chrono.t.f21173c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.a(K(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            if (this.f21267a == wVar.f21267a && this.b == wVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f21267a ^ (this.b << 27);
    }

    public final String toString() {
        int abs = Math.abs(this.f21267a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i = this.f21267a;
            if (i < 0) {
                sb.append(i - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + 10000);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.f21267a);
        }
        sb.append(this.b < 10 ? "-0" : "-");
        sb.append(this.b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 12, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return (w) j$.com.android.tools.r8.a.a(gVar, this);
    }
}
