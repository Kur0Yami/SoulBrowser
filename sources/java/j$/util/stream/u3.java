package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public abstract class u3 extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public final c2 f21496a;
    public final int b;

    public abstract void a();

    public abstract u3 b(int i, int i2);

    public u3(c2 c2Var) {
        this.f21496a = c2Var;
        this.b = 0;
    }

    public u3(u3 u3Var, c2 c2Var, int i) {
        super(u3Var);
        this.f21496a = c2Var;
        this.b = i;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        u3 u3Var = this;
        while (u3Var.f21496a.o() != 0) {
            u3Var.setPendingCount(u3Var.f21496a.o() - 1);
            int i = 0;
            int i2 = 0;
            while (i < u3Var.f21496a.o() - 1) {
                u3 b = u3Var.b(i, u3Var.b + i2);
                i2 = (int) (b.f21496a.count() + i2);
                b.fork();
                i++;
            }
            u3Var = u3Var.b(i, u3Var.b + i2);
        }
        u3Var.a();
        u3Var.propagateCompletion();
    }
}
