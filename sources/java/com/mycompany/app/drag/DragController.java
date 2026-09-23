package com.mycompany.app.drag;

import android.graphics.Point;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mycompany.app.fragment.FragmentDragView;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class DragController extends DragViewManager implements View.OnTouchListener, GestureDetector.OnGestureListener {
    public boolean h;
    public int i;
    public boolean j;
    public GestureDetector k;
    public int l;
    public int m;
    public int n;
    public int[] o;
    public int p;
    public int q;
    public boolean r;
    public int s;
    public boolean t;
    public FragmentDragView u;

    /* renamed from: com.mycompany.app.drag.DragController$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }
    }

    public final int d(MotionEvent motionEvent, int i) {
        View findViewById;
        int[] iArr = this.o;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        FragmentDragView fragmentDragView = this.u;
        int pointToPosition = fragmentDragView.pointToPosition(x, y);
        int headerViewsCount = fragmentDragView.getHeaderViewsCount();
        int footerViewsCount = fragmentDragView.getFooterViewsCount();
        int count = fragmentDragView.getCount();
        if (pointToPosition != -1 && pointToPosition >= headerViewsCount && pointToPosition < count - footerViewsCount) {
            View childAt = fragmentDragView.getChildAt(pointToPosition - fragmentDragView.getFirstVisiblePosition());
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            if (i == 0) {
                findViewById = childAt;
            } else {
                findViewById = childAt.findViewById(i);
            }
            if (findViewById != null) {
                findViewById.getLocationOnScreen(iArr);
                int i2 = iArr[0];
                if (rawX > i2 && rawY > iArr[1] && rawX < findViewById.getWidth() + i2) {
                    if (rawY < findViewById.getHeight() + iArr[1]) {
                        this.p = childAt.getLeft();
                        this.q = childAt.getTop();
                        return pointToPosition;
                    }
                }
            }
        }
        return -1;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        int i;
        int d = d(motionEvent, this.s);
        this.m = d;
        int i2 = -1;
        if (d != -1) {
            int x = ((int) motionEvent.getX()) - this.p;
            int y = ((int) motionEvent.getY()) - this.q;
            if (this.h && !this.j) {
                i = 12;
            } else {
                i = 0;
            }
            FragmentDragView fragmentDragView = this.u;
            this.r = fragmentDragView.s(d - fragmentDragView.getHeaderViewsCount(), i, x, y);
        }
        this.j = false;
        this.t = true;
        if (this.i == 1) {
            i2 = d(motionEvent, 0);
        }
        this.n = i2;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int i;
        int i2 = this.l;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int x2 = (int) motionEvent2.getX();
        int y2 = (int) motionEvent2.getY();
        if (this.t && !this.r && (((i = this.m) != -1 || this.n != -1) && i == -1 && this.n != -1)) {
            Math.abs(x2 - x);
            if (Math.abs(y2 - y) > i2) {
                this.t = false;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        FragmentDragView fragmentDragView = this.u;
        if (fragmentDragView.x && !fragmentDragView.l0) {
            this.k.onTouchEvent(motionEvent);
            int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
            if (action != 0) {
                if (action == 1 || action == 3) {
                    this.j = false;
                    this.r = false;
                    return false;
                }
            } else {
                motionEvent.getX();
                motionEvent.getY();
            }
        }
        return false;
    }

    @Override // com.mycompany.app.drag.DragViewManager, com.mycompany.app.drag.DragListView.FloatViewManager
    public final void a(Point point) {
    }
}
