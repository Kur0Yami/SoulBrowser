package com.google.android.material.navigation;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationBarSubheaderView extends FrameLayout implements NavigationBarMenuItemView {

    /* renamed from: c, reason: collision with root package name */
    public boolean f11846c;
    public boolean f;
    public MenuItemImpl g;

    public final void a() {
        int i;
        MenuItemImpl menuItemImpl = this.g;
        if (menuItemImpl != null) {
            if (menuItemImpl.isVisible() && (this.f11846c || !this.f)) {
                i = 0;
            } else {
                i = 8;
            }
            setVisibility(i);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void c(MenuItemImpl menuItemImpl) {
        this.g = menuItemImpl;
        menuItemImpl.setCheckable(false);
        throw null;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.g;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
    }

    public void setExpanded(boolean z) {
        this.f11846c = z;
        a();
    }

    public void setIcon(@Nullable Drawable drawable) {
    }

    public void setOnlyShowWhenExpanded(boolean z) {
        this.f = z;
        a();
    }

    public void setTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
        } else {
            throw null;
        }
    }

    public void setTitle(@Nullable CharSequence charSequence) {
    }
}
