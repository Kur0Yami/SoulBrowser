package j$.util;

/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: c, reason: collision with root package name */
    public static final e0 f21332c = new e0();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21333a;
    public final long b;

    public e0() {
        this.f21333a = false;
        this.b = 0L;
    }

    public e0(long j) {
        this.f21333a = true;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        boolean z = e0Var.f21333a;
        boolean z2 = this.f21333a;
        return (z2 && z) ? this.b == e0Var.b : z2 == z;
    }

    public final int hashCode() {
        if (!this.f21333a) {
            return 0;
        }
        long j = this.b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (this.f21333a) {
            return "OptionalLong[" + this.b + "]";
        }
        return "OptionalLong.empty";
    }
}
