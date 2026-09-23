package com.mycompany.app.quick;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.quick.QuickDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class QuickSubView extends FrameLayout {
    public static final /* synthetic */ int e0 = 0;
    public QuickDragHelper A;
    public ItemTouchHelper B;
    public boolean C;
    public int D;
    public int E;
    public MyCoverView F;
    public boolean G;
    public boolean H;
    public boolean I;
    public View J;
    public int K;
    public Rect L;
    public BitmapDrawable M;
    public boolean N;
    public boolean O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public Context f17477c;
    public int c0;
    public ArrayList d0;
    public QuickSubListener f;
    public int g;
    public int h;
    public int i;
    public int j;
    public String k;
    public boolean l;
    public RelativeLayout m;
    public AppCompatTextView n;
    public MyButtonCheck o;
    public View p;
    public View q;
    public View r;
    public View s;
    public View t;
    public LinearLayout u;
    public MyLineText v;
    public AppCompatTextView w;
    public MyRecyclerView x;
    public QuickAdapter y;
    public MyManagerGrid z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSubView$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass10 extends ViewOutlineProvider {
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

    /* renamed from: com.mycompany.app.quick.QuickSubView$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSubView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSubView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface QuickSubListener {
        boolean b();

        void i(boolean z);

        void j();

        void m(QuickAdapter.QuickItem quickItem);

        void o(QuickAdapter.QuickItem quickItem, int i);

        void p(String str);

        void q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEditView(boolean z) {
        QuickAdapter quickAdapter = this.y;
        if (quickAdapter != null) {
            if (z) {
                f(quickAdapter.A(), this.y.D(), false);
                this.m.setVisibility(0);
                this.u.setVisibility(0);
                this.p.setVisibility(0);
                this.q.setVisibility(0);
                this.r.setVisibility(0);
                this.s.setVisibility(0);
                this.t.setVisibility(0);
            } else {
                post(new Runnable() { // from class: com.mycompany.app.quick.QuickSubView.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickSubView quickSubView = QuickSubView.this;
                        RelativeLayout relativeLayout = quickSubView.m;
                        if (relativeLayout == null) {
                            return;
                        }
                        relativeLayout.setVisibility(8);
                        quickSubView.u.setVisibility(8);
                        quickSubView.p.setVisibility(8);
                        quickSubView.q.setVisibility(8);
                        quickSubView.r.setVisibility(8);
                        quickSubView.s.setVisibility(8);
                        quickSubView.t.setVisibility(8);
                    }
                });
            }
            QuickSubListener quickSubListener = this.f;
            if (quickSubListener != null) {
                quickSubListener.i(z);
            }
        }
    }

    public final boolean b() {
        if (this.y == null) {
            return false;
        }
        MainApp.J(this.f17477c, new Runnable() { // from class: com.mycompany.app.quick.QuickSubView.15
            @Override // java.lang.Runnable
            public final void run() {
                QuickSubView quickSubView = QuickSubView.this;
                QuickAdapter quickAdapter = quickSubView.y;
                if (quickAdapter != null) {
                    final boolean x = quickAdapter.x(quickSubView.k);
                    if (quickSubView.x == null) {
                        return;
                    }
                    quickSubView.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSubView.15.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickSubListener quickSubListener;
                            QuickAdapter quickAdapter2;
                            QuickSubView quickSubView2 = QuickSubView.this;
                            QuickSubListener quickSubListener2 = quickSubView2.f;
                            if (quickSubListener2 != null) {
                                quickSubListener2.j();
                            }
                            if (quickSubView2.y != null) {
                                if (x) {
                                    quickSubView2.G = true;
                                    MainUtil.e8(quickSubView2.f17477c, R.string.deleted);
                                }
                                if (!quickSubView2.h() && (quickAdapter2 = quickSubView2.y) != null) {
                                    quickAdapter2.g();
                                }
                                QuickAdapter quickAdapter3 = quickSubView2.y;
                                if (quickAdapter3 != null && quickAdapter3.D() == 0 && (quickSubListener = quickSubView2.f) != null) {
                                    quickSubView2.G = true;
                                    quickSubListener.q();
                                }
                            }
                        }
                    });
                }
            }
        });
        return true;
    }

    public final void c() {
        QuickAdapter quickAdapter;
        if (this.x != null && (quickAdapter = this.y) != null) {
            if (quickAdapter.q) {
                setEditView(false);
            }
            this.x.x0(this.g, this.h, false, new MyFadeListener() { // from class: com.mycompany.app.quick.QuickSubView.12
                @Override // com.mycompany.app.view.MyFadeListener
                public final void a(boolean z) {
                    QuickSubListener quickSubListener;
                    if (!z && (quickSubListener = QuickSubView.this.f) != null) {
                        quickSubListener.q();
                    }
                }

                @Override // com.mycompany.app.view.MyFadeListener
                public final void b(boolean z, boolean z2) {
                }
            });
        } else {
            QuickSubListener quickSubListener = this.f;
            if (quickSubListener != null) {
                quickSubListener.q();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v13, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.recyclerview.widget.GridLayoutManager, com.mycompany.app.view.MyManagerGrid] */
    public final void d() {
        Context context = this.f17477c;
        if (context == null) {
            return;
        }
        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
        int i = MainApp.G1;
        myRecyclerView.setPadding(0, i, 0, i);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVisibility(4);
        addView(myRecyclerView, -2, -2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setVisibility(8);
        addView(relativeLayout, -1, MainApp.Y0);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i2 = MainApp.F1;
        appCompatTextView.setPadding(i2, 0, i2, 0);
        appCompatTextView.setGravity(16);
        appCompatTextView.setTextDirection(3);
        appCompatTextView.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.Y0);
        layoutParams.addRule(21);
        layoutParams.setMarginEnd((int) MainUtil.G(context, 52.0f));
        relativeLayout.addView(appCompatTextView, layoutParams);
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.Y0);
        layoutParams2.addRule(21);
        relativeLayout.addView(myButtonCheck, layoutParams2);
        View view = new View(context);
        view.setBackgroundResource(R.drawable.shadow_list_up);
        view.setVisibility(8);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.e1);
        layoutParams3.topMargin = MainApp.Y0;
        addView(view, layoutParams3);
        View view2 = new View(context);
        view2.setVisibility(8);
        int i3 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams4.topMargin = MainApp.Y0;
        addView(view2, layoutParams4);
        View view3 = new View(context);
        view3.setVisibility(8);
        int i4 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams5.topMargin = MainApp.Y0;
        addView(view3, layoutParams5);
        View view4 = new View(context);
        view4.setVisibility(8);
        int i5 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams6.bottomMargin = MainApp.Y0;
        layoutParams6.gravity = 8388691;
        addView(view4, layoutParams6);
        View view5 = new View(context);
        view5.setVisibility(8);
        int i6 = MainApp.m1;
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams7.bottomMargin = MainApp.Y0;
        layoutParams7.gravity = 8388693;
        addView(view5, layoutParams7);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setVisibility(8);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, MainApp.Y0);
        layoutParams8.gravity = 8388691;
        addView(linearLayout, layoutParams8);
        MyLineText myLineText = new MyLineText(context);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams f = a.f(myLineText, R.string.delete, context, 0, -1);
        f.weight = 1.0f;
        linearLayout.addView(myLineText, f);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = a.e(appCompatTextView2, R.string.edit, 0, -1);
        e.weight = 1.0f;
        linearLayout.addView(appCompatTextView2, e);
        this.m = relativeLayout;
        this.n = appCompatTextView;
        this.o = myButtonCheck;
        this.p = view;
        this.q = view2;
        this.r = view3;
        this.s = view4;
        this.t = view5;
        this.u = linearLayout;
        this.v = myLineText;
        this.w = appCompatTextView2;
        this.x = myRecyclerView;
        setColor(false);
        RelativeLayout relativeLayout2 = this.m;
        if (relativeLayout2 != null) {
            relativeLayout2.setOutlineProvider(new ViewOutlineProvider());
            this.m.setClipToOutline(true);
        }
        this.m.setElevation(MainApp.H1);
        this.p.setElevation(MainApp.H1);
        this.q.setElevation(MainApp.H1);
        this.r.setElevation(MainApp.H1);
        this.x.setRoundSize(MainApp.F1);
        this.x.setElevation(MainApp.H1);
        setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSubView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                int i7 = QuickSubView.e0;
                QuickSubView.this.c();
            }
        });
        this.m.setOnClickListener(new Object());
        this.x.setOnClickListener(new Object());
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSubView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickSubView quickSubView = QuickSubView.this;
                QuickAdapter quickAdapter = quickSubView.y;
                if (quickAdapter == null) {
                    return;
                }
                quickAdapter.Q(!quickAdapter.K(), true);
                quickSubView.f(quickSubView.y.A(), quickSubView.y.D(), true);
            }
        });
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSubView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                int A;
                QuickSubView quickSubView = QuickSubView.this;
                QuickAdapter quickAdapter = quickSubView.y;
                if (quickAdapter != null && quickSubView.f != null && (A = quickAdapter.A()) != 0) {
                    if (A == 1) {
                        quickSubView.f.o(quickSubView.y.B(), A);
                    } else {
                        quickSubView.f.o(null, A);
                    }
                }
            }
        });
        this.w.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSubView.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickSubListener quickSubListener;
                QuickSubView quickSubView = QuickSubView.this;
                QuickAdapter quickAdapter = quickSubView.y;
                if (quickAdapter != null && (quickSubListener = quickSubView.f) != null) {
                    quickSubListener.m(quickAdapter.B());
                }
            }
        });
        int d = DbBookQuick.d(this.f17477c, this.k);
        this.D = d;
        if (d == 0) {
            this.E = 1;
        } else if (d < 4) {
            this.E = d;
        } else {
            this.E = 4;
        }
        ?? gridLayoutManager = new GridLayoutManager(this.E);
        this.z = gridLayoutManager;
        this.y = new QuickAdapter(this.f17477c, 1, this.l, gridLayoutManager, new QuickAdapter.QuickListener() { // from class: com.mycompany.app.quick.QuickSubView.7
            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final boolean b() {
                QuickSubView quickSubView = QuickSubView.this;
                QuickSubListener quickSubListener = quickSubView.f;
                if (quickSubListener == null) {
                    return MainUtil.N5(quickSubView.f17477c);
                }
                return quickSubListener.b();
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void c(QuickAdapter.QuickItem quickItem, boolean z) {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final boolean d() {
                return false;
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void e(QuickAdapter.QuickItem quickItem) {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final int h() {
                return 0;
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void k() {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void l() {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void n(List list) {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void o(QuickAdapter.QuickHolder quickHolder, int i7) {
                QuickAdapter quickAdapter;
                QuickSubView quickSubView = QuickSubView.this;
                if (!quickSubView.C && (quickAdapter = quickSubView.y) != null && quickSubView.f != null) {
                    if (quickAdapter.q) {
                        QuickAdapter.QuickItem E = quickAdapter.E(i7);
                        if (E != null && E.f17362a == 0) {
                            E.j = !E.j;
                            quickAdapter.y(i7, true);
                        }
                        quickSubView.f(quickSubView.y.A(), quickSubView.y.D(), true);
                        return;
                    }
                    QuickAdapter.QuickItem E2 = quickAdapter.E(i7);
                    if (E2 != null) {
                        quickSubView.f.p(MainUtil.q4(null, E2.d));
                    }
                }
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void p(boolean z) {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void q(QuickAdapter.QuickHolder quickHolder, int i7) {
                QuickAdapter quickAdapter;
                ItemTouchHelper itemTouchHelper;
                QuickSubView quickSubView = QuickSubView.this;
                if (!quickSubView.C && (quickAdapter = quickSubView.y) != null && quickSubView.f != null) {
                    if (!quickAdapter.q) {
                        quickAdapter.S(i7, true);
                        quickSubView.setEditView(true);
                    }
                    if (quickSubView.y.E(i7) != null && (itemTouchHelper = quickSubView.B) != null) {
                        itemTouchHelper.t(quickHolder);
                    }
                }
            }
        });
        QuickDragHelper quickDragHelper = new QuickDragHelper(this, new QuickDragHelper.QuickDragListener() { // from class: com.mycompany.app.quick.QuickSubView.8
            @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
            public final void a(int i7) {
                QuickSubView quickSubView = QuickSubView.this;
                quickSubView.C = false;
                if (i7 == 2) {
                    quickSubView.C = true;
                } else if (i7 == 0 && quickSubView.y != null && quickSubView.F == null) {
                    quickSubView.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSubView.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                            QuickSubView quickSubView2 = QuickSubView.this;
                            QuickAdapter quickAdapter = quickSubView2.y;
                            if (quickAdapter != null && quickSubView2.F == null && quickAdapter.P(quickSubView2.x)) {
                                QuickSubView.this.G = true;
                            }
                        }
                    });
                }
            }

            @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
            public final boolean b(int i7, int i8) {
                QuickSubView quickSubView = QuickSubView.this;
                QuickAdapter quickAdapter = quickSubView.y;
                if (quickAdapter != null && quickSubView.F == null) {
                    return quickAdapter.N(i7, i8);
                }
                return false;
            }

            @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
            public final void c(int i7, int i8) {
            }
        });
        this.A = quickDragHelper;
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(quickDragHelper);
        this.B = itemTouchHelper;
        itemTouchHelper.i(this.x);
        this.x.setLayoutManager(this.z);
        this.x.setAdapter(this.y);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.H) {
            super.dispatchDraw(canvas);
            BitmapDrawable bitmapDrawable = this.M;
            if (bitmapDrawable != null) {
                bitmapDrawable.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
    
        if (r0 != 3) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickSubView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e() {
        View view = this.J;
        if (view != null) {
            view.setVisibility(0);
            this.J = null;
        }
        this.I = false;
        this.L = null;
        this.M = null;
    }

    public final void f(int i, int i2, boolean z) {
        int i3;
        int i4;
        boolean z2;
        if (this.n == null) {
            return;
        }
        if (MainUtil.k5(this.l)) {
            this.o.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
            this.o.setBgPreColor(-12632257);
            i3 = -328966;
            i4 = -8355712;
        } else {
            this.o.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            this.o.setBgPreColor(553648128);
            i3 = -14784824;
            i4 = -2434342;
        }
        this.n.setText(MainUtil.h3(i, i2));
        MyButtonCheck myButtonCheck = this.o;
        if (i >= i2) {
            z2 = true;
        } else {
            z2 = false;
        }
        myButtonCheck.q(z2, z);
        if (i > 0) {
            this.v.setEnabled(true);
            this.v.setTextColor(i3);
        } else {
            this.v.setEnabled(false);
            this.v.setTextColor(i4);
        }
        if (i == 1) {
            this.w.setEnabled(true);
            this.w.setTextColor(i3);
        } else {
            this.w.setEnabled(false);
            this.w.setTextColor(i4);
        }
    }

    public final void g() {
        if (this.x == null) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.quick.QuickSubView.9
            /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x00a4  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00d7  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00fb  */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0118  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0130  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x011b  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x00e5  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x00d1  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x00b9  */
            /* JADX WARN: Removed duplicated region for block: B:90:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0095  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 383
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickSubView.AnonymousClass9.run():void");
            }
        });
    }

    public final boolean h() {
        QuickAdapter quickAdapter = this.y;
        if (quickAdapter == null || !quickAdapter.q) {
            return false;
        }
        quickAdapter.S(-1, false);
        setEditView(false);
        return true;
    }

    public void setColor(boolean z) {
        QuickAdapter quickAdapter;
        if (this.x != null) {
            if (MainUtil.k5(this.l)) {
                this.m.setBackgroundColor(-16777216);
                this.u.setBackgroundColor(-16777216);
                this.x.setBackgroundColor(-14606047);
                this.n.setTextColor(-328966);
                this.q.setBackgroundResource(R.drawable.round_top_left_b);
                this.r.setBackgroundResource(R.drawable.round_top_right_b);
                this.s.setBackgroundResource(R.drawable.round_bot_left_b);
                this.t.setBackgroundResource(R.drawable.round_bot_right_b);
                this.v.setBackgroundResource(R.drawable.selector_normal_dark);
                this.v.setTextColor(-328966);
                this.w.setBackgroundResource(R.drawable.selector_normal_dark);
                this.w.setTextColor(-328966);
            } else {
                this.m.setBackgroundColor(-460552);
                this.u.setBackgroundColor(-460552);
                this.x.setBackgroundColor(-1);
                this.n.setTextColor(-16777216);
                this.q.setBackgroundResource(R.drawable.round_top_left_g);
                this.r.setBackgroundResource(R.drawable.round_top_right_g);
                this.s.setBackgroundResource(R.drawable.round_bot_left_g);
                this.t.setBackgroundResource(R.drawable.round_bot_right_g);
                this.v.setBackgroundResource(R.drawable.selector_normal);
                this.v.setTextColor(-14784824);
                this.w.setBackgroundResource(R.drawable.selector_normal);
                this.w.setTextColor(-14784824);
            }
            if (z && (quickAdapter = this.y) != null) {
                quickAdapter.g();
            }
        }
    }

    public void setDragPos(int i) {
        this.K = i;
    }
}
