package j$.time.zone;

import j$.time.ZoneOffset;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.TimeZone;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes2.dex */
public final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* renamed from: a, reason: collision with root package name */
    public byte f21273a;
    public Object b;

    public a() {
    }

    public a(byte b, Object obj) {
        this.f21273a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f21273a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        if (b != 1) {
            if (b == 2) {
                b bVar = (b) obj;
                c(bVar.f21274a, objectOutput);
                d(bVar.f21275c, objectOutput);
                d(bVar.d, objectOutput);
                return;
            }
            if (b == 3) {
                ((e) obj).b(objectOutput);
                return;
            } else {
                if (b != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((f) obj).g.getID());
                return;
            }
        }
        f fVar = (f) obj;
        objectOutput.writeInt(fVar.f21280a.length);
        for (long j : fVar.f21280a) {
            c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : fVar.b) {
            d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(fVar.f21281c.length);
        for (long j2 : fVar.f21281c) {
            c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : fVar.e) {
            d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(fVar.f.length);
        for (e eVar : fVar.f) {
            eVar.b(objectOutput);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object fVar;
        byte readByte = objectInput.readByte();
        this.f21273a = readByte;
        if (readByte == 1) {
            long[] jArr = f.i;
            int readInt = objectInput.readInt();
            long[] jArr2 = readInt == 0 ? jArr : new long[readInt];
            for (int i = 0; i < readInt; i++) {
                jArr2[i] = a(objectInput);
            }
            int i2 = readInt + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                zoneOffsetArr[i3] = b(objectInput);
            }
            int readInt2 = objectInput.readInt();
            if (readInt2 != 0) {
                jArr = new long[readInt2];
            }
            long[] jArr3 = jArr;
            for (int i4 = 0; i4 < readInt2; i4++) {
                jArr3[i4] = a(objectInput);
            }
            int i5 = readInt2 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                zoneOffsetArr2[i6] = b(objectInput);
            }
            int readByte2 = objectInput.readByte();
            e[] eVarArr = readByte2 == 0 ? f.j : new e[readByte2];
            for (int i7 = 0; i7 < readByte2; i7++) {
                eVarArr[i7] = e.a(objectInput);
            }
            fVar = new f(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, eVarArr);
        } else if (readByte == 2) {
            int i8 = b.e;
            long a2 = a(objectInput);
            ZoneOffset b = b(objectInput);
            ZoneOffset b2 = b(objectInput);
            if (b.equals(b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            fVar = new b(a2, b, b2);
        } else if (readByte == 3) {
            fVar = e.a(objectInput);
        } else {
            if (readByte != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            fVar = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.b = fVar;
    }

    private Object readResolve() {
        return this.b;
    }

    public static ZoneOffset b(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.R(dataInput.readInt()) : ZoneOffset.R(readByte * 900);
    }

    public static void c(long j, DataOutput dataOutput) {
        if (j >= -4575744000L && j < 10413792000L && j % 900 == 0) {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
            dataOutput.writeByte((i >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
            dataOutput.writeByte(i & KotlinVersion.MAX_COMPONENT_VALUE);
            return;
        }
        dataOutput.writeByte(KotlinVersion.MAX_COMPONENT_VALUE);
        dataOutput.writeLong(j);
    }

    public static long a(DataInput dataInput) {
        if ((dataInput.readByte() & UByte.MAX_VALUE) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & UByte.MAX_VALUE) << 8)) + (dataInput.readByte() & UByte.MAX_VALUE)) * 900) - 4575744000L;
    }

    public static void d(ZoneOffset zoneOffset, DataOutput dataOutput) {
        int i = zoneOffset.f21144a;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }
}
