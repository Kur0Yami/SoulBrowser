package j$.util.stream;

/* loaded from: classes2.dex */
public final class t3 extends u3 {

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f21492c;

    public t3(c2 c2Var, Object[] objArr) {
        super(c2Var);
        this.f21492c = objArr;
    }

    public t3(t3 t3Var, c2 c2Var, int i) {
        super(t3Var, c2Var, i);
        this.f21492c = t3Var.f21492c;
    }

    @Override // j$.util.stream.u3
    public final u3 b(int i, int i2) {
        return new t3(this, this.f21496a.a(i), i2);
    }

    @Override // j$.util.stream.u3
    public final void a() {
        this.f21496a.k(this.f21492c, this.b);
    }
}
