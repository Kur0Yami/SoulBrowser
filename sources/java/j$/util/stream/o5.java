package j$.util.stream;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class o5 extends j5 {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f21470c;
    public final /* synthetic */ p5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o5(p5 p5Var, n5 n5Var) {
        super(n5Var);
        this.d = p5Var;
        this.b = p5Var.t;
        long j = p5Var.u;
        this.f21470c = j < 0 ? LongCompanionObject.MAX_VALUE : j;
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void c(long j) {
        this.f21442a.c(y5.a(j, this.d.t, this.f21470c));
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.f21470c;
            if (j2 > 0) {
                this.f21470c = j2 - 1;
                this.f21442a.accept((n5) obj);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final boolean e() {
        return this.f21470c == 0 || this.f21442a.e();
    }
}
