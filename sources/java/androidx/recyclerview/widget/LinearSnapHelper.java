package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class LinearSnapHelper extends SnapHelper {
    public OrientationHelper d;
    public OrientationHelper e;

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
            OrientationHelper j = j(layoutManager);
            iArr[0] = ((j.c(view) / 2) + j.e(view)) - ((j.l() / 2) + j.k());
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.g()) {
            OrientationHelper k = k(layoutManager);
            iArr[1] = ((k.c(view) / 2) + k.e(view)) - ((k.l() / 2) + k.k());
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final View e(RecyclerView.LayoutManager layoutManager) {
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
        int H;
        View e;
        int N;
        int i3;
        PointF a2;
        int i4;
        int i5;
        if ((layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) && (H = layoutManager.H()) != 0 && (e = e(layoutManager)) != null && (N = RecyclerView.LayoutManager.N(e)) != -1 && (a2 = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).a(H - 1)) != null) {
            int i6 = 0;
            if (layoutManager.f()) {
                i4 = h(layoutManager, j(layoutManager), i, 0);
                if (a2.x < 0.0f) {
                    i4 = -i4;
                }
            } else {
                i4 = 0;
            }
            if (layoutManager.g()) {
                i5 = h(layoutManager, k(layoutManager), 0, i2);
                if (a2.y < 0.0f) {
                    i5 = -i5;
                }
            } else {
                i5 = 0;
            }
            if (layoutManager.g()) {
                i4 = i5;
            }
            if (i4 != 0) {
                int i7 = N + i4;
                if (i7 >= 0) {
                    i6 = i7;
                }
                if (i6 >= H) {
                    return i3;
                }
                return i6;
            }
        }
        return -1;
    }

    public final int h(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i, int i2) {
        int i3;
        this.b.fling(0, 0, i, i2, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE);
        int[] iArr = {this.b.getFinalX(), this.b.getFinalY()};
        int x = layoutManager.x();
        float f = 1.0f;
        if (x != 0) {
            View view = null;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            View view2 = null;
            for (int i6 = 0; i6 < x; i6++) {
                View w = layoutManager.w(i6);
                int N = RecyclerView.LayoutManager.N(w);
                if (N != -1) {
                    if (N < i5) {
                        view = w;
                        i5 = N;
                    }
                    if (N > i4) {
                        view2 = w;
                        i4 = N;
                    }
                }
            }
            if (view != null && view2 != null) {
                int max = Math.max(orientationHelper.b(view), orientationHelper.b(view2)) - Math.min(orientationHelper.e(view), orientationHelper.e(view2));
                if (max != 0) {
                    f = (max * 1.0f) / ((i4 - i5) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        if (Math.abs(iArr[0]) > Math.abs(iArr[1])) {
            i3 = iArr[0];
        } else {
            i3 = iArr[1];
        }
        return Math.round(i3 / f);
    }

    public final OrientationHelper j(RecyclerView.LayoutManager layoutManager) {
        if (this.e.f1551a != layoutManager) {
            this.e = new OrientationHelper(layoutManager);
        }
        return this.e;
    }

    public final OrientationHelper k(RecyclerView.LayoutManager layoutManager) {
        if (this.d.f1551a != layoutManager) {
            this.d = new OrientationHelper(layoutManager);
        }
        return this.d;
    }
}
