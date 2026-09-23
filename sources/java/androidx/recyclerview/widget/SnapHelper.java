package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class SnapHelper extends RecyclerView.OnFlingListener {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerView f1591a;
    public Scroller b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView.OnScrollListener f1592c = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper.1

        /* renamed from: a, reason: collision with root package name */
        public boolean f1593a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void a(int i) {
            if (i == 0 && this.f1593a) {
                this.f1593a = false;
                SnapHelper.this.g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f1593a = true;
        }
    };

    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    public final boolean a(int i, int i2) {
        RecyclerView.SmoothScroller d;
        int f;
        RecyclerView.LayoutManager layoutManager = this.f1591a.getLayoutManager();
        if (layoutManager != null && this.f1591a.getAdapter() != null) {
            int minFlingVelocity = this.f1591a.getMinFlingVelocity();
            if ((Math.abs(i2) <= minFlingVelocity && Math.abs(i) <= minFlingVelocity) || !(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (d = d(layoutManager)) == null || (f = f(layoutManager, i, i2)) == -1) {
                return false;
            }
            d.f1582a = f;
            layoutManager.I0(d);
            return true;
        }
        return false;
    }

    public final void b(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f1591a;
        if (recyclerView2 != recyclerView) {
            RecyclerView.OnScrollListener onScrollListener = this.f1592c;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.o0;
                if (arrayList != null) {
                    arrayList.remove(onScrollListener);
                }
                this.f1591a.setOnFlingListener(null);
            }
            this.f1591a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() == null) {
                    this.f1591a.j(onScrollListener);
                    this.f1591a.setOnFlingListener(this);
                    this.b = new Scroller(this.f1591a.getContext(), new DecelerateInterpolator());
                    g();
                    return;
                }
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
        }
    }

    public abstract int[] c(RecyclerView.LayoutManager layoutManager, View view);

    public RecyclerView.SmoothScroller d(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.f1591a.getContext()) { // from class: androidx.recyclerview.widget.SnapHelper.2
            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public final void e(View view, RecyclerView.SmoothScroller.Action action) {
                SnapHelper snapHelper = SnapHelper.this;
                RecyclerView recyclerView = snapHelper.f1591a;
                if (recyclerView != null) {
                    int[] c2 = snapHelper.c(recyclerView.getLayoutManager(), view);
                    int i = c2[0];
                    int i2 = c2[1];
                    int ceil = (int) Math.ceil(k(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
                    if (ceil > 0) {
                        action.f1584a = i;
                        action.b = i2;
                        action.f1585c = ceil;
                        action.e = this.j;
                        action.f = true;
                    }
                }
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final float j(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }
        };
    }

    public abstract View e(RecyclerView.LayoutManager layoutManager);

    public abstract int f(RecyclerView.LayoutManager layoutManager, int i, int i2);

    public final void g() {
        RecyclerView.LayoutManager layoutManager;
        View e;
        RecyclerView recyclerView = this.f1591a;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && (e = e(layoutManager)) != null) {
            int[] c2 = c(layoutManager, e);
            int i = c2[0];
            if (i == 0 && c2[1] == 0) {
                return;
            }
            this.f1591a.k0(i, c2[1], false);
        }
    }
}
