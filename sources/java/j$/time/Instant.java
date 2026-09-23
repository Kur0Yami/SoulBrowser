package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.util.Objects;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.m, j$.time.temporal.o, Comparable<Instant>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final Instant f21137c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* renamed from: a, reason: collision with root package name */
    public final long f21138a;
    public final int b;

    public static Instant now() {
        a.b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.f21138a, instant2.f21138a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    static {
        ofEpochSecond(-31557014167219200L, 0L);
        ofEpochSecond(31556889864403199L, 999999999L);
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return K(j$.com.android.tools.r8.a.I(j, j$.com.android.tools.r8.a.N(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.M(j2, 1000000000L));
    }

    public static Instant ofEpochMilli(long j) {
        long j2 = 1000;
        return K(j$.com.android.tools.r8.a.N(j, j2), ((int) j$.com.android.tools.r8.a.M(j, j2)) * DurationKt.NANOS_IN_MILLIS);
    }

    public static Instant L(j$.time.temporal.n nVar) {
        if (nVar instanceof Instant) {
            return (Instant) nVar;
        }
        Objects.requireNonNull(nVar, "temporal");
        try {
            return ofEpochSecond(nVar.y(j$.time.temporal.a.INSTANT_SECONDS), nVar.g(j$.time.temporal.a.NANO_OF_SECOND));
        } catch (b e) {
            throw new RuntimeException("Unable to obtain Instant from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
        }
    }

    public static Instant K(long j, int i) {
        if ((i | j) == 0) {
            return f21137c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new RuntimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public Instant(long j, int i) {
        this.f21138a = j;
        this.b = i;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.NANO_OF_SECOND || rVar == j$.time.temporal.a.MICRO_OF_SECOND || rVar == j$.time.temporal.a.MILLI_OF_SECOND : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = e.f21183a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 1) {
                return this.b;
            }
            if (i == 2) {
                return this.b / 1000;
            }
            if (i == 3) {
                return this.b / DurationKt.NANOS_IN_MILLIS;
            }
            if (i == 4) {
                j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
                aVar.b.a(this.f21138a, aVar);
            }
            throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
        return j$.time.temporal.s.d(this, rVar).a(rVar.i(this), rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        int i;
        if (rVar instanceof j$.time.temporal.a) {
            int i2 = e.f21183a[((j$.time.temporal.a) rVar).ordinal()];
            if (i2 == 1) {
                i = this.b;
            } else if (i2 == 2) {
                i = this.b / 1000;
            } else {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return this.f21138a;
                    }
                    throw new RuntimeException(c.a("Unsupported field: ", rVar));
                }
                i = this.b / DurationKt.NANOS_IN_MILLIS;
            }
            return i;
        }
        return rVar.i(this);
    }

    public long getEpochSecond() {
        return this.f21138a;
    }

    public int getNano() {
        return this.b;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            aVar.u(j);
            int i = e.f21183a[aVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    int i2 = ((int) j) * 1000;
                    if (i2 != this.b) {
                        return K(this.f21138a, i2);
                    }
                } else if (i == 3) {
                    int i3 = ((int) j) * DurationKt.NANOS_IN_MILLIS;
                    if (i3 != this.b) {
                        return K(this.f21138a, i3);
                    }
                } else {
                    if (i != 4) {
                        throw new RuntimeException(c.a("Unsupported field: ", rVar));
                    }
                    if (j != this.f21138a) {
                        return K(j, this.b);
                    }
                }
            } else if (j != this.b) {
                return K(this.f21138a, (int) j);
            }
            return this;
        }
        return (Instant) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final Instant b(long j, j$.time.temporal.t tVar) {
        if (!(tVar instanceof j$.time.temporal.b)) {
            return (Instant) tVar.d(this, j);
        }
        switch (e.b[((j$.time.temporal.b) tVar).ordinal()]) {
            case 1:
                return M(0L, j);
            case 2:
                return M(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return M(j / 1000, (j % 1000) * 1000000);
            case 4:
                return M(j, 0L);
            case 5:
                return M(j$.com.android.tools.r8.a.O(j, 60), 0L);
            case 6:
                return M(j$.com.android.tools.r8.a.O(j, 3600), 0L);
            case 7:
                return M(j$.com.android.tools.r8.a.O(j, 43200), 0L);
            case 8:
                return M(j$.com.android.tools.r8.a.O(j, 86400), 0L);
            default:
                throw new RuntimeException("Unsupported unit: " + tVar);
        }
    }

    public final Instant M(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.I(this.f21138a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.NANOS;
        }
        if (hVar == j$.time.temporal.s.b || hVar == j$.time.temporal.s.f21256a || hVar == j$.time.temporal.s.e || hVar == j$.time.temporal.s.d || hVar == j$.time.temporal.s.f || hVar == j$.time.temporal.s.g) {
            return null;
        }
        return hVar.d(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(this.f21138a, j$.time.temporal.a.INSTANT_SECONDS).a(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public long toEpochMilli() {
        long j = this.f21138a;
        if (j < 0 && this.b > 0) {
            return j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(j + 1, 1000), (this.b / DurationKt.NANOS_IN_MILLIS) - 1000);
        }
        return j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(j, 1000), this.b / DurationKt.NANOS_IN_MILLIS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f21138a == instant.f21138a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f21138a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.g;
        StringBuilder sb = new StringBuilder(32);
        j$.time.format.d dVar = dateTimeFormatter.f21185a;
        Objects.requireNonNull(this, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            dVar.d(new j$.time.format.y(this, dateTimeFormatter), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    private Object writeReplace() {
        return new s((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return (Instant) j$.com.android.tools.r8.a.a(gVar, this);
    }
}
