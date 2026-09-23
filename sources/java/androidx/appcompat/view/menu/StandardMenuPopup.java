package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.MenuPopupWindow;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {
    public static final int y = R.layout.abc_popup_menu_item_layout;
    public final Context f;
    public final MenuBuilder g;
    public final MenuAdapter h;
    public final boolean i;
    public final int j;
    public final int k;
    public final MenuPopupWindow l;
    public PopupWindow.OnDismissListener o;
    public View p;
    public View q;
    public MenuPresenter.Callback r;
    public ViewTreeObserver s;
    public boolean t;
    public boolean u;
    public int v;
    public boolean x;
    public final ViewTreeObserver.OnGlobalLayoutListener m = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            MenuPopupWindow menuPopupWindow = standardMenuPopup.l;
            if (standardMenuPopup.a() && !menuPopupWindow.C) {
                View view = standardMenuPopup.q;
                if (view != null && view.isShown()) {
                    menuPopupWindow.b();
                } else {
                    standardMenuPopup.dismiss();
                }
            }
        }
    };
    public final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            ViewTreeObserver viewTreeObserver = standardMenuPopup.s;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    standardMenuPopup.s = view.getViewTreeObserver();
                }
                standardMenuPopup.s.removeGlobalOnLayoutListener(standardMenuPopup.m);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    public int w = 0;

    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.MenuPopupWindow] */
    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i, boolean z) {
        this.f = context;
        this.g = menuBuilder;
        this.i = z;
        this.h = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, y);
        this.k = i;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.p = view;
        this.l = new ListPopupWindow(context, null, i, 0);
        menuBuilder.b(this, context);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean a() {
        if (!this.t && this.l.D.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void b() {
        View view;
        boolean z;
        Rect rect;
        if (a()) {
            return;
        }
        if (!this.t && (view = this.p) != null) {
            this.q = view;
            MenuPopupWindow menuPopupWindow = this.l;
            PopupWindow popupWindow = menuPopupWindow.D;
            PopupWindow popupWindow2 = menuPopupWindow.D;
            popupWindow.setOnDismissListener(this);
            menuPopupWindow.t = this;
            menuPopupWindow.C = true;
            popupWindow2.setFocusable(true);
            View view2 = this.q;
            if (this.s == null) {
                z = true;
            } else {
                z = false;
            }
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.s = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.m);
            }
            view2.addOnAttachStateChangeListener(this.n);
            menuPopupWindow.s = view2;
            menuPopupWindow.p = this.w;
            boolean z2 = this.u;
            Context context = this.f;
            MenuAdapter menuAdapter = this.h;
            if (!z2) {
                this.v = MenuPopup.m(menuAdapter, context, this.j);
                this.u = true;
            }
            menuPopupWindow.r(this.v);
            popupWindow2.setInputMethodMode(2);
            Rect rect2 = this.f185c;
            if (rect2 != null) {
                rect = new Rect(rect2);
            } else {
                rect = null;
            }
            menuPopupWindow.B = rect;
            menuPopupWindow.b();
            DropDownListView dropDownListView = menuPopupWindow.g;
            dropDownListView.setOnKeyListener(this);
            if (this.x) {
                MenuBuilder menuBuilder = this.g;
                if (menuBuilder.m != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
                    TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                    if (textView != null) {
                        textView.setText(menuBuilder.m);
                    }
                    frameLayout.setEnabled(false);
                    dropDownListView.addHeaderView(frameLayout, null, false);
                }
            }
            menuPopupWindow.p(menuAdapter);
            menuPopupWindow.b();
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.g) {
            dismiss();
            MenuPresenter.Callback callback = this.r;
            if (callback != null) {
                callback.c(menuBuilder, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(boolean z) {
        this.u = false;
        MenuAdapter menuAdapter = this.h;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        if (a()) {
            this.l.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void f(MenuPresenter.Callback callback) {
        this.r = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        return this.l.g;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f, subMenuBuilder, this.q, this.i, this.k, 0);
            MenuPresenter.Callback callback = this.r;
            menuPopupHelper.h = callback;
            MenuPopup menuPopup = menuPopupHelper.i;
            if (menuPopup != null) {
                menuPopup.f(callback);
            }
            int size = subMenuBuilder.f.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    MenuItem item = subMenuBuilder.getItem(i);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
            menuPopupHelper.d(z);
            menuPopupHelper.j = this.o;
            this.o = null;
            this.g.c(false);
            MenuPopupWindow menuPopupWindow = this.l;
            int i2 = menuPopupWindow.j;
            int o = menuPopupWindow.o();
            if ((Gravity.getAbsoluteGravity(this.w, this.p.getLayoutDirection()) & 7) == 5) {
                i2 += this.p.getWidth();
            }
            if (!menuPopupHelper.b()) {
                if (menuPopupHelper.e != null) {
                    menuPopupHelper.e(i2, o, true, true);
                }
            }
            MenuPresenter.Callback callback2 = this.r;
            if (callback2 != null) {
                callback2.d(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void l(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(View view) {
        this.p = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(boolean z) {
        this.h.g = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.t = true;
        this.g.c(true);
        ViewTreeObserver viewTreeObserver = this.s;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.s = this.q.getViewTreeObserver();
            }
            this.s.removeGlobalOnLayoutListener(this.m);
            this.s = null;
        }
        this.q.removeOnAttachStateChangeListener(this.n);
        PopupWindow.OnDismissListener onDismissListener = this.o;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void p(int i) {
        this.w = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(int i) {
        this.l.j = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.o = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.x = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i) {
        this.l.l(i);
    }
}
