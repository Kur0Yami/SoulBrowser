package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.AbsActionBarView;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import kotlin.jvm.internal.IntCompanionObject;

@RestrictTo
/* loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {
    public CharSequence m;
    public CharSequence n;
    public View o;
    public View p;
    public View q;
    public LinearLayout r;
    public TextView s;
    public TextView t;
    public final int u;
    public final int v;
    public boolean w;
    public final int x;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarContextView(@androidx.annotation.NonNull android.content.Context r5, @androidx.annotation.Nullable android.util.AttributeSet r6) {
        /*
            r4 = this;
            int r0 = androidx.appcompat.R.attr.actionModeStyle
            r4.<init>(r5, r6, r0)
            int[] r1 = androidx.appcompat.R.styleable.ActionMode
            androidx.appcompat.widget.TintTypedArray r2 = new androidx.appcompat.widget.TintTypedArray
            r3 = 0
            android.content.res.TypedArray r6 = r5.obtainStyledAttributes(r6, r1, r0, r3)
            r2.<init>(r5, r6)
            int r5 = androidx.appcompat.R.styleable.ActionMode_background
            android.graphics.drawable.Drawable r5 = r2.b(r5)
            r4.setBackground(r5)
            int r5 = androidx.appcompat.R.styleable.ActionMode_titleTextStyle
            int r5 = r6.getResourceId(r5, r3)
            r4.u = r5
            int r5 = androidx.appcompat.R.styleable.ActionMode_subtitleTextStyle
            int r5 = r6.getResourceId(r5, r3)
            r4.v = r5
            int r5 = androidx.appcompat.R.styleable.ActionMode_height
            int r5 = r6.getLayoutDimension(r5, r3)
            r4.i = r5
            int r5 = androidx.appcompat.R.styleable.ActionMode_closeItemLayout
            int r0 = androidx.appcompat.R.layout.abc_action_mode_close_item_material
            int r5 = r6.getResourceId(r5, r0)
            r4.x = r5
            r2.f()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void e(final ActionMode actionMode) {
        View view = this.o;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.x, (ViewGroup) this, false);
            this.o = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.o);
        }
        View findViewById = this.o.findViewById(R.id.action_mode_close_button);
        this.p = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ActionMode.this.c();
            }
        });
        MenuBuilder e = actionMode.e();
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.x;
            if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
                actionButtonSubmenu.i.dismiss();
            }
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.h = actionMenuPresenter2;
        actionMenuPresenter2.p = true;
        actionMenuPresenter2.q = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        e.b(this.h, this.f);
        ActionMenuPresenter actionMenuPresenter3 = this.h;
        MenuView menuView = actionMenuPresenter3.l;
        if (menuView == null) {
            MenuView menuView2 = (MenuView) actionMenuPresenter3.h.inflate(actionMenuPresenter3.j, (ViewGroup) this, false);
            actionMenuPresenter3.l = menuView2;
            menuView2.b(actionMenuPresenter3.g);
            actionMenuPresenter3.d(true);
        }
        MenuView menuView3 = actionMenuPresenter3.l;
        if (menuView != menuView3) {
            ((ActionMenuView) menuView3).setPresenter(actionMenuPresenter3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) menuView3;
        this.g = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.g, layoutParams);
    }

    public final void f() {
        int i;
        if (this.r == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.r = linearLayout;
            this.s = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.t = (TextView) this.r.findViewById(R.id.action_bar_subtitle);
            int i2 = this.u;
            if (i2 != 0) {
                this.s.setTextAppearance(getContext(), i2);
            }
            int i3 = this.v;
            if (i3 != 0) {
                this.t.setTextAppearance(getContext(), i3);
            }
        }
        this.s.setText(this.m);
        this.t.setText(this.n);
        boolean isEmpty = TextUtils.isEmpty(this.m);
        boolean isEmpty2 = TextUtils.isEmpty(this.n);
        TextView textView = this.t;
        int i4 = 8;
        if (!isEmpty2) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        LinearLayout linearLayout2 = this.r;
        if (!isEmpty || !isEmpty2) {
            i4 = 0;
        }
        linearLayout2.setVisibility(i4);
        if (this.r.getParent() == null) {
            addView(this.r);
        }
    }

    public final void g() {
        removeAllViews();
        this.q = null;
        this.g = null;
        this.h = null;
        View view = this.p;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        if (this.j != null) {
            return this.f191c.b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.i;
    }

    public CharSequence getSubtitle() {
        return this.n;
    }

    public CharSequence getTitle() {
        return this.m;
    }

    public final ViewPropertyAnimatorCompat h(int i, long j) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.j;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.b();
        }
        AbsActionBarView.VisibilityAnimListener visibilityAnimListener = this.f191c;
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimatorCompat a2 = ViewCompat.a(this);
            a2.a(1.0f);
            a2.c(j);
            AbsActionBarView.this.j = a2;
            visibilityAnimListener.b = i;
            a2.d(visibilityAnimListener);
            return a2;
        }
        ViewPropertyAnimatorCompat a3 = ViewCompat.a(this);
        a3.a(0.0f);
        a3.c(j);
        AbsActionBarView.this.j = a3;
        visibilityAnimListener.b = i;
        a3.d(visibilityAnimListener);
        return a3;
    }

    public final boolean i() {
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.p();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = this.h.x;
            if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
                actionButtonSubmenu.i.dismiss();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int paddingLeft;
        int paddingRight;
        int i5;
        int i6;
        int i7;
        boolean z3 = ViewUtils.f351a;
        if (getLayoutDirection() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            paddingLeft = (i3 - i) - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.o;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            if (z2) {
                i5 = marginLayoutParams.rightMargin;
            } else {
                i5 = marginLayoutParams.leftMargin;
            }
            if (z2) {
                i6 = marginLayoutParams.leftMargin;
            } else {
                i6 = marginLayoutParams.rightMargin;
            }
            if (z2) {
                i7 = paddingLeft - i5;
            } else {
                i7 = paddingLeft + i5;
            }
            int d = i7 + AbsActionBarView.d(i7, paddingTop, paddingTop2, this.o, z2);
            if (z2) {
                paddingLeft = d - i6;
            } else {
                paddingLeft = d + i6;
            }
        }
        LinearLayout linearLayout = this.r;
        if (linearLayout != null && this.q == null && linearLayout.getVisibility() != 8) {
            paddingLeft += AbsActionBarView.d(paddingLeft, paddingTop, paddingTop2, this.r, z2);
        }
        View view2 = this.q;
        if (view2 != null) {
            AbsActionBarView.d(paddingLeft, paddingTop, paddingTop2, view2, z2);
        }
        if (z2) {
            paddingRight = getPaddingLeft();
        } else {
            paddingRight = (i3 - i) - getPaddingRight();
        }
        ActionMenuView actionMenuView = this.g;
        if (actionMenuView != null) {
            AbsActionBarView.d(paddingRight, paddingTop, paddingTop2, actionMenuView, !z2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5 = 1073741824;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            if (View.MeasureSpec.getMode(i2) != 0) {
                int size = View.MeasureSpec.getSize(i);
                int i6 = this.i;
                if (i6 <= 0) {
                    i6 = View.MeasureSpec.getSize(i2);
                }
                int paddingBottom = getPaddingBottom() + getPaddingTop();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i7 = i6 - paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, IntCompanionObject.MIN_VALUE);
                View view = this.o;
                if (view != null) {
                    int c2 = AbsActionBarView.c(view, paddingLeft, makeMeasureSpec);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
                    paddingLeft = c2 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.g;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = AbsActionBarView.c(this.g, paddingLeft, makeMeasureSpec);
                }
                LinearLayout linearLayout = this.r;
                if (linearLayout != null && this.q == null) {
                    if (this.w) {
                        this.r.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.r.getMeasuredWidth();
                        if (measuredWidth <= paddingLeft) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            paddingLeft -= measuredWidth;
                        }
                        LinearLayout linearLayout2 = this.r;
                        if (z) {
                            i4 = 0;
                        } else {
                            i4 = 8;
                        }
                        linearLayout2.setVisibility(i4);
                    } else {
                        paddingLeft = AbsActionBarView.c(linearLayout, paddingLeft, makeMeasureSpec);
                    }
                }
                View view2 = this.q;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i8 = layoutParams.width;
                    if (i8 != -2) {
                        i3 = 1073741824;
                    } else {
                        i3 = Integer.MIN_VALUE;
                    }
                    if (i8 >= 0) {
                        paddingLeft = Math.min(i8, paddingLeft);
                    }
                    int i9 = layoutParams.height;
                    if (i9 == -2) {
                        i5 = Integer.MIN_VALUE;
                    }
                    if (i9 >= 0) {
                        i7 = Math.min(i9, i7);
                    }
                    this.q.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i3), View.MeasureSpec.makeMeasureSpec(i7, i5));
                }
                if (this.i <= 0) {
                    int childCount = getChildCount();
                    int i10 = 0;
                    for (int i11 = 0; i11 < childCount; i11++) {
                        int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingBottom;
                        if (measuredHeight > i10) {
                            i10 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i10);
                    return;
                }
                setMeasuredDimension(size, i6);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i) {
        this.i = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.q;
        if (view2 != null) {
            removeView(view2);
        }
        this.q = view;
        if (view != null && (linearLayout = this.r) != null) {
            removeView(linearLayout);
            this.r = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.n = charSequence;
        f();
    }

    public void setTitle(CharSequence charSequence) {
        this.m = charSequence;
        f();
        ViewCompat.B(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.w) {
            requestLayout();
        }
        this.w = z;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
