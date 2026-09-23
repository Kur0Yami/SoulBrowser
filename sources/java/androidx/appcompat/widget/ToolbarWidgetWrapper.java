package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import kotlin.io.ConstantsKt;

@RestrictTo
/* loaded from: classes.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f341a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final View f342c;
    public Drawable d;
    public Drawable e;
    public Drawable f;
    public boolean g;
    public CharSequence h;
    public CharSequence i;
    public final CharSequence j;
    public Window.Callback k;
    public boolean l;
    public ActionMenuPresenter m;
    public final int n;
    public final Drawable o;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        boolean z2;
        int i;
        Drawable drawable;
        int i2 = R.string.abc_action_bar_up_description;
        this.n = 0;
        this.f341a = toolbar;
        this.h = toolbar.getTitle();
        this.i = toolbar.getSubtitle();
        if (this.h != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.g = z2;
        this.f = toolbar.getNavigationIcon();
        TintTypedArray e = TintTypedArray.e(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle);
        TypedArray typedArray = e.b;
        this.o = e.b(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence text = typedArray.getText(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = typedArray.getText(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                l(text2);
            }
            Drawable b = e.b(R.styleable.ActionBar_logo);
            if (b != null) {
                this.e = b;
                v();
            }
            Drawable b2 = e.b(R.styleable.ActionBar_icon);
            if (b2 != null) {
                setIcon(b2);
            }
            if (this.f == null && (drawable = this.o) != null) {
                this.f = drawable;
                if ((this.b & 4) != 0) {
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            j(typedArray.getInt(R.styleable.ActionBar_displayOptions, 0));
            int resourceId = typedArray.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
                View view = this.f342c;
                if (view != null && (this.b & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.f342c = inflate;
                if (inflate != null && (this.b & 16) != 0) {
                    toolbar.addView(inflate);
                }
                j(this.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.d();
                toolbar.x.a(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.p = resourceId2;
                AppCompatTextView appCompatTextView = toolbar.f;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.q = resourceId3;
                AppCompatTextView appCompatTextView2 = toolbar.g;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.o = toolbar.getNavigationIcon();
                i = 15;
            } else {
                i = 11;
            }
            this.b = i;
        }
        e.f();
        if (i2 != this.n) {
            this.n = i2;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i3 = this.n;
                this.j = i3 != 0 ? toolbar.getContext().getString(i3) : null;
                u();
            }
        }
        this.j = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1

            /* renamed from: c, reason: collision with root package name */
            public final ActionMenuItem f343c;

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.appcompat.view.menu.ActionMenuItem] */
            {
                Context context3 = ToolbarWidgetWrapper.this.f341a.getContext();
                CharSequence charSequence = ToolbarWidgetWrapper.this.h;
                ?? obj = new Object();
                obj.e = ConstantsKt.DEFAULT_BLOCK_SIZE;
                obj.g = ConstantsKt.DEFAULT_BLOCK_SIZE;
                obj.l = null;
                obj.m = null;
                obj.n = false;
                obj.o = false;
                obj.p = 16;
                obj.i = context3;
                obj.f160a = charSequence;
                this.f343c = obj;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                Window.Callback callback = toolbarWidgetWrapper.k;
                if (callback != null && toolbarWidgetWrapper.l) {
                    callback.onMenuItemSelected(0, this.f343c);
                }
            }
        });
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void a(Menu menu, MenuPresenter.Callback callback) {
        ActionMenuPresenter actionMenuPresenter = this.m;
        Toolbar toolbar = this.f341a;
        if (actionMenuPresenter == null) {
            this.m = new ActionMenuPresenter(toolbar.getContext());
        }
        ActionMenuPresenter actionMenuPresenter2 = this.m;
        actionMenuPresenter2.i = callback;
        MenuBuilder menuBuilder = (MenuBuilder) menu;
        if (menuBuilder != null || toolbar.f333c != null) {
            toolbar.f();
            MenuBuilder menuBuilder2 = toolbar.f333c.t;
            if (menuBuilder2 == menuBuilder) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.r(toolbar.P);
                menuBuilder2.r(toolbar.Q);
            }
            if (toolbar.Q == null) {
                toolbar.Q = new Toolbar.ExpandedActionViewMenuPresenter();
            }
            actionMenuPresenter2.u = true;
            if (menuBuilder != null) {
                menuBuilder.b(actionMenuPresenter2, toolbar.n);
                menuBuilder.b(toolbar.Q, toolbar.n);
            } else {
                actionMenuPresenter2.h(toolbar.n, null);
                toolbar.Q.h(toolbar.n, null);
                actionMenuPresenter2.d(true);
                toolbar.Q.d(true);
            }
            toolbar.f333c.setPopupTheme(toolbar.o);
            toolbar.f333c.setPresenter(actionMenuPresenter2);
            toolbar.P = actionMenuPresenter2;
            toolbar.y();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean b() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f341a.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null && actionMenuPresenter.n()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void c() {
        this.l = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void collapseActionView() {
        MenuItemImpl menuItemImpl;
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f341a.Q;
        if (expandedActionViewMenuPresenter == null) {
            menuItemImpl = null;
        } else {
            menuItemImpl = expandedActionViewMenuPresenter.f;
        }
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean d() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f341a;
        if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f333c) != null && actionMenuView.w) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean e() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f341a.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null) {
            if (actionMenuPresenter.y != null || actionMenuPresenter.n()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean f() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f341a.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null && actionMenuPresenter.m()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean g() {
        return this.f341a.x();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final Context getContext() {
        return this.f341a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final CharSequence getTitle() {
        return this.f341a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void h() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f341a.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null) {
            actionMenuPresenter.m();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.x;
            if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
                actionButtonSubmenu.i.dismiss();
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean i() {
        return this.f341a.m();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void j(int i) {
        View view;
        int i2 = this.b ^ i;
        this.b = i;
        if (i2 != 0) {
            int i3 = i2 & 4;
            Toolbar toolbar = this.f341a;
            if (i3 != 0) {
                if ((i & 4) != 0) {
                    u();
                }
                if ((this.b & 4) != 0) {
                    Drawable drawable = this.f;
                    if (drawable == null) {
                        drawable = this.o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i2 & 3) != 0) {
                v();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    toolbar.setTitle(this.h);
                    toolbar.setSubtitle(this.i);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && (view = this.f342c) != null) {
                if ((i & 16) != 0) {
                    toolbar.addView(view);
                } else {
                    toolbar.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void l(CharSequence charSequence) {
        this.i = charSequence;
        if ((this.b & 8) != 0) {
            this.f341a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void m(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.a(this.f341a.getContext(), i);
        } else {
            drawable = null;
        }
        this.e = drawable;
        v();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final ViewPropertyAnimatorCompat n(final int i, long j) {
        float f;
        ViewPropertyAnimatorCompat a2 = ViewCompat.a(this.f341a);
        if (i == 0) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        a2.a(f);
        a2.c(j);
        a2.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2

            /* renamed from: a, reason: collision with root package name */
            public boolean f344a = false;

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void a() {
                if (!this.f344a) {
                    ToolbarWidgetWrapper.this.f341a.setVisibility(i);
                }
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void b() {
                this.f344a = true;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void c() {
                ToolbarWidgetWrapper.this.f341a.setVisibility(0);
            }
        });
        return a2;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void o(int i) {
        Drawable drawable;
        Toolbar toolbar = this.f341a;
        if (i != 0) {
            drawable = AppCompatResources.a(toolbar.getContext(), i);
        } else {
            drawable = null;
        }
        this.f = drawable;
        if ((this.b & 4) != 0) {
            if (drawable == null) {
                drawable = this.o;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        toolbar.setNavigationIcon((Drawable) null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void p(int i) {
        this.f341a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int q() {
        return this.b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void r() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setIcon(int i) {
        setIcon(i != 0 ? AppCompatResources.a(this.f341a.getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setTitle(CharSequence charSequence) {
        this.g = true;
        this.h = charSequence;
        if ((this.b & 8) != 0) {
            Toolbar toolbar = this.f341a;
            toolbar.setTitle(charSequence);
            if (this.g) {
                ViewCompat.B(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setWindowCallback(Window.Callback callback) {
        this.k = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setWindowTitle(CharSequence charSequence) {
        if (!this.g) {
            this.h = charSequence;
            if ((this.b & 8) != 0) {
                Toolbar toolbar = this.f341a;
                toolbar.setTitle(charSequence);
                if (this.g) {
                    ViewCompat.B(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void t(boolean z) {
        this.f341a.setCollapsible(z);
    }

    public final void u() {
        if ((this.b & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.j);
            Toolbar toolbar = this.f341a;
            if (isEmpty) {
                toolbar.setNavigationContentDescription(this.n);
            } else {
                toolbar.setNavigationContentDescription(this.j);
            }
        }
    }

    public final void v() {
        Drawable drawable;
        int i = this.b;
        if ((i & 2) != 0) {
            if ((i & 1) != 0) {
                drawable = this.e;
                if (drawable == null) {
                    drawable = this.d;
                }
            } else {
                drawable = this.d;
            }
        } else {
            drawable = null;
        }
        this.f341a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setIcon(Drawable drawable) {
        this.d = drawable;
        v();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void k() {
    }
}
