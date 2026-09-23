package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int E = R.layout.abc_cascading_menu_item_layout;
    public MenuPresenter.Callback A;
    public ViewTreeObserver B;
    public PopupWindow.OnDismissListener C;
    public boolean D;
    public final Context f;
    public final int g;
    public final int h;
    public final boolean i;
    public final Handler j;
    public View r;
    public View s;
    public int t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public boolean z;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener m = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ArrayList arrayList = cascadingMenuPopup.l;
            if (cascadingMenuPopup.a() && arrayList.size() > 0) {
                int i = 0;
                if (!((CascadingMenuInfo) arrayList.get(0)).f169a.C) {
                    View view = cascadingMenuPopup.s;
                    if (view != null && view.isShown()) {
                        int size = arrayList.size();
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            ((CascadingMenuInfo) obj).f169a.b();
                        }
                        return;
                    }
                    cascadingMenuPopup.dismiss();
                }
            }
        }
    };
    public final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ViewTreeObserver viewTreeObserver = cascadingMenuPopup.B;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cascadingMenuPopup.B = view.getViewTreeObserver();
                }
                cascadingMenuPopup.B.removeGlobalOnLayoutListener(cascadingMenuPopup.m);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    public final MenuItemHoverListener o = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void d(final MenuBuilder menuBuilder, final MenuItemImpl menuItemImpl) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            Handler handler = cascadingMenuPopup.j;
            final CascadingMenuInfo cascadingMenuInfo = null;
            handler.removeCallbacksAndMessages(null);
            ArrayList arrayList = cascadingMenuPopup.l;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i)).b) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            if (i2 < arrayList.size()) {
                cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(i2);
            }
            handler.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    CascadingMenuPopup cascadingMenuPopup2 = CascadingMenuPopup.this;
                    CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                    if (cascadingMenuInfo2 != null) {
                        cascadingMenuPopup2.D = true;
                        cascadingMenuInfo2.b.c(false);
                        cascadingMenuPopup2.D = false;
                    }
                    MenuItemImpl menuItemImpl2 = menuItemImpl;
                    if (menuItemImpl2.isEnabled() && menuItemImpl2.hasSubMenu()) {
                        menuBuilder.q(menuItemImpl2, null, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void g(MenuBuilder menuBuilder, MenuItem menuItem) {
            CascadingMenuPopup.this.j.removeCallbacksAndMessages(menuBuilder);
        }
    };
    public int p = 0;
    public int q = 0;
    public boolean y = false;

    /* loaded from: classes.dex */
    public static class CascadingMenuInfo {

        /* renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f169a;
        public final MenuBuilder b;

        /* renamed from: c, reason: collision with root package name */
        public final int f170c;

        public CascadingMenuInfo(MenuPopupWindow menuPopupWindow, MenuBuilder menuBuilder, int i) {
            this.f169a = menuPopupWindow;
            this.b = menuBuilder;
            this.f170c = i;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HorizPosition {
    }

    public CascadingMenuPopup(Context context, View view, int i, boolean z) {
        this.f = context;
        this.r = view;
        this.h = i;
        this.i = z;
        this.t = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.j = new Handler();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean a() {
        ArrayList arrayList = this.l;
        if (arrayList.size() <= 0 || !((CascadingMenuInfo) arrayList.get(0)).f169a.D.isShowing()) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void b() {
        if (!a()) {
            ArrayList arrayList = this.k;
            int size = arrayList.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                u((MenuBuilder) obj);
            }
            arrayList.clear();
            View view = this.r;
            this.s = view;
            if (view != null) {
                if (this.B == null) {
                    z = true;
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                this.B = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.m);
                }
                this.s.addOnAttachStateChangeListener(this.n);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        int i;
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i2)).b) {
                    break;
                } else {
                    i2++;
                }
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 >= 0) {
            int i3 = i2 + 1;
            if (i3 < arrayList.size()) {
                ((CascadingMenuInfo) arrayList.get(i3)).b.c(false);
            }
            CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) arrayList.remove(i2);
            MenuBuilder menuBuilder2 = cascadingMenuInfo.b;
            MenuPopupWindow menuPopupWindow = cascadingMenuInfo.f169a;
            menuBuilder2.r(this);
            if (this.D) {
                menuPopupWindow.t();
                menuPopupWindow.D.setAnimationStyle(0);
            }
            menuPopupWindow.dismiss();
            int size2 = arrayList.size();
            if (size2 > 0) {
                this.t = ((CascadingMenuInfo) arrayList.get(size2 - 1)).f170c;
            } else {
                if (this.r.getLayoutDirection() == 1) {
                    i = 0;
                } else {
                    i = 1;
                }
                this.t = i;
            }
            if (size2 == 0) {
                dismiss();
                MenuPresenter.Callback callback = this.A;
                if (callback != null) {
                    callback.c(menuBuilder, true);
                }
                ViewTreeObserver viewTreeObserver = this.B;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.B.removeGlobalOnLayoutListener(this.m);
                    }
                    this.B = null;
                }
                this.s.removeOnAttachStateChangeListener(this.n);
                this.C.onDismiss();
                return;
            }
            if (z) {
                ((CascadingMenuInfo) arrayList.get(0)).b.c(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(boolean z) {
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ListAdapter adapter = ((CascadingMenuInfo) obj).f169a.g.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((MenuAdapter) adapter).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) arrayList.toArray(new CascadingMenuInfo[size]);
            for (int i = size - 1; i >= 0; i--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i];
                if (cascadingMenuInfo.f169a.D.isShowing()) {
                    cascadingMenuInfo.f169a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void f(MenuPresenter.Callback callback) {
        this.A = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((CascadingMenuInfo) a.c(1, arrayList)).f169a.g;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) obj;
            if (subMenuBuilder == cascadingMenuInfo.b) {
                cascadingMenuInfo.f169a.g.requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        l(subMenuBuilder);
        MenuPresenter.Callback callback = this.A;
        if (callback != null) {
            callback.d(subMenuBuilder);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void l(MenuBuilder menuBuilder) {
        menuBuilder.b(this, this.f);
        if (a()) {
            u(menuBuilder);
        } else {
            this.k.add(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(View view) {
        if (this.r != view) {
            this.r = view;
            this.q = Gravity.getAbsoluteGravity(this.p, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(boolean z) {
        this.y = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(i);
                if (!cascadingMenuInfo.f169a.D.isShowing()) {
                    break;
                } else {
                    i++;
                }
            } else {
                cascadingMenuInfo = null;
                break;
            }
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.b.c(false);
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
        if (this.p != i) {
            this.p = i;
            this.q = Gravity.getAbsoluteGravity(i, this.r.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(int i) {
        this.u = true;
        this.w = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.C = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.z = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i) {
        this.v = true;
        this.x = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0140, code lost:
    
        if (((r7.getWidth() + r10[r16]) + r5) > r11.right) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0142, code lost:
    
        r7 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0146, code lost:
    
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014b, code lost:
    
        if ((r10[r16] - r5) < 0) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01b6  */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.MenuPopupWindow] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(androidx.appcompat.view.menu.MenuBuilder r19) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.CascadingMenuPopup.u(androidx.appcompat.view.menu.MenuBuilder):void");
    }
}
