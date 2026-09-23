package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final Runnable B;

    /* renamed from: a, reason: collision with root package name */
    public final int f1516a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f1517c;
    public final Drawable d;
    public final int e;
    public final int f;
    public final StateListDrawable g;
    public final Drawable h;
    public final int i;
    public final int j;
    public int k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public final RecyclerView s;
    public final ValueAnimator z;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];

    /* loaded from: classes.dex */
    public class AnimatorListener extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1520a = false;

        public AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f1520a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f1520a) {
                this.f1520a = false;
                return;
            }
            FastScroller fastScroller = FastScroller.this;
            if (((Float) fastScroller.z.getAnimatedValue()).floatValue() == 0.0f) {
                fastScroller.A = 0;
                fastScroller.l(0);
            } else {
                fastScroller.A = 2;
                fastScroller.s.invalidate();
            }
        }
    }

    /* loaded from: classes.dex */
    public class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        public AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller fastScroller = FastScroller.this;
            fastScroller.f1517c.setAlpha(floatValue);
            fastScroller.d.setAlpha(floatValue);
            fastScroller.s.invalidate();
        }
    }

    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = ofFloat;
        this.A = 0;
        Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public final void run() {
                FastScroller fastScroller = FastScroller.this;
                ValueAnimator valueAnimator = fastScroller.z;
                int i4 = fastScroller.A;
                if (i4 != 1) {
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    valueAnimator.cancel();
                }
                fastScroller.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
            }
        };
        this.B = runnable;
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView2, int i4, int i5) {
                boolean z;
                boolean z2;
                int computeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                FastScroller fastScroller = FastScroller.this;
                int i6 = fastScroller.f1516a;
                int computeVerticalScrollRange = fastScroller.s.computeVerticalScrollRange();
                int i7 = fastScroller.r;
                if (computeVerticalScrollRange - i7 > 0 && i7 >= i6) {
                    z = true;
                } else {
                    z = false;
                }
                fastScroller.t = z;
                int computeHorizontalScrollRange = fastScroller.s.computeHorizontalScrollRange();
                int i8 = fastScroller.q;
                if (computeHorizontalScrollRange - i8 > 0 && i8 >= i6) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                fastScroller.u = z2;
                boolean z3 = fastScroller.t;
                if (!z3 && !z2) {
                    if (fastScroller.v != 0) {
                        fastScroller.l(0);
                        return;
                    }
                    return;
                }
                if (z3) {
                    float f = i7;
                    fastScroller.l = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
                    fastScroller.k = Math.min(i7, (i7 * i7) / computeVerticalScrollRange);
                }
                if (fastScroller.u) {
                    float f2 = computeHorizontalScrollOffset;
                    float f3 = i8;
                    fastScroller.o = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
                    fastScroller.n = Math.min(i8, (i8 * i8) / computeHorizontalScrollRange);
                }
                int i9 = fastScroller.v;
                if (i9 != 0 && i9 != 1) {
                    return;
                }
                fastScroller.l(1);
            }
        };
        this.f1517c = stateListDrawable;
        this.d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f1516a = i2;
        this.b = i3;
        stateListDrawable.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
        drawable.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
        ofFloat.addListener(new AnimatorListener());
        ofFloat.addUpdateListener(new AnimatorUpdater());
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.d0(this);
            RecyclerView recyclerView3 = this.s;
            recyclerView3.v.remove(this);
            if (recyclerView3.w == this) {
                recyclerView3.w = null;
            }
            ArrayList arrayList = this.s.o0;
            if (arrayList != null) {
                arrayList.remove(onScrollListener);
            }
            this.s.removeCallbacks(runnable);
        }
        this.s = recyclerView;
        recyclerView.i(this);
        this.s.v.add(this);
        this.s.j(onScrollListener);
    }

    public static int k(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f2 - f) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final void a(MotionEvent motionEvent) {
        if (this.v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean j = j(motionEvent.getX(), motionEvent.getY());
                boolean i = i(motionEvent.getX(), motionEvent.getY());
                if (j || i) {
                    if (i) {
                        this.w = 1;
                        this.p = (int) motionEvent.getX();
                    } else if (j) {
                        this.w = 2;
                        this.m = (int) motionEvent.getY();
                    }
                    l(2);
                    return;
                }
                return;
            }
            if (motionEvent.getAction() == 1 && this.v == 2) {
                this.m = 0.0f;
                this.p = 0.0f;
                l(1);
                this.w = 0;
                return;
            }
            if (motionEvent.getAction() == 2 && this.v == 2) {
                m();
                int i2 = this.w;
                int i3 = this.b;
                if (i2 == 1) {
                    float x = motionEvent.getX();
                    int[] iArr = this.y;
                    iArr[0] = i3;
                    int i4 = this.q - i3;
                    iArr[1] = i4;
                    float max = Math.max(i3, Math.min(i4, x));
                    if (Math.abs(this.o - max) >= 2.0f) {
                        int k = k(this.p, max, iArr, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
                        if (k != 0) {
                            this.s.scrollBy(k, 0);
                        }
                        this.p = max;
                    }
                }
                if (this.w == 2) {
                    float y = motionEvent.getY();
                    int[] iArr2 = this.x;
                    iArr2[0] = i3;
                    int i5 = this.r - i3;
                    iArr2[1] = i5;
                    float max2 = Math.max(i3, Math.min(i5, y));
                    if (Math.abs(this.l - max2) >= 2.0f) {
                        int k2 = k(this.m, max2, iArr2, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
                        if (k2 != 0) {
                            this.s.scrollBy(0, k2);
                        }
                        this.m = max2;
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final boolean d(MotionEvent motionEvent) {
        int i = this.v;
        if (i == 1) {
            boolean j = j(motionEvent.getX(), motionEvent.getY());
            boolean i2 = i(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0) {
                if (j || i2) {
                    if (i2) {
                        this.w = 1;
                        this.p = (int) motionEvent.getX();
                    } else if (j) {
                        this.w = 2;
                        this.m = (int) motionEvent.getY();
                    }
                    l(2);
                    return true;
                }
                return false;
            }
            return false;
        }
        if (i == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final void e(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        int i = this.q;
        RecyclerView recyclerView2 = this.s;
        if (i == recyclerView2.getWidth() && this.r == recyclerView2.getHeight()) {
            if (this.A != 0) {
                if (this.t) {
                    int i2 = this.q;
                    int i3 = this.e;
                    int i4 = i2 - i3;
                    int i5 = this.l;
                    int i6 = this.k;
                    int i7 = i5 - (i6 / 2);
                    StateListDrawable stateListDrawable = this.f1517c;
                    stateListDrawable.setBounds(0, 0, i3, i6);
                    int i8 = this.f;
                    int i9 = this.r;
                    Drawable drawable = this.d;
                    drawable.setBounds(0, 0, i8, i9);
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    if (recyclerView2.getLayoutDirection() == 1) {
                        drawable.draw(canvas);
                        canvas.translate(i3, i7);
                        canvas.scale(-1.0f, 1.0f);
                        stateListDrawable.draw(canvas);
                        canvas.scale(-1.0f, 1.0f);
                        canvas.translate(-i3, -i7);
                    } else {
                        canvas.translate(i4, 0.0f);
                        drawable.draw(canvas);
                        canvas.translate(0.0f, i7);
                        stateListDrawable.draw(canvas);
                        canvas.translate(-i4, -i7);
                    }
                }
                if (this.u) {
                    int i10 = this.r;
                    int i11 = this.i;
                    int i12 = i10 - i11;
                    int i13 = this.o;
                    int i14 = this.n;
                    int i15 = i13 - (i14 / 2);
                    StateListDrawable stateListDrawable2 = this.g;
                    stateListDrawable2.setBounds(0, 0, i14, i11);
                    int i16 = this.q;
                    int i17 = this.j;
                    Drawable drawable2 = this.h;
                    drawable2.setBounds(0, 0, i16, i17);
                    canvas.translate(0.0f, i12);
                    drawable2.draw(canvas);
                    canvas.translate(i15, 0.0f);
                    stateListDrawable2.draw(canvas);
                    canvas.translate(-i15, -i12);
                    return;
                }
                return;
            }
            return;
        }
        this.q = recyclerView2.getWidth();
        this.r = recyclerView2.getHeight();
        l(0);
    }

    public final boolean i(float f, float f2) {
        if (f2 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean j(float f, float f2) {
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int layoutDirection = this.s.getLayoutDirection();
        int i = this.e;
        if (layoutDirection == 1) {
            if (f > i) {
                return false;
            }
        } else if (f < this.q - i) {
            return false;
        }
        int i2 = this.l;
        int i3 = this.k / 2;
        if (f2 >= i2 - i3 && f2 <= i3 + i2) {
            return true;
        }
        return false;
    }

    public final void l(int i) {
        Runnable runnable = this.B;
        StateListDrawable stateListDrawable = this.f1517c;
        if (i == 2 && this.v != 2) {
            stateListDrawable.setState(C);
            this.s.removeCallbacks(runnable);
        }
        if (i == 0) {
            this.s.invalidate();
        } else {
            m();
        }
        if (this.v == 2 && i != 2) {
            stateListDrawable.setState(D);
            this.s.removeCallbacks(runnable);
            this.s.postDelayed(runnable, 1200);
        } else if (i == 1) {
            this.s.removeCallbacks(runnable);
            this.s.postDelayed(runnable, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.v = i;
    }

    public final void m() {
        int i = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
