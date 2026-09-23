package j$.time;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.format.DateTimeFormatter;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.m, j$.time.temporal.o, j$.time.chrono.e, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final LocalDateTime f21139c = N(g.d, k.e);
    public static final LocalDateTime d = N(g.e, k.f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* renamed from: a, reason: collision with root package name */
    public final g f21140a;
    public final k b;

    @Override // j$.time.chrono.e
    public final j$.time.chrono.m getChronology() {
        return ((g) toLocalDate()).getChronology();
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return new OffsetDateTime(this, zoneOffset);
    }

    @Override // j$.time.chrono.e
    public final j$.time.chrono.j v(ZoneId zoneId) {
        return z.K(this, zoneId, null);
    }

    public static LocalDateTime N(g gVar, k kVar) {
        Objects.requireNonNull(gVar, "date");
        Objects.requireNonNull(kVar, "time");
        return new LocalDateTime(gVar, kVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(((g) toLocalDate()).z(), j$.time.temporal.a.EPOCH_DAY).a(toLocalTime().W(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public static LocalDateTime O(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.u(j2);
        return new LocalDateTime(g.V(j$.com.android.tools.r8.a.N(j + zoneOffset.f21144a, 86400)), k.P((((int) j$.com.android.tools.r8.a.M(r5, r7)) * 1000000000) + j2));
    }

    public static LocalDateTime L(j$.time.temporal.n nVar) {
        if (nVar instanceof LocalDateTime) {
            return (LocalDateTime) nVar;
        }
        if (!(nVar instanceof z)) {
            if (!(nVar instanceof OffsetDateTime)) {
                try {
                    return new LocalDateTime(g.M(nVar), k.M(nVar));
                } catch (b e) {
                    throw new RuntimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
                }
            }
            return ((OffsetDateTime) nVar).f21142a;
        }
        return ((z) nVar).f21271a;
    }

    public static LocalDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        String charSequence2;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        h hVar = new h(0);
        dateTimeFormatter.getClass();
        Objects.requireNonNull(charSequence, "text");
        Objects.requireNonNull(hVar, "query");
        try {
            return (LocalDateTime) dateTimeFormatter.a(charSequence).d(hVar);
        } catch (j$.time.format.w e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                charSequence2 = charSequence.toString();
            }
            RuntimeException runtimeException = new RuntimeException("Text '" + charSequence2 + "' could not be parsed: " + e2.getMessage(), e2);
            charSequence.toString();
            throw runtimeException;
        }
    }

    public LocalDateTime(g gVar, k kVar) {
        this.f21140a = gVar;
        this.b = kVar;
    }

    public final LocalDateTime T(g gVar, k kVar) {
        return (this.f21140a == gVar && this.b == kVar) ? this : new LocalDateTime(gVar, kVar);
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
            if (((j$.time.temporal.a) rVar).y()) {
                k kVar = this.b;
                kVar.getClass();
                return j$.time.temporal.s.d(kVar, rVar);
            }
            return this.f21140a.i(rVar);
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).y() ? this.b.g(rVar) : this.f21140a.g(rVar);
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).y() ? this.b.y(rVar) : this.f21140a.y(rVar);
        }
        return rVar.i(this);
    }

    @Override // j$.time.chrono.e
    public final j$.time.chrono.b toLocalDate() {
        return this.f21140a;
    }

    @Override // j$.time.chrono.e
    public final k toLocalTime() {
        return this.b;
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return T(gVar, this.b);
    }

    @Override // j$.time.temporal.m
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (((j$.time.temporal.a) rVar).y()) {
                return T(this.f21140a, this.b.a(j, rVar));
            }
            return T(this.f21140a.a(j, rVar), this.b);
        }
        return (LocalDateTime) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime b(long j, j$.time.temporal.t tVar) {
        if (!(tVar instanceof j$.time.temporal.b)) {
            return (LocalDateTime) tVar.d(this, j);
        }
        switch (i.f21228a[((j$.time.temporal.b) tVar).ordinal()]) {
            case 1:
                return R(this.f21140a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime T = T(this.f21140a.Y(j / 86400000000L), this.b);
                return T.R(T.f21140a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime T2 = T(this.f21140a.Y(j / 86400000), this.b);
                return T2.R(T2.f21140a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return Q(j);
            case 5:
                return R(this.f21140a, 0L, j, 0L, 0L);
            case 6:
                return R(this.f21140a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime T3 = T(this.f21140a.Y(j / 256), this.b);
                return T3.R(T3.f21140a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return T(this.f21140a.b(j, tVar), this.b);
        }
    }

    public final LocalDateTime Q(long j) {
        return R(this.f21140a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    public final LocalDateTime R(g gVar, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return T(gVar, this.b);
        }
        long j5 = 1;
        long W = this.b.W();
        long j6 = ((((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L)) * j5) + W;
        long N = j$.com.android.tools.r8.a.N(j6, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long M = j$.com.android.tools.r8.a.M(j6, 86400000000000L);
        return T(gVar.Y(N), M == W ? this.b : k.P(M));
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.f) {
            return this.f21140a;
        }
        return j$.com.android.tools.r8.a.n(this, hVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j$.time.chrono.e eVar) {
        if (eVar instanceof LocalDateTime) {
            return K((LocalDateTime) eVar);
        }
        return j$.com.android.tools.r8.a.c(this, eVar);
    }

    public final int K(LocalDateTime localDateTime) {
        int K = this.f21140a.K(localDateTime.f21140a);
        return K == 0 ? this.b.compareTo(localDateTime.b) : K;
    }

    public final boolean M(j$.time.chrono.e eVar) {
        if (eVar instanceof LocalDateTime) {
            return K((LocalDateTime) eVar) < 0;
        }
        long z = this.f21140a.z();
        long z2 = eVar.toLocalDate().z();
        if (z >= z2) {
            return z == z2 && this.b.W() < eVar.toLocalTime().W();
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f21140a.equals(localDateTime.f21140a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f21140a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.f21140a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }

    private Object writeReplace() {
        return new s((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
