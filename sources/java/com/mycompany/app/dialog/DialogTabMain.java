package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.dialog.DialogDeleteItem;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.TabDragHelper;
import com.mycompany.app.quick.TabSubView;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.web.TabListLongPressGate;
import com.mycompany.app.web.WebTabAdapter;
import com.mycompany.app.web.WebTabBarAdapter;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogTabMain extends DialogCast {
    public static final int[] l1 = {0, 1, 2};
    public static final int[] m1 = {R.string.thumb_mode, R.string.list_mode, R.string.simple_mode};
    public float A0;
    public GestureDetector B0;
    public boolean C0;
    public MySnackbar D0;
    public boolean E0;
    public DialogTabFind F0;
    public WebViewActivity G;
    public boolean G0;
    public Context H;
    public boolean H0;
    public ListTabListener I;
    public ReleaseBackListener I0;
    public List J;
    public boolean J0;
    public final boolean K;
    public boolean K0;
    public boolean L;
    public boolean L0;
    public boolean M;
    public WebTabAdapter.WebTabItem M0;
    public boolean N;
    public WebTabAdapter N0;
    public MyMainRelative O;
    public int O0;
    public FrameLayout P;
    public int P0;
    public MyButtonImage Q;
    public WebTabAdapter.WebTabItem Q0;
    public MyButtonImage R;
    public WebTabAdapter.WebTabItem R0;
    public AppCompatTextView S;
    public int S0;
    public MyButtonCheck T;
    public WebTabAdapter.WebTabItem T0;
    public LinearLayout U;
    public WebTabAdapter.WebTabItem U0;
    public MyButtonRelative V;
    public List V0;
    public ImageView W;
    public int W0;
    public MyButtonRelative X;
    public int X0;
    public ImageView Y;
    public int Y0;
    public TabLayout Z;
    public List Z0;
    public ViewPager2 a0;
    public long a1;
    public ViewPager2.OnPageChangeCallback b0;
    public int b1;
    public TabGrid c0;
    public long c1;
    public TabGrid d0;
    public boolean d1;
    public MyScrollBar e0;
    public boolean e1;
    public MyLineText f0;
    public boolean f1;
    public AppCompatTextView g0;
    public boolean g1;
    public int h0;
    public boolean h1;
    public int i0;
    public boolean i1;
    public MyPopupMenu j0;
    public boolean j1;
    public MyPopupMenu k0;
    public boolean k1;
    public MyPopupMenu l0;
    public MyFadeFrame m0;
    public DialogSetTabRestore n0;
    public DialogDeleteItem o0;
    public DialogDeleteItem p0;
    public DialogTabEdit q0;
    public DialogEditIcon r0;
    public TabSubView s0;
    public boolean t0;
    public boolean u0;
    public boolean v0;
    public boolean w0;
    public int x0;
    public final int y0;
    public float z0;

    /* renamed from: com.mycompany.app.dialog.DialogTabMain$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogTabMain$30, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass30 implements DialogDeleteItem.DelItemListener {

        /* renamed from: com.mycompany.app.dialog.DialogTabMain$30$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogTabMain dialogTabMain = DialogTabMain.this;
                if (dialogTabMain.K0) {
                    dialogTabMain.K0 = false;
                    if (dialogTabMain.L) {
                        TabGrid tabGrid = dialogTabMain.d0;
                        if (tabGrid != null) {
                            tabGrid.a();
                        }
                    } else {
                        TabGrid tabGrid2 = dialogTabMain.c0;
                        if (tabGrid2 != null) {
                            tabGrid2.a();
                        }
                    }
                    Handler handler = dialogTabMain.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.30.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass30 anonymousClass30 = AnonymousClass30.this;
                                DialogTabMain dialogTabMain2 = DialogTabMain.this;
                                int[] iArr = DialogTabMain.l1;
                                dialogTabMain2.B();
                                MainUtil.e8(DialogTabMain.this.H, R.string.deleted);
                            }
                        });
                        return;
                    }
                    return;
                }
                WebTabAdapter x = dialogTabMain.x(dialogTabMain.L);
                if (x != null) {
                    final boolean w = x.w(dialogTabMain.L0);
                    Handler handler2 = dialogTabMain.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.30.1.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass30 anonymousClass30 = AnonymousClass30.this;
                            DialogTabMain dialogTabMain2 = DialogTabMain.this;
                            if (dialogTabMain2.I != null) {
                                if (!w) {
                                    DialogDeleteItem dialogDeleteItem = dialogTabMain2.o0;
                                    if (dialogDeleteItem != null) {
                                        dialogDeleteItem.B(false);
                                        MainUtil.e8(DialogTabMain.this.H, R.string.fail);
                                        return;
                                    }
                                    return;
                                }
                                WebTabAdapter x2 = dialogTabMain2.x(dialogTabMain2.L);
                                if (x2 != null) {
                                    x2.g();
                                    DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                    dialogTabMain3.N(-1, false, dialogTabMain3.L);
                                    DialogTabMain.this.M();
                                    DialogTabMain.this.O();
                                    Handler handler3 = DialogTabMain.this.i;
                                    if (handler3 == null) {
                                        return;
                                    }
                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.30.1.2.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                            DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                            int[] iArr = DialogTabMain.l1;
                                            dialogTabMain4.B();
                                            MainUtil.e8(DialogTabMain.this.H, R.string.deleted);
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass30() {
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void a() {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.o0 == null) {
                return;
            }
            dialogTabMain.m(new AnonymousClass1());
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView) {
            WebTabAdapter.WebTabItem webTabItem;
            int i;
            DialogTabMain dialogTabMain = DialogTabMain.this;
            WebTabAdapter.WebTabItem webTabItem2 = dialogTabMain.M0;
            WebTabAdapter webTabAdapter = dialogTabMain.N0;
            int i2 = dialogTabMain.O0;
            dialogTabMain.M0 = null;
            dialogTabMain.N0 = null;
            if (dialogTabMain.o0 == null || dialogTabMain.H == null) {
                return;
            }
            if (webTabItem2 == null && i2 == 1 && webTabAdapter != null) {
                webTabItem2 = webTabAdapter.F();
            }
            if (webTabItem2 == null) {
                myRoundImage.o(-460552, R.drawable.outline_public_black_24);
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                Context context = dialogTabMain.H;
                if (i2 == 1) {
                    i = R.string.item;
                } else {
                    i = R.string.items;
                }
                sb.append(context.getString(i));
                appCompatTextView.setText(sb.toString());
                return;
            }
            List list = webTabItem2.q;
            if (list != null && !list.isEmpty()) {
                webTabItem = (WebTabAdapter.WebTabItem) webTabItem2.q.get(0);
            } else {
                webTabItem = null;
            }
            String q3 = WebViewActivity.q3(dialogTabMain.H, webTabItem2);
            if (webTabItem != null) {
                myRoundImage.o(0, WebTabBarAdapter.y(webTabItem.g, MainApp.K1));
            } else if (TextUtils.isEmpty(webTabItem2.j)) {
                myRoundImage.p(-460552, R.drawable.outline_public_black_24, q3, null);
            } else if (webTabItem2.j.startsWith("file:///")) {
                if ("file:///android_asset/shortcut.html".equals(webTabItem2.j)) {
                    myRoundImage.o(0, R.drawable.outline_home_black_24);
                } else {
                    myRoundImage.o(0, R.drawable.outline_offline_pin_black_24);
                }
            } else {
                Bitmap n4 = MainUtil.n4(MainUtil.O1(webTabItem2.j));
                if (MainUtil.f6(n4)) {
                    myRoundImage.setIconSmall(true);
                    myRoundImage.setImageBitmap(n4);
                } else {
                    myRoundImage.p(-460552, R.drawable.outline_public_black_24, q3, null);
                }
            }
            appCompatTextView.setText(q3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogTabMain$31, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass31 implements DialogInterface.OnDismissListener {
        public AnonymousClass31() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            int[] iArr = DialogTabMain.l1;
            DialogTabMain dialogTabMain = DialogTabMain.this;
            dialogTabMain.B();
            if (dialogTabMain.K0) {
                dialogTabMain.K0 = false;
                if (dialogTabMain.L) {
                    TabGrid tabGrid = dialogTabMain.d0;
                    if (tabGrid != null) {
                        tabGrid.d();
                        return;
                    }
                    return;
                }
                TabGrid tabGrid2 = dialogTabMain.c0;
                if (tabGrid2 != null) {
                    tabGrid2.d();
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTabMain$33, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass33 implements DialogDeleteItem.DelItemListener {
        public AnonymousClass33() {
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void a() {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.p0 == null) {
                return;
            }
            dialogTabMain.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.33.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebTabAdapter.WebTabItem H;
                    List list;
                    DialogTabMain dialogTabMain2 = DialogTabMain.this;
                    int i = dialogTabMain2.P0;
                    WebTabAdapter x = dialogTabMain2.x(dialogTabMain2.L);
                    if (x != null && (H = x.H(i)) != null && (list = H.q) != null && !list.isEmpty()) {
                        boolean z = true;
                        H.m = true;
                        if (x.J() != 1) {
                            z = false;
                        }
                        final boolean w = x.w(z);
                        Handler handler = dialogTabMain2.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.33.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass33 anonymousClass33 = AnonymousClass33.this;
                                    DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                    if (dialogTabMain3.I != null) {
                                        if (!w) {
                                            DialogDeleteItem dialogDeleteItem = dialogTabMain3.p0;
                                            if (dialogDeleteItem != null) {
                                                dialogDeleteItem.B(false);
                                                MainUtil.e8(DialogTabMain.this.H, R.string.fail);
                                                return;
                                            }
                                            return;
                                        }
                                        WebTabAdapter x2 = dialogTabMain3.x(dialogTabMain3.L);
                                        if (x2 == null) {
                                            return;
                                        }
                                        x2.g();
                                        DialogTabMain.this.A();
                                        DialogTabMain.this.M();
                                        DialogTabMain.this.O();
                                        MainUtil.e8(DialogTabMain.this.H, R.string.deleted);
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            WebTabAdapter.WebTabItem webTabItem = dialogTabMain.Q0;
            WebTabAdapter.WebTabItem webTabItem2 = dialogTabMain.R0;
            dialogTabMain.Q0 = null;
            dialogTabMain.R0 = null;
            if (webTabItem2 == null || dialogTabMain.p0 == null) {
                return;
            }
            String q3 = WebViewActivity.q3(dialogTabMain.H, webTabItem);
            myRoundImage.o(0, WebTabBarAdapter.y(webTabItem2.g, MainApp.K1));
            appCompatTextView.setText(q3);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTabMain$38, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass38 implements DialogEditorText.EditorSetListener {
        public AnonymousClass38() {
        }

        @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
        public final void a(int i, String str) {
            Handler handler = DialogTabMain.this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.38.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebTabAdapter webTabAdapter;
                    WebTabAdapter webTabAdapter2;
                    DialogTabMain dialogTabMain = DialogTabMain.this;
                    if (dialogTabMain.L) {
                        final TabGrid tabGrid = dialogTabMain.d0;
                        if (tabGrid != null && (webTabAdapter2 = tabGrid.o) != null) {
                            int i2 = webTabAdapter2.n;
                            List list = webTabAdapter2.k;
                            if (list != null && i2 >= 0 && i2 < list.size()) {
                                webTabAdapter2.h(i2);
                            }
                            Handler handler2 = DialogTabMain.this.i;
                            if (handler2 != null) {
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.16
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebTabAdapter webTabAdapter3;
                                        TabGrid tabGrid2 = TabGrid.this;
                                        MyManagerGrid myManagerGrid = tabGrid2.p;
                                        if (myManagerGrid != null && (webTabAdapter3 = tabGrid2.o) != null) {
                                            myManagerGrid.x0(webTabAdapter3.n);
                                        }
                                    }
                                });
                            }
                        }
                    } else {
                        final TabGrid tabGrid2 = dialogTabMain.c0;
                        if (tabGrid2 != null && (webTabAdapter = tabGrid2.o) != null) {
                            int i3 = webTabAdapter.n;
                            List list2 = webTabAdapter.k;
                            if (list2 != null && i3 >= 0 && i3 < list2.size()) {
                                webTabAdapter.h(i3);
                            }
                            Handler handler3 = DialogTabMain.this.i;
                            if (handler3 != null) {
                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.16
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebTabAdapter webTabAdapter3;
                                        TabGrid tabGrid22 = TabGrid.this;
                                        MyManagerGrid myManagerGrid = tabGrid22.p;
                                        if (myManagerGrid != null && (webTabAdapter3 = tabGrid22.o) != null) {
                                            myManagerGrid.x0(webTabAdapter3.n);
                                        }
                                    }
                                });
                            }
                        }
                    }
                    Handler handler4 = dialogTabMain.i;
                    if (handler4 == null) {
                        return;
                    }
                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.38.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebTabAdapter webTabAdapter3;
                            WebTabAdapter webTabAdapter4;
                            DialogTabMain dialogTabMain2 = DialogTabMain.this;
                            if (!dialogTabMain2.L) {
                                TabGrid tabGrid3 = dialogTabMain2.d0;
                                if (tabGrid3 != null && (webTabAdapter4 = tabGrid3.o) != null) {
                                    int i4 = webTabAdapter4.n;
                                    List list3 = webTabAdapter4.k;
                                    if (list3 != null && i4 >= 0 && i4 < list3.size()) {
                                        webTabAdapter4.h(i4);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            TabGrid tabGrid4 = dialogTabMain2.c0;
                            if (tabGrid4 != null && (webTabAdapter3 = tabGrid4.o) != null) {
                                int i5 = webTabAdapter3.n;
                                List list4 = webTabAdapter3.k;
                                if (list4 != null && i5 >= 0 && i5 < list4.size()) {
                                    webTabAdapter3.h(i5);
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTabMain$41, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass41 implements TabSubView.TabSubListener {

        /* renamed from: a, reason: collision with root package name */
        public int f14762a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f14763c;
        public int d;
        public boolean e;

        /* renamed from: com.mycompany.app.dialog.DialogTabMain$41$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass3 implements Runnable {
            public AnonymousClass3() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                AnonymousClass41 anonymousClass41 = AnonymousClass41.this;
                int i = anonymousClass41.d;
                DialogTabMain dialogTabMain = DialogTabMain.this;
                WebTabAdapter x = dialogTabMain.x(dialogTabMain.L);
                if (x == null) {
                    dialogTabMain.k1 = false;
                    return;
                }
                anonymousClass41.e = x.y(i);
                Handler handler = dialogTabMain.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.41.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass41 anonymousClass412 = AnonymousClass41.this;
                        boolean z = anonymousClass412.e;
                        TabSubView tabSubView = DialogTabMain.this.s0;
                        if (tabSubView != null) {
                            tabSubView.setDeleted(z);
                        }
                        Handler handler2 = DialogTabMain.this.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.41.3.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                AnonymousClass41 anonymousClass413 = AnonymousClass41.this;
                                DialogTabMain dialogTabMain2 = DialogTabMain.this;
                                int i2 = anonymousClass413.d;
                                if (anonymousClass413.e) {
                                    if (dialogTabMain2.x(dialogTabMain2.L) != null) {
                                        DialogTabMain.t(dialogTabMain2, i2);
                                        MainUtil.e8(dialogTabMain2.H, R.string.deleted);
                                    }
                                } else {
                                    MainUtil.e8(dialogTabMain2.H, R.string.fail);
                                }
                                DialogTabMain.this.k1 = false;
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass41() {
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void a(long j) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            WebTabAdapter x = dialogTabMain.x(dialogTabMain.L);
            if (x == null) {
                return;
            }
            x.l = j;
            dialogTabMain.O();
            dialogTabMain.v0 = true;
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void b(int i, long j) {
            WebTabAdapter x;
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.I == null || (x = dialogTabMain.x(dialogTabMain.L)) == null) {
                return;
            }
            x.Q();
            x.l = j;
            x.T(true);
            DialogTabMain.t(dialogTabMain, i);
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void c(int i) {
            WebTabAdapter x;
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.I == null || (x = dialogTabMain.x(dialogTabMain.L)) == null) {
                return;
            }
            x.T(true);
            DialogTabMain.t(dialogTabMain, i);
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void d(int i) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            DialogTabMain.v(dialogTabMain, i, dialogTabMain.L);
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void e(int i, int i2) {
            WebTabAdapter x;
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.I == null || (x = dialogTabMain.x(dialogTabMain.L)) == null) {
                return;
            }
            x.O(i, i2);
            dialogTabMain.O();
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void f(int i) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.k1) {
                return;
            }
            dialogTabMain.k1 = true;
            this.d = i;
            dialogTabMain.m(new AnonymousClass3());
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void g() {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.I == null) {
                return;
            }
            dialogTabMain.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.41.2
                @Override // java.lang.Runnable
                public final void run() {
                    WebTabAdapter x;
                    DialogTabMain dialogTabMain2 = DialogTabMain.this;
                    if (dialogTabMain2.I == null || (x = dialogTabMain2.x(dialogTabMain2.L)) == null) {
                        return;
                    }
                    x.v();
                }
            });
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void h(int i, boolean z, boolean z2) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (!dialogTabMain.j1) {
                dialogTabMain.j1 = true;
                this.f14762a = i;
                this.b = z;
                this.f14763c = z2;
                if (dialogTabMain.I == null) {
                    return;
                }
                dialogTabMain.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.41.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass41 anonymousClass41 = AnonymousClass41.this;
                        boolean z3 = anonymousClass41.b;
                        DialogTabMain dialogTabMain2 = DialogTabMain.this;
                        if (dialogTabMain2.I != null) {
                            WebTabAdapter x = dialogTabMain2.x(dialogTabMain2.L);
                            if (x == null) {
                                dialogTabMain2.j1 = false;
                                return;
                            }
                            x.x(z3, false);
                            Handler handler = dialogTabMain2.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.41.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    TabSubView tabSubView;
                                    AnonymousClass41 anonymousClass412 = AnonymousClass41.this;
                                    int i2 = anonymousClass412.f14762a;
                                    boolean z4 = anonymousClass412.f14763c;
                                    DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                    DialogTabMain.t(dialogTabMain3, i2);
                                    if (!z4 && (tabSubView = dialogTabMain3.s0) != null) {
                                        tabSubView.n();
                                    }
                                    DialogTabMain.this.j1 = false;
                                }
                            });
                        }
                    }
                });
            }
        }

        @Override // com.mycompany.app.quick.TabSubView.TabSubListener
        public final void i() {
            int[] iArr = DialogTabMain.l1;
            DialogTabMain.this.D();
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTabMain$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogTabMain dialogTabMain = DialogTabMain.this;
            if (dialogTabMain.I == null || dialogTabMain.d1) {
                return;
            }
            dialogTabMain.d1 = true;
            boolean z = PrefSync.k;
            boolean z2 = dialogTabMain.L;
            if (z == z2) {
                WebTabAdapter x = dialogTabMain.x(z2);
                if (x != null && x.J() != 0) {
                    DialogTabMain.u(dialogTabMain, dialogTabMain.L);
                    return;
                } else {
                    dialogTabMain.dismiss();
                    return;
                }
            }
            dialogTabMain.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.7.1
                /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                @Override // java.lang.Runnable
                public final void run() {
                    int i;
                    DialogTabMain dialogTabMain2 = DialogTabMain.this;
                    WebTabAdapter x2 = dialogTabMain2.x(dialogTabMain2.L);
                    if (x2 != null) {
                        List list = x2.j;
                        if (list != null) {
                            i = list.size();
                        } else {
                            i = 0;
                        }
                        ?? obj = new Object();
                        obj.f19520c = DbBookTab.f(list);
                        obj.d = DbBookTab.j(i, list);
                        obj.h = i;
                        obj.j = WebViewActivity.o3();
                        obj.k = WebViewActivity.q3(dialogTabMain2.H, obj);
                        obj.l = PrefWeb.j;
                        boolean z3 = dialogTabMain2.L;
                        if (z3) {
                            PrefSync.m = i;
                        } else {
                            PrefSync.l = i;
                        }
                        DbBookTab.o(dialogTabMain2.H, obj, z3);
                        Handler handler = dialogTabMain2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.7.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                DialogTabMain.u(dialogTabMain3, dialogTabMain3.L);
                            }
                        });
                    }
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface ListTabListener {
        void a(int i, List list);

        int b();

        void c(boolean z, List list, int i, boolean z2);

        void d(boolean z, List list, int i, boolean z2);

        void e();
    }

    /* loaded from: classes3.dex */
    public interface ReleaseBackListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public class TabGrid {
        public int A;
        public boolean B;
        public final Runnable C = new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.17
            @Override // java.lang.Runnable
            public final void run() {
                MyRecyclerView myRecyclerView;
                TabGrid tabGrid = TabGrid.this;
                DialogTabMain dialogTabMain = DialogTabMain.this;
                if (dialogTabMain.e0 != null && (myRecyclerView = tabGrid.h) != null && dialogTabMain.i0 != 0 && dialogTabMain.h0 != 0) {
                    int height = myRecyclerView.getHeight();
                    int i = dialogTabMain.i0;
                    int i2 = height / i;
                    int i3 = i2 + 1;
                    if (height % i > 0) {
                        i3 = i2 + 2;
                    }
                    int J = tabGrid.o.J();
                    int i4 = dialogTabMain.h0;
                    int i5 = J / i4;
                    int i6 = i5 + 1;
                    if (J % i4 > 0) {
                        i6 = i5 + 2;
                    }
                    dialogTabMain.e0.p(i3, i6);
                }
                tabGrid.B = false;
            }
        };

        /* renamed from: a, reason: collision with root package name */
        public final boolean f14779a;
        public List b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f14780c;
        public long d;
        public int e;
        public int f;
        public FrameLayout g;
        public MyRecyclerView h;
        public ImageView i;
        public MyCoverView j;
        public AppCompatTextView k;
        public ImageView l;
        public MyRoundLinear m;
        public MyButtonText n;
        public WebTabAdapter o;
        public MyManagerGrid p;
        public TabDragHelper q;
        public ItemTouchHelper r;
        public boolean s;
        public int t;
        public boolean u;
        public boolean v;
        public WebTabAdapter.WebTabItem w;
        public boolean x;
        public boolean y;
        public WebTabAdapter.WebTabItem z;

        /* renamed from: com.mycompany.app.dialog.DialogTabMain$TabGrid$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements View.OnClickListener {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
        public TabGrid(boolean z) {
            int i;
            Context context;
            int i2;
            this.f14779a = z;
            Context context2 = DialogTabMain.this.H;
            if (context2 == null) {
                return;
            }
            FrameLayout frameLayout = new FrameLayout(context2);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            MyRecyclerView myRecyclerView = new MyRecyclerView(context2);
            int i3 = MainApp.q1;
            myRecyclerView.setPadding(i3, 0, i3, 0);
            myRecyclerView.setVerticalScrollBarEnabled(false);
            myRecyclerView.setHorizontalScrollBarEnabled(false);
            frameLayout.addView(myRecyclerView, -1, -1);
            ImageView imageView = new ImageView(context2);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setImageResource(R.drawable.logo_gray);
            imageView.setVisibility(8);
            frameLayout.addView(imageView, -1, -1);
            MyCoverView myCoverView = new MyCoverView(context2);
            myCoverView.setVisibility(8);
            frameLayout.addView(myCoverView, -1, -1);
            this.g = frameLayout;
            this.h = myRecyclerView;
            this.i = imageView;
            this.j = myCoverView;
            if (z && DialogTabMain.this.M && (context = DialogTabMain.this.H) != null) {
                MyRoundLinear myRoundLinear = new MyRoundLinear(context);
                myRoundLinear.setOrientation(1);
                frameLayout.addView(myRoundLinear, -1, -1);
                View view = new View(context);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                layoutParams.weight = 1.0f;
                myRoundLinear.addView(view, layoutParams);
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                appCompatTextView.setSingleLine(true);
                appCompatTextView.setTextSize(1, 18.0f);
                LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(appCompatTextView, R.string.secret_mode, -2, -2);
                e.gravity = 1;
                myRoundLinear.addView(appCompatTextView, e);
                View view2 = new View(context);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                layoutParams2.weight = 1.0f;
                myRoundLinear.addView(view2, layoutParams2);
                ImageView imageView2 = new ImageView(context);
                int G = (int) MainUtil.G(context, 84.0f);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(G, G);
                layoutParams3.gravity = 1;
                myRoundLinear.addView(imageView2, layoutParams3);
                View view3 = new View(context);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                layoutParams4.weight = 1.0f;
                myRoundLinear.addView(view3, layoutParams4);
                MyButtonText myButtonText = new MyButtonText(context);
                myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                myButtonText.setMinHeight(MainApp.f1);
                myButtonText.setGravity(17);
                myButtonText.setTextSize(1, 16.0f);
                myButtonText.setText(R.string.unlock);
                myButtonText.setBgNorFixed(true);
                myButtonText.setRoundRect(true);
                myButtonText.setRoundRadius(MainApp.F1);
                int G2 = (int) MainUtil.G(context, 24.0f);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams5.setMarginStart(G2);
                layoutParams5.setMarginEnd(G2);
                myRoundLinear.addView(myButtonText, layoutParams5);
                View view4 = new View(context);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
                layoutParams6.weight = 1.0f;
                myRoundLinear.addView(view4, layoutParams6);
                this.k = appCompatTextView;
                this.l = imageView2;
                this.m = myRoundLinear;
                this.n = myButtonText;
                if (MainApp.K1) {
                    appCompatTextView.setTextColor(-328966);
                    this.l.setBackgroundResource(R.drawable.outline_lock_dark_84);
                    this.n.setTextColor(-328966);
                    this.n.u(-16777216, -14211289);
                } else {
                    appCompatTextView.setTextColor(-16777216);
                    this.l.setBackgroundResource(R.drawable.outline_lock_black_84);
                    this.n.setTextColor(-16777216);
                    this.n.u(-2039584, -3092272);
                }
                this.m.c(true, true);
                MyRoundLinear myRoundLinear2 = this.m;
                if (MainApp.K1) {
                    i2 = -14606047;
                } else {
                    i2 = -328966;
                }
                myRoundLinear2.setColor(i2);
                this.m.setOnClickListener(new Object());
                this.n.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        boolean z2;
                        DialogTabMain dialogTabMain = DialogTabMain.this;
                        if (dialogTabMain.G != null) {
                            int i4 = PrefSecret.s;
                            if (i4 == 0) {
                                z2 = false;
                            } else {
                                z2 = PrefSecret.u;
                            }
                            if (!z2) {
                                return;
                            }
                            Intent i22 = MainUtil.i2(dialogTabMain.H, i4);
                            i22.putExtra("EXTRA_TYPE", 2);
                            dialogTabMain.G.t0(i22, 3);
                        }
                    }
                });
            }
            if (PrefZone.C != 0) {
                this.h.setPadding(MainApp.G1, MainApp.F1, MainApp.G1, MainApp.F1);
            }
            MyRecyclerView myRecyclerView2 = this.h;
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -328966;
            }
            myRecyclerView2.setBackgroundColor(i);
        }

        public final void a() {
            WebTabAdapter webTabAdapter = this.o;
            if (webTabAdapter != null) {
                webTabAdapter.v();
            }
        }

        public final void b(final boolean z) {
            MyCoverView myCoverView = this.j;
            if (myCoverView == null) {
                return;
            }
            myCoverView.n(true, 1.0f, 200L);
            DialogTabMain.this.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.3
                /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                @Override // java.lang.Runnable
                public final void run() {
                    ArrayList arrayList;
                    WebTabAdapter.WebTabItem webTabItem;
                    int i;
                    WebTabAdapter.WebTabItem webTabItem2;
                    TabGrid tabGrid = TabGrid.this;
                    boolean z2 = tabGrid.f14779a;
                    DialogTabMain dialogTabMain = DialogTabMain.this;
                    Context context = dialogTabMain.H;
                    if (context != null) {
                        if (PrefSync.k == z2 && !z) {
                            tabGrid.b = dialogTabMain.J;
                        } else {
                            tabGrid.b = DbBookTab.d(context, z2);
                        }
                        if (dialogTabMain.H != null) {
                            long j = 0;
                            tabGrid.d = 0L;
                            tabGrid.e = 0;
                            tabGrid.f = 0;
                            List list = tabGrid.b;
                            if (list != null && !list.isEmpty()) {
                                WebTabAdapter webTabAdapter = tabGrid.o;
                                if (webTabAdapter != null) {
                                    tabGrid.e = webTabAdapter.m;
                                } else if (z2) {
                                    tabGrid.e = PrefSync.m;
                                } else {
                                    tabGrid.e = PrefSync.l;
                                }
                                ArrayList arrayList2 = new ArrayList();
                                ?? obj = new Object();
                                obj.f19519a = 1;
                                arrayList2.add(obj);
                                Iterator it = list.iterator();
                                long j2 = 0;
                                long j3 = 0;
                                int i2 = 0;
                                int i3 = 0;
                                int i4 = 0;
                                int i5 = 1;
                                ArrayList arrayList3 = null;
                                while (it.hasNext()) {
                                    WebTabAdapter.WebTabItem webTabItem3 = (WebTabAdapter.WebTabItem) it.next();
                                    if (webTabItem3 != null) {
                                        long j4 = j;
                                        ?? obj2 = new Object();
                                        Iterator it2 = it;
                                        obj2.f19520c = webTabItem3.f19520c;
                                        obj2.d = webTabItem3.d;
                                        long j5 = webTabItem3.e;
                                        obj2.e = j5;
                                        obj2.f = webTabItem3.f;
                                        obj2.g = webTabItem3.g;
                                        obj2.h = i4;
                                        obj2.j = webTabItem3.j;
                                        obj2.k = webTabItem3.k;
                                        obj2.l = webTabItem3.l;
                                        obj2.p = webTabItem3.p;
                                        if (arrayList3 == null || (j5 != j4 && j5 == j3)) {
                                            i = i5;
                                        } else {
                                            if (arrayList3.size() == 1) {
                                                WebTabAdapter.WebTabItem webTabItem4 = (WebTabAdapter.WebTabItem) arrayList3.get(0);
                                                webTabItem4.e = j4;
                                                webTabItem4.f = null;
                                                webTabItem4.g = 0;
                                                webTabItem4.q = null;
                                                webTabItem2 = webTabItem4;
                                            } else {
                                                ?? obj3 = new Object();
                                                obj3.q = arrayList3;
                                                webTabItem2 = obj3;
                                            }
                                            int i6 = i5;
                                            webTabItem2.i = i6;
                                            arrayList2.add(webTabItem2);
                                            i = i6 + 1;
                                            arrayList3 = null;
                                        }
                                        int i7 = tabGrid.e;
                                        int i8 = obj2.h;
                                        if (i7 == i8) {
                                            tabGrid.d = obj2.f19520c;
                                            tabGrid.f = i;
                                        } else {
                                            j2 = obj2.f19520c;
                                            i3 = i;
                                            i2 = i8;
                                        }
                                        if (obj2.e != 0) {
                                            if (arrayList3 == null) {
                                                arrayList3 = new ArrayList();
                                            }
                                            arrayList3.add(obj2);
                                        } else {
                                            obj2.i = i;
                                            arrayList2.add(obj2);
                                            i++;
                                        }
                                        i5 = i;
                                        i4++;
                                        j3 = obj2.e;
                                        it = it2;
                                        j = 0;
                                    }
                                }
                                int i9 = i5;
                                if (tabGrid.d == 0) {
                                    tabGrid.d = j2;
                                    tabGrid.e = i2;
                                    tabGrid.f = i3;
                                }
                                if (arrayList3 != null) {
                                    if (arrayList3.size() == 1) {
                                        WebTabAdapter.WebTabItem webTabItem5 = (WebTabAdapter.WebTabItem) arrayList3.get(0);
                                        webTabItem5.e = 0L;
                                        webTabItem5.f = null;
                                        webTabItem5.g = 0;
                                        webTabItem5.q = null;
                                        webTabItem = webTabItem5;
                                    } else {
                                        ?? obj4 = new Object();
                                        obj4.q = arrayList3;
                                        webTabItem = obj4;
                                    }
                                    webTabItem.i = i9;
                                    arrayList2.add(webTabItem);
                                }
                                arrayList = arrayList2;
                            } else {
                                arrayList = null;
                            }
                            tabGrid.f14780c = arrayList;
                            Handler handler = dialogTabMain.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.3.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final TabGrid tabGrid2 = TabGrid.this;
                                    DialogTabMain dialogTabMain2 = DialogTabMain.this;
                                    MyCoverView myCoverView2 = tabGrid2.j;
                                    if (myCoverView2 != null) {
                                        myCoverView2.f(false);
                                        WebTabAdapter webTabAdapter2 = tabGrid2.o;
                                        if (webTabAdapter2 != null) {
                                            webTabAdapter2.b0(tabGrid2.b, tabGrid2.f14780c, tabGrid2.d, tabGrid2.e, tabGrid2.f);
                                            tabGrid2.b = null;
                                            tabGrid2.f14780c = null;
                                            int[] iArr = DialogTabMain.l1;
                                            dialogTabMain2.M();
                                            dialogTabMain2.J();
                                            return;
                                        }
                                        MyManagerGrid myManagerGrid = new MyManagerGrid(dialogTabMain2.h0) { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.4
                                            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                                            public final void e0(RecyclerView recyclerView, int i10, int i11) {
                                                super.e0(recyclerView, i10, i11);
                                                TabGrid tabGrid3 = TabGrid.this;
                                                if (tabGrid3.s) {
                                                    tabGrid3.s = false;
                                                    WebTabAdapter webTabAdapter3 = tabGrid3.o;
                                                    if (webTabAdapter3 != null) {
                                                        webTabAdapter3.D(true);
                                                    }
                                                }
                                            }

                                            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                                            public final void h0(RecyclerView recyclerView, int i10, int i11) {
                                                super.h0(recyclerView, i10, i11);
                                                TabGrid tabGrid3 = TabGrid.this;
                                                if (tabGrid3.s) {
                                                    tabGrid3.s = false;
                                                    WebTabAdapter webTabAdapter3 = tabGrid3.o;
                                                    if (webTabAdapter3 != null) {
                                                        webTabAdapter3.D(false);
                                                    }
                                                }
                                            }

                                            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                                            public final void k0(RecyclerView.State state) {
                                                super.k0(state);
                                                TabGrid.this.s = false;
                                            }
                                        };
                                        tabGrid2.p = myManagerGrid;
                                        myManagerGrid.K = new GridLayoutManager.SpanSizeLookup() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.5
                                            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                                            public final int c(int i10) {
                                                MyManagerGrid myManagerGrid2;
                                                if (i10 != 0 || (myManagerGrid2 = TabGrid.this.p) == null) {
                                                    return 1;
                                                }
                                                return myManagerGrid2.F;
                                            }
                                        };
                                        WebTabAdapter webTabAdapter3 = new WebTabAdapter(dialogTabMain2.H, tabGrid2.h, false, tabGrid2.b, tabGrid2.f14780c, tabGrid2.d, tabGrid2.e, tabGrid2.f, dialogTabMain2.h0, dialogTabMain2.i0, tabGrid2.f14779a, tabGrid2.p);
                                        tabGrid2.o = webTabAdapter3;
                                        tabGrid2.b = null;
                                        tabGrid2.f14780c = null;
                                        if (PrefSync.k == tabGrid2.f14779a) {
                                            webTabAdapter3.A = tabGrid2.h;
                                            webTabAdapter3.B = null;
                                        }
                                        webTabAdapter3.x = new WebTabAdapter.WebTabListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.6
                                            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
                                            public final void a() {
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (PrefZone.E) {
                                                    int[] iArr2 = DialogTabMain.l1;
                                                    int i10 = dialogTabMain3.y0;
                                                    if (dialogTabMain3.a0 != null) {
                                                        float f = dialogTabMain3.z0;
                                                        if (f < i10 || f > r2.getWidth() - i10) {
                                                            return;
                                                        }
                                                    }
                                                    ViewPager2 viewPager2 = dialogTabMain3.a0;
                                                    if (viewPager2 != null) {
                                                        viewPager2.setUserInputEnabled(false);
                                                    }
                                                }
                                            }

                                            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
                                            public final void b(View view, final int i10) {
                                                final DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                MyPopupMenu myPopupMenu = dialogTabMain3.l0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogTabMain3.u = null;
                                                        myPopupMenu.a();
                                                        dialogTabMain3.l0 = null;
                                                    }
                                                    if (view == null) {
                                                        return;
                                                    }
                                                    ArrayList arrayList4 = new ArrayList();
                                                    arrayList4.add(new MyPopupAdapter.PopMenuItem(0, R.string.edit));
                                                    arrayList4.add(new MyPopupAdapter.PopMenuItem(1, R.string.delete));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogTabMain3.G, dialogTabMain3.O, view, arrayList4, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogTabMain.23
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr2 = DialogTabMain.l1;
                                                            DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                                            MyPopupMenu myPopupMenu3 = dialogTabMain4.l0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogTabMain4.u = null;
                                                                myPopupMenu3.a();
                                                                dialogTabMain4.l0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view2, int i11) {
                                                            WebTabAdapter.WebTabItem H;
                                                            List list2;
                                                            WebTabAdapter.WebTabItem webTabItem6;
                                                            List list3;
                                                            WebTabAdapter.WebTabItem H2;
                                                            List list4;
                                                            WebTabAdapter.WebTabItem webTabItem7;
                                                            List list5;
                                                            int i12 = i10;
                                                            final DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                                            if (i11 == 0) {
                                                                if (dialogTabMain4.G != null && !dialogTabMain4.G()) {
                                                                    dialogTabMain4.C();
                                                                    WebTabAdapter x = dialogTabMain4.x(dialogTabMain4.L);
                                                                    if (x != null && (H2 = x.H(i12)) != null && (list4 = H2.q) != null && !list4.isEmpty() && (webTabItem7 = (WebTabAdapter.WebTabItem) H2.q.get(0)) != null && (list5 = x.j) != null && !list5.isEmpty()) {
                                                                        dialogTabMain4.S0 = i12;
                                                                        dialogTabMain4.T0 = H2;
                                                                        dialogTabMain4.U0 = webTabItem7;
                                                                        dialogTabMain4.V0 = list5;
                                                                        dialogTabMain4.I(false, new ReleaseBackListener() { // from class: com.mycompany.app.dialog.DialogTabMain.35
                                                                            @Override // com.mycompany.app.dialog.DialogTabMain.ReleaseBackListener
                                                                            public final void a() {
                                                                                final DialogTabMain dialogTabMain5 = DialogTabMain.this;
                                                                                WebTabAdapter.WebTabItem webTabItem8 = dialogTabMain5.T0;
                                                                                WebTabAdapter.WebTabItem webTabItem9 = dialogTabMain5.U0;
                                                                                List list6 = dialogTabMain5.V0;
                                                                                dialogTabMain5.T0 = null;
                                                                                dialogTabMain5.U0 = null;
                                                                                dialogTabMain5.V0 = null;
                                                                                WebViewActivity webViewActivity = dialogTabMain5.G;
                                                                                if (webViewActivity == null) {
                                                                                    return;
                                                                                }
                                                                                DialogTabEdit dialogTabEdit = new DialogTabEdit(webViewActivity, list6, webTabItem8.q, webTabItem9.f, webTabItem9.g, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogTabMain.36
                                                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                                                    public final void a() {
                                                                                        DialogTabMain dialogTabMain6 = DialogTabMain.this;
                                                                                        int i13 = dialogTabMain6.S0;
                                                                                        if (dialogTabMain6.I != null) {
                                                                                            dialogTabMain6.C();
                                                                                            WebTabAdapter x2 = dialogTabMain6.x(dialogTabMain6.L);
                                                                                            if (x2 != null) {
                                                                                                x2.h(i13);
                                                                                            }
                                                                                            if (PrefSync.k == dialogTabMain6.L) {
                                                                                                dialogTabMain6.I.e();
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                });
                                                                                dialogTabMain5.q0 = dialogTabEdit;
                                                                                dialogTabEdit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogTabMain.37
                                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                                        int[] iArr2 = DialogTabMain.l1;
                                                                                        DialogTabMain.this.C();
                                                                                    }
                                                                                });
                                                                            }
                                                                        });
                                                                        return true;
                                                                    }
                                                                    return true;
                                                                }
                                                                return true;
                                                            }
                                                            if (dialogTabMain4.G != null && !dialogTabMain4.G()) {
                                                                dialogTabMain4.A();
                                                                WebTabAdapter x2 = dialogTabMain4.x(dialogTabMain4.L);
                                                                if (x2 != null && (H = x2.H(i12)) != null && (list2 = H.q) != null && !list2.isEmpty() && (webTabItem6 = (WebTabAdapter.WebTabItem) H.q.get(0)) != null && (list3 = x2.j) != null && !list3.isEmpty()) {
                                                                    dialogTabMain4.P0 = i12;
                                                                    dialogTabMain4.Q0 = H;
                                                                    dialogTabMain4.R0 = webTabItem6;
                                                                    dialogTabMain4.I(false, new ReleaseBackListener() { // from class: com.mycompany.app.dialog.DialogTabMain.32
                                                                        @Override // com.mycompany.app.dialog.DialogTabMain.ReleaseBackListener
                                                                        public final void a() {
                                                                            final DialogTabMain dialogTabMain5 = DialogTabMain.this;
                                                                            WebViewActivity webViewActivity = dialogTabMain5.G;
                                                                            if (webViewActivity == null) {
                                                                                return;
                                                                            }
                                                                            DialogDeleteItem dialogDeleteItem = new DialogDeleteItem(webViewActivity, new AnonymousClass33());
                                                                            dialogTabMain5.p0 = dialogDeleteItem;
                                                                            dialogDeleteItem.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogTabMain.34
                                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                                    int[] iArr2 = DialogTabMain.l1;
                                                                                    DialogTabMain.this.A();
                                                                                }
                                                                            });
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                                return true;
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogTabMain3.l0 = myPopupMenu2;
                                                    dialogTabMain3.u = myPopupMenu2;
                                                }
                                            }

                                            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
                                            public final void c(WebTabAdapter.WebTabHolder webTabHolder, int i10) {
                                                WebTabAdapter webTabAdapter4;
                                                int width;
                                                int height;
                                                TabGrid tabGrid3 = TabGrid.this;
                                                final DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (!dialogTabMain3.C0 && (webTabAdapter4 = tabGrid3.o) != null && dialogTabMain3.I != null) {
                                                    if (webTabAdapter4.u) {
                                                        webTabAdapter4.f0(i10);
                                                        dialogTabMain3.M();
                                                        AppCompatTextView appCompatTextView = dialogTabMain3.S;
                                                        if (appCompatTextView != null) {
                                                            appCompatTextView.setText(MainUtil.h3(tabGrid3.o.E(), tabGrid3.o.J()));
                                                        }
                                                        MyButtonCheck myButtonCheck = dialogTabMain3.T;
                                                        if (myButtonCheck != null) {
                                                            myButtonCheck.q(tabGrid3.o.N(), true);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    WebTabAdapter.WebTabItem H = webTabAdapter4.H(i10);
                                                    if (H != null) {
                                                        if (H.q == null) {
                                                            DialogTabMain.v(dialogTabMain3, H.h, tabGrid3.f14779a);
                                                            return;
                                                        }
                                                        int[] iArr2 = new int[2];
                                                        dialogTabMain3.O.getLocationOnScreen(iArr2);
                                                        int i11 = iArr2[0];
                                                        int i12 = iArr2[1];
                                                        View view = webTabHolder.f1589a;
                                                        if (view != null) {
                                                            int width2 = view.getWidth();
                                                            int height2 = view.getHeight();
                                                            view.getLocationOnScreen(iArr2);
                                                            width = (width2 / 2) + (iArr2[0] - i11);
                                                            height = (height2 / 2) + (iArr2[1] - i12);
                                                            if (MainUtil.O5(dialogTabMain3.H)) {
                                                                width = dialogTabMain3.O.getWidth() - width;
                                                            }
                                                        } else {
                                                            width = dialogTabMain3.O.getWidth() / 2;
                                                            height = dialogTabMain3.O.getHeight() / 2;
                                                        }
                                                        int i13 = width + i11;
                                                        int i14 = height + i12;
                                                        List list2 = H.q;
                                                        WebTabAdapter webTabAdapter5 = tabGrid3.o;
                                                        long j6 = webTabAdapter5.l;
                                                        int i15 = webTabAdapter5.m;
                                                        if (dialogTabMain3.G != null && !dialogTabMain3.G()) {
                                                            dialogTabMain3.D();
                                                            dialogTabMain3.v0 = false;
                                                            dialogTabMain3.W0 = i13;
                                                            dialogTabMain3.X0 = i14;
                                                            dialogTabMain3.Y0 = i10;
                                                            dialogTabMain3.Z0 = list2;
                                                            dialogTabMain3.a1 = j6;
                                                            dialogTabMain3.b1 = i15;
                                                            dialogTabMain3.I(false, new ReleaseBackListener() { // from class: com.mycompany.app.dialog.DialogTabMain.40
                                                                @Override // com.mycompany.app.dialog.DialogTabMain.ReleaseBackListener
                                                                public final void a() {
                                                                    final DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                                                    int i16 = dialogTabMain4.W0;
                                                                    int i17 = dialogTabMain4.X0;
                                                                    int i18 = dialogTabMain4.Y0;
                                                                    List list3 = dialogTabMain4.Z0;
                                                                    long j7 = dialogTabMain4.a1;
                                                                    int i19 = dialogTabMain4.b1;
                                                                    dialogTabMain4.Z0 = null;
                                                                    if (dialogTabMain4.O != null && dialogTabMain4.s0 == null) {
                                                                        TabSubView tabSubView = new TabSubView(dialogTabMain4.G);
                                                                        dialogTabMain4.s0 = tabSubView;
                                                                        tabSubView.h(dialogTabMain4.G, null, i16, i17, dialogTabMain4.h0, i18, list3, j7, i19, dialogTabMain4.L, new AnonymousClass41());
                                                                        dialogTabMain4.s0.i();
                                                                        Handler handler2 = dialogTabMain4.i;
                                                                        if (handler2 != null) {
                                                                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.42
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    TabSubView tabSubView2;
                                                                                    DialogTabMain dialogTabMain5 = DialogTabMain.this;
                                                                                    MyMainRelative myMainRelative = dialogTabMain5.O;
                                                                                    if (myMainRelative != null && (tabSubView2 = dialogTabMain5.s0) != null) {
                                                                                        myMainRelative.addView(tabSubView2, -1, -1);
                                                                                        dialogTabMain5.s0.p();
                                                                                    }
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    }
                                                }
                                            }

                                            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
                                            public final void d(int i10) {
                                                TabGrid.this.g(i10);
                                            }

                                            @Override // com.mycompany.app.web.WebTabAdapter.WebTabListener
                                            public final void e(WebTabAdapter.WebTabHolder webTabHolder, int i10) {
                                                WebTabAdapter webTabAdapter4;
                                                TabGrid tabGrid3 = TabGrid.this;
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (!dialogTabMain3.C0 && (webTabAdapter4 = tabGrid3.o) != null) {
                                                    if (webTabAdapter4.u) {
                                                        webTabAdapter4.selectRangeTo(i10);
                                                        dialogTabMain3.M();
                                                        AppCompatTextView appCompatTextView = dialogTabMain3.S;
                                                        if (appCompatTextView != null) {
                                                            appCompatTextView.setText(MainUtil.h3(tabGrid3.o.E(), tabGrid3.o.J()));
                                                        }
                                                        MyButtonCheck myButtonCheck = dialogTabMain3.T;
                                                        if (myButtonCheck != null) {
                                                            myButtonCheck.q(tabGrid3.o.N(), true);
                                                        }
                                                        return;
                                                    }
                                                    View view = TabListLongPressGate.anchorFor(webTabHolder);
                                                    ItemTouchHelper itemTouchHelper = null;
                                                    WebTabAdapter.WebTabItem H = tabGrid3.o.H(i10);
                                                    if (H != null && H.f19519a == 0) {
                                                        itemTouchHelper = tabGrid3.r;
                                                    }
                                                    TabListLongPressGate.armMain(dialogTabMain3, view, webTabHolder, itemTouchHelper, i10, tabGrid3.f14779a);
                                                }
                                            }
                                        };
                                        TabDragHelper tabDragHelper = new TabDragHelper(null, null, false, new TabDragHelper.TabDragListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.7
                                            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
                                            public final void a(int i10) {
                                                Handler handler2;
                                                TabGrid tabGrid3 = TabGrid.this;
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (i10 == 1) {
                                                    dialogTabMain3.w0 = PrefZone.E;
                                                    dialogTabMain3.C0 = false;
                                                } else if (i10 == 2) {
                                                    dialogTabMain3.w0 = false;
                                                    dialogTabMain3.C0 = true;
                                                } else if (i10 == 0 && tabGrid3.o != null && dialogTabMain3.I != null && (handler2 = dialogTabMain3.i) != null) {
                                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.7.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            TabGrid tabGrid4 = TabGrid.this;
                                                            WebTabAdapter webTabAdapter4 = tabGrid4.o;
                                                            if (webTabAdapter4 != null) {
                                                                DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                                                if (dialogTabMain4.I != null) {
                                                                    if (dialogTabMain4.C0) {
                                                                        webTabAdapter4.T(true);
                                                                        DialogTabMain.this.O();
                                                                    }
                                                                    DialogTabMain.this.C0 = false;
                                                                }
                                                            }
                                                        }
                                                    });
                                                }
                                            }

                                            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
                                            public final boolean b(int i10, int i11) {
                                                WebTabAdapter webTabAdapter4 = TabGrid.this.o;
                                                if (webTabAdapter4 == null) {
                                                    return false;
                                                }
                                                return webTabAdapter4.S(i10, i11);
                                            }

                                            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
                                            public final void c(int i10, int i11) {
                                                TabGrid tabGrid3 = TabGrid.this;
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (tabGrid3.o == null) {
                                                    return;
                                                }
                                                boolean z3 = tabGrid3.f14779a;
                                                int[] iArr2 = DialogTabMain.l1;
                                                dialogTabMain3.N(-1, false, z3);
                                                tabGrid3.o.M(tabGrid3.h, i10, i11);
                                                dialogTabMain3.O();
                                                dialogTabMain3.w0 = false;
                                                dialogTabMain3.C0 = false;
                                            }

                                            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
                                            public final void d(int i10) {
                                                TabGrid tabGrid3 = TabGrid.this;
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                if (dialogTabMain3.w0) {
                                                    dialogTabMain3.w0 = false;
                                                    tabGrid3.g(i10);
                                                }
                                            }

                                            @Override // com.mycompany.app.quick.TabDragHelper.TabDragListener
                                            public final void e(int i10) {
                                                DialogTabMain.this.x0 = i10;
                                            }
                                        });
                                        tabGrid2.q = tabDragHelper;
                                        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(tabDragHelper);
                                        tabGrid2.r = itemTouchHelper;
                                        itemTouchHelper.i(tabGrid2.h);
                                        tabGrid2.o.Z(tabGrid2.h.getHeight(), dialogTabMain2.h0, dialogTabMain2.i0, PrefZtwo.z);
                                        tabGrid2.h.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.8
                                            @Override // com.mycompany.app.image.ImageSizeListener
                                            public final void a(View view, int i10, int i11) {
                                                DialogTabMain.this.H();
                                            }
                                        });
                                        tabGrid2.h.setLayoutManager(tabGrid2.p);
                                        tabGrid2.h.setAdapter(tabGrid2.o);
                                        tabGrid2.h.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.9
                                            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                            public final void b(RecyclerView recyclerView, int i10, int i11) {
                                                TabGrid tabGrid3 = TabGrid.this;
                                                MyRecyclerView myRecyclerView = tabGrid3.h;
                                                if (myRecyclerView != null) {
                                                    if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                                        tabGrid3.h.w0();
                                                    } else {
                                                        tabGrid3.h.r0();
                                                    }
                                                    Runnable runnable = tabGrid3.C;
                                                    DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                    MyScrollBar myScrollBar = dialogTabMain3.e0;
                                                    if (myScrollBar != null && tabGrid3.h != null && dialogTabMain3.i0 != 0 && dialogTabMain3.h0 != 0 && !tabGrid3.B) {
                                                        tabGrid3.B = true;
                                                        myScrollBar.removeCallbacks(runnable);
                                                        dialogTabMain3.e0.post(runnable);
                                                    }
                                                }
                                            }
                                        });
                                        tabGrid2.h.setVisibility(4);
                                        Handler handler2 = dialogTabMain2.i;
                                        if (handler2 == null) {
                                            return;
                                        }
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.10
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i10;
                                                int i11;
                                                TabGrid tabGrid3 = TabGrid.this;
                                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                                WebTabAdapter webTabAdapter4 = tabGrid3.o;
                                                if (webTabAdapter4 != null && tabGrid3.p != null) {
                                                    if (PrefZtwo.z) {
                                                        i10 = webTabAdapter4.g - 1;
                                                        if (i10 > 0 && (i11 = dialogTabMain3.h0) > 0) {
                                                            i10 -= webTabAdapter4.G(PrefZone.C) * ((webTabAdapter4.n - 1) / i11);
                                                        }
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (i10 > 0) {
                                                        tabGrid3.p.k1(0, (-tabGrid3.o.g) + 1);
                                                    } else {
                                                        tabGrid3.p.x0(tabGrid3.o.n);
                                                    }
                                                    int[] iArr2 = DialogTabMain.l1;
                                                    dialogTabMain3.M();
                                                    Handler handler3 = dialogTabMain3.i;
                                                    if (handler3 != null) {
                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.10.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                                                TabGrid tabGrid4 = TabGrid.this;
                                                                MyRecyclerView myRecyclerView = tabGrid4.h;
                                                                if (myRecyclerView != null && tabGrid4.j != null) {
                                                                    myRecyclerView.setVisibility(0);
                                                                    TabGrid.this.j.f(false);
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }

        public final void c() {
            MyRecyclerView myRecyclerView = this.h;
            if (myRecyclerView != null) {
                myRecyclerView.s0();
                this.h = null;
            }
            MyCoverView myCoverView = this.j;
            if (myCoverView != null) {
                myCoverView.i();
                this.j = null;
            }
            MyRoundLinear myRoundLinear = this.m;
            if (myRoundLinear != null) {
                myRoundLinear.a();
                this.m = null;
            }
            MyButtonText myButtonText = this.n;
            if (myButtonText != null) {
                myButtonText.t();
                this.n = null;
            }
            WebTabAdapter webTabAdapter = this.o;
            if (webTabAdapter != null) {
                webTabAdapter.P();
                this.o = null;
            }
            TabDragHelper tabDragHelper = this.q;
            if (tabDragHelper != null) {
                tabDragHelper.p();
                this.q = null;
            }
            this.b = null;
            this.f14780c = null;
            this.g = null;
            this.i = null;
            this.k = null;
            this.l = null;
            this.p = null;
            this.r = null;
        }

        public final void d() {
            WebTabAdapter webTabAdapter = this.o;
            if (webTabAdapter != null) {
                DialogTabMain dialogTabMain = DialogTabMain.this;
                if (!dialogTabMain.f1) {
                    dialogTabMain.f1 = true;
                    int U = webTabAdapter.U();
                    if (U == -1) {
                        dialogTabMain.f1 = false;
                        return;
                    }
                    this.A = U;
                    Handler handler = dialogTabMain.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.14
                        @Override // java.lang.Runnable
                        public final void run() {
                            final TabGrid tabGrid = TabGrid.this;
                            DialogTabMain dialogTabMain2 = DialogTabMain.this;
                            int i = tabGrid.A;
                            WebTabAdapter webTabAdapter2 = tabGrid.o;
                            if (webTabAdapter2 == null) {
                                dialogTabMain2.f1 = false;
                                return;
                            }
                            webTabAdapter2.c0(i);
                            Handler handler2 = dialogTabMain2.i;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.15
                                @Override // java.lang.Runnable
                                public final void run() {
                                    TabGrid tabGrid2 = TabGrid.this;
                                    DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                    WebTabAdapter webTabAdapter3 = tabGrid2.o;
                                    if (webTabAdapter3 != null) {
                                        webTabAdapter3.T(false);
                                        int[] iArr = DialogTabMain.l1;
                                        dialogTabMain3.M();
                                        dialogTabMain3.O();
                                    }
                                    DialogTabMain.this.f1 = false;
                                }
                            });
                        }
                    });
                }
            }
        }

        public final void e() {
            int i;
            int i2 = -14606047;
            if (this.n != null) {
                if (MainApp.K1) {
                    this.k.setTextColor(-328966);
                    this.l.setBackgroundResource(R.drawable.outline_secret_mode_dark_20);
                    this.n.setTextColor(-328966);
                    this.n.u(-16777216, -14211289);
                } else {
                    this.k.setTextColor(-16777216);
                    this.l.setBackgroundResource(R.drawable.outline_secret_mode_black_20);
                    this.n.setTextColor(-16777216);
                    this.n.u(-2039584, -3092272);
                }
                MyRoundLinear myRoundLinear = this.m;
                if (MainApp.K1) {
                    i = -14606047;
                } else {
                    i = -328966;
                }
                myRoundLinear.setColor(i);
            }
            MyRecyclerView myRecyclerView = this.h;
            if (myRecyclerView != null) {
                if (!MainApp.K1) {
                    i2 = -328966;
                }
                myRecyclerView.setBackgroundColor(i2);
            }
        }

        public final void f() {
            if (this.h != null && this.o != null) {
                MyManagerGrid myManagerGrid = this.p;
                int i = myManagerGrid.F;
                DialogTabMain dialogTabMain = DialogTabMain.this;
                int i2 = dialogTabMain.h0;
                if (i != i2) {
                    myManagerGrid.x1(i2);
                }
                this.o.Z(this.h.getHeight(), dialogTabMain.h0, dialogTabMain.i0, PrefZtwo.z);
            }
        }

        public final void g(int i) {
            if (this.o != null) {
                DialogTabMain dialogTabMain = DialogTabMain.this;
                if (dialogTabMain.e1) {
                    return;
                }
                dialogTabMain.e1 = true;
                this.t = i;
                dialogTabMain.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTabMain dialogTabMain2 = DialogTabMain.this;
                        TabGrid tabGrid = dialogTabMain2.c0;
                        if (tabGrid != null) {
                            tabGrid.a();
                        }
                        TabGrid tabGrid2 = dialogTabMain2.d0;
                        if (tabGrid2 != null) {
                            tabGrid2.a();
                        }
                        Handler handler = dialogTabMain2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.11.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                boolean z;
                                boolean z2;
                                MySnackbar mySnackbar;
                                final TabGrid tabGrid3 = TabGrid.this;
                                DialogTabMain dialogTabMain3 = DialogTabMain.this;
                                int i2 = tabGrid3.t;
                                WebTabAdapter webTabAdapter = tabGrid3.o;
                                if (webTabAdapter == null) {
                                    return;
                                }
                                WebTabAdapter.WebTabItem H = webTabAdapter.H(i2);
                                if (H == null) {
                                    dialogTabMain3.e1 = false;
                                    return;
                                }
                                boolean z3 = true;
                                if (H.q != null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!PrefZone.F && !z) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2 && (mySnackbar = dialogTabMain3.D0) != null) {
                                    mySnackbar.i(false);
                                    dialogTabMain3.D0 = null;
                                }
                                WebTabAdapter webTabAdapter2 = tabGrid3.o;
                                if (i2 != webTabAdapter2.n) {
                                    z3 = false;
                                }
                                tabGrid3.s = z3;
                                if (!webTabAdapter2.R(i2, z2)) {
                                    dialogTabMain3.e1 = false;
                                    return;
                                }
                                tabGrid3.u = z;
                                tabGrid3.v = z2;
                                tabGrid3.w = H;
                                dialogTabMain3.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.12
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        TabGrid tabGrid4 = TabGrid.this;
                                        boolean z4 = tabGrid4.u;
                                        boolean z5 = tabGrid4.v;
                                        WebTabAdapter.WebTabItem webTabItem = tabGrid4.w;
                                        tabGrid4.w = null;
                                        WebTabAdapter webTabAdapter3 = tabGrid4.o;
                                        if (webTabAdapter3 != null) {
                                            webTabAdapter3.x(z5, true);
                                            tabGrid4.x = z4;
                                            tabGrid4.y = z5;
                                            tabGrid4.z = webTabItem;
                                            Handler handler2 = DialogTabMain.this.i;
                                            if (handler2 == null) {
                                                return;
                                            }
                                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.12.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final TabGrid tabGrid5 = TabGrid.this;
                                                    DialogTabMain dialogTabMain4 = DialogTabMain.this;
                                                    boolean z6 = tabGrid5.x;
                                                    boolean z7 = tabGrid5.y;
                                                    WebTabAdapter.WebTabItem webTabItem2 = tabGrid5.z;
                                                    tabGrid5.z = null;
                                                    if (tabGrid5.o != null) {
                                                        int[] iArr = DialogTabMain.l1;
                                                        dialogTabMain4.M();
                                                        dialogTabMain4.O();
                                                        if (z6) {
                                                            DialogTabMain.w(dialogTabMain4, webTabItem2);
                                                        } else if (z7) {
                                                            MySnackbar mySnackbar2 = new MySnackbar(dialogTabMain4.G);
                                                            dialogTabMain4.D0 = mySnackbar2;
                                                            FrameLayout frameLayout = dialogTabMain4.P;
                                                            int i3 = R.string.undelete;
                                                            MySnackbar.SnackbarListener snackbarListener = new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.13
                                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                                public final void a() {
                                                                }

                                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                                public final void b() {
                                                                    DialogTabMain dialogTabMain5 = DialogTabMain.this;
                                                                    if (dialogTabMain5.g1) {
                                                                        return;
                                                                    }
                                                                    dialogTabMain5.g1 = true;
                                                                    dialogTabMain5.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.13.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                                                                            TabGrid.this.a();
                                                                            DialogTabMain.this.g1 = false;
                                                                        }
                                                                    });
                                                                }

                                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                                public final void c() {
                                                                    TabGrid.this.d();
                                                                }

                                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                                public final void onDismiss() {
                                                                    DialogTabMain dialogTabMain5 = DialogTabMain.this;
                                                                    if (dialogTabMain5.h1) {
                                                                        return;
                                                                    }
                                                                    dialogTabMain5.h1 = true;
                                                                    dialogTabMain5.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.TabGrid.13.2
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                                                                            TabGrid.this.a();
                                                                            DialogTabMain.this.h1 = false;
                                                                        }
                                                                    });
                                                                    dialogTabMain5.D0 = null;
                                                                }
                                                            };
                                                            mySnackbar2.i = 2;
                                                            mySnackbar2.x(frameLayout, 0, i3, 0, snackbarListener);
                                                        }
                                                    }
                                                    DialogTabMain.this.e1 = false;
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        });
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ void n(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            View view;
            final DialogTabMain dialogTabMain = DialogTabMain.this;
            if (i == 1) {
                TabGrid tabGrid = dialogTabMain.d0;
                if (tabGrid != null) {
                    view = tabGrid.g;
                }
                view = null;
            } else {
                TabGrid tabGrid2 = dialogTabMain.c0;
                if (tabGrid2 != null) {
                    view = tabGrid2.g;
                }
                view = null;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                int[] iArr = DialogTabMain.l1;
                Handler handler = dialogTabMain.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.17
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogTabMain.this.dismiss();
                        }
                    });
                }
            }
            int[] iArr2 = DialogTabMain.l1;
            if (view == null) {
                try {
                    View view2 = new View(dialogTabMain.H);
                    try {
                        view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    } catch (Exception unused2) {
                    }
                    view = view2;
                } catch (Exception unused3) {
                }
            }
            return new RecyclerView.ViewHolder(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogTabMain(com.mycompany.app.web.WebViewActivity r2, java.util.List r3, boolean r4, com.mycompany.app.dialog.DialogTabMain.ListTabListener r5) {
        /*
            r1 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r1.<init>(r2, r0)
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r1.I = r5
            r1.J = r3
            r1.K = r4
            boolean r2 = com.mycompany.app.pref.PrefSync.k
            r1.L = r2
            r3 = 1
            if (r2 != 0) goto L2e
            boolean r2 = com.mycompany.app.pref.PrefSecret.u
            if (r2 == 0) goto L2e
            int r2 = com.mycompany.app.pref.PrefSecret.s
            if (r2 == 0) goto L2e
            r2 = r3
            goto L2f
        L2e:
            r2 = 0
        L2f:
            r1.M = r2
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.E0 = r2
            int r2 = com.mycompany.app.main.MainApp.E1
            int r4 = com.mycompany.app.main.MainApp.G1
            int r2 = r2 + r4
            r1.y0 = r2
            r1.N = r3
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L43
            return
        L43:
            com.mycompany.app.dialog.DialogTabMain$1 r3 = new com.mycompany.app.dialog.DialogTabMain$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogTabMain.<init>(com.mycompany.app.web.WebViewActivity, java.util.List, boolean, com.mycompany.app.dialog.DialogTabMain$ListTabListener):void");
    }

    public static void r(DialogTabMain dialogTabMain) {
        boolean z;
        WebTabAdapter x;
        MySnackbar mySnackbar = dialogTabMain.D0;
        if (mySnackbar != null) {
            mySnackbar.i(false);
            dialogTabMain.D0 = null;
        }
        if (dialogTabMain.I != null) {
            boolean z2 = PrefSync.k;
            if (z2) {
                z = dialogTabMain.u0;
            } else {
                z = dialogTabMain.t0;
            }
            dialogTabMain.t0 = false;
            dialogTabMain.u0 = false;
            if (z && (x = dialogTabMain.x(z2)) != null) {
                dialogTabMain.I.a(x.m, x.j);
            }
        }
        MyPopupMenu myPopupMenu = dialogTabMain.j0;
        if (myPopupMenu != null) {
            dialogTabMain.u = null;
            myPopupMenu.a();
            dialogTabMain.j0 = null;
        }
        dialogTabMain.E();
        MyPopupMenu myPopupMenu2 = dialogTabMain.l0;
        if (myPopupMenu2 != null) {
            dialogTabMain.u = null;
            myPopupMenu2.a();
            dialogTabMain.l0 = null;
        }
        DialogSetTabRestore dialogSetTabRestore = dialogTabMain.n0;
        if (dialogSetTabRestore != null) {
            dialogSetTabRestore.dismiss();
            dialogTabMain.n0 = null;
        }
        dialogTabMain.B();
        dialogTabMain.A();
        dialogTabMain.C();
        DialogEditIcon dialogEditIcon = dialogTabMain.r0;
        if (dialogEditIcon != null) {
            dialogEditIcon.dismiss();
            dialogTabMain.r0 = null;
        }
        dialogTabMain.D();
        dialogTabMain.J();
        ViewPager2 viewPager2 = dialogTabMain.a0;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = dialogTabMain.b0;
        dialogTabMain.a0 = null;
        dialogTabMain.b0 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MyMainRelative myMainRelative = dialogTabMain.O;
        if (myMainRelative != null) {
            myMainRelative.f18855c = null;
            myMainRelative.f = null;
            myMainRelative.g = null;
            myMainRelative.l = null;
            myMainRelative.n = null;
            dialogTabMain.O = null;
        }
        MyButtonImage myButtonImage = dialogTabMain.Q;
        if (myButtonImage != null) {
            myButtonImage.j();
            dialogTabMain.Q = null;
        }
        MyButtonImage myButtonImage2 = dialogTabMain.R;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            dialogTabMain.R = null;
        }
        MyButtonCheck myButtonCheck = dialogTabMain.T;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            dialogTabMain.T = null;
        }
        MyButtonRelative myButtonRelative = dialogTabMain.V;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            dialogTabMain.V = null;
        }
        MyButtonRelative myButtonRelative2 = dialogTabMain.X;
        if (myButtonRelative2 != null) {
            myButtonRelative2.f();
            dialogTabMain.X = null;
        }
        TabGrid tabGrid = dialogTabMain.c0;
        if (tabGrid != null) {
            tabGrid.c();
            dialogTabMain.c0 = null;
        }
        TabGrid tabGrid2 = dialogTabMain.d0;
        if (tabGrid2 != null) {
            tabGrid2.c();
            dialogTabMain.d0 = null;
        }
        MyScrollBar myScrollBar = dialogTabMain.e0;
        if (myScrollBar != null) {
            myScrollBar.k();
            dialogTabMain.e0 = null;
        }
        MyLineText myLineText = dialogTabMain.f0;
        if (myLineText != null) {
            myLineText.u();
            dialogTabMain.f0 = null;
        }
        WebViewActivity webViewActivity = dialogTabMain.G;
        if (webViewActivity != null) {
            webViewActivity.n0(null, false);
            dialogTabMain.G = null;
        }
        dialogTabMain.H = null;
        dialogTabMain.I = null;
        dialogTabMain.J = null;
        dialogTabMain.P = null;
        dialogTabMain.S = null;
        dialogTabMain.U = null;
        dialogTabMain.W = null;
        dialogTabMain.Y = null;
        dialogTabMain.Z = null;
        dialogTabMain.g0 = null;
        dialogTabMain.B0 = null;
        super.dismiss();
    }

    public static MyRecyclerView s(DialogTabMain dialogTabMain, boolean z) {
        if (z) {
            TabGrid tabGrid = dialogTabMain.d0;
            if (tabGrid != null) {
                return tabGrid.h;
            }
            return null;
        }
        TabGrid tabGrid2 = dialogTabMain.c0;
        if (tabGrid2 == null) {
            return null;
        }
        return tabGrid2.h;
    }

    public static void t(DialogTabMain dialogTabMain, int i) {
        WebTabAdapter x;
        List list;
        if (dialogTabMain.s0 == null || (x = dialogTabMain.x(dialogTabMain.L)) == null) {
            return;
        }
        WebTabAdapter.WebTabItem H = x.H(i);
        if (H != null) {
            list = H.q;
        } else {
            list = null;
        }
        dialogTabMain.O();
        dialogTabMain.v0 = true;
        if (list != null && list.size() >= 2) {
            dialogTabMain.s0.o(list, x.l, x.m);
        } else {
            dialogTabMain.D();
        }
    }

    public static void u(DialogTabMain dialogTabMain, boolean z) {
        boolean z2;
        WebTabAdapter webTabAdapter;
        if (dialogTabMain.I == null) {
            return;
        }
        boolean z3 = PrefSync.k;
        if (z3) {
            z2 = dialogTabMain.u0;
        } else {
            z2 = dialogTabMain.t0;
        }
        dialogTabMain.t0 = false;
        dialogTabMain.u0 = false;
        if (z2) {
            webTabAdapter = dialogTabMain.x(z3);
        } else {
            webTabAdapter = null;
        }
        if (webTabAdapter != null) {
            dialogTabMain.I.d(true, webTabAdapter.j, webTabAdapter.m, z);
        } else {
            dialogTabMain.I.d(false, null, 0, z);
        }
    }

    public static void v(DialogTabMain dialogTabMain, int i, boolean z) {
        boolean z2;
        WebTabAdapter webTabAdapter;
        if (dialogTabMain.I == null) {
            return;
        }
        boolean z3 = PrefSync.k;
        if (z3) {
            z2 = dialogTabMain.u0;
        } else {
            z2 = dialogTabMain.t0;
        }
        dialogTabMain.t0 = false;
        dialogTabMain.u0 = false;
        if (z2) {
            webTabAdapter = dialogTabMain.x(z3);
        } else {
            webTabAdapter = null;
        }
        if (webTabAdapter != null) {
            dialogTabMain.I.c(true, webTabAdapter.j, i, z);
        } else {
            dialogTabMain.I.c(false, null, i, z);
        }
    }

    public static void w(DialogTabMain dialogTabMain, WebTabAdapter.WebTabItem webTabItem) {
        boolean z;
        int J;
        if (dialogTabMain.G != null && !dialogTabMain.G()) {
            dialogTabMain.B();
            WebTabAdapter x = dialogTabMain.x(dialogTabMain.L);
            if (x != null) {
                boolean z2 = true;
                if (webTabItem != null) {
                    z = true;
                } else {
                    z = false;
                }
                dialogTabMain.K0 = z;
                if (webTabItem != null) {
                    J = 1;
                } else if (x.u) {
                    J = x.E();
                } else {
                    J = x.J();
                }
                if (J != 0) {
                    if (J != x.J()) {
                        z2 = false;
                    }
                    dialogTabMain.L0 = z2;
                    dialogTabMain.M0 = webTabItem;
                    dialogTabMain.N0 = x;
                    dialogTabMain.O0 = J;
                    if (webTabItem == null) {
                        dialogTabMain.I(false, new ReleaseBackListener() { // from class: com.mycompany.app.dialog.DialogTabMain.29
                            @Override // com.mycompany.app.dialog.DialogTabMain.ReleaseBackListener
                            public final void a() {
                                int[] iArr = DialogTabMain.l1;
                                DialogTabMain dialogTabMain2 = DialogTabMain.this;
                                WebViewActivity webViewActivity = dialogTabMain2.G;
                                if (webViewActivity == null) {
                                    return;
                                }
                                DialogDeleteItem dialogDeleteItem = new DialogDeleteItem(webViewActivity, new AnonymousClass30());
                                dialogTabMain2.o0 = dialogDeleteItem;
                                dialogDeleteItem.setOnDismissListener(new AnonymousClass31());
                            }
                        });
                        return;
                    }
                    WebViewActivity webViewActivity = dialogTabMain.G;
                    if (webViewActivity == null) {
                        return;
                    }
                    DialogDeleteItem dialogDeleteItem = new DialogDeleteItem(webViewActivity, new AnonymousClass30());
                    dialogTabMain.o0 = dialogDeleteItem;
                    dialogDeleteItem.setOnDismissListener(new AnonymousClass31());
                }
            }
        }
    }

    public final void A() {
        DialogDeleteItem dialogDeleteItem = this.p0;
        if (dialogDeleteItem != null) {
            dialogDeleteItem.dismiss();
            this.p0 = null;
        }
    }

    public final void B() {
        DialogDeleteItem dialogDeleteItem = this.o0;
        if (dialogDeleteItem != null) {
            dialogDeleteItem.dismiss();
            this.o0 = null;
        }
    }

    public final void C() {
        DialogTabEdit dialogTabEdit = this.q0;
        if (dialogTabEdit != null) {
            dialogTabEdit.dismiss();
            this.q0 = null;
        }
    }

    public final void D() {
        TabSubView tabSubView = this.s0;
        if (tabSubView != null) {
            tabSubView.j();
            MyMainRelative myMainRelative = this.O;
            if (myMainRelative != null) {
                myMainRelative.removeView(this.s0);
            }
            this.s0 = null;
        }
        if (this.v0) {
            this.v0 = false;
            WebTabAdapter x = x(this.L);
            if (x != null) {
                x.g();
            }
        }
    }

    public final void E() {
        MyPopupMenu myPopupMenu = this.k0;
        if (myPopupMenu != null) {
            this.u = this.j0;
            myPopupMenu.a();
            this.k0 = null;
        }
    }

    public final boolean F() {
        if (!this.d1 && !this.e1 && !this.f1 && !this.g1 && !this.h1 && !this.i1 && !this.j1 && !this.k1) {
            return false;
        }
        return true;
    }

    public final boolean G() {
        if (this.n0 != null || this.o0 != null || this.p0 != null || this.q0 != null || this.r0 != null || this.s0 != null) {
            return true;
        }
        return false;
    }

    public final void H() {
        int i;
        D();
        K();
        I(false, null);
        boolean z = this.E0;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.E0 = z2;
            MyMainRelative myMainRelative = this.O;
            if (myMainRelative != null) {
                int i2 = -328966;
                if (z2) {
                    myMainRelative.b(getWindow(), -16777216);
                    this.Q.setImageResource(R.drawable.outline_chevron_left_dark_24);
                    this.S.setTextColor(-328966);
                    this.R.setImageResource(R.drawable.outline_more_vert_dark_20);
                    this.T.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                    this.W.setImageResource(R.drawable.outline_mood_dark_20);
                    this.Y.setImageResource(R.drawable.outline_secret_mode_dark_20);
                    this.Z.setSelectedTabIndicatorColor(-5197648);
                    this.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                    this.g0.setBackgroundResource(R.drawable.selector_normal_dark);
                    this.V.setBgPreColor(-12632257);
                    this.X.setBgPreColor(-12632257);
                    this.Q.setBgPreColor(-12632257);
                    this.T.setBgPreColor(-12632257);
                    this.R.setBgPreColor(-12632257);
                } else {
                    myMainRelative.b(getWindow(), -460552);
                    this.Q.setImageResource(R.drawable.outline_chevron_left_black_24);
                    this.S.setTextColor(-16777216);
                    this.R.setImageResource(R.drawable.outline_more_vert_black_20);
                    this.T.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                    this.W.setImageResource(R.drawable.outline_mood_black_20);
                    this.Y.setImageResource(R.drawable.outline_secret_mode_black_20);
                    this.Z.setSelectedTabIndicatorColor(-5854742);
                    this.f0.setBackgroundResource(R.drawable.selector_normal_gray);
                    this.g0.setBackgroundResource(R.drawable.selector_normal_gray);
                    this.V.setBgPreColor(553648128);
                    this.X.setBgPreColor(553648128);
                    this.Q.setBgPreColor(553648128);
                    this.T.setBgPreColor(553648128);
                    this.R.setBgPreColor(553648128);
                }
                M();
                MyLineText myLineText = this.f0;
                if (myLineText != null) {
                    if (myLineText.isEnabled()) {
                        MyLineText myLineText2 = this.f0;
                        if (!MainApp.K1) {
                            i2 = -14784824;
                        }
                        myLineText2.setTextColor(i2);
                    } else {
                        MyLineText myLineText3 = this.f0;
                        if (MainApp.K1) {
                            i = -8355712;
                        } else {
                            i = -2434342;
                        }
                        myLineText3.setTextColor(i);
                    }
                }
                TabGrid tabGrid = this.c0;
                if (tabGrid != null) {
                    tabGrid.e();
                    WebTabAdapter webTabAdapter = this.c0.o;
                    if (webTabAdapter != null) {
                        webTabAdapter.g();
                    }
                }
                TabGrid tabGrid2 = this.d0;
                if (tabGrid2 != null) {
                    tabGrid2.e();
                    WebTabAdapter webTabAdapter2 = this.d0.o;
                    if (webTabAdapter2 != null) {
                        webTabAdapter2.g();
                    }
                }
            }
            DialogTabFind dialogTabFind = this.F0;
            if (dialogTabFind != null) {
                dialogTabFind.a();
            }
        }
        if (this.J0) {
            this.J0 = false;
        } else {
            f();
        }
    }

    public final void I(boolean z, ReleaseBackListener releaseBackListener) {
        if (this.i1) {
            return;
        }
        this.i1 = true;
        this.H0 = z;
        this.I0 = releaseBackListener;
        m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.20
            @Override // java.lang.Runnable
            public final void run() {
                DialogTabMain dialogTabMain = DialogTabMain.this;
                TabGrid tabGrid = dialogTabMain.c0;
                if (tabGrid != null) {
                    tabGrid.a();
                }
                TabGrid tabGrid2 = dialogTabMain.d0;
                if (tabGrid2 != null) {
                    tabGrid2.a();
                }
                Handler handler = dialogTabMain.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.20.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTabMain dialogTabMain2 = DialogTabMain.this;
                        boolean z2 = dialogTabMain2.H0;
                        MySnackbar mySnackbar = dialogTabMain2.D0;
                        if (mySnackbar != null) {
                            mySnackbar.i(z2);
                            dialogTabMain2.D0 = null;
                        }
                        ReleaseBackListener releaseBackListener2 = dialogTabMain2.I0;
                        if (releaseBackListener2 != null) {
                            releaseBackListener2.a();
                            dialogTabMain2.I0 = null;
                        }
                        dialogTabMain2.i1 = false;
                    }
                });
            }
        });
    }

    public final void J() {
        DialogTabFind dialogTabFind = this.F0;
        if (dialogTabFind != null) {
            dialogTabFind.b();
            this.F0 = null;
        }
    }

    public final void K() {
        MyMainRelative myMainRelative = this.O;
        if (myMainRelative != null && this.I != null) {
            int width = myMainRelative.getWidth();
            if (width != 0 || (width = this.I.b()) != 0) {
                int i = width - (MainApp.q1 * 2);
                if (PrefZone.C == 0) {
                    WebViewActivity webViewActivity = this.G;
                    if (webViewActivity != null && webViewActivity.b0() != -1) {
                        this.h0 = 3;
                        this.i0 = Math.round((i / 3) * 0.6f);
                    } else {
                        this.h0 = 2;
                        this.i0 = Math.round((i / 2) * 1.3f);
                    }
                } else {
                    this.h0 = 1;
                    this.i0 = Math.round(i * 1.3f);
                }
                TabGrid tabGrid = this.d0;
                if (tabGrid != null) {
                    tabGrid.f();
                }
                TabGrid tabGrid2 = this.c0;
                if (tabGrid2 != null) {
                    tabGrid2.f();
                }
            }
        }
    }

    public final void L(boolean z, boolean z2) {
        int i;
        int i2;
        if (this.W != null) {
            if (!z2 && this.L == z) {
                return;
            }
            this.L = z;
            MyLineText myLineText = this.f0;
            if (myLineText != null) {
                if (z && this.M) {
                    myLineText.setEnabled(false);
                    MyLineText myLineText2 = this.f0;
                    if (MainApp.K1) {
                        i2 = -8355712;
                    } else {
                        i2 = -2434342;
                    }
                    myLineText2.setTextColor(i2);
                } else {
                    myLineText.setEnabled(true);
                    MyLineText myLineText3 = this.f0;
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -14784824;
                    }
                    myLineText3.setTextColor(i);
                }
            }
            if (this.L) {
                this.W.setAlpha(0.4f);
                this.Y.setAlpha(1.0f);
                MyLineText myLineText4 = this.f0;
                if (myLineText4 != null) {
                    myLineText4.setText(R.string.secret_tab);
                }
            } else {
                this.W.setAlpha(1.0f);
                this.Y.setAlpha(0.4f);
                MyLineText myLineText5 = this.f0;
                if (myLineText5 != null) {
                    myLineText5.setText(R.string.new_url);
                }
            }
            M();
            I(true, null);
        }
    }

    public final void M() {
        WebTabAdapter webTabAdapter;
        WebTabAdapter webTabAdapter2;
        if (this.g0 != null) {
            TabGrid tabGrid = this.c0;
            if (tabGrid != null && (webTabAdapter2 = tabGrid.o) != null && tabGrid.i != null) {
                if (webTabAdapter2.J() > 0) {
                    tabGrid.i.setVisibility(8);
                } else {
                    tabGrid.i.setVisibility(0);
                }
            }
            TabGrid tabGrid2 = this.d0;
            if (tabGrid2 != null && (webTabAdapter = tabGrid2.o) != null && tabGrid2.i != null) {
                if (webTabAdapter.J() > 0) {
                    tabGrid2.i.setVisibility(8);
                } else {
                    tabGrid2.i.setVisibility(0);
                }
            }
            MyScrollBar myScrollBar = this.e0;
            if (myScrollBar != null) {
                myScrollBar.a0 = true;
                myScrollBar.d(false);
            }
            boolean z = this.L;
            int i = -2434342;
            if (z && this.M) {
                this.g0.setEnabled(false);
                AppCompatTextView appCompatTextView = this.g0;
                if (MainApp.K1) {
                    i = -8355712;
                }
                appCompatTextView.setTextColor(i);
                return;
            }
            WebTabAdapter x = x(z);
            if (x == null) {
                return;
            }
            int i2 = -14784824;
            if (x.u) {
                if (x.E() > 0) {
                    this.g0.setEnabled(true);
                    AppCompatTextView appCompatTextView2 = this.g0;
                    if (MainApp.K1) {
                        i2 = -328966;
                    }
                    appCompatTextView2.setTextColor(i2);
                    MyLineText copyUrl = this.f0;
                    if (copyUrl != null) {
                        copyUrl.setEnabled(true);
                        copyUrl.setTextColor(i2);
                    }
                    return;
                }
                this.g0.setEnabled(false);
                AppCompatTextView appCompatTextView3 = this.g0;
                if (MainApp.K1) {
                    i = -8355712;
                }
                appCompatTextView3.setTextColor(i);
                MyLineText copyUrl2 = this.f0;
                if (copyUrl2 != null) {
                    copyUrl2.setEnabled(false);
                    copyUrl2.setTextColor(i);
                }
                return;
            }
            if (x.J() > 0) {
                this.g0.setEnabled(true);
                AppCompatTextView appCompatTextView4 = this.g0;
                if (MainApp.K1) {
                    i2 = -328966;
                }
                appCompatTextView4.setTextColor(i2);
                return;
            }
            this.g0.setEnabled(false);
            AppCompatTextView appCompatTextView5 = this.g0;
            if (MainApp.K1) {
                i = -8355712;
            }
            appCompatTextView5.setTextColor(i);
        }
    }

    public final void N(int i, boolean z, boolean z2) {
        WebTabAdapter x = x(z2);
        if (x != null && z != x.u) {
            TabDragHelper y = y(z2);
            if (y != null) {
                y.h = !z;
            }
            x.Y(i, z);
            ViewPager2 viewPager2 = this.a0;
            if (viewPager2 != null) {
                viewPager2.setUserInputEnabled(!z);
            }
            M();
            if (z) {
                this.f0.setText(R.string.copy_url);
                this.g0.setText(R.string.delete);
                AppCompatTextView appCompatTextView = this.S;
                if (appCompatTextView != null) {
                    appCompatTextView.setText(MainUtil.h3(x.E(), x.J()));
                }
                MyButtonCheck myButtonCheck = this.T;
                if (myButtonCheck != null) {
                    myButtonCheck.q(x.N(), true);
                }
                LinearLayout linearLayout = this.U;
                if (linearLayout != null) {
                    MainUtil.h8(this.H, linearLayout, R.anim.ic_scale_out, true);
                }
                MyButtonImage myButtonImage = this.R;
                if (myButtonImage != null) {
                    MainUtil.h8(this.H, myButtonImage, R.anim.ic_rotate_out, true);
                }
                AppCompatTextView appCompatTextView2 = this.S;
                if (appCompatTextView2 != null) {
                    MainUtil.h8(this.H, appCompatTextView2, R.anim.ic_scale_in, false);
                }
                MyButtonCheck myButtonCheck2 = this.T;
                if (myButtonCheck2 != null) {
                    MainUtil.h8(this.H, myButtonCheck2, R.anim.ic_rotate_in, false);
                }
                TabLayout tabLayout = this.Z;
                if (tabLayout != null) {
                    tabLayout.setVisibility(8);
                    return;
                }
                return;
            }
            this.f0.setVisibility(0);
            if (this.L) {
                this.f0.setText(R.string.secret_tab);
            } else {
                this.f0.setText(R.string.new_url);
            }
            this.f0.setEnabled(true);
            this.f0.setTextColor(MainApp.K1 ? -328966 : -14784824);
            this.g0.setText(R.string.delete_all);
            LinearLayout linearLayout2 = this.U;
            if (linearLayout2 != null) {
                MainUtil.h8(this.H, linearLayout2, R.anim.ic_scale_in, false);
            }
            MyButtonImage myButtonImage2 = this.R;
            if (myButtonImage2 != null) {
                MainUtil.h8(this.H, myButtonImage2, R.anim.ic_rotate_in, false);
            }
            AppCompatTextView appCompatTextView3 = this.S;
            if (appCompatTextView3 != null) {
                MainUtil.h8(this.H, appCompatTextView3, R.anim.ic_scale_out, true);
            }
            MyButtonCheck myButtonCheck3 = this.T;
            if (myButtonCheck3 != null) {
                MainUtil.h8(this.H, myButtonCheck3, R.anim.ic_rotate_out, true);
            }
            TabLayout tabLayout2 = this.Z;
            if (tabLayout2 != null) {
                tabLayout2.setVisibility(0);
            }
        }
    }

    public final void O() {
        if (this.L) {
            this.u0 = true;
        } else {
            this.t0 = true;
        }
    }

    public final void P() {
        Handler handler;
        if (this.N || (handler = this.i) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.18
            @Override // java.lang.Runnable
            public final void run() {
                boolean z = PrefSync.k;
                int[] iArr = DialogTabMain.l1;
                WebTabAdapter x = DialogTabMain.this.x(z);
                if (x == null) {
                    return;
                }
                x.B();
            }
        });
    }

    @Override // com.mycompany.app.dialog.DialogCast, com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.H == null || this.G0) {
            return;
        }
        this.G0 = true;
        m(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.14
            @Override // java.lang.Runnable
            public final void run() {
                DialogTabMain dialogTabMain = DialogTabMain.this;
                TabGrid tabGrid = dialogTabMain.c0;
                if (tabGrid != null) {
                    tabGrid.a();
                }
                TabGrid tabGrid2 = dialogTabMain.d0;
                if (tabGrid2 != null) {
                    tabGrid2.a();
                }
                Handler handler = dialogTabMain.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMain.14.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTabMain.r(DialogTabMain.this);
                    }
                });
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006e, code lost:
    
        if (r0 != 3) goto L66;
     */
    @Override // com.mycompany.app.dialog.DialogCast, android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogTabMain.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        if (F()) {
            if (this.c1 == 0) {
                this.c1 = System.currentTimeMillis();
                return;
            }
            if (System.currentTimeMillis() - this.c1 > 500) {
                this.c1 = 0L;
                this.d1 = false;
                this.e1 = false;
                this.f1 = false;
                this.g1 = false;
                this.h1 = false;
                this.i1 = false;
                this.j1 = false;
                this.k1 = false;
                return;
            }
            return;
        }
        this.c1 = 0L;
        TabSubView tabSubView = this.s0;
        if (tabSubView != null) {
            WebTabAdapter webTabAdapter = tabSubView.D;
            if (webTabAdapter != null && webTabAdapter.u) {
                tabSubView.m(-1, false);
                return;
            } else {
                tabSubView.g();
                return;
            }
        }
        DialogTabFind dialogTabFind = this.F0;
        if (dialogTabFind != null) {
            MainListView mainListView = dialogTabFind.f;
            if (mainListView != null && mainListView.V()) {
                return;
            }
            J();
            return;
        }
        WebTabAdapter x = x(this.L);
        if (x != null && x.u) {
            N(-1, false, this.L);
        } else {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final WebTabAdapter x(boolean z) {
        if (z) {
            TabGrid tabGrid = this.d0;
            if (tabGrid == null) {
                return null;
            }
            return tabGrid.o;
        }
        TabGrid tabGrid2 = this.c0;
        if (tabGrid2 == null) {
            return null;
        }
        return tabGrid2.o;
    }

    public final TabDragHelper y(boolean z) {
        if (z) {
            TabGrid tabGrid = this.d0;
            if (tabGrid == null) {
                return null;
            }
            return tabGrid.q;
        }
        TabGrid tabGrid2 = this.c0;
        if (tabGrid2 == null) {
            return null;
        }
        return tabGrid2.q;
    }

    public final boolean z(int i, int i2, Intent intent) {
        MyRoundLinear myRoundLinear;
        int i3;
        WebTabAdapter x;
        if (i != 3) {
            return false;
        }
        if (i2 == -1) {
            this.M = false;
            if (intent != null && intent.getBooleanExtra("EXTRA_LOAD", false) && (x = x(true)) != null && x.J() != 0) {
                if (PrefSync.m != 0) {
                    PrefSync.m = 0;
                    PrefSync.t(this.H);
                }
                x.b0(null, null, 0L, 0, 0);
            }
            MyLineText myLineText = this.f0;
            if (myLineText != null) {
                myLineText.setEnabled(true);
                MyLineText myLineText2 = this.f0;
                if (MainApp.K1) {
                    i3 = -328966;
                } else {
                    i3 = -14784824;
                }
                myLineText2.setTextColor(i3);
            }
            M();
            TabGrid tabGrid = this.d0;
            if (tabGrid != null && (myRoundLinear = tabGrid.m) != null) {
                myRoundLinear.setVisibility(8);
            }
        }
        return true;
    }
}
