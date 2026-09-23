package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class r extends d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* renamed from: a, reason: collision with root package name */
    public final transient p f21170a;
    public final transient int b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f21171c;
    public final transient int d;

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final e A(j$.time.k kVar) {
        return new g(this, kVar);
    }

    public r(p pVar, int i, int i2, int i3) {
        pVar.N(i, i2, i3);
        this.f21170a = pVar;
        this.b = i;
        this.f21171c = i2;
        this.d = i3;
    }

    public r(p pVar, long j) {
        int i = (int) j;
        pVar.K();
        if (i < pVar.e || i >= pVar.f) {
            throw new RuntimeException("Hijrah date out of range");
        }
        int binarySearch = Arrays.binarySearch(pVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int[] iArr = {pVar.M(binarySearch), ((pVar.g + binarySearch) % 12) + 1, (i - pVar.d[binarySearch]) + 1};
        this.f21170a = pVar;
        this.b = iArr[0];
        this.f21171c = iArr[1];
        this.d = iArr[2];
    }

    @Override // j$.time.chrono.b
    public final m getChronology() {
        return this.f21170a;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final n B() {
        return s.AH;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int H() {
        return this.f21170a.Q(this.b, 12);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.g(this);
        }
        if (j$.com.android.tools.r8.a.k(this, rVar)) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i = q.f21169a[aVar.ordinal()];
            if (i == 1) {
                return j$.time.temporal.v.f(1L, this.f21170a.O(this.b, this.f21171c));
            }
            if (i == 2) {
                return j$.time.temporal.v.f(1L, H());
            }
            if (i == 3) {
                return j$.time.temporal.v.f(1L, 5L);
            }
            return this.f21170a.n(aVar);
        }
        throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            switch (q.f21169a[((j$.time.temporal.a) rVar).ordinal()]) {
                case 1:
                    return this.d;
                case 2:
                    return O();
                case 3:
                    return ((this.d - 1) / 7) + 1;
                case 4:
                    return ((int) j$.com.android.tools.r8.a.M(z() + 3, 7)) + 1;
                case 5:
                    return ((this.d - 1) % 7) + 1;
                case 6:
                    return ((O() - 1) % 7) + 1;
                case 7:
                    return z();
                case 8:
                    return ((O() - 1) / 7) + 1;
                case 9:
                    return this.f21171c;
                case 10:
                    return ((this.b * 12) + this.f21171c) - 1;
                case 11:
                    return this.b;
                case 12:
                    return this.b;
                case 13:
                    return this.b <= 1 ? 0 : 1;
                default:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
            }
        }
        return rVar.i(this);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final r a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            this.f21170a.n(aVar).b(j, aVar);
            int i = (int) j;
            switch (q.f21169a[aVar.ordinal()]) {
                case 1:
                    return R(this.b, this.f21171c, i);
                case 2:
                    return L(Math.min(i, H()) - O());
                case 3:
                    return L((j - y(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    return L(j - (((int) j$.com.android.tools.r8.a.M(z() + 3, 7)) + 1));
                case 5:
                    return L(j - y(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 6:
                    return L(j - y(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 7:
                    return new r(this.f21170a, j);
                case 8:
                    return L((j - y(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 9:
                    return R(this.b, i, this.d);
                case 10:
                    return M(j - (((this.b * 12) + this.f21171c) - 1));
                case 11:
                    if (this.b < 1) {
                        i = 1 - i;
                    }
                    return R(i, this.f21171c, this.d);
                case 12:
                    return R(i, this.f21171c, this.d);
                case 13:
                    return R(1 - this.b, this.f21171c, this.d);
                default:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
            }
        }
        return (r) super.a(j, rVar);
    }

    public final r R(int i, int i2, int i3) {
        int O = this.f21170a.O(i, i2);
        if (i3 > O) {
            i3 = O;
        }
        return new r(this.f21170a, i, i2, i3);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(j$.time.g gVar) {
        return (r) super.t(gVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b t(j$.time.temporal.o oVar) {
        return (r) super.t(oVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b E(j$.time.temporal.q qVar) {
        return (r) super.E(qVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final long z() {
        return this.f21170a.N(this.b, this.f21171c, this.d);
    }

    public final int O() {
        return this.f21170a.Q(this.b, this.f21171c - 1) + this.d;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean m() {
        return this.f21170a.J(this.b);
    }

    @Override // j$.time.chrono.d
    public final b N(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return R(i, this.f21171c, this.d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.d
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final r M(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.f21171c - 1) + j;
        p pVar = this.f21170a;
        long N = j$.com.android.tools.r8.a.N(j2, 12L);
        if (N >= pVar.M(0) && N <= pVar.M(pVar.d.length - 1) - 1) {
            return R((int) N, ((int) j$.com.android.tools.r8.a.M(j2, 12L)) + 1, this.d);
        }
        throw new RuntimeException("Invalid Hijrah year: " + N);
    }

    @Override // j$.time.chrono.d
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final r L(long j) {
        return new r(this.f21170a, z() + j);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.m
    public final b b(long j, j$.time.temporal.t tVar) {
        return (r) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.t tVar) {
        return (r) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    /* renamed from: o */
    public final b u(long j, j$.time.temporal.t tVar) {
        return (r) super.u(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return (r) super.u(j, bVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (this.b == rVar.b && this.f21171c == rVar.f21171c && this.d == rVar.d && this.f21170a.equals(rVar.f21170a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int hashCode() {
        int i = this.b;
        int i2 = this.f21171c;
        int i3 = this.d;
        this.f21170a.getClass();
        return (((i << 11) + (i2 << 6)) + i3) ^ ((i & (-2048)) ^ 2100100019);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new f0((byte) 6, this);
    }
}
