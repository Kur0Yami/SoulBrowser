package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.carousel.a;
import com.google.android.material.internal.BaselineLayout;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;

@RestrictTo
/* loaded from: classes3.dex */
public abstract class NavigationBarItemView extends FrameLayout implements NavigationBarMenuItemView {
    public static final int[] n0 = {R.attr.state_checked};
    public static final ActiveIndicatorTransform o0 = new Object();
    public static final ActiveIndicatorUnlabeledTransform p0 = new Object();
    public final TextView A;
    public final BaselineLayout B;
    public final TextView C;
    public final TextView D;
    public BaselineLayout E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public ColorStateList K;
    public boolean L;
    public MenuItemImpl M;
    public ColorStateList N;
    public Drawable O;
    public Drawable P;
    public ValueAnimator Q;
    public ActiveIndicatorTransform R;
    public float S;
    public boolean T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public boolean b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11840c;
    public int c0;
    public int d0;
    public BadgeDrawable e0;
    public ColorStateList f;
    public int f0;
    public Drawable g;
    public int g0;
    public int h;
    public int h0;
    public int i;
    public boolean i0;
    public int j;
    public boolean j0;
    public int k;
    public boolean k0;
    public float l;
    public boolean l0;
    public float m;
    public Rect m0;
    public float n;
    public float o;
    public float p;
    public float q;
    public int r;
    public boolean s;
    public final LinearLayout t;
    public final LinearLayout u;
    public final View v;
    public final FrameLayout w;
    public final ImageView x;
    public final BaselineLayout y;
    public final TextView z;

    /* loaded from: classes3.dex */
    public static class ActiveIndicatorTransform {
        public float a(float f) {
            return 1.0f;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActiveIndicatorUnlabeledTransform extends ActiveIndicatorTransform {
        @Override // com.google.android.material.navigation.NavigationBarItemView.ActiveIndicatorTransform
        public final float a(float f) {
            return AnimationUtils.a(0.4f, 1.0f, f);
        }
    }

    /* JADX WARN: Type inference failed for: r8v1, types: [android.view.View, com.google.android.material.internal.BaselineLayout, android.view.ViewGroup] */
    public NavigationBarItemView(Context context) {
        super(context);
        this.f11840c = false;
        this.F = -1;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.L = false;
        this.R = o0;
        this.S = 0.0f;
        this.T = false;
        this.U = 0;
        this.V = 0;
        this.W = -2;
        this.a0 = 0;
        this.b0 = false;
        this.c0 = 0;
        this.d0 = 0;
        this.g0 = 0;
        this.h0 = 49;
        this.i0 = false;
        this.j0 = false;
        this.k0 = false;
        this.l0 = false;
        this.m0 = new Rect();
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.t = (LinearLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_content_container);
        LinearLayout linearLayout = (LinearLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_inner_content_container);
        this.u = linearLayout;
        this.v = findViewById(com.google.android.material.R.id.navigation_bar_item_active_indicator_view);
        this.w = (FrameLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_container);
        this.x = (ImageView) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_view);
        BaselineLayout baselineLayout = (BaselineLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_labels_group);
        this.y = baselineLayout;
        TextView textView = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_small_label_view);
        this.z = textView;
        TextView textView2 = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_large_label_view);
        this.A = textView2;
        float dimension = getResources().getDimension(com.google.android.material.R.dimen.default_navigation_text_size);
        float dimension2 = getResources().getDimension(com.google.android.material.R.dimen.default_navigation_active_text_size);
        ?? viewGroup = new ViewGroup(getContext(), null, 0);
        viewGroup.f11805c = -1;
        this.B = viewGroup;
        viewGroup.setVisibility(8);
        this.B.setDuplicateParentStateEnabled(true);
        this.B.setMeasurePaddingFromBaseline(this.k0);
        TextView textView3 = new TextView(getContext());
        this.C = textView3;
        textView3.setMaxLines(1);
        TextView textView4 = this.C;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.C.setDuplicateParentStateEnabled(true);
        this.C.setIncludeFontPadding(false);
        this.C.setGravity(16);
        this.C.setTextSize(dimension);
        TextView textView5 = new TextView(getContext());
        this.D = textView5;
        textView5.setMaxLines(1);
        this.D.setEllipsize(truncateAt);
        this.D.setDuplicateParentStateEnabled(true);
        this.D.setVisibility(4);
        this.D.setIncludeFontPadding(false);
        this.D.setGravity(16);
        this.D.setTextSize(dimension2);
        this.B.addView(this.C);
        this.B.addView(this.D);
        this.E = baselineLayout;
        setBackgroundResource(getItemBackgroundResId());
        this.h = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.i = baselineLayout.getPaddingBottom();
        this.j = 0;
        this.k = 0;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        this.C.setImportantForAccessibility(2);
        this.D.setImportantForAccessibility(2);
        setFocusable(true);
        a();
        this.a0 = getResources().getDimensionPixelSize(com.google.android.material.R.dimen.m3_navigation_item_expanded_active_indicator_height_default);
        linearLayout.addOnLayoutChangeListener(new a(1, this));
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < indexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconWidth() {
        int minimumWidth;
        BadgeDrawable badgeDrawable = this.e0;
        if (badgeDrawable == null) {
            minimumWidth = 0;
        } else {
            minimumWidth = badgeDrawable.getMinimumWidth() - this.e0.i.b.A.intValue();
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.w.getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.x.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    public static void i(int i, int i2, int i3, View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    private void setLabelPivots(TextView textView) {
        textView.setPivotX(textView.getWidth() / 2);
        textView.setPivotY(textView.getBaseline());
    }

    public final void a() {
        float textSize = this.z.getTextSize();
        float textSize2 = this.A.getTextSize();
        this.l = textSize - textSize2;
        this.m = (textSize2 * 1.0f) / textSize;
        this.n = (textSize * 1.0f) / textSize2;
        float textSize3 = this.C.getTextSize();
        float textSize4 = this.D.getTextSize();
        this.o = textSize3 - textSize4;
        this.p = (textSize4 * 1.0f) / textSize3;
        this.q = (textSize3 * 1.0f) / textSize4;
    }

    public final void b() {
        Drawable drawable = this.g;
        RippleDrawable rippleDrawable = null;
        boolean z = true;
        if (this.f != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.T && getActiveIndicatorDrawable() != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(RippleUtils.c(this.f), null, activeIndicatorDrawable);
                z = false;
            } else if (drawable == null) {
                drawable = new RippleDrawable(RippleUtils.a(this.f), null, null);
            }
        }
        FrameLayout frameLayout = this.w;
        frameLayout.setPadding(0, 0, 0, 0);
        frameLayout.setForeground(rippleDrawable);
        setBackground(drawable);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void c(MenuItemImpl menuItemImpl) {
        CharSequence charSequence;
        this.M = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.e);
        setId(menuItemImpl.f179a);
        if (!TextUtils.isEmpty(menuItemImpl.q)) {
            setContentDescription(menuItemImpl.q);
        }
        if (!TextUtils.isEmpty(menuItemImpl.r)) {
            charSequence = menuItemImpl.r;
        } else {
            charSequence = menuItemImpl.e;
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.a(this, charSequence);
        }
        l();
        this.f11840c = true;
    }

    public final void d(float f, float f2) {
        float f3;
        float f4;
        ActiveIndicatorTransform activeIndicatorTransform = this.R;
        activeIndicatorTransform.getClass();
        float a2 = AnimationUtils.a(0.4f, 1.0f, f);
        View view = this.v;
        view.setScaleX(a2);
        view.setScaleY(activeIndicatorTransform.a(f));
        if (f2 == 0.0f) {
            f3 = 0.8f;
        } else {
            f3 = 0.0f;
        }
        if (f2 == 0.0f) {
            f4 = 1.0f;
        } else {
            f4 = 0.2f;
        }
        view.setAlpha(AnimationUtils.b(0.0f, 1.0f, f3, f4, f));
        this.S = f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.T) {
            this.w.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        int i;
        int i2;
        int i3 = 0;
        if (this.x.getLayoutParams().width > 0) {
            i = this.k;
        } else {
            i = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.B.getLayoutParams();
        if (layoutParams != null) {
            if (getLayoutDirection() == 1) {
                i2 = i;
            } else {
                i2 = 0;
            }
            layoutParams.rightMargin = i2;
            if (getLayoutDirection() != 1) {
                i3 = i;
            }
            layoutParams.leftMargin = i3;
        }
    }

    public final void f(TextView textView, TextView textView2, float f, float f2) {
        int i;
        int i2;
        int i3;
        int i4;
        if (this.f0 == 0) {
            i = (int) (this.h + f2);
        } else {
            i = 0;
        }
        i(i, 0, this.h0, this.t);
        int i5 = this.f0;
        if (i5 == 0) {
            i2 = 0;
        } else {
            i2 = this.m0.top;
        }
        if (i5 == 0) {
            i3 = 0;
        } else {
            i3 = this.m0.bottom;
        }
        if (i5 == 0) {
            i4 = 17;
        } else {
            i4 = 8388627;
        }
        i(i2, i3, i4, this.u);
        int i6 = this.i;
        BaselineLayout baselineLayout = this.y;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), i6);
        this.E.setVisibility(0);
        textView.setScaleX(1.0f);
        textView.setScaleY(1.0f);
        textView.setVisibility(0);
        textView2.setScaleX(f);
        textView2.setScaleY(f);
        textView2.setVisibility(4);
    }

    public final void g() {
        int i;
        int i2 = this.h;
        if (this.f0 == 0) {
            i = 17;
        } else {
            i = this.h0;
        }
        i(i2, i2, i, this.t);
        i(0, 0, 17, this.u);
        BaselineLayout baselineLayout = this.y;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), 0);
        this.E.setVisibility(8);
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        return this.v.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.e0;
    }

    @NonNull
    public BaselineLayout getExpandedLabelGroup() {
        return this.B;
    }

    @DrawableRes
    public int getItemBackgroundResId() {
        return com.google.android.material.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.M;
    }

    @DimenRes
    public int getItemDefaultMarginResId() {
        return com.google.android.material.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.F;
    }

    @NonNull
    public BaselineLayout getLabelGroup() {
        return this.y;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        LinearLayout linearLayout = this.t;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
        return linearLayout.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        if (this.f0 == 1) {
            LinearLayout linearLayout = this.u;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            return linearLayout.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        }
        BaselineLayout baselineLayout = this.y;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) baselineLayout.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), baselineLayout.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            boolean r0 = r4.l0
            if (r0 == 0) goto L8
            r5.setTextAppearance(r6)
            return
        L8:
            r5.setTextAppearance(r6)
            android.content.Context r0 = r5.getContext()
            r1 = 0
            if (r6 != 0) goto L13
            goto L29
        L13:
            int[] r2 = androidx.appcompat.R.styleable.TextAppearance
            android.content.res.TypedArray r6 = r0.obtainStyledAttributes(r6, r2)
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            int r3 = androidx.appcompat.R.styleable.TextAppearance_android_textSize
            boolean r3 = r6.getValue(r3, r2)
            r6.recycle()
            if (r3 != 0) goto L2b
        L29:
            r6 = r1
            goto L56
        L2b:
            int r6 = r2.getComplexUnit()
            r3 = 2
            if (r6 != r3) goto L48
            int r6 = r2.data
            float r6 = android.util.TypedValue.complexToFloat(r6)
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r6 = r6 * r0
            int r6 = java.lang.Math.round(r6)
            goto L56
        L48:
            int r6 = r2.data
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r6 = android.util.TypedValue.complexToDimensionPixelSize(r6, r0)
        L56:
            if (r6 == 0) goto L5c
            float r6 = (float) r6
            r5.setTextSize(r1, r6)
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarItemView.h(android.widget.TextView, int):void");
    }

    public final void j(int i) {
        if (i <= 0 && getVisibility() == 0) {
            return;
        }
        int min = Math.min(this.U, i - (this.c0 * 2));
        int i2 = this.V;
        if (this.f0 == 1) {
            int i3 = i - (this.d0 * 2);
            int i4 = this.W;
            if (i4 != -1) {
                if (i4 == -2) {
                    i3 = this.t.getMeasuredWidth();
                } else {
                    i3 = Math.min(i4, i3);
                }
            }
            min = i3;
            i2 = Math.max(this.a0, this.u.getMeasuredHeight());
        }
        View view = this.v;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (this.b0 && this.r == 2) {
            i2 = min;
        }
        layoutParams.height = i2;
        layoutParams.width = Math.max(0, min);
        view.setLayoutParams(layoutParams);
    }

    public final void k(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        h(textView, i);
        a();
        textView.setMinimumHeight(MaterialResources.d(textView.getContext(), i));
        ColorStateList colorStateList = this.K;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        TextView textView2 = this.A;
        textView2.setTypeface(textView2.getTypeface(), this.L ? 1 : 0);
        TextView textView3 = this.D;
        textView3.setTypeface(textView3.getTypeface(), this.L ? 1 : 0);
    }

    public final void l() {
        int i;
        MenuItemImpl menuItemImpl = this.M;
        if (menuItemImpl != null) {
            if (menuItemImpl.isVisible() && (this.i0 || !this.j0)) {
                i = 0;
            } else {
                i = 8;
            }
            setVisibility(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.M;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.M.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, n0);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.e0;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            MenuItemImpl menuItemImpl = this.M;
            CharSequence charSequence = menuItemImpl.e;
            if (!TextUtils.isEmpty(menuItemImpl.q)) {
                charSequence = this.M.q;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.e0.d()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
        accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(isSelected(), 0, 1, getItemVisiblePosition(), 1));
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfoCompat.i(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.google.android.material.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(final int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Runnable() { // from class: com.google.android.material.navigation.NavigationBarItemView.1
            @Override // java.lang.Runnable
            public final void run() {
                NavigationBarItemView.this.j(i);
            }
        });
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        this.v.setBackground(drawable);
        b();
    }

    public void setActiveIndicatorEnabled(boolean z) {
        int i;
        this.T = z;
        b();
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        this.v.setVisibility(i);
        requestLayout();
    }

    public void setActiveIndicatorExpandedHeight(int i) {
        this.a0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorExpandedMarginHorizontal(@Px int i) {
        this.d0 = i;
        if (this.f0 == 1) {
            setPadding(i, 0, i, 0);
        }
        j(getWidth());
    }

    public void setActiveIndicatorExpandedPadding(@NonNull Rect rect) {
        this.m0 = rect;
    }

    public void setActiveIndicatorExpandedWidth(int i) {
        this.W = i;
        j(getWidth());
    }

    public void setActiveIndicatorHeight(int i) {
        this.V = i;
        j(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i) {
        int i2;
        if (this.j != i) {
            this.j = i;
            ((LinearLayout.LayoutParams) this.y.getLayoutParams()).topMargin = i;
            if (this.B.getLayoutParams() != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.B.getLayoutParams();
                if (getLayoutDirection() == 1) {
                    i2 = i;
                } else {
                    i2 = 0;
                }
                layoutParams.rightMargin = i2;
                if (getLayoutDirection() == 1) {
                    i = 0;
                }
                layoutParams.leftMargin = i;
                requestLayout();
            }
        }
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i) {
        this.c0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z) {
        this.b0 = z;
    }

    public void setActiveIndicatorWidth(int i) {
        this.U = i;
        j(getWidth());
    }

    public void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        BadgeDrawable badgeDrawable2 = this.e0;
        if (badgeDrawable2 != badgeDrawable) {
            ImageView imageView = this.x;
            if (badgeDrawable2 != null && imageView != null) {
                Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
                if (this.e0 != null) {
                    setClipChildren(true);
                    setClipToPadding(true);
                    BadgeDrawable badgeDrawable3 = this.e0;
                    if (badgeDrawable3 != null) {
                        if (badgeDrawable3.e() != null) {
                            badgeDrawable3.e().setForeground(null);
                        } else {
                            imageView.getOverlay().remove(badgeDrawable3);
                        }
                    }
                    this.e0 = null;
                }
            }
            this.e0 = badgeDrawable;
            int i = this.g0;
            BadgeState badgeState = badgeDrawable.i;
            if (badgeState.l != i) {
                badgeState.l = i;
                badgeDrawable.k();
            }
            if (imageView != null && this.e0 != null) {
                setClipChildren(false);
                setClipToPadding(false);
                BadgeDrawable badgeDrawable4 = this.e0;
                Rect rect = new Rect();
                imageView.getDrawingRect(rect);
                badgeDrawable4.setBounds(rect);
                badgeDrawable4.j(imageView, null);
                if (badgeDrawable4.e() != null) {
                    badgeDrawable4.e().setForeground(badgeDrawable4);
                } else {
                    imageView.getOverlay().add(badgeDrawable4);
                }
            }
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        final float f;
        TextView textView = this.A;
        setLabelPivots(textView);
        TextView textView2 = this.z;
        setLabelPivots(textView2);
        TextView textView3 = this.D;
        setLabelPivots(textView3);
        TextView textView4 = this.C;
        setLabelPivots(textView4);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        if (this.T && this.f11840c && isAttachedToWindow()) {
            ValueAnimator valueAnimator = this.Q;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.Q = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.S, f);
            this.Q = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.navigation.NavigationBarItemView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    int[] iArr = NavigationBarItemView.n0;
                    NavigationBarItemView.this.d(floatValue, f);
                }
            });
            this.Q.setInterpolator(MotionUtils.d(getContext(), com.google.android.material.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.b));
            this.Q.setDuration(MotionUtils.c(getContext(), com.google.android.material.R.attr.motionDurationLong2, getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
            this.Q.start();
        } else {
            d(f, f);
        }
        float f2 = this.l;
        float f3 = this.m;
        float f4 = this.n;
        if (this.f0 == 1) {
            f2 = this.o;
            f3 = this.p;
            f4 = this.q;
            textView = textView3;
            textView2 = textView4;
        }
        int i = this.r;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        g();
                    }
                } else if (z) {
                    f(textView, textView2, f3, f2);
                } else {
                    f(textView2, textView, f4, 0.0f);
                }
            } else if (z) {
                f(textView, textView2, f3, 0.0f);
            } else {
                g();
            }
        } else if (this.s) {
            if (z) {
                f(textView, textView2, f3, 0.0f);
            } else {
                g();
            }
        } else if (z) {
            f(textView, textView2, f3, f2);
        } else {
            f(textView2, textView, f4, 0.0f);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.z.setEnabled(z);
        this.A.setEnabled(z);
        this.C.setEnabled(z);
        this.D.setEnabled(z);
        this.x.setEnabled(z);
    }

    public void setExpanded(boolean z) {
        this.i0 = z;
        l();
    }

    public void setHorizontalTextAppearanceActive(@StyleRes int i) {
        this.I = i;
        if (i == 0) {
            i = this.G;
        }
        k(this.D, i);
    }

    public void setHorizontalTextAppearanceInactive(@StyleRes int i) {
        this.J = i;
        if (i == 0) {
            i = this.H;
        }
        TextView textView = this.C;
        if (textView != null) {
            h(textView, i);
            a();
            textView.setMinimumHeight(MaterialResources.d(textView.getContext(), i));
            ColorStateList colorStateList = this.K;
            if (colorStateList != null) {
                textView.setTextColor(colorStateList);
            }
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.O) {
            return;
        }
        this.O = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = drawable.mutate();
            this.P = drawable;
            ColorStateList colorStateList = this.N;
            if (colorStateList != null) {
                drawable.setTintList(colorStateList);
            }
        }
        this.x.setImageDrawable(drawable);
    }

    public void setIconLabelHorizontalSpacing(int i) {
        if (this.k != i) {
            this.k = i;
            e();
            requestLayout();
        }
    }

    public void setIconSize(int i) {
        ImageView imageView = this.x;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        imageView.setLayoutParams(layoutParams);
        e();
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.N = colorStateList;
        if (this.M != null && (drawable = this.P) != null) {
            drawable.setTintList(colorStateList);
            this.P.invalidateSelf();
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : getContext().getDrawable(i));
    }

    public void setItemGravity(int i) {
        this.h0 = i;
        requestLayout();
    }

    public void setItemIconGravity(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.f0 != i) {
            this.f0 = i;
            this.g0 = 0;
            BaselineLayout baselineLayout = this.y;
            this.E = baselineLayout;
            LinearLayout linearLayout = this.u;
            int i8 = 8;
            if (i == 1) {
                if (this.B.getParent() == null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    linearLayout.addView(this.B, layoutParams);
                    e();
                }
                Rect rect = this.m0;
                int i9 = rect.left;
                int i10 = rect.right;
                int i11 = rect.top;
                i2 = rect.bottom;
                this.g0 = 1;
                int i12 = this.d0;
                this.E = this.B;
                i6 = i11;
                i5 = i10;
                i4 = i9;
                i3 = i12;
                i7 = 0;
            } else {
                i2 = 0;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 8;
                i8 = 0;
            }
            baselineLayout.setVisibility(i8);
            this.B.setVisibility(i7);
            ((FrameLayout.LayoutParams) this.t.getLayoutParams()).gravity = this.h0;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams2.leftMargin = i4;
            layoutParams2.rightMargin = i5;
            layoutParams2.topMargin = i6;
            layoutParams2.bottomMargin = i2;
            setPadding(i3, 0, i3, 0);
            j(getWidth());
            b();
        }
    }

    public void setItemPaddingBottom(int i) {
        if (this.i != i) {
            this.i = i;
            MenuItemImpl menuItemImpl = this.M;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setItemPaddingTop(int i) {
        if (this.h != i) {
            this.h = i;
            MenuItemImpl menuItemImpl = this.M;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setItemPosition(int i) {
        this.F = i;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f = colorStateList;
        b();
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.l0 = z;
        setTextAppearanceActive(this.G);
        setTextAppearanceInactive(this.H);
        setHorizontalTextAppearanceActive(this.I);
        setHorizontalTextAppearanceInactive(this.J);
    }

    public void setLabelMaxLines(int i) {
        TextView textView = this.z;
        textView.setMaxLines(i);
        TextView textView2 = this.A;
        textView2.setMaxLines(i);
        this.C.setMaxLines(i);
        this.D.setMaxLines(i);
        if (Build.VERSION.SDK_INT > 34) {
            textView.setGravity(17);
            textView2.setGravity(17);
        } else if (i > 1) {
            textView.setEllipsize(null);
            textView2.setEllipsize(null);
            textView.setGravity(17);
            textView2.setGravity(17);
        } else {
            textView.setGravity(16);
            textView2.setGravity(16);
        }
        requestLayout();
    }

    public void setLabelVisibilityMode(int i) {
        if (this.r != i) {
            this.r = i;
            if (this.b0 && i == 2) {
                this.R = p0;
            } else {
                this.R = o0;
            }
            j(getWidth());
            MenuItemImpl menuItemImpl = this.M;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        this.k0 = z;
        this.y.setMeasurePaddingFromBaseline(z);
        this.z.setIncludeFontPadding(z);
        this.A.setIncludeFontPadding(z);
        this.B.setMeasurePaddingFromBaseline(z);
        this.C.setIncludeFontPadding(z);
        this.D.setIncludeFontPadding(z);
        requestLayout();
    }

    public void setOnlyShowWhenExpanded(boolean z) {
        this.j0 = z;
        l();
    }

    public void setShifting(boolean z) {
        if (this.s != z) {
            this.s = z;
            MenuItemImpl menuItemImpl = this.M;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        this.G = i;
        k(this.A, i);
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z) {
        this.L = z;
        setTextAppearanceActive(this.G);
        setHorizontalTextAppearanceActive(this.I);
        TextView textView = this.A;
        textView.setTypeface(textView.getTypeface(), this.L ? 1 : 0);
        TextView textView2 = this.D;
        textView2.setTypeface(textView2.getTypeface(), this.L ? 1 : 0);
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        this.H = i;
        TextView textView = this.z;
        if (textView != null) {
            h(textView, i);
            a();
            textView.setMinimumHeight(MaterialResources.d(textView.getContext(), i));
            ColorStateList colorStateList = this.K;
            if (colorStateList != null) {
                textView.setTextColor(colorStateList);
            }
        }
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        this.K = colorStateList;
        if (colorStateList != null) {
            this.z.setTextColor(colorStateList);
            this.A.setTextColor(colorStateList);
            this.C.setTextColor(colorStateList);
            this.D.setTextColor(colorStateList);
        }
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.z.setText(charSequence);
        this.A.setText(charSequence);
        this.C.setText(charSequence);
        this.D.setText(charSequence);
        MenuItemImpl menuItemImpl = this.M;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.q)) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.M;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.r)) {
            charSequence = this.M.r;
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.a(this, charSequence);
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.g = drawable;
        b();
    }
}
