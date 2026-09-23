package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;

/* loaded from: classes.dex */
abstract class BaseMenuWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final Context f163a;
    public SimpleArrayMap b;

    /* renamed from: c, reason: collision with root package name */
    public SimpleArrayMap f164c;

    public BaseMenuWrapper(Context context) {
        this.f163a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
            if (this.b == null) {
                this.b = new SimpleArrayMap(0);
            }
            MenuItem menuItem2 = (MenuItem) this.b.get(supportMenuItem);
            if (menuItem2 == null) {
                MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.f163a, supportMenuItem);
                this.b.put(supportMenuItem, menuItemWrapperICS);
                return menuItemWrapperICS;
            }
            return menuItem2;
        }
        return menuItem;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (subMenu instanceof SupportSubMenu) {
            SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
            if (this.f164c == null) {
                this.f164c = new SimpleArrayMap(0);
            }
            SubMenu subMenu2 = (SubMenu) this.f164c.get(supportSubMenu);
            if (subMenu2 == null) {
                SubMenuWrapperICS subMenuWrapperICS = new SubMenuWrapperICS(this.f163a, supportSubMenu);
                this.f164c.put(supportSubMenu, subMenuWrapperICS);
                return subMenuWrapperICS;
            }
            return subMenu2;
        }
        return subMenu;
    }
}
