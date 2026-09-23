package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import kotlin.jvm.internal.IntCompanionObject;

@SuppressLint({"UnknownNullness"})
@RestrictTo
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    public static final int[] G = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final WindowInsetsCompat H;
    public static final Rect I;
    public ViewPropertyAnimator A;
    public final AnimatorListenerAdapter B;
    public final Runnable C;
    public final Runnable D;
    public final NestedScrollingParentHelper E;
    public final NoSystemUiLayoutFlagView F;

    /* renamed from: c, reason: collision with root package name */
    public int f197c;
    public int f;
    public ContentFrameLayout g;
    public ActionBarContainer h;
    public DecorToolbar i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public final Rect q;
    public final Rect r;
    public final Rect s;
    public final Rect t;
    public WindowInsetsCompat u;
    public WindowInsetsCompat v;
    public WindowInsetsCompat w;
    public WindowInsetsCompat x;
    public ActionBarVisibilityCallback y;
    public OverScroller z;

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.q();
            actionBarOverlayLayout.A = actionBarOverlayLayout.h.animate().translationY(0.0f).setListener(actionBarOverlayLayout.B);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.q();
            actionBarOverlayLayout.A = actionBarOverlayLayout.h.animate().translationY(-actionBarOverlayLayout.h.getHeight()).setListener(actionBarOverlayLayout.B);
        }
    }

    /* loaded from: classes.dex */
    public interface ActionBarVisibilityCallback {
        void a();

        void b(boolean z);

        void c();

        void d();

        void onWindowVisibilityChanged(int i);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
    }

    /* loaded from: classes.dex */
    public static final class NoSystemUiLayoutFlagView extends View {
        @Override // android.view.View
        public final int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    static {
        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder();
        builder.b(Insets.b(0, 1, 0, 1));
        H = builder.a();
        I = new Rect();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15, types: [androidx.appcompat.widget.ActionBarOverlayLayout$NoSystemUiLayoutFlagView, android.view.View] */
    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = 0;
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.b;
        this.u = windowInsetsCompat;
        this.v = windowInsetsCompat;
        this.w = windowInsetsCompat;
        this.x = windowInsetsCompat;
        this.B = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = null;
                actionBarOverlayLayout.n = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = null;
                actionBarOverlayLayout.n = false;
            }
        };
        this.C = new AnonymousClass2();
        this.D = new AnonymousClass3();
        r(context);
        this.E = new Object();
        ?? view = new View(context);
        view.setWillNotDraw(true);
        this.F = view;
        addView(view);
    }

    public static boolean p(View view, Rect rect, boolean z) {
        boolean z2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void a(Menu menu, MenuPresenter.Callback callback) {
        s();
        this.i.a(menu, callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean b() {
        s();
        return this.i.b();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void c() {
        s();
        this.i.c();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean d() {
        s();
        return this.i.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.j != null) {
            if (this.h.getVisibility() == 0) {
                i = (int) (this.h.getTranslationY() + this.h.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.j.setBounds(0, i, getWidth(), this.j.getIntrinsicHeight() + i);
            this.j.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean e() {
        s();
        return this.i.e();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean f() {
        s();
        return this.i.f();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean g() {
        s();
        return this.i.g();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.h;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.E;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.f783a;
    }

    public CharSequence getTitle() {
        s();
        return this.i.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void h(int i) {
        s();
        if (i != 2) {
            if (i != 5) {
                if (i != 109) {
                    return;
                }
                setOverlayMode(true);
                return;
            }
            this.i.s();
            return;
        }
        this.i.r();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void i() {
        s();
        this.i.h();
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void j(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        k(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean l(View view, View view2, int i, int i2) {
        if (i2 == 0 && onStartNestedScroll(view, view2, i)) {
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void m(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void o(View view, int i, int i2, int[] iArr, int i3) {
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        s();
        WindowInsetsCompat o = WindowInsetsCompat.o(this, windowInsets);
        boolean p = p(this.h, new Rect(o.g(), o.i(), o.h(), o.f()), false);
        Rect rect = this.q;
        ViewCompat.b(this, o, rect);
        WindowInsetsCompat j = o.j(rect.left, rect.top, rect.right, rect.bottom);
        this.u = j;
        boolean z = true;
        if (!this.v.equals(j)) {
            this.v = this.u;
            p = true;
        }
        Rect rect2 = this.r;
        if (!rect2.equals(rect)) {
            rect2.set(rect);
        } else {
            z = p;
        }
        if (z) {
            requestLayout();
        }
        return o.a().c().b().n();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r(getContext());
        ViewCompat.x(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00e4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (this.m && z) {
            this.z.fling(0, 0, 0, (int) f2, 0, 0, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE);
            if (this.z.getFinalY() > this.h.getHeight()) {
                q();
                ((AnonymousClass3) this.D).run();
            } else {
                q();
                ((AnonymousClass2) this.C).run();
            }
            this.n = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.o + i2;
        this.o = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.E.f783a = i;
        this.o = getActionBarHideOffset();
        q();
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) != 0 && this.h.getVisibility() == 0) {
            return this.m;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.m && !this.n) {
            if (this.o <= this.h.getHeight()) {
                q();
                postDelayed(this.C, 600L);
            } else {
                q();
                postDelayed(this.D, 600L);
            }
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        super.onWindowSystemUiVisibilityChanged(i);
        s();
        int i2 = this.p ^ i;
        this.p = i;
        boolean z2 = false;
        if ((i & 4) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 256) != 0) {
            z2 = true;
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.b(!z2);
            if (!z && z2) {
                this.y.c();
            } else {
                this.y.a();
            }
        }
        if ((i2 & 256) != 0 && this.y != null) {
            ViewCompat.x(this);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f = i;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onWindowVisibilityChanged(i);
        }
    }

    public final void q() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void r(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(G);
        boolean z = false;
        this.f197c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.j = drawable;
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        obtainStyledAttributes.recycle();
        this.z = new OverScroller(context);
    }

    public final void s() {
        DecorToolbar wrapper;
        if (this.g == null) {
            this.g = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.h = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof DecorToolbar) {
                wrapper = (DecorToolbar) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
            }
            this.i = wrapper;
        }
    }

    public void setActionBarHideOffset(int i) {
        q();
        this.h.setTranslationY(-Math.max(0, Math.min(i, this.h.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.y = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.y.onWindowVisibilityChanged(this.f);
            int i = this.p;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                ViewCompat.x(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.l = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.m) {
            this.m = z;
            if (!z) {
                q();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        s();
        this.i.setIcon(i);
    }

    public void setLogo(int i) {
        s();
        this.i.m(i);
    }

    public void setOverlayMode(boolean z) {
        this.k = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        s();
        this.i.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        s();
        this.i.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        s();
        this.i.setIcon(drawable);
    }
}
