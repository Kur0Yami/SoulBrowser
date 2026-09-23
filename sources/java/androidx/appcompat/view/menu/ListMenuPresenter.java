package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public Context f173c;
    public LayoutInflater f;
    public MenuBuilder g;
    public ExpandedMenuView h;
    public final int i;
    public MenuPresenter.Callback j;
    public MenuAdapter k;

    /* loaded from: classes.dex */
    public class MenuAdapter extends BaseAdapter {

        /* renamed from: c, reason: collision with root package name */
        public int f174c = -1;

        public MenuAdapter() {
            a();
        }

        public final void a() {
            MenuBuilder menuBuilder = ListMenuPresenter.this.g;
            MenuItemImpl menuItemImpl = menuBuilder.v;
            if (menuItemImpl != null) {
                menuBuilder.i();
                ArrayList arrayList = menuBuilder.j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (((MenuItemImpl) arrayList.get(i)) == menuItemImpl) {
                        this.f174c = i;
                        return;
                    }
                }
            }
            this.f174c = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MenuItemImpl getItem(int i) {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.g;
            menuBuilder.i();
            ArrayList arrayList = menuBuilder.j;
            listMenuPresenter.getClass();
            int i2 = this.f174c;
            if (i2 >= 0 && i >= i2) {
                i++;
            }
            return (MenuItemImpl) arrayList.get(i);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.g;
            menuBuilder.i();
            int size = menuBuilder.j.size();
            listMenuPresenter.getClass();
            if (this.f174c < 0) {
                return size;
            }
            return size - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
                view = listMenuPresenter.f.inflate(listMenuPresenter.i, viewGroup, false);
            }
            ((MenuView.ItemView) view).c(getItem(i));
            return view;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(ContextWrapper contextWrapper, int i) {
        this.i = i;
        this.f173c = contextWrapper;
        this.f = LayoutInflater.from(contextWrapper);
    }

    public final ListAdapter a() {
        if (this.k == null) {
            this.k = new MenuAdapter();
        }
        return this.k;
    }

    public final MenuView b(ViewGroup viewGroup) {
        if (this.h == null) {
            this.h = (ExpandedMenuView) this.f.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.k == null) {
                this.k = new MenuAdapter();
            }
            this.h.setAdapter((ListAdapter) this.k);
            this.h.setOnItemClickListener(this);
        }
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.j;
        if (callback != null) {
            callback.c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(boolean z) {
        MenuAdapter menuAdapter = this.k;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void f(MenuPresenter.Callback callback) {
        throw null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean g(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h(Context context, MenuBuilder menuBuilder) {
        if (this.f173c != null) {
            this.f173c = context;
            if (this.f == null) {
                this.f = LayoutInflater.from(context);
            }
        }
        this.g = menuBuilder;
        MenuAdapter menuAdapter = this.k;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.view.menu.MenuPresenter$Callback, android.content.DialogInterface$OnClickListener, android.content.DialogInterface$OnKeyListener, androidx.appcompat.view.menu.MenuDialogHelper, java.lang.Object, android.content.DialogInterface$OnDismissListener] */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        boolean hasVisibleItems = subMenuBuilder.hasVisibleItems();
        Context context = subMenuBuilder.f176a;
        if (!hasVisibleItems) {
            return false;
        }
        ?? obj = new Object();
        obj.f178c = subMenuBuilder;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        AlertController.AlertParams alertParams = builder.f81a;
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(alertParams.f76a, R.layout.abc_list_menu_item_layout);
        obj.g = listMenuPresenter;
        listMenuPresenter.j = obj;
        subMenuBuilder.b(listMenuPresenter, context);
        alertParams.i = obj.g.a();
        alertParams.j = obj;
        View view = subMenuBuilder.o;
        if (view != null) {
            alertParams.e = view;
        } else {
            alertParams.f77c = subMenuBuilder.n;
            alertParams.d = subMenuBuilder.m;
        }
        alertParams.h = obj;
        AlertDialog a2 = builder.a();
        obj.f = a2;
        a2.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.f.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        obj.f.show();
        MenuPresenter.Callback callback = this.j;
        if (callback != null) {
            callback.d(subMenuBuilder);
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean k(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.g.q(this.k.getItem(i), this, 0);
    }
}
