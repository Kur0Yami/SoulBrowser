package com.nostra13.universalimageloader.core.listener;

import android.widget.AbsListView;

/* loaded from: classes3.dex */
public class PauseOnScrollListener implements AbsListView.OnScrollListener {
    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (i != 0) {
        } else {
            throw null;
        }
    }
}
