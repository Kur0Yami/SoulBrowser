package com.mycompany.app.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class MyManagerLinear extends LinearLayoutManager {
    public MyManagerLinear(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.j0(recycler, state);
        } catch (IndexOutOfBoundsException | Exception unused) {
        }
    }
}
