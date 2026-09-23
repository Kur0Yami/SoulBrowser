package j$.util.stream;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class q5 extends h5 {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f21482c;
    public final /* synthetic */ r5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q5(r5 r5Var, n5 n5Var) {
        super(n5Var);
        this.d = r5Var;
        this.b = r5Var.t;
        long j = r5Var.u;
        this.f21482c = j < 0 ? LongCompanionObject.MAX_VALUE : j;
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void c(long j) {
        this.f21430a.c(y5.a(j, this.d.t, this.f21482c));
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.f21482c;
            if (j2 > 0) {
                this.f21482c = j2 - 1;
                this.f21430a.accept(i);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final boolean e() {
        return this.f21482c == 0 || this.f21430a.e();
    }
}
