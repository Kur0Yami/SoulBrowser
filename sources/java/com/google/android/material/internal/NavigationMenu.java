package com.google.android.material.internal;

import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationMenu extends MenuBuilder {
    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl a2 = a(i, i2, i3, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.f176a, this, a2);
        a2.o = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(a2.e);
        return subMenuBuilder;
    }
}
