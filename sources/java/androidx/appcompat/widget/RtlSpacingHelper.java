package androidx.appcompat.widget;

/* loaded from: classes.dex */
class RtlSpacingHelper {

    /* renamed from: a, reason: collision with root package name */
    public int f316a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f317c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;

    public final void a(int i, int i2) {
        this.f317c = i;
        this.d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f316a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f316a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.b = i2;
        }
    }
}
