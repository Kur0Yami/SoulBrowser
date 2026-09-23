package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pools;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.IntCompanionObject;

@ViewPager.DecorView
/* loaded from: classes3.dex */
public class TabLayout extends HorizontalScrollView {
    public static final int d0 = R.style.Widget_Design_TabLayout;
    public static final Pools.SynchronizedPool e0 = new Pools.SynchronizedPool(16);
    public final int A;
    public final int B;
    public final int C;
    public int D;
    public final int E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public boolean L;
    public TabIndicatorInterpolator M;
    public final TimeInterpolator N;
    public BaseOnTabSelectedListener O;
    public final ArrayList P;
    public ViewPagerOnTabSelectedListener Q;
    public ValueAnimator R;
    public ViewPager S;
    public PagerAdapter T;
    public DataSetObserver U;
    public TabLayoutOnPageChangeListener V;
    public AdapterChangeListener W;
    public boolean a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public int f11939c;
    public final Pools.SimplePool c0;
    public final ArrayList f;
    public Tab g;
    public final SlidingTabIndicator h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public ColorStateList p;
    public ColorStateList q;
    public ColorStateList r;
    public Drawable s;
    public int t;
    public final float u;
    public final float v;
    public final float w;
    public final int x;
    public int y;
    public final int z;

    /* loaded from: classes3.dex */
    public class AdapterChangeListener implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public boolean f11941a;

        public AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public final void a(ViewPager viewPager, PagerAdapter pagerAdapter) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.S == viewPager) {
                tabLayout.l(pagerAdapter, this.f11941a);
            }
        }
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void a(Tab tab);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface Mode {
    }

    /* loaded from: classes3.dex */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    /* loaded from: classes3.dex */
    public class PagerAdapterObserver extends DataSetObserver {
        public PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.i();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.i();
        }
    }

    /* loaded from: classes3.dex */
    public class SlidingTabIndicator extends LinearLayout {
        public static final /* synthetic */ int g = 0;

        /* renamed from: c, reason: collision with root package name */
        public ValueAnimator f11943c;

        public SlidingTabIndicator(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        public final void a(int i) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.b0 != 0 && (tabLayout.getTabSelectedIndicator().getBounds().left != -1 || tabLayout.getTabSelectedIndicator().getBounds().right != -1)) {
                return;
            }
            View childAt = getChildAt(i);
            TabIndicatorInterpolator tabIndicatorInterpolator = tabLayout.M;
            Drawable drawable = tabLayout.s;
            tabIndicatorInterpolator.getClass();
            RectF a2 = TabIndicatorInterpolator.a(tabLayout, childAt);
            drawable.setBounds((int) a2.left, drawable.getBounds().top, (int) a2.right, drawable.getBounds().bottom);
            tabLayout.f11939c = i;
        }

        public final void b(int i) {
            TabLayout tabLayout = TabLayout.this;
            Rect bounds = tabLayout.s.getBounds();
            tabLayout.s.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        public final void c(View view, View view2, float f) {
            TabLayout tabLayout = TabLayout.this;
            if (view != null && view.getWidth() > 0) {
                tabLayout.M.b(tabLayout, view, view2, f, tabLayout.s);
            } else {
                Drawable drawable = tabLayout.s;
                drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.s.getBounds().bottom);
            }
            postInvalidateOnAnimation();
        }

        public final void d(int i, int i2, boolean z) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f11939c == i) {
                return;
            }
            final View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            final View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                a(tabLayout.getSelectedTabPosition());
                return;
            }
            tabLayout.f11939c = i;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i3 = SlidingTabIndicator.g;
                    SlidingTabIndicator.this.c(childAt, childAt2, animatedFraction);
                }
            };
            if (z) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f11943c = valueAnimator;
                valueAnimator.setInterpolator(tabLayout.N);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(animatorUpdateListener);
                valueAnimator.start();
                return;
            }
            this.f11943c.removeAllUpdateListeners();
            this.f11943c.addUpdateListener(animatorUpdateListener);
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int height;
            TabLayout tabLayout = TabLayout.this;
            int height2 = tabLayout.s.getBounds().height();
            if (height2 < 0) {
                height2 = tabLayout.s.getIntrinsicHeight();
            }
            int i = tabLayout.F;
            if (i != 0) {
                if (i != 1) {
                    height = 0;
                    if (i != 2) {
                        if (i != 3) {
                            height2 = 0;
                        } else {
                            height2 = getHeight();
                        }
                    }
                } else {
                    height = (getHeight() - height2) / 2;
                    height2 = (getHeight() + height2) / 2;
                }
            } else {
                height = getHeight() - height2;
                height2 = getHeight();
            }
            if (tabLayout.s.getBounds().width() > 0) {
                Rect bounds = tabLayout.s.getBounds();
                tabLayout.s.setBounds(bounds.left, height, bounds.right, height2);
                tabLayout.s.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f11943c;
            TabLayout tabLayout = TabLayout.this;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                d(tabLayout.getSelectedTabPosition(), -1, false);
                return;
            }
            if (tabLayout.f11939c == -1) {
                tabLayout.f11939c = tabLayout.getSelectedTabPosition();
            }
            a(tabLayout.f11939c);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                TabLayout tabLayout = TabLayout.this;
                boolean z = true;
                if (tabLayout.D == 1 || tabLayout.G == 2) {
                    int childCount = getChildCount();
                    int i3 = 0;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = getChildAt(i4);
                        if (childAt.getVisibility() == 0) {
                            i3 = Math.max(i3, childAt.getMeasuredWidth());
                        }
                    }
                    if (i3 > 0) {
                        if (i3 * childCount <= getMeasuredWidth() - (((int) ViewUtils.b(getContext(), 16)) * 2)) {
                            boolean z2 = false;
                            for (int i5 = 0; i5 < childCount; i5++) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                                if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                                    layoutParams.width = i3;
                                    layoutParams.weight = 0.0f;
                                    z2 = true;
                                }
                            }
                            z = z2;
                        } else {
                            tabLayout.D = 0;
                            tabLayout.o(false);
                        }
                        if (z) {
                            super.onMeasure(i, i2);
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class Tab {

        /* renamed from: a, reason: collision with root package name */
        public CharSequence f11946a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public View f11947c;
        public TabLayout d;
        public TabView e;
        public int f;
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface TabIndicatorGravity {
    }

    /* loaded from: classes3.dex */
    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f11948a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f11949c;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f11948a = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void b(float f, int i) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.f11948a.get();
            if (tabLayout != null) {
                int i2 = this.f11949c;
                boolean z2 = true;
                if (i2 == 2 && this.b != 1) {
                    z = true;
                    z2 = false;
                } else {
                    z = true;
                }
                if (i2 == 2 && this.b == 0) {
                    z = false;
                }
                tabLayout.m(i, f, z2, z, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void c(int i) {
            this.b = this.f11949c;
            this.f11949c = i;
            TabLayout tabLayout = (TabLayout) this.f11948a.get();
            if (tabLayout != null) {
                tabLayout.b0 = this.f11949c;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void d(int i) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.f11948a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.f11949c;
                if (i2 != 0 && (i2 != 2 || this.b != 0)) {
                    z = false;
                } else {
                    z = true;
                }
                tabLayout.k(tabLayout.g(i), z);
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int p = 0;

        /* renamed from: c, reason: collision with root package name */
        public Tab f11950c;
        public TextView f;
        public ImageView g;
        public View h;
        public BadgeDrawable i;
        public View j;
        public TextView k;
        public ImageView l;
        public Drawable m;
        public int n;

        public TabView(Context context) {
            super(context);
            this.n = 2;
            e(context);
            setPaddingRelative(TabLayout.this.i, TabLayout.this.j, TabLayout.this.k, TabLayout.this.l);
            setGravity(17);
            setOrientation(!TabLayout.this.H ? 1 : 0);
            setClickable(true);
            ViewCompat.H(this, PointerIconCompat.a(getContext()));
        }

        @Nullable
        private BadgeDrawable getBadge() {
            return this.i;
        }

        @NonNull
        private BadgeDrawable getOrCreateBadge() {
            if (this.i == null) {
                this.i = new BadgeDrawable(getContext(), null);
            }
            b();
            BadgeDrawable badgeDrawable = this.i;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public final void a() {
            if (this.i != null) {
                setClipChildren(true);
                setClipToPadding(true);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                    viewGroup.setClipToPadding(true);
                }
                View view = this.h;
                if (view != null) {
                    BadgeDrawable badgeDrawable = this.i;
                    if (badgeDrawable != null) {
                        if (badgeDrawable.e() != null) {
                            badgeDrawable.e().setForeground(null);
                        } else {
                            view.getOverlay().remove(badgeDrawable);
                        }
                    }
                    this.h = null;
                }
            }
        }

        public final void b() {
            if (this.i != null) {
                if (this.j != null) {
                    a();
                    return;
                }
                TextView textView = this.f;
                if (textView != null && this.f11950c != null) {
                    if (this.h != textView) {
                        a();
                        TextView textView2 = this.f;
                        if (this.i != null && textView2 != null) {
                            setClipChildren(false);
                            setClipToPadding(false);
                            ViewGroup viewGroup = (ViewGroup) getParent();
                            if (viewGroup != null) {
                                viewGroup.setClipChildren(false);
                                viewGroup.setClipToPadding(false);
                            }
                            BadgeDrawable badgeDrawable = this.i;
                            Rect rect = new Rect();
                            textView2.getDrawingRect(rect);
                            badgeDrawable.setBounds(rect);
                            badgeDrawable.j(textView2, null);
                            if (badgeDrawable.e() != null) {
                                badgeDrawable.e().setForeground(badgeDrawable);
                            } else {
                                textView2.getOverlay().add(badgeDrawable);
                            }
                            this.h = textView2;
                            return;
                        }
                        return;
                    }
                    c(textView);
                    return;
                }
                a();
            }
        }

        public final void c(View view) {
            BadgeDrawable badgeDrawable = this.i;
            if (badgeDrawable != null && view == this.h) {
                Rect rect = new Rect();
                view.getDrawingRect(rect);
                badgeDrawable.setBounds(rect);
                badgeDrawable.j(view, null);
            }
        }

        public final void d() {
            boolean z;
            f();
            Tab tab = this.f11950c;
            if (tab != null) {
                TabLayout tabLayout = tab.d;
                if (tabLayout != null) {
                    int selectedTabPosition = tabLayout.getSelectedTabPosition();
                    if (selectedTabPosition != -1 && selectedTabPosition == tab.b) {
                        z = true;
                        setSelected(z);
                    }
                } else {
                    throw new IllegalArgumentException("Tab not attached to a TabLayout");
                }
            }
            z = false;
            setSelected(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            boolean z;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.m;
            if (drawable != null && drawable.isStateful()) {
                z = this.m.setState(drawableState);
            } else {
                z = false;
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, com.google.android.material.tabs.TabLayout$TabView] */
        public final void e(Context context) {
            TabLayout tabLayout = TabLayout.this;
            int i = tabLayout.x;
            GradientDrawable gradientDrawable = null;
            if (i != 0) {
                Drawable a2 = AppCompatResources.a(context, i);
                this.m = a2;
                if (a2 != null && a2.isStateful()) {
                    this.m.setState(getDrawableState());
                }
            } else {
                this.m = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            if (tabLayout.r != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList a3 = RippleUtils.a(tabLayout.r);
                boolean z = tabLayout.L;
                if (z) {
                    gradientDrawable2 = null;
                }
                if (!z) {
                    gradientDrawable = gradientDrawable3;
                }
                gradientDrawable2 = new RippleDrawable(a3, gradientDrawable2, gradientDrawable);
            }
            setBackground(gradientDrawable2);
            tabLayout.invalidate();
        }

        public final void f() {
            View view;
            int i;
            ViewParent parent;
            Tab tab = this.f11950c;
            if (tab != null) {
                view = tab.f11947c;
            } else {
                view = null;
            }
            if (view != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(view);
                    }
                    View view2 = this.j;
                    if (view2 != null && (parent = view2.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.j);
                    }
                    addView(view);
                }
                this.j = view;
                TextView textView = this.f;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.g;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.g.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(android.R.id.text1);
                this.k = textView2;
                if (textView2 != null) {
                    this.n = textView2.getMaxLines();
                }
                this.l = (ImageView) view.findViewById(android.R.id.icon);
            } else {
                View view3 = this.j;
                if (view3 != null) {
                    removeView(view3);
                    this.j = null;
                }
                this.k = null;
                this.l = null;
            }
            if (this.j == null) {
                if (this.g == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.g = imageView2;
                    addView(imageView2, 0);
                }
                if (this.f == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f = textView3;
                    addView(textView3);
                    this.n = this.f.getMaxLines();
                }
                TextView textView4 = this.f;
                TabLayout tabLayout = TabLayout.this;
                textView4.setTextAppearance(tabLayout.m);
                if (isSelected() && (i = tabLayout.o) != -1) {
                    this.f.setTextAppearance(i);
                } else {
                    this.f.setTextAppearance(tabLayout.n);
                }
                ColorStateList colorStateList = tabLayout.p;
                if (colorStateList != null) {
                    this.f.setTextColor(colorStateList);
                }
                g(this.f, this.g, true);
                b();
                final ImageView imageView3 = this.g;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view4, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                            View view5 = imageView3;
                            if (view5.getVisibility() == 0) {
                                int i10 = TabView.p;
                                TabView.this.c(view5);
                            }
                        }
                    });
                }
                final TextView textView5 = this.f;
                if (textView5 != null) {
                    textView5.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view4, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                            View view5 = textView5;
                            if (view5.getVisibility() == 0) {
                                int i10 = TabView.p;
                                TabView.this.c(view5);
                            }
                        }
                    });
                }
            } else {
                TextView textView6 = this.k;
                if (textView6 != null || this.l != null) {
                    g(textView6, this.l, false);
                }
            }
            if (tab != null && !TextUtils.isEmpty(tab.f11946a)) {
                setContentDescription(tab.f11946a);
            }
        }

        public final void g(TextView textView, ImageView imageView, boolean z) {
            boolean z2;
            CharSequence charSequence;
            int i;
            int i2;
            CharSequence charSequence2 = null;
            if (imageView != null) {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
            boolean isEmpty = TextUtils.isEmpty(null);
            if (textView != null) {
                if (!isEmpty) {
                    this.f11950c.getClass();
                    z2 = true;
                } else {
                    z2 = false;
                }
                textView.setText((CharSequence) null);
                if (z2) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
                textView.setVisibility(i2);
                if (!isEmpty) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                if (z2 && imageView.getVisibility() == 0) {
                    i = (int) ViewUtils.b(getContext(), 8);
                } else {
                    i = 0;
                }
                if (TabLayout.this.H) {
                    if (i != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(i);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (i != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = i;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab = this.f11950c;
            if (tab != null) {
                charSequence = tab.f11946a;
            } else {
                charSequence = null;
            }
            if (Build.VERSION.SDK_INT > 23) {
                if (isEmpty) {
                    charSequence2 = charSequence;
                }
                TooltipCompat.a(this, charSequence2);
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.f, this.g, this.j};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    if (z) {
                        i2 = Math.min(i2, view.getTop());
                    } else {
                        i2 = view.getTop();
                    }
                    if (z) {
                        i = Math.max(i, view.getBottom());
                    } else {
                        i = view.getBottom();
                    }
                    z = true;
                }
            }
            return i - i2;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f, this.g, this.j};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    if (z) {
                        i2 = Math.min(i2, view.getLeft());
                    } else {
                        i2 = view.getLeft();
                    }
                    if (z) {
                        i = Math.max(i, view.getRight());
                    } else {
                        i = view.getRight();
                    }
                    z = true;
                }
            }
            return i - i2;
        }

        @Nullable
        public Tab getTab() {
            return this.f11950c;
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.i;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfoCompat.n(this.i.d());
            }
            accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(isSelected(), 0, 1, this.f11950c.b, 1));
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfoCompat.i(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            TabLayout tabLayout = TabLayout.this;
            int tabMaxWidth = tabLayout.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(tabLayout.y, IntCompanionObject.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f != null) {
                float f = tabLayout.u;
                if (isSelected() && tabLayout.o != -1) {
                    f = tabLayout.v;
                }
                int i3 = this.n;
                ImageView imageView = this.g;
                if (imageView != null && imageView.getVisibility() == 0) {
                    i3 = 1;
                } else {
                    TextView textView = this.f;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = tabLayout.w;
                    }
                }
                float textSize = this.f.getTextSize();
                int lineCount = this.f.getLineCount();
                int maxLines = this.f.getMaxLines();
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (tabLayout.G == 1 && f > textSize && lineCount == 1) {
                        Layout layout = this.f.getLayout();
                        if (layout != null) {
                            if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    this.f.setTextSize(0, f);
                    this.f.setMaxLines(i3);
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f11950c != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                Tab tab = this.f11950c;
                TabLayout tabLayout = tab.d;
                if (tabLayout != null) {
                    tabLayout.k(tab, true);
                    return true;
                }
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return performClick;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.f;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.g;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.j;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(@Nullable Tab tab) {
            if (tab != this.f11950c) {
                this.f11950c = tab;
                d();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {

        /* renamed from: a, reason: collision with root package name */
        public final ViewPager f11952a;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.f11952a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void a(Tab tab) {
            this.f11952a.setCurrentItem(tab.b);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(android.content.Context r13) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context):void");
    }

    @Dimension
    private int getDefaultHeight() {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i = this.z;
        if (i != -1) {
            return i;
        }
        int i2 = this.G;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        return this.B;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.h.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i) {
        boolean z;
        boolean z2;
        SlidingTabIndicator slidingTabIndicator = this.h;
        int childCount = slidingTabIndicator.getChildCount();
        if (i < childCount) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = slidingTabIndicator.getChildAt(i2);
                boolean z3 = true;
                if ((i2 == i && !childAt.isSelected()) || (i2 != i && childAt.isSelected())) {
                    if (i2 == i) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    childAt.setSelected(z2);
                    if (i2 != i) {
                        z3 = false;
                    }
                    childAt.setActivated(z3);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).f();
                    }
                } else {
                    if (i2 == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    childAt.setSelected(z);
                    if (i2 != i) {
                        z3 = false;
                    }
                    childAt.setActivated(z3);
                }
            }
        }
    }

    public final void a(Tab tab, boolean z) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        if (tab.d == this) {
            tab.b = size;
            arrayList.add(size, tab);
            int size2 = arrayList.size();
            int i = -1;
            for (int i2 = size + 1; i2 < size2; i2++) {
                if (((Tab) arrayList.get(i2)).b == this.f11939c) {
                    i = i2;
                }
                ((Tab) arrayList.get(i2)).b = i2;
            }
            this.f11939c = i;
            TabView tabView = tab.e;
            tabView.setSelected(false);
            tabView.setActivated(false);
            int i3 = tab.b;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            if (this.G == 1 && this.D == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            this.h.addView(tabView, i3, layoutParams);
            if (z) {
                TabLayout tabLayout = tab.d;
                if (tabLayout != null) {
                    tabLayout.k(tab, true);
                    return;
                }
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        b(view);
    }

    public final void b(View view) {
        if (view instanceof TabItem) {
            TabItem tabItem = (TabItem) view;
            Tab h = h();
            if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
                h.f11946a = tabItem.getContentDescription();
                TabView tabView = h.e;
                if (tabView != null) {
                    tabView.d();
                }
            }
            a(h, this.f.isEmpty());
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void c(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            SlidingTabIndicator slidingTabIndicator = this.h;
            int childCount = slidingTabIndicator.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (slidingTabIndicator.getChildAt(i2).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int e = e(0.0f, i);
            if (scrollX != e) {
                f();
                this.R.setIntValues(scrollX, e);
                this.R.start();
            }
            ValueAnimator valueAnimator = slidingTabIndicator.f11943c;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.f11939c != i) {
                slidingTabIndicator.f11943c.cancel();
            }
            slidingTabIndicator.d(i, this.E, true);
            return;
        }
        m(i, 0.0f, true, true, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        if (r0 != 2) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r5 = this;
            int r0 = r5.G
            r1 = 2
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r0 = r2
            goto L14
        Lb:
            int r0 = r5.C
            int r3 = r5.i
            int r0 = r0 - r3
            int r0 = java.lang.Math.max(r2, r0)
        L14:
            com.google.android.material.tabs.TabLayout$SlidingTabIndicator r3 = r5.h
            r3.setPaddingRelative(r0, r2, r2, r2)
            int r0 = r5.G
            java.lang.String r2 = "TabLayout"
            r4 = 1
            if (r0 == 0) goto L32
            if (r0 == r4) goto L25
            if (r0 == r1) goto L25
            goto L4a
        L25:
            int r0 = r5.D
            if (r0 != r1) goto L2e
            java.lang.String r0 = "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"
            android.util.Log.w(r2, r0)
        L2e:
            r3.setGravity(r4)
            goto L4a
        L32:
            int r0 = r5.D
            if (r0 == 0) goto L3f
            if (r0 == r4) goto L3b
            if (r0 == r1) goto L44
            goto L4a
        L3b:
            r3.setGravity(r4)
            goto L4a
        L3f:
            java.lang.String r0 = "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"
            android.util.Log.w(r2, r0)
        L44:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r3.setGravity(r0)
        L4a:
            r5.o(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.d():void");
    }

    public final int e(float f, int i) {
        SlidingTabIndicator slidingTabIndicator;
        View childAt;
        View view;
        int i2 = this.G;
        int i3 = 0;
        if ((i2 != 0 && i2 != 2) || (childAt = (slidingTabIndicator = this.h).getChildAt(i)) == null) {
            return 0;
        }
        int i4 = i + 1;
        if (i4 < slidingTabIndicator.getChildCount()) {
            view = slidingTabIndicator.getChildAt(i4);
        } else {
            view = null;
        }
        int width = childAt.getWidth();
        if (view != null) {
            i3 = view.getWidth();
        }
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i5 = (int) ((width + i3) * 0.5f * f);
        if (getLayoutDirection() == 0) {
            return left + i5;
        }
        return left - i5;
    }

    public final void f() {
        if (this.R == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.R = valueAnimator;
            valueAnimator.setInterpolator(this.N);
            this.R.setDuration(this.E);
            this.R.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    public final Tab g(int i) {
        if (i >= 0 && i < getTabCount()) {
            return (Tab) this.f.get(i);
        }
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        Tab tab = this.g;
        if (tab != null) {
            return tab.b;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f.size();
    }

    public int getTabGravity() {
        return this.D;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.q;
    }

    public int getTabIndicatorAnimationMode() {
        return this.K;
    }

    public int getTabIndicatorGravity() {
        return this.F;
    }

    public int getTabMaxWidth() {
        return this.y;
    }

    public int getTabMode() {
        return this.G;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.r;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.s;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.p;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.material.tabs.TabLayout$Tab, java.lang.Object] */
    public final Tab h() {
        TabView tabView;
        Tab tab = (Tab) e0.b();
        Tab tab2 = tab;
        if (tab == null) {
            ?? obj = new Object();
            obj.b = -1;
            obj.f = -1;
            tab2 = obj;
        }
        tab2.d = this;
        Pools.SimplePool simplePool = this.c0;
        if (simplePool != null) {
            tabView = (TabView) simplePool.b();
        } else {
            tabView = null;
        }
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab2);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab2.f11946a)) {
            tabView.setContentDescription(null);
        } else {
            tabView.setContentDescription(tab2.f11946a);
        }
        tab2.e = tabView;
        int i = tab2.f;
        if (i != -1) {
            tabView.setId(i);
        }
        return tab2;
    }

    public final void i() {
        int currentItem;
        j();
        if (this.T != null) {
            for (int i = 0; i < 100000; i++) {
                Tab h = h();
                this.T.getClass();
                if (TextUtils.isEmpty(h.f11946a) && !TextUtils.isEmpty(null)) {
                    h.e.setContentDescription(null);
                }
                TabView tabView = h.e;
                if (tabView != null) {
                    tabView.d();
                }
                a(h, false);
            }
            ViewPager viewPager = this.S;
            if (viewPager != null && (currentItem = viewPager.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                k(g(currentItem), true);
            }
        }
    }

    public final void j() {
        SlidingTabIndicator slidingTabIndicator = this.h;
        int childCount = slidingTabIndicator.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            TabView tabView = (TabView) slidingTabIndicator.getChildAt(childCount);
            slidingTabIndicator.removeViewAt(childCount);
            if (tabView != null) {
                tabView.setTab(null);
                tabView.setSelected(false);
                this.c0.a(tabView);
            }
            requestLayout();
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.d = null;
            tab.e = null;
            tab.f = -1;
            tab.f11946a = null;
            tab.b = -1;
            tab.f11947c = null;
            e0.a(tab);
        }
        this.g = null;
    }

    public final void k(Tab tab, boolean z) {
        int i;
        TabLayout tabLayout;
        Tab tab2 = this.g;
        ArrayList arrayList = this.P;
        if (tab2 == tab) {
            if (tab2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((BaseOnTabSelectedListener) arrayList.get(size)).getClass();
                }
                c(tab.b);
                return;
            }
            return;
        }
        if (tab != null) {
            i = tab.b;
        } else {
            i = -1;
        }
        if (z) {
            if ((tab2 != null && tab2.b != -1) || i == -1) {
                tabLayout = this;
                c(i);
            } else {
                tabLayout = this;
                tabLayout.m(i, 0.0f, true, true, true);
            }
            if (i != -1) {
                setSelectedTabView(i);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.g = tab;
        if (tab2 != null && tab2.d != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((BaseOnTabSelectedListener) arrayList.get(size2)).getClass();
            }
        }
        if (tab != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((BaseOnTabSelectedListener) arrayList.get(size3)).a(tab);
            }
        }
    }

    public final void l(PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.T;
        if (pagerAdapter2 != null && (dataSetObserver = this.U) != null) {
            pagerAdapter2.f1756a.unregisterObserver(dataSetObserver);
        }
        this.T = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.U == null) {
                this.U = new PagerAdapterObserver();
            }
            pagerAdapter.f1756a.registerObserver(this.U);
        }
        i();
    }

    public final void m(int i, float f, boolean z, boolean z2, boolean z3) {
        boolean z4;
        float f2 = i + f;
        int round = Math.round(f2);
        if (round >= 0) {
            SlidingTabIndicator slidingTabIndicator = this.h;
            if (round < slidingTabIndicator.getChildCount()) {
                if (z2) {
                    TabLayout.this.f11939c = Math.round(f2);
                    ValueAnimator valueAnimator = slidingTabIndicator.f11943c;
                    if (valueAnimator != null && valueAnimator.isRunning()) {
                        slidingTabIndicator.f11943c.cancel();
                    }
                    slidingTabIndicator.c(slidingTabIndicator.getChildAt(i), slidingTabIndicator.getChildAt(i + 1), f);
                }
                ValueAnimator valueAnimator2 = this.R;
                if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                    this.R.cancel();
                }
                int e = e(f, i);
                int scrollX = getScrollX();
                if ((i < getSelectedTabPosition() && e >= scrollX) || ((i > getSelectedTabPosition() && e <= scrollX) || i == getSelectedTabPosition())) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (getLayoutDirection() == 1) {
                    if ((i < getSelectedTabPosition() && e <= scrollX) || ((i > getSelectedTabPosition() && e >= scrollX) || i == getSelectedTabPosition())) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                if (z4 || this.b0 == 1 || z3) {
                    if (i < 0) {
                        e = 0;
                    }
                    scrollTo(e, 0);
                }
                if (z) {
                    setSelectedTabView(round);
                }
            }
        }
    }

    public final void n(ViewPager viewPager, boolean z) {
        TabLayout tabLayout;
        ArrayList arrayList;
        ArrayList arrayList2;
        ViewPager viewPager2 = this.S;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.V;
            if (tabLayoutOnPageChangeListener != null && (arrayList2 = viewPager2.V) != null) {
                arrayList2.remove(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.W;
            if (adapterChangeListener != null && (arrayList = this.S.a0) != null) {
                arrayList.remove(adapterChangeListener);
            }
        }
        ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = this.Q;
        ArrayList arrayList3 = this.P;
        if (viewPagerOnTabSelectedListener != null) {
            arrayList3.remove(viewPagerOnTabSelectedListener);
            this.Q = null;
        }
        if (viewPager != null) {
            this.S = viewPager;
            if (this.V == null) {
                this.V = new TabLayoutOnPageChangeListener(this);
            }
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener2 = this.V;
            tabLayoutOnPageChangeListener2.f11949c = 0;
            tabLayoutOnPageChangeListener2.b = 0;
            if (viewPager.V == null) {
                viewPager.V = new ArrayList();
            }
            viewPager.V.add(tabLayoutOnPageChangeListener2);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener2 = new ViewPagerOnTabSelectedListener(viewPager);
            this.Q = viewPagerOnTabSelectedListener2;
            if (!arrayList3.contains(viewPagerOnTabSelectedListener2)) {
                arrayList3.add(viewPagerOnTabSelectedListener2);
            }
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                l(adapter, true);
            }
            if (this.W == null) {
                this.W = new AdapterChangeListener();
            }
            AdapterChangeListener adapterChangeListener2 = this.W;
            adapterChangeListener2.f11941a = true;
            if (viewPager.a0 == null) {
                viewPager.a0 = new ArrayList();
            }
            viewPager.a0.add(adapterChangeListener2);
            m(viewPager.getCurrentItem(), 0.0f, true, true, true);
            tabLayout = this;
        } else {
            tabLayout = this;
            tabLayout.S = null;
            l(null, false);
        }
        tabLayout.a0 = z;
    }

    public final void o(boolean z) {
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.h;
            if (i < slidingTabIndicator.getChildCount()) {
                View childAt = slidingTabIndicator.getChildAt(i);
                childAt.setMinimumWidth(getTabMinWidth());
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                if (this.G == 1 && this.D == 0) {
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                } else {
                    layoutParams.width = -2;
                    layoutParams.weight = 0.0f;
                }
                if (z) {
                    childAt.requestLayout();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
        if (this.S == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                n((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.a0) {
            setupWithViewPager(null);
            this.a0 = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        TabView tabView;
        Drawable drawable;
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.h;
            if (i < slidingTabIndicator.getChildCount()) {
                View childAt = slidingTabIndicator.getChildAt(i);
                if ((childAt instanceof TabView) && (drawable = (tabView = (TabView) childAt).m) != null) {
                    drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                    tabView.m.draw(canvas);
                }
                i++;
            } else {
                super.onDraw(canvas);
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, getTabCount(), 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if ((getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int round = Math.round(ViewUtils.b(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + round, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int i3 = this.A;
            if (i3 <= 0) {
                i3 = (int) (size - ViewUtils.b(getContext(), 56));
            }
            this.y = i3;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i4 = this.G;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
                }
            }
            if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 8 && getTabMode() != 0 && getTabMode() != 2) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.b(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.H != z) {
            this.H = z;
            int i = 0;
            while (true) {
                SlidingTabIndicator slidingTabIndicator = this.h;
                if (i < slidingTabIndicator.getChildCount()) {
                    View childAt = slidingTabIndicator.getChildAt(i);
                    if (childAt instanceof TabView) {
                        TabView tabView = (TabView) childAt;
                        tabView.setOrientation(!TabLayout.this.H ? 1 : 0);
                        TextView textView = tabView.k;
                        if (textView == null && tabView.l == null) {
                            tabView.g(tabView.f, tabView.g, true);
                        } else {
                            tabView.g(textView, tabView.l, false);
                        }
                    }
                    i++;
                } else {
                    d();
                    return;
                }
            }
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        f();
        this.R.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable mutate = drawable.mutate();
        this.s = mutate;
        int i = this.t;
        if (i != 0) {
            mutate.setTint(i);
        } else {
            mutate.setTintList(null);
        }
        int i2 = this.J;
        if (i2 == -1) {
            i2 = this.s.getIntrinsicHeight();
        }
        this.h.b(i2);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.t = i;
        Drawable drawable = this.s;
        if (i != 0) {
            drawable.setTint(i);
        } else {
            drawable.setTintList(null);
        }
        o(false);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.F != i) {
            this.F = i;
            this.h.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.J = i;
        this.h.b(i);
    }

    public void setTabGravity(int i) {
        if (this.D != i) {
            this.D = i;
            d();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.q != colorStateList) {
            this.q = colorStateList;
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TabView tabView = ((Tab) arrayList.get(i)).e;
                if (tabView != null) {
                    tabView.d();
                }
            }
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(ContextCompat.c(getContext(), i));
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.material.tabs.TabIndicatorInterpolator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.material.tabs.TabIndicatorInterpolator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.material.tabs.TabIndicatorInterpolator, java.lang.Object] */
    public void setTabIndicatorAnimationMode(int i) {
        this.K = i;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    this.M = new Object();
                    return;
                }
                throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
            }
            this.M = new Object();
            return;
        }
        this.M = new Object();
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.I = z;
        int i = SlidingTabIndicator.g;
        SlidingTabIndicator slidingTabIndicator = this.h;
        slidingTabIndicator.a(TabLayout.this.getSelectedTabPosition());
        slidingTabIndicator.postInvalidateOnAnimation();
    }

    public void setTabMode(int i) {
        if (i != this.G) {
            this.G = i;
            d();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.r != colorStateList) {
            this.r = colorStateList;
            int i = 0;
            while (true) {
                SlidingTabIndicator slidingTabIndicator = this.h;
                if (i < slidingTabIndicator.getChildCount()) {
                    View childAt = slidingTabIndicator.getChildAt(i);
                    if (childAt instanceof TabView) {
                        Context context = getContext();
                        int i2 = TabView.p;
                        ((TabView) childAt).e(context);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(ContextCompat.c(getContext(), i));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.p != colorStateList) {
            this.p = colorStateList;
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TabView tabView = ((Tab) arrayList.get(i)).e;
                if (tabView != null) {
                    tabView.d();
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        l(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.L != z) {
            this.L = z;
            int i = 0;
            while (true) {
                SlidingTabIndicator slidingTabIndicator = this.h;
                if (i < slidingTabIndicator.getChildCount()) {
                    View childAt = slidingTabIndicator.getChildAt(i);
                    if (childAt instanceof TabView) {
                        Context context = getContext();
                        int i2 = TabView.p;
                        ((TabView) childAt).e(context);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        n(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        if (getTabScrollRange() > 0) {
            return true;
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        b(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.O;
        ArrayList arrayList = this.P;
        if (baseOnTabSelectedListener2 != null) {
            arrayList.remove(baseOnTabSelectedListener2);
        }
        this.O = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener == null || arrayList.contains(baseOnTabSelectedListener)) {
            return;
        }
        arrayList.add(baseOnTabSelectedListener);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        b(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        b(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(AppCompatResources.a(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
