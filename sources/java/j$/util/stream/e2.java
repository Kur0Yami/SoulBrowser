package j$.util.stream;

/* loaded from: classes2.dex */
public abstract class e2 implements c2 {

    /* renamed from: a, reason: collision with root package name */
    public final c2 f21407a;
    public final c2 b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21408c;

    @Override // j$.util.stream.c2
    public final int o() {
        return 2;
    }

    public e2(c2 c2Var, c2 c2Var2) {
        this.f21407a = c2Var;
        this.b = c2Var2;
        this.f21408c = c2Var2.count() + c2Var.count();
    }

    @Override // j$.util.stream.c2
    public final c2 a(int i) {
        if (i == 0) {
            return this.f21407a;
        }
        if (i == 1) {
            return this.b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final long count() {
        return this.f21408c;
    }

    @Override // j$.util.stream.c2
    public /* bridge */ /* synthetic */ b2 a(int i) {
        return (b2) a(i);
    }
}
