package androidx.work.impl.constraints;

import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public class NetworkState {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1904a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1905c;
    public boolean d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        if (this.f1904a == networkState.f1904a && this.b == networkState.b && this.f1905c == networkState.f1905c && this.d == networkState.d) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final int hashCode() {
        ?? r0 = this.f1904a;
        int i = r0;
        if (this.b) {
            i = r0 + 16;
        }
        int i2 = i;
        if (this.f1905c) {
            i2 = i + 256;
        }
        if (this.d) {
            return i2 + ConstantsKt.DEFAULT_BLOCK_SIZE;
        }
        return i2;
    }

    public final String toString() {
        return "[ Connected=" + this.f1904a + " Validated=" + this.b + " Metered=" + this.f1905c + " NotRoaming=" + this.d + " ]";
    }
}
