package j$.util.stream;

/* loaded from: classes2.dex */
public final class r8 extends j5 implements g9 {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21487c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ q8 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r8(q8 q8Var, n5 n5Var, boolean z) {
        super(n5Var);
        this.e = q8Var;
        this.d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (!this.f21487c) {
            boolean test = this.e.u.test(obj);
            this.f21487c = !test;
            if (test) {
                z = false;
                z2 = this.d;
                if (z2 && !z) {
                    this.b++;
                }
                if (!z2 || z) {
                    this.f21442a.accept((n5) obj);
                }
                return;
            }
        }
        z = true;
        z2 = this.d;
        if (z2) {
            this.b++;
        }
        if (z2) {
        }
        this.f21442a.accept((n5) obj);
    }

    @Override // j$.util.stream.g9
    public final long h() {
        return this.b;
    }
}
