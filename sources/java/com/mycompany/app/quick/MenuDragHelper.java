package com.mycompany.app.quick;

import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class MenuDragHelper extends ItemTouchHelper.Callback {
    public MenuDragListener d;

    /* loaded from: classes3.dex */
    public interface MenuDragListener {
        void a(int i);

        void b(int i, int i2);
    }

    public MenuDragHelper(MenuDragListener menuDragListener) {
        this.d = menuDragListener;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int f() {
        return ItemTouchHelper.Callback.j(15, 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean h() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean i() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void l(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        MenuDragListener menuDragListener = this.d;
        if (menuDragListener != null) {
            menuDragListener.b(viewHolder.c(), viewHolder2.c());
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void m(RecyclerView.ViewHolder viewHolder, int i) {
        MenuDragListener menuDragListener = this.d;
        if (menuDragListener != null) {
            menuDragListener.a(i);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void n() {
    }
}
