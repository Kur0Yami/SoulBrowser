package j$.time.temporal;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class v implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* renamed from: a, reason: collision with root package name */
    public final long f21258a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21259c;
    public final long d;

    public static v f(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new v(j, j, j2, j2);
    }

    public static v g(long j, long j2, long j3) {
        if (j > 1) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        }
        if (j2 > j3) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 > j3) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new v(j, 1L, j2, j3);
    }

    public v(long j, long j2, long j3, long j4) {
        this.f21258a = j;
        this.b = j2;
        this.f21259c = j3;
        this.d = j4;
    }

    public final boolean d() {
        return this.f21258a >= -2147483648L && this.d <= 2147483647L;
    }

    public final boolean e(long j) {
        return j >= this.f21258a && j <= this.d;
    }

    public final int a(long j, r rVar) {
        if (d() && e(j)) {
            return (int) j;
        }
        throw new RuntimeException(c(j, rVar));
    }

    public final void b(long j, r rVar) {
        if (!e(j)) {
            throw new RuntimeException(c(j, rVar));
        }
    }

    public final String c(long j, r rVar) {
        if (rVar != null) {
            return "Invalid value for " + rVar + " (valid values " + this + "): " + j;
        }
        return "Invalid value (valid values " + this + "): " + j;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        long j = this.f21258a;
        long j2 = this.b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f21259c;
        long j4 = this.d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            if (this.f21258a == vVar.f21258a && this.b == vVar.b && this.f21259c == vVar.f21259c && this.d == vVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f21258a;
        long j2 = this.b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f21259c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f21258a);
        if (this.f21258a != this.b) {
            sb.append('/');
            sb.append(this.b);
        }
        sb.append(" - ");
        sb.append(this.f21259c);
        if (this.f21259c != this.d) {
            sb.append('/');
            sb.append(this.d);
        }
        return sb.toString();
    }
}
