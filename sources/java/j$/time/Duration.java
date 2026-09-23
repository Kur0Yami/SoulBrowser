package j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public final class Duration implements j$.time.temporal.q, Comparable<Duration>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final Duration f21135c = new Duration(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* renamed from: a, reason: collision with root package name */
    public final long f21136a;
    public final int b;

    static {
        BigInteger.valueOf(1000000000L);
    }

    public static Duration ofMinutes(long j) {
        return g(j$.com.android.tools.r8.a.O(j, 60), 0);
    }

    public static Duration ofSeconds(long j, long j2) {
        return g(j$.com.android.tools.r8.a.I(j, j$.com.android.tools.r8.a.N(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.M(j2, 1000000000L));
    }

    public static Duration ofMillis(long j) {
        long j2 = j / 1000;
        int i = (int) (j % 1000);
        if (i < 0) {
            i += 1000;
            j2--;
        }
        return g(j2, i * DurationKt.NANOS_IN_MILLIS);
    }

    public static Duration h(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (i + 1000000000);
            j2--;
        }
        return g(j2, i);
    }

    public static Duration g(long j, int i) {
        if ((i | j) == 0) {
            return f21135c;
        }
        return new Duration(j, i);
    }

    public Duration(long j, int i) {
        this.f21136a = j;
        this.b = i;
    }

    public boolean isNegative() {
        return this.f21136a < 0;
    }

    public long getSeconds() {
        return this.f21136a;
    }

    public int getNano() {
        return this.b;
    }

    public Duration plusSeconds(long j) {
        return j == 0 ? this : ofSeconds(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.I(this.f21136a, j), 0L), this.b);
    }

    @Override // j$.time.temporal.q
    public final j$.time.temporal.m d(j$.time.temporal.m mVar) {
        long j = this.f21136a;
        if (j != 0) {
            mVar = mVar.b(j, j$.time.temporal.b.SECONDS);
        }
        int i = this.b;
        return i != 0 ? mVar.b(i, j$.time.temporal.b.NANOS) : mVar;
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        int compare = Long.compare(this.f21136a, duration.f21136a);
        return compare != 0 ? compare : this.b - duration.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.f21136a == duration.f21136a && this.b == duration.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f21136a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        if (this == f21135c) {
            return "PT0S";
        }
        long j = this.f21136a;
        if (j < 0 && this.b > 0) {
            j++;
        }
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.f21136a >= 0 || this.b <= 0) {
            sb.append(i2);
        } else if (i2 == 0) {
            sb.append("-0");
        } else {
            sb.append(i2);
        }
        if (this.b > 0) {
            int length = sb.length();
            if (this.f21136a < 0) {
                sb.append(2000000000 - this.b);
            } else {
                sb.append(this.b + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 1, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
