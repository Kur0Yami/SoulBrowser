package j$.time;

import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
public final class s implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* renamed from: a, reason: collision with root package name */
    public byte f21242a;
    public Object b;

    public s() {
    }

    public s(byte b, Object obj) {
        this.f21242a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f21242a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f21136a);
                objectOutput.writeInt(duration.b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f21138a);
                objectOutput.writeInt(instant.b);
                return;
            case 3:
                g gVar = (g) obj;
                objectOutput.writeInt(gVar.f21225a);
                objectOutput.writeByte(gVar.b);
                objectOutput.writeByte(gVar.f21226c);
                return;
            case 4:
                ((k) obj).a0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                g gVar2 = localDateTime.f21140a;
                objectOutput.writeInt(gVar2.f21225a);
                objectOutput.writeByte(gVar2.b);
                objectOutput.writeByte(gVar2.f21226c);
                localDateTime.b.a0(objectOutput);
                return;
            case 6:
                z zVar = (z) obj;
                LocalDateTime localDateTime2 = zVar.f21271a;
                g gVar3 = localDateTime2.f21140a;
                objectOutput.writeInt(gVar3.f21225a);
                objectOutput.writeByte(gVar3.b);
                objectOutput.writeByte(gVar3.f21226c);
                localDateTime2.b.a0(objectOutput);
                zVar.b.U(objectOutput);
                zVar.f21272c.O(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((x) obj).f21269a);
                return;
            case 8:
                ((ZoneOffset) obj).U(objectOutput);
                return;
            case 9:
                q qVar = (q) obj;
                qVar.f21239a.a0(objectOutput);
                qVar.b.U(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f21142a;
                g gVar4 = localDateTime3.f21140a;
                objectOutput.writeInt(gVar4.f21225a);
                objectOutput.writeByte(gVar4.b);
                objectOutput.writeByte(gVar4.f21226c);
                localDateTime3.b.a0(objectOutput);
                offsetDateTime.b.U(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((u) obj).f21264a);
                return;
            case 12:
                w wVar = (w) obj;
                objectOutput.writeInt(wVar.f21267a);
                objectOutput.writeByte(wVar.b);
                return;
            case 13:
                o oVar = (o) obj;
                objectOutput.writeByte(oVar.f21236a);
                objectOutput.writeByte(oVar.b);
                return;
            case 14:
                r rVar = (r) obj;
                objectOutput.writeInt(rVar.f21240a);
                objectOutput.writeInt(rVar.b);
                objectOutput.writeInt(rVar.f21241c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.f21242a = readByte;
        this.b = a(readByte, objectInput);
    }

    public static Object a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                Duration duration = Duration.f21135c;
                return Duration.ofSeconds(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.f21137c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                g gVar = g.d;
                return g.U(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return k.V(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f21139c;
                g gVar2 = g.d;
                return LocalDateTime.N(g.U(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.V(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f21139c;
                g gVar3 = g.d;
                LocalDateTime N = LocalDateTime.N(g.U(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.V(objectInput));
                ZoneOffset T = ZoneOffset.T(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(N, "localDateTime");
                Objects.requireNonNull(T, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || T.equals(zoneId)) {
                    return new z(N, zoneId, T);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = x.f21268c;
                return ZoneId.L(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.T(objectInput);
            case 9:
                int i2 = q.f21238c;
                return new q(k.V(objectInput), ZoneOffset.T(objectInput));
            case 10:
                int i3 = OffsetDateTime.f21141c;
                g gVar4 = g.d;
                return new OffsetDateTime(LocalDateTime.N(g.U(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.V(objectInput)), ZoneOffset.T(objectInput));
            case 11:
                int i4 = u.b;
                return u.K(objectInput.readInt());
            case 12:
                int i5 = w.f21266c;
                int readInt = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.u(readInt);
                j$.time.temporal.a.MONTH_OF_YEAR.u(readByte);
                return new w(readInt, readByte);
            case 13:
                int i6 = o.f21235c;
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                m N2 = m.N(readByte2);
                Objects.requireNonNull(N2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.u(readByte3);
                if (readByte3 <= N2.M()) {
                    return new o(N2.getValue(), readByte3);
                }
                throw new RuntimeException("Illegal value for DayOfMonth field, value " + ((int) readByte3) + " is not valid for month " + N2.name());
            case 14:
                r rVar = r.d;
                return r.a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }
}
