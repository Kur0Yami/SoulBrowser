package j$.time.zone;

import j$.time.ZoneOffset;
import j$.time.k;
import j$.time.m;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.uuid.Uuid;

/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* renamed from: a, reason: collision with root package name */
    public final m f21278a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.time.d f21279c;
    public final k d;
    public final boolean e;
    public final d f;
    public final ZoneOffset g;
    public final ZoneOffset h;
    public final ZoneOffset i;

    public e(m mVar, int i, j$.time.d dVar, k kVar, boolean z, d dVar2, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f21278a = mVar;
        this.b = (byte) i;
        this.f21279c = dVar;
        this.d = kVar;
        this.e = z;
        this.f = dVar2;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final void b(DataOutput dataOutput) {
        int X = this.e ? 86400 : this.d.X();
        int i = this.g.f21144a;
        int i2 = this.h.f21144a - i;
        int i3 = this.i.f21144a - i;
        byte b = X % 3600 == 0 ? this.e ? (byte) 24 : this.d.f21230a : (byte) 31;
        int i4 = i % 900 == 0 ? (i / 900) + Uuid.SIZE_BITS : 255;
        int i5 = (i2 == 0 || i2 == 1800 || i2 == 3600) ? i2 / 1800 : 3;
        int i6 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        j$.time.d dVar = this.f21279c;
        dataOutput.writeInt((this.f21278a.getValue() << 28) + ((this.b + 32) << 22) + ((dVar == null ? 0 : dVar.getValue()) << 19) + (b << 14) + (this.f.ordinal() << 12) + (i4 << 4) + (i5 << 2) + i6);
        if (b == 31) {
            dataOutput.writeInt(X);
        }
        if (i4 == 255) {
            dataOutput.writeInt(i);
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.h.f21144a);
        }
        if (i6 == 3) {
            dataOutput.writeInt(this.i.f21144a);
        }
    }

    public static e a(DataInput dataInput) {
        d dVar;
        k kVar;
        int i;
        int i2;
        int readInt = dataInput.readInt();
        m N = m.N(readInt >>> 28);
        int i3 = ((264241152 & readInt) >>> 22) - 32;
        int i4 = (3670016 & readInt) >>> 19;
        j$.time.d K = i4 == 0 ? null : j$.time.d.K(i4);
        int i5 = (507904 & readInt) >>> 14;
        d dVar2 = d.values()[(readInt & 12288) >>> 12];
        int i6 = (readInt & 4080) >>> 4;
        int i7 = (readInt & 12) >>> 2;
        int i8 = readInt & 3;
        if (i5 == 31) {
            long readInt2 = dataInput.readInt();
            k kVar2 = k.e;
            j$.time.temporal.a.SECOND_OF_DAY.u(readInt2);
            int i9 = (int) (readInt2 / 3600);
            long j = readInt2 - (i9 * 3600);
            dVar = dVar2;
            kVar = k.L(i9, (int) (j / 60), (int) (j - (r14 * 60)), 0);
        } else {
            dVar = dVar2;
            int i10 = i5 % 24;
            k kVar3 = k.e;
            j$.time.temporal.a.HOUR_OF_DAY.u(i10);
            kVar = k.h[i10];
        }
        ZoneOffset R = ZoneOffset.R(i6 == 255 ? dataInput.readInt() : (i6 - 128) * 900);
        if (i7 == 3) {
            i = dataInput.readInt();
        } else {
            i = (i7 * 1800) + R.f21144a;
        }
        ZoneOffset R2 = ZoneOffset.R(i);
        if (i8 == 3) {
            i2 = dataInput.readInt();
        } else {
            i2 = (i8 * 1800) + R.f21144a;
        }
        ZoneOffset R3 = ZoneOffset.R(i2);
        boolean z = i5 == 24;
        Objects.requireNonNull(N, "month");
        Objects.requireNonNull(kVar, "time");
        d dVar3 = dVar;
        Objects.requireNonNull(dVar3, "timeDefnition");
        Objects.requireNonNull(R, "standardOffset");
        Objects.requireNonNull(R2, "offsetBefore");
        Objects.requireNonNull(R3, "offsetAfter");
        if (i3 < -28 || i3 > 31 || i3 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !kVar.equals(k.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (kVar.d != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new e(N, i3, K, kVar, z, dVar3, R, R2, R3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f21278a == eVar.f21278a && this.b == eVar.b && this.f21279c == eVar.f21279c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int X = ((this.d.X() + (this.e ? 1 : 0)) << 15) + (this.f21278a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.d dVar = this.f21279c;
        return ((this.g.f21144a ^ (this.f.ordinal() + (X + ((dVar == null ? 7 : dVar.ordinal()) << 2)))) ^ this.h.f21144a) ^ this.i.f21144a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.i.f21144a - this.h.f21144a > 0 ? "Gap " : "Overlap ");
        sb.append(this.h);
        sb.append(" to ");
        sb.append(this.i);
        sb.append(", ");
        j$.time.d dVar = this.f21279c;
        if (dVar != null) {
            byte b = this.b;
            if (b == -1) {
                sb.append(dVar.name());
                sb.append(" on or before last day of ");
                sb.append(this.f21278a.name());
            } else if (b < 0) {
                sb.append(dVar.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.b) - 1);
                sb.append(" of ");
                sb.append(this.f21278a.name());
            } else {
                sb.append(dVar.name());
                sb.append(" on or after ");
                sb.append(this.f21278a.name());
                sb.append(' ');
                sb.append((int) this.b);
            }
        } else {
            sb.append(this.f21278a.name());
            sb.append(' ');
            sb.append((int) this.b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(']');
        return sb.toString();
    }
}
