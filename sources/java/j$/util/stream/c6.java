package j$.util.stream;

import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class c6 extends j5 {
    public final Comparator b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21393c;

    public c6(n5 n5Var, Comparator comparator) {
        super(n5Var);
        this.b = comparator;
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final boolean e() {
        this.f21393c = true;
        return false;
    }
}
