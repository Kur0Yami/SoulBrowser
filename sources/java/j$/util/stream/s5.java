package j$.util.stream;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class s5 extends i5 {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f21489c;
    public final /* synthetic */ t5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s5(t5 t5Var, n5 n5Var) {
        super(n5Var);
        this.d = t5Var;
        this.b = t5Var.t;
        long j = t5Var.u;
        this.f21489c = j < 0 ? LongCompanionObject.MAX_VALUE : j;
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void c(long j) {
        this.f21437a.c(y5.a(j, this.d.t, this.f21489c));
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        long j2 = this.b;
        if (j2 == 0) {
            long j3 = this.f21489c;
            if (j3 > 0) {
                this.f21489c = j3 - 1;
                this.f21437a.accept(j);
                return;
            }
            return;
        }
        this.b = j2 - 1;
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final boolean e() {
        return this.f21489c == 0 || this.f21437a.e();
    }
}
