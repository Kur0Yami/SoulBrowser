package j$.time.temporal;

import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* loaded from: classes2.dex */
public enum k implements r {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;

    /* renamed from: a, reason: collision with root package name */
    public final transient String f21252a;
    public final transient v b;

    /* renamed from: c, reason: collision with root package name */
    public final transient long f21253c;

    @Override // j$.time.temporal.r
    public final boolean isDateBased() {
        return true;
    }

    static {
        b bVar = b.NANOS;
    }

    k(String str, long j) {
        this.f21252a = str;
        this.b = v.f((-365243219162L) + j, 365241780471L + j);
        this.f21253c = j;
    }

    @Override // j$.time.temporal.r
    public final m l(m mVar, long j) {
        if (!this.b.e(j)) {
            throw new RuntimeException("Invalid value: " + this.f21252a + " " + j);
        }
        return mVar.a(j$.com.android.tools.r8.a.P(j, this.f21253c), a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.r
    public final v range() {
        return this.b;
    }

    @Override // j$.time.temporal.r
    public final boolean d(n nVar) {
        return nVar.c(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.r
    public final v g(n nVar) {
        if (nVar.c(a.EPOCH_DAY)) {
            return this.b;
        }
        throw new RuntimeException("Unsupported field: " + this);
    }

    @Override // j$.time.temporal.r
    public final long i(n nVar) {
        return nVar.y(a.EPOCH_DAY) + this.f21253c;
    }

    @Override // j$.time.temporal.r
    public final n h(Map map, d0 d0Var, e0 e0Var) {
        long longValue = ((Long) map.remove(this)).longValue();
        j$.time.chrono.m G = j$.com.android.tools.r8.a.G(d0Var);
        e0 e0Var2 = e0.LENIENT;
        long j = this.f21253c;
        if (e0Var == e0Var2) {
            return G.e(j$.com.android.tools.r8.a.P(longValue, j));
        }
        this.b.b(longValue, this);
        return G.e(longValue - j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f21252a;
    }
}
