package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class PagerSnapHelper extends SnapHelper {
    public OrientationHelper d;
    public OrientationHelper e;

    public static int h(View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.c(view) / 2) + orientationHelper.e(view)) - ((orientationHelper.l() / 2) + orientationHelper.k());
    }

    public static View i(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int x = layoutManager.x();
        View view = null;
        if (x == 0) {
            return null;
        }
        int l = (orientationHelper.l() / 2) + orientationHelper.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < x; i2++) {
            View w = layoutManager.w(i2);
            int abs = Math.abs(((orientationHelper.c(w) / 2) + orientationHelper.e(w)) - l);
            if (abs < i) {
                view = w;
                i = abs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int[] c(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (layoutManager.f()) {
            iArr[0] = h(view, j(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.g()) {
            iArr[1] = h(view, k(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final RecyclerView.SmoothScroller d(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.f1591a.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public final void e(View view, RecyclerView.SmoothScroller.Action action) {
                PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                int[] c2 = pagerSnapHelper.c(pagerSnapHelper.f1591a.getLayoutManager(), view);
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

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final float j(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final int k(int i) {
                return Math.min(100, super.k(i));
            }
        };
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View e(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.g()) {
            return i(layoutManager, k(layoutManager));
        }
        if (layoutManager.f()) {
            return i(layoutManager, j(layoutManager));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public final int f(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        OrientationHelper orientationHelper;
        boolean z;
        PointF a2;
        int H = layoutManager.H();
        if (H != 0) {
            View view = null;
            if (layoutManager.g()) {
                orientationHelper = k(layoutManager);
            } else if (layoutManager.f()) {
                orientationHelper = j(layoutManager);
            } else {
                orientationHelper = null;
            }
            if (orientationHelper != null) {
                int x = layoutManager.x();
                boolean z2 = false;
                int i3 = Integer.MAX_VALUE;
                int i4 = Integer.MIN_VALUE;
                View view2 = null;
                for (int i5 = 0; i5 < x; i5++) {
                    View w = layoutManager.w(i5);
                    if (w != null) {
                        int h = h(w, orientationHelper);
                        if (h <= 0 && h > i4) {
                            view2 = w;
                            i4 = h;
                        }
                        if (h >= 0 && h < i3) {
                            view = w;
                            i3 = h;
                        }
                    }
                }
                int i6 = 1;
                if (!layoutManager.f() ? i2 > 0 : i > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z && view != null) {
                    return RecyclerView.LayoutManager.N(view);
                }
                if (!z && view2 != null) {
                    return RecyclerView.LayoutManager.N(view2);
                }
                if (z) {
                    view = view2;
                }
                if (view != null) {
                    int N = RecyclerView.LayoutManager.N(view);
                    int H2 = layoutManager.H();
                    if ((layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) && (a2 = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).a(H2 - 1)) != null && (a2.x < 0.0f || a2.y < 0.0f)) {
                        z2 = true;
                    }
                    if (z2 == z) {
                        i6 = -1;
                    }
                    int i7 = N + i6;
                    if (i7 >= 0 && i7 < H) {
                        return i7;
                    }
                }
            }
        }
        return -1;
    }

    public final OrientationHelper j(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.e;
        if (orientationHelper == null || orientationHelper.f1551a != layoutManager) {
            this.e = new OrientationHelper(layoutManager);
        }
        return this.e;
    }

    public final OrientationHelper k(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.d;
        if (orientationHelper == null || orientationHelper.f1551a != layoutManager) {
            this.d = new OrientationHelper(layoutManager);
        }
        return this.d;
    }
}
