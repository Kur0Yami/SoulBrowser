package j$.util.concurrent;

/* loaded from: classes2.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public l[] f21316a;
    public l b = null;

    /* renamed from: c, reason: collision with root package name */
    public o f21317c;
    public o d;
    public int e;
    public int f;
    public int g;
    public final int h;

    public p(l[] lVarArr, int i, int i2, int i3) {
        this.f21316a = lVarArr;
        this.h = i;
        this.e = i2;
        this.f = i2;
        this.g = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final l a() {
        l[] lVarArr;
        int length;
        int i;
        o oVar;
        o oVar2;
        l lVar = this.b;
        if (lVar != null) {
            lVar = lVar.d;
        }
        while (lVar == null) {
            if (this.f >= this.g || (lVarArr = this.f21316a) == null || (length = lVarArr.length) <= (i = this.e) || i < 0) {
                this.b = null;
                return null;
            }
            l k = ConcurrentHashMap.k(lVarArr, i);
            if (k == null || k.f21312a >= 0) {
                lVar = k;
            } else if (k instanceof g) {
                this.f21316a = ((g) k).e;
                o oVar3 = this.d;
                if (oVar3 == null) {
                    oVar2 = new Object();
                } else {
                    this.d = oVar3.d;
                    oVar2 = oVar3;
                }
                oVar2.f21315c = lVarArr;
                oVar2.f21314a = length;
                oVar2.b = i;
                oVar2.d = this.f21317c;
                this.f21317c = oVar2;
                lVar = null;
            } else {
                lVar = k instanceof q ? ((q) k).f : null;
            }
            if (this.f21317c != null) {
                while (true) {
                    oVar = this.f21317c;
                    if (oVar == null) {
                        break;
                    }
                    int i2 = this.e;
                    int i3 = oVar.f21314a;
                    int i4 = i2 + i3;
                    this.e = i4;
                    if (i4 < length) {
                        break;
                    }
                    this.e = oVar.b;
                    this.f21316a = oVar.f21315c;
                    oVar.f21315c = null;
                    o oVar4 = oVar.d;
                    oVar.d = this.d;
                    this.f21317c = oVar4;
                    this.d = oVar;
                    length = i3;
                }
                if (oVar == null) {
                    int i5 = this.e + this.h;
                    this.e = i5;
                    if (i5 >= length) {
                        int i6 = this.f + 1;
                        this.f = i6;
                        this.e = i6;
                    }
                }
            } else {
                int i7 = i + this.h;
                this.e = i7;
                if (i7 >= length) {
                    int i8 = this.f + 1;
                    this.f = i8;
                    this.e = i8;
                }
            }
        }
        this.b = lVar;
        return lVar;
    }
}
