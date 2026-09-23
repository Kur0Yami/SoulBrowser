package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class z implements j$.time.temporal.m, j$.time.chrono.j, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* renamed from: a, reason: collision with root package name */
    public final LocalDateTime f21271a;
    public final ZoneOffset b;

    /* renamed from: c, reason: collision with root package name */
    public final ZoneId f21272c;

    @Override // j$.time.chrono.j
    public final /* synthetic */ long toEpochSecond() {
        return j$.com.android.tools.r8.a.r(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return j$.com.android.tools.r8.a.d(this, (j$.time.chrono.j) obj);
    }

    @Override // j$.time.chrono.j
    public final j$.time.chrono.m getChronology() {
        return ((g) toLocalDate()).getChronology();
    }

    public static z K(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new z(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        j$.time.zone.f K = zoneId.K();
        List f = K.f(localDateTime);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() != 0) {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) f.get(0), "offset");
            }
        } else {
            Object e = K.e(localDateTime);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            localDateTime = localDateTime.Q(Duration.g(bVar.d.f21144a - bVar.f21275c.f21144a, 0).getSeconds());
            zoneOffset = bVar.d;
        }
        return new z(localDateTime, zoneId, zoneOffset);
    }

    public static z l(long j, int i, ZoneId zoneId) {
        ZoneOffset d = zoneId.K().d(Instant.ofEpochSecond(j, i));
        return new z(LocalDateTime.O(j, i, d), zoneId, d);
    }

    public z(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f21271a = localDateTime;
        this.b = zoneOffset;
        this.f21272c = zoneId;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return true;
        }
        return rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) rVar).b;
            }
            return this.f21271a.i(rVar);
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = y.f21270a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.b.f21144a;
            }
            return this.f21271a.g(rVar);
        }
        return j$.com.android.tools.r8.a.h(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = y.f21270a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                return j$.com.android.tools.r8.a.r(this);
            }
            if (i == 2) {
                return this.b.f21144a;
            }
            return this.f21271a.y(rVar);
        }
        return rVar.i(this);
    }

    @Override // j$.time.chrono.j
    public final ZoneOffset getOffset() {
        return this.b;
    }

    @Override // j$.time.chrono.j
    public final ZoneId getZone() {
        return this.f21272c;
    }

    @Override // j$.time.chrono.j
    public final j$.time.chrono.j s(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f21272c.equals(zoneId) ? this : K(this.f21271a, zoneId, this.b);
    }

    @Override // j$.time.chrono.j
    public final j$.time.chrono.e toLocalDateTime() {
        return this.f21271a;
    }

    @Override // j$.time.chrono.j
    public final j$.time.chrono.b toLocalDate() {
        return this.f21271a.f21140a;
    }

    @Override // j$.time.chrono.j
    public final k toLocalTime() {
        return this.f21271a.b;
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return K(LocalDateTime.N(gVar, this.f21271a.b), this.f21272c, this.b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i = y.f21270a[aVar.ordinal()];
            if (i == 1) {
                return l(j, this.f21271a.b.d, this.f21272c);
            }
            if (i != 2) {
                return K(this.f21271a.a(j, rVar), this.f21272c, this.b);
            }
            ZoneOffset R = ZoneOffset.R(aVar.b.a(j, aVar));
            return (R.equals(this.b) || !this.f21272c.K().f(this.f21271a).contains(R)) ? this : new z(this.f21271a, this.f21272c, R);
        }
        return (z) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public final z b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            j$.time.temporal.b bVar = (j$.time.temporal.b) tVar;
            if (bVar.compareTo(j$.time.temporal.b.DAYS) >= 0 && bVar != j$.time.temporal.b.FOREVER) {
                return K(this.f21271a.b(j, tVar), this.f21272c, this.b);
            }
            LocalDateTime b = this.f21271a.b(j, tVar);
            ZoneOffset zoneOffset = this.b;
            ZoneId zoneId = this.f21272c;
            Objects.requireNonNull(b, "localDateTime");
            Objects.requireNonNull(zoneOffset, "offset");
            Objects.requireNonNull(zoneId, "zone");
            if (zoneId.K().f(b).contains(zoneOffset)) {
                return new z(b, zoneId, zoneOffset);
            }
            b.getClass();
            return l(j$.com.android.tools.r8.a.q(b, zoneOffset), b.b.d, zoneId);
        }
        return (z) tVar.d(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.f) {
            return this.f21271a.f21140a;
        }
        return j$.com.android.tools.r8.a.o(this, hVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            z zVar = (z) obj;
            if (this.f21271a.equals(zVar.f21271a) && this.b.equals(zVar.b) && this.f21272c.equals(zVar.f21272c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f21271a.hashCode() ^ this.b.f21144a) ^ Integer.rotateLeft(this.f21272c.hashCode(), 3);
    }

    public final String toString() {
        String str = this.f21271a.toString() + this.b.b;
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.f21272c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    private Object writeReplace() {
        return new s((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
