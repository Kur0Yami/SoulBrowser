package com.google.android.material.snackbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11934a = 0;

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                ((BaseTransientBottomBar) message.obj).getClass();
                throw null;
            }
            ((BaseTransientBottomBar) message.obj).getClass();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Float) valueAnimator.getAnimatedValue()).floatValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass14 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Integer) valueAnimator.getAnimatedValue()).intValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Integer) valueAnimator.getAnimatedValue()).intValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements OnApplyWindowInsetsListener {
        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.f();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
            accessibilityNodeInfoCompat.a(1048576);
            accessibilityNodeInfoCompat.o(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.g(view, i, bundle);
            }
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass5 implements SnackbarManager.Callback {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements SwipeDismissBehavior.OnDismissListener {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class Anchor implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            throw null;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            throw null;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            throw null;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface AnimationMode {
    }

    /* loaded from: classes3.dex */
    public static abstract class BaseCallback<B> {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes3.dex */
        public @interface DismissEvent {
        }
    }

    /* loaded from: classes3.dex */
    public static class Behavior extends SwipeDismissBehavior<View> {
        public final BehaviorDelegate l;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.snackbar.BaseTransientBottomBar$BehaviorDelegate] */
        public Behavior() {
            ?? obj = new Object();
            this.i = Math.min(Math.max(0.0f, 0.1f), 1.0f);
            this.j = Math.min(Math.max(0.0f, 0.6f), 1.0f);
            this.h = 0;
            this.l = obj;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.l.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    synchronized (SnackbarManager.a().f11937a) {
                    }
                }
            } else if (coordinatorLayout.i(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                SnackbarManager.a().b();
            }
            return super.m(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean y(View view) {
            this.l.getClass();
            return view instanceof SnackbarBaseLayout;
        }
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public static class BehaviorDelegate {
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @IntRange
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface Duration {
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public static class SnackbarBaseLayout extends FrameLayout {
        public static final View.OnTouchListener n = new Object();

        /* renamed from: c, reason: collision with root package name */
        public BaseTransientBottomBar f11935c;
        public final ShapeAppearanceModel f;
        public int g;
        public final float h;
        public final float i;
        public final int j;
        public final int k;
        public ColorStateList l;
        public PorterDuff.Mode m;

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.a(context, attributeSet, 0, 0), attributeSet);
            GradientDrawable gradientDrawable;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                setElevation(obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
            }
            this.g = obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearance) || obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f = ShapeAppearanceModel.c(context2, attributeSet, 0, 0).a();
            }
            this.h = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(MaterialResources.a(context2, obtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.c(obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.i = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.k = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(n);
            setFocusable(true);
            if (getBackground() == null) {
                int g = MaterialColors.g(getBackgroundOverlayColorAlpha(), MaterialColors.c(this, R.attr.colorSurface), MaterialColors.c(this, R.attr.colorOnSurface));
                ShapeAppearanceModel shapeAppearanceModel = this.f;
                if (shapeAppearanceModel != null) {
                    int i = BaseTransientBottomBar.f11934a;
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
                    materialShapeDrawable.o(ColorStateList.valueOf(g));
                    gradientDrawable = materialShapeDrawable;
                } else {
                    Resources resources = getResources();
                    int i2 = BaseTransientBottomBar.f11934a;
                    float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(0);
                    gradientDrawable2.setCornerRadius(dimension);
                    gradientDrawable2.setColor(g);
                    gradientDrawable = gradientDrawable2;
                }
                ColorStateList colorStateList = this.l;
                if (colorStateList != null) {
                    gradientDrawable.setTintList(colorStateList);
                }
                setBackground(gradientDrawable);
            }
        }

        private void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f11935c = baseTransientBottomBar;
        }

        public float getActionTextColorAlpha() {
            return this.i;
        }

        public int getAnimationMode() {
            return this.g;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.h;
        }

        public int getMaxInlineActionWidth() {
            return this.k;
        }

        public int getMaxWidth() {
            return this.j;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.f11935c != null) {
                BaseTransientBottomBar.a();
            }
            requestApplyInsets();
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.f11935c != null) {
                synchronized (SnackbarManager.a().f11937a) {
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f11935c == null) {
            } else {
                throw null;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int i3 = this.j;
            if (i3 > 0 && getMeasuredWidth() > i3) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
            }
        }

        public void setAnimationMode(int i) {
            this.g = i;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.l != null) {
                drawable = drawable.mutate();
                drawable.setTintList(this.l);
                drawable.setTintMode(this.m);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.l = colorStateList;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintList(colorStateList);
                mutate.setTintMode(this.m);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.m = mode;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintMode(mode);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                if (this.f11935c != null) {
                    int i = BaseTransientBottomBar.f11934a;
                    throw null;
                }
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            View.OnTouchListener onTouchListener;
            if (onClickListener != null) {
                onTouchListener = null;
            } else {
                onTouchListener = n;
            }
            setOnTouchListener(onTouchListener);
            super.setOnClickListener(onClickListener);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.Handler$Callback, java.lang.Object] */
    static {
        LinearInterpolator linearInterpolator = AnimationUtils.f11631a;
        new Handler(Looper.getMainLooper(), new Object());
    }

    public static void a() {
        if (Build.VERSION.SDK_INT < 29) {
        } else {
            throw null;
        }
    }
}
