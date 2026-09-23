package j$.util;

/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: c, reason: collision with root package name */
    public static final c0 f21301c = new c0();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21302a;
    public final double b;

    public c0() {
        this.f21302a = false;
        this.b = Double.NaN;
    }

    public c0(double d) {
        this.f21302a = true;
        this.b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        boolean z = c0Var.f21302a;
        boolean z2 = this.f21302a;
        return (z2 && z) ? Double.compare(this.b, c0Var.b) == 0 : z2 == z;
    }

    public final int hashCode() {
        if (!this.f21302a) {
            return 0;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.b);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final String toString() {
        if (this.f21302a) {
            return "OptionalDouble[" + this.b + "]";
        }
        return "OptionalDouble.empty";
    }
}
