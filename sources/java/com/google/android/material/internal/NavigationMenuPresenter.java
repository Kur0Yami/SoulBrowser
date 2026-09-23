package com.google.android.material.internal;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.R;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationMenuPresenter implements MenuPresenter {

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class HeaderViewHolder extends ViewHolder {
    }

    /* loaded from: classes3.dex */
    public class NavigationMenuAdapter extends RecyclerView.Adapter<ViewHolder> {

        /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$NavigationMenuAdapter$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AccessibilityDelegateCompat {
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
                throw null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long e(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void n(RecyclerView.ViewHolder viewHolder, int i) {
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        throw null;
                    }
                    throw null;
                }
                throw null;
            }
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void t(RecyclerView.ViewHolder viewHolder) {
            ViewHolder viewHolder2 = (ViewHolder) viewHolder;
            if (viewHolder2 instanceof NormalViewHolder) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder2.f1589a;
                FrameLayout frameLayout = navigationMenuItemView.E;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                navigationMenuItemView.D.setCompoundDrawables(null, null, null, null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class NavigationMenuHeaderItem implements NavigationMenuItem {
    }

    /* loaded from: classes3.dex */
    public interface NavigationMenuItem {
    }

    /* loaded from: classes3.dex */
    public static class NavigationMenuSeparatorItem implements NavigationMenuItem {
    }

    /* loaded from: classes3.dex */
    public static class NavigationMenuTextItem implements NavigationMenuItem {
    }

    /* loaded from: classes3.dex */
    public class NavigationMenuViewAccessibilityDelegate extends RecyclerViewAccessibilityDelegate {
        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.d(view, accessibilityNodeInfoCompat);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class NormalViewHolder extends ViewHolder {
    }

    /* loaded from: classes3.dex */
    public static class SeparatorViewHolder extends ViewHolder {
    }

    /* loaded from: classes3.dex */
    public static class SubheaderViewHolder extends ViewHolder {
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewHolder extends RecyclerView.ViewHolder {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean g(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h(Context context, MenuBuilder menuBuilder) {
        LayoutInflater.from(context);
        context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean k(MenuItemImpl menuItemImpl) {
        return false;
    }
}
