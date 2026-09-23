package j$.util.stream;

import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class k1 extends o1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p1 f21446c;
    public final /* synthetic */ Predicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1(p1 p1Var, Predicate predicate) {
        super(p1Var);
        this.f21446c = p1Var;
        this.d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f21466a) {
            return;
        }
        boolean test = this.d.test(obj);
        p1 p1Var = this.f21446c;
        if (test == p1Var.f21474a) {
            this.f21466a = true;
            this.b = p1Var.b;
        }
    }
}
