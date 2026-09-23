package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.media.a;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    public final MenuItemImpl A;
    public final MenuBuilder z;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.z = menuBuilder;
        this.A = menuItemImpl;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean d(MenuItemImpl menuItemImpl) {
        return this.z.d(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean e(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (!super.e(menuBuilder, menuItem) && !this.z.e(menuBuilder, menuItem)) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean f(MenuItemImpl menuItemImpl) {
        return this.z.f(menuItemImpl);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final String j() {
        int i;
        MenuItemImpl menuItemImpl = this.A;
        if (menuItemImpl != null) {
            i = menuItemImpl.f179a;
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return a.e(i, "android:menu:actionviewstates:");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final MenuBuilder k() {
        return this.z.k();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean m() {
        return this.z.m();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean n() {
        return this.z.n();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final boolean o() {
        return this.z.o();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        u(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.A.setIcon(i);
        return this;
    }
}
