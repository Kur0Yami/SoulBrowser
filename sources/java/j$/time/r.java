package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class r implements j$.time.temporal.q, Serializable {
    public static final r d = new r(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* renamed from: a, reason: collision with root package name */
    public final int f21240a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21241c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        j$.com.android.tools.r8.a.J(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    public static r a(int i, int i2, int i3) {
        if ((i | i2 | i3) == 0) {
            return d;
        }
        return new r(i, i2, i3);
    }

    public r(int i, int i2, int i3) {
        this.f21240a = i;
        this.b = i2;
        this.f21241c = i3;
    }

    @Override // j$.time.temporal.q
    public final j$.time.temporal.m d(j$.time.temporal.m mVar) {
        Objects.requireNonNull(mVar, "temporal");
        j$.time.chrono.m mVar2 = (j$.time.chrono.m) mVar.d(j$.time.temporal.s.b);
        if (mVar2 == null || j$.time.chrono.t.f21173c.equals(mVar2)) {
            int i = this.b;
            if (i != 0) {
                long j = (this.f21240a * 12) + i;
                if (j != 0) {
                    mVar = mVar.b(j, j$.time.temporal.b.MONTHS);
                }
            } else {
                int i2 = this.f21240a;
                if (i2 != 0) {
                    mVar = mVar.b(i2, j$.time.temporal.b.YEARS);
                }
            }
            int i3 = this.f21241c;
            return i3 != 0 ? mVar.b(i3, j$.time.temporal.b.DAYS) : mVar;
        }
        throw new RuntimeException("Chronology mismatch, expected: ISO, actual: " + mVar2.f());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (this.f21240a == rVar.f21240a && this.b == rVar.b && this.f21241c == rVar.f21241c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f21241c, 16) + Integer.rotateLeft(this.b, 8) + this.f21240a;
    }

    public final String toString() {
        if (this == d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f21240a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f21241c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 14, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
