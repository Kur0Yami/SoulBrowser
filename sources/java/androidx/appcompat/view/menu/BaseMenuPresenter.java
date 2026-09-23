package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public abstract class BaseMenuPresenter implements MenuPresenter {

    /* renamed from: c, reason: collision with root package name */
    public Context f162c;
    public Context f;
    public MenuBuilder g;
    public LayoutInflater h;
    public MenuPresenter.Callback i;
    public int j;
    public int k;
    public MenuView l;

    public abstract void a(MenuItemImpl menuItemImpl, MenuView.ItemView itemView);

    public boolean b(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.i;
        if (callback != null) {
            callback.c(menuBuilder, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z) {
        MenuItemImpl menuItemImpl;
        ViewGroup viewGroup = (ViewGroup) this.l;
        if (viewGroup != null) {
            MenuBuilder menuBuilder = this.g;
            int i = 0;
            if (menuBuilder != null) {
                menuBuilder.i();
                ArrayList l = this.g.l();
                int size = l.size();
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    MenuItemImpl menuItemImpl2 = (MenuItemImpl) l.get(i3);
                    if (l(menuItemImpl2)) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (childAt instanceof MenuView.ItemView) {
                            menuItemImpl = ((MenuView.ItemView) childAt).getItemData();
                        } else {
                            menuItemImpl = null;
                        }
                        View i4 = i(menuItemImpl2, childAt, viewGroup);
                        if (menuItemImpl2 != menuItemImpl) {
                            i4.setPressed(false);
                            i4.jumpDrawablesToCurrentState();
                        }
                        if (i4 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) i4.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(i4);
                            }
                            ((ViewGroup) this.l).addView(i4, i2);
                        }
                        i2++;
                    }
                }
                i = i2;
            }
            while (i < viewGroup.getChildCount()) {
                if (!b(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean g(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void h(Context context, MenuBuilder menuBuilder) {
        this.f = context;
        LayoutInflater.from(context);
        this.g = menuBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View i(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        MenuView.ItemView itemView;
        if (view instanceof MenuView.ItemView) {
            itemView = (MenuView.ItemView) view;
        } else {
            itemView = (MenuView.ItemView) this.h.inflate(this.k, viewGroup, false);
        }
        a(menuItemImpl, itemView);
        return (View) itemView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.MenuBuilder] */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean j(SubMenuBuilder subMenuBuilder) {
        MenuPresenter.Callback callback = this.i;
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        if (callback != null) {
            if (subMenuBuilder == null) {
                subMenuBuilder2 = this.g;
            }
            return callback.d(subMenuBuilder2);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean k(MenuItemImpl menuItemImpl) {
        return false;
    }

    public boolean l(MenuItemImpl menuItemImpl) {
        return true;
    }
}
