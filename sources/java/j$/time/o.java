package j$.time;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.format.e0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class o implements j$.time.temporal.n, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21235c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* renamed from: a, reason: collision with root package name */
    public final int f21236a;
    public final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        o oVar = (o) obj;
        int i = this.f21236a - oVar.f21236a;
        return i == 0 ? this.b - oVar.b : i;
    }

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.e("--");
        uVar.l(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        uVar.d('-');
        uVar.l(j$.time.temporal.a.DAY_OF_MONTH, 2);
        uVar.q(Locale.getDefault(), e0.SMART, null);
    }

    public o(int i, int i2) {
        this.f21236a = i;
        this.b = i2;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.MONTH_OF_YEAR || rVar == j$.time.temporal.a.DAY_OF_MONTH : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return rVar.range();
        }
        if (rVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.s.d(this, rVar);
        }
        m N = m.N(this.f21236a);
        N.getClass();
        int i = l.f21232a[N.ordinal()];
        return j$.time.temporal.v.g(1L, i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, m.N(this.f21236a).M());
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        return i(rVar).a(y(rVar), rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        int i;
        if (rVar instanceof j$.time.temporal.a) {
            int i2 = n.f21234a[((j$.time.temporal.a) rVar).ordinal()];
            if (i2 == 1) {
                i = this.b;
            } else if (i2 == 2) {
                i = this.f21236a;
            } else {
                throw new RuntimeException(c.a("Unsupported field: ", rVar));
            }
            return i;
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.b) {
            return j$.time.chrono.t.f21173c;
        }
        return j$.time.temporal.s.c(this, hVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.G(mVar).equals(j$.time.chrono.t.f21173c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.m a2 = mVar.a(this.f21236a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return a2.a(Math.min(a2.i(aVar).d, this.b), aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f21236a == oVar.f21236a && this.b == oVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f21236a << 6) + this.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f21236a < 10 ? "0" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(this.f21236a);
        sb.append(this.b < 10 ? "-0" : "-");
        sb.append(this.b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
