package j$.time.format;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class o extends i {
    public static final j$.time.g h = j$.time.g.U(2000, 1, 1);
    public final j$.time.chrono.b g;

    @Override // j$.time.format.i
    public final boolean b(v vVar) {
        if (vVar.f21220c) {
            return super.b(vVar);
        }
        return false;
    }

    public o(j$.time.temporal.r rVar, int i, int i2, j$.time.chrono.b bVar, int i3) {
        super(rVar, i, i2, f0.NOT_NEGATIVE, i3);
        this.g = bVar;
    }

    @Override // j$.time.format.i
    public final long a(y yVar, long j) {
        long abs = Math.abs(j);
        j$.time.chrono.b bVar = this.g;
        long g = bVar != null ? j$.com.android.tools.r8.a.G(yVar.f21223a).w(bVar).g(this.f21202a) : 0;
        long[] jArr = i.f;
        if (j >= g) {
            long j2 = jArr[this.b];
            if (j < g + j2) {
                return abs % j2;
            }
        }
        return abs % jArr[this.f21203c];
    }

    @Override // j$.time.format.i
    public final int c(v vVar, long j, int i, int i2) {
        final o oVar;
        final v vVar2;
        final long j2;
        final int i3;
        final int i4;
        int i5;
        long j3;
        j$.time.chrono.b bVar = this.g;
        if (bVar != null) {
            j$.time.chrono.m mVar = vVar.c().f21195c;
            if (mVar == null && (mVar = vVar.f21219a.e) == null) {
                mVar = j$.time.chrono.t.f21173c;
            }
            i5 = mVar.w(bVar).g(this.f21202a);
            oVar = this;
            vVar2 = vVar;
            j2 = j;
            i3 = i;
            i4 = i2;
            Consumer consumer = new Consumer() { // from class: j$.time.format.n
                public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer$CC.$default$andThen(this, consumer2);
                }

                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void n(Object obj) {
                    o.this.c(vVar2, j2, i3, i4);
                }
            };
            if (vVar2.e == null) {
                vVar2.e = new ArrayList();
            }
            vVar2.e.add(consumer);
        } else {
            oVar = this;
            vVar2 = vVar;
            j2 = j;
            i3 = i;
            i4 = i2;
            i5 = 0;
        }
        int i6 = i4 - i3;
        int i7 = oVar.b;
        if (i6 != i7 || j2 < 0) {
            j3 = j2;
        } else {
            long j4 = i.f[i7];
            long j5 = i5;
            long j6 = j5 - (j5 % j4);
            long j7 = i5 > 0 ? j6 + j2 : j6 - j2;
            j3 = j7 < j5 ? j4 + j7 : j7;
        }
        return vVar2.f(oVar.f21202a, j3, i3, i4);
    }

    @Override // j$.time.format.i
    public final i e() {
        if (this.e == -1) {
            return this;
        }
        return new o(this.f21202a, this.b, this.f21203c, this.g, -1);
    }

    @Override // j$.time.format.i
    public final i f(int i) {
        return new o(this.f21202a, this.b, this.f21203c, this.g, this.e + i);
    }

    @Override // j$.time.format.i
    public final String toString() {
        Object obj = this.g;
        if (obj == null) {
            obj = Objects.requireNonNull(0, "defaultObj");
        }
        return "ReducedValue(" + this.f21202a + "," + this.b + "," + this.f21203c + "," + obj + ")";
    }
}
