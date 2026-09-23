package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.core.view.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    public static final AccelerateInterpolator y = new AccelerateInterpolator();
    public static final DecelerateInterpolator z = new DecelerateInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public Context f121a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f122c;
    public ActionBarContainer d;
    public DecorToolbar e;
    public ActionBarContextView f;
    public final View g;
    public boolean h;
    public ActionModeImpl i;
    public ActionModeImpl j;
    public ActionMode.Callback k;
    public boolean l;
    public final ArrayList m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public ViewPropertyAnimatorCompatSet s;
    public boolean t;
    public boolean u;
    public final ViewPropertyAnimatorListener v;
    public final ViewPropertyAnimatorListener w;
    public final ViewPropertyAnimatorUpdateListener x;

    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
        public AnonymousClass1() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void a() {
            View view;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.o && (view = windowDecorActionBar.g) != null) {
                view.setTranslationY(0.0f);
                windowDecorActionBar.d.setTranslationY(0.0f);
            }
            windowDecorActionBar.d.setVisibility(8);
            windowDecorActionBar.d.setTransitioning(false);
            windowDecorActionBar.s = null;
            ActionMode.Callback callback = windowDecorActionBar.k;
            if (callback != null) {
                ((AppCompatDelegateImpl.ActionModeCallbackWrapperV9) callback).a(windowDecorActionBar.j);
                windowDecorActionBar.j = null;
                windowDecorActionBar.k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = windowDecorActionBar.f122c;
            if (actionBarOverlayLayout != null) {
                ViewCompat.x(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ViewPropertyAnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void a() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.s = null;
            windowDecorActionBar.d.requestLayout();
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        public final Context g;
        public final MenuBuilder h;
        public ActionMode.Callback i;
        public WeakReference j;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.g = context;
            this.i = callback;
            MenuBuilder menuBuilder = new MenuBuilder(context);
            menuBuilder.l = 1;
            this.h = menuBuilder;
            menuBuilder.e = this;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
            ActionMode.Callback callback = this.i;
            if (callback != null) {
                return ((AppCompatDelegateImpl.ActionModeCallbackWrapperV9) callback).f93a.c(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void b(MenuBuilder menuBuilder) {
            if (this.i == null) {
                return;
            }
            i();
            WindowDecorActionBar.this.f.i();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void c() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.i != this) {
                return;
            }
            if (windowDecorActionBar.p) {
                windowDecorActionBar.j = this;
                windowDecorActionBar.k = this.i;
            } else {
                ((AppCompatDelegateImpl.ActionModeCallbackWrapperV9) this.i).a(this);
            }
            this.i = null;
            windowDecorActionBar.x(false);
            ActionBarContextView actionBarContextView = windowDecorActionBar.f;
            if (actionBarContextView.o == null) {
                actionBarContextView.g();
            }
            windowDecorActionBar.f122c.setHideOnContentScrollEnabled(windowDecorActionBar.u);
            windowDecorActionBar.i = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final View d() {
            WeakReference weakReference = this.j;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuBuilder e() {
            return this.h;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuInflater f() {
            return new SupportMenuInflater(this.g);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence g() {
            return WindowDecorActionBar.this.f.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence h() {
            return WindowDecorActionBar.this.f.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void i() {
            if (WindowDecorActionBar.this.i != this) {
                return;
            }
            MenuBuilder menuBuilder = this.h;
            menuBuilder.w();
            try {
                this.i.b(this, menuBuilder);
            } finally {
                menuBuilder.v();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public final boolean j() {
            return WindowDecorActionBar.this.f.w;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void k(View view) {
            WindowDecorActionBar.this.f.setCustomView(view);
            this.j = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void l(int i) {
            m(WindowDecorActionBar.this.f121a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void m(CharSequence charSequence) {
            WindowDecorActionBar.this.f.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void n(int i) {
            o(WindowDecorActionBar.this.f121a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void o(CharSequence charSequence) {
            WindowDecorActionBar.this.f.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void p(boolean z) {
            this.f = z;
            WindowDecorActionBar.this.f.setTitleOptional(z);
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public class TabImpl extends ActionBar.Tab {
    }

    public WindowDecorActionBar(Activity activity, boolean z2) {
        new ArrayList();
        this.m = new ArrayList();
        this.n = 0;
        this.o = true;
        this.r = true;
        this.v = new AnonymousClass1();
        this.w = new AnonymousClass2();
        this.x = new ViewPropertyAnimatorUpdateListener() { // from class: androidx.appcompat.app.WindowDecorActionBar.3
            @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
            public final void a() {
                ((View) WindowDecorActionBar.this.d.getParent()).invalidate();
            }
        };
        View decorView = activity.getWindow().getDecorView();
        y(decorView);
        if (z2) {
            return;
        }
        this.g = decorView.findViewById(R.id.content);
    }

    public final void A(boolean z2) {
        boolean z3 = this.p;
        boolean z4 = this.q;
        f fVar = null;
        ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener = this.x;
        View view = this.g;
        if (!z4 && z3) {
            if (this.r) {
                this.r = false;
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.s;
                if (viewPropertyAnimatorCompatSet != null) {
                    viewPropertyAnimatorCompatSet.a();
                }
                int i = this.n;
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = this.v;
                if (i == 0 && (this.t || z2)) {
                    this.d.setAlpha(1.0f);
                    this.d.setTransitioning(true);
                    ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
                    float f = -this.d.getHeight();
                    if (z2) {
                        this.d.getLocationInWindow(new int[]{0, 0});
                        f -= r12[1];
                    }
                    ViewPropertyAnimatorCompat a2 = ViewCompat.a(this.d);
                    a2.e(f);
                    View view2 = (View) a2.f807a.get();
                    if (view2 != null) {
                        if (viewPropertyAnimatorUpdateListener != null) {
                            fVar = new f(0, viewPropertyAnimatorUpdateListener, view2);
                        }
                        view2.animate().setUpdateListener(fVar);
                    }
                    boolean z5 = viewPropertyAnimatorCompatSet2.e;
                    ArrayList arrayList = viewPropertyAnimatorCompatSet2.f155a;
                    if (!z5) {
                        arrayList.add(a2);
                    }
                    if (this.o && view != null) {
                        ViewPropertyAnimatorCompat a3 = ViewCompat.a(view);
                        a3.e(f);
                        if (!viewPropertyAnimatorCompatSet2.e) {
                            arrayList.add(a3);
                        }
                    }
                    boolean z6 = viewPropertyAnimatorCompatSet2.e;
                    if (!z6) {
                        viewPropertyAnimatorCompatSet2.f156c = y;
                    }
                    if (!z6) {
                        viewPropertyAnimatorCompatSet2.b = 250L;
                    }
                    ViewPropertyAnimatorListenerAdapter viewPropertyAnimatorListenerAdapter = (ViewPropertyAnimatorListenerAdapter) viewPropertyAnimatorListener;
                    if (!z6) {
                        viewPropertyAnimatorCompatSet2.d = viewPropertyAnimatorListenerAdapter;
                    }
                    this.s = viewPropertyAnimatorCompatSet2;
                    viewPropertyAnimatorCompatSet2.b();
                    return;
                }
                ((AnonymousClass1) viewPropertyAnimatorListener).a();
                return;
            }
            return;
        }
        if (!this.r) {
            this.r = true;
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet3 = this.s;
            if (viewPropertyAnimatorCompatSet3 != null) {
                viewPropertyAnimatorCompatSet3.a();
            }
            this.d.setVisibility(0);
            int i2 = this.n;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener2 = this.w;
            if (i2 == 0 && (this.t || z2)) {
                this.d.setTranslationY(0.0f);
                float f2 = -this.d.getHeight();
                if (z2) {
                    this.d.getLocationInWindow(new int[]{0, 0});
                    f2 -= r12[1];
                }
                this.d.setTranslationY(f2);
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet4 = new ViewPropertyAnimatorCompatSet();
                ViewPropertyAnimatorCompat a4 = ViewCompat.a(this.d);
                a4.e(0.0f);
                View view3 = (View) a4.f807a.get();
                if (view3 != null) {
                    if (viewPropertyAnimatorUpdateListener != null) {
                        fVar = new f(0, viewPropertyAnimatorUpdateListener, view3);
                    }
                    view3.animate().setUpdateListener(fVar);
                }
                boolean z7 = viewPropertyAnimatorCompatSet4.e;
                ArrayList arrayList2 = viewPropertyAnimatorCompatSet4.f155a;
                if (!z7) {
                    arrayList2.add(a4);
                }
                if (this.o && view != null) {
                    view.setTranslationY(f2);
                    ViewPropertyAnimatorCompat a5 = ViewCompat.a(view);
                    a5.e(0.0f);
                    if (!viewPropertyAnimatorCompatSet4.e) {
                        arrayList2.add(a5);
                    }
                }
                boolean z8 = viewPropertyAnimatorCompatSet4.e;
                if (!z8) {
                    viewPropertyAnimatorCompatSet4.f156c = z;
                }
                if (!z8) {
                    viewPropertyAnimatorCompatSet4.b = 250L;
                }
                ViewPropertyAnimatorListenerAdapter viewPropertyAnimatorListenerAdapter2 = (ViewPropertyAnimatorListenerAdapter) viewPropertyAnimatorListener2;
                if (!z8) {
                    viewPropertyAnimatorCompatSet4.d = viewPropertyAnimatorListenerAdapter2;
                }
                this.s = viewPropertyAnimatorCompatSet4;
                viewPropertyAnimatorCompatSet4.b();
            } else {
                this.d.setAlpha(1.0f);
                this.d.setTranslationY(0.0f);
                if (this.o && view != null) {
                    view.setTranslationY(0.0f);
                }
                ((AnonymousClass2) viewPropertyAnimatorListener2).a();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = this.f122c;
            if (actionBarOverlayLayout != null) {
                ViewCompat.x(actionBarOverlayLayout);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public final void a() {
        if (this.p) {
            this.p = false;
            A(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public final void b(boolean z2) {
        this.o = z2;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public final void c() {
        if (!this.p) {
            this.p = true;
            A(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public final void d() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.s;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.a();
            this.s = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean f() {
        DecorToolbar decorToolbar = this.e;
        if (decorToolbar != null && decorToolbar.i()) {
            this.e.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void g(boolean z2) {
        if (z2 != this.l) {
            this.l = z2;
            ArrayList arrayList = this.m;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((ActionBar.OnMenuVisibilityListener) arrayList.get(i)).a();
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int h() {
        return this.e.q();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context i() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.f121a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.b = new ContextThemeWrapper(this.f121a, i);
            } else {
                this.b = this.f121a;
            }
        }
        return this.b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void k() {
        z(this.f121a.getResources().getBoolean(androidx.appcompat.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean m(int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        ActionModeImpl actionModeImpl = this.i;
        if (actionModeImpl == null || (menuBuilder = actionModeImpl.h) == null) {
            return false;
        }
        boolean z2 = true;
        if (KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() == 1) {
            z2 = false;
        }
        menuBuilder.setQwertyMode(z2);
        return menuBuilder.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public final void onWindowVisibilityChanged(int i) {
        this.n = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void p(boolean z2) {
        if (!this.h) {
            q(z2);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void q(boolean z2) {
        int i;
        if (z2) {
            i = 4;
        } else {
            i = 0;
        }
        int q = this.e.q();
        this.h = true;
        this.e.j((i & 4) | (q & (-5)));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void r(int i) {
        this.e.o(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void s(boolean z2) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.t = z2;
        if (!z2 && (viewPropertyAnimatorCompatSet = this.s) != null) {
            viewPropertyAnimatorCompatSet.a();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void t(String str) {
        this.e.l(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void u(String str) {
        this.e.setTitle(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void v(CharSequence charSequence) {
        this.e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final ActionMode w(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.i;
        if (actionModeImpl != null) {
            actionModeImpl.c();
        }
        this.f122c.setHideOnContentScrollEnabled(false);
        this.f.g();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.f.getContext(), callback);
        MenuBuilder menuBuilder = actionModeImpl2.h;
        menuBuilder.w();
        try {
            if (((AppCompatDelegateImpl.ActionModeCallbackWrapperV9) actionModeImpl2.i).f93a.e(actionModeImpl2, menuBuilder)) {
                this.i = actionModeImpl2;
                actionModeImpl2.i();
                this.f.e(actionModeImpl2);
                x(true);
                return actionModeImpl2;
            }
            return null;
        } finally {
            menuBuilder.v();
        }
    }

    public final void x(boolean z2) {
        ViewPropertyAnimatorCompat n;
        ViewPropertyAnimatorCompat h;
        long j;
        if (z2) {
            if (!this.q) {
                this.q = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f122c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                A(false);
            }
        } else if (this.q) {
            this.q = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f122c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            A(false);
        }
        if (this.d.isLaidOut()) {
            if (z2) {
                h = this.e.n(4, 100L);
                n = this.f.h(0, 200L);
            } else {
                n = this.e.n(0, 200L);
                h = this.f.h(8, 100L);
            }
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            ArrayList arrayList = viewPropertyAnimatorCompatSet.f155a;
            arrayList.add(h);
            View view = (View) h.f807a.get();
            if (view != null) {
                j = view.animate().getDuration();
            } else {
                j = 0;
            }
            View view2 = (View) n.f807a.get();
            if (view2 != null) {
                view2.animate().setStartDelay(j);
            }
            arrayList.add(n);
            viewPropertyAnimatorCompatSet.b();
            return;
        }
        if (z2) {
            this.e.p(4);
            this.f.setVisibility(0);
        } else {
            this.e.p(0);
            this.f.setVisibility(8);
        }
    }

    public final void y(View view) {
        String str;
        DecorToolbar wrapper;
        boolean z2;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.f122c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(androidx.appcompat.R.id.action_bar);
        if (findViewById instanceof DecorToolbar) {
            wrapper = (DecorToolbar) findViewById;
        } else if (findViewById instanceof Toolbar) {
            wrapper = ((Toolbar) findViewById).getWrapper();
        } else {
            if (findViewById != null) {
                str = findViewById.getClass().getSimpleName();
            } else {
                str = "null";
            }
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(str));
        }
        this.e = wrapper;
        this.f = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.d = actionBarContainer;
        DecorToolbar decorToolbar = this.e;
        if (decorToolbar != null && this.f != null && actionBarContainer != null) {
            this.f121a = decorToolbar.getContext();
            if ((this.e.q() & 4) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                this.h = true;
            }
            Context context = this.f121a;
            int i = context.getApplicationInfo().targetSdkVersion;
            this.e.getClass();
            z(context.getResources().getBoolean(androidx.appcompat.R.bool.abc_action_bar_embed_tabs));
            TypedArray obtainStyledAttributes = this.f121a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f122c;
                if (actionBarOverlayLayout2.k) {
                    this.u = true;
                    actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
                } else {
                    throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                }
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
            if (dimensionPixelSize != 0) {
                ViewCompat.E(this.d, dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with a compatible window decor layout"));
    }

    public final void z(boolean z2) {
        if (!z2) {
            this.e.k();
            this.d.setTabContainer(null);
        } else {
            this.d.setTabContainer(null);
            this.e.k();
        }
        this.e.getClass();
        this.e.t(false);
        this.f122c.setHasNonEmbeddedTabs(false);
    }

    public WindowDecorActionBar(Dialog dialog) {
        new ArrayList();
        this.m = new ArrayList();
        this.n = 0;
        this.o = true;
        this.r = true;
        this.v = new AnonymousClass1();
        this.w = new AnonymousClass2();
        this.x = new ViewPropertyAnimatorUpdateListener() { // from class: androidx.appcompat.app.WindowDecorActionBar.3
            @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
            public final void a() {
                ((View) WindowDecorActionBar.this.d.getParent()).invalidate();
            }
        };
        y(dialog.getWindow().getDecorView());
    }
}
