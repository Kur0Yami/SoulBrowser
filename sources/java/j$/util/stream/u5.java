package j$.util.stream;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class u5 extends g5 {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f21497c;
    public final /* synthetic */ v5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u5(v5 v5Var, n5 n5Var) {
        super(n5Var);
        this.d = v5Var;
        this.b = v5Var.t;
        long j = v5Var.u;
        this.f21497c = j < 0 ? LongCompanionObject.MAX_VALUE : j;
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void c(long j) {
        this.f21426a.c(y5.a(j, this.d.t, this.f21497c));
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.f21497c;
            if (j2 > 0) {
                this.f21497c = j2 - 1;
                this.f21426a.accept(d);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final boolean e() {
        return this.f21497c == 0 || this.f21426a.e();
    }
}
