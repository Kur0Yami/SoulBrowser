package com.google.android.material.navigation;

import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo
/* loaded from: classes3.dex */
public final class NavigationBarMenu extends MenuBuilder {
    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final MenuItemImpl a(int i, int i2, int i3, CharSequence charSequence) {
        if (this.f.size() + 1 <= 0) {
            w();
            MenuItemImpl a2 = super.a(i, i2, i3, charSequence);
            v();
            return a2;
        }
        throw null;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw null;
    }
}
