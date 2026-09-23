package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;

@RestrictTo
/* loaded from: classes.dex */
public class MenuPopupHelper implements MenuHelper {

    /* renamed from: a, reason: collision with root package name */
    public final Context f186a;
    public final MenuBuilder b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f187c;
    public final int d;
    public View e;
    public boolean g;
    public MenuPresenter.Callback h;
    public MenuPopup i;
    public PopupWindow.OnDismissListener j;
    public int f = 8388611;
    public final PopupWindow.OnDismissListener k = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            MenuPopupHelper.this.c();
        }
    };

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i, int i2) {
        this.f186a = context;
        this.b = menuBuilder;
        this.e = view;
        this.f187c = z;
        this.d = i;
    }

    public final MenuPopup a() {
        MenuPopup standardMenuPopup;
        if (this.i == null) {
            Context context = this.f186a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                standardMenuPopup = new CascadingMenuPopup(context, this.e, this.d, this.f187c);
            } else {
                standardMenuPopup = new StandardMenuPopup(this.f186a, this.b, this.e, this.d, this.f187c);
            }
            standardMenuPopup.l(this.b);
            standardMenuPopup.r(this.k);
            standardMenuPopup.n(this.e);
            standardMenuPopup.f(this.h);
            standardMenuPopup.o(this.g);
            standardMenuPopup.p(this.f);
            this.i = standardMenuPopup;
        }
        return this.i;
    }

    public final boolean b() {
        MenuPopup menuPopup = this.i;
        if (menuPopup != null && menuPopup.a()) {
            return true;
        }
        return false;
    }

    public void c() {
        this.i = null;
        PopupWindow.OnDismissListener onDismissListener = this.j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(boolean z) {
        this.g = z;
        MenuPopup menuPopup = this.i;
        if (menuPopup != null) {
            menuPopup.o(z);
        }
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        MenuPopup a2 = a();
        a2.s(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f, this.e.getLayoutDirection()) & 7) == 5) {
                i -= this.e.getWidth();
            }
            a2.q(i);
            a2.t(i2);
            int i3 = (int) ((this.f186a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a2.f185c = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        a2.b();
    }
}
