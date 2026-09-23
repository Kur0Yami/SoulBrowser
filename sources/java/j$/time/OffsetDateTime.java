package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.m, j$.time.temporal.o, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21141c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* renamed from: a, reason: collision with root package name */
    public final LocalDateTime f21142a;
    public final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.b.equals(offsetDateTime2.b)) {
            compare = this.f21142a.compareTo(offsetDateTime2.f21142a);
        } else {
            LocalDateTime localDateTime = this.f21142a;
            ZoneOffset zoneOffset = this.b;
            localDateTime.getClass();
            long q = j$.com.android.tools.r8.a.q(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = offsetDateTime2.f21142a;
            ZoneOffset zoneOffset2 = offsetDateTime2.b;
            localDateTime2.getClass();
            compare = Long.compare(q, j$.com.android.tools.r8.a.q(localDateTime2, zoneOffset2));
            if (compare == 0) {
                compare = this.f21142a.b.d - offsetDateTime2.f21142a.b.d;
            }
        }
        return compare == 0 ? this.f21142a.compareTo(offsetDateTime2.f21142a) : compare;
    }

    static {
        LocalDateTime.f21139c.atOffset(ZoneOffset.f);
        LocalDateTime.d.atOffset(ZoneOffset.e);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.f21142a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public final OffsetDateTime L(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f21142a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
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
            if (rVar != j$.time.temporal.a.INSTANT_SECONDS && rVar != j$.time.temporal.a.OFFSET_SECONDS) {
                return this.f21142a.i(rVar);
            }
            return ((j$.time.temporal.a) rVar).b;
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = p.f21237a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.b.f21144a;
            }
            return this.f21142a.g(rVar);
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = p.f21237a[((j$.time.temporal.a) rVar).ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this.b.f21144a;
                }
                return this.f21142a.y(rVar);
            }
            LocalDateTime localDateTime = this.f21142a;
            ZoneOffset zoneOffset = this.b;
            localDateTime.getClass();
            return j$.com.android.tools.r8.a.q(localDateTime, zoneOffset);
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        LocalDateTime localDateTime = this.f21142a;
        return L(localDateTime.T(gVar, localDateTime.b), this.b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i = p.f21237a[aVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return L(this.f21142a, ZoneOffset.R(aVar.b.a(j, aVar)));
                }
                return L(this.f21142a.a(j, rVar), this.b);
            }
            Instant ofEpochSecond = Instant.ofEpochSecond(j, this.f21142a.b.d);
            ZoneOffset zoneOffset = this.b;
            Objects.requireNonNull(ofEpochSecond, "instant");
            Objects.requireNonNull(zoneOffset, "zone");
            ZoneOffset d = zoneOffset.K().d(ofEpochSecond);
            return new OffsetDateTime(LocalDateTime.O(ofEpochSecond.getEpochSecond(), ofEpochSecond.getNano(), d), d);
        }
        return (OffsetDateTime) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            return L(this.f21142a.b(j, tVar), this.b);
        }
        return (OffsetDateTime) tVar.d(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.d || hVar == j$.time.temporal.s.e) {
            return this.b;
        }
        if (hVar == j$.time.temporal.s.f21256a) {
            return null;
        }
        if (hVar == j$.time.temporal.s.f) {
            return this.f21142a.f21140a;
        }
        if (hVar == j$.time.temporal.s.g) {
            return this.f21142a.b;
        }
        if (hVar == j$.time.temporal.s.b) {
            return j$.time.chrono.t.f21173c;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.NANOS;
        }
        return hVar.d(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(this.f21142a.f21140a.z(), j$.time.temporal.a.EPOCH_DAY).a(this.f21142a.b.W(), j$.time.temporal.a.NANO_OF_DAY).a(this.b.f21144a, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public Instant toInstant() {
        LocalDateTime localDateTime = this.f21142a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        localDateTime.getClass();
        return Instant.ofEpochSecond(j$.com.android.tools.r8.a.q(localDateTime, zoneOffset), localDateTime.toLocalTime().d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f21142a.equals(offsetDateTime.f21142a) && this.b.equals(offsetDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f21142a.hashCode() ^ this.b.f21144a;
    }

    public final String toString() {
        return this.f21142a.toString() + this.b.b;
    }

    private Object writeReplace() {
        return new s((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
