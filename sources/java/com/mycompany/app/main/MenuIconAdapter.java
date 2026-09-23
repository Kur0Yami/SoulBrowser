package com.mycompany.app.main;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyIconFrame;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyTextVertical;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MenuIconAdapter extends RecyclerView.Adapter<MenuHolder> {
    public View d;
    public final int e;
    public int f = 0;
    public boolean g;
    public final boolean h;
    public MenuListener i;
    public ArrayList j;
    public boolean k;
    public boolean l;
    public int m;
    public int n;
    public MyIconView o;
    public int p;

    /* loaded from: classes3.dex */
    public static class MainMenuItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17033a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f17034c;
    }

    /* loaded from: classes3.dex */
    public static class MenuHolder extends RecyclerView.ViewHolder {
        public MyIconFrame u;
        public MyIconView v;
        public AppCompatTextView w;
        public MyIconFrame x;
        public MyTextVertical y;
    }

    /* loaded from: classes3.dex */
    public interface MenuListener {
        void a(MenuHolder menuHolder);

        void b(View view, int i, int i2);
    }

    public MenuIconAdapter(View view, int[] iArr, int i, boolean z, MenuListener menuListener) {
        this.d = view;
        this.e = i;
        this.h = z;
        this.i = menuListener;
        if (i == 3) {
            G(false, false);
        } else {
            H(iArr, false);
        }
    }

    public final boolean A(int i) {
        int size;
        ArrayList arrayList = this.j;
        if (arrayList != null && (size = arrayList.size()) >= 0) {
            for (int i2 = 0; i2 < size; i2++) {
                MainMenuItem mainMenuItem = (MainMenuItem) this.j.get(i2);
                if (mainMenuItem != null && mainMenuItem.f17033a == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean B(int i, int[] iArr) {
        int i2;
        if (iArr != null) {
            i2 = iArr.length;
        } else {
            i2 = 0;
        }
        int d = d();
        if (i2 == d) {
            if (d != 0) {
                if (i == 1) {
                    for (int i3 = 0; i3 < d; i3++) {
                        MainMenuItem mainMenuItem = (MainMenuItem) this.j.get(i3);
                        if (mainMenuItem == null || iArr[i3] == mainMenuItem.b) {
                        }
                    }
                } else if (i == 2) {
                    for (int i4 = 0; i4 < d; i4++) {
                        MainMenuItem mainMenuItem2 = (MainMenuItem) this.j.get(i4);
                        if (mainMenuItem2 == null || iArr[i4] == mainMenuItem2.f17034c) {
                        }
                    }
                } else {
                    for (int i5 = 0; i5 < d; i5++) {
                        MainMenuItem mainMenuItem3 = (MainMenuItem) this.j.get(i5);
                        if (mainMenuItem3 == null || iArr[i5] == mainMenuItem3.f17033a) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    public final int C(int i, int i2) {
        if (this.j == null) {
            this.j = new ArrayList();
        }
        int i3 = this.e;
        if (i3 != 0 && i3 != 1) {
            ?? obj = new Object();
            obj.f17033a = i2;
            obj.f17034c = 0;
            if (i2 == 1) {
                obj.b = 51;
            } else {
                obj.b = 0;
            }
            if (i >= 0 && i < this.j.size()) {
                this.j.add(i, obj);
            } else {
                this.j.add(obj);
                i = this.j.size() - 1;
            }
            w();
            g();
            return i;
        }
        ?? obj2 = new Object();
        obj2.f17033a = i2;
        this.j.add(obj2);
        int size = this.j.size() - 1;
        g();
        return size;
    }

    public final void D() {
        this.p = d();
        this.d = null;
        this.i = null;
        this.j = null;
        this.o = null;
    }

    public final void E(int i) {
        ArrayList arrayList = this.j;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            MainMenuItem mainMenuItem = (MainMenuItem) this.j.remove(i);
            w();
            if (mainMenuItem != null) {
                g();
            }
        }
    }

    public final void F(int i, int i2) {
        int size;
        MainMenuItem mainMenuItem;
        ArrayList arrayList = this.j;
        if (arrayList != null && i >= 0 && i2 >= 0 && i < (size = arrayList.size()) && i2 < size && (mainMenuItem = (MainMenuItem) this.j.remove(i)) != null) {
            this.j.add(i2, mainMenuItem);
            w();
            j(i, i2);
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    public final void G(boolean z, boolean z2) {
        int[] a2;
        int[] a22;
        int[] a23;
        this.j = new ArrayList();
        if (z) {
            a2 = MainUtil.a2("26,27,28,29,30,2");
            a22 = MainUtil.a2("3,3,44,45,70,65");
            a23 = MainUtil.a2("0,0,0,0,0,0");
        } else {
            a2 = MainUtil.a2(PrefMain.E);
            a22 = MainUtil.a2(PrefMain.F);
            a23 = MainUtil.a2(PrefMain.G);
        }
        if (a2 != null && a2.length != 0) {
            int length = a2.length;
            for (int i = 0; i < length; i++) {
                ?? obj = new Object();
                obj.f17033a = a2[i];
                obj.b = a22[i];
                obj.f17034c = a23[i];
                this.j.add(obj);
            }
        }
        w();
        if (z2) {
            g();
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    public final void H(int[] iArr, boolean z) {
        if (iArr != null && iArr.length != 0) {
            this.j = new ArrayList();
            for (int i : iArr) {
                ?? obj = new Object();
                obj.f17033a = i;
                this.j.add(obj);
            }
        } else {
            this.j = null;
        }
        w();
        if (z) {
            g();
        }
    }

    public final void I(boolean z) {
        int size;
        if (this.g != z) {
            this.g = z;
            ArrayList arrayList = this.j;
            if (arrayList != null && (size = arrayList.size()) >= 0) {
                boolean z2 = false;
                for (int i = 0; i < size; i++) {
                    MainMenuItem mainMenuItem = (MainMenuItem) this.j.get(i);
                    if (mainMenuItem != null && mainMenuItem.f17033a == 2) {
                        if (this.o != null) {
                            int s0 = MainUtil.s0(0, false);
                            if (!this.g && this.e == 2) {
                                z2 = true;
                            }
                            this.o.setImageResource(MainUtil.j2(s0, z2));
                            return;
                        }
                        h(i);
                        return;
                    }
                }
            }
        }
    }

    public final void J(int i, LinearLayoutManager linearLayoutManager) {
        View s;
        MenuHolder menuHolder;
        if (linearLayoutManager != null && i >= 0 && i < this.j.size() && (s = linearLayoutManager.s(i)) != null) {
            Object tag = s.getTag();
            if (tag != null && (tag instanceof MenuHolder)) {
                menuHolder = (MenuHolder) tag;
            } else {
                menuHolder = null;
            }
            if (menuHolder != null) {
                if (this.f == 0) {
                    MyIconFrame myIconFrame = menuHolder.u;
                    if (myIconFrame != null) {
                        myIconFrame.f();
                        return;
                    }
                    return;
                }
                MyIconFrame myIconFrame2 = menuHolder.x;
                if (myIconFrame2 != null) {
                    myIconFrame2.f();
                }
            }
        }
    }

    public final void K(int i, int i2, int i3) {
        ArrayList arrayList;
        MainMenuItem mainMenuItem;
        if (i3 == 0 && i2 == 0) {
            E(i);
            return;
        }
        if (i2 >= 0 && i2 < 74 && (arrayList = this.j) != null && i >= 0 && i < arrayList.size() && (mainMenuItem = (MainMenuItem) this.j.get(i)) != null) {
            if (i3 == 1) {
                if (mainMenuItem.b != i2) {
                    mainMenuItem.b = i2;
                } else {
                    return;
                }
            } else if (i3 == 2) {
                if (mainMenuItem.f17034c != i2) {
                    mainMenuItem.f17034c = i2;
                } else {
                    return;
                }
            } else if (mainMenuItem.f17033a != i2) {
                mainMenuItem.f17033a = i2;
            } else {
                return;
            }
            w();
            h(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.p;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.j;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        MainMenuItem x = x(i);
        if (x != null && x.f17033a == 1) {
            return 4;
        }
        return this.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        int k2;
        int l2;
        boolean z2;
        int l22;
        int l23;
        boolean z3;
        View view;
        int i2;
        ViewGroup.LayoutParams layoutParams;
        MenuHolder menuHolder = (MenuHolder) viewHolder;
        View view2 = menuHolder.f1589a;
        if (view2 != null) {
            this.o = null;
            MainMenuItem x = x(i);
            if (x != null) {
                int i3 = this.e;
                boolean z4 = true;
                if (i3 != 0 && (view = this.d) != null) {
                    if (x.f17033a == 1) {
                        i2 = 4;
                    } else {
                        i2 = i3;
                    }
                    int z5 = z(view.getWidth(), i2);
                    if (view2.getWidth() != z5 && (layoutParams = view2.getLayoutParams()) != null) {
                        layoutParams.width = z5;
                        view2.requestLayout();
                    }
                }
                int s0 = MainUtil.s0(0, false);
                boolean z6 = this.h;
                if (z6) {
                    view2.setTag(menuHolder);
                } else {
                    if (x.f17033a == 68) {
                        view2.setVisibility(4);
                        return;
                    }
                    view2.setVisibility(0);
                }
                menuHolder.u.setTag(menuHolder);
                MyIconFrame myIconFrame = menuHolder.u;
                if (x.f17033a != 1) {
                    z = true;
                } else {
                    z = false;
                }
                myIconFrame.e(z6, z);
                menuHolder.u.setBgPreColor(MainUtil.P1(s0, 0));
                menuHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MenuIconAdapter.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        MenuHolder menuHolder2;
                        int c2;
                        MenuIconAdapter menuIconAdapter;
                        MainMenuItem x2;
                        MenuListener menuListener;
                        Object tag = view3.getTag();
                        if (tag != null && (tag instanceof MenuHolder)) {
                            menuHolder2 = (MenuHolder) tag;
                        } else {
                            menuHolder2 = null;
                        }
                        if (menuHolder2 != null && menuHolder2.u != null && (x2 = (menuIconAdapter = MenuIconAdapter.this).x((c2 = menuHolder2.c()))) != null && (menuListener = menuIconAdapter.i) != null) {
                            int i4 = menuIconAdapter.f;
                            if (i4 == 1) {
                                menuListener.b(menuHolder2.u, c2, x2.b);
                                return;
                            }
                            if (i4 == 2) {
                                menuListener.b(menuHolder2.u, c2, x2.f17034c);
                                return;
                            }
                            if (menuIconAdapter.l && menuIconAdapter.h && x2.f17033a == 1) {
                                menuIconAdapter.l = false;
                                menuHolder2.v.x(false, true);
                            }
                            menuIconAdapter.i.b(menuHolder2.u, c2, x2.f17033a);
                        }
                    }
                });
                menuHolder.u.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.MenuIconAdapter.2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view3) {
                        MenuHolder menuHolder2;
                        MenuListener menuListener;
                        Object tag = view3.getTag();
                        if (tag != null && (tag instanceof MenuHolder)) {
                            menuHolder2 = (MenuHolder) tag;
                        } else {
                            menuHolder2 = null;
                        }
                        if (menuHolder2 != null && menuHolder2.u != null) {
                            int c2 = menuHolder2.c();
                            MenuIconAdapter menuIconAdapter = MenuIconAdapter.this;
                            if (menuIconAdapter.x(c2) != null && (menuListener = menuIconAdapter.i) != null) {
                                menuListener.a(menuHolder2);
                            }
                        }
                        return true;
                    }
                });
                int i4 = x.f17033a;
                if (i4 == 1) {
                    menuHolder.v.setSetting(true);
                    if (this.l && z6) {
                        menuHolder.v.x(true, false);
                    }
                    MyIconView myIconView = menuHolder.v;
                    if (i3 == 2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    myIconView.p(s0, 0, false, z3);
                    menuHolder.w.setText(R.string.address_bar);
                } else {
                    if (i4 == 2) {
                        if (!this.g && i3 == 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        k2 = MainUtil.j2(s0, z2);
                        this.o = menuHolder.v;
                    } else if (z6) {
                        k2 = MainUtil.m2(i4, s0);
                    } else {
                        k2 = MainUtil.k2(i4, s0);
                    }
                    if (i3 != 0 && i3 != 1) {
                        menuHolder.v.setImageResource(k2);
                    } else {
                        menuHolder.v.setBackgroundResource(k2);
                    }
                    AppCompatTextView appCompatTextView = menuHolder.w;
                    int i5 = x.f17033a;
                    if (z6) {
                        l2 = MainUtil.n2(i5);
                    } else {
                        l2 = MainUtil.l2(i5);
                    }
                    appCompatTextView.setText(l2);
                }
                if (z6) {
                    if (MainApp.K1) {
                        menuHolder.w.setTextColor(-328966);
                    } else {
                        menuHolder.w.setTextColor(-16777216);
                    }
                } else {
                    menuHolder.v.setAlpha(0.85f);
                    if (MainApp.K1) {
                        menuHolder.w.setTextColor(-5197648);
                    } else {
                        menuHolder.w.setTextColor(-16777216);
                    }
                }
                MyIconFrame myIconFrame2 = menuHolder.x;
                if (myIconFrame2 != null) {
                    int i6 = this.f;
                    if (i6 == 1) {
                        if (x.f17033a == 1) {
                            z4 = false;
                        }
                        myIconFrame2.e(z6, z4);
                        menuHolder.x.setVisibility(0);
                        MyTextVertical myTextVertical = menuHolder.y;
                        int i7 = x.b;
                        if (z6) {
                            l23 = MainUtil.n2(i7);
                        } else {
                            l23 = MainUtil.l2(i7);
                        }
                        myTextVertical.setText(l23);
                    } else if (i6 == 2) {
                        if (x.f17033a == 1) {
                            z4 = false;
                        }
                        myIconFrame2.e(z6, z4);
                        menuHolder.x.setVisibility(0);
                        MyTextVertical myTextVertical2 = menuHolder.y;
                        int i8 = x.f17034c;
                        if (z6) {
                            l22 = MainUtil.n2(i8);
                        } else {
                            l22 = MainUtil.l2(i8);
                        }
                        myTextVertical2.setText(l22);
                    } else {
                        myIconFrame2.setVisibility(8);
                        menuHolder.y.setText((CharSequence) null);
                    }
                    if (MainApp.K1) {
                        menuHolder.y.setTextColor(-328966);
                    } else {
                        menuHolder.y.setTextColor(-16777216);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MenuIconAdapter$MenuHolder] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MenuIconAdapter$MenuHolder] */
    /* JADX WARN: Type inference failed for: r9v7, types: [androidx.appcompat.widget.AppCompatTextView, com.mycompany.app.view.MyTextVertical, android.view.View] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int z;
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i != 0 && i != 1) {
            if (this.m == 0) {
                this.m = viewGroup.getMeasuredWidth();
            }
            int z2 = z(this.m, i);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(z2, -1));
            MyIconFrame myIconFrame = new MyIconFrame(context);
            int i3 = MainApp.F1;
            myIconFrame.setPadding(i3, i3, i3, i3);
            myIconFrame.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) MainUtil.G(context, 88.0f);
            frameLayout.addView(myIconFrame, layoutParams);
            ?? appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.l = 1234;
            appCompatTextView.setTextSize(1, 14.0f);
            myIconFrame.addView((View) appCompatTextView, -2, -2);
            MyIconFrame myIconFrame2 = new MyIconFrame(context);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 80.0f));
            layoutParams2.gravity = 8388691;
            frameLayout.addView(myIconFrame2, layoutParams2);
            MyIconView myIconView = new MyIconView(context);
            myIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.f1);
            layoutParams3.topMargin = MainApp.G1;
            myIconFrame2.addView(myIconView, layoutParams3);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            appCompatTextView2.setGravity(1);
            appCompatTextView2.setMaxLines(2);
            appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView2.setTextSize(1, 12.0f);
            int i4 = MainApp.G1;
            appCompatTextView2.setPadding(i4, 0, i4, 0);
            int i5 = MainApp.f1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, i5);
            layoutParams4.topMargin = i5;
            myIconFrame2.addView(appCompatTextView2, layoutParams4);
            ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
            viewHolder.x = myIconFrame;
            viewHolder.y = appCompatTextView;
            viewHolder.u = myIconFrame2;
            viewHolder.v = myIconView;
            viewHolder.w = appCompatTextView2;
            return viewHolder;
        }
        if (i == 0) {
            if (this.n == 0) {
                this.n = (int) MainUtil.G(context, 80.0f);
            }
            i2 = this.n;
            z = -1;
        } else {
            if (this.m == 0) {
                this.m = viewGroup.getMeasuredWidth();
            }
            z = z(this.m, i);
            i2 = -1;
        }
        MyIconFrame myIconFrame3 = new MyIconFrame(context);
        myIconFrame3.setLayoutParams(new ViewGroup.LayoutParams(z, i2));
        MyIconView myIconView2 = new MyIconView(context);
        myIconView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int G = (int) MainUtil.G(context, 20.0f);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(G, G);
        layoutParams5.gravity = 1;
        layoutParams5.topMargin = (int) MainUtil.G(context, 14.0f);
        myIconFrame3.addView(myIconView2, layoutParams5);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setGravity(1);
        appCompatTextView3.setMaxLines(2);
        appCompatTextView3.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView3.setTextSize(1, 12.0f);
        int i6 = MainApp.G1;
        appCompatTextView3.setPadding(i6, 0, i6, 0);
        int i7 = MainApp.f1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, i7);
        layoutParams6.topMargin = i7;
        myIconFrame3.addView(appCompatTextView3, layoutParams6);
        ?? viewHolder2 = new RecyclerView.ViewHolder(myIconFrame3);
        viewHolder2.u = myIconFrame3;
        viewHolder2.v = myIconView2;
        viewHolder2.w = appCompatTextView3;
        return viewHolder2;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    public final int v(int i, int i2) {
        if ((i2 != 0 || i != 0) && i >= 0 && i < 74) {
            if (this.j == null) {
                this.j = new ArrayList();
            }
            ?? obj = new Object();
            obj.f17033a = i;
            this.j.add(obj);
            w();
            g();
            return this.j.size() - 1;
        }
        return -1;
    }

    public final void w() {
        this.k = A(1);
    }

    public final MainMenuItem x(int i) {
        ArrayList arrayList = this.j;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (MainMenuItem) this.j.get(i);
        }
        return null;
    }

    public final int[] y(int i) {
        int i2;
        int i3;
        int i4;
        int d = d();
        if (d == 0) {
            return null;
        }
        int[] iArr = new int[d];
        int i5 = 0;
        if (i == 1) {
            while (i5 < d) {
                MainMenuItem mainMenuItem = (MainMenuItem) this.j.get(i5);
                if (mainMenuItem != null && (i4 = mainMenuItem.f17033a) >= 0 && i4 < 74) {
                    iArr[i5] = mainMenuItem.b;
                }
                i5++;
            }
        } else if (i == 2) {
            while (i5 < d) {
                MainMenuItem mainMenuItem2 = (MainMenuItem) this.j.get(i5);
                if (mainMenuItem2 != null && (i3 = mainMenuItem2.f17033a) >= 0 && i3 < 74) {
                    iArr[i5] = mainMenuItem2.f17034c;
                }
                i5++;
            }
        } else {
            while (i5 < d) {
                MainMenuItem mainMenuItem3 = (MainMenuItem) this.j.get(i5);
                if (mainMenuItem3 != null && (i2 = mainMenuItem3.f17033a) >= 0 && i2 < 74) {
                    iArr[i5] = i2;
                }
                i5++;
            }
        }
        return iArr;
    }

    public final int z(int i, int i2) {
        boolean z;
        char c2;
        int d = d();
        if (d == 0) {
            return -1;
        }
        if (i2 == 1) {
            return (int) (i / d);
        }
        if (!this.k) {
            return (int) (i / d);
        }
        int i3 = MyBarView.B;
        int i4 = d + 3;
        int i5 = MainApp.g1;
        if (i4 * i5 > i) {
            z = true;
        } else {
            z = false;
        }
        if (i2 == 4) {
            c2 = 1;
        } else {
            c2 = 1234;
        }
        if (z) {
            if (c2 == 1) {
                return (int) ((i / i4) * 4.0f);
            }
            if (c2 != 30) {
                return (int) (i / i4);
            }
        } else if (c2 == 1) {
            return i - ((d - 1) * i5);
        }
        return i5;
    }
}
