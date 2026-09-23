package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo
/* loaded from: classes.dex */
public interface MenuItemHoverListener {
    void d(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    void g(MenuBuilder menuBuilder, MenuItem menuItem);
}
