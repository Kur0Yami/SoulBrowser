package j$.time.chrono;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.ZoneId;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class g implements e, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* renamed from: a, reason: collision with root package name */
    public final transient b f21155a;
    public final transient j$.time.k b;

    @Override // java.lang.Comparable
    /* renamed from: C */
    public final /* synthetic */ int compareTo(e eVar) {
        return j$.com.android.tools.r8.a.c(this, eVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object d(j$.time.h hVar) {
        return j$.com.android.tools.r8.a.n(this, hVar);
    }

    public static g K(m mVar, j$.time.temporal.m mVar2) {
        g gVar = (g) mVar2;
        if (mVar.equals(gVar.f21155a.getChronology())) {
            return gVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + mVar.f() + ", actual: " + gVar.f21155a.getChronology().f());
    }

    public g(b bVar, j$.time.k kVar) {
        Objects.requireNonNull(bVar, "date");
        Objects.requireNonNull(kVar, "time");
        this.f21155a = bVar;
        this.b = kVar;
    }

    public final g O(j$.time.temporal.m mVar, j$.time.k kVar) {
        b bVar = this.f21155a;
        return (bVar == mVar && this.b == kVar) ? this : new g(d.K(bVar.getChronology(), mVar), kVar);
    }

    @Override // j$.time.chrono.e
    public final m getChronology() {
        return this.f21155a.getChronology();
    }

    public final int hashCode() {
        return this.f21155a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.chrono.e
    public final b toLocalDate() {
        return this.f21155a;
    }

    public final String toString() {
        return this.f21155a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return K(this.f21155a.getChronology(), j$.time.temporal.s.b(this, j, bVar));
    }

    @Override // j$.time.chrono.e
    public final j$.time.k toLocalTime() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar != null && rVar.d(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        return aVar.isDateBased() || aVar.y();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (!((j$.time.temporal.a) rVar).y()) {
                return this.f21155a.i(rVar);
            }
            j$.time.k kVar = this.b;
            kVar.getClass();
            return j$.time.temporal.s.d(kVar, rVar);
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).y() ? this.b.g(rVar) : this.f21155a.g(rVar);
        }
        return i(rVar).a(y(rVar), rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).y() ? this.b.y(rVar) : this.f21155a.y(rVar);
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(j$.time.g gVar) {
        return O(gVar, this.b);
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final g a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (((j$.time.temporal.a) rVar).y()) {
                return O(this.f21155a, this.b.a(j, rVar));
            }
            return O(this.f21155a.a(j, rVar), this.b);
        }
        return K(this.f21155a.getChronology(), rVar.l(this, j));
    }

    @Override // j$.time.temporal.m
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public final g b(long j, j$.time.temporal.t tVar) {
        if (!(tVar instanceof j$.time.temporal.b)) {
            return K(this.f21155a.getChronology(), tVar.d(this, j));
        }
        switch (f.f21153a[((j$.time.temporal.b) tVar).ordinal()]) {
            case 1:
                return M(this.f21155a, 0L, 0L, 0L, j);
            case 2:
                g O = O(this.f21155a.b(j / 86400000000L, (j$.time.temporal.t) j$.time.temporal.b.DAYS), this.b);
                return O.M(O.f21155a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                g O2 = O(this.f21155a.b(j / 86400000, (j$.time.temporal.t) j$.time.temporal.b.DAYS), this.b);
                return O2.M(O2.f21155a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return M(this.f21155a, 0L, 0L, j, 0L);
            case 5:
                return M(this.f21155a, 0L, j, 0L, 0L);
            case 6:
                return M(this.f21155a, j, 0L, 0L, 0L);
            case 7:
                g O3 = O(this.f21155a.b(j / 256, (j$.time.temporal.t) j$.time.temporal.b.DAYS), this.b);
                return O3.M(O3.f21155a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return O(this.f21155a.b(j, tVar), this.b);
        }
    }

    public final g M(b bVar, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return O(bVar, this.b);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long W = this.b.W();
        long j7 = j6 + W;
        long N = j$.com.android.tools.r8.a.N(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long M = j$.com.android.tools.r8.a.M(j7, 86400000000000L);
        return O(bVar.b(N, (j$.time.temporal.t) j$.time.temporal.b.DAYS), M == W ? this.b : j$.time.k.P(M));
    }

    @Override // j$.time.chrono.e
    public final j v(ZoneId zoneId) {
        return l.K(zoneId, null, this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(toLocalDate().z(), j$.time.temporal.a.EPOCH_DAY).a(toLocalTime().W(), j$.time.temporal.a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new f0((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && j$.com.android.tools.r8.a.c(this, (e) obj) == 0;
    }
}
