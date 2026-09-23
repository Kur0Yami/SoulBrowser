package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class MenuAdapter extends BaseAdapter {

    /* renamed from: c, reason: collision with root package name */
    public final MenuBuilder f175c;
    public int f = -1;
    public boolean g;
    public final boolean h;
    public final LayoutInflater i;
    public final int j;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.h = z;
        this.i = layoutInflater;
        this.f175c = menuBuilder;
        this.j = i;
        a();
    }

    public final void a() {
        MenuBuilder menuBuilder = this.f175c;
        MenuItemImpl menuItemImpl = menuBuilder.v;
        if (menuItemImpl != null) {
            menuBuilder.i();
            ArrayList arrayList = menuBuilder.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((MenuItemImpl) arrayList.get(i)) == menuItemImpl) {
                    this.f = i;
                    return;
                }
            }
        }
        this.f = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final MenuItemImpl getItem(int i) {
        ArrayList l;
        boolean z = this.h;
        MenuBuilder menuBuilder = this.f175c;
        if (z) {
            menuBuilder.i();
            l = menuBuilder.j;
        } else {
            l = menuBuilder.l();
        }
        int i2 = this.f;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (MenuItemImpl) l.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList l;
        boolean z = this.h;
        MenuBuilder menuBuilder = this.f175c;
        if (z) {
            menuBuilder.i();
            l = menuBuilder.j;
        } else {
            l = menuBuilder.l();
        }
        if (this.f < 0) {
            return l.size();
        }
        return l.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z = false;
        if (view == null) {
            view = this.i.inflate(this.j, viewGroup, false);
        }
        int i3 = getItem(i).b;
        int i4 = i - 1;
        if (i4 >= 0) {
            i2 = getItem(i4).b;
        } else {
            i2 = i3;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f175c.m() && i3 != i2) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.g) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.c(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
