package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes2.dex */
public final class f0 extends g0 {

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21413c;
    public static final b0 d;

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f21421a) {
            return Optional.of(this.b);
        }
        return null;
    }

    static {
        d7 d7Var = d7.REFERENCE;
        f21413c = new b0(true, d7Var, Optional.empty(), new m(15), new m(16));
        d = new b0(false, d7Var, Optional.empty(), new m(15), new m(16));
    }
}
