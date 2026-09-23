package com.mycompany.app.quick;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataNews;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.quick.QuickDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebTabGridItem;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class QuickView extends RelativeLayout {
    public static final String[] k0 = {"HEADLINE", "WORLD", "NATION", "BUSINESS", "TECHNOLOGY", "ENTERTAINMENT", "SPORTS", "SCIENCE", "HEALTH"};
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public MyCoverView I;
    public int J;
    public int K;
    public boolean L;
    public boolean M;
    public ExecutorService N;
    public boolean O;
    public boolean P;
    public int Q;
    public boolean R;
    public String S;
    public int T;
    public boolean U;
    public String V;
    public long W;
    public boolean a0;
    public QuickControl b0;

    /* renamed from: c, reason: collision with root package name */
    public final Context f17494c;
    public int c0;
    public long d0;
    public boolean e0;
    public Handler f;
    public boolean f0;
    public boolean g;
    public boolean g0;
    public boolean h;
    public boolean h0;
    public QuickViewListener i;
    public boolean i0;
    public MyButtonImage j;
    public boolean j0;
    public MyRecyclerView k;
    public QuickAdapter l;
    public MyManagerGrid m;
    public QuickDragHelper n;
    public ItemTouchHelper o;
    public boolean p;
    public QuickControl q;
    public boolean r;
    public int s;
    public int t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;
    public boolean y;
    public int z;

    /* renamed from: com.mycompany.app.quick.QuickView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickView$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 implements Runnable {
        public AnonymousClass18() {
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00a7 A[LOOP:0: B:21:0x005a->B:30:0x00a7, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00b2 A[EDGE_INSN: B:31:0x00b2->B:14:0x00b2 BREAK  A[LOOP:0: B:21:0x005a->B:30:0x00a7], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:6:0x00c6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x00c7  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r20 = this;
                r0 = r20
                com.mycompany.app.quick.QuickView r1 = com.mycompany.app.quick.QuickView.this
                android.content.Context r2 = r1.f17494c
                com.mycompany.app.db.book.DbBookQuick r3 = com.mycompany.app.db.book.DbBookQuick.f12946c
                r10 = 0
                if (r2 != 0) goto Lf
                r4 = r10
                r11 = 0
                goto Lc0
            Lf:
                java.lang.String r3 = "0"
                java.lang.String[] r8 = new java.lang.String[]{r3}
                java.lang.String r9 = "_order ASC"
                com.mycompany.app.db.book.DbBookQuick r3 = com.mycompany.app.db.book.DbBookQuick.i(r2)     // Catch: java.lang.Exception -> Lb0
                android.database.sqlite.SQLiteDatabase r4 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> Lb0
                java.lang.String r5 = "DbBookQuick_table"
                java.lang.String r7 = "_secret=?"
                r6 = 0
                android.database.Cursor r13 = com.mycompany.app.db.DbUtil.g(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> Lb0
                if (r13 == 0) goto Lb2
                boolean r3 = r13.moveToFirst()     // Catch: java.lang.Exception -> L97
                if (r3 == 0) goto Lb2
                java.lang.String r3 = "_rsv5"
                int r14 = r13.getColumnIndex(r3)     // Catch: java.lang.Exception -> L97
                java.lang.String r3 = "_rsv1"
                int r15 = r13.getColumnIndex(r3)     // Catch: java.lang.Exception -> L97
                java.lang.String r3 = "_path"
                int r3 = r13.getColumnIndex(r3)     // Catch: java.lang.Exception -> L97
                java.lang.String r4 = "_title"
                int r4 = r13.getColumnIndex(r4)     // Catch: java.lang.Exception -> L97
                java.lang.String r5 = "_icon"
                int r5 = r13.getColumnIndex(r5)     // Catch: java.lang.Exception -> L97
                java.lang.String r6 = "_rsv4"
                int r6 = r13.getColumnIndex(r6)     // Catch: java.lang.Exception -> L97
                java.lang.String r7 = "_order"
                int r7 = r13.getColumnIndex(r7)     // Catch: java.lang.Exception -> L97
            L5a:
                int r8 = r13.getInt(r14)     // Catch: java.lang.Exception -> L97
                java.lang.String r9 = r13.getString(r15)     // Catch: java.lang.Exception -> L97
                java.lang.String r11 = r13.getString(r3)     // Catch: java.lang.Exception -> L97
                java.lang.String r16 = r13.getString(r4)     // Catch: java.lang.Exception -> L97
                r17 = r3
                r3 = r8
                int r8 = r13.getInt(r6)     // Catch: java.lang.Exception -> L97
                r18 = r4
                r4 = r9
                int r9 = r13.getInt(r7)     // Catch: java.lang.Exception -> L97
                if (r8 == 0) goto L88
                r12 = -460552(0xfffffffffff8f8f8, float:NaN)
                if (r8 != r12) goto L80
                goto L88
            L80:
                r12 = r7
                r7 = 0
            L82:
                r10 = r5
                r5 = r11
                r11 = r6
                r6 = r16
                goto L9d
            L88:
                android.graphics.Bitmap r12 = com.mycompany.app.db.book.DbBookQuick.b(r13, r5, r11, r10)     // Catch: java.lang.Exception -> L97
                boolean r19 = com.mycompany.app.main.MainUtil.f6(r12)     // Catch: java.lang.Exception -> L97
                if (r19 == 0) goto L99
                r10 = 1
                com.mycompany.app.main.MainListLoader.g(r11, r12, r10)     // Catch: java.lang.Exception -> L97
                goto L99
            L97:
                r11 = r13
                goto Lb1
            L99:
                r10 = r12
                r12 = r7
                r7 = r10
                goto L82
            L9d:
                com.mycompany.app.db.book.DbBookQuick.z(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L97
                boolean r3 = r13.moveToNext()     // Catch: java.lang.Exception -> L97
                if (r3 != 0) goto La7
                goto Lb2
            La7:
                r5 = r10
                r6 = r11
                r7 = r12
                r3 = r17
                r4 = r18
                r10 = 0
                goto L5a
            Lb0:
                r11 = 0
            Lb1:
                r13 = r11
            Lb2:
                if (r13 == 0) goto Lb7
                r13.close()
            Lb7:
                boolean r3 = com.mycompany.app.pref.PrefZtwo.J
                r10 = 1
                r3 = r3 ^ r10
                r4 = 0
                java.util.ArrayList r11 = com.mycompany.app.db.book.DbBookQuick.k(r2, r10, r3, r4)
            Lc0:
                r1.H = r4
                android.os.Handler r1 = r1.f
                if (r1 != 0) goto Lc7
                return
            Lc7:
                com.mycompany.app.quick.QuickView$18$1 r2 = new com.mycompany.app.quick.QuickView$18$1
                r2.<init>()
                r1.post(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickView.AnonymousClass18.run():void");
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickView$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements QuickDragHelper.QuickDragListener {
        public AnonymousClass6() {
        }

        @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
        public final void a(int i) {
            QuickView quickView = QuickView.this;
            quickView.p = false;
            if (i == 2) {
                quickView.p = true;
            } else if (i == 0 && quickView.l != null && quickView.I == null) {
                quickView.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickViewListener quickViewListener;
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        QuickView quickView2 = QuickView.this;
                        QuickAdapter quickAdapter = quickView2.l;
                        if (quickAdapter != null && quickView2.I == null && quickAdapter.P(quickView2.k) && (quickViewListener = QuickView.this.i) != null) {
                            quickViewListener.v();
                        }
                    }
                });
            }
        }

        @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
        public final boolean b(int i, int i2) {
            QuickView quickView = QuickView.this;
            QuickAdapter quickAdapter = quickView.l;
            if (quickAdapter != null && quickView.I == null) {
                return quickAdapter.N(i, i2);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v3, types: [android.view.View$OnClickListener, java.lang.Object] */
        @Override // com.mycompany.app.quick.QuickDragHelper.QuickDragListener
        public final void c(int i, int i2) {
            QuickView quickView = QuickView.this;
            if (quickView.l == null) {
                return;
            }
            quickView.i0 = true;
            if (quickView.I == null) {
                MyCoverView myCoverView = new MyCoverView(quickView.f17494c, -328966, Math.round(MainApp.E1 / 8.0f), MainApp.E1 * 2);
                quickView.I = myCoverView;
                myCoverView.setVisibility(8);
                quickView.I.setBackColor(-1593835520);
                quickView.I.setOnClickListener(new Object());
                quickView.addView(quickView.I, -1, -1);
                quickView.I.n(true, 1.0f, 200L);
            }
            quickView.J = i;
            quickView.K = i2;
            quickView.z(new Runnable() { // from class: com.mycompany.app.quick.QuickView.6.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i3;
                    int size;
                    QuickAdapter.QuickItem E;
                    QuickAdapter.QuickItem E2;
                    boolean z;
                    QuickView quickView2 = QuickView.this;
                    QuickAdapter quickAdapter = quickView2.l;
                    if (quickAdapter == null) {
                        return;
                    }
                    int i4 = quickView2.J;
                    int i5 = quickView2.K;
                    List list = quickAdapter.n;
                    boolean z2 = false;
                    if (list != null && i4 >= (i3 = quickAdapter.d) && i5 >= i3 && i4 < (size = list.size() - quickAdapter.e) && i5 < size && (E = quickAdapter.E(i4)) != null && (E2 = quickAdapter.E(i5)) != null && !quickAdapter.u) {
                        quickAdapter.u = true;
                        boolean z3 = E.f17363c;
                        if (z3 && E2.f17363c) {
                            int d = DbBookQuick.d(quickAdapter.f, E2.d);
                            if (d == 0) {
                                quickAdapter.u = false;
                            } else {
                                ArrayList e = DbBookQuick.e(quickAdapter.f, E.d);
                                if (e != null && !e.isEmpty()) {
                                    int size2 = e.size();
                                    int i6 = 0;
                                    while (i6 < size2) {
                                        Object obj = e.get(i6);
                                        i6++;
                                        DbBookQuick.A(d, quickAdapter.f, E2.d, ((QuickAdapter.QuickItem) obj).d);
                                        d++;
                                    }
                                    DbBookQuick.v(quickAdapter.f, E.d, false);
                                    E2.l = DbBookQuick.n(quickAdapter.f, E2.d);
                                    quickAdapter.n.remove(E);
                                    quickAdapter.u = false;
                                    z = true;
                                } else {
                                    quickAdapter.u = false;
                                }
                            }
                        } else if (z3) {
                            ArrayList e2 = DbBookQuick.e(quickAdapter.f, E.d);
                            if (e2 != null && !e2.isEmpty()) {
                                int size3 = e2.size();
                                int i7 = 0;
                                int i8 = 0;
                                boolean z4 = true;
                                while (i8 < size3) {
                                    Object obj2 = e2.get(i8);
                                    i8++;
                                    QuickAdapter.QuickItem quickItem = (QuickAdapter.QuickItem) obj2;
                                    if (z4) {
                                        DbBookQuick.u(quickAdapter.f, quickItem.d, E2, E.f, E.h);
                                        z4 = false;
                                    } else {
                                        DbBookQuick.A(i7, quickAdapter.f, E2.d, quickItem.d);
                                    }
                                    i7++;
                                }
                                DbBookQuick.v(quickAdapter.f, E.d, false);
                                E2.l = DbBookQuick.n(quickAdapter.f, E2.d);
                                quickAdapter.n.remove(E);
                                quickAdapter.u = false;
                                z = true;
                            } else {
                                quickAdapter.u = false;
                            }
                        } else {
                            if (E2.f17363c) {
                                int d2 = DbBookQuick.d(quickAdapter.f, E2.d);
                                if (d2 == 0) {
                                    quickAdapter.u = false;
                                } else {
                                    DbBookQuick.A(d2, quickAdapter.f, E2.d, E.d);
                                    E2.l = DbBookQuick.n(quickAdapter.f, E2.d);
                                    quickAdapter.n.remove(E);
                                    quickAdapter.u = false;
                                }
                            } else {
                                DbBookQuick.u(quickAdapter.f, E.d, E2, null, 0);
                                E2.l = DbBookQuick.n(quickAdapter.f, E2.d);
                                quickAdapter.n.remove(E);
                                quickAdapter.u = false;
                            }
                            z = true;
                        }
                        quickView2.L = z;
                        if (!quickView2.l.P(null) || quickView2.L) {
                            z2 = true;
                        }
                        quickView2.L = z2;
                        quickView2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.6.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                QuickView quickView3 = QuickView.this;
                                if (quickView3.l == null) {
                                    return;
                                }
                                if (quickView3.L) {
                                    quickView3.B();
                                    QuickView.this.l.g();
                                    QuickViewListener quickViewListener = QuickView.this.i;
                                    if (quickViewListener != null) {
                                        quickViewListener.v();
                                    }
                                }
                                QuickView.this.F();
                                QuickView quickView4 = QuickView.this;
                                MyCoverView myCoverView2 = quickView4.I;
                                if (myCoverView2 != null) {
                                    myCoverView2.i();
                                    quickView4.removeView(quickView4.I);
                                    quickView4.I = null;
                                }
                                QuickView.this.i0 = false;
                            }
                        });
                    }
                    z = false;
                    quickView2.L = z;
                    if (!quickView2.l.P(null)) {
                    }
                    z2 = true;
                    quickView2.L = z2;
                    quickView2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.6.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            QuickView quickView3 = QuickView.this;
                            if (quickView3.l == null) {
                                return;
                            }
                            if (quickView3.L) {
                                quickView3.B();
                                QuickView.this.l.g();
                                QuickViewListener quickViewListener = QuickView.this.i;
                                if (quickViewListener != null) {
                                    quickViewListener.v();
                                }
                            }
                            QuickView.this.F();
                            QuickView quickView4 = QuickView.this;
                            MyCoverView myCoverView2 = quickView4.I;
                            if (myCoverView2 != null) {
                                myCoverView2.i();
                                quickView4.removeView(quickView4.I);
                                quickView4.I = null;
                            }
                            QuickView.this.i0 = false;
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickView$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface QuickViewListener {
        boolean a();

        boolean b();

        void c(QuickAdapter.QuickItem quickItem, boolean z);

        boolean d();

        void e(QuickAdapter.QuickItem quickItem);

        MyWebBody f();

        boolean g(float f, float f2, int i);

        int h();

        void i(boolean z);

        void j();

        void k();

        void l();

        void m(QuickAdapter.QuickItem quickItem);

        void n(List list);

        void o(QuickAdapter.QuickItem quickItem, int i);

        void p(int i, int i2, int i3, String str, int i4);

        boolean q();

        void r();

        void s(View view);

        void t(int i, String str);

        void u();

        void v();

        void w();

        boolean x();

        void y();
    }

    public QuickView(Context context) {
        super(context);
        this.f17494c = context;
        this.E = true;
    }

    public static void a(QuickView quickView) {
        QuickAdapter quickAdapter;
        if (!quickView.y || (quickAdapter = quickView.l) == null || quickAdapter.d() == 0 || quickView.l.I() - 1 <= 0) {
            return;
        }
        quickView.y = false;
        quickView.k.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.10
            @Override // java.lang.Runnable
            public final void run() {
                QuickView quickView2 = QuickView.this;
                if (quickView2.k != null) {
                    QuickView.d(quickView2);
                    final int i = quickView2.z;
                    quickView2.z = -1;
                    if (i == -1) {
                        return;
                    }
                    quickView2.k.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.10.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyManagerGrid myManagerGrid = QuickView.this.m;
                            if (myManagerGrid != null) {
                                myManagerGrid.x0(i);
                            }
                        }
                    });
                }
            }
        });
    }

    public static void d(QuickView quickView) {
        QuickAdapter quickAdapter;
        int I;
        if (quickView.w && quickView.m != null && (quickAdapter = quickView.l) != null && quickAdapter.I() - 1 > 0) {
            quickView.m.k1(0, -I);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNewsProgress() {
        QuickViewListener quickViewListener = this.i;
        if (quickViewListener == null) {
            return 0;
        }
        return quickViewListener.h();
    }

    public static String l(Context context, String[] strArr) {
        int i;
        if (strArr == null) {
            return "en-US&gl=US&ceid=US:en";
        }
        int i2 = PrefZtwo.N;
        if (i2 < 0 || i2 >= strArr.length) {
            Locale j = MainApp.j();
            if (j != null) {
                String language = j.getLanguage();
                if (!TextUtils.isEmpty(language)) {
                    String country = j.getCountry();
                    if (!TextUtils.isEmpty(country)) {
                        int length = strArr.length;
                        i = 0;
                        while (i < length) {
                            String str = strArr[i];
                            if (str.startsWith(language) && str.startsWith(country, str.lastIndexOf(61) + 1)) {
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
            i = -1;
            if (i == -1) {
                i2 = 27;
            } else {
                i2 = i;
            }
            if (PrefZtwo.N != i2) {
                PrefZtwo.N = i2;
                PrefSet.f(context, 16, i2, "mNewsLang2");
            }
        }
        if (i2 < 0 || i2 >= strArr.length) {
            return "en-US&gl=US&ceid=US:en";
        }
        return strArr[i2];
    }

    public static boolean m(List list) {
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                QuickAdapter.QuickItem quickItem = (QuickAdapter.QuickItem) it.next();
                if (quickItem != null && quickItem.f17362a == 7) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean s() {
        if (TextUtils.isEmpty(PrefZtwo.L)) {
            return false;
        }
        return !"https://news.google.com/rss".equals(PrefZtwo.L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonView(boolean z) {
        MyButtonImage myButtonImage;
        int i;
        if (this.l != null && (myButtonImage = this.j) != null) {
            if (this.g) {
                i = 0;
            } else {
                i = 8;
            }
            myButtonImage.setVisibility(i);
            if (this.l.q) {
                this.j.setEnabled(false);
                return;
            }
            C();
            this.j.setEnabled(true);
            if (PrefSync.k && z && this.l.D() == 0) {
                MainUtil.e8(this.f17494c, R.string.import_no_quick);
            }
        }
    }

    public final boolean A() {
        if (this.k == null || getVisibility() != 0) {
            return false;
        }
        if (r()) {
            if (this.d0 == 0) {
                this.d0 = System.currentTimeMillis();
                return true;
            }
            if (System.currentTimeMillis() - this.d0 > 500) {
                n();
                return true;
            }
            return true;
        }
        this.d0 = 0L;
        return F();
    }

    public final void B() {
        this.e0 = true;
        postDelayed(new Runnable() { // from class: com.mycompany.app.quick.QuickView.20
            @Override // java.lang.Runnable
            public final void run() {
                QuickView.this.e0 = false;
            }
        }, 200L);
    }

    public final void C() {
        if (this.j == null) {
            return;
        }
        if (MainUtil.C5(this.g)) {
            if (!MainApp.K1 && !PrefWeb.U) {
                this.j.setImageResource(R.drawable.outline_arrow_drop_down_black_24);
                this.j.setMaxAlpha(0.7f);
                this.j.l(MainApp.F1, true);
                this.j.k(-1, -1586137739);
                return;
            }
            this.j.setImageResource(R.drawable.outline_arrow_drop_down_dark_24);
            this.j.setMaxAlpha(0.7f);
            this.j.l(MainApp.F1, true);
            this.j.k(-16777216, -1586137739);
            return;
        }
        if (MainApp.K1) {
            this.j.setImageResource(R.drawable.outline_arrow_drop_down_dark_24);
            this.j.setMaxAlpha(0.7f);
            this.j.k(0, -12632257);
        } else {
            this.j.setImageResource(R.drawable.outline_arrow_drop_down_black_24);
            this.j.setMaxAlpha(1.0f);
            this.j.k(0, -2039584);
        }
    }

    public final void D(final boolean z, final boolean z2) {
        MyRecyclerView myRecyclerView;
        if (this.m != null && (myRecyclerView = this.k) != null) {
            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.11
                @Override // java.lang.Runnable
                public final void run() {
                    MyRecyclerView myRecyclerView2;
                    QuickView quickView = QuickView.this;
                    MyManagerGrid myManagerGrid = quickView.m;
                    if (myManagerGrid != null && (myRecyclerView2 = quickView.k) != null) {
                        boolean z3 = z2;
                        boolean z4 = z;
                        int i = 0;
                        if (z3) {
                            if (!z4) {
                                i = myManagerGrid.H() - 1;
                            }
                            quickView.m.x0(i);
                            return;
                        }
                        int height = myRecyclerView2.getHeight() - MainApp.g1;
                        if (z4) {
                            height = -height;
                        }
                        if (PrefZtwo.D) {
                            quickView.k.k0(0, height, false);
                        } else {
                            quickView.k.scrollBy(0, height);
                        }
                    }
                }
            });
        }
    }

    public final void E() {
        boolean z;
        String str;
        boolean x;
        if (this.k == null) {
            return;
        }
        n();
        if (PrefZtwo.K && PrefZtwo.J && this.g) {
            PrefZtwo.K = false;
            PrefSet.d(16, this.f17494c, "mNewsAllow", false);
        }
        if (this.s != PrefZtri.l0 || this.t != PrefZtri.m0 || this.u != PrefPdf.G || this.v != PrefZtri.k0 || this.w != t() || this.x != k(0)) {
            i();
        }
        if (this.r != PrefZtri.i0) {
            v(this.g);
        }
        boolean z2 = PrefZtwo.J;
        if (z2 && PrefZtwo.O) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            str = PrefZtwo.P;
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (this.R && !z2 && this.g) {
            ImageLoader.f().m();
        }
        if (this.R == PrefZtwo.J && this.T == PrefZtwo.N && this.U == z && MainUtil.q5(this.V, str) && MainUtil.q5(this.S, PrefZtwo.L) && this.W == DataNews.a(this.f17494c).f12898c) {
            if (PrefZtwo.J && this.g && this.W != 0 && System.currentTimeMillis() > this.W + 1800000) {
                u(true);
            }
        } else {
            g(false);
        }
        if (PrefZtwo.J && this.g && !this.a0) {
            QuickViewListener quickViewListener = this.i;
            if (quickViewListener == null) {
                x = false;
            } else {
                x = quickViewListener.x();
            }
            if (!x && !m(DataNews.a(this.f17494c).f12897a)) {
                u(true);
            }
        }
        if (this.A && !PrefZtri.h0) {
            this.A = false;
            MyButtonImage myButtonImage = this.j;
            if (myButtonImage != null) {
                myButtonImage.setNoti(false);
            }
        }
        setVisibility(0);
        this.M = false;
    }

    public final boolean F() {
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter == null || this.i == null || !quickAdapter.q) {
            return false;
        }
        quickAdapter.S(-1, false);
        setButtonView(false);
        this.i.i(false);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        QuickAdapter quickAdapter;
        MyRecyclerView myRecyclerView;
        boolean z = true;
        if (r()) {
            if (motionEvent != null) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    if (this.d0 == 0) {
                        this.d0 = System.currentTimeMillis();
                        return true;
                    }
                } else if ((actionMasked == 1 || actionMasked == 3) && System.currentTimeMillis() - this.d0 > 500) {
                    n();
                }
            }
            return true;
        }
        this.d0 = 0L;
        if (PrefZone.z && this.g) {
            if (!this.p && this.i != null && (quickAdapter = this.l) != null && !quickAdapter.q) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 != 0) {
                    if (actionMasked2 != 1) {
                        if (actionMasked2 != 2) {
                            if (actionMasked2 != 3) {
                                if (actionMasked2 == 5) {
                                    if (x()) {
                                        this.i.g(0.0f, 0.0f, 3);
                                    }
                                    this.O = false;
                                }
                            }
                        } else if (this.P) {
                            if (x()) {
                                this.i.g(0.0f, 0.0f, 3);
                            }
                            this.O = false;
                        } else if (x() && this.i.g(motionEvent.getX(), motionEvent.getY(), actionMasked2) && (myRecyclerView = this.k) != null) {
                            myRecyclerView.setPullDown(true);
                        }
                    }
                    if (x()) {
                        this.i.g(motionEvent.getX(), motionEvent.getY(), actionMasked2);
                    }
                    this.O = false;
                } else {
                    if (this.w) {
                        if (!this.P) {
                            if (this.Q != 0) {
                                z = false;
                            }
                            this.O = z;
                        } else {
                            this.O = false;
                        }
                    } else {
                        this.O = !this.P;
                    }
                    if (this.O && !PrefWeb.t && motionEvent.getY() < MainApp.E1) {
                        this.O = false;
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(String str, int i, int i2, String str2) {
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter == null) {
            return;
        }
        quickAdapter.w(str, i, i2, str2);
        setButtonView(false);
    }

    public final void f() {
        QuickAdapter quickAdapter;
        if (t() && (quickAdapter = this.l) != null) {
            if (this.r == PrefZtri.i0 && this.R == PrefZtwo.J) {
                return;
            }
            quickAdapter.U(k(this.k.getHeight()), true);
        }
    }

    public final void g(boolean z) {
        String str;
        if (this.l != null) {
            boolean z2 = false;
            if (PrefZtwo.K && PrefZtwo.J && this.g) {
                PrefZtwo.K = false;
                PrefSet.d(16, this.f17494c, "mNewsAllow", false);
            }
            f();
            boolean z3 = PrefZtwo.J;
            this.R = z3;
            this.S = PrefZtwo.L;
            this.T = PrefZtwo.N;
            if (z3 && PrefZtwo.O) {
                z2 = true;
            }
            this.U = z2;
            if (z2) {
                str = PrefZtwo.P;
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            this.V = str;
            if (z3 && this.g) {
                if (!this.a0) {
                    u(z);
                }
            } else {
                this.W = 0L;
                B();
                this.l.a0(null, true);
                this.D = true;
            }
        }
    }

    public int getTransPos() {
        MyManagerGrid myManagerGrid;
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter == null || (myManagerGrid = quickAdapter.k) == null) {
            return 0;
        }
        return myManagerGrid.U0();
    }

    public final void h(boolean z) {
        int i;
        MyManagerGrid myManagerGrid = this.m;
        if (myManagerGrid != null) {
            if (z) {
                i = this.t;
            } else {
                i = this.s;
            }
            if (i != 0 && myManagerGrid.F != i) {
                myManagerGrid.x1(i);
            }
        }
    }

    public final void i() {
        boolean b;
        if (this.l == null) {
            return;
        }
        if (PrefZtri.l0 == 0) {
            PrefZtri.l0 = 5;
        }
        if (PrefZtri.m0 == 0) {
            PrefZtri.m0 = 5;
        }
        this.s = PrefZtri.l0;
        this.t = PrefZtri.m0;
        this.u = PrefPdf.G;
        this.v = PrefZtri.k0;
        this.w = t();
        this.x = k(0);
        QuickViewListener quickViewListener = this.i;
        if (quickViewListener == null) {
            b = MainUtil.N5(this.f17494c);
        } else {
            b = quickViewListener.b();
        }
        h(b);
        this.l.U(k(this.k.getHeight()), this.w);
        this.l.V();
        B();
        this.l.g();
    }

    public final boolean j() {
        if (this.l == null) {
            return false;
        }
        this.j0 = true;
        z(new Runnable() { // from class: com.mycompany.app.quick.QuickView.16
            @Override // java.lang.Runnable
            public final void run() {
                QuickView quickView = QuickView.this;
                QuickAdapter quickAdapter = quickView.l;
                if (quickAdapter != null) {
                    final boolean x = quickAdapter.x(null);
                    Handler handler = quickView.f;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickView quickView2 = QuickView.this;
                            QuickViewListener quickViewListener = quickView2.i;
                            if (quickViewListener != null) {
                                quickViewListener.j();
                            }
                            if (quickView2.l == null) {
                                return;
                            }
                            if (x) {
                                MainUtil.e8(quickView2.f17494c, R.string.deleted);
                                quickView2.setButtonView(false);
                                QuickViewListener quickViewListener2 = quickView2.i;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.v();
                                }
                            }
                            if (!quickView2.F() && quickView2.l != null) {
                                quickView2.B();
                                quickView2.l.g();
                            }
                            quickView2.j0 = false;
                        }
                    });
                }
            }
        });
        return true;
    }

    public final int k(int i) {
        if (!this.g) {
            return i;
        }
        if (!PrefWeb.v) {
            i -= MainUtil.H3();
        }
        if (!PrefWeb.w) {
            return i - MainUtil.j0();
        }
        return i;
    }

    public final void n() {
        this.d0 = 0L;
        this.e0 = false;
        this.f0 = false;
        this.g0 = false;
        this.h0 = false;
        this.i0 = false;
        this.j0 = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v16, types: [androidx.recyclerview.widget.GridLayoutManager, com.mycompany.app.view.MyManagerGrid] */
    /* JADX WARN: Type inference failed for: r2v8, types: [android.view.View$OnClickListener, java.lang.Object] */
    public final void o() {
        boolean z;
        String str;
        boolean b;
        int i;
        if (this.j != null && this.k != null) {
            this.f = new Handler(Looper.getMainLooper());
            int i2 = 5;
            if (PrefZtri.l0 == 0) {
                PrefZtri.l0 = 5;
            }
            if (PrefZtri.m0 == 0) {
                PrefZtri.m0 = 5;
            }
            this.r = PrefZtri.i0;
            this.s = PrefZtri.l0;
            this.t = PrefZtri.m0;
            this.u = PrefPdf.G;
            this.v = PrefZtri.k0;
            this.w = t();
            int i3 = 0;
            this.x = k(0);
            this.y = this.w;
            this.z = -1;
            boolean z2 = PrefZtwo.J;
            this.R = z2;
            this.S = PrefZtwo.L;
            this.T = PrefZtwo.N;
            if (z2 && PrefZtwo.O) {
                z = true;
            } else {
                z = false;
            }
            this.U = z;
            if (z) {
                str = PrefZtwo.P;
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            this.V = str;
            setColor(false);
            setOnClickListener(new Object());
            if (PrefZtri.h0) {
                this.A = true;
                this.j.setNoti(true);
            }
            this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickView.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QuickView quickView = QuickView.this;
                    if (quickView.i == null) {
                        return;
                    }
                    if (PrefZtri.h0) {
                        PrefZtri.h0 = false;
                        PrefSet.d(17, quickView.f17494c, "mNotiQmenu2", false);
                        quickView.A = false;
                        MyButtonImage myButtonImage = quickView.j;
                        if (myButtonImage != null) {
                            myButtonImage.setNoti(false);
                        }
                    }
                    quickView.i.s(view);
                }
            });
            QuickViewListener quickViewListener = this.i;
            if (quickViewListener == null) {
                b = MainUtil.N5(this.f17494c);
            } else {
                b = quickViewListener.b();
            }
            if (b) {
                i = this.t;
            } else {
                i = this.s;
            }
            if (i != 0) {
                i2 = i;
            }
            ?? gridLayoutManager = new GridLayoutManager(i2);
            this.m = gridLayoutManager;
            gridLayoutManager.K = new GridLayoutManager.SpanSizeLookup() { // from class: com.mycompany.app.quick.QuickView.3
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public final int c(int i4) {
                    QuickAdapter.QuickItem E;
                    int i5;
                    MyManagerGrid myManagerGrid;
                    QuickView quickView = QuickView.this;
                    QuickAdapter quickAdapter = quickView.l;
                    if (quickAdapter == null || (E = quickAdapter.E(i4)) == null || (i5 = E.f17362a) == 0 || i5 == 1 || (myManagerGrid = quickView.m) == null) {
                        return 1;
                    }
                    return myManagerGrid.F;
                }
            };
            B();
            boolean z3 = this.g;
            if (!z3) {
                i3 = 3;
            }
            QuickAdapter quickAdapter = new QuickAdapter(this.f17494c, i3, z3, this.m, new QuickAdapter.QuickListener() { // from class: com.mycompany.app.quick.QuickView.4
                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final boolean b() {
                    String[] strArr = QuickView.k0;
                    QuickView quickView = QuickView.this;
                    QuickViewListener quickViewListener2 = quickView.i;
                    if (quickViewListener2 == null) {
                        return MainUtil.N5(quickView.f17494c);
                    }
                    return quickViewListener2.b();
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void c(QuickAdapter.QuickItem quickItem, boolean z4) {
                    QuickView quickView = QuickView.this;
                    if (quickView.i == null || quickView.M) {
                        return;
                    }
                    quickView.F();
                    quickView.i.c(quickItem, z4);
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final boolean d() {
                    QuickViewListener quickViewListener2 = QuickView.this.i;
                    if (quickViewListener2 == null) {
                        return false;
                    }
                    return quickViewListener2.d();
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void e(QuickAdapter.QuickItem quickItem) {
                    QuickView quickView = QuickView.this;
                    if (quickView.i == null || quickView.M) {
                        return;
                    }
                    quickView.F();
                    quickView.i.e(quickItem);
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final int h() {
                    return QuickView.this.getNewsProgress();
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void k() {
                    QuickView quickView = QuickView.this;
                    if (quickView.i == null || quickView.M) {
                        return;
                    }
                    quickView.F();
                    quickView.i.k();
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void l() {
                    QuickView quickView = QuickView.this;
                    if (quickView.i == null || quickView.M) {
                        return;
                    }
                    quickView.F();
                    quickView.i.l();
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void n(List list) {
                    QuickViewListener quickViewListener2 = QuickView.this.i;
                    if (quickViewListener2 == null) {
                        return;
                    }
                    quickViewListener2.n(list);
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void o(QuickAdapter.QuickHolder quickHolder, int i4) {
                    QuickAdapter quickAdapter2;
                    int width;
                    int height;
                    int i5;
                    int i6;
                    View view;
                    QuickView quickView = QuickView.this;
                    if (!quickView.p && (quickAdapter2 = quickView.l) != null && quickView.i != null && !quickView.M) {
                        if (quickAdapter2.q) {
                            QuickAdapter.QuickItem E = quickAdapter2.E(i4);
                            if (E != null && E.f17362a == 0) {
                                E.j = !E.j;
                                quickAdapter2.y(i4, true);
                            }
                            QuickControl quickControl = quickView.q;
                            if (quickControl != null) {
                                quickControl.c(quickView.l.A(), quickView.l.D());
                                return;
                            }
                            return;
                        }
                        QuickAdapter.QuickItem E2 = quickAdapter2.E(i4);
                        if (E2 != null) {
                            if (!E2.f17363c) {
                                int i7 = E2.f17362a;
                                if (i7 == 0) {
                                    quickView.i.t(i7, MainUtil.q4(null, E2.d));
                                    return;
                                }
                                if (i7 == 1) {
                                    quickView.i.t(i7, null);
                                    return;
                                }
                                if (i7 == 3 && PrefSync.k && quickView.k != null && !quickView.H) {
                                    quickView.H = true;
                                    quickView.h0 = true;
                                    quickView.z(new AnonymousClass18());
                                    return;
                                }
                                return;
                            }
                            MyWebBody f = quickView.i.f();
                            if (f != null) {
                                int[] iArr = new int[2];
                                f.getLocationOnScreen(iArr);
                                int paddingStart = f.getPaddingStart() + iArr[0];
                                int paddingTop = f.getPaddingTop() + iArr[1];
                                quickView.getLocationOnScreen(iArr);
                                int i8 = iArr[0];
                                int i9 = iArr[1];
                                if (quickHolder != null && (view = quickHolder.f1589a) != null) {
                                    int width2 = view.getWidth();
                                    int height2 = view.getHeight();
                                    view.getLocationOnScreen(iArr);
                                    width = (width2 / 2) + (iArr[0] - i8);
                                    height = ((height2 / 2) + (iArr[1] - i9)) - MainApp.F1;
                                    if (MainUtil.O5(quickView.f17494c)) {
                                        width = quickView.getWidth() - width;
                                    }
                                    i5 = width2;
                                    i6 = height2;
                                } else {
                                    int i10 = MainApp.E1 * 5;
                                    width = quickView.getWidth() / 2;
                                    height = quickView.getHeight() / 2;
                                    i5 = i10;
                                    i6 = i5;
                                }
                                quickView.i.p((i8 - paddingStart) + width, (i9 - paddingTop) + height, i5, E2.d, i6);
                            }
                        }
                    }
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void p(boolean z4) {
                    QuickView quickView = QuickView.this;
                    if (quickView.i != null && PrefZtwo.K) {
                        PrefZtwo.K = false;
                        PrefSet.d(16, quickView.f17494c, "mNewsAllow", false);
                        if (PrefZtwo.J != z4) {
                            PrefZtwo.J = z4;
                            PrefSet.d(16, quickView.f17494c, "mNewsUse", z4);
                        }
                        quickView.g(true);
                        if (PrefZtwo.J) {
                            quickView.i.r();
                        }
                    }
                }

                @Override // com.mycompany.app.quick.QuickAdapter.QuickListener
                public final void q(QuickAdapter.QuickHolder quickHolder, int i4) {
                    QuickAdapter quickAdapter2;
                    ItemTouchHelper itemTouchHelper;
                    QuickView quickView = QuickView.this;
                    if (!quickView.p && (quickAdapter2 = quickView.l) != null && quickView.i != null && !quickView.M) {
                        if (!quickAdapter2.q) {
                            quickAdapter2.S(i4, true);
                            quickView.setButtonView(false);
                            quickView.i.i(true);
                        }
                        QuickAdapter.QuickItem E = quickView.l.E(i4);
                        if (E != null && E.f17362a == 0 && (itemTouchHelper = quickView.o) != null) {
                            itemTouchHelper.t(quickHolder);
                        }
                    }
                }
            });
            this.l = quickAdapter;
            quickAdapter.m = new WebTabGridItem.TabGridListener() { // from class: com.mycompany.app.quick.QuickView.5
                @Override // com.mycompany.app.web.WebTabGridItem.TabGridListener
                public final void a() {
                    QuickViewListener quickViewListener2 = QuickView.this.i;
                    if (quickViewListener2 != null) {
                        quickViewListener2.w();
                    }
                }
            };
            QuickDragHelper quickDragHelper = new QuickDragHelper(null, new AnonymousClass6());
            this.n = quickDragHelper;
            ItemTouchHelper itemTouchHelper = new ItemTouchHelper(quickDragHelper);
            this.o = itemTouchHelper;
            itemTouchHelper.i(this.k);
            this.l.U(k(this.k.getHeight()), this.w);
            this.k.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.quick.QuickView.7
                @Override // com.mycompany.app.image.ImageSizeListener
                public final void a(View view, int i4, int i5) {
                    QuickAdapter quickAdapter2;
                    QuickView quickView = QuickView.this;
                    boolean z4 = quickView.w;
                    if (z4 && (quickAdapter2 = quickView.l) != null) {
                        quickAdapter2.U(quickView.k(i5), z4);
                        if (quickView.l.d() == 0) {
                            return;
                        }
                        quickView.B();
                        quickView.l.g();
                        QuickView.a(quickView);
                    }
                }
            });
            this.k.setLayoutManager(this.m);
            this.k.setAdapter(this.l);
            this.k.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.quick.QuickView.8
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void b(RecyclerView recyclerView, int i4, int i5) {
                    QuickViewListener quickViewListener2;
                    QuickView quickView = QuickView.this;
                    MyRecyclerView myRecyclerView = quickView.k;
                    if (myRecyclerView != null) {
                        int computeVerticalScrollOffset = myRecyclerView.computeVerticalScrollOffset();
                        quickView.Q = computeVerticalScrollOffset;
                        if (computeVerticalScrollOffset > 0) {
                            quickView.P = true;
                            quickView.k.w0();
                        } else {
                            quickView.P = false;
                            quickView.k.r0();
                        }
                        if (PrefZtwo.J && quickView.g && (quickViewListener2 = quickView.i) != null) {
                            quickViewListener2.u();
                        }
                    }
                }
            });
        }
    }

    public final void p() {
        MyButtonImage myButtonImage;
        if (this.g) {
            this.a0 = PrefZtwo.J;
            E();
            v(this.g);
            return;
        }
        QuickControl quickControl = this.b0;
        this.b0 = null;
        if (quickControl != null && this.l != null && (myButtonImage = this.j) != null) {
            this.q = quickControl;
            myButtonImage.setVisibility(8);
            if (!this.G) {
                this.G = true;
                this.g0 = true;
                z(new Runnable() { // from class: com.mycompany.app.quick.QuickView.17
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickView quickView = QuickView.this;
                        final ArrayList k = DbBookQuick.k(quickView.f17494c, true, true, quickView.E);
                        quickView.E = false;
                        quickView.G = false;
                        Handler handler = quickView.f;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.17.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                                QuickView quickView2 = QuickView.this;
                                int i = quickView2.c0;
                                if (quickView2.l != null && quickView2.q != null) {
                                    quickView2.B();
                                    QuickView.this.l.Y(k, false);
                                    QuickView quickView3 = QuickView.this;
                                    quickView3.D = true;
                                    quickView3.setQuickEditMode(i);
                                    QuickView quickView4 = QuickView.this;
                                    quickView4.q.c(quickView4.l.A(), QuickView.this.l.D());
                                    QuickView.this.g0 = false;
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    public final void q() {
        Context context = this.f17494c;
        if (context == null) {
            return;
        }
        MyButtonImage myButtonImage = new MyButtonImage(context);
        int i = R.id.quick_view_set;
        myButtonImage.setId(i);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(myButtonImage, new RelativeLayout.LayoutParams(MainApp.g1, MainApp.f1));
        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
        int i2 = MainApp.F1;
        myRecyclerView.setPadding(i2, 0, i2, 0);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRecyclerView.u0(true, true);
        addView(myRecyclerView, a.h(-1, -1, 3, i));
        this.j = myButtonImage;
        this.k = myRecyclerView;
    }

    public final boolean r() {
        if (!this.e0 && !this.f0 && !this.g0 && !this.h0 && !this.i0 && !this.j0) {
            return false;
        }
        return true;
    }

    public void setColor(boolean z) {
        QuickAdapter quickAdapter;
        if (this.k != null) {
            if (this.g) {
                if (MainUtil.U4()) {
                    setBackgroundColor(0);
                } else if (MainApp.K1) {
                    setBackgroundColor(-16777216);
                } else {
                    setBackgroundColor(-1);
                }
            } else if (MainApp.K1) {
                setBackgroundColor(-14606047);
            } else {
                setBackgroundColor(-1);
            }
            C();
            if (z && (quickAdapter = this.l) != null) {
                quickAdapter.h = this.g;
                B();
                this.l.g();
            }
        }
    }

    public void setNewsPrepared(List<QuickAdapter.QuickItem> list) {
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter != null) {
            quickAdapter.a0(list, true);
        }
    }

    public void setNewsProgress(int i) {
        View s;
        QuickAdapter.QuickHolder J;
        MyProgressBar myProgressBar;
        if (this.l != null && w()) {
            QuickAdapter quickAdapter = this.l;
            if (i == 0) {
                quickAdapter.getClass();
                return;
            }
            MyManagerGrid myManagerGrid = quickAdapter.k;
            if (myManagerGrid != null && (s = myManagerGrid.s(quickAdapter.z)) != null && (J = QuickAdapter.J(s)) != null && (myProgressBar = J.z) != null) {
                myProgressBar.i(this, i);
            }
        }
    }

    public void setQuickControl(QuickControl quickControl) {
        this.q = quickControl;
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter != null && quickControl != null) {
            quickControl.c(quickAdapter.A(), this.l.D());
        }
    }

    public void setQuickEditMode(int i) {
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter != null && this.i != null && this.k != null) {
            if (!quickAdapter.q) {
                quickAdapter.q = true;
                QuickAdapter.QuickItem E = quickAdapter.E(i);
                if (E != null && E.f17362a == 0) {
                    E.j = true;
                }
                quickAdapter.g();
            }
            setButtonView(false);
            this.i.i(true);
            this.z = i;
            this.k.postDelayed(new Runnable() { // from class: com.mycompany.app.quick.QuickView.12
                @Override // java.lang.Runnable
                public final void run() {
                    MyManagerGrid myManagerGrid;
                    QuickView quickView = QuickView.this;
                    int i2 = quickView.z;
                    quickView.z = -1;
                    if (i2 != -1 && (myManagerGrid = quickView.m) != null) {
                        myManagerGrid.x0(i2);
                    }
                }
            }, 200L);
        }
    }

    public void setQuickSearch(boolean z) {
        if (this.f != null && z) {
            F();
        }
    }

    public void setTransLoaded(boolean z) {
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter != null) {
            quickAdapter.f0();
            if (!z && quickAdapter.w) {
                quickAdapter.w = false;
                quickAdapter.c0(quickAdapter.o);
            }
        }
    }

    public final boolean t() {
        if (PrefZtwo.y && this.g) {
            return true;
        }
        return false;
    }

    public final void u(boolean z) {
        if (this.l == null) {
            return;
        }
        if (!z) {
            List list = DataNews.a(this.f17494c).f12897a;
            if (m(list)) {
                this.W = DataNews.a(this.f17494c).f12898c;
                B();
                this.l.a0(list, true);
                this.D = true;
                return;
            }
        }
        QuickViewListener quickViewListener = this.i;
        if (quickViewListener != null) {
            quickViewListener.y();
        }
        post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.19
            /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
            /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
            /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
            @Override // java.lang.Runnable
            public final void run() {
                long b;
                int i;
                MyManagerGrid myManagerGrid;
                View s;
                QuickAdapter.QuickHolder J;
                MyProgressBar myProgressBar;
                QuickView quickView = QuickView.this;
                QuickAdapter quickAdapter = quickView.l;
                if (quickAdapter == null) {
                    return;
                }
                long j = quickView.W;
                long j2 = DataNews.a(quickView.f17494c).f12898c;
                if (quickAdapter.f != null) {
                    quickAdapter.R();
                    if (!PrefZtwo.J && PrefZtwo.K) {
                        ArrayList arrayList = new ArrayList();
                        ?? obj = new Object();
                        obj.f17362a = 4;
                        obj.o = 0;
                        arrayList.add(obj);
                        b = DataNews.a(quickAdapter.f).b(arrayList);
                        quickAdapter.a0(arrayList, true);
                    } else {
                        quickAdapter.p = true;
                        List list2 = quickAdapter.o;
                        if (list2 != null && list2.size() > 2) {
                            if (j != j2) {
                                quickAdapter.a0(DataNews.a(quickAdapter.f).f12897a, true);
                            } else {
                                quickAdapter.T(quickAdapter.o);
                                if (quickAdapter.y && (i = quickAdapter.z) != -1 && (myManagerGrid = quickAdapter.k) != null && (s = myManagerGrid.s(i)) != null && (J = QuickAdapter.J(s)) != null && (myProgressBar = J.z) != null) {
                                    quickAdapter.b0(J.D, J.y, myProgressBar);
                                }
                            }
                            j = j2;
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            ?? obj2 = new Object();
                            obj2.f17362a = 5;
                            obj2.o = 0;
                            arrayList2.add(obj2);
                            ?? obj3 = new Object();
                            obj3.f17362a = 6;
                            obj3.o = 1;
                            arrayList2.add(obj3);
                            ?? obj4 = new Object();
                            obj4.f17362a = 8;
                            obj3.o = 2;
                            arrayList2.add(obj4);
                            b = DataNews.a(quickAdapter.f).b(arrayList2);
                            quickAdapter.a0(arrayList2, true);
                        }
                    }
                    j = b;
                }
                quickView.W = j;
            }
        });
    }

    public final void v(boolean z) {
        QuickViewListener quickViewListener;
        if (!this.h && this.l != null && (quickViewListener = this.i) != null) {
            if (z) {
                if (this.B) {
                    this.B = false;
                    this.C = false;
                    Handler handler = this.f;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.13
                            @Override // java.lang.Runnable
                            public final void run() {
                                QuickView quickView = QuickView.this;
                                if (quickView.f == null) {
                                    return;
                                }
                                quickView.invalidate();
                            }
                        });
                        return;
                    }
                    return;
                }
                if (quickViewListener.q()) {
                    this.B = false;
                    this.C = true;
                    return;
                }
            }
            this.B = false;
            this.C = false;
            if (this.g && this.i.a()) {
                Handler handler2 = this.f;
                if (handler2 != null) {
                    handler2.postDelayed(new Runnable() { // from class: com.mycompany.app.quick.QuickView.14
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickView quickView = QuickView.this;
                            quickView.v(quickView.g);
                        }
                    }, 200L);
                    return;
                }
                return;
            }
            f();
            boolean z2 = PrefZtri.i0;
            this.r = z2;
            if (!z2) {
                this.F = false;
                if (this.l != null) {
                    B();
                    this.l.Y(null, true);
                    this.D = true;
                    setButtonView(false);
                    if (this.a0) {
                        this.a0 = false;
                        if (PrefZtwo.J) {
                            u(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.F) {
                return;
            }
            this.F = true;
            this.f0 = true;
            z(new Runnable() { // from class: com.mycompany.app.quick.QuickView.15
                @Override // java.lang.Runnable
                public final void run() {
                    QuickView quickView = QuickView.this;
                    final ArrayList k = DbBookQuick.k(quickView.f17494c, true, !PrefZtwo.J, quickView.E);
                    quickView.E = false;
                    quickView.F = false;
                    Handler handler3 = quickView.f;
                    if (handler3 == null) {
                        return;
                    }
                    handler3.post(new Runnable() { // from class: com.mycompany.app.quick.QuickView.15.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickView quickView2 = QuickView.this;
                            if (quickView2.l == null) {
                                return;
                            }
                            quickView2.B();
                            quickView2.l.Y(k, true);
                            quickView2.D = true;
                            quickView2.setButtonView(false);
                            if (quickView2.a0) {
                                quickView2.a0 = false;
                                if (PrefZtwo.J) {
                                    quickView2.u(false);
                                }
                            }
                            QuickView.a(quickView2);
                            quickView2.f0 = false;
                        }
                    });
                }
            });
        }
    }

    public final boolean w() {
        if (this.l != null && this.i != null && !r() && !this.i.a()) {
            QuickAdapter quickAdapter = this.l;
            if (quickAdapter.y && quickAdapter.z != -1) {
                return true;
            }
        }
        return false;
    }

    public final boolean x() {
        if (this.O && PrefZone.z && this.i != null) {
            return true;
        }
        return false;
    }

    public final void y() {
        if (PrefZtwo.J && this.g) {
            ImageLoader.f().m();
        }
        MyButtonImage myButtonImage = this.j;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j = null;
        }
        MyRecyclerView myRecyclerView = this.k;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k = null;
        }
        QuickAdapter quickAdapter = this.l;
        if (quickAdapter != null) {
            quickAdapter.M();
            this.l = null;
        }
        QuickDragHelper quickDragHelper = this.n;
        if (quickDragHelper != null) {
            quickDragHelper.d = null;
            quickDragHelper.g = null;
            quickDragHelper.h = null;
            this.n = null;
        }
        MyCoverView myCoverView = this.I;
        if (myCoverView != null) {
            myCoverView.i();
            this.I = null;
        }
        MainUtil.R6(this.f);
        this.f = null;
        this.i = null;
        this.m = null;
        this.o = null;
        this.q = null;
        this.N = null;
        this.S = null;
    }

    public final void z(Runnable runnable) {
        ExecutorService executorService = this.N;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f17494c);
            if (executorService == null) {
                return;
            } else {
                this.N = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }
}
