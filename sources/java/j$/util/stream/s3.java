package j$.util.stream;

/* loaded from: classes2.dex */
public class s3 extends u3 {

    /* renamed from: c, reason: collision with root package name */
    public final Object f21488c;

    public s3(b2 b2Var, Object obj) {
        super(b2Var);
        this.f21488c = obj;
    }

    public s3(s3 s3Var, b2 b2Var, int i) {
        super(s3Var, b2Var, i);
        this.f21488c = s3Var.f21488c;
    }

    @Override // j$.util.stream.u3
    public final u3 b(int i, int i2) {
        return new s3(this, ((b2) this.f21496a).a(i), i2);
    }

    @Override // j$.util.stream.u3
    public final void a() {
        ((b2) this.f21496a).f(this.b, this.f21488c);
    }
}
