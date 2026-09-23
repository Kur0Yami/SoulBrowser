package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {
    public boolean g;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i;
        int i2;
        if (itemHolderInfo != null && ((i = itemHolderInfo.f1565a) != (i2 = itemHolderInfo2.f1565a) || itemHolderInfo.b != itemHolderInfo2.b)) {
            return o(viewHolder, i, itemHolderInfo.b, i2, itemHolderInfo2.b);
        }
        m(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean b(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i;
        int i2;
        int i3 = itemHolderInfo.f1565a;
        int i4 = itemHolderInfo.b;
        if (viewHolder2.q()) {
            int i5 = itemHolderInfo.f1565a;
            i2 = itemHolderInfo.b;
            i = i5;
        } else {
            i = itemHolderInfo2.f1565a;
            i2 = itemHolderInfo2.b;
        }
        return n(viewHolder, viewHolder2, i3, i4, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean c(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i;
        int i2;
        int i3 = itemHolderInfo.f1565a;
        int i4 = itemHolderInfo.b;
        View view = viewHolder.f1589a;
        if (itemHolderInfo2 == null) {
            i = view.getLeft();
        } else {
            i = itemHolderInfo2.f1565a;
        }
        int i5 = i;
        if (itemHolderInfo2 == null) {
            i2 = view.getTop();
        } else {
            i2 = itemHolderInfo2.b;
        }
        int i6 = i2;
        if (!viewHolder.j() && (i3 != i5 || i4 != i6)) {
            view.layout(i5, i6, view.getWidth() + i5, view.getHeight() + i6);
            return o(viewHolder, i3, i4, i5, i6);
        }
        p(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i = itemHolderInfo.f1565a;
        int i2 = itemHolderInfo2.f1565a;
        if (i == i2 && itemHolderInfo.b == itemHolderInfo2.b) {
            h(viewHolder);
            return false;
        }
        return o(viewHolder, i, itemHolderInfo.b, i2, itemHolderInfo2.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean f(RecyclerView.ViewHolder viewHolder) {
        if (this.g && !viewHolder.h()) {
            return false;
        }
        return true;
    }

    public abstract void m(RecyclerView.ViewHolder viewHolder);

    public abstract boolean n(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4);

    public abstract boolean o(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4);

    public abstract void p(RecyclerView.ViewHolder viewHolder);
}
