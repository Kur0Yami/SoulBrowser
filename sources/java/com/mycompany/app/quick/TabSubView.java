package com.mycompany.app.quick;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.DialogDeleteItem;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.quick.TabDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.web.TabListLongPressGate;
import com.mycompany.app.web.WebNestFrame;
import com.mycompany.app.web.WebTabAdapter;
import com.mycompany.app.web.WebViewActivity;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class TabSubView extends FrameLayout {
    public static final /* synthetic */ int w0 = 0;
    public MyRecyclerView A;
    public int B;
    public int C;
    public WebTabAdapter D;
    public MyManagerGrid E;
    public MyManagerLinear F;
    public TabDragHelper G;
    public ItemTouchHelper H;
    public boolean I;
    public DialogDeleteItem J;
    public boolean K;
    public int L;
    public float M;
    public float N;
    public GestureDetector O;
    public boolean P;
    public MySnackbar Q;
    public boolean R;
    public int S;
    public Pattern T;
    public boolean U;
    public boolean V;
    public View W;
    public int a0;
    public Rect b0;

    /* renamed from: c, reason: collision with root package name */
    public Activity f17522c;
    public BitmapDrawable c0;
    public boolean d0;
    public boolean e0;
    public Context f;
    public int f0;
    public TabSubListener g;
    public int g0;
    public WebNestFrame h;
    public int h0;
    public boolean i;
    public int i0;
    public int j;
    public int j0;
    public int k;
    public int k0;
    public int l;
    public int l0;
    public int m;
    public int m0;
    public List n;
    public int n0;
    public long o;
    public int o0;
    public int p;
    public int p0;
    public boolean q;
    public int q0;
    public RelativeLayout r;
    public List r0;
    public AppCompatTextView s;
    public long s0;
    public MyButtonCheck t;
    public int t0;
    public View u;
    public int u0;
    public View v;
    public int v0;
    public View w;
    public View x;
    public View y;
    public AppCompatTextView z;

    /* renamed from: com.mycompany.app.quick.TabSubView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.quick.TabSubView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.quick.TabSubView$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                int i = MainApp.F1;
                outline.setRoundRect(0, 0, width, height + i, i);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface TabSubListener {
        void a(long j);

        void b(int i, long j);

        void c(int i);

        void d(int i);

        void e(int i, int i2);

        void f(int i);

        void g();

        void h(int i, boolean z, boolean z2);

        void i();
    }

    public TabSubView(WebViewActivity webViewActivity) {
        super(webViewActivity);
        this.U = true;
        this.f = webViewActivity;
    }

    public static int a(TabSubView tabSubView, List list, long j) {
        if (j > 0 && list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) it.next();
                if (webTabItem != null) {
                    if (j == webTabItem.f19520c) {
                        return i;
                    }
                    i++;
                }
            }
            return -1;
        }
        return -1;
    }

    public static void d(TabSubView tabSubView, List list, long j, int i, int i2) {
        if (tabSubView.A == null) {
            return;
        }
        if (tabSubView.i) {
            tabSubView.F = new MyManagerLinear() { // from class: com.mycompany.app.quick.TabSubView.10
                @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void e0(RecyclerView recyclerView, int i3, int i4) {
                    TabSubView tabSubView2 = TabSubView.this;
                    if (tabSubView2.I) {
                        tabSubView2.I = false;
                        WebTabAdapter webTabAdapter = tabSubView2.D;
                        if (webTabAdapter != null) {
                            webTabAdapter.D(true);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void h0(RecyclerView recyclerView, int i3, int i4) {
                    TabSubView tabSubView2 = TabSubView.this;
                    if (tabSubView2.I) {
                        tabSubView2.I = false;
                        WebTabAdapter webTabAdapter = tabSubView2.D;
                        if (webTabAdapter != null) {
                            webTabAdapter.D(false);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void k0(RecyclerView.State state) {
                    super.k0(state);
                    TabSubView.this.I = false;
                }
            };
        } else {
            tabSubView.E = new MyManagerGrid(tabSubView.C) { // from class: com.mycompany.app.quick.TabSubView.11
                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void e0(RecyclerView recyclerView, int i3, int i4) {
                    super.e0(recyclerView, i3, i4);
                    TabSubView tabSubView2 = TabSubView.this;
                    if (tabSubView2.I) {
                        tabSubView2.I = false;
                        WebTabAdapter webTabAdapter = tabSubView2.D;
                        if (webTabAdapter != null) {
                            webTabAdapter.D(true);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void h0(RecyclerView recyclerView, int i3, int i4) {
                    super.h0(recyclerView, i3, i4);
                    TabSubView tabSubView2 = TabSubView.this;
                    if (tabSubView2.I) {
                        tabSubView2.I = false;
                        WebTabAdapter webTabAdapter = tabSubView2.D;
                        if (webTabAdapter != null) {
                            webTabAdapter.D(false);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public final void k0(RecyclerView.State state) {
                    super.k0(state);
                    TabSubView.this.I = false;
                }
            };
        }
        WebTabAdapter webTabAdapter = new WebTabAdapter(tabSubView.f, tabSubView.A, true, null, list, j, i, i2, tabSubView.C, tabSubView.l, tabSubView.q, tabSubView.getGridManager());
        tabSubView.D = webTabAdapter;
        if (PrefSync.k == tabSubView.q) {
            MyRecyclerView myRecyclerView = tabSubView.A;
            WebNestFrame webNestFrame = tabSubView.h;
            webTabAdapter.A = myRecyclerView;
            webTabAdapter.B = webNestFrame;
        }
        webTabAdapter.x = new WebTabAdapter.WebTabListener() { // from class: com.mycompany.app.quick.TabSubView.12
            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
            public final void a() {
            }

            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
            public final void b(View view, int i3) {
            }

            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
            public final void c(WebTabAdapter.WebTabHolder webTabHolder, int i3) {
                WebTabAdapter webTabAdapter2;
                TabSubView tabSubView2 = TabSubView.this;
                if (!tabSubView2.P && (webTabAdapter2 = tabSubView2.D) != null && tabSubView2.g != null) {
                    if (webTabAdapter2.u) {
                        webTabAdapter2.f0(i3);
                        tabSubView2.l();
                        AppCompatTextView appCompatTextView = tabSubView2.s;
                        if (appCompatTextView != null) {
                            appCompatTextView.setText(MainUtil.h3(tabSubView2.D.E(), tabSubView2.D.J()));
                            tabSubView2.t.q(tabSubView2.D.N(), true);
                            return;
                        }
                        return;
                    }
                    WebTabAdapter.WebTabItem H = webTabAdapter2.H(i3);
                    if (H != null) {
                        tabSubView2.g.d(H.h);
                    }
                }
            }

            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
            public final void d(int i3) {
                TabSubView.this.setItemRemoved(i3);
            }

            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
            public final void e(WebTabAdapter.WebTabHolder webTabHolder, int i3) {
                WebTabAdapter webTabAdapter2;
                TabSubView tabSubView2 = TabSubView.this;
                if (!tabSubView2.P && (webTabAdapter2 = tabSubView2.D) != null) {
                    if (webTabAdapter2.u) {
                        webTabAdapter2.selectRangeTo(i3);
                        tabSubView2.l();
                        AppCompatTextView appCompatTextView = tabSubView2.s;
                        if (appCompatTextView != null) {
                            appCompatTextView.setText(MainUtil.h3(tabSubView2.D.E(), tabSubView2.D.J()));
                            tabSubView2.t.q(tabSubView2.D.N(), true);
                        }
                        return;
                    }
                    View view = TabListLongPressGate.anchorFor(webTabHolder);
                    ItemTouchHelper itemTouchHelper = null;
                    WebTabAdapter.WebTabItem H = tabSubView2.D.H(i3);
                    if (H != null && H.f19519a == 0) {
                        itemTouchHelper = tabSubView2.H;
                    }
                    TabListLongPressGate.armSub(tabSubView2, view, webTabHolder, itemTouchHelper, i3);
                }
            }
        };
        webTabAdapter.y = new WebTabAdapter.WebTabSubListener() { // from class: com.mycompany.app.quick.TabSubView.13
            @Override // com.mycompany.app.web.WebTabAdapter.WebTabSubListener
            public final void a(long j2) {
                TabSubListener tabSubListener = TabSubView.this.g;
                if (tabSubListener != null) {
                    tabSubListener.a(j2);
                }
            }
        };
        TabDragHelper tabDragHelper = new TabDragHelper(tabSubView, null, false, new TabDragHelper.TabDragListener() { // from class: com.mycompany.app.quick.TabSubView.14
            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
            public final void a(int i3) {
                TabSubView tabSubView2 = TabSubView.this;
                if (i3 == 1) {
                    tabSubView2.K = PrefZone.E;
                    tabSubView2.P = false;
                } else if (i3 == 2) {
                    tabSubView2.K = false;
                    tabSubView2.P = true;
                } else if (i3 == 0 && tabSubView2.D != null && tabSubView2.g != null) {
                    tabSubView2.post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.14.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TabSubListener tabSubListener;
                            TabSubView tabSubView3 = TabSubView.this;
                            if (tabSubView3.D != null && (tabSubListener = tabSubView3.g) != null) {
                                if (tabSubView3.P) {
                                    tabSubListener.c(tabSubView3.m);
                                }
                                tabSubView3.P = false;
                            }
                        }
                    });
                }
            }

            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
            public final boolean b(int i3, int i4) {
                WebTabAdapter webTabAdapter2 = TabSubView.this.D;
                if (webTabAdapter2 == null) {
                    return false;
                }
                return webTabAdapter2.S(i3, i4);
            }

            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
            public final void c(int i3, int i4) {
            }

            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
            public final void d(int i3) {
                TabSubView tabSubView2 = TabSubView.this;
                if (tabSubView2.K) {
                    tabSubView2.K = false;
                    tabSubView2.setItemRemoved(i3);
                }
            }

            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
            public final void e(int i3) {
                TabSubView.this.L = i3;
            }
        });
        tabSubView.G = tabDragHelper;
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(tabDragHelper);
        tabSubView.H = itemTouchHelper;
        itemTouchHelper.i(tabSubView.A);
        tabSubView.A.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.quick.TabSubView.15
            @Override // com.mycompany.app.image.ImageSizeListener
            public final void a(View view, int i3, int i4) {
                TabSubView tabSubView2 = TabSubView.this;
                MySnackbar mySnackbar = tabSubView2.Q;
                if (mySnackbar != null) {
                    mySnackbar.p();
                    tabSubView2.Q = null;
                }
                tabSubView2.f();
                boolean z = tabSubView2.R;
                boolean z2 = MainApp.K1;
                if (z != z2) {
                    tabSubView2.R = z2;
                    RelativeLayout relativeLayout = tabSubView2.r;
                    if (relativeLayout != null) {
                        if (z2) {
                            relativeLayout.setBackgroundColor(-16777216);
                            tabSubView2.s.setTextColor(-328966);
                            tabSubView2.t.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            tabSubView2.t.setBgPreColor(-12632257);
                            tabSubView2.v.setBackgroundResource(R.drawable.round_top_left_b);
                            tabSubView2.w.setBackgroundResource(R.drawable.round_top_right_b);
                            tabSubView2.x.setBackgroundResource(R.drawable.round_bot_left_b);
                            tabSubView2.y.setBackgroundResource(R.drawable.round_bot_right_b);
                            tabSubView2.z.setBackgroundResource(R.drawable.selector_list_back_black);
                            tabSubView2.A.t0(-5197648);
                            tabSubView2.A.setBackgroundColor(-14606047);
                        } else {
                            relativeLayout.setBackgroundColor(-460552);
                            tabSubView2.s.setTextColor(-16777216);
                            tabSubView2.t.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            tabSubView2.t.setBgPreColor(553648128);
                            tabSubView2.v.setBackgroundResource(R.drawable.round_top_left_g);
                            tabSubView2.w.setBackgroundResource(R.drawable.round_top_right_g);
                            tabSubView2.x.setBackgroundResource(R.drawable.round_bot_left_g);
                            tabSubView2.y.setBackgroundResource(R.drawable.round_bot_right_g);
                            tabSubView2.z.setBackgroundResource(R.drawable.selector_list_back_gray);
                            tabSubView2.A.t0(-16777216);
                            tabSubView2.A.setBackgroundColor(-328966);
                        }
                        tabSubView2.l();
                        WebTabAdapter webTabAdapter2 = tabSubView2.D;
                        if (webTabAdapter2 != null) {
                            webTabAdapter2.g();
                        }
                    }
                }
            }
        });
        tabSubView.A.setLayoutManager(tabSubView.getGridManager());
        tabSubView.A.setAdapter(tabSubView.D);
        tabSubView.post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.16
            @Override // java.lang.Runnable
            public final void run() {
                LinearLayoutManager gridManager;
                WebTabAdapter webTabAdapter2;
                TabSubView tabSubView2 = TabSubView.this;
                if (tabSubView2.A != null && (gridManager = tabSubView2.getGridManager()) != null && (webTabAdapter2 = tabSubView2.D) != null) {
                    gridManager.x0(webTabAdapter2.n);
                    tabSubView2.l();
                    tabSubView2.A.x0(tabSubView2.j, tabSubView2.k, true, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayoutManager getGridManager() {
        if (this.i) {
            return this.F;
        }
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pattern getSpcPat() {
        if (this.T == null) {
            this.T = Pattern.compile("\\p{Punct}");
        }
        return this.T;
    }

    private void setEditView(boolean z) {
        int i;
        int i2;
        boolean z2;
        WebTabAdapter webTabAdapter = this.D;
        if (webTabAdapter == null) {
            return;
        }
        if (z) {
            int E = webTabAdapter.E();
            int J = this.D.J();
            if (this.s != null) {
                if (MainApp.K1) {
                    this.t.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                    this.t.setBgPreColor(-12632257);
                    i = -328966;
                    i2 = -8355712;
                } else {
                    this.t.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                    this.t.setBgPreColor(553648128);
                    i = -14784824;
                    i2 = -2434342;
                }
                this.s.setText(MainUtil.h3(E, J));
                MyButtonCheck myButtonCheck = this.t;
                if (E >= J) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                myButtonCheck.q(z2, false);
                if (E > 0) {
                    this.z.setEnabled(true);
                    this.z.setTextColor(i);
                } else {
                    this.z.setEnabled(false);
                    this.z.setTextColor(i2);
                }
            }
            this.r.setVisibility(0);
            this.z.setVisibility(0);
            this.u.setVisibility(0);
            this.v.setVisibility(0);
            this.w.setVisibility(0);
            this.x.setVisibility(0);
            this.y.setVisibility(0);
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.21
            @Override // java.lang.Runnable
            public final void run() {
                TabSubView tabSubView = TabSubView.this;
                RelativeLayout relativeLayout = tabSubView.r;
                if (relativeLayout == null) {
                    return;
                }
                relativeLayout.setVisibility(8);
                tabSubView.z.setVisibility(8);
                tabSubView.u.setVisibility(8);
                tabSubView.v.setVisibility(8);
                tabSubView.w.setVisibility(8);
                tabSubView.x.setVisibility(8);
                tabSubView.y.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemRemoved(int i) {
        boolean z;
        f();
        WebTabAdapter webTabAdapter = this.D;
        if (webTabAdapter != null) {
            boolean z2 = PrefZone.F;
            if (i == webTabAdapter.n) {
                z = true;
            } else {
                z = false;
            }
            this.I = z;
            if (!webTabAdapter.R(i, z2)) {
                return;
            }
            List list = this.D.k;
            if (list != null && list.size() >= 2) {
                this.g.h(this.m, z2, false);
            } else {
                this.g.h(this.m, false, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.U) {
            super.dispatchDraw(canvas);
            BitmapDrawable bitmapDrawable = this.c0;
            if (bitmapDrawable != null) {
                bitmapDrawable.draw(canvas);
            }
            int i = this.S;
            if (i != 0) {
                canvas.drawColor(i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
    
        if (r0 != 3) goto L63;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.TabSubView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void f() {
        TabSubListener tabSubListener = this.g;
        if (tabSubListener != null) {
            tabSubListener.g();
        }
    }

    public final void g() {
        if (this.A == null) {
            TabSubListener tabSubListener = this.g;
            if (tabSubListener != null) {
                tabSubListener.i();
                return;
            }
            return;
        }
        m(-1, false);
        this.A.x0(this.j, this.k, false, new MyFadeListener() { // from class: com.mycompany.app.quick.TabSubView.9
            @Override // com.mycompany.app.view.MyFadeListener
            public final void a(boolean z) {
                TabSubListener tabSubListener2;
                if (!z && (tabSubListener2 = TabSubView.this.g) != null) {
                    tabSubListener2.i();
                }
            }

            @Override // com.mycompany.app.view.MyFadeListener
            public final void b(boolean z, boolean z2) {
            }
        });
    }

    public final void h(WebViewActivity webViewActivity, WebNestFrame webNestFrame, int i, int i2, int i3, int i4, List list, long j, int i5, boolean z, TabSubListener tabSubListener) {
        this.i = PrefZone.D && PrefZone.C == 0;
        this.f17522c = webViewActivity;
        this.g = tabSubListener;
        this.h = webNestFrame;
        this.j = i;
        this.k = i2;
        this.m = i4;
        this.n = list;
        this.o = j;
        this.p = i5;
        this.q = z;
        this.R = MainApp.K1;
        if (list != null) {
            this.B = list.size();
        }
        int i6 = PrefZone.C;
        if (i6 == 1) {
            this.l = Math.round(MainUtil.G(this.f, 80.0f));
            this.C = 1;
            return;
        }
        if (i6 == 2) {
            this.l = Math.round(MainUtil.G(this.f, 56.0f));
            this.C = 1;
            return;
        }
        if (this.i) {
            this.l = Math.round(MainApp.i1 * 2 * 1.3f);
            this.C = this.B;
            return;
        }
        this.l = Math.round(MainApp.i1 * 2 * 1.3f);
        int i7 = this.B;
        if (i7 == 0) {
            this.C = 1;
        } else if (i7 < i3) {
            this.C = i7;
        } else {
            this.C = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14, types: [android.view.View$OnClickListener, java.lang.Object] */
    public final void i() {
        int i;
        Context context = this.f;
        if (context == null) {
            return;
        }
        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVisibility(4);
        addView(myRecyclerView, -2, -2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setVisibility(8);
        addView(relativeLayout, -1, MainApp.b1);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i2 = MainApp.F1;
        appCompatTextView.setPadding(i2, 0, i2, 0);
        appCompatTextView.setGravity(16);
        appCompatTextView.setTextDirection(3);
        appCompatTextView.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams.addRule(21);
        layoutParams.topMargin = MainApp.G1;
        layoutParams.setMarginEnd(MainApp.h1);
        relativeLayout.addView(appCompatTextView, layoutParams);
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        int i3 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i3);
        layoutParams2.addRule(21);
        layoutParams2.topMargin = MainApp.G1;
        relativeLayout.addView(myButtonCheck, layoutParams2);
        View view = new View(context);
        view.setBackgroundResource(R.drawable.shadow_list_up);
        view.setVisibility(8);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.e1);
        layoutParams3.topMargin = MainApp.b1;
        addView(view, layoutParams3);
        View view2 = new View(context);
        view2.setVisibility(8);
        int i4 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams4.topMargin = MainApp.b1;
        addView(view2, layoutParams4);
        View view3 = new View(context);
        view3.setVisibility(8);
        int i5 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams5.topMargin = MainApp.b1;
        addView(view3, layoutParams5);
        View view4 = new View(context);
        view4.setVisibility(8);
        int i6 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams6.bottomMargin = MainApp.g1;
        layoutParams6.gravity = 8388691;
        addView(view4, layoutParams6);
        View view5 = new View(context);
        view5.setVisibility(8);
        int i7 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams7.bottomMargin = MainApp.g1;
        layoutParams7.gravity = 8388693;
        addView(view5, layoutParams7);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setText(R.string.delete_all);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams8.gravity = 8388691;
        addView(appCompatTextView2, layoutParams8);
        this.r = relativeLayout;
        this.s = appCompatTextView;
        this.t = myButtonCheck;
        this.u = view;
        this.v = view2;
        this.w = view3;
        this.x = view4;
        this.y = view5;
        this.z = appCompatTextView2;
        this.A = myRecyclerView;
        if (MainApp.K1) {
            relativeLayout.setBackgroundColor(-16777216);
            this.s.setTextColor(-328966);
            this.v.setBackgroundResource(R.drawable.round_top_left_b);
            this.w.setBackgroundResource(R.drawable.round_top_right_b);
            this.x.setBackgroundResource(R.drawable.round_bot_left_b);
            this.y.setBackgroundResource(R.drawable.round_bot_right_b);
            this.z.setBackgroundResource(R.drawable.selector_list_back_black);
            this.A.t0(-5197648);
            this.A.setBackgroundColor(-14606047);
        } else {
            relativeLayout.setBackgroundColor(-460552);
            this.s.setTextColor(-16777216);
            this.v.setBackgroundResource(R.drawable.round_top_left_g);
            this.w.setBackgroundResource(R.drawable.round_top_right_g);
            this.x.setBackgroundResource(R.drawable.round_bot_left_g);
            this.y.setBackgroundResource(R.drawable.round_bot_right_g);
            this.z.setBackgroundResource(R.drawable.selector_list_back_gray);
            this.A.t0(-16777216);
            this.A.setBackgroundColor(-328966);
        }
        RelativeLayout relativeLayout2 = this.r;
        if (relativeLayout2 != null) {
            relativeLayout2.setOutlineProvider(new ViewOutlineProvider());
            this.r.setClipToOutline(true);
        }
        this.r.setElevation(MainApp.H1);
        this.u.setElevation(MainApp.H1);
        this.v.setElevation(MainApp.H1);
        this.w.setElevation(MainApp.H1);
        this.A.setRoundSize(MainApp.F1);
        this.A.setElevation(MainApp.H1);
        setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.TabSubView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                TabSubView.this.g();
            }
        });
        this.r.setOnClickListener(new Object());
        this.A.setOnClickListener(new Object());
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.TabSubView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                TabSubView tabSubView = TabSubView.this;
                WebTabAdapter webTabAdapter = tabSubView.D;
                if (webTabAdapter == null || !webTabAdapter.u) {
                    return;
                }
                boolean z = !webTabAdapter.N();
                tabSubView.t.q(z, true);
                tabSubView.D.X(z, true);
                tabSubView.s.setText(MainUtil.h3(tabSubView.D.E(), tabSubView.D.J()));
                tabSubView.l();
            }
        });
        this.z.setEnabled(false);
        AppCompatTextView appCompatTextView3 = this.z;
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        appCompatTextView3.setTextColor(i);
        this.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.TabSubView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                DialogDeleteItem dialogDeleteItem;
                int J;
                final TabSubView tabSubView = TabSubView.this;
                if (tabSubView.f17522c != null && (dialogDeleteItem = tabSubView.J) == null) {
                    if (dialogDeleteItem != null) {
                        dialogDeleteItem.dismiss();
                        tabSubView.J = null;
                    }
                    WebTabAdapter webTabAdapter = tabSubView.D;
                    if (webTabAdapter != null) {
                        if (webTabAdapter.u) {
                            J = webTabAdapter.E();
                        } else {
                            J = webTabAdapter.J();
                        }
                        if (J == 0) {
                            return;
                        }
                        MySnackbar mySnackbar = tabSubView.Q;
                        if (mySnackbar != null) {
                            mySnackbar.p();
                            tabSubView.Q = null;
                        }
                        tabSubView.f();
                        tabSubView.v0 = J;
                        DialogDeleteItem dialogDeleteItem2 = new DialogDeleteItem(tabSubView.f17522c, new DialogDeleteItem.DelItemListener() { // from class: com.mycompany.app.quick.TabSubView.22
                            @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
                            public final void a() {
                                TabSubListener tabSubListener;
                                TabSubView tabSubView2 = TabSubView.this;
                                if (tabSubView2.J != null && (tabSubListener = tabSubView2.g) != null) {
                                    tabSubListener.f(tabSubView2.m);
                                }
                            }

                            @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
                            public final void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView4) {
                                WebTabAdapter.WebTabItem webTabItem;
                                int i8;
                                WebTabAdapter webTabAdapter2;
                                TabSubView tabSubView2 = TabSubView.this;
                                int i9 = tabSubView2.v0;
                                if (tabSubView2.J == null || tabSubView2.f == null) {
                                    return;
                                }
                                if (i9 == 1 && (webTabAdapter2 = tabSubView2.D) != null) {
                                    webTabItem = webTabAdapter2.F();
                                } else {
                                    webTabItem = null;
                                }
                                if (webTabItem == null) {
                                    myRoundImage.o(-460552, R.drawable.outline_public_black_24);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(i9);
                                    Context context2 = tabSubView2.f;
                                    if (i9 == 1) {
                                        i8 = R.string.item;
                                    } else {
                                        i8 = R.string.items;
                                    }
                                    sb.append(context2.getString(i8));
                                    appCompatTextView4.setText(sb.toString());
                                    return;
                                }
                                Bitmap n4 = MainUtil.n4(MainUtil.O1(webTabItem.j));
                                String K1 = MainUtil.K1(webTabItem.k, true);
                                if (TextUtils.isEmpty(K1)) {
                                    K1 = MainUtil.r1(MainUtil.H1(webTabItem.j, true));
                                }
                                if (MainUtil.f6(n4)) {
                                    myRoundImage.setImageBitmap(n4);
                                } else {
                                    myRoundImage.p(-460552, R.drawable.outline_public_black_24, K1, tabSubView2.getSpcPat());
                                }
                                if (TextUtils.isEmpty(K1)) {
                                    appCompatTextView4.setText("1" + tabSubView2.f.getString(R.string.item));
                                    return;
                                }
                                appCompatTextView4.setText(K1);
                            }
                        });
                        tabSubView.J = dialogDeleteItem2;
                        dialogDeleteItem2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.quick.TabSubView.23
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i8 = TabSubView.w0;
                                TabSubView tabSubView2 = TabSubView.this;
                                DialogDeleteItem dialogDeleteItem3 = tabSubView2.J;
                                if (dialogDeleteItem3 != null) {
                                    dialogDeleteItem3.dismiss();
                                    tabSubView2.J = null;
                                }
                            }
                        });
                    }
                }
            }
        });
        this.O = new GestureDetector(this.f, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.quick.TabSubView.6
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (Math.abs(f) > Math.abs(f2)) {
                    TabSubView tabSubView = TabSubView.this;
                    if (f > 100.0f) {
                        if (tabSubView.K && tabSubView.L != -1 && tabSubView.N > MainApp.f1) {
                            tabSubView.K = false;
                            tabSubView.setItemRemoved(tabSubView.L);
                        }
                    } else if (f < -100.0f && tabSubView.K && tabSubView.L != -1 && tabSubView.N < (-MainApp.f1)) {
                        tabSubView.K = false;
                        tabSubView.setItemRemoved(tabSubView.L);
                    }
                }
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        });
    }

    public final void j() {
        this.U = false;
        k();
        MySnackbar mySnackbar = this.Q;
        if (mySnackbar != null) {
            mySnackbar.p();
            this.Q = null;
        }
        f();
        DialogDeleteItem dialogDeleteItem = this.J;
        if (dialogDeleteItem != null) {
            dialogDeleteItem.dismiss();
            this.J = null;
        }
        MyButtonCheck myButtonCheck = this.t;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.t = null;
        }
        MyRecyclerView myRecyclerView = this.A;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.A = null;
        }
        WebTabAdapter webTabAdapter = this.D;
        if (webTabAdapter != null) {
            webTabAdapter.P();
            this.D = null;
        }
        TabDragHelper tabDragHelper = this.G;
        if (tabDragHelper != null) {
            tabDragHelper.p();
            this.G = null;
        }
        this.f17522c = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.n = null;
        this.r = null;
        this.s = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.E = null;
        this.F = null;
        this.H = null;
        this.O = null;
        this.T = null;
    }

    public final void k() {
        View view = this.W;
        if (view != null) {
            view.setVisibility(0);
            this.W = null;
        }
        this.V = false;
        this.b0 = null;
        this.c0 = null;
    }

    public final void l() {
        WebTabAdapter webTabAdapter;
        if (this.z == null || (webTabAdapter = this.D) == null) {
            return;
        }
        int i = -2434342;
        int i2 = -14784824;
        if (webTabAdapter.u) {
            if (webTabAdapter.E() > 0) {
                this.z.setEnabled(true);
                AppCompatTextView appCompatTextView = this.z;
                if (MainApp.K1) {
                    i2 = -328966;
                }
                appCompatTextView.setTextColor(i2);
                return;
            }
            this.z.setEnabled(false);
            AppCompatTextView appCompatTextView2 = this.z;
            if (MainApp.K1) {
                i = -8355712;
            }
            appCompatTextView2.setTextColor(i);
            return;
        }
        if (webTabAdapter.J() > 0) {
            this.z.setEnabled(true);
            AppCompatTextView appCompatTextView3 = this.z;
            if (MainApp.K1) {
                i2 = -328966;
            }
            appCompatTextView3.setTextColor(i2);
            return;
        }
        this.z.setEnabled(false);
        AppCompatTextView appCompatTextView4 = this.z;
        if (MainApp.K1) {
            i = -8355712;
        }
        appCompatTextView4.setTextColor(i);
    }

    public final void m(int i, boolean z) {
        WebTabAdapter webTabAdapter = this.D;
        if (webTabAdapter != null && z != webTabAdapter.u) {
            TabDragHelper tabDragHelper = this.G;
            if (tabDragHelper != null) {
                tabDragHelper.h = !z;
            }
            webTabAdapter.Y(i, z);
            setEditView(z);
            l();
            AppCompatTextView appCompatTextView = this.z;
            if (appCompatTextView == null) {
                return;
            }
            if (z) {
                appCompatTextView.setText(R.string.delete);
            } else {
                appCompatTextView.setText(R.string.delete_all);
            }
        }
    }

    public final void n() {
        l();
        if (!PrefZone.F) {
            return;
        }
        MySnackbar mySnackbar = this.Q;
        if (mySnackbar != null) {
            mySnackbar.p();
            this.Q = null;
        }
        MySnackbar mySnackbar2 = new MySnackbar(this.f17522c);
        this.Q = mySnackbar2;
        mySnackbar2.setElevation(MainApp.H1);
        MySnackbar mySnackbar3 = this.Q;
        int i = R.string.undelete;
        MySnackbar.SnackbarListener snackbarListener = new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.quick.TabSubView.18
            @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
            public final void a() {
            }

            @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
            public final void b() {
                int i2 = TabSubView.w0;
                TabSubView.this.f();
            }

            @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
            public final void c() {
                int U;
                final TabSubView tabSubView = TabSubView.this;
                WebTabAdapter webTabAdapter = tabSubView.D;
                if (webTabAdapter == null || (U = webTabAdapter.U()) == -1) {
                    return;
                }
                tabSubView.u0 = U;
                tabSubView.post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        final TabSubView tabSubView2 = TabSubView.this;
                        int i2 = tabSubView2.u0;
                        WebTabAdapter webTabAdapter2 = tabSubView2.D;
                        if (webTabAdapter2 == null) {
                            return;
                        }
                        webTabAdapter2.c0(i2);
                        tabSubView2.post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.20
                            @Override // java.lang.Runnable
                            public final void run() {
                                TabSubView tabSubView3 = TabSubView.this;
                                WebTabAdapter webTabAdapter3 = tabSubView3.D;
                                if (webTabAdapter3 == null) {
                                    return;
                                }
                                TabSubListener tabSubListener = tabSubView3.g;
                                if (tabSubListener != null) {
                                    tabSubListener.b(tabSubView3.m, webTabAdapter3.l);
                                }
                                tabSubView3.l();
                            }
                        });
                    }
                });
            }

            @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
            public final void onDismiss() {
                int i2 = TabSubView.w0;
                TabSubView tabSubView = TabSubView.this;
                tabSubView.f();
                tabSubView.Q = null;
            }
        };
        mySnackbar3.i = 2;
        mySnackbar3.x(this, 0, i, 0, snackbarListener);
    }

    public final void o(List list, long j, int i) {
        if (this.D != null && this.A != null) {
            this.r0 = list;
            this.s0 = j;
            this.t0 = i;
            post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.17
                @Override // java.lang.Runnable
                public final void run() {
                    TabSubView tabSubView = TabSubView.this;
                    List list2 = tabSubView.r0;
                    long j2 = tabSubView.s0;
                    int i2 = tabSubView.t0;
                    tabSubView.r0 = null;
                    WebTabAdapter webTabAdapter = tabSubView.D;
                    if (webTabAdapter == null) {
                        return;
                    }
                    webTabAdapter.b0(null, list2, j2, i2, TabSubView.a(tabSubView, list2, j2));
                }
            });
        }
    }

    public final void p() {
        if (this.A == null) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.7
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                int round;
                int i2;
                int i3;
                TabSubView tabSubView = TabSubView.this;
                if (tabSubView.A == null) {
                    return;
                }
                if (tabSubView.i) {
                    i = 1;
                } else {
                    int i4 = tabSubView.B;
                    int i5 = tabSubView.C;
                    i = i4 / i5;
                    if (i4 % i5 != 0) {
                        i++;
                    }
                }
                boolean O5 = MainUtil.O5(tabSubView.f);
                int width = tabSubView.getWidth();
                int height = tabSubView.getHeight();
                int i6 = MainApp.Y0;
                int i7 = (height - i6) - i6;
                if (PrefZone.C == 0) {
                    round = (MainApp.q1 * 2) + (MainApp.i1 * 2 * tabSubView.C);
                } else {
                    round = Math.round(width * 0.9f);
                }
                if (round > width) {
                    round = width;
                }
                if (PrefZone.C == 0) {
                    i2 = tabSubView.l * i;
                    i3 = MainApp.E1;
                } else {
                    i2 = tabSubView.l * i;
                    i3 = MainApp.F1;
                }
                int i8 = i2 + i3;
                if (i8 <= i7) {
                    i7 = i8;
                }
                int i9 = tabSubView.j;
                if (i9 < 0) {
                    tabSubView.j = 0;
                    i9 = 0;
                } else {
                    int i10 = width - round;
                    if (i9 > i10) {
                        tabSubView.j = i9 - i10;
                        i9 = i10;
                    } else {
                        tabSubView.j = 0;
                    }
                }
                if (O5) {
                    tabSubView.j = round - tabSubView.j;
                }
                int i11 = tabSubView.j;
                if (i11 < 0) {
                    tabSubView.j = 0;
                } else if (i11 > round) {
                    tabSubView.j = round;
                }
                if (MainConst.e) {
                    int[] iArr = new int[2];
                    tabSubView.getLocationOnScreen(iArr);
                    tabSubView.k -= iArr[1];
                }
                int i12 = tabSubView.k;
                int i13 = i12 - i7;
                int i14 = MainApp.Y0;
                if (i13 < i14) {
                    i13 = i14;
                } else {
                    int i15 = (height - i14) - i7;
                    if (i13 > i15) {
                        i13 = i15;
                    }
                }
                int i16 = i12 - i13;
                tabSubView.k = i16;
                if (i16 < 0) {
                    tabSubView.k = 0;
                } else if (i16 > i7) {
                    tabSubView.k = i7;
                }
                if (O5) {
                    int i17 = (width - i9) - round;
                    tabSubView.g0 = i17;
                    tabSubView.h0 = i13;
                    tabSubView.i0 = i17 + round;
                    tabSubView.j0 = i13 + i7;
                } else {
                    tabSubView.g0 = i9;
                    tabSubView.h0 = i13;
                    tabSubView.i0 = i9 + round;
                    tabSubView.j0 = i13 + i7;
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) tabSubView.A.getLayoutParams();
                if (layoutParams != null) {
                    if (O5) {
                        layoutParams.rightMargin = i9;
                    } else {
                        layoutParams.leftMargin = i9;
                    }
                    layoutParams.topMargin = i13;
                    layoutParams.width = round;
                    layoutParams.height = i7;
                }
                if (PrefZone.C == 0) {
                    tabSubView.A.setPadding(MainApp.q1, MainApp.F1, MainApp.q1, MainApp.F1);
                } else {
                    MyRecyclerView myRecyclerView = tabSubView.A;
                    int i18 = MainApp.G1;
                    myRecyclerView.setPadding(i18, i18, i18, i18);
                }
                if (tabSubView.r != null) {
                    int round2 = Math.round(i13 + MainApp.n1);
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) tabSubView.r.getLayoutParams();
                    if (layoutParams2 != null) {
                        if (O5) {
                            layoutParams2.rightMargin = i9;
                        } else {
                            layoutParams2.leftMargin = i9;
                        }
                        layoutParams2.topMargin = round2 - layoutParams2.height;
                        layoutParams2.width = round;
                        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) tabSubView.u.getLayoutParams();
                        if (layoutParams3 != null) {
                            if (O5) {
                                layoutParams3.rightMargin = i9;
                            } else {
                                layoutParams3.leftMargin = i9;
                            }
                            layoutParams3.topMargin = round2;
                            layoutParams3.width = round;
                            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) tabSubView.v.getLayoutParams();
                            if (layoutParams4 != null) {
                                if (O5) {
                                    layoutParams4.rightMargin = i9;
                                } else {
                                    layoutParams4.leftMargin = i9;
                                }
                                layoutParams4.topMargin = round2;
                                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) tabSubView.w.getLayoutParams();
                                if (layoutParams5 != null) {
                                    if (O5) {
                                        layoutParams5.rightMargin = (i9 + round) - MainApp.m1;
                                    } else {
                                        layoutParams5.leftMargin = (i9 + round) - MainApp.m1;
                                    }
                                    layoutParams5.topMargin = round2;
                                }
                            }
                        }
                    }
                }
                tabSubView.post(new Runnable() { // from class: com.mycompany.app.quick.TabSubView.7.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TabSubView tabSubView2 = TabSubView.this;
                        List list = tabSubView2.n;
                        long j = tabSubView2.o;
                        TabSubView.d(tabSubView2, list, j, tabSubView2.p, TabSubView.a(tabSubView2, list, j));
                    }
                });
            }
        });
    }

    public void setDeleted(boolean z) {
        DialogDeleteItem dialogDeleteItem = this.J;
        if (dialogDeleteItem != null) {
            if (!z) {
                dialogDeleteItem.B(false);
                return;
            }
            WebTabAdapter webTabAdapter = this.D;
            if (webTabAdapter == null) {
                return;
            }
            webTabAdapter.g();
            DialogDeleteItem dialogDeleteItem2 = this.J;
            if (dialogDeleteItem2 != null) {
                dialogDeleteItem2.dismiss();
                this.J = null;
            }
            m(-1, false);
            l();
        }
    }

    public void setDragPos(int i) {
        this.a0 = i;
    }

    public void setFilterColor(int i) {
        if (this.S == i) {
            return;
        }
        this.S = i;
        invalidate();
    }
}
