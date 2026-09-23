package com.google.android.material.divider;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {
    public static boolean i(RecyclerView recyclerView, View view) {
        int i;
        boolean z;
        RecyclerView.ViewHolder M = RecyclerView.M(view);
        if (M != null) {
            i = M.b();
        } else {
            i = -1;
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && i == adapter.d() - 1) {
            z = true;
        } else {
            z = false;
        }
        if (i == -1 || z) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void f(Rect rect, View view, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
        if (i(recyclerView, view)) {
            if (recyclerView.getLayoutDirection() == 1) {
                rect.left = 0;
            } else {
                rect.right = 0;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            canvas.clipRect(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getWidth() - recyclerView.getPaddingRight(), recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            recyclerView.getHeight();
        }
        boolean z = true;
        if (recyclerView.getLayoutDirection() != 1) {
            z = false;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (i(recyclerView, childAt)) {
                recyclerView.getLayoutManager().B(null, childAt);
                Math.round(childAt.getTranslationX());
                if (z) {
                    throw null;
                }
                throw null;
            }
        }
        canvas.restore();
    }
}
