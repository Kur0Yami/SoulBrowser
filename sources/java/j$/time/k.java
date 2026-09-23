package j$.time;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import kotlin.time.InstantKt;

/* loaded from: classes2.dex */
public final class k implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final k e;
    public static final k f;
    public static final k g;
    public static final k[] h = new k[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* renamed from: a, reason: collision with root package name */
    public final byte f21230a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final byte f21231c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            k[] kVarArr = h;
            if (i < kVarArr.length) {
                kVarArr[i] = new k(i, 0, 0, 0);
                i++;
            } else {
                k kVar = kVarArr[0];
                g = kVar;
                k kVar2 = kVarArr[12];
                e = kVar;
                f = new k(23, 59, 59, 999999999);
                return;
            }
        }
    }

    public static k O(int i, int i2, int i3, int i4) {
        j$.time.temporal.a.HOUR_OF_DAY.u(i);
        j$.time.temporal.a.MINUTE_OF_HOUR.u(i2);
        j$.time.temporal.a.SECOND_OF_MINUTE.u(i3);
        j$.time.temporal.a.NANO_OF_SECOND.u(i4);
        return L(i, i2, i3, i4);
    }

    public static k P(long j) {
        j$.time.temporal.a.NANO_OF_DAY.u(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return L(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    public static k M(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        k kVar = (k) nVar.d(j$.time.temporal.s.g);
        if (kVar != null) {
            return kVar;
        }
        throw new RuntimeException("Unable to obtain LocalTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    public static k L(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return h[i];
        }
        return new k(i, i2, i3, i4);
    }

    public k(int i, int i2, int i3, int i4) {
        this.f21230a = (byte) i;
        this.b = (byte) i2;
        this.f21231c = (byte) i3;
        this.d = i4;
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).y();
        }
        return rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return N(rVar);
        }
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.NANO_OF_DAY) {
                return W();
            }
            if (rVar == j$.time.temporal.a.MICRO_OF_DAY) {
                return W() / 1000;
            }
            return N(rVar);
        }
        return rVar.i(this);
    }

    public final int N(j$.time.temporal.r rVar) {
        switch (j.f21229a[((j$.time.temporal.a) rVar).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                throw new RuntimeException("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.d / 1000;
            case 4:
                throw new RuntimeException("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.d / DurationKt.NANOS_IN_MILLIS;
            case 6:
                return (int) (W() / 1000000);
            case 7:
                return this.f21231c;
            case 8:
                return X();
            case 9:
                return this.b;
            case 10:
                return (this.f21230a * 60) + this.b;
            case 11:
                return this.f21230a % 12;
            case 12:
                int i = this.f21230a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f21230a;
            case 14:
                byte b = this.f21230a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.f21230a / 12;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.temporal.m
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final k a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            aVar.u(j);
            switch (j.f21229a[aVar.ordinal()]) {
                case 1:
                    return Z((int) j);
                case 2:
                    return P(j);
                case 3:
                    return Z(((int) j) * 1000);
                case 4:
                    return P(j * 1000);
                case 5:
                    return Z(((int) j) * DurationKt.NANOS_IN_MILLIS);
                case 6:
                    return P(j * 1000000);
                case 7:
                    int i = (int) j;
                    if (this.f21231c != i) {
                        j$.time.temporal.a.SECOND_OF_MINUTE.u(i);
                        return L(this.f21230a, this.b, i, this.d);
                    }
                    return this;
                case 8:
                    return U(j - X());
                case 9:
                    int i2 = (int) j;
                    if (this.b != i2) {
                        j$.time.temporal.a.MINUTE_OF_HOUR.u(i2);
                        return L(this.f21230a, i2, this.f21231c, this.d);
                    }
                    return this;
                case 10:
                    return S(j - ((this.f21230a * 60) + this.b));
                case 11:
                    return R(j - (this.f21230a % 12));
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    return R(j - (this.f21230a % 12));
                case 13:
                    int i3 = (int) j;
                    if (this.f21230a != i3) {
                        j$.time.temporal.a.HOUR_OF_DAY.u(i3);
                        return L(i3, this.b, this.f21231c, this.d);
                    }
                    return this;
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    int i4 = (int) j;
                    if (this.f21230a != i4) {
                        j$.time.temporal.a.HOUR_OF_DAY.u(i4);
                        return L(i4, this.b, this.f21231c, this.d);
                    }
                    return this;
                case 15:
                    return R((j - (this.f21230a / 12)) * 12);
                default:
                    throw new RuntimeException(c.a("Unsupported field: ", rVar));
            }
        }
        return (k) rVar.l(this, j);
    }

    public final k Z(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.u(i);
        return L(this.f21230a, this.b, this.f21231c, i);
    }

    @Override // j$.time.temporal.m
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final k b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            switch (j.b[((j$.time.temporal.b) tVar).ordinal()]) {
                case 1:
                    return T(j);
                case 2:
                    return T((j % 86400000000L) * 1000);
                case 3:
                    return T((j % 86400000) * 1000000);
                case 4:
                    return U(j);
                case 5:
                    return S(j);
                case 6:
                    return R(j);
                case 7:
                    return R((j % 2) * 12);
                default:
                    throw new RuntimeException("Unsupported unit: " + tVar);
            }
        }
        return (k) tVar.d(this, j);
    }

    public final k R(long j) {
        return j == 0 ? this : L(((((int) (j % 24)) + this.f21230a) + 24) % 24, this.b, this.f21231c, this.d);
    }

    public final k S(long j) {
        if (j != 0) {
            int i = (this.f21230a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return L(i2 / 60, i2 % 60, this.f21231c, this.d);
            }
        }
        return this;
    }

    public final k U(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.f21230a * 3600) + this.f21231c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return L(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    public final k T(long j) {
        if (j != 0) {
            long W = W();
            long j2 = (((j % 86400000000000L) + W) + 86400000000000L) % 86400000000000L;
            if (W != j2) {
                return L((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.b || hVar == j$.time.temporal.s.f21256a || hVar == j$.time.temporal.s.e || hVar == j$.time.temporal.s.d) {
            return null;
        }
        if (hVar == j$.time.temporal.s.g) {
            return this;
        }
        if (hVar == j$.time.temporal.s.f) {
            return null;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.NANOS;
        }
        return hVar.d(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(W(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public final int X() {
        return (this.b * 60) + (this.f21230a * 3600) + this.f21231c;
    }

    public final long W() {
        return (this.f21231c * 1000000000) + (this.b * 60000000000L) + (this.f21230a * 3600000000000L) + this.d;
    }

    @Override // java.lang.Comparable
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final int compareTo(k kVar) {
        int compare = Integer.compare(this.f21230a, kVar.f21230a);
        return (compare == 0 && (compare = Integer.compare(this.b, kVar.b)) == 0 && (compare = Integer.compare(this.f21231c, kVar.f21231c)) == 0) ? Integer.compare(this.d, kVar.d) : compare;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f21230a == kVar.f21230a && this.b == kVar.b && this.f21231c == kVar.f21231c && this.d == kVar.d) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return (k) j$.com.android.tools.r8.a.a(gVar, this);
    }

    public final int hashCode() {
        long W = W();
        return (int) (W ^ (W >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.f21230a;
        byte b2 = this.b;
        byte b3 = this.f21231c;
        int i = this.d;
        sb.append(b < 10 ? "0" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % DurationKt.NANOS_IN_MILLIS == 0) {
                    sb.append(Integer.toString((i / DurationKt.NANOS_IN_MILLIS) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + DurationKt.NANOS_IN_MILLIS).substring(1));
                } else {
                    sb.append(Integer.toString(i + InstantKt.NANOS_PER_SECOND).substring(1));
                }
            }
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final void a0(DataOutput dataOutput) {
        if (this.d == 0) {
            if (this.f21231c == 0) {
                if (this.b == 0) {
                    dataOutput.writeByte(~this.f21230a);
                    return;
                } else {
                    dataOutput.writeByte(this.f21230a);
                    dataOutput.writeByte(~this.b);
                    return;
                }
            }
            dataOutput.writeByte(this.f21230a);
            dataOutput.writeByte(this.b);
            dataOutput.writeByte(~this.f21231c);
            return;
        }
        dataOutput.writeByte(this.f21230a);
        dataOutput.writeByte(this.b);
        dataOutput.writeByte(this.f21231c);
        dataOutput.writeInt(this.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static k V(DataInput dataInput) {
        int readInt;
        int i;
        int readByte = dataInput.readByte();
        byte b = 0;
        if (readByte < 0) {
            readByte = ~readByte;
            i = 0;
            readInt = 0;
        } else {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r5 = ~readByte2;
                readInt = 0;
                b = r5;
                i = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    readInt = 0;
                    b = readByte2;
                } else {
                    readInt = dataInput.readInt();
                    b = readByte2;
                    i = readByte3;
                }
            }
        }
        return O(readByte, b, i, readInt);
    }
}
