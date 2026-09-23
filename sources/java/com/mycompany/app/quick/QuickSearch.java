package com.mycompany.app.quick;

import android.graphics.Outline;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyClipView;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebSearchAdapter;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class QuickSearch extends FrameLayout {
    public static final /* synthetic */ int f0 = 0;
    public MyManagerGrid A;
    public MyManagerLinear B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public MyRecyclerView G;
    public WebSearchAdapter H;
    public MyManagerLinear I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public MyPopupMenu W;
    public boolean a0;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public WebViewActivity f17438c;
    public float c0;
    public ArrayList d0;
    public List e0;
    public WebViewActivity f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public QuickSearchListener s;
    public NestedScrollView t;
    public LinearLayout u;
    public MyButtonImage v;
    public LinearLayout w;
    public MyClipView x;
    public MyRecyclerView y;
    public QuickAdapter z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass11 implements Runnable {

        /* renamed from: com.mycompany.app.quick.QuickSearch$11$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.quick.QuickSearch$11$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01891 implements Runnable {

                /* renamed from: com.mycompany.app.quick.QuickSearch$11$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC01901 implements Runnable {

                    /* renamed from: com.mycompany.app.quick.QuickSearch$11$1$1$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes3.dex */
                    class RunnableC01911 implements Runnable {
                        public RunnableC01911() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            RunnableC01891 runnableC01891 = RunnableC01891.this;
                            QuickSearch quickSearch = QuickSearch.this;
                            int i = QuickSearch.f0;
                            quickSearch.l();
                            QuickSearch.this.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.11.1.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyManagerGrid myManagerGrid;
                                    RunnableC01901 runnableC01901 = RunnableC01901.this;
                                    QuickSearch quickSearch2 = QuickSearch.this;
                                    int i2 = QuickSearch.f0;
                                    int h = QuickSearch.h(quickSearch2.k());
                                    quickSearch2.n = h;
                                    if (PrefZtri.j0 == 1 && (myManagerGrid = quickSearch2.A) != null && myManagerGrid.F != h) {
                                        myManagerGrid.x1(h);
                                    }
                                    QuickSearch.this.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.11.1.1.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            RunnableC01911 runnableC01911 = RunnableC01911.this;
                                            QuickSearch quickSearch3 = QuickSearch.this;
                                            QuickAdapter quickAdapter = quickSearch3.z;
                                            if (quickAdapter != null) {
                                                quickAdapter.h = quickSearch3.i;
                                                quickAdapter.i = quickSearch3.m;
                                                quickAdapter.V();
                                                QuickSearch.this.z.g();
                                            }
                                            QuickSearch.this.s();
                                            QuickSearch quickSearch4 = QuickSearch.this;
                                            quickSearch4.V = true;
                                            quickSearch4.q();
                                        }
                                    });
                                }
                            });
                        }
                    }

                    public RunnableC01901() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        QuickSearch.f(QuickSearch.this);
                        QuickSearch.this.post(new RunnableC01911());
                    }
                }

                public RunnableC01891() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                    QuickSearch.e(QuickSearch.this);
                    QuickSearch.this.post(new RunnableC01901());
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                QuickSearch quickSearch = QuickSearch.this;
                QuickSearch.d(quickSearch);
                quickSearch.post(new RunnableC01891());
            }
        }

        public AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickSearch quickSearch = QuickSearch.this;
            QuickSearch.g(quickSearch);
            quickSearch.post(new AnonymousClass1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickSearch quickSearch = QuickSearch.this;
            if (quickSearch.u == null) {
                return;
            }
            quickSearch.l();
            quickSearch.V = true;
            quickSearch.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            int i;
            QuickSearch quickSearch = QuickSearch.this;
            if (quickSearch.z != null) {
                if (PrefZtri.j0 != 2) {
                    z = false;
                } else if (!quickSearch.Q) {
                    z = true;
                } else {
                    z = DataBookRecent.a(quickSearch.f).f12913c;
                }
                if (z) {
                    DataBookRecent.a(quickSearch.f).f12913c = false;
                    if (quickSearch.z.d() >= 2) {
                        quickSearch.y.setFocusable(false);
                        NestedScrollView nestedScrollView = quickSearch.t;
                        if (quickSearch.m) {
                            i = 130;
                        } else {
                            i = 33;
                        }
                        nestedScrollView.e(i);
                    }
                }
            }
            quickSearch.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.13.1
                @Override // java.lang.Runnable
                public final void run() {
                    QuickSearch quickSearch2 = QuickSearch.this;
                    LinearLayout linearLayout = quickSearch2.u;
                    if (linearLayout == null) {
                        return;
                    }
                    linearLayout.setVisibility(0);
                    quickSearch2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.13.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            MyRecyclerView myRecyclerView = QuickSearch.this.y;
                            if (myRecyclerView == null) {
                                return;
                            }
                            myRecyclerView.setFocusable(true);
                            QuickSearch.this.y.requestLayout();
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass17 implements Runnable {

        /* renamed from: com.mycompany.app.quick.QuickSearch$17$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.quick.QuickSearch$17$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01951 implements Runnable {
                public RunnableC01951() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                    QuickSearch.e(QuickSearch.this);
                    QuickSearch.this.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.17.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            QuickSearch.f(QuickSearch.this);
                            QuickSearch.this.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.17.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RunnableC01951 runnableC01951 = RunnableC01951.this;
                                    QuickSearch quickSearch = QuickSearch.this;
                                    int i = QuickSearch.f0;
                                    quickSearch.l();
                                    QuickSearch quickSearch2 = QuickSearch.this;
                                    quickSearch2.post(new AnonymousClass13());
                                    QuickSearch quickSearch3 = QuickSearch.this;
                                    quickSearch3.P = false;
                                    quickSearch3.Q = true;
                                }
                            });
                        }
                    });
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                QuickSearch quickSearch = QuickSearch.this;
                QuickSearch.d(quickSearch);
                quickSearch.post(new RunnableC01951());
            }
        }

        public AnonymousClass17() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickSearch quickSearch = QuickSearch.this;
            QuickSearch.g(quickSearch);
            quickSearch.post(new AnonymousClass1());
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickSearch$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 implements MyPopupMenu.MyPopupListener {
        public AnonymousClass18() {
        }

        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
        public final void a() {
            int i = QuickSearch.f0;
            QuickSearch.this.i();
        }

        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
        public final boolean b(View view, int i) {
            int i2;
            QuickSearch quickSearch = QuickSearch.this;
            if (quickSearch.u != null) {
                if (i == 0) {
                    i2 = 1;
                } else if (i == 1) {
                    i2 = 2;
                } else {
                    i2 = 0;
                }
                if (PrefZtri.j0 != i2) {
                    PrefZtri.j0 = i2;
                    PrefSet.f(quickSearch.f, 17, i2, "mQckSchType");
                    quickSearch.u.setVisibility(4);
                    quickSearch.postDelayed(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.18.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickSearch quickSearch2 = QuickSearch.this;
                            QuickAdapter quickAdapter = quickSearch2.z;
                            if (quickAdapter != null) {
                                MainListLoader mainListLoader = quickAdapter.r;
                                if (mainListLoader != null) {
                                    mainListLoader.f16599c = null;
                                }
                                quickAdapter.n = null;
                                quickAdapter.o = null;
                                quickAdapter.B = null;
                                quickAdapter.g();
                                quickSearch2.z = null;
                            }
                            quickSearch2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.18.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    QuickSearch.b(QuickSearch.this);
                                    QuickSearch.this.n();
                                }
                            });
                        }
                    }, 300L);
                    return true;
                }
            }
            return true;
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickSearch$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass19 implements Runnable {
        public AnonymousClass19() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = QuickSearch.f0;
            QuickSearch quickSearch = QuickSearch.this;
            quickSearch.l();
            if (quickSearch.y == null) {
                return;
            }
            quickSearch.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.19.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyManagerGrid myManagerGrid;
                    QuickSearch quickSearch2 = QuickSearch.this;
                    if (quickSearch2.y == null) {
                        return;
                    }
                    int h = QuickSearch.h(quickSearch2.k());
                    quickSearch2.n = h;
                    if (PrefZtri.j0 == 1 && (myManagerGrid = quickSearch2.A) != null && myManagerGrid.F != h) {
                        myManagerGrid.x1(h);
                    }
                    quickSearch2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.19.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyRecyclerView myRecyclerView = QuickSearch.this.y;
                            if (myRecyclerView == null) {
                                return;
                            }
                            myRecyclerView.requestLayout();
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            final QuickSearch quickSearch = QuickSearch.this;
            if (quickSearch.f17438c == null) {
                return;
            }
            MyClipView myClipView = quickSearch.x;
            if (myClipView != null) {
                WebViewActivity webViewActivity = quickSearch.f;
                boolean z = quickSearch.i;
                boolean z2 = quickSearch.m;
                MyClipView.MyClipListener myClipListener = new MyClipView.MyClipListener() { // from class: com.mycompany.app.quick.QuickSearch.5
                    @Override // com.mycompany.app.view.MyClipView.MyClipListener
                    public final void i(String str) {
                        QuickSearchListener quickSearchListener = QuickSearch.this.s;
                        if (quickSearchListener != null) {
                            quickSearchListener.i(str);
                        }
                    }

                    @Override // com.mycompany.app.view.MyClipView.MyClipListener
                    public final void j(String str) {
                        QuickSearchListener quickSearchListener = QuickSearch.this.s;
                        if (quickSearchListener != null) {
                            quickSearchListener.j(str);
                        }
                    }
                };
                myClipView.f18611c = webViewActivity;
                myClipView.f = z;
                myClipView.g = true;
                myClipView.h = MainUtil.U4();
                myClipView.i = PrefWeb.U;
                myClipView.j = MainApp.K1;
                myClipView.k = z2;
                myClipView.l = myClipListener;
                quickSearch.x.c();
            }
            quickSearch.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    QuickSearch quickSearch2 = QuickSearch.this;
                    if (quickSearch2.f17438c == null) {
                        return;
                    }
                    QuickSearch.b(quickSearch2);
                    quickSearch2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.4.1.1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r1v3, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final QuickSearch quickSearch3 = QuickSearch.this;
                            if (quickSearch3.f17438c == null || quickSearch3.I != null || quickSearch3.G == null) {
                                return;
                            }
                            ?? linearLayoutManager = new LinearLayoutManager(1);
                            quickSearch3.I = linearLayoutManager;
                            quickSearch3.G.setLayoutManager(linearLayoutManager);
                            quickSearch3.G.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.quick.QuickSearch.8
                                @Override // com.mycompany.app.image.ImageSizeListener
                                public final void a(View view, int i, int i2) {
                                    QuickSearch quickSearch4 = QuickSearch.this;
                                    MyRecyclerView myRecyclerView = quickSearch4.G;
                                    if (myRecyclerView == null || myRecyclerView.getVisibility() != 0) {
                                        return;
                                    }
                                    quickSearch4.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.8.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            QuickSearch quickSearch5 = QuickSearch.this;
                                            int i3 = QuickSearch.f0;
                                            quickSearch5.s();
                                        }
                                    });
                                }
                            });
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickSearch$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 implements QuickAdapter.QuickRcntListener {
        public AnonymousClass7() {
        }

        public final void a(int i, String str) {
            QuickSearchListener quickSearchListener = QuickSearch.this.s;
            if (quickSearchListener != null) {
                quickSearchListener.g(i, str);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface QuickSearchListener {
        MyWebBody f();

        void g(int i, String str);

        void h(WebSearchAdapter.SearchItem searchItem);

        void i(String str);

        void j(String str);

        void k();

        void l(int i, String str);

        void m(int i);

        void n(int i, int i2, int i3, String str, int i4);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.recyclerview.widget.GridLayoutManager, com.mycompany.app.view.MyManagerGrid] */
    public static void b(QuickSearch quickSearch) {
        if (PrefZtri.j0 == 0 || quickSearch.y == null) {
            return;
        }
        int h = h(quickSearch.k());
        quickSearch.n = h;
        if (PrefZtri.j0 == 1) {
            quickSearch.B = null;
            quickSearch.A = new GridLayoutManager(h);
        } else {
            quickSearch.A = null;
            quickSearch.B = new LinearLayoutManager(1);
        }
        QuickAdapter quickAdapter = new QuickAdapter(quickSearch.f, 2, quickSearch.i, null, new QuickAdapter.QuickListener() { // from class: com.mycompany.app.quick.QuickSearch.6
            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final boolean b() {
                int i = QuickSearch.f0;
                return QuickSearch.this.k();
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
            public final void o(QuickAdapter.QuickHolder quickHolder, int i) {
                QuickAdapter.QuickItem E;
                int width;
                int height;
                int i2;
                int i3;
                View view;
                QuickSearch quickSearch2 = QuickSearch.this;
                QuickAdapter quickAdapter2 = quickSearch2.z;
                if (quickAdapter2 != null && quickSearch2.s != null && (E = quickAdapter2.E(i)) != null) {
                    if (!E.f17363c) {
                        int i4 = E.f17362a;
                        if (i4 == 0) {
                            quickSearch2.s.l(i4, MainUtil.q4(null, E.d));
                            return;
                        } else {
                            if (i4 == 1) {
                                quickSearch2.s.l(i4, null);
                                return;
                            }
                            return;
                        }
                    }
                    MyWebBody f = quickSearch2.s.f();
                    if (f != null) {
                        int[] iArr = new int[2];
                        f.getLocationOnScreen(iArr);
                        int paddingStart = f.getPaddingStart() + iArr[0];
                        int paddingTop = f.getPaddingTop() + iArr[1];
                        quickSearch2.getLocationOnScreen(iArr);
                        int i5 = iArr[0];
                        int i6 = iArr[1];
                        if (quickHolder != null && (view = quickHolder.f1589a) != null) {
                            int width2 = view.getWidth();
                            int height2 = view.getHeight();
                            view.getLocationOnScreen(iArr);
                            width = (width2 / 2) + (iArr[0] - i5);
                            height = ((height2 / 2) + (iArr[1] - i6)) - MainApp.F1;
                            if (MainUtil.O5(quickSearch2.f)) {
                                width = quickSearch2.getWidth() - width;
                            }
                            i2 = width2;
                            i3 = height2;
                        } else {
                            int i7 = MainApp.E1 * 5;
                            width = quickSearch2.getWidth() / 2;
                            height = quickSearch2.getHeight() / 2;
                            i2 = i7;
                            i3 = i2;
                        }
                        quickSearch2.s.n((i5 - paddingStart) + width, (i6 - paddingTop) + height, i2, E.d, i3);
                    }
                }
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void p(boolean z) {
            }

            @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
            public final void q(QuickAdapter.QuickHolder quickHolder, int i) {
                QuickAdapter.QuickItem E;
                QuickSearch quickSearch2 = QuickSearch.this;
                QuickAdapter quickAdapter2 = quickSearch2.z;
                if (quickAdapter2 != null && quickSearch2.s != null && (E = quickAdapter2.E(i)) != null && E.f17362a == 0) {
                    quickSearch2.s.m(i + 1);
                }
            }
        });
        quickSearch.z = quickAdapter;
        quickAdapter.C = new AnonymousClass7();
        quickAdapter.i = quickSearch.m;
        if (PrefZtri.j0 == 1) {
            quickSearch.y.setLayoutManager(quickSearch.A);
        } else {
            quickSearch.y.setLayoutManager(quickSearch.B);
        }
        quickSearch.y.setAdapter(quickSearch.z);
    }

    public static void d(QuickSearch quickSearch) {
        MyClipView myClipView;
        LinearLayout linearLayout;
        int i;
        if (quickSearch.g && (myClipView = quickSearch.x) != null && (linearLayout = quickSearch.w) != null) {
            if (quickSearch.m && PrefZtri.j0 == 2) {
                i = 1;
            } else {
                i = 0;
            }
            if (linearLayout.indexOfChild(myClipView) == i) {
                return;
            }
            MainUtil.V6(myClipView);
            linearLayout.addView(myClipView, i, new LinearLayout.LayoutParams(-1, MainApp.h1));
        }
    }

    public static void e(QuickSearch quickSearch) {
        MyRecyclerView myRecyclerView;
        LinearLayout.LayoutParams layoutParams;
        if (quickSearch.h && (myRecyclerView = quickSearch.y) != null && (layoutParams = (LinearLayout.LayoutParams) myRecyclerView.getLayoutParams()) != null) {
            int i = 0;
            if (PrefZtri.j0 == 1 && quickSearch.g) {
                i = MainApp.F1;
            }
            if (layoutParams.topMargin == i) {
                return;
            }
            layoutParams.topMargin = i;
        }
    }

    public static void f(QuickSearch quickSearch) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z = quickSearch.i;
        if (quickSearch.y == null) {
            return;
        }
        quickSearch.i = z;
        quickSearch.j = MainUtil.U4();
        quickSearch.k = PrefWeb.U;
        quickSearch.l = MainApp.K1;
        boolean C5 = MainUtil.C5(quickSearch.i);
        boolean k5 = MainUtil.k5(quickSearch.i);
        if (!MainApp.K1 && !quickSearch.i) {
            quickSearch.setBackgroundColor(553648128);
        } else {
            quickSearch.setBackgroundColor(-2130706432);
        }
        if (PrefZtri.j0 != 2 && C5) {
            i = MainApp.G1;
        } else {
            i = 0;
        }
        if (quickSearch.m) {
            i2 = 0;
        } else {
            i2 = MainApp.E1;
        }
        if (quickSearch.J != i || quickSearch.K != i || quickSearch.L != i2) {
            quickSearch.J = i;
            quickSearch.K = i;
            quickSearch.L = i2;
            quickSearch.setPadding(i, quickSearch.M, i, i2 + quickSearch.N);
            quickSearch.l();
        }
        int i6 = -14606047;
        if (!quickSearch.g && !quickSearch.h) {
            quickSearch.w.setBackground(null);
        } else {
            if (C5) {
                quickSearch.o(true, true);
            } else if (quickSearch.m) {
                quickSearch.o(true, false);
            } else {
                quickSearch.o(false, true);
            }
            if (PrefZtri.j0 == 1) {
                LinearLayout linearLayout = quickSearch.w;
                if (k5) {
                    i4 = -16777216;
                } else {
                    i4 = -460552;
                }
                linearLayout.setBackgroundColor(i4);
            } else {
                LinearLayout linearLayout2 = quickSearch.w;
                if (k5) {
                    i3 = -14606047;
                } else {
                    i3 = -1;
                }
                linearLayout2.setBackgroundColor(i3);
            }
            boolean z2 = quickSearch.m;
            boolean z3 = !z2;
            LinearLayout linearLayout3 = quickSearch.w;
            if (linearLayout3 != null && (quickSearch.E != z2 || quickSearch.F != z3)) {
                quickSearch.E = z2;
                quickSearch.F = z3;
                if (!z2 && z2) {
                    linearLayout3.setClipToOutline(false);
                } else {
                    linearLayout3.setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.quick.QuickSearch.10
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            if (view != null && outline != null) {
                                int i7 = MainApp.B1;
                                QuickSearch quickSearch2 = QuickSearch.this;
                                boolean z4 = quickSearch2.E;
                                if (z4 && quickSearch2.F) {
                                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i7);
                                } else if (z4) {
                                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i7, i7);
                                } else if (quickSearch2.F) {
                                    outline.setRoundRect(0, -i7, view.getWidth(), view.getHeight(), i7);
                                }
                            }
                        }
                    });
                    linearLayout3.setClipToOutline(true);
                }
            }
        }
        quickSearch.x.h(quickSearch.g, quickSearch.i, quickSearch.m);
        if (k5) {
            quickSearch.v.setImageResource(R.drawable.outline_arrow_drop_down_dark_24);
            quickSearch.v.k(-16777216, -12632257);
        } else {
            quickSearch.v.setImageResource(R.drawable.outline_arrow_drop_down_black_24);
            quickSearch.v.k(-1, -2039584);
        }
        if (quickSearch.h) {
            if (PrefZtri.j0 != 2) {
                if (C5) {
                    i5 = MainApp.G1;
                } else {
                    i5 = MainApp.F1;
                }
            } else {
                i5 = 0;
            }
            if (quickSearch.y.getPaddingLeft() != i5) {
                quickSearch.y.setPadding(i5, 0, i5, 0);
            }
            if (PrefZtri.j0 == 1) {
                quickSearch.y.u0(true, true);
                MyRecyclerView myRecyclerView = quickSearch.y;
                if (!k5) {
                    i6 = -1;
                }
                myRecyclerView.setBackgroundColor(i6);
            } else {
                quickSearch.y.u0(false, false);
                quickSearch.y.setBackground(null);
            }
            quickSearch.y.setVisibility(0);
            return;
        }
        quickSearch.y.setVisibility(8);
    }

    public static void g(QuickSearch quickSearch) {
        LinearLayout linearLayout;
        int i;
        View view = quickSearch.v;
        if (view == null || (linearLayout = quickSearch.u) == null || linearLayout.indexOfChild(view) == (i = !quickSearch.m ? 1 : 0)) {
            return;
        }
        MainUtil.V6(view);
        int i2 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 8388613;
        linearLayout.addView(view, i, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getBodyPadding() {
        /*
            r4 = this;
            boolean r0 = r4.m
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = com.mycompany.app.main.MainApp.g1
            int r2 = com.mycompany.app.pref.PrefZtri.j0
            r3 = 1
            if (r2 != r3) goto L1c
            boolean r2 = r4.h
            if (r2 == 0) goto L14
            int r2 = com.mycompany.app.main.MainApp.A1
            int r0 = r0 + r2
        L14:
            boolean r2 = r4.g
            if (r2 == 0) goto L2a
            int r2 = com.mycompany.app.main.MainApp.h1
        L1a:
            int r0 = r0 + r2
            goto L2a
        L1c:
            boolean r2 = r4.h
            if (r2 == 0) goto L23
            int r2 = com.mycompany.app.main.MainApp.h1
            goto L1a
        L23:
            boolean r2 = r4.g
            if (r2 == 0) goto L2a
            int r2 = com.mycompany.app.main.MainApp.h1
            goto L1a
        L2a:
            boolean r2 = com.mycompany.app.main.MainConst.d
            if (r2 == 0) goto L3c
            android.view.ViewParent r2 = r4.getParent()
            if (r2 != 0) goto L35
            return r1
        L35:
            android.view.View r2 = (android.view.View) r2
            int r2 = r2.getHeight()
            goto L40
        L3c:
            int r2 = r4.getHeight()
        L40:
            int r3 = r4.getPaddingTop()
            int r2 = r2 - r3
            int r3 = r4.getPaddingBottom()
            int r2 = r2 - r3
            int r2 = r2 - r0
            if (r2 > 0) goto L4e
            return r1
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickSearch.getBodyPadding():int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getItemList() {
        List list = null;
        this.d0 = null;
        this.e0 = null;
        boolean z = false;
        this.h = false;
        int i = PrefZtri.j0;
        if (i != 0) {
            if (i == 1) {
                ArrayList k = DbBookQuick.k(this.f, false, false, this.O);
                this.O = false;
                if (k != null && !k.isEmpty()) {
                    z = true;
                }
                this.h = z;
                this.d0 = k;
                return;
            }
            if (!DbBookRecent.l()) {
                return;
            }
            if (!DataBookRecent.a(this.f).b) {
                list = DataBookRecent.a(this.f).f12912a;
            }
            if (list == null || list.isEmpty()) {
                list = DbBookRecent.e(this.f);
                DataBookRecent a2 = DataBookRecent.a(this.f);
                a2.f12912a = list;
                a2.b = false;
            }
            if (list != null && !list.isEmpty()) {
                z = true;
            }
            this.h = z;
            this.e0 = list;
        }
    }

    public static int h(boolean z) {
        int i;
        int i2 = PrefZtri.j0;
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (PrefZtri.l0 == 0) {
            PrefZtri.l0 = 5;
        }
        if (PrefZtri.m0 == 0) {
            PrefZtri.m0 = 5;
        }
        if (z) {
            i = PrefZtri.m0;
        } else {
            i = PrefZtri.l0;
        }
        if (i == 0) {
            return 5;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollTouch(MotionEvent motionEvent) {
        if (this.t != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            return;
                        }
                    } else {
                        if (this.a0) {
                            if (Math.abs(this.b0 - motionEvent.getX()) > MainApp.E1 || Math.abs(this.c0 - motionEvent.getY()) > MainApp.E1) {
                                this.a0 = false;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                if (this.a0) {
                    this.a0 = false;
                    QuickSearchListener quickSearchListener = this.s;
                    if (quickSearchListener != null) {
                        quickSearchListener.k();
                        return;
                    }
                    return;
                }
                return;
            }
            this.a0 = true;
            this.b0 = motionEvent.getX();
            this.c0 = motionEvent.getY();
        }
    }

    public int getOutPadBottom() {
        return this.N;
    }

    public int getOutPadHeight() {
        return (getHeight() - this.M) - this.N;
    }

    public final void i() {
        MyPopupMenu myPopupMenu = this.W;
        if (myPopupMenu != null) {
            WebViewActivity webViewActivity = this.f17438c;
            if (webViewActivity != null) {
                webViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.W = null;
        }
    }

    public final void j() {
        WebViewActivity webViewActivity;
        int i;
        if (this.t != null || (webViewActivity = this.f) == null) {
            return;
        }
        NestedScrollView nestedScrollView = new NestedScrollView(webViewActivity, null);
        nestedScrollView.setOverScrollMode(2);
        addView(nestedScrollView, -1, -1);
        LinearLayout linearLayout = new LinearLayout(webViewActivity);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        nestedScrollView.addView(linearLayout, -1, -1);
        LinearLayout linearLayout2 = new LinearLayout(webViewActivity);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, -1, -2);
        MyRecyclerView myRecyclerView = new MyRecyclerView(webViewActivity);
        myRecyclerView.setRoundSize(MainApp.B1);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRecyclerView.setVisibility(8);
        linearLayout2.addView(myRecyclerView, -1, -2);
        if (this.m && PrefZtri.j0 == 2) {
            i = 1;
        } else {
            i = 0;
        }
        MyClipView myClipView = new MyClipView(this.f);
        myClipView.setVisibility(8);
        linearLayout2.addView(myClipView, i, new LinearLayout.LayoutParams(-1, MainApp.h1));
        int i2 = !this.m ? 1 : 0;
        MyButtonImage myButtonImage = new MyButtonImage(webViewActivity);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage.n(MainApp.F1, MainApp.E1);
        int i3 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 8388613;
        linearLayout.addView(myButtonImage, i2, layoutParams);
        MyRecyclerView myRecyclerView2 = new MyRecyclerView(webViewActivity);
        myRecyclerView2.setRoundSize(MainApp.B1);
        myRecyclerView2.setVerticalScrollBarEnabled(false);
        myRecyclerView2.setHorizontalScrollBarEnabled(false);
        myRecyclerView2.setVisibility(4);
        addView(myRecyclerView2, -1, -2);
        this.t = nestedScrollView;
        this.u = linearLayout;
        this.v = myButtonImage;
        this.w = linearLayout2;
        this.x = myClipView;
        this.y = myRecyclerView;
        this.G = myRecyclerView2;
        setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSearch.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuickSearchListener quickSearchListener = QuickSearch.this.s;
                if (quickSearchListener != null) {
                    quickSearchListener.k();
                }
            }
        });
        this.t.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.quick.QuickSearch.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                QuickSearch.this.setScrollTouch(motionEvent);
                return false;
            }
        });
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickSearch.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z;
                boolean z2;
                QuickSearch quickSearch = QuickSearch.this;
                if (quickSearch.f17438c != null && quickSearch.W == null) {
                    quickSearch.i();
                    if (view != null) {
                        ArrayList arrayList = new ArrayList();
                        int i4 = R.string.quick_access;
                        boolean z3 = false;
                        if (PrefZtri.j0 == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, i4, z));
                        int i5 = R.string.recent_search;
                        if (PrefZtri.j0 == 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, i5, z2));
                        int i6 = R.string.not_used;
                        if (PrefZtri.j0 == 0) {
                            z3 = true;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, i6, z3));
                        MyPopupMenu myPopupMenu = new MyPopupMenu(quickSearch.f17438c, quickSearch.w, view, arrayList, MainUtil.k5(quickSearch.i), new AnonymousClass18());
                        quickSearch.W = myPopupMenu;
                        WebViewActivity webViewActivity2 = quickSearch.f17438c;
                        if (webViewActivity2 != null) {
                            webViewActivity2.Z0 = myPopupMenu;
                        }
                    }
                }
            }
        });
        post(new AnonymousClass4());
    }

    public final boolean k() {
        WebViewActivity webViewActivity = this.f17438c;
        if (webViewActivity == null) {
            return MainUtil.N5(this.f);
        }
        return webViewActivity.h0();
    }

    public final void l() {
        int bodyPadding;
        LinearLayout linearLayout = this.u;
        if (linearLayout == null || linearLayout.getPaddingTop() == (bodyPadding = getBodyPadding())) {
            return;
        }
        linearLayout.setPadding(0, bodyPadding, 0, 0);
    }

    public final void m() {
        if (this.S && !this.R) {
            this.S = false;
            if (this.y != null) {
                post(new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickSearch quickSearch = QuickSearch.this;
                        ArrayList arrayList = quickSearch.d0;
                        List list = quickSearch.e0;
                        quickSearch.d0 = null;
                        quickSearch.e0 = null;
                        if (quickSearch.y == null) {
                            return;
                        }
                        QuickAdapter quickAdapter = quickSearch.z;
                        if (quickAdapter != null) {
                            quickAdapter.h = quickSearch.i;
                            quickAdapter.i = quickSearch.m;
                            if (PrefZtri.j0 == 2) {
                                quickAdapter.A = true;
                                MainListLoader mainListLoader = quickAdapter.r;
                                if (mainListLoader != null) {
                                    mainListLoader.f16599c = null;
                                }
                                quickAdapter.R();
                                quickAdapter.B = list;
                                quickAdapter.n = null;
                                quickAdapter.g();
                            } else {
                                quickAdapter.Y(arrayList, false);
                            }
                        }
                        quickSearch.post(new AnonymousClass17());
                    }
                });
            }
        }
    }

    public final void n() {
        if (this.y != null) {
            if (PrefZtri.j0 == 0) {
                this.d0 = null;
                this.e0 = null;
                this.h = false;
                this.S = true;
                m();
                return;
            }
            if (this.P) {
                return;
            }
            this.P = true;
            MainApp.J(this.f, new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.14
                @Override // java.lang.Runnable
                public final void run() {
                    QuickSearch quickSearch = QuickSearch.this;
                    quickSearch.getItemList();
                    quickSearch.S = true;
                    quickSearch.m();
                }
            });
        }
    }

    public final void o(boolean z, boolean z2) {
        NestedScrollView nestedScrollView = this.t;
        if (nestedScrollView != null) {
            if (this.C == z && this.D == z2) {
                return;
            }
            this.C = z;
            this.D = z2;
            if (!z && !z2) {
                nestedScrollView.setClipToOutline(false);
            } else {
                nestedScrollView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.quick.QuickSearch.9
                    @Override // android.view.ViewOutlineProvider
                    public final void getOutline(View view, Outline outline) {
                        if (view != null && outline != null) {
                            int i = MainApp.B1;
                            QuickSearch quickSearch = QuickSearch.this;
                            boolean z3 = quickSearch.C;
                            if (z3 && quickSearch.D) {
                                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i);
                            } else if (z3) {
                                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i, i);
                            } else if (quickSearch.D) {
                                outline.setRoundRect(0, -i, view.getWidth(), view.getHeight(), i);
                            }
                        }
                    }
                });
                nestedScrollView.setClipToOutline(true);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new AnonymousClass19());
    }

    public final void p(int i, boolean z) {
        MyManagerLinear myManagerLinear;
        NestedScrollView nestedScrollView = this.t;
        if (nestedScrollView != null) {
            if (z) {
                if (nestedScrollView.getVisibility() == 0) {
                    this.t.setVisibility(4);
                }
                MyClipView myClipView = this.x;
                if (myClipView != null) {
                    myClipView.b();
                }
                if (this.G.getVisibility() != 0) {
                    this.G.setVisibility(0);
                }
                if (i >= 0 && (myManagerLinear = this.I) != null) {
                    myManagerLinear.x0(i);
                    return;
                }
                return;
            }
            if (nestedScrollView.getVisibility() == 4) {
                this.t.setVisibility(0);
            }
            if (this.G.getVisibility() == 0) {
                this.G.setVisibility(4);
            }
        }
    }

    public final void q() {
        if (this.V && !this.R) {
            this.V = false;
            post(new AnonymousClass13());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0115, code lost:
    
        if (r5.getVisibility() != 0) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(boolean r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickSearch.r(boolean, boolean, boolean):void");
    }

    public final void s() {
        WebSearchAdapter webSearchAdapter;
        MyRecyclerView myRecyclerView = this.G;
        if (myRecyclerView == null || myRecyclerView.getVisibility() != 0 || (webSearchAdapter = this.H) == null) {
            return;
        }
        webSearchAdapter.g();
    }

    public void setAutoAdapter(WebSearchAdapter webSearchAdapter) {
        MyRecyclerView myRecyclerView = this.G;
        if (myRecyclerView == null) {
            return;
        }
        this.H = webSearchAdapter;
        if (webSearchAdapter != null) {
            webSearchAdapter.w = myRecyclerView;
        }
        myRecyclerView.setAdapter(webSearchAdapter);
    }

    public void setBusyMode(boolean z) {
        this.R = z;
        if (!z) {
            if (this.S) {
                m();
                return;
            }
            boolean z2 = this.T;
            if (z2) {
                if (z2 && !z) {
                    this.T = false;
                    post(new AnonymousClass11());
                    return;
                }
                return;
            }
            boolean z3 = this.U;
            if (z3) {
                if (z3 && !z) {
                    this.U = false;
                    post(new AnonymousClass12());
                    return;
                }
                return;
            }
            if (this.V) {
                q();
            }
        }
    }

    public void setLoadClip(String str) {
        MyClipView myClipView = this.x;
        if (myClipView != null) {
            myClipView.d(str);
        }
        if (!this.g) {
            if (!TextUtils.isEmpty(str)) {
                this.g = true;
                if (!this.P) {
                    post(new AnonymousClass17());
                    return;
                }
                return;
            }
            if (this.P) {
                return;
            }
            MainApp.J(this.f, new Runnable() { // from class: com.mycompany.app.quick.QuickSearch.16
                @Override // java.lang.Runnable
                public final void run() {
                    QuickSearch quickSearch = QuickSearch.this;
                    boolean T4 = MainUtil.T4(quickSearch.f);
                    if (quickSearch.g == T4) {
                        return;
                    }
                    quickSearch.g = T4;
                    quickSearch.post(new AnonymousClass17());
                }
            });
        }
    }

    public final void t() {
        if (PrefZtri.j0 == 2 && !this.P && this.Q) {
            List list = DataBookRecent.a(this.f).f12912a;
            boolean z = false;
            DataBookRecent.a(this.f).b = false;
            if (list != null && !list.isEmpty()) {
                z = true;
            }
            this.h = z;
            this.e0 = list;
            this.S = true;
            m();
        }
    }
}
