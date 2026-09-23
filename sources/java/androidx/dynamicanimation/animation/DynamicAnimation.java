package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.AnimationHandler;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.google.android.material.shape.Shapeable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler.AnimationFrameCallback {
    public static final ViewProperty l = new Object();
    public static final ViewProperty m = new Object();
    public static final ViewProperty n = new Object();
    public static final ViewProperty o = new Object();
    public static final ViewProperty p = new Object();
    public static final ViewProperty q = new Object();
    public final Shapeable d;
    public final FloatPropertyCompat e;
    public final float i;

    /* renamed from: a, reason: collision with root package name */
    public float f990a = 0.0f;
    public float b = Float.MAX_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public boolean f991c = false;
    public boolean f = false;
    public final float g = -3.4028235E38f;
    public long h = 0;
    public final ArrayList j = new ArrayList();
    public final ArrayList k = new ArrayList();

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getTranslationX();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setTranslationX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass10 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getY();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$11, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass11 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ViewCompat.q((View) shapeable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ViewCompat.O((View) shapeable, f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$12, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass12 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getAlpha();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setAlpha(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$13, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass13 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getScrollX();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setScrollX((int) f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$14, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass14 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getScrollY();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setScrollY((int) f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$15, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass15 extends FloatPropertyCompat {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            throw null;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            throw null;
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getTranslationY();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setTranslationY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ViewCompat.p((View) shapeable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ViewCompat.M((View) shapeable, f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getScaleX();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setScaleX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getScaleY();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setScaleY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getRotation();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setRotation(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass7 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getRotationX();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setRotationX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$8, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass8 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getRotationY();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setRotationY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$9, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass9 extends ViewProperty {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((View) shapeable).getX();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((View) shapeable).setX(f);
        }
    }

    /* loaded from: classes.dex */
    public static class MassState {

        /* renamed from: a, reason: collision with root package name */
        public float f992a;
        public float b;
    }

    /* loaded from: classes.dex */
    public interface OnAnimationEndListener {
        void a();
    }

    /* loaded from: classes.dex */
    public interface OnAnimationUpdateListener {
        void a();
    }

    /* loaded from: classes.dex */
    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
    }

    public DynamicAnimation(Shapeable shapeable, FloatPropertyCompat floatPropertyCompat) {
        this.d = shapeable;
        this.e = floatPropertyCompat;
        if (floatPropertyCompat != n && floatPropertyCompat != o && floatPropertyCompat != p) {
            if (floatPropertyCompat == q) {
                this.i = 0.00390625f;
                return;
            } else if (floatPropertyCompat != l && floatPropertyCompat != m) {
                this.i = 1.0f;
                return;
            } else {
                this.i = 0.002f;
                return;
            }
        }
        this.i = 0.1f;
    }

    public static AnimationHandler b() {
        ThreadLocal threadLocal = AnimationHandler.i;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler(new AnimationHandler.FrameCallbackScheduler16()));
        }
        return (AnimationHandler) threadLocal.get();
    }

    @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback
    public final boolean a(long j) {
        long j2;
        ArrayList arrayList;
        long j3 = this.h;
        int i = 0;
        if (j3 == 0) {
            this.h = j;
            c(this.b);
            return false;
        }
        long j4 = j - j3;
        this.h = j;
        float f = b().g;
        if (f == 0.0f) {
            j2 = 2147483647L;
        } else {
            j2 = ((float) j4) / f;
        }
        boolean d = d(j2);
        float min = Math.min(this.b, Float.MAX_VALUE);
        this.b = min;
        float max = Math.max(min, this.g);
        this.b = max;
        c(max);
        if (d) {
            this.f = false;
            AnimationHandler b = b();
            b.f985a.remove(this);
            ArrayList arrayList2 = b.b;
            int indexOf = arrayList2.indexOf(this);
            if (indexOf >= 0) {
                arrayList2.set(indexOf, null);
                b.f = true;
            }
            this.h = 0L;
            this.f991c = false;
            while (true) {
                arrayList = this.j;
                if (i >= arrayList.size()) {
                    break;
                }
                if (arrayList.get(i) != null) {
                    ((OnAnimationEndListener) arrayList.get(i)).a();
                }
                i++;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == null) {
                    arrayList.remove(size);
                }
            }
        }
        return d;
    }

    public final void c(float f) {
        this.e.b(this.d, f);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                if (arrayList.get(i) == null) {
                    i++;
                } else {
                    ((OnAnimationUpdateListener) arrayList.get(i)).a();
                    throw null;
                }
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
        }
    }

    public abstract boolean d(long j);
}
