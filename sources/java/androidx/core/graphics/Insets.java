package androidx.core.graphics;

import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class Insets {
    public static final Insets e = new Insets(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f681a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f682c;
    public final int d;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static android.graphics.Insets a(int i, int i2, int i3, int i4) {
            return android.graphics.Insets.of(i, i2, i3, i4);
        }
    }

    public Insets(int i, int i2, int i3, int i4) {
        this.f681a = i;
        this.b = i2;
        this.f682c = i3;
        this.d = i4;
    }

    public static Insets a(Insets insets, Insets insets2) {
        return b(Math.max(insets.f681a, insets2.f681a), Math.max(insets.b, insets2.b), Math.max(insets.f682c, insets2.f682c), Math.max(insets.d, insets2.d));
    }

    public static Insets b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return e;
        }
        return new Insets(i, i2, i3, i4);
    }

    public static Insets c(android.graphics.Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return b(i, i2, i3, i4);
    }

    public final android.graphics.Insets d() {
        return Api29Impl.a(this.f681a, this.b, this.f682c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        if (this.d == insets.d && this.f681a == insets.f681a && this.f682c == insets.f682c && this.b == insets.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f681a * 31) + this.b) * 31) + this.f682c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.f681a + ", top=" + this.b + ", right=" + this.f682c + ", bottom=" + this.d + '}';
    }
}
