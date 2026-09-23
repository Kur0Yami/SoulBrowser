package com.mycompany.app.fragment;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.AbsListView;
import com.mycompany.app.expand.ExpandListAdapter;
import com.mycompany.app.expand.ExpandListView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class FragmentExpandView extends ExpandListView {
    public boolean f;
    public FragmentScrollListener g;
    public int h;
    public int i;
    public int j;
    public int k;
    public Drawable l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;

    /* loaded from: classes3.dex */
    public interface FragmentScrollListener {
        void a(int i, boolean z);

        void b(int i, int i2, int i3, int i4, int i5, int i6);
    }

    public FragmentExpandView(Context context) {
        super(context);
        c();
    }

    public final void c() {
        this.f = true;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        if (Build.VERSION.SDK_INT < 31) {
            setOverScrollMode(2);
        }
        this.o = MainApp.m1;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.fragment.FragmentExpandView.2
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                FragmentExpandView fragmentExpandView = FragmentExpandView.this;
                outline.setRoundRect(0, 0, fragmentExpandView.getWidth(), fragmentExpandView.getHeight(), fragmentExpandView.o);
            }
        });
        setClipToOutline(true);
        setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.mycompany.app.fragment.FragmentExpandView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
                FragmentExpandView fragmentExpandView = FragmentExpandView.this;
                fragmentExpandView.d(fragmentExpandView.computeVerticalScrollOffset(), i2, i3);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScrollStateChanged(AbsListView absListView, int i) {
                FragmentExpandView fragmentExpandView = FragmentExpandView.this;
                if (i == 0) {
                    fragmentExpandView.h = 0;
                } else if (i == 1) {
                    fragmentExpandView.h = 1;
                } else if (i == 2) {
                    fragmentExpandView.h = 2;
                } else {
                    return;
                }
                fragmentExpandView.d(fragmentExpandView.computeVerticalScrollOffset(), (fragmentExpandView.getLastVisiblePosition() - fragmentExpandView.getFirstVisiblePosition()) + 1, fragmentExpandView.getCount());
            }
        });
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

    public final void d(int i, int i2, int i3) {
        int i4 = i - this.i;
        this.j = i4;
        this.i = i;
        int i5 = this.h;
        if (i5 != 0) {
            if (i4 > 0) {
                this.k = 1;
            } else if (i4 < 0) {
                this.k = 2;
            }
        }
        FragmentScrollListener fragmentScrollListener = this.g;
        if (fragmentScrollListener != null) {
            fragmentScrollListener.b(i5, i, i4, this.k, i2, i3);
        }
    }

    @Override // android.widget.ExpandableListView, android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable drawable;
        int i = this.p;
        if (i != 0) {
            canvas.drawColor(i);
        }
        super.dispatchDraw(canvas);
        if (!this.n || (drawable = this.l) == null) {
            return;
        }
        if (this.m) {
            this.m = false;
            drawable.setBounds(0, 0, getWidth(), MainApp.e1);
        }
        this.l.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.k = 0;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(boolean z) {
        if (this.n == z) {
            return;
        }
        this.n = z;
        if (z) {
            this.m = true;
            if (this.l == null) {
                this.l = MainUtil.S(getContext(), R.drawable.shadow_list_up);
            }
        }
        invalidate();
    }

    public final void f(boolean z) {
        if (z) {
            this.h = 1;
        } else {
            this.h = 0;
        }
        d(super.computeVerticalScrollOffset(), (getLastVisiblePosition() - getFirstVisiblePosition()) + 1, getCount());
    }

    public int getListScrolled() {
        return this.j;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        boolean z;
        super.onSizeChanged(i, i2, i3, i4);
        FragmentScrollListener fragmentScrollListener = this.g;
        if (fragmentScrollListener != null) {
            int i5 = this.h;
            ExpandListAdapter expandListAdapter = this.f15700c;
            if (expandListAdapter == null) {
                z = false;
            } else {
                z = expandListAdapter.f15691c;
            }
            fragmentScrollListener.a(i5, z);
        }
        this.m = true;
    }

    public void setBackColor(int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        invalidate();
    }

    public void setFragmentScrollListener(FragmentScrollListener fragmentScrollListener) {
        this.g = fragmentScrollListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            c();
        } else {
            setOnScrollListener(null);
        }
        super.setVisibility(i);
    }
}
