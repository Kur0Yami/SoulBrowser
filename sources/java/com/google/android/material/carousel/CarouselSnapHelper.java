package com.google.android.material.carousel;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;

/* loaded from: classes3.dex */
public class CarouselSnapHelper extends SnapHelper {

    /* renamed from: com.google.android.material.carousel.CarouselSnapHelper$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends LinearSmoothScroller {
        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void e(View view, RecyclerView.SmoothScroller.Action action) {
            throw null;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float j(DisplayMetrics displayMetrics) {
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int[] c(RecyclerView.LayoutManager layoutManager, View view) {
        if (!(layoutManager instanceof CarouselLayoutManager)) {
            return new int[]{0, 0};
        }
        CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
        int V0 = carouselLayoutManager.V0(RecyclerView.LayoutManager.N(view));
        if (carouselLayoutManager.Z0()) {
            return new int[]{V0, 0};
        }
        if (layoutManager.g()) {
            return new int[]{0, V0};
        }
        return new int[]{0, 0};
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final RecyclerView.SmoothScroller d(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final View e(RecyclerView.LayoutManager layoutManager) {
        int x = layoutManager.x();
        View view = null;
        if (x != 0 && (layoutManager instanceof CarouselLayoutManager)) {
            CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < x; i2++) {
                View w = layoutManager.w(i2);
                int abs = Math.abs(carouselLayoutManager.V0(RecyclerView.LayoutManager.N(w)));
                if (abs < i) {
                    view = w;
                    i = abs;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int f(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        return -1;
    }
}
