package j$.time.zone;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.t;
import j$.time.k;
import j$.time.m;
import j$.time.temporal.p;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class f implements Serializable {
    public static final long[] i = new long[0];
    public static final e[] j = new e[0];
    public static final LocalDateTime[] k = new LocalDateTime[0];
    public static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* renamed from: a, reason: collision with root package name */
    public final long[] f21280a;
    public final ZoneOffset[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f21281c;
    public final LocalDateTime[] d;
    public final ZoneOffset[] e;
    public final e[] f;
    public final TimeZone g;
    public final transient ConcurrentHashMap h = new ConcurrentHashMap();

    public static Object a(LocalDateTime localDateTime, b bVar) {
        LocalDateTime localDateTime2 = bVar.b;
        if (bVar.d()) {
            if (localDateTime.M(localDateTime2)) {
                return bVar.f21275c;
            }
            if (!localDateTime.M(bVar.b.Q(bVar.d.f21144a - bVar.f21275c.f21144a))) {
                return bVar.d;
            }
        } else {
            if (!localDateTime.M(localDateTime2)) {
                return bVar.d;
            }
            if (localDateTime.M(bVar.b.Q(bVar.d.f21144a - bVar.f21275c.f21144a))) {
                return bVar.f21275c;
            }
        }
        return bVar;
    }

    public f(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, e[] eVarArr) {
        this.f21280a = jArr;
        this.b = zoneOffsetArr;
        this.f21281c = jArr2;
        this.e = zoneOffsetArr2;
        this.f = eVarArr;
        if (jArr2.length == 0) {
            this.d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jArr2.length) {
                int i3 = i2 + 1;
                b bVar = new b(jArr2[i2], zoneOffsetArr2[i2], zoneOffsetArr2[i3]);
                if (bVar.d()) {
                    arrayList.add(bVar.b);
                    arrayList.add(bVar.b.Q(bVar.d.f21144a - bVar.f21275c.f21144a));
                } else {
                    arrayList.add(bVar.b.Q(bVar.d.f21144a - bVar.f21275c.f21144a));
                    arrayList.add(bVar.b);
                }
                i2 = i3;
            }
            this.d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.g = null;
    }

    public f(ZoneOffset zoneOffset) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        long[] jArr = i;
        this.f21280a = jArr;
        this.f21281c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = null;
    }

    public f(TimeZone timeZone) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {h(timeZone.getRawOffset())};
        long[] jArr = i;
        this.f21280a = jArr;
        this.f21281c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = timeZone;
    }

    public static ZoneOffset h(int i2) {
        return ZoneOffset.R(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.g != null ? (byte) 100 : (byte) 1, this);
    }

    public static int c(long j2, ZoneOffset zoneOffset) {
        return j$.time.g.V(j$.com.android.tools.r8.a.N(j2 + zoneOffset.f21144a, 86400)).f21225a;
    }

    public final ZoneOffset d(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return h(timeZone.getOffset(instant.toEpochMilli()));
        }
        if (this.f21281c.length == 0) {
            return this.b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f.length > 0) {
            if (epochSecond > this.f21281c[r7.length - 1]) {
                b[] b = b(c(epochSecond, this.e[r7.length - 1]));
                b bVar = null;
                for (int i2 = 0; i2 < b.length; i2++) {
                    bVar = b[i2];
                    if (epochSecond < bVar.f21274a) {
                        return bVar.f21275c;
                    }
                }
                return bVar.d;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f21281c, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.e[binarySearch + 1];
    }

    public final List f(LocalDateTime localDateTime) {
        Object e = e(localDateTime);
        if (e instanceof b) {
            b bVar = (b) e;
            return bVar.d() ? Collections.EMPTY_LIST : j$.com.android.tools.r8.a.J(new Object[]{bVar.f21275c, bVar.d});
        }
        return Collections.singletonList((ZoneOffset) e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        if (r8.K(r0) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0085, code lost:
    
        if (r8.b.W() <= r0.b.W()) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(j$.time.LocalDateTime r8) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.zone.f.e(j$.time.LocalDateTime):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b[] b(int i2) {
        j$.time.g L;
        b[] bVarArr = l;
        Integer valueOf = Integer.valueOf(i2);
        b[] bVarArr2 = (b[]) this.h.get(valueOf);
        if (bVarArr2 != null) {
            return bVarArr2;
        }
        long j2 = 1;
        int i3 = 0;
        int i4 = 1;
        if (this.g != null) {
            if (i2 < 1800) {
                return bVarArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f21139c;
            j$.time.g U = j$.time.g.U(i2 - 1, 12, 31);
            j$.time.temporal.a.HOUR_OF_DAY.u(0);
            long q = j$.com.android.tools.r8.a.q(new LocalDateTime(U, k.h[0]), this.b[0]);
            long j3 = 1000;
            int offset = this.g.getOffset(q * 1000);
            long j4 = 31968000 + q;
            while (q < j4) {
                long j5 = q + 7776000;
                long j6 = j3;
                if (offset != this.g.getOffset(j5 * j6)) {
                    while (j5 - q > j2) {
                        long N = j$.com.android.tools.r8.a.N(j5 + q, 2L);
                        if (this.g.getOffset(N * j6) == offset) {
                            q = N;
                        } else {
                            j5 = N;
                        }
                        j2 = 1;
                    }
                    if (this.g.getOffset(q * j6) == offset) {
                        q = j5;
                    }
                    ZoneOffset h = h(offset);
                    int offset2 = this.g.getOffset(q * j6);
                    ZoneOffset h2 = h(offset2);
                    if (c(q, h2) == i2) {
                        bVarArr = (b[]) Arrays.copyOf(bVarArr, bVarArr.length + 1);
                        bVarArr[bVarArr.length - 1] = new b(q, h, h2);
                    }
                    offset = offset2;
                } else {
                    q = j5;
                }
                j3 = j6;
                j2 = 1;
            }
            if (1916 <= i2 && i2 < 2100) {
                this.h.putIfAbsent(valueOf, bVarArr);
            }
            return bVarArr;
        }
        e[] eVarArr = this.f;
        b[] bVarArr3 = new b[eVarArr.length];
        int i5 = 0;
        while (i5 < eVarArr.length) {
            e eVar = eVarArr[i5];
            byte b = eVar.b;
            if (b < 0) {
                m mVar = eVar.f21278a;
                long j7 = i2;
                int L2 = mVar.L(t.f21173c.J(j7)) + 1 + eVar.b;
                j$.time.g gVar = j$.time.g.d;
                j$.time.temporal.a.YEAR.u(j7);
                Objects.requireNonNull(mVar, "month");
                j$.time.temporal.a.DAY_OF_MONTH.u(L2);
                L = j$.time.g.L(i2, mVar.getValue(), L2);
                j$.time.d dVar = eVar.f21279c;
                if (dVar != null) {
                    L = L.h(new p(dVar.getValue(), i4));
                }
            } else {
                m mVar2 = eVar.f21278a;
                j$.time.g gVar2 = j$.time.g.d;
                j$.time.temporal.a.YEAR.u(i2);
                Objects.requireNonNull(mVar2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.u(b);
                L = j$.time.g.L(i2, mVar2.getValue(), b);
                j$.time.d dVar2 = eVar.f21279c;
                if (dVar2 != null) {
                    L = L.h(new p(dVar2.getValue(), i3));
                }
            }
            if (eVar.e) {
                L = L.Y(1L);
            }
            LocalDateTime N2 = LocalDateTime.N(L, eVar.d);
            d dVar3 = eVar.f;
            ZoneOffset zoneOffset = eVar.g;
            ZoneOffset zoneOffset2 = eVar.h;
            dVar3.getClass();
            int i6 = c.f21276a[dVar3.ordinal()];
            if (i6 == 1) {
                N2 = N2.Q(zoneOffset2.f21144a - ZoneOffset.UTC.f21144a);
            } else if (i6 == 2) {
                N2 = N2.Q(zoneOffset2.f21144a - zoneOffset.f21144a);
            }
            bVarArr3[i5] = new b(N2, eVar.h, eVar.i);
            i5++;
            i3 = 0;
        }
        if (i2 < 2100) {
            this.h.putIfAbsent(valueOf, bVarArr3);
        }
        return bVarArr3;
    }

    public final boolean g(Instant instant) {
        ZoneOffset zoneOffset;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            zoneOffset = h(timeZone.getRawOffset());
        } else if (this.f21281c.length == 0) {
            zoneOffset = this.b[0];
        } else {
            int binarySearch = Arrays.binarySearch(this.f21280a, instant.getEpochSecond());
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            zoneOffset = this.b[binarySearch + 1];
        }
        return !zoneOffset.equals(d(instant));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.g, fVar.g) && Arrays.equals(this.f21280a, fVar.f21280a) && Arrays.equals(this.b, fVar.b) && Arrays.equals(this.f21281c, fVar.f21281c) && Arrays.equals(this.e, fVar.e) && Arrays.equals(this.f, fVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.g) ^ Arrays.hashCode(this.f21280a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.f21281c)) ^ Arrays.hashCode(this.e)) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.b[r0.length - 1] + "]";
    }
}
