package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class WindowInsetsCompat {
    public static final WindowInsetsCompat b;

    /* renamed from: a, reason: collision with root package name */
    public final Impl f821a;

    @RequiresApi
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* loaded from: classes.dex */
    public static class Api21ReflectionHolder {
        static {
            try {
                View.class.getDeclaredField("mAttachInfo").setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                cls.getDeclaredField("mStableInsets").setAccessible(true);
                cls.getDeclaredField("mContentInsets").setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class BuilderImpl {

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f823a;
        public Insets[] b;

        public BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        public final void a() {
            Insets[] insetsArr = this.b;
            if (insetsArr != null) {
                Insets insets = insetsArr[0];
                Insets insets2 = insetsArr[1];
                WindowInsetsCompat windowInsetsCompat = this.f823a;
                if (insets2 == null) {
                    insets2 = windowInsetsCompat.f821a.g(2);
                }
                if (insets == null) {
                    insets = windowInsetsCompat.f821a.g(1);
                }
                g(Insets.a(insets, insets2));
                Insets insets3 = this.b[Type.a(16)];
                if (insets3 != null) {
                    f(insets3);
                }
                Insets insets4 = this.b[Type.a(32)];
                if (insets4 != null) {
                    d(insets4);
                }
                Insets insets5 = this.b[Type.a(64)];
                if (insets5 != null) {
                    h(insets5);
                }
            }
        }

        @NonNull
        public WindowInsetsCompat b() {
            a();
            return this.f823a;
        }

        public void c(int i, @NonNull Insets insets) {
            if (this.b == null) {
                this.b = new Insets[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.b[Type.a(i2)] = insets;
                }
            }
        }

        public void d(@NonNull Insets insets) {
        }

        public void e(@NonNull Insets insets) {
        }

        public void f(@NonNull Insets insets) {
        }

        public void g(@NonNull Insets insets) {
        }

        public void h(@NonNull Insets insets) {
        }

        public BuilderImpl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f823a = windowInsetsCompat;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class BuilderImpl30 extends BuilderImpl29 {
        public BuilderImpl30() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void c(int i, @NonNull Insets insets) {
            this.f825c.setInsets(TypeImpl30.a(i), insets.d());
        }

        public BuilderImpl30(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* loaded from: classes.dex */
    public static class Impl {
        public static final WindowInsetsCompat b = new Builder().f822a.b().f821a.a().f821a.b().f821a.c();

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f826a;

        public Impl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f826a = windowInsetsCompat;
        }

        @NonNull
        public WindowInsetsCompat a() {
            return this.f826a;
        }

        @NonNull
        public WindowInsetsCompat b() {
            return this.f826a;
        }

        @NonNull
        public WindowInsetsCompat c() {
            return this.f826a;
        }

        public void d(@NonNull View view) {
        }

        public void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            if (o() == impl.o() && n() == impl.n() && Objects.equals(k(), impl.k()) && Objects.equals(i(), impl.i()) && Objects.equals(f(), impl.f())) {
                return true;
            }
            return false;
        }

        @Nullable
        public DisplayCutoutCompat f() {
            return null;
        }

        @NonNull
        public Insets g(int i) {
            return Insets.e;
        }

        @NonNull
        public Insets h() {
            return k();
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
        }

        @NonNull
        public Insets i() {
            return Insets.e;
        }

        @NonNull
        public Insets j() {
            return k();
        }

        @NonNull
        public Insets k() {
            return Insets.e;
        }

        @NonNull
        public Insets l() {
            return k();
        }

        @NonNull
        public WindowInsetsCompat m(int i, int i2, int i3, int i4) {
            return b;
        }

        public boolean n() {
            return false;
        }

        public boolean o() {
            return false;
        }

        public void p(Insets[] insetsArr) {
        }

        public void q(@NonNull Insets insets) {
        }

        public void r(@Nullable WindowInsetsCompat windowInsetsCompat) {
        }

        public void s(Insets insets) {
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl28 extends Impl21 {
        public Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public WindowInsetsCompat a() {
            return WindowInsetsCompat.o(null, this.f827c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            if (Objects.equals(this.f827c, impl28.f827c) && Objects.equals(this.g, impl28.g)) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @Nullable
        public DisplayCutoutCompat f() {
            DisplayCutout displayCutout = this.f827c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new DisplayCutoutCompat(displayCutout);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.f827c.hashCode();
        }

        public Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl29 {
        public static final WindowInsetsCompat q = WindowInsetsCompat.o(null, WindowInsets.CONSUMED);

        public Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final void d(@NonNull View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets g(int i) {
            return Insets.c(this.f827c.getInsets(TypeImpl30.a(i)));
        }

        public Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }
    }

    /* loaded from: classes.dex */
    public static final class Type {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface InsetsType {
        }

        public static int a(int i) {
            if (i != 1) {
                if (i == 2) {
                    return 1;
                }
                if (i == 4) {
                    return 2;
                }
                if (i != 8) {
                    if (i == 16) {
                        return 4;
                    }
                    if (i != 32) {
                        if (i != 64) {
                            if (i != 128) {
                                if (i == 256) {
                                    return 8;
                                }
                                throw new IllegalArgumentException(android.support.v4.media.a.e(i, "type needs to be >= FIRST and <= LAST, type="));
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 3;
            }
            return 0;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class TypeImpl30 {
        public static int a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 4) {
                                if (i3 != 8) {
                                    if (i3 != 16) {
                                        if (i3 != 32) {
                                            if (i3 != 64) {
                                                if (i3 == 128) {
                                                    statusBars = WindowInsets.Type.displayCutout();
                                                }
                                            } else {
                                                statusBars = WindowInsets.Type.tappableElement();
                                            }
                                        } else {
                                            statusBars = WindowInsets.Type.mandatorySystemGestures();
                                        }
                                    } else {
                                        statusBars = WindowInsets.Type.systemGestures();
                                    }
                                } else {
                                    statusBars = WindowInsets.Type.ime();
                                }
                            } else {
                                statusBars = WindowInsets.Type.captionBar();
                            }
                        } else {
                            statusBars = WindowInsets.Type.navigationBars();
                        }
                    } else {
                        statusBars = WindowInsets.Type.statusBars();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = Impl30.q;
        } else {
            b = Impl.b;
        }
    }

    public WindowInsetsCompat(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f821a = new Impl30(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.f821a = new Impl29(this, windowInsets);
        } else if (i >= 28) {
            this.f821a = new Impl28(this, windowInsets);
        } else {
            this.f821a = new Impl21(this, windowInsets);
        }
    }

    public static Insets k(Insets insets, int i, int i2, int i3, int i4) {
        int max = Math.max(0, insets.f681a - i);
        int max2 = Math.max(0, insets.b - i2);
        int max3 = Math.max(0, insets.f682c - i3);
        int max4 = Math.max(0, insets.d - i4);
        if (max == i && max2 == i2 && max3 == i3 && max4 == i4) {
            return insets;
        }
        return Insets.b(max, max2, max3, max4);
    }

    public static WindowInsetsCompat o(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            WindowInsetsCompat a2 = ViewCompat.Api23Impl.a(view);
            Impl impl = windowInsetsCompat.f821a;
            impl.r(a2);
            impl.d(view.getRootView());
        }
        return windowInsetsCompat;
    }

    public final WindowInsetsCompat a() {
        return this.f821a.a();
    }

    public final WindowInsetsCompat b() {
        return this.f821a.b();
    }

    public final WindowInsetsCompat c() {
        return this.f821a.c();
    }

    public final Insets d(int i) {
        return this.f821a.g(i);
    }

    public final void e() {
        this.f821a.j();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat)) {
            return false;
        }
        return Objects.equals(this.f821a, ((WindowInsetsCompat) obj).f821a);
    }

    public final int f() {
        return this.f821a.k().d;
    }

    public final int g() {
        return this.f821a.k().f681a;
    }

    public final int h() {
        return this.f821a.k().f682c;
    }

    public final int hashCode() {
        Impl impl = this.f821a;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    public final int i() {
        return this.f821a.k().b;
    }

    public final WindowInsetsCompat j(int i, int i2, int i3, int i4) {
        return this.f821a.m(i, i2, i3, i4);
    }

    public final boolean l() {
        return this.f821a.n();
    }

    public final WindowInsetsCompat m(int i, int i2, int i3, int i4) {
        Builder builder = new Builder(this);
        Insets b2 = Insets.b(i, i2, i3, i4);
        BuilderImpl builderImpl = builder.f822a;
        builderImpl.g(b2);
        return builderImpl.b();
    }

    public final WindowInsets n() {
        Impl impl = this.f821a;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).f827c;
        }
        return null;
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class BuilderImpl20 extends BuilderImpl {
        public static Field e = null;
        public static boolean f = false;
        public static Constructor g = null;
        public static boolean h = false;

        /* renamed from: c, reason: collision with root package name */
        public WindowInsets f824c;
        public Insets d;

        public BuilderImpl20() {
            this.f824c = i();
        }

        @Nullable
        private static WindowInsets i() {
            if (!f) {
                try {
                    e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
                }
            }
            if (!h) {
                try {
                    g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
                }
                h = true;
            }
            Constructor constructor = g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e5) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        public WindowInsetsCompat b() {
            a();
            WindowInsetsCompat o = WindowInsetsCompat.o(null, this.f824c);
            Insets[] insetsArr = this.b;
            Impl impl = o.f821a;
            impl.p(insetsArr);
            impl.s(this.d);
            return o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void e(@Nullable Insets insets) {
            this.d = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void g(@NonNull Insets insets) {
            WindowInsets windowInsets = this.f824c;
            if (windowInsets != null) {
                this.f824c = windowInsets.replaceSystemWindowInsets(insets.f681a, insets.b, insets.f682c, insets.d);
            }
        }

        public BuilderImpl20(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.f824c = windowInsetsCompat.n();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class BuilderImpl29 extends BuilderImpl {

        /* renamed from: c, reason: collision with root package name */
        public final WindowInsets.Builder f825c;

        public BuilderImpl29() {
            this.f825c = android.support.v4.media.session.a.b();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        public WindowInsetsCompat b() {
            a();
            WindowInsetsCompat o = WindowInsetsCompat.o(null, this.f825c.build());
            o.f821a.p(this.b);
            return o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void d(@NonNull Insets insets) {
            this.f825c.setMandatorySystemGestureInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void e(@NonNull Insets insets) {
            this.f825c.setStableInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void f(@NonNull Insets insets) {
            this.f825c.setSystemGestureInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void g(@NonNull Insets insets) {
            this.f825c.setSystemWindowInsets(insets.d());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void h(@NonNull Insets insets) {
            this.f825c.setTappableElementInsets(insets.d());
        }

        public BuilderImpl29(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets.Builder b;
            WindowInsets n = windowInsetsCompat.n();
            if (n != null) {
                b = android.support.v4.media.session.a.c(n);
            } else {
                b = android.support.v4.media.session.a.b();
            }
            this.f825c = b;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl21 extends Impl20 {
        public Insets m;

        public Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.m = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public WindowInsetsCompat b() {
            return WindowInsetsCompat.o(null, this.f827c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public WindowInsetsCompat c() {
            return WindowInsetsCompat.o(null, this.f827c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public final Insets i() {
            if (this.m == null) {
                WindowInsets windowInsets = this.f827c;
                this.m = Insets.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.m;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean n() {
            return this.f827c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void s(@Nullable Insets insets) {
            this.m = insets;
        }

        public Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.m = null;
            this.m = impl21.m;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {
        public static boolean h = false;
        public static Method i;
        public static Class j;
        public static Field k;
        public static Field l;

        /* renamed from: c, reason: collision with root package name */
        public final WindowInsets f827c;
        public Insets[] d;
        public Insets e;
        public WindowInsetsCompat f;
        public Insets g;

        public Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.e = null;
            this.f827c = windowInsets;
        }

        @NonNull
        @SuppressLint({"WrongConstant"})
        private Insets t(int i2, boolean z) {
            Insets insets = Insets.e;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    insets = Insets.a(insets, u(i3, z));
                }
            }
            return insets;
        }

        private Insets v() {
            WindowInsetsCompat windowInsetsCompat = this.f;
            if (windowInsetsCompat != null) {
                return windowInsetsCompat.f821a.i();
            }
            return Insets.e;
        }

        @Nullable
        private Insets w(@NonNull View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!h) {
                    x();
                }
                Method method = i;
                if (method != null && j != null && k != null) {
                    try {
                        Object invoke = method.invoke(view, null);
                        if (invoke == null) {
                            Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                            return null;
                        }
                        Rect rect = (Rect) k.get(l.get(invoke));
                        if (rect != null) {
                            return Insets.b(rect.left, rect.top, rect.right, rect.bottom);
                        }
                    } catch (ReflectiveOperationException e) {
                        Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                    }
                }
                return null;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        private static void x() {
            try {
                i = View.class.getDeclaredMethod("getViewRootImpl", null);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                j = cls;
                k = cls.getDeclaredField("mVisibleInsets");
                l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                k.setAccessible(true);
                l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            h = true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void d(@NonNull View view) {
            Insets w = w(view);
            if (w == null) {
                w = Insets.e;
            }
            q(w);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.f821a.r(this.f);
            windowInsetsCompat.f821a.q(this.g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.g, ((Impl20) obj).g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets g(int i2) {
            return t(i2, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public final Insets k() {
            if (this.e == null) {
                WindowInsets windowInsets = this.f827c;
                this.e = Insets.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public WindowInsetsCompat m(int i2, int i3, int i4, int i5) {
            Builder builder = new Builder(WindowInsetsCompat.o(null, this.f827c));
            builder.b(WindowInsetsCompat.k(k(), i2, i3, i4, i5));
            Insets k2 = WindowInsetsCompat.k(i(), i2, i3, i4, i5);
            BuilderImpl builderImpl = builder.f822a;
            builderImpl.e(k2);
            return builderImpl.b();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean o() {
            return this.f827c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void p(Insets[] insetsArr) {
            this.d = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void q(@NonNull Insets insets) {
            this.g = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void r(@Nullable WindowInsetsCompat windowInsetsCompat) {
            this.f = windowInsetsCompat;
        }

        @NonNull
        public Insets u(int i2, boolean z) {
            int i3;
            DisplayCutoutCompat f;
            int i4;
            int i5;
            int i6;
            int i7 = 0;
            if (i2 != 1) {
                Insets insets = null;
                if (i2 != 2) {
                    Insets insets2 = Insets.e;
                    if (i2 != 8) {
                        if (i2 != 16) {
                            if (i2 != 32) {
                                if (i2 != 64) {
                                    if (i2 == 128) {
                                        WindowInsetsCompat windowInsetsCompat = this.f;
                                        if (windowInsetsCompat != null) {
                                            f = windowInsetsCompat.f821a.f();
                                        } else {
                                            f = f();
                                        }
                                        if (f != null) {
                                            int i8 = Build.VERSION.SDK_INT;
                                            if (i8 >= 28) {
                                                i4 = DisplayCutoutCompat.Api28Impl.b(f.f774a);
                                            } else {
                                                i4 = 0;
                                            }
                                            if (i8 >= 28) {
                                                i5 = DisplayCutoutCompat.Api28Impl.d(f.f774a);
                                            } else {
                                                i5 = 0;
                                            }
                                            if (i8 >= 28) {
                                                i6 = DisplayCutoutCompat.Api28Impl.c(f.f774a);
                                            } else {
                                                i6 = 0;
                                            }
                                            if (i8 >= 28) {
                                                i7 = DisplayCutoutCompat.Api28Impl.a(f.f774a);
                                            }
                                            return Insets.b(i4, i5, i6, i7);
                                        }
                                    }
                                } else {
                                    return l();
                                }
                            } else {
                                return h();
                            }
                        } else {
                            return j();
                        }
                    } else {
                        Insets[] insetsArr = this.d;
                        if (insetsArr != null) {
                            insets = insetsArr[Type.a(8)];
                        }
                        if (insets != null) {
                            return insets;
                        }
                        Insets k2 = k();
                        Insets v = v();
                        int i9 = k2.d;
                        if (i9 > v.d) {
                            return Insets.b(0, 0, 0, i9);
                        }
                        Insets insets3 = this.g;
                        if (insets3 != null && !insets3.equals(insets2) && (i3 = this.g.d) > v.d) {
                            return Insets.b(0, 0, 0, i3);
                        }
                    }
                    return insets2;
                }
                if (z) {
                    Insets v2 = v();
                    Insets i10 = i();
                    return Insets.b(Math.max(v2.f681a, i10.f681a), 0, Math.max(v2.f682c, i10.f682c), Math.max(v2.d, i10.d));
                }
                Insets k3 = k();
                WindowInsetsCompat windowInsetsCompat2 = this.f;
                if (windowInsetsCompat2 != null) {
                    insets = windowInsetsCompat2.f821a.i();
                }
                int i11 = k3.d;
                if (insets != null) {
                    i11 = Math.min(i11, insets.d);
                }
                return Insets.b(k3.f681a, 0, k3.f682c, i11);
            }
            if (z) {
                return Insets.b(0, Math.max(v().b, k().b), 0, 0);
            }
            return Insets.b(0, k().b, 0, 0);
        }

        public Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.f827c));
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl29 extends Impl28 {
        public Insets n;
        public Insets o;
        public Insets p;

        public Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.n = null;
            this.o = null;
            this.p = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets h() {
            if (this.o == null) {
                this.o = Insets.c(this.f827c.getMandatorySystemGestureInsets());
            }
            return this.o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets j() {
            if (this.n == null) {
                this.n = Insets.c(this.f827c.getSystemGestureInsets());
            }
            return this.n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets l() {
            if (this.p == null) {
                this.p = Insets.c(this.f827c.getTappableElementInsets());
            }
            return this.p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public WindowInsetsCompat m(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.o(null, this.f827c.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public void s(@Nullable Insets insets) {
        }

        public Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.n = null;
            this.o = null;
            this.p = null;
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final BuilderImpl f822a;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f822a = new BuilderImpl30();
            } else if (i >= 29) {
                this.f822a = new BuilderImpl29();
            } else {
                this.f822a = new BuilderImpl20();
            }
        }

        public final WindowInsetsCompat a() {
            return this.f822a.b();
        }

        public final void b(Insets insets) {
            this.f822a.g(insets);
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f822a = new BuilderImpl30(windowInsetsCompat);
            } else if (i >= 29) {
                this.f822a = new BuilderImpl29(windowInsetsCompat);
            } else {
                this.f822a = new BuilderImpl20(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            Impl impl = windowInsetsCompat.f821a;
            int i = Build.VERSION.SDK_INT;
            if (i >= 30 && (impl instanceof Impl30)) {
                this.f821a = new Impl30(this, (Impl30) impl);
            } else if (i >= 29 && (impl instanceof Impl29)) {
                this.f821a = new Impl29(this, (Impl29) impl);
            } else if (i >= 28 && (impl instanceof Impl28)) {
                this.f821a = new Impl28(this, (Impl28) impl);
            } else if (impl instanceof Impl21) {
                this.f821a = new Impl21(this, (Impl21) impl);
            } else if (impl instanceof Impl20) {
                this.f821a = new Impl20(this, (Impl20) impl);
            } else {
                this.f821a = new Impl(this);
            }
            impl.e(this);
            return;
        }
        this.f821a = new Impl(this);
    }
}
