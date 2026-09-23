package j$.time.chrono;

import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
public final class f0 implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* renamed from: a, reason: collision with root package name */
    public byte f21154a;
    public Object b;

    public f0() {
    }

    public f0(byte b, Object obj) {
        this.f21154a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f21154a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((a) obj).f());
                return;
            case 2:
                g gVar = (g) obj;
                objectOutput.writeObject(gVar.f21155a);
                objectOutput.writeObject(gVar.b);
                return;
            case 3:
                l lVar = (l) obj;
                objectOutput.writeObject(lVar.f21165a);
                objectOutput.writeObject(lVar.b);
                objectOutput.writeObject(lVar.f21166c);
                return;
            case 4:
                y yVar = (y) obj;
                yVar.getClass();
                objectOutput.writeInt(j$.time.temporal.s.a(yVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(yVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(yVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((z) obj).f21180a);
                return;
            case 6:
                r rVar = (r) obj;
                objectOutput.writeObject(rVar.f21170a);
                objectOutput.writeInt(j$.time.temporal.s.a(rVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(rVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(rVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 7:
                d0 d0Var = (d0) obj;
                d0Var.getClass();
                objectOutput.writeInt(j$.time.temporal.s.a(d0Var, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(d0Var, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(d0Var, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                j0 j0Var = (j0) obj;
                j0Var.getClass();
                objectOutput.writeInt(j$.time.temporal.s.a(j0Var, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(j0Var, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.s.a(j0Var, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                h hVar = (h) obj;
                objectOutput.writeUTF(hVar.f21157a.f());
                objectOutput.writeInt(hVar.b);
                objectOutput.writeInt(hVar.f21158c);
                objectOutput.writeInt(hVar.d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object R;
        byte readByte = objectInput.readByte();
        this.f21154a = readByte;
        switch (readByte) {
            case 1:
                ConcurrentHashMap concurrentHashMap = a.f21146a;
                R = j$.com.android.tools.r8.a.R(objectInput.readUTF());
                break;
            case 2:
                R = ((b) objectInput.readObject()).A((j$.time.k) objectInput.readObject());
                break;
            case 3:
                R = ((e) objectInput.readObject()).v((ZoneOffset) objectInput.readObject()).s((ZoneId) objectInput.readObject());
                break;
            case 4:
                j$.time.g gVar = y.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                w.f21176c.getClass();
                R = new y(j$.time.g.U(readInt, readByte2, readByte3));
                break;
            case 5:
                z zVar = z.d;
                R = z.j(objectInput.readByte());
                break;
            case 6:
                p pVar = (p) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                pVar.getClass();
                R = new r(pVar, readInt2, readByte4, readByte5);
                break;
            case 7:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                b0.f21148c.getClass();
                R = new d0(j$.time.g.U(readInt3 + 1911, readByte6, readByte7));
                break;
            case 8:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                h0.f21159c.getClass();
                R = new j0(j$.time.g.U(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i = h.e;
                R = new h(j$.com.android.tools.r8.a.R(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = R;
    }

    private Object readResolve() {
        return this.b;
    }
}
