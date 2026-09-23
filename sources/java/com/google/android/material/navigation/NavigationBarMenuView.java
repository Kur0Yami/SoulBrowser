package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

@RestrictTo
/* loaded from: classes3.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    public int A;
    public int B;
    public ShapeAppearanceModel C;
    public ColorStateList D;
    public NavigationBarMenuBuilder E;
    public boolean F;
    public int G;
    public boolean H;
    public MenuItem I;
    public int J;
    public boolean K;

    /* renamed from: c, reason: collision with root package name */
    public int f11844c;
    public int f;
    public ColorStateList g;
    public int h;
    public ColorStateList i;
    public int j;
    public int k;
    public int l;
    public int m;
    public Drawable n;
    public ColorStateList o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    /* renamed from: com.google.android.material.navigation.NavigationBarMenuView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((NavigationBarItemView) view).getItemData();
            throw null;
        }
    }

    private int getCollapsedVisibleItemCount() {
        return Math.min(this.J, this.E.b);
    }

    private NavigationBarItemView getNewItem() {
        return a(getContext());
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        if (navigationBarItemView.getId() == -1) {
        } else {
            throw null;
        }
    }

    public abstract NavigationBarItemView a(Context context);

    @Override // androidx.appcompat.view.menu.MenuView
    public final void b(MenuBuilder menuBuilder) {
        this.E = new NavigationBarMenuBuilder(menuBuilder);
    }

    @Px
    public int getActiveIndicatorLabelPadding() {
        return this.s;
    }

    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return null;
    }

    public int getCurrentVisibleContentItemCount() {
        if (this.H) {
            return this.E.f11843a;
        }
        return getCollapsedVisibleItemCount();
    }

    @StyleRes
    public int getHorizontalItemTextAppearanceActive() {
        return this.m;
    }

    @StyleRes
    public int getHorizontalItemTextAppearanceInactive() {
        return this.l;
    }

    @Px
    public int getIconLabelHorizontalSpacing() {
        return this.t;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.g;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.D;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.u;
    }

    @Px
    public int getItemActiveIndicatorExpandedHeight() {
        return this.y;
    }

    @Px
    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        return this.A;
    }

    @Px
    public int getItemActiveIndicatorExpandedWidth() {
        return this.x;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.w;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.z;
    }

    @Nullable
    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.C;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.v;
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.n;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.p;
    }

    public int getItemGravity() {
        return this.B;
    }

    public int getItemIconGravity() {
        return this.f;
    }

    @Dimension
    public int getItemIconSize() {
        return this.h;
    }

    @Px
    public int getItemPaddingBottom() {
        return this.r;
    }

    @Px
    public int getItemPaddingTop() {
        return this.q;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.o;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.k;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.j;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.i;
    }

    public int getLabelMaxLines() {
        return this.G;
    }

    public int getLabelVisibilityMode() {
        return this.f11844c;
    }

    @Nullable
    public NavigationBarMenuBuilder getMenu() {
        return this.E;
    }

    public boolean getScaleLabelTextWithFont() {
        return this.F;
    }

    public int getSelectedItemId() {
        return 0;
    }

    public int getSelectedItemPosition() {
        return 0;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, getCurrentVisibleContentItemCount(), 1));
    }

    public void setActiveIndicatorLabelPadding(@Px int i) {
        this.s = i;
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        if (this.I != menuItem && menuItem.isCheckable()) {
            MenuItem menuItem2 = this.I;
            if (menuItem2 != null && menuItem2.isChecked()) {
                this.I.setChecked(false);
            }
            menuItem.setChecked(true);
            this.I = menuItem;
        }
    }

    public void setCollapsedMaxItemCount(int i) {
        this.J = i;
    }

    public void setExpanded(boolean z) {
        this.H = z;
    }

    public void setHorizontalItemTextAppearanceActive(@StyleRes int i) {
        this.m = i;
    }

    public void setHorizontalItemTextAppearanceInactive(@StyleRes int i) {
        this.l = i;
    }

    public void setIconLabelHorizontalSpacing(@Px int i) {
        this.t = i;
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.g = colorStateList;
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.D = colorStateList;
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.u = z;
    }

    public void setItemActiveIndicatorExpandedHeight(@Px int i) {
        this.y = i;
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(@Px int i) {
        this.A = i;
    }

    public void setItemActiveIndicatorExpandedWidth(@Px int i) {
        this.x = i;
    }

    public void setItemActiveIndicatorHeight(@Px int i) {
        this.w = i;
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i) {
        this.z = i;
    }

    public void setItemActiveIndicatorResizeable(boolean z) {
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.C = shapeAppearanceModel;
    }

    public void setItemActiveIndicatorWidth(@Px int i) {
        this.v = i;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.n = drawable;
    }

    public void setItemBackgroundRes(int i) {
        this.p = i;
    }

    public void setItemGravity(int i) {
        this.B = i;
    }

    public void setItemIconGravity(int i) {
        this.f = i;
    }

    public void setItemIconSize(@Dimension int i) {
        this.h = i;
    }

    public void setItemPaddingBottom(@Px int i) {
        this.r = i;
    }

    public void setItemPaddingTop(@Px int i) {
        this.q = i;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.o = colorStateList;
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.k = i;
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.j = i;
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.i = colorStateList;
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.F = z;
    }

    public void setLabelMaxLines(int i) {
        this.G = i;
    }

    public void setLabelVisibilityMode(int i) {
        this.f11844c = i;
    }

    public void setMeasurePaddingFromLabelBaseline(boolean z) {
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.K == z) {
            return;
        }
        this.K = z;
    }
}
