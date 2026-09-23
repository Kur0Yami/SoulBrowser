package j$.time.chrono;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class h implements j$.time.temporal.q, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* renamed from: a, reason: collision with root package name */
    public final m f21157a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21158c;
    public final int d;

    static {
        j$.com.android.tools.r8.a.J(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    public h(m mVar, int i, int i2, int i3) {
        Objects.requireNonNull(mVar, "chrono");
        this.f21157a = mVar;
        this.b = i;
        this.f21158c = i2;
        this.d = i3;
    }

    public final String toString() {
        if (this.b == 0 && this.f21158c == 0 && this.d == 0) {
            return this.f21157a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f21157a.toString());
        sb.append(" P");
        int i = this.b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f21158c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.q
    public final j$.time.temporal.m d(j$.time.temporal.m mVar) {
        Objects.requireNonNull(mVar, "temporal");
        m mVar2 = (m) mVar.d(j$.time.temporal.s.b);
        if (mVar2 == null || this.f21157a.equals(mVar2)) {
            if (this.f21158c != 0) {
                j$.time.temporal.v n = this.f21157a.n(j$.time.temporal.a.MONTH_OF_YEAR);
                long j = (n.f21258a == n.b && n.f21259c == n.d && n.d()) ? (n.d - n.f21258a) + 1 : -1L;
                if (j > 0) {
                    mVar = mVar.b((this.b * j) + this.f21158c, j$.time.temporal.b.MONTHS);
                } else {
                    int i = this.b;
                    if (i != 0) {
                        mVar = mVar.b(i, j$.time.temporal.b.YEARS);
                    }
                    mVar = mVar.b(this.f21158c, j$.time.temporal.b.MONTHS);
                }
            } else {
                int i2 = this.b;
                if (i2 != 0) {
                    mVar = mVar.b(i2, j$.time.temporal.b.YEARS);
                }
            }
            int i3 = this.d;
            return i3 != 0 ? mVar.b(i3, j$.time.temporal.b.DAYS) : mVar;
        }
        throw new RuntimeException("Chronology mismatch, expected: " + this.f21157a.f() + ", actual: " + mVar2.f());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.b == hVar.b && this.f21158c == hVar.f21158c && this.d == hVar.d && this.f21157a.equals(hVar.f21157a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.f21158c, 8) + this.b)) ^ this.f21157a.hashCode();
    }

    public Object writeReplace() {
        return new f0((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
