package com.mycompany.app.quick;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickAdapter;

/* loaded from: classes3.dex */
public class QuickDragHelper extends ItemTouchHelper.Callback {
    public QuickDragListener d;
    public final boolean e;
    public final int f;
    public QuickSubView g;
    public View h;
    public int i;
    public int j;
    public boolean k;

    /* loaded from: classes3.dex */
    public interface QuickDragListener {
        void a(int i);

        boolean b(int i, int i2);

        void c(int i, int i2);
    }

    public QuickDragHelper(QuickSubView quickSubView, QuickDragListener quickDragListener) {
        if (quickSubView != null) {
            this.g = quickSubView;
        } else {
            this.e = true;
            this.f = MainApp.E1;
        }
        this.d = quickDragListener;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void a(RecyclerView.ViewHolder viewHolder) {
        View view;
        int c2;
        if (this.e && this.j == -1 && (view = this.h) != null && viewHolder != null && view.equals(viewHolder.f1589a) && this.i != (c2 = viewHolder.c())) {
            this.j = c2;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        QuickAdapter.QuickHolder quickHolder;
        View view;
        o();
        this.i = -1;
        this.j = -1;
        this.k = false;
        super.b(recyclerView, viewHolder);
        if ((viewHolder instanceof QuickAdapter.QuickHolder) && (view = (quickHolder = (QuickAdapter.QuickHolder) viewHolder).f1589a) != null) {
            view.setBackgroundResource(quickHolder.C);
        }
        QuickSubView quickSubView = this.g;
        if (quickSubView != null) {
            quickSubView.N = false;
            quickSubView.e();
            quickSubView.invalidate();
        }
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
    public final boolean h() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean i() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void k(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        Object tag;
        View view;
        if (this.k) {
            return;
        }
        if (!z) {
            super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
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
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = recyclerView.getChildAt(i4);
                    if (childAt != null && !childAt.equals(view2)) {
                        int left2 = childAt.getLeft();
                        int top2 = childAt.getTop();
                        int i5 = left2 + width;
                        int i6 = top2 + height;
                        if (left > left2 && left < i5 && top > top2 && top < i6 && (tag = childAt.getTag()) != null && (tag instanceof QuickAdapter.QuickHolder) && ((QuickAdapter.QuickHolder) tag).v == 0) {
                            view = childAt;
                            break;
                        }
                    }
                }
            }
            view = null;
            if (view == null) {
                o();
                this.j = -1;
            } else {
                View view3 = this.h;
                if (view3 == null || !view.equals(view3)) {
                    o();
                    this.j = -1;
                    this.h = view;
                    view.setScaleX(1.2f);
                    this.h.setScaleY(1.2f);
                }
            }
        }
        super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void l(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        if (this.d != null) {
            int c2 = viewHolder2.c();
            if (this.d.b(viewHolder.c(), c2)) {
                o();
                this.i = c2;
                this.j = -1;
                this.k = false;
                QuickSubView quickSubView = this.g;
                if (quickSubView != null) {
                    quickSubView.setDragPos(c2);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void m(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        View view;
        if (i == 1) {
            this.k = false;
        } else if (i == 2) {
            this.k = false;
            if (viewHolder != null) {
                this.i = viewHolder.c();
                if ((viewHolder instanceof QuickAdapter.QuickHolder) && (view = ((QuickAdapter.QuickHolder) viewHolder).f1589a) != null) {
                    view.setBackground(null);
                }
                QuickSubView quickSubView = this.g;
                if (quickSubView != null) {
                    View view2 = viewHolder.f1589a;
                    int i3 = this.i;
                    if (view2 != null) {
                        quickSubView.e();
                        quickSubView.J = view2;
                        quickSubView.K = i3;
                        quickSubView.I = true;
                        MainUtil.l7(view2);
                    }
                }
            }
        } else if (i == 0) {
            if (this.h != null) {
                o();
                int i4 = this.i;
                if (i4 != -1 && (i2 = this.j) != -1 && i4 != i2) {
                    this.k = true;
                    QuickDragListener quickDragListener = this.d;
                    if (quickDragListener != null) {
                        quickDragListener.c(i4, i2);
                    }
                }
            }
            this.i = -1;
            this.j = -1;
        }
        QuickDragListener quickDragListener2 = this.d;
        if (quickDragListener2 != null) {
            quickDragListener2.a(i);
        }
    }

    public final void o() {
        View view = this.h;
        if (view == null) {
            return;
        }
        view.setScaleX(1.0f);
        this.h.setScaleY(1.0f);
        this.h = null;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void n() {
    }
}
