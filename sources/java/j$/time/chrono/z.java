package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class z implements n, Serializable {
    public static final z d;
    public static final z[] e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* renamed from: a, reason: collision with root package name */
    public final transient int f21180a;
    public final transient j$.time.g b;

    /* renamed from: c, reason: collision with root package name */
    public final transient String f21181c;

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean c(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.l(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object d(j$.time.h hVar) {
        return j$.com.android.tools.r8.a.p(this, hVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.i(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long y(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.j(this, rVar);
    }

    static {
        z zVar = new z(-1, j$.time.g.U(1868, 1, 1), "Meiji");
        d = zVar;
        z zVar2 = new z(0, j$.time.g.U(1912, 7, 30), "Taisho");
        z zVar3 = new z(1, j$.time.g.U(1926, 12, 25), "Showa");
        z zVar4 = new z(2, j$.time.g.U(1989, 1, 8), "Heisei");
        z zVar5 = new z(3, j$.time.g.U(2019, 5, 1), "Reiwa");
        e = r7;
        z[] zVarArr = {zVar, zVar2, zVar3, zVar4, zVar5};
    }

    public final z f() {
        if (this == e[r0.length - 1]) {
            return null;
        }
        return j(this.f21180a + 1);
    }

    public z(int i, j$.time.g gVar, String str) {
        this.f21180a = i;
        this.b = gVar;
        this.f21181c = str;
    }

    public static z j(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            z[] zVarArr = e;
            if (i2 < zVarArr.length) {
                return zVarArr[i2];
            }
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(getValue(), j$.time.temporal.a.ERA);
    }

    public static z e(j$.time.g gVar) {
        if (gVar.Q(y.d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 are not supported");
        }
        for (int length = e.length - 1; length >= 0; length--) {
            z zVar = e[length];
            if (gVar.compareTo(zVar.b) >= 0) {
                return zVar;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.n
    public final int getValue() {
        return this.f21180a;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        if (rVar != aVar) {
            return j$.time.temporal.s.d(this, rVar);
        }
        return w.f21176c.n(aVar);
    }

    public final String toString() {
        return this.f21181c;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new f0((byte) 5, this);
    }
}
