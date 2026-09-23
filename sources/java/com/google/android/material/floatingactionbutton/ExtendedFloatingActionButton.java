package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    public ColorStateList O;

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Size {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Size {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Size {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Size {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass8 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getPaddingStart());
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.setPaddingRelative(f.intValue(), view2.getPaddingTop(), view2.getPaddingEnd(), view2.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getPaddingEnd());
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            View view2 = view;
            view2.setPaddingRelative(view2.getPaddingStart(), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    }

    /* loaded from: classes3.dex */
    public class ChangeSizeStrategy extends BaseMotionStrategy {
    }

    /* loaded from: classes3.dex */
    public class HideStrategy extends BaseMotionStrategy {
    }

    /* loaded from: classes3.dex */
    public static abstract class OnChangedCallback {
    }

    /* loaded from: classes3.dex */
    public class ShowStrategy extends BaseMotionStrategy {
    }

    /* loaded from: classes3.dex */
    public interface Size {
    }

    static {
        new Property(Float.class, "width");
        new Property(Float.class, "height");
        new Property(Float.class, "paddingStart");
        new Property(Float.class, "paddingEnd");
    }

    public static void k(ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(android.support.v4.media.a.e(i, "Unknown strategy type: "));
        }
        throw null;
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return null;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    public int getCollapsedSize() {
        return 0;
    }

    @Nullable
    public MotionSpec getExtendMotionSpec() {
        throw null;
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        throw null;
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        throw null;
    }

    @Nullable
    public MotionSpec getShrinkMotionSpec() {
        throw null;
    }

    public void setAnimateShowBeforeLayout(boolean z) {
    }

    public void setAnimationEnabled(boolean z) {
    }

    public void setExtendMotionSpec(@Nullable MotionSpec motionSpec) {
        throw null;
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i) {
        setExtendMotionSpec(MotionSpec.a(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (!z) {
        } else {
            throw null;
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        throw null;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.a(getContext(), i));
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        throw null;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.a(getContext(), i));
    }

    public void setShrinkMotionSpec(@Nullable MotionSpec motionSpec) {
        throw null;
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i) {
        setShrinkMotionSpec(MotionSpec.a(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.O = getTextColors();
    }

    /* loaded from: classes3.dex */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: c, reason: collision with root package name */
        public Rect f11792c;
        public final boolean f;
        public final boolean g;

        public ExtendedFloatingActionButtonBehavior() {
            this.f = false;
            this.g = true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean g(View view) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void i(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.h == 0) {
                layoutParams.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean z;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                y(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                    z = ((CoordinatorLayout.LayoutParams) layoutParams).f610a instanceof BottomSheetBehavior;
                } else {
                    z = false;
                }
                if (z) {
                    z(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
            boolean z;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList d = coordinatorLayout.d(extendedFloatingActionButton);
            int size = d.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = (View) d.get(i2);
                if (view2 instanceof AppBarLayout) {
                    y(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                } else {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                        z = ((CoordinatorLayout.LayoutParams) layoutParams).f610a instanceof BottomSheetBehavior;
                    } else {
                        z = false;
                    }
                    if (z) {
                        z(view2, extendedFloatingActionButton);
                    }
                }
            }
            coordinatorLayout.q(extendedFloatingActionButton, i);
            return true;
        }

        public final void y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            int i;
            int i2;
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f;
            boolean z2 = this.g;
            if ((!z && !z2) || layoutParams.f != appBarLayout.getId()) {
                return;
            }
            if (this.f11792c == null) {
                this.f11792c = new Rect();
            }
            Rect rect = this.f11792c;
            DescendantOffsetUtils.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                if (z2) {
                    i2 = 2;
                } else {
                    i2 = 1;
                }
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, i2);
                throw null;
            }
            if (z2) {
                i = 3;
            } else {
                i = 0;
            }
            ExtendedFloatingActionButton.k(extendedFloatingActionButton, i);
            throw null;
        }

        public final void z(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            int i;
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f;
            boolean z2 = this.g;
            if ((!z && !z2) || layoutParams.f != view.getId()) {
                return;
            }
            int i2 = 2;
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                if (!z2) {
                    i2 = 1;
                }
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, i2);
                throw null;
            }
            if (z2) {
                i = 3;
            } else {
                i = 0;
            }
            ExtendedFloatingActionButton.k(extendedFloatingActionButton, i);
            throw null;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.g = obtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.O = getTextColors();
    }
}
