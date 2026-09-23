package j$.util.stream;

import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class j1 implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21440a;
    public final /* synthetic */ p1 b;

    public /* synthetic */ j1(p1 p1Var, int i) {
        this.f21440a = i;
        this.b = p1Var;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f21440a) {
            case 0:
                return new o1(this.b);
            case 1:
                return new o1(this.b);
            default:
                return new o1(this.b);
        }
    }
}
