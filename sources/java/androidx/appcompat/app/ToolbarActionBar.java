package androidx.appcompat.app;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ToolbarActionBar extends ActionBar {

    /* renamed from: a, reason: collision with root package name */
    public final ToolbarWidgetWrapper f109a;
    public final Window.Callback b;

    /* renamed from: c, reason: collision with root package name */
    public final ToolbarMenuCallback f110c;
    public boolean d;
    public boolean e;
    public boolean f;
    public final ArrayList g = new ArrayList();
    public final Runnable h = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r6 = this;
                androidx.appcompat.app.ToolbarActionBar r0 = androidx.appcompat.app.ToolbarActionBar.this
                android.view.Window$Callback r1 = r0.b
                android.view.Menu r0 = r0.x()
                boolean r2 = r0 instanceof androidx.appcompat.view.menu.MenuBuilder
                r3 = 0
                if (r2 == 0) goto L11
                r2 = r0
                androidx.appcompat.view.menu.MenuBuilder r2 = (androidx.appcompat.view.menu.MenuBuilder) r2
                goto L12
            L11:
                r2 = r3
            L12:
                if (r2 == 0) goto L17
                r2.w()
            L17:
                r0.clear()     // Catch: java.lang.Throwable -> L28
                r4 = 0
                boolean r5 = r1.onCreatePanelMenu(r4, r0)     // Catch: java.lang.Throwable -> L28
                if (r5 == 0) goto L2a
                boolean r1 = r1.onPreparePanel(r4, r3, r0)     // Catch: java.lang.Throwable -> L28
                if (r1 != 0) goto L2d
                goto L2a
            L28:
                r0 = move-exception
                goto L33
            L2a:
                r0.clear()     // Catch: java.lang.Throwable -> L28
            L2d:
                if (r2 == 0) goto L32
                r2.v()
            L32:
                return
            L33:
                if (r2 == 0) goto L38
                r2.v()
            L38:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ToolbarActionBar.AnonymousClass1.run():void");
        }
    };
    public final Toolbar.OnMenuItemClickListener i;

    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {

        /* renamed from: c, reason: collision with root package name */
        public boolean f113c;

        public ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            if (this.f113c) {
                return;
            }
            this.f113c = true;
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            toolbarActionBar.f109a.h();
            toolbarActionBar.b.onPanelClosed(108, menuBuilder);
            this.f113c = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            ToolbarActionBar.this.b.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public final class MenuBuilderCallback implements MenuBuilder.Callback {
        public MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void b(MenuBuilder menuBuilder) {
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            Window.Callback callback = toolbarActionBar.b;
            if (toolbarActionBar.f109a.f341a.r()) {
                callback.onPanelClosed(108, menuBuilder);
            } else if (callback.onPreparePanel(0, null, menuBuilder)) {
                callback.onMenuOpened(108, menuBuilder);
            }
        }
    }

    /* loaded from: classes.dex */
    public class ToolbarMenuCallback implements AppCompatDelegateImpl.ActionBarMenuCallback {
        public ToolbarMenuCallback() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public final void a(int i) {
            if (i == 0) {
                ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
                if (!toolbarActionBar.d) {
                    toolbarActionBar.f109a.l = true;
                    toolbarActionBar.d = true;
                }
            }
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public final View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(ToolbarActionBar.this.f109a.f341a.getContext());
            }
            return null;
        }
    }

    public ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        Toolbar.OnMenuItemClickListener onMenuItemClickListener = new Toolbar.OnMenuItemClickListener() { // from class: androidx.appcompat.app.ToolbarActionBar.2
            @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ToolbarActionBar.this.b.onMenuItemSelected(0, menuItem);
            }
        };
        this.i = onMenuItemClickListener;
        toolbar.getClass();
        ToolbarWidgetWrapper toolbarWidgetWrapper = new ToolbarWidgetWrapper(toolbar, false);
        this.f109a = toolbarWidgetWrapper;
        callback.getClass();
        this.b = callback;
        toolbarWidgetWrapper.k = callback;
        toolbar.setOnMenuItemClickListener(onMenuItemClickListener);
        toolbarWidgetWrapper.setWindowTitle(charSequence);
        this.f110c = new ToolbarMenuCallback();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean e() {
        return this.f109a.f();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean f() {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f109a;
        if (toolbarWidgetWrapper.f341a.m()) {
            toolbarWidgetWrapper.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void g(boolean z) {
        if (z != this.f) {
            this.f = z;
            ArrayList arrayList = this.g;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((ActionBar.OnMenuVisibilityListener) arrayList.get(i)).a();
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int h() {
        return this.f109a.b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context i() {
        return this.f109a.f341a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean j() {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f109a;
        Toolbar toolbar = toolbarWidgetWrapper.f341a;
        Runnable runnable = this.h;
        toolbar.removeCallbacks(runnable);
        Toolbar toolbar2 = toolbarWidgetWrapper.f341a;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        toolbar2.postOnAnimation(runnable);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void l() {
        this.f109a.f341a.removeCallbacks(this.h);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean m(int i, KeyEvent keyEvent) {
        Menu x = x();
        if (x == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() == 1) {
            z = false;
        }
        x.setQwertyMode(z);
        return x.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean n(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            o();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean o() {
        return this.f109a.f341a.x();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void p(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void q(boolean z) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f109a;
        toolbarWidgetWrapper.j((toolbarWidgetWrapper.b & (-5)) | 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void r(int i) {
        this.f109a.o(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void s(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void t(String str) {
        this.f109a.l(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void u(String str) {
        this.f109a.setTitle(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void v(CharSequence charSequence) {
        this.f109a.setWindowTitle(charSequence);
    }

    public final Menu x() {
        boolean z = this.e;
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f109a;
        if (!z) {
            ActionMenuPresenterCallback actionMenuPresenterCallback = new ActionMenuPresenterCallback();
            MenuBuilderCallback menuBuilderCallback = new MenuBuilderCallback();
            Toolbar toolbar = toolbarWidgetWrapper.f341a;
            toolbar.R = actionMenuPresenterCallback;
            toolbar.S = menuBuilderCallback;
            ActionMenuView actionMenuView = toolbar.f333c;
            if (actionMenuView != null) {
                actionMenuView.y = actionMenuPresenterCallback;
                actionMenuView.z = menuBuilderCallback;
            }
            this.e = true;
        }
        return toolbarWidgetWrapper.f341a.getMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void k() {
    }
}
