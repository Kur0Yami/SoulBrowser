package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public View f11646c;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public boolean l;
    public Drawable m;
    public Drawable n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public int s;
    public int t;
    public boolean u;

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements OnApplyWindowInsetsListener {
        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Integer) valueAnimator.getAnimatedValue()).intValue();
            throw null;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface CollapsedTitleGravityMode {
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f11647a;
        public float b;
    }

    /* loaded from: classes3.dex */
    public class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public final void a(int i) {
            throw null;
        }
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes3.dex */
    public interface StaticLayoutBuilderConfigurer extends com.google.android.material.internal.StaticLayoutBuilderConfigurer {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface TitleCollapseMode {
    }

    public static ViewOffsetHelper a(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(R.id.view_offset_helper);
        if (viewOffsetHelper == null) {
            ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
            view.setTag(R.id.view_offset_helper, viewOffsetHelper2);
            return viewOffsetHelper2;
        }
        return viewOffsetHelper;
    }

    @ColorInt
    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList e = MaterialColors.e(getContext(), R.attr.colorSurfaceContainer);
        if (e != null) {
            return e.getDefaultColor();
        }
        getResources().getDimension(R.dimen.design_appbar_elevation);
        throw null;
    }

    public final void b() {
        boolean z;
        if (this.m == null && this.n == null) {
            return;
        }
        if (getHeight() + this.s < getScrimVisibleHeightTrigger()) {
            z = true;
        } else {
            z = false;
        }
        setScrimsShown(z);
    }

    public final void c() {
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.m;
        if (drawable != null && this.o > 0) {
            drawable.mutate().setAlpha(this.o);
            this.m.draw(canvas);
        }
        if (this.k && this.l) {
            throw null;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        Drawable drawable = this.m;
        if (drawable != null && this.o > 0 && view == null) {
            int width = getWidth();
            int height = getHeight();
            if (this.t == 1 && view != null && this.k) {
                height = view.getBottom();
            }
            drawable.setBounds(0, 0, width, height);
            this.m.mutate().setAlpha(this.o);
            this.m.draw(canvas);
            z = true;
        } else {
            z = false;
        }
        if (super.drawChild(canvas, view, j) || z) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.n;
        if (drawable != null && drawable.isStateful()) {
            z = drawable.setState(drawableState);
        } else {
            z = false;
        }
        Drawable drawable2 = this.m;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, com.google.android.material.appbar.CollapsingToolbarLayout$LayoutParams, android.widget.FrameLayout$LayoutParams] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ?? layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.f11647a = 0;
        layoutParams.b = 0.5f;
        return layoutParams;
    }

    public float getCollapsedSubtitleTextSize() {
        throw null;
    }

    @NonNull
    public Typeface getCollapsedSubtitleTypeface() {
        throw null;
    }

    public int getCollapsedTitleGravity() {
        throw null;
    }

    public float getCollapsedTitleTextSize() {
        throw null;
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        throw null;
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.m;
    }

    public float getExpandedSubtitleTextSize() {
        throw null;
    }

    @NonNull
    public Typeface getExpandedSubtitleTypeface() {
        throw null;
    }

    public int getExpandedTitleGravity() {
        throw null;
    }

    public int getExpandedTitleMarginBottom() {
        return this.i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f;
    }

    public int getExpandedTitleMarginTop() {
        return this.g;
    }

    public int getExpandedTitleSpacing() {
        return this.j;
    }

    public float getExpandedTitleTextSize() {
        throw null;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        throw null;
    }

    @RequiresApi
    @RestrictTo
    public int getHyphenationFrequency() {
        throw null;
    }

    @RestrictTo
    public int getLineCount() {
        throw null;
    }

    @RequiresApi
    @RestrictTo
    public float getLineSpacingAdd() {
        throw null;
    }

    @RequiresApi
    @RestrictTo
    public float getLineSpacingMultiplier() {
        throw null;
    }

    @RestrictTo
    public int getMaxLines() {
        throw null;
    }

    public int getScrimAlpha() {
        return this.o;
    }

    public long getScrimAnimationDuration() {
        return this.q;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.r;
        if (i >= 0) {
            return i + 0;
        }
        int minimumHeight = getMinimumHeight();
        if (minimumHeight > 0) {
            return Math.min(minimumHeight * 2, getHeight());
        }
        return getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.n;
    }

    @Nullable
    public CharSequence getSubtitle() {
        if (!this.k) {
            return null;
        }
        throw null;
    }

    @Nullable
    public CharSequence getTitle() {
        if (!this.k) {
            return null;
        }
        throw null;
    }

    public int getTitleCollapseMode() {
        return this.t;
    }

    @Nullable
    public TimeInterpolator getTitlePositionInterpolator() {
        throw null;
    }

    @NonNull
    public TextUtils.TruncateAt getTitleTextEllipsize() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.t == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            appBarLayout.a(null);
            requestApplyInsets();
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ArrayList arrayList;
        ViewParent parent = getParent();
        if ((parent instanceof AppBarLayout) && (arrayList = ((AppBarLayout) parent).l) != null) {
            arrayList.remove((Object) null);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ViewOffsetHelper a2 = a(getChildAt(i5));
            View view = a2.f11650a;
            a2.b = view.getTop();
            a2.f11651c = view.getLeft();
        }
        if (this.k) {
            if (this.f11646c.isAttachedToWindow() && this.f11646c.getVisibility() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.l = z2;
            if (z2) {
                getLayoutDirection();
                a(null);
                throw null;
            }
        }
        c();
        b();
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            a(getChildAt(i6)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            boolean z = this.u;
        }
        c();
        if (!this.k) {
        } else {
            throw null;
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedSubtitleTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setCollapsedSubtitleTextColor(@ColorInt int i) {
        setCollapsedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedSubtitleTextSize(float f) {
        throw null;
    }

    public void setCollapsedSubtitleTypeface(@Nullable Typeface typeface) {
        throw null;
    }

    public void setCollapsedTitleGravity(int i) {
        throw null;
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextSize(float f) {
        throw null;
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        throw null;
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.m;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.m = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.m.setCallback(this);
                this.m.setAlpha(this.o);
            }
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(getContext().getDrawable(i));
    }

    public void setExpandedSubtitleColor(@ColorInt int i) {
        setExpandedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedSubtitleTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setExpandedSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        throw null;
    }

    public void setExpandedSubtitleTextSize(float f) {
        throw null;
    }

    public void setExpandedSubtitleTypeface(@Nullable Typeface typeface) {
        throw null;
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        throw null;
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.i = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.h = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.g = i;
        requestLayout();
    }

    public void setExpandedTitleSpacing(int i) {
        this.j = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        throw null;
    }

    public void setExpandedTitleTextSize(float f) {
        throw null;
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        throw null;
    }

    @RestrictTo
    public void setExtraMultilineHeightEnabled(boolean z) {
    }

    @RestrictTo
    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.u = z;
    }

    @RequiresApi
    @RestrictTo
    public void setHyphenationFrequency(int i) {
        throw null;
    }

    @RequiresApi
    @RestrictTo
    public void setLineSpacingAdd(float f) {
        throw null;
    }

    @RequiresApi
    @RestrictTo
    public void setLineSpacingMultiplier(@FloatRange float f) {
        throw null;
    }

    @RestrictTo
    public void setMaxLines(int i) {
        throw null;
    }

    @RestrictTo
    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        throw null;
    }

    public void setScrimAlpha(int i) {
        if (i != this.o) {
            this.o = i;
            postInvalidateOnAnimation();
        }
    }

    public void setScrimAnimationDuration(@IntRange long j) {
        this.q = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange int i) {
        if (this.r != i) {
            this.r = i;
            b();
        }
    }

    public void setScrimsShown(boolean z) {
        boolean z2;
        int i = 0;
        if (isLaidOut() && !isInEditMode()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.p != z) {
            if (!z2) {
                if (z) {
                    i = KotlinVersion.MAX_COMPONENT_VALUE;
                }
                setScrimAlpha(i);
                this.p = z;
                return;
            }
            throw null;
        }
    }

    @RequiresApi
    @RestrictTo
    public void setStaticLayoutBuilderConfigurer(@Nullable StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        throw null;
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        boolean z;
        Drawable drawable2 = this.n;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.n = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.n.setState(getDrawableState());
                }
                this.n.setLayoutDirection(getLayoutDirection());
                Drawable drawable4 = this.n;
                if (getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                drawable4.setVisible(z, false);
                this.n.setCallback(this);
                this.n.setAlpha(this.o);
            }
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) {
        setStatusBarScrim(getContext().getDrawable(i));
    }

    public void setSubtitle(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setTitleCollapseMode(int i) {
        this.t = i;
        throw null;
    }

    public void setTitleEllipsize(@NonNull TextUtils.TruncateAt truncateAt) {
        throw null;
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.k) {
            this.k = z;
            setContentDescription(getTitle());
            if (!this.k) {
                ViewParent parent = this.f11646c.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f11646c);
                }
            }
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        throw null;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.n;
        if (drawable != null && drawable.isVisible() != z) {
            this.n.setVisible(z, false);
        }
        Drawable drawable2 = this.m;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.m.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.m && drawable != this.n) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.appbar.CollapsingToolbarLayout$LayoutParams, android.widget.FrameLayout$LayoutParams] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? layoutParams = new FrameLayout.LayoutParams(context, attributeSet);
        layoutParams.f11647a = 0;
        layoutParams.b = 0.5f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
        layoutParams.f11647a = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
        layoutParams.b = obtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    public void setCollapsedSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        throw null;
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.appbar.CollapsingToolbarLayout$LayoutParams, android.widget.FrameLayout$LayoutParams] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        ?? layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.f11647a = 0;
        layoutParams.b = 0.5f;
        return layoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, com.google.android.material.appbar.CollapsingToolbarLayout$LayoutParams, android.widget.FrameLayout$LayoutParams] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        ?? layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.f11647a = 0;
        layoutParams2.b = 0.5f;
        return layoutParams2;
    }
}
