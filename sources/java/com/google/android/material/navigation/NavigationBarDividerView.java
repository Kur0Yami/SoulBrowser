package com.google.android.material.navigation;

import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationBarDividerView extends FrameLayout implements NavigationBarMenuItemView {

    /* renamed from: c, reason: collision with root package name */
    public boolean f11839c;
    public boolean f;
    public boolean g;

    public final void a() {
        int i;
        if (this.g && (this.f11839c || !this.f)) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void c(MenuItemImpl menuItemImpl) {
        a();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setDividersEnabled(boolean z) {
        this.g = z;
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
    }

    public void setExpanded(boolean z) {
        this.f11839c = z;
        a();
    }

    public void setIcon(@Nullable Drawable drawable) {
    }

    public void setOnlyShowWhenExpanded(boolean z) {
        this.f = z;
        a();
    }

    public void setTitle(@Nullable CharSequence charSequence) {
    }
}
