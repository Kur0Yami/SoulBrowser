package com.mycompany.app.quick;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainListAdapter2;
import com.mycompany.app.view.MyListChild;

/* loaded from: classes3.dex */
public class ListDragHelper extends ItemTouchHelper.Callback {
    public ListDragListener d;
    public boolean e;
    public int f;
    public View g;
    public MyListChild h;
    public int i;
    public int j;
    public boolean k;

    /* loaded from: classes3.dex */
    public interface ListDragListener {
        void a(int i);

        boolean b(int i, int i2);

        void c(int i, int i2);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void a(RecyclerView.ViewHolder viewHolder) {
        View view;
        int c2;
        if (this.e && this.j == -1 && (view = this.g) != null && viewHolder != null && view.equals(viewHolder.f1589a) && this.i != (c2 = viewHolder.c())) {
            this.j = c2;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        o();
        this.i = -1;
        this.j = -1;
        this.k = false;
        super.b(recyclerView, viewHolder);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int e() {
        return this.f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int f() {
        return ItemTouchHelper.Callback.j(15, 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void k(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        char c2;
        Object tag;
        View view;
        if (this.k) {
            return;
        }
        if (!z) {
            super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
        char c3 = 2;
        if (i == 2 && this.e) {
            View view2 = viewHolder.f1589a;
            int i2 = (int) f;
            int i3 = (int) f2;
            if (view2 != null) {
                int width = view2.getWidth();
                int height = view2.getHeight();
                int left = (width / 2) + view2.getLeft() + i2;
                int top = (height / 2) + view2.getTop() + i3;
                int childCount = recyclerView.getChildCount();
                int i4 = 0;
                while (i4 < childCount) {
                    View childAt = recyclerView.getChildAt(i4);
                    if (childAt == null || childAt.equals(view2)) {
                        c2 = c3;
                    } else {
                        int left2 = childAt.getLeft();
                        int top2 = childAt.getTop();
                        int i5 = left2 + width;
                        int i6 = top2 + height;
                        if (left > left2 && left < i5 && top > top2 && top < i6 && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter2.MainListHolder)) {
                            c2 = 2;
                            if (((MainListAdapter2.MainListHolder) tag).u != 2) {
                                view = childAt;
                                break;
                            }
                        } else {
                            c2 = 2;
                        }
                    }
                    i4++;
                    c3 = c2;
                }
            }
            view = null;
            if (view == null) {
                o();
                this.j = -1;
            } else {
                View view3 = this.g;
                if (view3 == null || !view.equals(view3)) {
                    o();
                    this.j = -1;
                    this.g = view;
                    view.setScaleX(1.1f);
                    this.g.setScaleY(1.1f);
                    if (view instanceof MyListChild) {
                        MyListChild myListChild = (MyListChild) view;
                        this.h = myListChild;
                        myListChild.setBackColor(-2119783958);
                    }
                }
            }
        }
        super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void l(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        ListDragListener listDragListener = this.d;
        if (listDragListener != null) {
            int c2 = viewHolder2.c();
            if (listDragListener.b(viewHolder.c(), c2)) {
                o();
                this.i = c2;
                this.j = -1;
                this.k = false;
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void m(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        ListDragListener listDragListener = this.d;
        if (i == 1) {
            this.k = false;
        } else if (i == 2) {
            this.k = false;
            if (viewHolder != null) {
                this.i = viewHolder.c();
            }
        } else if (i == 0) {
            if (this.g != null) {
                o();
                int i3 = this.i;
                if (i3 != -1 && (i2 = this.j) != -1 && i3 != i2) {
                    this.k = true;
                    if (listDragListener != null) {
                        listDragListener.c(i3, i2);
                    }
                }
            }
            this.i = -1;
            this.j = -1;
        }
        if (!this.k && listDragListener != null) {
            listDragListener.a(i);
        }
    }

    public final void o() {
        View view = this.g;
        if (view != null) {
            view.setScaleX(1.0f);
            this.g.setScaleY(1.0f);
            this.g = null;
        }
        MyListChild myListChild = this.h;
        if (myListChild != null) {
            myListChild.setBackColor(0);
            this.h = null;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void n() {
    }
}
