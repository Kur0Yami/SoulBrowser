package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {

    /* renamed from: a, reason: collision with root package name */
    public Impl f809a;

    /* loaded from: classes.dex */
    public static class Impl {

        /* renamed from: a, reason: collision with root package name */
        public final int f812a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public final Interpolator f813c;
        public final long d;

        public Impl(int i, Interpolator interpolator, long j) {
            this.f812a = i;
            this.f813c = interpolator;
            this.d = j;
        }

        public long a() {
            return this.d;
        }

        public float b() {
            Interpolator interpolator = this.f813c;
            if (interpolator != null) {
                return interpolator.getInterpolation(this.b);
            }
            return this.b;
        }

        public int c() {
            return this.f812a;
        }

        public void d(float f) {
            this.b = f;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl21 extends Impl {
        public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
        public static final FastOutLinearInInterpolator f = new FastOutLinearInInterpolator();
        public static final DecelerateInterpolator g = new DecelerateInterpolator();

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {

            /* renamed from: a, reason: collision with root package name */
            public final Callback f814a;
            public WindowInsetsCompat b;

            public Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                WindowInsetsCompat windowInsetsCompat;
                this.f814a = callback;
                WeakHashMap weakHashMap = ViewCompat.f792a;
                WindowInsetsCompat a2 = ViewCompat.Api23Impl.a(view);
                if (a2 != null) {
                    windowInsetsCompat = new WindowInsetsCompat.Builder(a2).f822a.b();
                } else {
                    windowInsetsCompat = null;
                }
                this.b = windowInsetsCompat;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                Interpolator interpolator;
                if (!view.isLaidOut()) {
                    this.b = WindowInsetsCompat.o(view, windowInsets);
                    return Impl21.i(view, windowInsets);
                }
                final WindowInsetsCompat o = WindowInsetsCompat.o(view, windowInsets);
                WindowInsetsCompat.Impl impl = o.f821a;
                if (this.b == null) {
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    this.b = ViewCompat.Api23Impl.a(view);
                }
                if (this.b == null) {
                    this.b = o;
                    return Impl21.i(view, windowInsets);
                }
                Callback j = Impl21.j(view);
                if (j != null && Objects.equals(j.f811a, windowInsets)) {
                    return Impl21.i(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = this.b;
                int i = 0;
                for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                    if (!impl.g(i2).equals(windowInsetsCompat.f821a.g(i2))) {
                        i |= i2;
                    }
                }
                if (i == 0) {
                    return Impl21.i(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat2 = this.b;
                if ((i & 8) != 0) {
                    if (impl.g(8).d > windowInsetsCompat2.f821a.g(8).d) {
                        interpolator = Impl21.e;
                    } else {
                        interpolator = Impl21.f;
                    }
                } else {
                    interpolator = Impl21.g;
                }
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i, interpolator, 160L);
                windowInsetsAnimationCompat.f809a.d(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.f809a.a());
                Insets g = impl.g(i);
                Insets g2 = windowInsetsCompat2.f821a.g(i);
                int min = Math.min(g.f681a, g2.f681a);
                int i3 = g.b;
                int i4 = g2.b;
                int min2 = Math.min(i3, i4);
                int i5 = g.f682c;
                int i6 = g2.f682c;
                int min3 = Math.min(i5, i6);
                int i7 = g.d;
                final int i8 = i;
                int i9 = g2.d;
                final BoundsCompat boundsCompat = new BoundsCompat(Insets.b(min, min2, min3, Math.min(i7, i9)), Insets.b(Math.max(g.f681a, g2.f681a), Math.max(i3, i4), Math.max(i5, i6), Math.max(i7, i9)));
                Impl21.f(view, windowInsetsAnimationCompat, windowInsets, false);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.this;
                        Impl impl2 = windowInsetsAnimationCompat2.f809a;
                        impl2.d(animatedFraction);
                        WindowInsetsCompat windowInsetsCompat3 = o;
                        WindowInsetsCompat.Impl impl3 = windowInsetsCompat3.f821a;
                        float b = impl2.b();
                        PathInterpolator pathInterpolator = Impl21.e;
                        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat3);
                        int i10 = 1;
                        while (true) {
                            WindowInsetsCompat.BuilderImpl builderImpl = builder.f822a;
                            if (i10 <= 256) {
                                if ((i8 & i10) == 0) {
                                    builderImpl.c(i10, impl3.g(i10));
                                } else {
                                    Insets g3 = impl3.g(i10);
                                    Insets g4 = windowInsetsCompat2.f821a.g(i10);
                                    float f = 1.0f - b;
                                    builderImpl.c(i10, WindowInsetsCompat.k(g3, (int) (((g3.f681a - g4.f681a) * f) + 0.5d), (int) (((g3.b - g4.b) * f) + 0.5d), (int) (((g3.f682c - g4.f682c) * f) + 0.5d), (int) (((g3.d - g4.d) * f) + 0.5d)));
                                }
                                i10 <<= 1;
                            } else {
                                Impl21.g(view, builderImpl.b(), Collections.singletonList(windowInsetsAnimationCompat2));
                                return;
                            }
                        }
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = windowInsetsAnimationCompat;
                        windowInsetsAnimationCompat2.f809a.d(1.0f);
                        Impl21.e(view, windowInsetsAnimationCompat2);
                    }
                });
                OneShotPreDrawListener.a(view, new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Impl21.h(view, windowInsetsAnimationCompat, boundsCompat);
                        duration.start();
                    }
                });
                this.b = o;
                return Impl21.i(view, windowInsets);
            }
        }

        public static void e(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback j = j(view);
            if (j != null) {
                j.a();
                if (j.b == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    e(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        public static void f(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z) {
            Callback j = j(view);
            if (j != null) {
                j.f811a = windowInsets;
                if (!z) {
                    j.b();
                    if (j.b == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    f(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsets, z);
                }
            }
        }

        public static void g(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback j = j(view);
            if (j != null) {
                windowInsetsCompat = j.c(windowInsetsCompat, list);
                if (j.b == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    g(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        public static void h(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback j = j(view);
            if (j != null) {
                j.d(boundsCompat);
                if (j.b == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    h(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        public static WindowInsets i(View view, WindowInsets windowInsets) {
            if (view.getTag(R.id.tag_on_apply_window_listener) != null) {
                return windowInsets;
            }
            return view.onApplyWindowInsets(windowInsets);
        }

        public static Callback j(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).f814a;
            }
            return null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {
        public final WindowInsetsAnimation e;

        @RequiresApi
        /* loaded from: classes.dex */
        public static class ProxyCallback extends WindowInsetsAnimation$Callback {

            /* renamed from: a, reason: collision with root package name */
            public final Callback f819a;
            public List b;

            /* renamed from: c, reason: collision with root package name */
            public ArrayList f820c;
            public final HashMap d;

            public ProxyCallback(Callback callback) {
                super(callback.b);
                this.d = new HashMap();
                this.f819a = callback;
            }

            public final WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) this.d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat == null) {
                    windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(0, null, 0L);
                    if (Build.VERSION.SDK_INT >= 30) {
                        windowInsetsAnimationCompat.f809a = new Impl30(windowInsetsAnimation);
                    }
                    this.d.put(windowInsetsAnimation, windowInsetsAnimationCompat);
                }
                return windowInsetsAnimationCompat;
            }

            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                a(windowInsetsAnimation);
                this.f819a.a();
                this.d.remove(windowInsetsAnimation);
            }

            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                a(windowInsetsAnimation);
                this.f819a.b();
            }

            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.f820c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.f820c = arrayList2;
                    this.b = DesugarCollections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
                    WindowInsetsAnimationCompat a2 = a(windowInsetsAnimation);
                    a2.f809a.d(windowInsetsAnimation.getFraction());
                    this.f820c.add(a2);
                }
                return this.f819a.c(WindowInsetsCompat.o(null, windowInsets), this.b).n();
            }

            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                a(windowInsetsAnimation);
                BoundsCompat d = this.f819a.d(new BoundsCompat(bounds));
                d.getClass();
                g.c();
                return g.a(d.f810a.d(), d.b.d());
            }
        }

        public Impl30(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.e = windowInsetsAnimation;
        }

        public static Insets e(WindowInsetsAnimation.Bounds bounds) {
            return Insets.c(bounds.getUpperBound());
        }

        public static Insets f(WindowInsetsAnimation.Bounds bounds) {
            return Insets.c(bounds.getLowerBound());
        }

        public static void g(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(new ProxyCallback(callback));
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final long a() {
            return this.e.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float b() {
            return this.e.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final int c() {
            return this.e.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final void d(float f) {
            this.e.setFraction(f);
        }
    }

    public WindowInsetsAnimationCompat(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f809a = new Impl30(g.b(i, interpolator, j));
        } else {
            this.f809a = new Impl(i, interpolator, j);
        }
    }

    public final float a() {
        return this.f809a.b();
    }

    public final int b() {
        return this.f809a.c();
    }

    /* loaded from: classes.dex */
    public static final class BoundsCompat {

        /* renamed from: a, reason: collision with root package name */
        public final Insets f810a;
        public final Insets b;

        public BoundsCompat(Insets insets, Insets insets2) {
            this.f810a = insets;
            this.b = insets2;
        }

        public final String toString() {
            return "Bounds{lower=" + this.f810a + " upper=" + this.b + "}";
        }

        public BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.f810a = Impl30.f(bounds);
            this.b = Impl30.e(bounds);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {

        /* renamed from: a, reason: collision with root package name */
        public WindowInsets f811a;
        public final int b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface DispatchMode {
        }

        public Callback(int i) {
            this.b = i;
        }

        public abstract WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list);

        public void a() {
        }

        public void b() {
        }

        public BoundsCompat d(BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }
}
