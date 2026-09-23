package androidx.appcompat.view.menu;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public interface MenuView {

    /* loaded from: classes.dex */
    public interface ItemView {
        void c(MenuItemImpl menuItemImpl);

        MenuItemImpl getItemData();
    }

    void b(MenuBuilder menuBuilder);
}
