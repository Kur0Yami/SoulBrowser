package com.google.android.material.navigation;

import android.support.v4.media.a;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationBarMenuBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final int f11843a;
    public final int b;

    public NavigationBarMenuBuilder(MenuBuilder menuBuilder) {
        this.f11843a = 0;
        this.b = 0;
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        this.f11843a = 0;
        this.b = 0;
        for (int i = 0; i < menuBuilder.f.size(); i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu()) {
                if (!arrayList.isEmpty() && !(a.c(1, arrayList) instanceof DividerMenuItem) && item.isVisible()) {
                    arrayList.add(new Object());
                }
                arrayList.add(item);
                SubMenu subMenu = item.getSubMenu();
                for (int i2 = 0; i2 < subMenu.size(); i2++) {
                    MenuItem item2 = subMenu.getItem(i2);
                    if (!item.isVisible()) {
                        item2.setVisible(false);
                    }
                    arrayList.add(item2);
                    if (item2.isVisible()) {
                        this.f11843a++;
                    }
                }
                arrayList.add(new Object());
            } else {
                arrayList.add(item);
                if (item.isVisible()) {
                    this.f11843a++;
                    this.b++;
                }
            }
        }
        if (!arrayList.isEmpty() && (a.c(1, arrayList) instanceof DividerMenuItem)) {
            arrayList.remove(arrayList.size() - 1);
        }
    }
}
