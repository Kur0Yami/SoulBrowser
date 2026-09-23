package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Impl f828a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {

        /* renamed from: a, reason: collision with root package name */
        public final Window f829a;
        public final SoftwareKeyboardControllerCompat b;

        public Impl20(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f829a = window;
            this.b = softwareKeyboardControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 == 8) {
                                this.b.f786a.a();
                            }
                        } else {
                            h(2);
                        }
                    } else {
                        h(4);
                    }
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void f() {
            this.f829a.getDecorView().setTag(356039078, 2);
            i(2048);
            h(ConstantsKt.DEFAULT_BLOCK_SIZE);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void g(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 == 8) {
                                this.b.f786a.b();
                            }
                        } else {
                            i(2);
                        }
                    } else {
                        i(4);
                        this.f829a.clearFlags(1024);
                    }
                }
            }
        }

        public final void h(int i) {
            View decorView = this.f829a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public final void i(int i) {
            View decorView = this.f829a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl23 extends Impl20 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean c() {
            if ((this.f829a.getDecorView().getSystemUiVisibility() & 8192) != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void e(boolean z) {
            if (z) {
                Window window = this.f829a;
                window.clearFlags(67108864);
                window.addFlags(IntCompanionObject.MIN_VALUE);
                h(8192);
                return;
            }
            i(8192);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl26 extends Impl23 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean b() {
            if ((this.f829a.getDecorView().getSystemUiVisibility() & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d(boolean z) {
            if (z) {
                Window window = this.f829a;
                window.clearFlags(134217728);
                window.addFlags(IntCompanionObject.MIN_VALUE);
                h(16);
                return;
            }
            i(16);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsController f830a;
        public final SoftwareKeyboardControllerCompat b;

        /* renamed from: c, reason: collision with root package name */
        public final Window f831c;

        /* renamed from: androidx.core.view.WindowInsetsControllerCompat$Impl30$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements WindowInsetsAnimationControlListener {
            public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
                throw null;
            }

            public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
                throw null;
            }

            public final void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i) {
                throw null;
            }
        }

        public Impl30(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            WindowInsetsController insetsController = window.getInsetsController();
            new SimpleArrayMap(0);
            this.f830a = insetsController;
            this.b = softwareKeyboardControllerCompat;
            this.f831c = window;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a(int i) {
            if ((i & 8) != 0) {
                this.b.f786a.a();
            }
            this.f830a.hide(i & (-9));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean b() {
            this.f830a.setSystemBarsAppearance(0, 0);
            if ((this.f830a.getSystemBarsAppearance() & 16) == 0) {
                return false;
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean c() {
            this.f830a.setSystemBarsAppearance(0, 0);
            if ((this.f830a.getSystemBarsAppearance() & 8) == 0) {
                return false;
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d(boolean z) {
            Window window = this.f831c;
            if (z) {
                if (window != null) {
                    h(16);
                }
                this.f830a.setSystemBarsAppearance(16, 16);
            } else {
                if (window != null) {
                    i(16);
                }
                this.f830a.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void e(boolean z) {
            Window window = this.f831c;
            if (z) {
                if (window != null) {
                    h(8192);
                }
                this.f830a.setSystemBarsAppearance(8, 8);
            } else {
                if (window != null) {
                    i(8192);
                }
                this.f830a.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void f() {
            Window window = this.f831c;
            if (window != null) {
                window.getDecorView().setTag(356039078, 2);
                i(2048);
                h(ConstantsKt.DEFAULT_BLOCK_SIZE);
                return;
            }
            this.f830a.setSystemBarsBehavior(2);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void g(int i) {
            if ((i & 8) != 0) {
                this.b.f786a.b();
            }
            this.f830a.show(i & (-9));
        }

        public final void h(int i) {
            View decorView = this.f831c.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public final void i(int i) {
            View decorView = this.f831c.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl31 extends Impl30 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void f() {
            this.f830a.setSystemBarsBehavior(2);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl35 extends Impl31 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean b() {
            if ((this.f830a.getSystemBarsAppearance() & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean c() {
            if ((this.f830a.getSystemBarsAppearance() & 8) != 0) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface OnControllableInsetsChangedListener {
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat = new SoftwareKeyboardControllerCompat(view);
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            this.f828a = new Impl30(window, softwareKeyboardControllerCompat);
            return;
        }
        if (i >= 30) {
            this.f828a = new Impl30(window, softwareKeyboardControllerCompat);
        } else if (i >= 26) {
            this.f828a = new Impl20(window, softwareKeyboardControllerCompat);
        } else {
            this.f828a = new Impl20(window, softwareKeyboardControllerCompat);
        }
    }

    public final void a(int i) {
        this.f828a.a(i);
    }

    public final boolean b() {
        return this.f828a.b();
    }

    public final boolean c() {
        return this.f828a.c();
    }

    public final void d(boolean z) {
        this.f828a.d(z);
    }

    public final void e(boolean z) {
        this.f828a.e(z);
    }

    public final void f() {
        this.f828a.f();
    }

    public final void g(int i) {
        this.f828a.g(i);
    }

    /* loaded from: classes.dex */
    public static class Impl {
        public void a(int i) {
        }

        public boolean b() {
            return false;
        }

        public boolean c() {
            return false;
        }

        public void d(boolean z) {
        }

        public void e(boolean z) {
        }

        public void g(int i) {
        }

        public void f() {
        }
    }
}
