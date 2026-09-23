package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.media.a;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.quick.ListDragHelper;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public Rect A;
    public long B;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public final Callback m;
    public int o;
    public int q;
    public RecyclerView r;
    public VelocityTracker t;
    public ArrayList u;
    public ArrayList v;
    public GestureDetectorCompat x;
    public ItemTouchHelperGestureListener y;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1528a = new ArrayList();
    public final float[] b = new float[2];

    /* renamed from: c, reason: collision with root package name */
    public RecyclerView.ViewHolder f1529c = null;
    public int l = -1;
    public int n = 0;
    public final ArrayList p = new ArrayList();
    public final Runnable s = new AnonymousClass1();
    public View w = null;
    public final RecyclerView.OnItemTouchListener z = new RecyclerView.OnItemTouchListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void a(MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            Runnable runnable = itemTouchHelper.s;
            itemTouchHelper.x.f775a.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = itemTouchHelper.t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (itemTouchHelper.l != -1) {
                int actionMasked = motionEvent.getActionMasked();
                int findPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.l);
                if (findPointerIndex >= 0) {
                    itemTouchHelper.k(actionMasked, findPointerIndex, motionEvent);
                }
                RecyclerView.ViewHolder viewHolder = itemTouchHelper.f1529c;
                if (viewHolder != null) {
                    int i = 0;
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked == 6) {
                                    int actionIndex = motionEvent.getActionIndex();
                                    if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.l) {
                                        if (actionIndex == 0) {
                                            i = 1;
                                        }
                                        itemTouchHelper.l = motionEvent.getPointerId(i);
                                        itemTouchHelper.u(itemTouchHelper.o, actionIndex, motionEvent);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            VelocityTracker velocityTracker2 = itemTouchHelper.t;
                            if (velocityTracker2 != null) {
                                velocityTracker2.clear();
                            }
                        } else {
                            if (findPointerIndex >= 0) {
                                itemTouchHelper.u(itemTouchHelper.o, findPointerIndex, motionEvent);
                                itemTouchHelper.q(viewHolder);
                                itemTouchHelper.r.removeCallbacks(runnable);
                                ((AnonymousClass1) runnable).run();
                                itemTouchHelper.r.invalidate();
                                return;
                            }
                            return;
                        }
                    }
                    itemTouchHelper.s(null, 0);
                    itemTouchHelper.l = -1;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean d(MotionEvent motionEvent) {
            int findPointerIndex;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.x.f775a.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            RecoverAnimation recoverAnimation = null;
            if (actionMasked == 0) {
                itemTouchHelper.l = motionEvent.getPointerId(0);
                itemTouchHelper.d = motionEvent.getX();
                itemTouchHelper.e = motionEvent.getY();
                VelocityTracker velocityTracker = itemTouchHelper.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                itemTouchHelper.t = VelocityTracker.obtain();
                if (itemTouchHelper.f1529c == null) {
                    ArrayList arrayList = itemTouchHelper.p;
                    if (!arrayList.isEmpty()) {
                        View n = itemTouchHelper.n(motionEvent);
                        int size = arrayList.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            }
                            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList.get(size);
                            if (recoverAnimation2.e.f1589a == n) {
                                recoverAnimation = recoverAnimation2;
                                break;
                            }
                            size--;
                        }
                    }
                    if (recoverAnimation != null) {
                        RecyclerView.ViewHolder viewHolder = recoverAnimation.e;
                        itemTouchHelper.d -= recoverAnimation.i;
                        itemTouchHelper.e -= recoverAnimation.j;
                        itemTouchHelper.m(viewHolder, true);
                        if (itemTouchHelper.f1528a.remove(viewHolder.f1589a)) {
                            itemTouchHelper.m.b(itemTouchHelper.r, viewHolder);
                        }
                        itemTouchHelper.s(viewHolder, recoverAnimation.f);
                        itemTouchHelper.u(itemTouchHelper.o, 0, motionEvent);
                    }
                }
            } else if (actionMasked != 3 && actionMasked != 1) {
                int i = itemTouchHelper.l;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    itemTouchHelper.k(actionMasked, findPointerIndex, motionEvent);
                }
            } else {
                itemTouchHelper.l = -1;
                itemTouchHelper.s(null, 0);
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.t;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (itemTouchHelper.f1529c != null) {
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void e(boolean z) {
            if (!z) {
                return;
            }
            ItemTouchHelper.this.s(null, 0);
        }
    };

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x009b, code lost:
        
            if (r4 < 0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00be, code lost:
        
            if (r4 > 0) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00f3  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 287
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.AnonymousClass1.run():void");
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 implements RecyclerView.ChildDrawingOrderCallback {
        @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
        public final int a(int i, int i2) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: c, reason: collision with root package name */
        public boolean f1535c = true;

        public ItemTouchHelperGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View n;
            RecyclerView.ViewHolder L;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            Callback callback = itemTouchHelper.m;
            if (this.f1535c && (n = itemTouchHelper.n(motionEvent)) != null && (L = itemTouchHelper.r.L(n)) != null) {
                RecyclerView recyclerView = itemTouchHelper.r;
                int f = callback.f();
                WeakHashMap weakHashMap = ViewCompat.f792a;
                if ((Callback.c(f, recyclerView.getLayoutDirection()) & 16711680) != 0) {
                    int pointerId = motionEvent.getPointerId(0);
                    int i = itemTouchHelper.l;
                    if (pointerId == i) {
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        float x = motionEvent.getX(findPointerIndex);
                        float y = motionEvent.getY(findPointerIndex);
                        itemTouchHelper.d = x;
                        itemTouchHelper.e = y;
                        itemTouchHelper.i = 0.0f;
                        itemTouchHelper.h = 0.0f;
                        if (callback.i()) {
                            itemTouchHelper.s(L, 2);
                        }
                    }
                }
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class RecoverAnimation implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        public final float f1536a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f1537c;
        public final float d;
        public final RecyclerView.ViewHolder e;
        public final int f;
        public final ValueAnimator g;
        public boolean h;
        public float i;
        public float j;
        public boolean k = false;
        public boolean l = false;
        public float m;

        public RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i, float f, float f2, float f3, float f4) {
            this.f = i;
            this.e = viewHolder;
            this.f1536a = f;
            this.b = f2;
            this.f1537c = f3;
            this.d = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.g = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecoverAnimation.this.m = valueAnimator.getAnimatedFraction();
                }
            });
            ofFloat.setTarget(viewHolder.f1589a);
            ofFloat.addListener(this);
            this.m = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.m = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.l) {
                this.e.p(true);
            }
            this.l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SimpleCallback extends Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final int f() {
            return Callback.j(0, 0);
        }
    }

    /* loaded from: classes.dex */
    public interface ViewDropHandler {
        void b(View view, View view2);
    }

    public ItemTouchHelper(Callback callback) {
        this.m = callback;
    }

    public static boolean p(View view, float f, float f2, float f3, float f4) {
        if (f >= f3 && f <= f3 + view.getWidth() && f2 >= f4 && f2 <= f4 + view.getHeight()) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void b(View view) {
        r(view);
        RecyclerView.ViewHolder L = this.r.L(view);
        if (L != null) {
            RecyclerView.ViewHolder viewHolder = this.f1529c;
            if (viewHolder != null && L == viewHolder) {
                s(null, 0);
                return;
            }
            m(L, false);
            if (this.f1528a.remove(L.f1589a)) {
                this.m.b(this.r, L);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void c(View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void f(Rect rect, View view, RecyclerView recyclerView) {
        rect.setEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        if (this.f1529c != null) {
            float[] fArr = this.b;
            o(fArr);
            float f3 = fArr[0];
            f = fArr[1];
            f2 = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.f1529c;
        int i = this.n;
        Callback callback = this.m;
        callback.getClass();
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(i2);
            RecyclerView.ViewHolder viewHolder2 = recoverAnimation.e;
            float f4 = recoverAnimation.f1536a;
            float f5 = recoverAnimation.f1537c;
            if (f4 == f5) {
                recoverAnimation.i = viewHolder2.f1589a.getTranslationX();
            } else {
                recoverAnimation.i = a.a(f5, f4, recoverAnimation.m, f4);
            }
            float f6 = recoverAnimation.b;
            float f7 = recoverAnimation.d;
            if (f6 == f7) {
                recoverAnimation.j = viewHolder2.f1589a.getTranslationY();
            } else {
                recoverAnimation.j = a.a(f7, f6, recoverAnimation.m, f6);
            }
            int save = canvas.save();
            callback.k(canvas, recyclerView, recoverAnimation.e, recoverAnimation.i, recoverAnimation.j, recoverAnimation.f, false);
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            int save2 = canvas.save();
            callback.k(canvas, recyclerView, viewHolder, f2, f, i, true);
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        boolean z = false;
        if (this.f1529c != null) {
            float[] fArr = this.b;
            o(fArr);
            float f = fArr[0];
            float f2 = fArr[1];
        }
        RecyclerView.ViewHolder viewHolder = this.f1529c;
        this.m.getClass();
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(i);
            int save = canvas.save();
            View view = recoverAnimation.e.f1589a;
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList.get(i2);
            boolean z2 = recoverAnimation2.l;
            if (z2 && !recoverAnimation2.h) {
                arrayList.remove(i2);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    public final void i(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.r;
        if (recyclerView2 != recyclerView) {
            RecyclerView.OnItemTouchListener onItemTouchListener = this.z;
            if (recyclerView2 != null) {
                recyclerView2.d0(this);
                RecyclerView recyclerView3 = this.r;
                recyclerView3.v.remove(onItemTouchListener);
                if (recyclerView3.w == onItemTouchListener) {
                    recyclerView3.w = null;
                }
                ArrayList arrayList = this.r.H;
                if (arrayList != null) {
                    arrayList.remove(this);
                }
                ArrayList arrayList2 = this.p;
                int size = arrayList2.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList2.get(0);
                    recoverAnimation.g.cancel();
                    this.m.b(this.r, recoverAnimation.e);
                }
                arrayList2.clear();
                this.w = null;
                VelocityTracker velocityTracker = this.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.t = null;
                }
                ItemTouchHelperGestureListener itemTouchHelperGestureListener = this.y;
                if (itemTouchHelperGestureListener != null) {
                    itemTouchHelperGestureListener.f1535c = false;
                    this.y = null;
                }
                if (this.x != null) {
                    this.x = null;
                }
            }
            this.r = recyclerView;
            if (recyclerView != null) {
                Resources resources = recyclerView.getResources();
                this.f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
                this.g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
                this.q = ViewConfiguration.get(this.r.getContext()).getScaledTouchSlop();
                this.r.i(this);
                this.r.v.add(onItemTouchListener);
                RecyclerView recyclerView4 = this.r;
                if (recyclerView4.H == null) {
                    recyclerView4.H = new ArrayList();
                }
                recyclerView4.H.add(this);
                this.y = new ItemTouchHelperGestureListener();
                this.x = new GestureDetectorCompat(this.r.getContext(), this.y);
            }
        }
    }

    public final int j(int i) {
        int i2;
        if ((i & 12) != 0) {
            int i3 = 4;
            if (this.h > 0.0f) {
                i2 = 8;
            } else {
                i2 = 4;
            }
            VelocityTracker velocityTracker = this.t;
            Callback callback = this.m;
            if (velocityTracker != null && this.l > -1) {
                float f = this.g;
                callback.getClass();
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.t.getXVelocity(this.l);
                float yVelocity = this.t.getYVelocity(this.l);
                if (xVelocity > 0.0f) {
                    i3 = 8;
                }
                float abs = Math.abs(xVelocity);
                if ((i3 & i) != 0 && i2 == i3 && abs >= this.f && abs > Math.abs(yVelocity)) {
                    return i3;
                }
            }
            float width = this.r.getWidth();
            callback.getClass();
            float f2 = width * 0.5f;
            if ((i & i2) != 0 && Math.abs(this.h) > f2) {
                return i2;
            }
            return 0;
        }
        return 0;
    }

    public final void k(int i, int i2, MotionEvent motionEvent) {
        View n;
        if (this.f1529c == null && i == 2 && this.n != 2) {
            Callback callback = this.m;
            if (callback.h() && this.r.getScrollState() != 1) {
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int i3 = this.l;
                RecyclerView.ViewHolder viewHolder = null;
                if (i3 != -1) {
                    int findPointerIndex = motionEvent.findPointerIndex(i3);
                    float x = motionEvent.getX(findPointerIndex) - this.d;
                    float y = motionEvent.getY(findPointerIndex) - this.e;
                    float abs = Math.abs(x);
                    float abs2 = Math.abs(y);
                    float f = this.q;
                    if ((abs >= f || abs2 >= f) && ((abs <= abs2 || !layoutManager.f()) && ((abs2 <= abs || !layoutManager.g()) && (n = n(motionEvent)) != null))) {
                        viewHolder = this.r.L(n);
                    }
                }
                if (viewHolder != null) {
                    RecyclerView recyclerView = this.r;
                    int f2 = callback.f();
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    int c2 = (Callback.c(f2, recyclerView.getLayoutDirection()) & 65280) >> 8;
                    if (c2 != 0) {
                        float x2 = motionEvent.getX(i2);
                        float y2 = motionEvent.getY(i2);
                        float f3 = x2 - this.d;
                        float f4 = y2 - this.e;
                        float abs3 = Math.abs(f3);
                        float abs4 = Math.abs(f4);
                        float f5 = this.q;
                        if (abs3 >= f5 || abs4 >= f5) {
                            if (abs3 > abs4) {
                                if (f3 >= 0.0f || (c2 & 4) != 0) {
                                    if (f3 > 0.0f && (c2 & 8) == 0) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } else if (f4 >= 0.0f || (c2 & 1) != 0) {
                                if (f4 > 0.0f && (c2 & 2) == 0) {
                                    return;
                                }
                            } else {
                                return;
                            }
                            this.i = 0.0f;
                            this.h = 0.0f;
                            this.l = motionEvent.getPointerId(0);
                            s(viewHolder, 1);
                        }
                    }
                }
            }
        }
    }

    public final int l(int i) {
        int i2;
        if ((i & 3) != 0) {
            int i3 = 1;
            if (this.i > 0.0f) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            VelocityTracker velocityTracker = this.t;
            Callback callback = this.m;
            if (velocityTracker != null && this.l > -1) {
                float f = this.g;
                callback.getClass();
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.t.getXVelocity(this.l);
                float yVelocity = this.t.getYVelocity(this.l);
                if (yVelocity > 0.0f) {
                    i3 = 2;
                }
                float abs = Math.abs(yVelocity);
                if ((i3 & i) != 0 && i3 == i2 && abs >= this.f && abs > Math.abs(xVelocity)) {
                    return i3;
                }
            }
            float height = this.r.getHeight();
            callback.getClass();
            float f2 = height * 0.5f;
            if ((i & i2) != 0 && Math.abs(this.i) > f2) {
                return i2;
            }
            return 0;
        }
        return 0;
    }

    public final void m(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            if (recoverAnimation.e == viewHolder) {
                recoverAnimation.k |= z;
                if (!recoverAnimation.l) {
                    recoverAnimation.g.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View n(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f1529c;
        if (viewHolder != null) {
            View view = viewHolder.f1589a;
            if (p(view, x, y, this.j + this.h, this.k + this.i)) {
                return view;
            }
        }
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            View view2 = recoverAnimation.e.f1589a;
            if (p(view2, x, y, recoverAnimation.i, recoverAnimation.j)) {
                return view2;
            }
        }
        RecyclerView recyclerView = this.r;
        for (int c2 = recyclerView.j.c() - 1; c2 >= 0; c2--) {
            View b = recyclerView.j.b(c2);
            float translationX = b.getTranslationX();
            float translationY = b.getTranslationY();
            if (x >= b.getLeft() + translationX && x <= b.getRight() + translationX && y >= b.getTop() + translationY && y <= b.getBottom() + translationY) {
                return b;
            }
        }
        return null;
    }

    public final void o(float[] fArr) {
        if ((this.o & 12) != 0) {
            fArr[0] = (this.j + this.h) - this.f1529c.f1589a.getLeft();
        } else {
            fArr[0] = this.f1529c.f1589a.getTranslationX();
        }
        if ((this.o & 3) != 0) {
            fArr[1] = (this.k + this.i) - this.f1529c.f1589a.getTop();
        } else {
            fArr[1] = this.f1529c.f1589a.getTranslationY();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q(RecyclerView.ViewHolder viewHolder) {
        ArrayList arrayList;
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int right;
        int abs4;
        int i;
        int i2;
        int i3;
        int i4;
        if (!this.r.isLayoutRequested() && this.n == 2) {
            Callback callback = this.m;
            callback.getClass();
            int i5 = (int) (this.j + this.h);
            int i6 = (int) (this.k + this.i);
            View view = viewHolder.f1589a;
            if (Math.abs(i6 - view.getTop()) >= view.getHeight() * 0.5f || Math.abs(i5 - view.getLeft()) >= view.getWidth() * 0.5f) {
                ArrayList arrayList2 = this.u;
                if (arrayList2 == null) {
                    this.u = new ArrayList();
                    this.v = new ArrayList();
                } else {
                    arrayList2.clear();
                    this.v.clear();
                }
                int e = callback.e();
                int round = Math.round(this.j + this.h) - e;
                int round2 = Math.round(this.k + this.i) - e;
                int i7 = e * 2;
                int width = view.getWidth() + round + i7;
                int height = view.getHeight() + round2 + i7;
                int i8 = (round + width) / 2;
                int i9 = (round2 + height) / 2;
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int x = layoutManager.x();
                int i10 = 0;
                while (i10 < x) {
                    View w = layoutManager.w(i10);
                    if (w == view) {
                        i = i10;
                    } else {
                        i = i10;
                        if (w.getBottom() >= round2 && w.getTop() <= height && w.getRight() >= round && w.getLeft() <= width) {
                            RecyclerView.ViewHolder L = this.r.L(w);
                            callback.a(L);
                            int abs5 = Math.abs(i8 - ((w.getRight() + w.getLeft()) / 2));
                            int abs6 = Math.abs(i9 - ((w.getBottom() + w.getTop()) / 2));
                            int i11 = (abs6 * abs6) + (abs5 * abs5);
                            i2 = i5;
                            int size = this.u.size();
                            i3 = i6;
                            i4 = i8;
                            int i12 = 0;
                            int i13 = 0;
                            while (i12 < size) {
                                int i14 = size;
                                if (i11 <= ((Integer) this.v.get(i12)).intValue()) {
                                    break;
                                }
                                i13++;
                                i12++;
                                size = i14;
                            }
                            this.u.add(i13, L);
                            this.v.add(i13, Integer.valueOf(i11));
                            i10 = i + 1;
                            i5 = i2;
                            i6 = i3;
                            i8 = i4;
                        }
                    }
                    i2 = i5;
                    i3 = i6;
                    i4 = i8;
                    i10 = i + 1;
                    i5 = i2;
                    i6 = i3;
                    i8 = i4;
                }
                int i15 = i5;
                int i16 = i6;
                ArrayList arrayList3 = this.u;
                if (arrayList3.size() != 0) {
                    int width2 = view.getWidth() + i15;
                    int height2 = view.getHeight() + i16;
                    int left2 = i15 - view.getLeft();
                    int top2 = i16 - view.getTop();
                    int size2 = arrayList3.size();
                    RecyclerView.ViewHolder viewHolder2 = null;
                    int i17 = -1;
                    int i18 = 0;
                    while (i18 < size2) {
                        RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList3.get(i18);
                        if (left2 > 0 && (right = viewHolder3.f1589a.getRight() - width2) < 0) {
                            arrayList = arrayList3;
                            if (viewHolder3.f1589a.getRight() > view.getRight() && (abs4 = Math.abs(right)) > i17) {
                                i17 = abs4;
                                viewHolder2 = viewHolder3;
                            }
                        } else {
                            arrayList = arrayList3;
                        }
                        if (left2 < 0 && (left = viewHolder3.f1589a.getLeft() - i15) > 0 && viewHolder3.f1589a.getLeft() < view.getLeft() && (abs3 = Math.abs(left)) > i17) {
                            i17 = abs3;
                            viewHolder2 = viewHolder3;
                        }
                        if (top2 < 0 && (top = viewHolder3.f1589a.getTop() - i16) > 0 && viewHolder3.f1589a.getTop() < view.getTop() && (abs2 = Math.abs(top)) > i17) {
                            i17 = abs2;
                            viewHolder2 = viewHolder3;
                        }
                        if (top2 > 0 && (bottom = viewHolder3.f1589a.getBottom() - height2) < 0 && viewHolder3.f1589a.getBottom() > view.getBottom() && (abs = Math.abs(bottom)) > i17) {
                            i17 = abs;
                            viewHolder2 = viewHolder3;
                        }
                        i18++;
                        arrayList3 = arrayList;
                    }
                    if (viewHolder2 == null) {
                        this.u.clear();
                        this.v.clear();
                        return;
                    }
                    View view2 = viewHolder2.f1589a;
                    int b = viewHolder2.b();
                    viewHolder.b();
                    callback.l(viewHolder, viewHolder2);
                    RecyclerView recyclerView = this.r;
                    RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
                    if (layoutManager2 instanceof ViewDropHandler) {
                        ((ViewDropHandler) layoutManager2).b(view, view2);
                        return;
                    }
                    if (layoutManager2.f()) {
                        if (RecyclerView.LayoutManager.C(view2) <= recyclerView.getPaddingLeft()) {
                            recyclerView.i0(b);
                        }
                        if (RecyclerView.LayoutManager.F(view2) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                            recyclerView.i0(b);
                        }
                    }
                    if (layoutManager2.g()) {
                        if (RecyclerView.LayoutManager.G(view2) <= recyclerView.getPaddingTop()) {
                            recyclerView.i0(b);
                        }
                        if (RecyclerView.LayoutManager.A(view2) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                            recyclerView.i0(b);
                        }
                    }
                }
            }
        }
    }

    public final void r(View view) {
        if (view == this.w) {
            this.w = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0090, code lost:
    
        if (r8 > 0) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fa  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(androidx.recyclerview.widget.RecyclerView.ViewHolder r22, int r23) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.s(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    public final void t(RecyclerView.ViewHolder viewHolder) {
        RecyclerView recyclerView = this.r;
        int f = this.m.f();
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if ((Callback.c(f, recyclerView.getLayoutDirection()) & 16711680) != 0) {
            if (viewHolder.f1589a.getParent() != this.r) {
                Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
                return;
            }
            VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            this.t = VelocityTracker.obtain();
            this.i = 0.0f;
            this.h = 0.0f;
            s(viewHolder, 2);
            return;
        }
        Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
    }

    public final void u(int i, int i2, MotionEvent motionEvent) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.d;
        this.h = f;
        this.i = y - this.e;
        if ((i & 4) == 0) {
            this.h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.h = Math.min(0.0f, this.h);
        }
        if ((i & 1) == 0) {
            this.i = Math.max(0.0f, this.i);
        }
        if ((i & 2) == 0) {
            this.i = Math.min(0.0f, this.i);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public static final Interpolator b = new Object();

        /* renamed from: c, reason: collision with root package name */
        public static final Interpolator f1533c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public int f1534a = -1;

        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        }

        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass2 implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        public static int c(int i, int i2) {
            int i3;
            int i4 = i & 3158064;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 >> 2;
            } else {
                int i6 = i4 >> 1;
                i5 |= (-3158065) & i6;
                i3 = (i6 & 3158064) >> 2;
            }
            return i5 | i3;
        }

        public static int d(int i, int i2) {
            int i3;
            int i4 = i & 789516;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & 789516) << 2;
            }
            return i5 | i3;
        }

        public static int j(int i, int i2) {
            int i3 = i2 | i;
            return (i << 16) | (i2 << 8) | i3;
        }

        public void b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.f1589a;
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                ViewCompat.E(view, ((Float) tag).floatValue());
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        public int e() {
            return 0;
        }

        public abstract int f();

        public final int g(RecyclerView recyclerView, int i, int i2, long j) {
            if (this.f1534a == -1) {
                this.f1534a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int i3 = this.f1534a;
            float f = 1.0f;
            int signum = (int) (((int) Math.signum(i2)) * i3 * ((AnonymousClass2) f1533c).getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)));
            if (j <= 2000) {
                f = ((float) j) / 2000.0f;
            }
            int interpolation = (int) (signum * ((AnonymousClass1) b).getInterpolation(f));
            if (interpolation == 0) {
                if (i2 <= 0) {
                    return -1;
                }
                return 1;
            }
            return interpolation;
        }

        public boolean h() {
            return !(this instanceof ListDragHelper);
        }

        public boolean i() {
            return !(this instanceof ListDragHelper);
        }

        public void k(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            View view = viewHolder.f1589a;
            if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                Float valueOf = Float.valueOf(ViewCompat.k(view));
                int childCount = recyclerView.getChildCount();
                float f3 = 0.0f;
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = recyclerView.getChildAt(i2);
                    if (childAt != view) {
                        float k = ViewCompat.k(childAt);
                        if (k > f3) {
                            f3 = k;
                        }
                    }
                }
                ViewCompat.E(view, f3 + 1.0f);
                view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
            }
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }

        public abstract void l(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

        public void m(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public abstract void n();

        public void a(RecyclerView.ViewHolder viewHolder) {
        }
    }
}
