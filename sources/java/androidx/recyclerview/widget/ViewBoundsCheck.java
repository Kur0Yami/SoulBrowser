package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
class ViewBoundsCheck {

    /* renamed from: a, reason: collision with root package name */
    public final Callback f1602a;
    public final BoundFlags b;

    /* loaded from: classes.dex */
    public static class BoundFlags {

        /* renamed from: a, reason: collision with root package name */
        public int f1603a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1604c;
        public int d;
        public int e;

        public final boolean a() {
            int i;
            int i2;
            int i3;
            int i4 = this.f1603a;
            int i5 = 2;
            if ((i4 & 7) != 0) {
                int i6 = this.d;
                int i7 = this.b;
                if (i6 > i7) {
                    i3 = 1;
                } else if (i6 == i7) {
                    i3 = 2;
                } else {
                    i3 = 4;
                }
                if ((i3 & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 112) != 0) {
                int i8 = this.d;
                int i9 = this.f1604c;
                if (i8 > i9) {
                    i2 = 1;
                } else if (i8 == i9) {
                    i2 = 2;
                } else {
                    i2 = 4;
                }
                if (((i2 << 4) & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 1792) != 0) {
                int i10 = this.e;
                int i11 = this.b;
                if (i10 > i11) {
                    i = 1;
                } else if (i10 == i11) {
                    i = 2;
                } else {
                    i = 4;
                }
                if (((i << 8) & i4) == 0) {
                    return false;
                }
            }
            if ((i4 & 28672) != 0) {
                int i12 = this.e;
                int i13 = this.f1604c;
                if (i12 > i13) {
                    i5 = 1;
                } else if (i12 != i13) {
                    i5 = 4;
                }
                if ((i4 & (i5 << 12)) == 0) {
                    return false;
                }
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
        int a(View view);

        int b();

        int c();

        View d(int i);

        int e(View view);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ViewBounds {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags] */
    public ViewBoundsCheck(Callback callback) {
        this.f1602a = callback;
        ?? obj = new Object();
        obj.f1603a = 0;
        this.b = obj;
    }

    public final View a(int i, int i2, int i3, int i4) {
        int i5;
        Callback callback = this.f1602a;
        int b = callback.b();
        int c2 = callback.c();
        if (i2 > i) {
            i5 = 1;
        } else {
            i5 = -1;
        }
        View view = null;
        while (i != i2) {
            View d = callback.d(i);
            int a2 = callback.a(d);
            int e = callback.e(d);
            BoundFlags boundFlags = this.b;
            boundFlags.b = b;
            boundFlags.f1604c = c2;
            boundFlags.d = a2;
            boundFlags.e = e;
            if (i3 != 0) {
                boundFlags.f1603a = i3;
                if (boundFlags.a()) {
                    return d;
                }
            }
            if (i4 != 0) {
                boundFlags.f1603a = i4;
                if (boundFlags.a()) {
                    view = d;
                }
            }
            i += i5;
        }
        return view;
    }

    public final boolean b(View view) {
        Callback callback = this.f1602a;
        int b = callback.b();
        int c2 = callback.c();
        int a2 = callback.a(view);
        int e = callback.e(view);
        BoundFlags boundFlags = this.b;
        boundFlags.b = b;
        boundFlags.f1604c = c2;
        boundFlags.d = a2;
        boundFlags.e = e;
        boundFlags.f1603a = 24579;
        return boundFlags.a();
    }
}
