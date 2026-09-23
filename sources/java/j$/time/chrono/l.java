package j$.time.chrono;

import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class l implements j, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* renamed from: a, reason: collision with root package name */
    public final transient g f21165a;
    public final transient ZoneOffset b;

    /* renamed from: c, reason: collision with root package name */
    public final transient ZoneId f21166c;

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object d(j$.time.h hVar) {
        return j$.com.android.tools.r8.a.o(this, hVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.h(this, rVar);
    }

    @Override // j$.time.chrono.j
    public final /* synthetic */ long toEpochSecond() {
        return j$.com.android.tools.r8.a.r(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return j$.com.android.tools.r8.a.d(this, (j) obj);
    }

    public static l K(ZoneId zoneId, ZoneOffset zoneOffset, g gVar) {
        Objects.requireNonNull(gVar, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new l(zoneId, (ZoneOffset) zoneId, gVar);
        }
        j$.time.zone.f K = zoneId.K();
        LocalDateTime L = LocalDateTime.L(gVar);
        List f = K.f(L);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() != 0) {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f.get(0);
            }
            gVar = gVar;
        } else {
            Object e = K.e(L);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            gVar = gVar.M(gVar.f21155a, 0L, 0L, Duration.g(bVar.d.f21144a - bVar.f21275c.f21144a, 0).getSeconds(), 0L);
            zoneOffset = bVar.d;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new l(zoneId, zoneOffset, gVar);
    }

    public static l L(m mVar, Instant instant, ZoneId zoneId) {
        ZoneOffset d = zoneId.K().d(instant);
        Objects.requireNonNull(d, "offset");
        return new l(zoneId, d, (g) mVar.x(LocalDateTime.O(instant.getEpochSecond(), instant.getNano(), d)));
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar != j$.time.temporal.a.INSTANT_SECONDS && rVar != j$.time.temporal.a.OFFSET_SECONDS) {
                return ((g) toLocalDateTime()).i(rVar);
            }
            return ((j$.time.temporal.a) rVar).b;
        }
        return rVar.g(this);
    }

    public static l l(m mVar, j$.time.temporal.m mVar2) {
        l lVar = (l) mVar2;
        if (mVar.equals(lVar.getChronology())) {
            return lVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + mVar.f() + ", actual: " + lVar.getChronology().f());
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = i.f21160a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                return toEpochSecond();
            }
            if (i != 2) {
                return ((g) toLocalDateTime()).y(rVar);
            }
            return getOffset().f21144a;
        }
        return rVar.i(this);
    }

    public l(ZoneId zoneId, ZoneOffset zoneOffset, g gVar) {
        this.f21165a = (g) Objects.requireNonNull(gVar, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.f21166c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    @Override // j$.time.chrono.j
    public final ZoneOffset getOffset() {
        return this.b;
    }

    @Override // j$.time.chrono.j
    public final b toLocalDate() {
        return ((g) toLocalDateTime()).toLocalDate();
    }

    @Override // j$.time.chrono.j
    public final j$.time.k toLocalTime() {
        return ((g) toLocalDateTime()).toLocalTime();
    }

    public final int hashCode() {
        return (this.f21165a.hashCode() ^ this.b.f21144a) ^ Integer.rotateLeft(this.f21166c.hashCode(), 3);
    }

    @Override // j$.time.chrono.j
    public final e toLocalDateTime() {
        return this.f21165a;
    }

    public final String toString() {
        String str = this.f21165a.toString() + this.b.b;
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.f21166c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.j
    public final ZoneId getZone() {
        return this.f21166c;
    }

    @Override // j$.time.chrono.j
    public final m getChronology() {
        return toLocalDate().getChronology();
    }

    @Override // j$.time.chrono.j
    public final j s(ZoneId zoneId) {
        return K(zoneId, this.b, this.f21165a);
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return true;
        }
        return rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i = k.f21163a[aVar.ordinal()];
            if (i == 1) {
                return b(j - j$.com.android.tools.r8.a.r(this), j$.time.temporal.b.SECONDS);
            }
            if (i == 2) {
                ZoneOffset R = ZoneOffset.R(aVar.b.a(j, aVar));
                g gVar = this.f21165a;
                gVar.getClass();
                gVar.getClass();
                return L(getChronology(), Instant.ofEpochSecond(j$.com.android.tools.r8.a.q(gVar, R), gVar.toLocalTime().d), this.f21166c);
            }
            return K(this.f21166c, this.b, this.f21165a.a(j, rVar));
        }
        return l(getChronology(), rVar.l(this, j));
    }

    @Override // j$.time.temporal.m
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final l b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            return l(getChronology(), this.f21165a.b(j, tVar).l(this));
        }
        return l(getChronology(), tVar.d(this, j));
    }

    private Object writeReplace() {
        return new f0((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && j$.com.android.tools.r8.a.d(this, (j) obj) == 0;
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(j$.time.g gVar) {
        return l(getChronology(), gVar.l(this));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return l(getChronology(), j$.time.temporal.s.b(this, j, bVar));
    }
}
