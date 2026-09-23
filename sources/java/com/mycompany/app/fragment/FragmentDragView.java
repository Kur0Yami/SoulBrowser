package com.mycompany.app.fragment;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.AbsListView;
import com.mycompany.app.drag.DragListView;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class FragmentDragView extends DragListView {
    public FragmentExpandView.FragmentScrollListener n0;
    public int o0;
    public int p0;
    public int q0;
    public int r0;
    public int s0;

    public static void u(FragmentDragView fragmentDragView, int i, int i2, int i3) {
        int i4 = i - fragmentDragView.p0;
        fragmentDragView.p0 = i;
        int i5 = fragmentDragView.o0;
        if (i5 != 0) {
            if (i4 > 0) {
                fragmentDragView.q0 = 1;
            } else if (i4 < 0) {
                fragmentDragView.q0 = 2;
            }
        }
        FragmentExpandView.FragmentScrollListener fragmentScrollListener = fragmentDragView.n0;
        if (fragmentScrollListener != null) {
            fragmentScrollListener.b(i5, i, i4, fragmentDragView.q0, i2, i3);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.widget.AbsListView, android.view.View
    public final int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override // android.widget.AbsListView, android.view.View
    public final int computeVerticalScrollRange() {
        return super.computeVerticalScrollRange();
    }

    @Override // com.mycompany.app.drag.DragListView, android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i = this.s0;
        if (i != 0) {
            canvas.drawColor(i);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.q0 = 0;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.drag.DragListView, android.widget.ListView, android.widget.AbsListView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        FragmentExpandView.FragmentScrollListener fragmentScrollListener = this.n0;
        if (fragmentScrollListener != null) {
            fragmentScrollListener.a(this.o0, false);
        }
    }

    public void setBackColor(int i) {
        if (this.s0 == i) {
            return;
        }
        this.s0 = i;
        invalidate();
    }

    public void setFragmentScrollListener(FragmentExpandView.FragmentScrollListener fragmentScrollListener) {
        this.n0 = fragmentScrollListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            v();
        } else {
            setOnScrollListener(null);
        }
        super.setVisibility(i);
    }

    public final void v() {
        this.o0 = 0;
        this.p0 = 0;
        this.q0 = 0;
        if (Build.VERSION.SDK_INT < 31) {
            setOverScrollMode(2);
        }
        this.r0 = MainApp.m1;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.fragment.FragmentDragView.2
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                FragmentDragView fragmentDragView = FragmentDragView.this;
                outline.setRoundRect(0, 0, fragmentDragView.getWidth(), fragmentDragView.getHeight(), fragmentDragView.r0);
            }
        });
        setClipToOutline(true);
        setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.mycompany.app.fragment.FragmentDragView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
                FragmentDragView fragmentDragView = FragmentDragView.this;
                FragmentDragView.u(fragmentDragView, fragmentDragView.computeVerticalScrollOffset(), i2, i3);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScrollStateChanged(AbsListView absListView, int i) {
                FragmentDragView fragmentDragView = FragmentDragView.this;
                if (i == 0) {
                    fragmentDragView.o0 = 0;
                } else if (i == 1) {
                    fragmentDragView.o0 = 1;
                } else if (i == 2) {
                    fragmentDragView.o0 = 2;
                } else {
                    return;
                }
                FragmentDragView.u(fragmentDragView, fragmentDragView.computeVerticalScrollOffset(), (fragmentDragView.getLastVisiblePosition() - fragmentDragView.getFirstVisiblePosition()) + 1, fragmentDragView.getCount());
            }
        });
    }
}
