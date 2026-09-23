package j$.util;

/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: c, reason: collision with root package name */
    public static final d0 f21328c = new d0();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21329a;
    public final int b;

    public d0() {
        this.f21329a = false;
        this.b = 0;
    }

    public d0(int i) {
        this.f21329a = true;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        boolean z = d0Var.f21329a;
        boolean z2 = this.f21329a;
        return (z2 && z) ? this.b == d0Var.b : z2 == z;
    }

    public final int hashCode() {
        if (this.f21329a) {
            return this.b;
        }
        return 0;
    }

    public final String toString() {
        if (this.f21329a) {
            return "OptionalInt[" + this.b + "]";
        }
        return "OptionalInt.empty";
    }
}
