package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class x extends ZoneId {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21268c = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: a, reason: collision with root package name */
    public final String f21269a;
    public final transient j$.time.zone.f b;

    public static x P(String str, boolean z) {
        j$.time.zone.f fVar;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                fVar = j$.time.zone.i.a(str);
            } catch (j$.time.zone.g e) {
                if (z) {
                    throw e;
                }
                fVar = null;
            }
            return new x(str, fVar);
        }
        throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    public x(String str, j$.time.zone.f fVar) {
        this.f21269a = str;
        this.b = fVar;
    }

    @Override // j$.time.ZoneId
    public final String f() {
        return this.f21269a;
    }

    @Override // j$.time.ZoneId
    public final j$.time.zone.f K() {
        j$.time.zone.f fVar = this.b;
        return fVar != null ? fVar : j$.time.zone.i.a(this.f21269a);
    }

    private Object writeReplace() {
        return new s((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.ZoneId
    public final void O(DataOutput dataOutput) {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f21269a);
    }
}
