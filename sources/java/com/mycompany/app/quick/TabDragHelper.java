package com.mycompany.app.quick;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.web.WebTabAdapter;
import com.mycompany.app.web.WebTabBarSubView;

/* loaded from: classes3.dex */
public class TabDragHelper extends ItemTouchHelper.Callback {
    public TabDragListener d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public boolean h;
    public final int i;
    public TabSubView j;
    public WebTabBarSubView k;
    public View l;
    public int m;
    public int n;
    public boolean o;
    public int p;
    public int q;

    /* loaded from: classes3.dex */
    public interface TabDragListener {
        void a(int i);

        boolean b(int i, int i2);

        void c(int i, int i2);

        void d(int i);

        void e(int i);
    }

    public TabDragHelper(TabSubView tabSubView, WebTabBarSubView webTabBarSubView, boolean z, TabDragListener tabDragListener) {
        boolean z2;
        this.e = z;
        if (tabSubView != null) {
            this.j = tabSubView;
        } else if (webTabBarSubView != null) {
            this.k = webTabBarSubView;
        } else {
            this.f = true;
            this.i = MainApp.E1;
        }
        if (PrefZone.D && PrefZone.C == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.g = z2;
        this.h = true;
        this.d = tabDragListener;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void a(RecyclerView.ViewHolder viewHolder) {
        View view;
        int c2;
        if (this.f && this.n == -1 && (view = this.l) != null && viewHolder != null && view.equals(viewHolder.f1589a) && this.m != (c2 = viewHolder.c())) {
            this.n = c2;
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        o();
        this.m = -1;
        this.n = -1;
        this.o = false;
        int i = this.p;
        if (i != -1) {
            this.q = i;
            this.p = -1;
        } else {
            this.q = -1;
        }
        super.b(recyclerView, viewHolder);
        viewHolder.f1589a.setAlpha(1.0f);
        TabSubView tabSubView = this.j;
        if (tabSubView != null) {
            tabSubView.d0 = false;
            tabSubView.k();
            tabSubView.invalidate();
        } else {
            WebTabBarSubView webTabBarSubView = this.k;
            if (webTabBarSubView != null) {
                webTabBarSubView.R = false;
                webTabBarSubView.f();
                webTabBarSubView.invalidate();
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int e() {
        return this.i;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int f() {
        int i = 1;
        if (this.e) {
            int i2 = 0;
            if (this.h) {
                if (this.f) {
                    if (PrefWeb.C != 38) {
                        i = 0;
                    }
                    if (PrefWeb.D == 38) {
                        i2 = i | 2;
                    } else {
                        i2 = i;
                    }
                } else {
                    i2 = 3;
                }
            }
            return ItemTouchHelper.Callback.j(15, i2);
        }
        if (!this.g) {
            i = 12;
        }
        return ItemTouchHelper.Callback.j(15, i);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean h() {
        if (!this.e) {
            if (PrefZone.E && this.h) {
                return true;
            }
            return false;
        }
        if (!this.f) {
            return this.h;
        }
        if (this.h) {
            if (PrefWeb.C == 38 || PrefWeb.D == 38) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean i() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void k(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        View view;
        Object tag;
        if (this.o) {
            return;
        }
        if (!z) {
            super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
        if (i == 1) {
            if (h()) {
                int c2 = viewHolder.c();
                View view2 = viewHolder.f1589a;
                this.p = c2;
                float abs = 1.0f - (Math.abs(f) / view2.getWidth());
                if (abs < 0.0f) {
                    abs = 0.0f;
                }
                view2.setAlpha(abs);
                TabDragListener tabDragListener = this.d;
                if (tabDragListener != null) {
                    tabDragListener.e(this.p);
                }
            }
        } else if (i == 2 && this.f) {
            View view3 = viewHolder.f1589a;
            int i2 = (int) f;
            int i3 = (int) f2;
            if (view3 != null) {
                int width = view3.getWidth();
                int height = view3.getHeight();
                int left = (width / 2) + view3.getLeft() + i2;
                int top = (height / 2) + view3.getTop() + i3;
                int childCount = recyclerView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = recyclerView.getChildAt(i4);
                    if (childAt != null && !childAt.equals(view3)) {
                        int left2 = childAt.getLeft();
                        int top2 = childAt.getTop();
                        int i5 = left2 + width;
                        int i6 = top2 + height;
                        if (left > left2 && left < i5 && top > top2 && top < i6 && (this.e || ((tag = childAt.getTag()) != null && (tag instanceof WebTabAdapter.WebTabHolder) && ((WebTabAdapter.WebTabHolder) tag).w == 0))) {
                            view = childAt;
                            break;
                        }
                    }
                }
            }
            view = null;
            if (view == null) {
                o();
                this.n = -1;
            } else {
                View view4 = this.l;
                if (view4 == null || !view.equals(view4)) {
                    o();
                    this.n = -1;
                    this.l = view;
                    view.setScaleX(1.1f);
                    this.l.setScaleY(1.1f);
                }
            }
            super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
        }
        super.k(canvas, recyclerView, viewHolder, f, f2, i, z);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void l(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        if (this.d != null) {
            int c2 = viewHolder2.c();
            if (this.d.b(viewHolder.c(), c2)) {
                o();
                this.m = c2;
                this.n = -1;
                this.o = false;
                TabSubView tabSubView = this.j;
                if (tabSubView != null) {
                    tabSubView.setDragPos(c2);
                    return;
                }
                WebTabBarSubView webTabBarSubView = this.k;
                if (webTabBarSubView != null) {
                    webTabBarSubView.setDragPos(c2);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void m(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        TabDragListener tabDragListener;
        if (i == 1) {
            this.p = -1;
            this.q = -1;
            this.o = false;
        } else if (i == 2) {
            this.p = -1;
            this.q = -1;
            this.o = false;
            if (viewHolder != null) {
                View view = viewHolder.f1589a;
                int c2 = viewHolder.c();
                this.m = c2;
                TabSubView tabSubView = this.j;
                if (tabSubView != null) {
                    if (view != null) {
                        tabSubView.k();
                        tabSubView.W = view;
                        tabSubView.a0 = c2;
                        tabSubView.V = true;
                        MainUtil.l7(view);
                    }
                } else {
                    WebTabBarSubView webTabBarSubView = this.k;
                    if (webTabBarSubView != null && view != null) {
                        webTabBarSubView.f();
                        webTabBarSubView.N = view;
                        webTabBarSubView.O = c2;
                        webTabBarSubView.M = true;
                        MainUtil.l7(view);
                    }
                }
            }
        } else if (i == 0) {
            if (this.l != null) {
                o();
                int i3 = this.m;
                if (i3 != -1 && (i2 = this.n) != -1 && i3 != i2) {
                    this.o = true;
                    TabDragListener tabDragListener2 = this.d;
                    if (tabDragListener2 != null) {
                        tabDragListener2.c(i3, i2);
                    }
                }
            }
            this.m = -1;
            this.n = -1;
        }
        if (!this.o && (tabDragListener = this.d) != null) {
            tabDragListener.a(i);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void n() {
        int i = this.p;
        if (i != -1) {
            this.q = i;
            this.p = -1;
        }
        int i2 = this.q;
        if (i2 != -1) {
            TabDragListener tabDragListener = this.d;
            if (tabDragListener != null) {
                tabDragListener.d(i2);
            }
            this.q = -1;
        }
    }

    public final void o() {
        View view = this.l;
        if (view == null) {
            return;
        }
        view.setScaleX(1.0f);
        this.l.setScaleY(1.0f);
        this.l = null;
    }

    public final void p() {
        this.d = null;
        this.j = null;
        this.k = null;
        this.l = null;
    }
}
