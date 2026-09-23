package com.mycompany.app.main;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataCast;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.data.DataSearch;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.data.book.DataBookAlbum;
import com.mycompany.app.data.book.DataBookBlock;
import com.mycompany.app.data.book.DataBookCmp;
import com.mycompany.app.data.book.DataBookDc;
import com.mycompany.app.data.book.DataBookDown;
import com.mycompany.app.data.book.DataBookFilter;
import com.mycompany.app.data.book.DataBookHistory;
import com.mycompany.app.data.book.DataBookJava;
import com.mycompany.app.data.book.DataBookLink;
import com.mycompany.app.data.book.DataBookOver;
import com.mycompany.app.data.book.DataBookPdf;
import com.mycompany.app.data.book.DataBookPms;
import com.mycompany.app.data.book.DataBookPop;
import com.mycompany.app.data.book.DataBookScript;
import com.mycompany.app.data.book.DataBookSearch;
import com.mycompany.app.data.book.DataBookTmem;
import com.mycompany.app.data.book.DataBookTrans;
import com.mycompany.app.data.book.DataBookUser;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.db.book.DbBookSearch;
import com.mycompany.app.db.book.DbBookUser;
import com.mycompany.app.dialog.DialogDeleteBook;
import com.mycompany.app.dialog.DialogEditCmd;
import com.mycompany.app.dialog.DialogEditMemo;
import com.mycompany.app.dialog.DialogEditScript;
import com.mycompany.app.dialog.DialogEditSearch;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.dialog.DialogFileDelete;
import com.mycompany.app.dialog.DialogFileRename;
import com.mycompany.app.dialog.DialogInfo;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSeekFilter;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.dialog.DialogSetFilter;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetHistory;
import com.mycompany.app.dialog.DialogSetPms;
import com.mycompany.app.dialog.DialogSetSort;
import com.mycompany.app.dialog.DialogUpdateFilter;
import com.mycompany.app.dialog.DialogUpdateScript;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.fragment.FragmentTabPath;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.list.ListTaskAlbum;
import com.mycompany.app.list.ListTaskCmp;
import com.mycompany.app.list.ListTaskPdf;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyListChild;
import com.mycompany.app.view.MyListGroup;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.wview.WebCastView;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class MainListView {
    public AppCompatTextView A;
    public DialogFileRename A0;
    public String A1;
    public ImageView B;
    public boolean B0;
    public int B1;
    public MyButtonImage C;
    public DialogDeleteBook C0;
    public boolean C1;
    public MyButtonImage D;
    public boolean D0;
    public List D1;
    public MyButtonImage E;
    public DialogEditUrl E0;
    public long E1;
    public MyButtonImage F;
    public DialogSetFilter F0;
    public DialogSetFull.DialogApplyListener F1;
    public MyButtonImage G;
    public DialogSeekFilter G0;
    public String G1;
    public MyButtonImage H;
    public DialogUpdateFilter H0;
    public AppCompatTextView I;
    public DialogUpdateScript I0;
    public MyButtonCheck J;
    public DialogWebView J0;
    public MyProgressBar K;
    public DialogEditSearch K0;
    public boolean L;
    public DialogEditMemo L0;
    public FragmentExpandView M;
    public DialogEditCmd M0;
    public ImageView N;
    public DialogEditScript N0;
    public MyScrollBar O;
    public DialogSetDown O0;
    public MyFadeImage P;
    public DialogInfo P0;
    public MyFadeFrame Q;
    public DialogSetHistory Q0;
    public FrameLayout R;
    public boolean R0;
    public View S;
    public DialogSetPms S0;
    public View T;
    public final boolean T0;
    public LinearLayout U;
    public GlideRequests U0;
    public MyLineText V;
    public MyDialogNormal V0;
    public MyLineText W;
    public MyDialogBottom W0;
    public MyLineText X;
    public FrameLayout X0;
    public MyLineText Y;
    public MyEditPure Y0;
    public MyLineText Z;
    public MyButtonImage Z0;

    /* renamed from: a, reason: collision with root package name */
    public final MainActivity f16603a;
    public MyLineText a0;
    public MyButtonImage a1;
    public final Context b;
    public MyLineText b0;
    public MyRoundView b1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16604c;
    public ValueAnimator c0;
    public boolean c1;
    public int d;
    public ValueAnimator d0;
    public boolean d1;
    public final boolean e;
    public MyButtonImage e0;
    public CharSequence e1;
    public final boolean f;
    public MyCoverView f0;
    public FrameLayout f1;
    public final boolean g;
    public ListTask g0;
    public FrameLayout g1;
    public RelativeLayout h;
    public MainListAdapter h0;
    public FrameLayout h1;
    public final int i;
    public int i0;
    public WebCastView i1;
    public final int j;
    public boolean j0;
    public MediaRouteButton j1;
    public final boolean k;
    public int k0;
    public FrameLayout k1;
    public final boolean l;
    public int l0;
    public View l1;
    public final boolean m;
    public boolean m0;
    public boolean m1;
    public final boolean n;
    public MyPopupMenu n0;
    public int n1;
    public MainListListener o;
    public MyPopupMenu o0;
    public boolean o1;
    public MyListGroup p;
    public MyPopupMenu p0;
    public MainListAdapter.GroupHolder q;
    public int q0;
    public int q1;
    public boolean r;
    public int r0;
    public boolean r1;
    public int s;
    public boolean s0;
    public ValueAnimator t;
    public int t0;
    public boolean t1;
    public View u;
    public int u0;
    public float u1;
    public View v;
    public DialogListBook v0;
    public float v1;
    public FrameLayout w;
    public DialogSetSort w0;
    public boolean w1;
    public MyHeaderView x;
    public DialogFileDelete x0;
    public MyButtonImage y;
    public boolean y0;
    public DcChangeListener y1;
    public MyButtonRelative z;
    public boolean z0;
    public String z1;
    public final Runnable p1 = new Runnable() { // from class: com.mycompany.app.main.MainListView.35
        @Override // java.lang.Runnable
        public final void run() {
            MainListView mainListView = MainListView.this;
            mainListView.o1 = false;
            if (mainListView.c0 != null) {
                int i = mainListView.n1;
                FrameLayout frameLayout = mainListView.R;
                if (frameLayout != null) {
                    frameLayout.setTranslationY(i);
                    if (mainListView.R.getVisibility() != 0) {
                        mainListView.R.setVisibility(0);
                    }
                }
            }
        }
    };
    public final Runnable s1 = new Runnable() { // from class: com.mycompany.app.main.MainListView.39
        @Override // java.lang.Runnable
        public final void run() {
            MainListView mainListView = MainListView.this;
            mainListView.r1 = false;
            if (mainListView.d0 != null) {
                int i = mainListView.q1;
                FrameLayout frameLayout = mainListView.R;
                if (frameLayout == null) {
                    return;
                }
                frameLayout.setTranslationY(i);
            }
        }
    };
    public final Runnable x1 = new Runnable() { // from class: com.mycompany.app.main.MainListView.55
        @Override // java.lang.Runnable
        public final void run() {
            MainListView mainListView = MainListView.this;
            mainListView.w1 = false;
            if (mainListView.t != null) {
                float f = mainListView.v1;
                if (mainListView.p == null) {
                    return;
                }
                mainListView.h0(f, true);
            }
        }
    };

    /* renamed from: com.mycompany.app.main.MainListView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView$44, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass44 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView$71, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass71 implements MainListAdapter.ListMoreListener {
        public AnonymousClass71() {
        }

        @Override // com.mycompany.app.main.MainListAdapter.ListMoreListener
        public final void a(View view, int i) {
            final MainListView mainListView = MainListView.this;
            MainActivity mainActivity = mainListView.f16603a;
            if (!mainListView.K()) {
                int i2 = mainListView.d;
                if (i2 != 26 && i2 != 31 && i2 != 42) {
                    if (i2 == 24) {
                        final MainItem.ChildItem m = mainListView.h0.m(i);
                        if (mainListView.p0 == null) {
                            mainListView.C();
                            if (m != null) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.delete));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.edit));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(3, "작성글 (현재 갤러리)"));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(4, "작성글 (전체 갤러리)"));
                                if (m.f16550a == 1) {
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(5, "IP 조회"));
                                } else {
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(6, "갤로그 조회"));
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(7, R.string.details));
                                MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView.f16603a, mainListView.h, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView.81
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        MainListView.this.C();
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i3) {
                                        MainItem.ChildItem childItem = m;
                                        MainListView mainListView2 = MainListView.this;
                                        if (i3 != 0) {
                                            if (i3 != 1) {
                                                if (i3 != 7) {
                                                    DcChangeListener dcChangeListener = mainListView2.y1;
                                                    if (dcChangeListener != null) {
                                                        dcChangeListener.a(i3, childItem);
                                                    }
                                                    return true;
                                                }
                                                MainListView.i(mainListView2, childItem);
                                                return true;
                                            }
                                            MainListView.g(mainListView2, childItem);
                                            return true;
                                        }
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(childItem);
                                        MainListView.d(mainListView2, arrayList2, null, false);
                                        return true;
                                    }
                                });
                                mainListView.p0 = myPopupMenu;
                                MyDialogNormal myDialogNormal = mainListView.V0;
                                if (myDialogNormal != null) {
                                    myDialogNormal.u = myPopupMenu;
                                    return;
                                }
                                MyDialogBottom myDialogBottom = mainListView.W0;
                                if (myDialogBottom != null) {
                                    myDialogBottom.Y = myPopupMenu;
                                    return;
                                } else {
                                    if (mainActivity != null) {
                                        mainActivity.Z0 = myPopupMenu;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    final MainItem.ChildItem m2 = mainListView.h0.m(i);
                    if (mainListView.p0 == null) {
                        mainListView.C();
                        if (m2 != null) {
                            ArrayList arrayList2 = new ArrayList();
                            int i3 = mainListView.d;
                            if (i3 == 32) {
                                if (m2.f16550a != 8) {
                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.open_with));
                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(2, R.string.down_again));
                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(3, R.string.visit_site));
                                }
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(7, R.string.copy_url));
                            } else if (i3 == 18) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(4, R.string.new_url));
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(5, R.string.group_url));
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(6, R.string.back_url));
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(7, R.string.copy_url));
                            } else if (i3 == 25 || i3 == 27) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.update));
                            }
                            if (mainListView.d == 32) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(8, R.string.delete_file));
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(9, R.string.delete_record));
                            } else {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(8, R.string.delete));
                            }
                            if (mainListView.d == 32 || !mainListView.e) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(10, R.string.rename));
                            }
                            int i4 = mainListView.d;
                            if (i4 != 19 && i4 != 20 && i4 != 21 && i4 != 22 && i4 != 23 && i4 != 24 && i4 != 28 && i4 != 29 && i4 != 30 && i4 != 35 && i4 != 36) {
                                if (i4 == 25 && ("sb_user_filter_path".equals(m2.g) || URLUtil.isNetworkUrl(m2.g))) {
                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(11, R.string.edit));
                                }
                            } else {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(11, R.string.edit));
                            }
                            int i5 = mainListView.d;
                            if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 18 && i5 != 25 && i5 != 32 && i5 != 35 && i5 != 36) {
                                if (i5 == 27 && URLUtil.isNetworkUrl(m2.g)) {
                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(12, R.string.share));
                                }
                            } else {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(12, R.string.share));
                            }
                            if (mainListView.d == 1) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(13, R.string.extract));
                            }
                            if (mainListView.d == 18) {
                                arrayList2.add(new MyPopupAdapter.PopMenuItem(14, R.string.open_with));
                            }
                            arrayList2.add(new MyPopupAdapter.PopMenuItem(15, R.string.details));
                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(mainListView.f16603a, mainListView.h, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView.80
                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final void a() {
                                    MainListView.this.C();
                                }

                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final boolean b(View view2, int i6) {
                                    final MainListView mainListView2 = MainListView.this;
                                    Context context = mainListView2.b;
                                    MainActivity mainActivity2 = mainListView2.f16603a;
                                    MainItem.ChildItem childItem = m2;
                                    switch (i6) {
                                        case 0:
                                            if (mainListView2.d == 27) {
                                                mainListView2.w0(null, childItem, null);
                                                return true;
                                            }
                                            MainListView.j(mainListView2, null, childItem.g, childItem.h, childItem.y);
                                            return true;
                                        case 1:
                                            MainListListener mainListListener = mainListView2.o;
                                            if (mainListListener != null) {
                                                mainListListener.q(childItem);
                                            }
                                            return true;
                                        case 2:
                                            MainListListener mainListListener2 = mainListView2.o;
                                            if (mainListListener2 != null) {
                                                mainListListener2.h(childItem);
                                                return true;
                                            }
                                            return true;
                                        case 3:
                                            if (mainActivity2 != null) {
                                                Intent o4 = MainUtil.o4(context);
                                                o4.putExtra("EXTRA_PATH", childItem.r);
                                                o4.addFlags(67108864);
                                                mainActivity2.startActivity(o4);
                                                return true;
                                            }
                                            return true;
                                        case 4:
                                            MainListListener mainListListener3 = mainListView2.o;
                                            if (mainListListener3 != null) {
                                                mainListListener3.p(3, childItem);
                                                return true;
                                            }
                                            return true;
                                        case 5:
                                            MainListListener mainListListener4 = mainListView2.o;
                                            if (mainListListener4 != null) {
                                                mainListListener4.p(4, childItem);
                                                return true;
                                            }
                                            return true;
                                        case 6:
                                            MainListListener mainListListener5 = mainListView2.o;
                                            if (mainListListener5 != null) {
                                                mainListListener5.p(5, childItem);
                                                return true;
                                            }
                                            return true;
                                        case 7:
                                            if (mainListView2.d == 32) {
                                                MainUtil.s(R.string.copied_clipboard, mainActivity2, "Copied URL", MainUtil.O0(childItem.q));
                                                return true;
                                            }
                                            MainUtil.s(R.string.copied_clipboard, mainActivity2, "Copied URL", childItem.g);
                                            return true;
                                        case 8:
                                            ArrayList arrayList3 = new ArrayList();
                                            arrayList3.add(childItem);
                                            if (mainListView2.e) {
                                                MainListView.d(mainListView2, arrayList3, null, true);
                                                return true;
                                            }
                                            MainListView.f(mainListView2, arrayList3);
                                            return true;
                                        case 9:
                                            ArrayList arrayList4 = new ArrayList();
                                            arrayList4.add(childItem);
                                            MainListView.d(mainListView2, arrayList4, null, false);
                                            return true;
                                        case 10:
                                            MainListView.h(mainListView2, childItem);
                                            return true;
                                        case 11:
                                            int i7 = mainListView2.d;
                                            if (i7 != 19 && i7 != 20 && i7 != 21 && i7 != 22 && i7 != 23 && i7 != 28 && i7 != 29 && i7 != 30) {
                                                if (i7 == 25) {
                                                    if ("sb_user_filter_path".equals(childItem.g)) {
                                                        mainListView2.u0();
                                                        return true;
                                                    }
                                                    mainListView2.t0(childItem);
                                                    return true;
                                                }
                                                if (i7 == 35) {
                                                    mainListView2.s0(childItem, null);
                                                    return true;
                                                }
                                                if (i7 == 24 || i7 == 36) {
                                                    MainListView.g(mainListView2, childItem);
                                                    return true;
                                                }
                                                return true;
                                            }
                                            mainListView2.t0(childItem);
                                            return true;
                                        case 12:
                                            int i8 = mainListView2.d;
                                            if (i8 == 25) {
                                                if ("sb_user_filter_path".equals(childItem.g)) {
                                                    String str = childItem.h;
                                                    mainListView2.o0(0L, true);
                                                    mainListView2.A1 = str;
                                                    MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainListView.82
                                                        /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
                                                        /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
                                                        @Override // java.lang.Runnable
                                                        /*
                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                            To view partially-correct add '--show-bad-code' argument
                                                        */
                                                        public final void run() {
                                                            /*
                                                                r9 = this;
                                                                com.mycompany.app.main.MainListView r0 = com.mycompany.app.main.MainListView.this
                                                                android.content.Context r1 = r0.b
                                                                com.mycompany.app.db.book.DbBookUser r2 = com.mycompany.app.db.book.DbBookUser.f12963c
                                                                r2 = 0
                                                                if (r1 != 0) goto La
                                                                goto L5e
                                                            La:
                                                                com.mycompany.app.db.book.DbBookUser r1 = com.mycompany.app.db.book.DbBookUser.d(r1)     // Catch: java.lang.Exception -> L50
                                                                android.database.sqlite.SQLiteDatabase r3 = r1.getWritableDatabase()     // Catch: java.lang.Exception -> L50
                                                                java.lang.String r4 = "DbBookUser_table"
                                                                r7 = 0
                                                                r8 = 0
                                                                r5 = 0
                                                                r6 = 0
                                                                android.database.Cursor r1 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L50
                                                                if (r1 == 0) goto L4e
                                                                boolean r3 = r1.moveToFirst()     // Catch: java.lang.Exception -> L4e
                                                                if (r3 == 0) goto L4e
                                                                java.lang.String r3 = "_path"
                                                                int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Exception -> L4e
                                                                r4 = r2
                                                            L2b:
                                                                java.lang.String r5 = r1.getString(r3)     // Catch: java.lang.Exception -> L52
                                                                boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L52
                                                                if (r6 == 0) goto L36
                                                                goto L47
                                                            L36:
                                                                if (r4 != 0) goto L3f
                                                                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L52
                                                                r6.<init>()     // Catch: java.lang.Exception -> L52
                                                                r4 = r6
                                                                goto L44
                                                            L3f:
                                                                java.lang.String r6 = "\n"
                                                                r4.append(r6)     // Catch: java.lang.Exception -> L52
                                                            L44:
                                                                r4.append(r5)     // Catch: java.lang.Exception -> L52
                                                            L47:
                                                                boolean r5 = r1.moveToNext()     // Catch: java.lang.Exception -> L52
                                                                if (r5 != 0) goto L2b
                                                                goto L52
                                                            L4e:
                                                                r4 = r2
                                                                goto L52
                                                            L50:
                                                                r1 = r2
                                                                r4 = r1
                                                            L52:
                                                                if (r1 == 0) goto L57
                                                                r1.close()
                                                            L57:
                                                                if (r4 != 0) goto L5a
                                                                goto L5e
                                                            L5a:
                                                                java.lang.String r2 = r4.toString()
                                                            L5e:
                                                                r0.z1 = r2
                                                                com.mycompany.app.fragment.FragmentExpandView r0 = r0.M
                                                                if (r0 != 0) goto L65
                                                                return
                                                            L65:
                                                                com.mycompany.app.main.MainListView$82$1 r1 = new com.mycompany.app.main.MainListView$82$1
                                                                r1.<init>()
                                                                r0.post(r1)
                                                                return
                                                            */
                                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListView.AnonymousClass82.run():void");
                                                        }
                                                    });
                                                    return true;
                                                }
                                                if (URLUtil.isNetworkUrl(childItem.g)) {
                                                    if (MainUtil.a8(mainActivity2, childItem.g, childItem.h)) {
                                                        mainListView2.y0();
                                                        return true;
                                                    }
                                                } else if (MainUtil.Z7(mainListView2.d, mainActivity2, childItem.g, childItem.h, null)) {
                                                    mainListView2.y0();
                                                    return true;
                                                }
                                            } else if (i8 == 27) {
                                                if (MainUtil.a8(mainActivity2, childItem.g, childItem.h)) {
                                                    mainListView2.y0();
                                                    return true;
                                                }
                                            } else if (i8 != 18 && i8 != 35 && i8 != 36) {
                                                String str2 = childItem.g;
                                                String str3 = childItem.h;
                                                if (MainUtil.Z7(i8, mainActivity2, str2, str3, MainUtil.u2(str3))) {
                                                    mainListView2.y0();
                                                    return true;
                                                }
                                            } else if (MainUtil.a8(mainActivity2, childItem.g, childItem.h)) {
                                                mainListView2.y0();
                                                return true;
                                            }
                                            return true;
                                        case 13:
                                            if (mainListView2.o != null && mainListView2.h0 != null && !TextUtils.isEmpty(childItem.g)) {
                                                ArrayList arrayList5 = new ArrayList();
                                                arrayList5.add(childItem);
                                                mainListView2.o.k(arrayList5);
                                                return true;
                                            }
                                            return true;
                                        case 14:
                                            String str4 = childItem.g;
                                            if (TextUtils.isEmpty(str4)) {
                                                MainUtil.e8(mainActivity2, R.string.empty);
                                                return true;
                                            }
                                            if ("file:///android_asset/shortcut.html".equals(str4)) {
                                                MainUtil.e8(mainActivity2, R.string.not_supported_page);
                                                return true;
                                            }
                                            if (!MainUtil.I4(mainActivity2, str4) && mainActivity2 != null && !mainListView2.J()) {
                                                DialogSetDown dialogSetDown = mainListView2.O0;
                                                if (dialogSetDown != null) {
                                                    dialogSetDown.dismiss();
                                                    mainListView2.O0 = null;
                                                }
                                                mainListView2.G1 = str4;
                                                DialogSetDown dialogSetDown2 = new DialogSetDown(mainListView2.f16603a, str4, null, mainActivity2.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.main.MainListView.115
                                                    @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                                                    public final void a(String str5, String str6, String str7) {
                                                        MainListView mainListView3 = MainListView.this;
                                                        String str8 = mainListView3.G1;
                                                        mainListView3.G1 = null;
                                                        MainUtil.G4(mainListView3.f16603a, str6, str7, str8, null, null, null);
                                                    }
                                                });
                                                mainListView2.O0 = dialogSetDown2;
                                                dialogSetDown2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.116
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        MainListView mainListView3 = MainListView.this;
                                                        DialogSetDown dialogSetDown3 = mainListView3.O0;
                                                        if (dialogSetDown3 != null) {
                                                            dialogSetDown3.dismiss();
                                                            mainListView3.O0 = null;
                                                        }
                                                        mainListView3.G1 = null;
                                                    }
                                                });
                                                return true;
                                            }
                                            return true;
                                        case 15:
                                            MainListView.i(mainListView2, childItem);
                                            return true;
                                        default:
                                            return false;
                                    }
                                }
                            });
                            mainListView.p0 = myPopupMenu2;
                            MyDialogNormal myDialogNormal2 = mainListView.V0;
                            if (myDialogNormal2 != null) {
                                myDialogNormal2.u = myPopupMenu2;
                                return;
                            }
                            MyDialogBottom myDialogBottom2 = mainListView.W0;
                            if (myDialogBottom2 != null) {
                                myDialogBottom2.Y = myPopupMenu2;
                                return;
                            } else {
                                if (mainActivity != null) {
                                    mainActivity.Z0 = myPopupMenu2;
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                MainItem.ChildItem m3 = mainListView.h0.m(i);
                if (m3 == null) {
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(m3);
                MainListView.d(mainListView, arrayList3, null, true);
            }
        }

        public final void b(View view, final int i) {
            final MainListView mainListView = MainListView.this;
            if (!mainListView.K()) {
                final MainItem.GroupItem group = mainListView.h0.getGroup(i);
                if (mainListView.p0 == null) {
                    mainListView.C();
                    if (group != null) {
                        ArrayList arrayList = new ArrayList();
                        int i2 = mainListView.d;
                        if (i2 == 32) {
                            arrayList.add(new MyPopupAdapter.PopMenuItem(8, R.string.delete_file));
                            arrayList.add(new MyPopupAdapter.PopMenuItem(9, R.string.delete_record));
                        } else {
                            if (i2 == 26) {
                                arrayList.add(new MyPopupAdapter.PopMenuItem(16, R.string.used_on));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(17, R.string.not_used));
                            }
                            arrayList.add(new MyPopupAdapter.PopMenuItem(8, R.string.delete));
                        }
                        MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView.f16603a, mainListView.h, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView.79
                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final void a() {
                                MainListView.this.C();
                            }

                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final boolean b(View view2, int i3) {
                                MainItem.GroupItem groupItem = group;
                                MainListView mainListView2 = MainListView.this;
                                int i4 = i;
                                if (i3 != 8) {
                                    if (i3 != 9) {
                                        if (i3 != 16) {
                                            if (i3 != 17) {
                                                return false;
                                            }
                                            MainListView.c(mainListView2, i4, false);
                                            return true;
                                        }
                                        MainListView.c(mainListView2, i4, true);
                                        return true;
                                    }
                                    MainListAdapter mainListAdapter = mainListView2.h0;
                                    if (mainListAdapter != null) {
                                        MainListView.d(mainListView2, mainListAdapter.q(i4), groupItem.b, false);
                                        return true;
                                    }
                                } else {
                                    MainListAdapter mainListAdapter2 = mainListView2.h0;
                                    if (mainListAdapter2 != null) {
                                        if (mainListView2.e) {
                                            MainListView.d(mainListView2, mainListAdapter2.q(i4), groupItem.b, true);
                                            return true;
                                        }
                                        MainListView.f(mainListView2, mainListAdapter2.q(i4));
                                        return true;
                                    }
                                }
                                return true;
                            }
                        });
                        mainListView.p0 = myPopupMenu;
                        MyDialogNormal myDialogNormal = mainListView.V0;
                        if (myDialogNormal != null) {
                            myDialogNormal.u = myPopupMenu;
                            return;
                        }
                        MyDialogBottom myDialogBottom = mainListView.W0;
                        if (myDialogBottom != null) {
                            myDialogBottom.Y = myPopupMenu;
                            return;
                        }
                        MainActivity mainActivity = mainListView.f16603a;
                        if (mainActivity != null) {
                            mainActivity.Z0 = myPopupMenu;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView$72, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass72 implements MainListAdapter.ListRectListener {
        public AnonymousClass72() {
        }

        public final void a(int i) {
            MainListView mainListView = MainListView.this;
            if (mainListView.K()) {
                return;
            }
            MainListAdapter mainListAdapter = mainListView.h0;
            boolean[] zArr = mainListAdapter.j;
            if (zArr != null && i >= 0 && i < zArr.length) {
                mainListAdapter.y(i, !zArr[i]);
            }
            mainListView.a0();
            mainListView.c0();
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView$73, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass73 implements MainListAdapter.ListHeadListener {
        public AnonymousClass73() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainListView$83, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass83 implements Runnable {
        public AnonymousClass83() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List<MainItem.ChildItem> q;
            MainListView mainListView = MainListView.this;
            Context context = mainListView.b;
            MainListAdapter mainListAdapter = mainListView.h0;
            boolean z = false;
            if (mainListAdapter != null && (q = mainListAdapter.q(mainListView.B1)) != null && !q.isEmpty()) {
                boolean z2 = mainListView.C1;
                for (MainItem.ChildItem childItem : q) {
                    if (childItem.M != z2) {
                        childItem.M = z2;
                        DbBookUser.i(context, childItem.y, z2);
                        DataBookUser k = DataBookUser.k(context);
                        long j = childItem.y;
                        boolean z3 = childItem.M;
                        MainItem.ChildItem e = k.e(j);
                        if (e != null) {
                            e.M = z3;
                        }
                        z = true;
                    }
                }
                if (z) {
                    DataBookFilter.k(context).j(DbBookFilter.i(context, "sb_user_filter_path", "sb_user_filter_path"));
                }
            }
            if (!z) {
                FragmentExpandView fragmentExpandView = mainListView.M;
                if (fragmentExpandView != null) {
                    fragmentExpandView.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.83.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListView.this.o0(0L, false);
                        }
                    });
                    return;
                }
                return;
            }
            FragmentExpandView fragmentExpandView2 = mainListView.M;
            if (fragmentExpandView2 == null) {
                return;
            }
            fragmentExpandView2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.83.2
                @Override // java.lang.Runnable
                public final void run() {
                    Object tag;
                    MySwitchView mySwitchView;
                    MainListView mainListView2 = MainListView.this;
                    MainListAdapter mainListAdapter2 = mainListView2.h0;
                    if (mainListAdapter2 != null) {
                        int i = mainListView2.B1;
                        boolean z4 = mainListView2.C1;
                        FragmentExpandView fragmentExpandView3 = mainListAdapter2.g;
                        if (fragmentExpandView3 != null) {
                            int childCount = fragmentExpandView3.getChildCount();
                            for (int i2 = 0; i2 < childCount; i2++) {
                                View childAt = mainListAdapter2.g.getChildAt(i2);
                                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter.ChildHolder)) {
                                    MainListAdapter.ChildHolder childHolder = (MainListAdapter.ChildHolder) tag;
                                    if (childHolder.t == i && (mySwitchView = childHolder.r) != null) {
                                        mySwitchView.b(z4, false);
                                    }
                                }
                            }
                        }
                        FragmentExpandView fragmentExpandView4 = mainListView2.M;
                        if (fragmentExpandView4 == null) {
                            return;
                        }
                        fragmentExpandView4.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.83.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListView.this.o0(0L, false);
                            }
                        });
                    }
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface DcChangeListener {
        void a(int i, MainItem.ChildItem childItem);

        void b(MainItem.ChildItem childItem);

        void c(List list);
    }

    /* loaded from: classes3.dex */
    public static class ListViewConfig {

        /* renamed from: a, reason: collision with root package name */
        public int f16734a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f16735c;
        public boolean d;
        public ListViewHolder e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
    }

    /* loaded from: classes3.dex */
    public static class ListViewHolder {
        public RelativeLayout A;
        public AppCompatTextView B;

        /* renamed from: a, reason: collision with root package name */
        public RelativeLayout f16736a;
        public FrameLayout b;

        /* renamed from: c, reason: collision with root package name */
        public MyListGroup f16737c;
        public MyHeaderView d;
        public MyButtonImage e;
        public AppCompatTextView f;
        public MyButtonRelative g;
        public ImageView h;
        public MyButtonImage i;
        public MyButtonImage j;
        public MyButtonImage k;
        public MyButtonImage l;
        public MyButtonImage m;
        public MyButtonImage n;
        public AppCompatTextView o;
        public MyButtonCheck p;
        public MyProgressBar q;
        public FragmentExpandView r;
        public MyScrollBar s;
        public MyFadeImage t;
        public MyCoverView u;
        public FrameLayout v;
        public FrameLayout w;
        public MyRecyclerView x;
        public LinearLayout y;
        public FragmentTabPath z;
    }

    public MainListView(MainActivity mainActivity, Context context, ListViewConfig listViewConfig, MainListListener mainListListener) {
        if (listViewConfig != null) {
            this.f16603a = mainActivity;
            this.b = context;
            int i = listViewConfig.f16734a;
            this.d = i;
            this.e = listViewConfig.b;
            this.f = listViewConfig.f16735c;
            boolean z = listViewConfig.d;
            this.g = z;
            this.i = listViewConfig.f;
            this.j = listViewConfig.g;
            this.k = listViewConfig.h;
            this.l = listViewConfig.i;
            this.m = listViewConfig.j;
            this.n = listViewConfig.k;
            this.T0 = listViewConfig.l;
            this.o = mainListListener;
            this.f16604c = MainApp.K1;
            this.j0 = true;
            this.k0 = -1;
            this.l0 = -1;
            this.m0 = false;
            this.s = -1;
            this.q0 = -1;
            this.r0 = -1;
            this.t0 = -1;
            this.u0 = -1;
            ListViewHolder listViewHolder = listViewConfig.e;
            if (listViewHolder != null) {
                this.h = listViewHolder.f16736a;
                this.w = listViewHolder.b;
                FragmentExpandView fragmentExpandView = listViewHolder.r;
                this.M = fragmentExpandView;
                this.O = listViewHolder.s;
                this.P = listViewHolder.t;
                this.f0 = listViewHolder.u;
                this.f1 = listViewHolder.v;
                this.g1 = listViewHolder.w;
                if (i == 35) {
                    if (fragmentExpandView != null) {
                        fragmentExpandView.setClipToOutline(false);
                    }
                } else {
                    this.x = listViewHolder.d;
                    this.y = listViewHolder.e;
                    this.A = listViewHolder.f;
                    if (i != 36) {
                        this.K = listViewHolder.q;
                        if (i != 13) {
                            this.p = listViewHolder.f16737c;
                        }
                    }
                }
                int i2 = this.d;
                if (i2 != 1 && i2 != 2 && i2 != 3) {
                    if (i2 == 13) {
                        this.z = listViewHolder.g;
                        this.B = listViewHolder.h;
                        this.F = listViewHolder.l;
                        this.G = listViewHolder.m;
                        this.H = listViewHolder.n;
                        this.I = listViewHolder.o;
                        this.J = listViewHolder.p;
                        return;
                    }
                    if (i2 != 14 && i2 != 15 && i2 != 16 && i2 != 19 && i2 != 20 && i2 != 21 && i2 != 22 && i2 != 23 && i2 != 25 && i2 != 28 && i2 != 29 && i2 != 30) {
                        if (i2 == 24) {
                            this.E = listViewHolder.k;
                            this.G = listViewHolder.m;
                            this.H = listViewHolder.n;
                            this.I = listViewHolder.o;
                            this.J = listViewHolder.p;
                            return;
                        }
                        if (i2 == 26) {
                            this.D = listViewHolder.k;
                            this.E = listViewHolder.m;
                            this.H = listViewHolder.n;
                            this.I = listViewHolder.o;
                            this.J = listViewHolder.p;
                            return;
                        }
                        if (i2 == 27) {
                            MyButtonImage myButtonImage = listViewHolder.l;
                            this.F = myButtonImage;
                            if (myButtonImage != null) {
                                myButtonImage.setVisibility(0);
                            }
                            this.D = listViewHolder.k;
                            this.E = listViewHolder.m;
                            this.H = listViewHolder.n;
                            this.I = listViewHolder.o;
                            this.J = listViewHolder.p;
                            return;
                        }
                        if (i2 != 18 && i2 != 31) {
                            if (i2 == 32) {
                                this.z = listViewHolder.g;
                                this.B = listViewHolder.h;
                                this.F = listViewHolder.l;
                                this.G = listViewHolder.m;
                                this.H = listViewHolder.n;
                                this.I = listViewHolder.o;
                                this.J = listViewHolder.p;
                                return;
                            }
                            if (i2 == 36) {
                                this.D = listViewHolder.k;
                                this.I = listViewHolder.o;
                                this.J = listViewHolder.p;
                                return;
                            } else {
                                if (i2 == 42) {
                                    this.I = listViewHolder.o;
                                    this.J = listViewHolder.p;
                                    return;
                                }
                                return;
                            }
                        }
                        this.E = listViewHolder.k;
                        this.G = listViewHolder.m;
                        this.H = listViewHolder.n;
                        this.I = listViewHolder.o;
                        this.J = listViewHolder.p;
                        return;
                    }
                    if (i2 == 25) {
                        MyButtonImage myButtonImage2 = listViewHolder.l;
                        this.F = myButtonImage2;
                        if (myButtonImage2 != null) {
                            myButtonImage2.setVisibility(0);
                        }
                    }
                    this.D = listViewHolder.k;
                    this.G = listViewHolder.m;
                    this.H = listViewHolder.n;
                    this.I = listViewHolder.o;
                    this.J = listViewHolder.p;
                    return;
                }
                if (z) {
                    this.F = listViewHolder.l;
                    this.G = listViewHolder.m;
                    this.H = listViewHolder.n;
                    return;
                }
                this.z = listViewHolder.g;
                this.B = listViewHolder.h;
                this.C = listViewHolder.j;
                this.F = listViewHolder.l;
                this.G = listViewHolder.m;
                this.H = listViewHolder.n;
                this.I = listViewHolder.o;
                this.J = listViewHolder.p;
            }
        }
    }

    public static void X(TextView textView, boolean z) {
        int i;
        int i2;
        if (textView == null) {
            return;
        }
        textView.setEnabled(z);
        if (z) {
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -14784824;
            }
            textView.setTextColor(i2);
            return;
        }
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        textView.setTextColor(i);
    }

    public static void a(MainListView mainListView) {
        if (mainListView.c1 && mainListView.X0 == null && mainListView.x != null) {
            MainActivity mainActivity = mainListView.f16603a;
            if (mainActivity != null) {
                FrameLayout frameLayout = new FrameLayout(mainActivity);
                MyRoundView myRoundView = new MyRoundView(mainActivity);
                frameLayout.addView(myRoundView, -1, MainApp.b1);
                MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                myButtonImage.setScaleType(scaleType);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                layoutParams.setMarginStart(MainApp.F1);
                frameLayout.addView(myButtonImage, layoutParams);
                MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity);
                myButtonImage2.setScaleType(scaleType);
                myButtonImage2.setVisibility(4);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.f1, MainApp.b1);
                layoutParams2.gravity = 8388613;
                layoutParams2.setMarginEnd(MainApp.F1);
                frameLayout.addView(myButtonImage2, layoutParams2);
                MyEditPure myEditPure = new MyEditPure(mainActivity);
                myEditPure.setGravity(16);
                myEditPure.setSingleLine(true);
                myEditPure.setTextDirection(3);
                myEditPure.setTextSize(1, 16.0f);
                if (Build.VERSION.SDK_INT >= 29) {
                    myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditPure.setImeOptions(268435459);
                myEditPure.setSelectAllOnFocus(true);
                myEditPure.setBackground(null);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.b1);
                layoutParams3.setMarginStart(MainApp.F1 + MainApp.g1);
                layoutParams3.setMarginEnd(MainApp.F1 + MainApp.f1);
                frameLayout.addView(myEditPure, layoutParams3);
                mainListView.X0 = frameLayout;
                mainListView.Y0 = myEditPure;
                mainListView.Z0 = myButtonImage;
                mainListView.a1 = myButtonImage2;
                mainListView.b1 = myRoundView;
                RelativeLayout relativeLayout = mainListView.h;
                if (relativeLayout == null) {
                    return;
                }
                relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.43
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View$OnClickListener, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        DataBookDown dataBookDown;
                        DataBookPms dataBookPms;
                        DataBookTrans dataBookTrans;
                        DataBookTmem dataBookTmem;
                        DataBookJava dataBookJava;
                        DataBookFilter dataBookFilter;
                        DataBookDc dataBookDc;
                        DataBookBlock dataBookBlock;
                        DataBookLink dataBookLink;
                        DataBookPop dataBookPop;
                        DataBookOver dataBookOver;
                        DataBookAds dataBookAds;
                        DataBookHistory dataBookHistory;
                        DataBookCmp dataBookCmp;
                        DataBookPdf dataBookPdf;
                        DataBookAlbum dataBookAlbum;
                        DataCast dataCast;
                        DataCmp dataCmp;
                        DataPdf dataPdf;
                        DataAlbum dataAlbum;
                        final MainListView mainListView2 = MainListView.this;
                        if (mainListView2.c1 && mainListView2.X0 != null && mainListView2.x != null) {
                            mainListView2.e0();
                            Context context = mainListView2.b;
                            if (context != null) {
                                int i = mainListView2.d;
                                if (i == 1) {
                                    MainApp p = MainApp.p(context);
                                    if (p != null && (dataAlbum = p.e0) != null) {
                                        DataSearch a2 = DataSearch.a(context);
                                        List list = dataAlbum.f12895a;
                                        List list2 = dataAlbum.b;
                                        a2.f12899a = list;
                                        a2.b = list2;
                                    }
                                } else if (i == 2) {
                                    MainApp p2 = MainApp.p(context);
                                    if (p2 != null && (dataPdf = p2.i0) != null) {
                                        DataSearch a3 = DataSearch.a(context);
                                        List list3 = dataPdf.f12895a;
                                        List list4 = dataPdf.b;
                                        a3.f12899a = list3;
                                        a3.b = list4;
                                    }
                                } else if (i == 3) {
                                    MainApp p3 = MainApp.p(context);
                                    if (p3 != null && (dataCmp = p3.g0) != null) {
                                        DataSearch a4 = DataSearch.a(context);
                                        List list5 = dataCmp.f12895a;
                                        List list6 = dataCmp.b;
                                        a4.f12899a = list5;
                                        a4.b = list6;
                                    }
                                } else if (i == 13) {
                                    MainApp p4 = MainApp.p(context);
                                    if (p4 != null && (dataCast = p4.f0) != null) {
                                        DataSearch a5 = DataSearch.a(context);
                                        List list7 = dataCast.f12895a;
                                        List list8 = dataCast.b;
                                        a5.f12899a = list7;
                                        a5.b = list8;
                                    }
                                } else if (i == 14) {
                                    MainApp p5 = MainApp.p(context);
                                    if (p5 != null && (dataBookAlbum = p5.n0) != null) {
                                        dataBookAlbum.i(context);
                                    }
                                } else if (i == 15) {
                                    MainApp p6 = MainApp.p(context);
                                    if (p6 != null && (dataBookPdf = p6.x0) != null) {
                                        dataBookPdf.i(context);
                                    }
                                } else if (i == 16) {
                                    MainApp p7 = MainApp.p(context);
                                    if (p7 != null && (dataBookCmp = p7.p0) != null) {
                                        dataBookCmp.i(context);
                                    }
                                } else if (i == 18) {
                                    MainApp p8 = MainApp.p(context);
                                    if (p8 != null && (dataBookHistory = p8.t0) != null) {
                                        dataBookHistory.i(context);
                                    }
                                } else if (i == 19) {
                                    MainApp p9 = MainApp.p(context);
                                    if (p9 != null && (dataBookAds = p9.m0) != null) {
                                        dataBookAds.i(context);
                                    }
                                } else if (i == 20) {
                                    MainApp p10 = MainApp.p(context);
                                    if (p10 != null && (dataBookOver = p10.w0) != null) {
                                        dataBookOver.i(context);
                                    }
                                } else if (i == 21) {
                                    MainApp p11 = MainApp.p(context);
                                    if (p11 != null && (dataBookPop = p11.z0) != null) {
                                        dataBookPop.i(context);
                                    }
                                } else if (i == 22) {
                                    MainApp p12 = MainApp.p(context);
                                    if (p12 != null && (dataBookLink = p12.v0) != null) {
                                        dataBookLink.i(context);
                                    }
                                } else if (i == 23) {
                                    MainApp p13 = MainApp.p(context);
                                    if (p13 != null && (dataBookBlock = p13.o0) != null) {
                                        dataBookBlock.i(context);
                                    }
                                } else if (i == 24) {
                                    MainApp p14 = MainApp.p(context);
                                    if (p14 != null && (dataBookDc = p14.q0) != null) {
                                        dataBookDc.i(context);
                                    }
                                } else if (i == 25) {
                                    MainApp p15 = MainApp.p(context);
                                    if (p15 != null && (dataBookFilter = p15.s0) != null) {
                                        dataBookFilter.i(context);
                                    }
                                } else if (i == 28) {
                                    MainApp p16 = MainApp.p(context);
                                    if (p16 != null && (dataBookJava = p16.u0) != null) {
                                        dataBookJava.i(context);
                                    }
                                } else if (i == 29) {
                                    MainApp p17 = MainApp.p(context);
                                    if (p17 != null && (dataBookTmem = p17.D0) != null) {
                                        dataBookTmem.i(context);
                                    }
                                } else if (i == 30) {
                                    MainApp p18 = MainApp.p(context);
                                    if (p18 != null && (dataBookTrans = p18.E0) != null) {
                                        dataBookTrans.i(context);
                                    }
                                } else if (i == 31) {
                                    MainApp p19 = MainApp.p(context);
                                    if (p19 != null && (dataBookPms = p19.y0) != null) {
                                        dataBookPms.i(context);
                                    }
                                } else if (i == 32) {
                                    if (PrefList.Z0 == 0) {
                                        MainApp p20 = MainApp.p(context);
                                        if (p20 != null && (dataBookDown = p20.r0) != null) {
                                            dataBookDown.i(context);
                                        }
                                    } else {
                                        DataBookSearch a6 = DataBookSearch.a(context);
                                        a6.f12914a = null;
                                        a6.b = null;
                                    }
                                }
                            }
                            mainListView2.X0.setOnClickListener(new Object());
                            mainListView2.Z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.45
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListView mainListView3 = MainListView.this;
                                    if (!mainListView3.J() && mainListView3.Y0 != null) {
                                        if (mainListView3.d == 42) {
                                            MainListListener mainListListener = mainListView3.o;
                                            if (mainListListener != null) {
                                                mainListListener.g();
                                                return;
                                            }
                                            return;
                                        }
                                        mainListView3.S(true, true);
                                        mainListView3.N();
                                    }
                                }
                            });
                            mainListView2.a1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.46
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListView mainListView3 = MainListView.this;
                                    MyButtonImage myButtonImage3 = mainListView3.a1;
                                    if (myButtonImage3 != null) {
                                        myButtonImage3.setVisibility(4);
                                        mainListView3.Y0.setText((CharSequence) null);
                                        ListTask listTask = mainListView3.g0;
                                        if (listTask != null) {
                                            listTask.j(null);
                                        }
                                    }
                                }
                            });
                            mainListView2.Y0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.main.MainListView.47
                                @Override // android.text.TextWatcher
                                public final void afterTextChanged(Editable editable) {
                                    String str;
                                    MainListView mainListView3 = MainListView.this;
                                    if (mainListView3.a1 == null) {
                                        return;
                                    }
                                    if (!TextUtils.isEmpty(editable)) {
                                        str = editable.toString();
                                    } else {
                                        str = null;
                                    }
                                    if (TextUtils.isEmpty(str)) {
                                        mainListView3.a1.setVisibility(4);
                                    } else {
                                        mainListView3.a1.setVisibility(0);
                                        str = str.trim();
                                    }
                                    boolean isEmpty = TextUtils.isEmpty(str);
                                    boolean z = !isEmpty;
                                    if (!isEmpty || mainListView3.d1) {
                                        if (!isEmpty) {
                                            String lowerCase = str.toLowerCase(Locale.US);
                                            ListTask listTask = mainListView3.g0;
                                            if (listTask != null) {
                                                listTask.j(lowerCase);
                                            }
                                        } else {
                                            ListTask listTask2 = mainListView3.g0;
                                            if (listTask2 != null) {
                                                listTask2.j(null);
                                            }
                                        }
                                    }
                                    mainListView3.d1 = z;
                                }

                                @Override // android.text.TextWatcher
                                public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                                }

                                @Override // android.text.TextWatcher
                                public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                                }
                            });
                            RelativeLayout relativeLayout2 = mainListView2.h;
                            if (relativeLayout2 == null) {
                                return;
                            }
                            relativeLayout2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.48
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FrameLayout frameLayout2;
                                    MyHeaderView myHeaderView;
                                    final MainListView mainListView3 = MainListView.this;
                                    if (mainListView3.c1 && (frameLayout2 = mainListView3.X0) != null && (myHeaderView = mainListView3.x) != null) {
                                        myHeaderView.addView(frameLayout2, -1, MainApp.b1);
                                        RelativeLayout relativeLayout3 = mainListView3.h;
                                        if (relativeLayout3 == null) {
                                            return;
                                        }
                                        relativeLayout3.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.49
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final MainListView mainListView4 = MainListView.this;
                                                if (mainListView4.c1 && mainListView4.X0 != null && mainListView4.x != null) {
                                                    mainListView4.Y0.setFocusable(true);
                                                    mainListView4.Y0.setFocusableInTouchMode(true);
                                                    RelativeLayout relativeLayout4 = mainListView4.h;
                                                    if (relativeLayout4 == null) {
                                                        return;
                                                    }
                                                    relativeLayout4.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.50
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final MainListView mainListView5 = MainListView.this;
                                                            if (mainListView5.c1 && mainListView5.X0 != null && mainListView5.x != null) {
                                                                mainListView5.Y0.requestFocus();
                                                                mainListView5.Y0.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView.51
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        Context context2;
                                                                        MainListView mainListView6 = MainListView.this;
                                                                        MyEditPure myEditPure2 = mainListView6.Y0;
                                                                        if (myEditPure2 != null && (context2 = mainListView6.b) != null) {
                                                                            MainUtil.c8(context2, myEditPure2);
                                                                        }
                                                                    }
                                                                }, 200L);
                                                                if (mainListView5.d == 42) {
                                                                    mainListView5.H();
                                                                } else {
                                                                    ListTask listTask = mainListView5.g0;
                                                                    if (listTask != null) {
                                                                        listTask.j(null);
                                                                    }
                                                                }
                                                                mainListView5.t1 = false;
                                                                return;
                                                            }
                                                            mainListView5.t1 = false;
                                                        }
                                                    });
                                                    return;
                                                }
                                                mainListView4.t1 = false;
                                            }
                                        });
                                        return;
                                    }
                                    mainListView3.t1 = false;
                                }
                            });
                            return;
                        }
                        mainListView2.t1 = false;
                    }
                });
                return;
            }
            return;
        }
        mainListView.t1 = false;
    }

    public static boolean b(MainListView mainListView, int i) {
        if (mainListView.M != null && mainListView.h0 != null && !mainListView.J() && i >= 0 && i < mainListView.h0.getGroupCount()) {
            MainListAdapter mainListAdapter = mainListView.h0;
            if (!mainListAdapter.q) {
                mainListView.d0(true, i, true, true);
                return true;
            }
            boolean[] zArr = mainListAdapter.j;
            if (zArr != null && i >= 0 && i < zArr.length) {
                mainListAdapter.y(i, !zArr[i]);
            }
            mainListView.c0();
            mainListView.a0();
            return true;
        }
        return false;
    }

    public static void c(MainListView mainListView, int i, boolean z) {
        boolean h;
        if (mainListView.h0 != null) {
            MyCoverView myCoverView = mainListView.f0;
            if (myCoverView == null) {
                h = false;
            } else {
                h = myCoverView.h();
            }
            if (h) {
                return;
            }
            mainListView.o0(0L, true);
            mainListView.B1 = i;
            mainListView.C1 = z;
            MainApp.J(mainListView.b, new AnonymousClass83());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        if (r13.size() == r12.h0.o()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        r9 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
    
        if (r13.size() == r12.h0.o()) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(com.mycompany.app.main.MainListView r12, java.util.List r13, java.lang.String r14, boolean r15) {
        /*
            com.mycompany.app.main.MainActivity r0 = r12.f16603a
            if (r0 != 0) goto L6
            goto L82
        L6:
            boolean r0 = r12.J()
            if (r0 == 0) goto Le
            goto L82
        Le:
            r12.u()
            com.mycompany.app.main.MainListAdapter r0 = r12.h0
            if (r0 == 0) goto L82
            if (r13 == 0) goto L82
            boolean r0 = r13.isEmpty()
            if (r0 == 0) goto L1f
            goto L82
        L1f:
            int r0 = r12.d
            r1 = 42
            if (r0 != r1) goto L2f
            com.mycompany.app.view.MyEditPure r0 = r12.Y0
            if (r0 != 0) goto L2a
            goto L2f
        L2a:
            android.content.Context r1 = r12.b
            com.mycompany.app.main.MainUtil.X4(r1, r0)
        L2f:
            boolean r0 = r12.c1
            r1 = 0
            if (r0 != 0) goto L5c
            int r0 = r12.d
            r2 = 32
            r3 = 1
            if (r0 != r2) goto L4f
            int r0 = com.mycompany.app.pref.PrefList.Z0
            if (r0 != 0) goto L5c
            int r0 = r13.size()
            com.mycompany.app.main.MainListAdapter r2 = r12.h0
            int r2 = r2.o()
            if (r0 != r2) goto L4c
            goto L4d
        L4c:
            r3 = r1
        L4d:
            r9 = r3
            goto L5d
        L4f:
            int r0 = r13.size()
            com.mycompany.app.main.MainListAdapter r2 = r12.h0
            int r2 = r2.o()
            if (r0 != r2) goto L4c
            goto L4d
        L5c:
            r9 = r1
        L5d:
            int r0 = r12.d
            r2 = 24
            if (r0 != r2) goto L65
            r12.D1 = r13
        L65:
            com.mycompany.app.dialog.DialogDeleteBook r4 = new com.mycompany.app.dialog.DialogDeleteBook
            com.mycompany.app.main.MainActivity r5 = r12.f16603a
            int r6 = r12.d
            com.mycompany.app.main.MainListView$93 r11 = new com.mycompany.app.main.MainListView$93
            r11.<init>()
            r7 = r13
            r8 = r14
            r10 = r15
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            r12.C0 = r4
            com.mycompany.app.main.MainListView$94 r13 = new com.mycompany.app.main.MainListView$94
            r13.<init>()
            r4.setOnDismissListener(r13)
            r12.D0 = r1
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListView.d(com.mycompany.app.main.MainListView, java.util.List, java.lang.String, boolean):void");
    }

    public static void e(MainListView mainListView, MainItem.ChildItem childItem) {
        String str;
        long j;
        if (mainListView.f16603a == null || mainListView.J()) {
            return;
        }
        DialogEditCmd dialogEditCmd = mainListView.M0;
        if (dialogEditCmd != null) {
            dialogEditCmd.dismiss();
            mainListView.M0 = null;
        }
        if (childItem != null) {
            long j2 = childItem.y;
            str = childItem.g;
            j = j2;
        } else {
            str = null;
            j = 0;
        }
        DialogEditCmd dialogEditCmd2 = new DialogEditCmd(mainListView.f16603a, j, str, false, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.111
            @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
            public final void a(long j3, String str2, String str3) {
                boolean z;
                if (j3 > 0) {
                    z = true;
                } else {
                    z = false;
                }
                MainListView mainListView2 = MainListView.this;
                mainListView2.m0 = z;
                mainListView2.L(j3, false);
            }
        });
        mainListView.M0 = dialogEditCmd2;
        dialogEditCmd2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.112
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView2 = MainListView.this;
                DialogEditCmd dialogEditCmd3 = mainListView2.M0;
                if (dialogEditCmd3 != null) {
                    dialogEditCmd3.dismiss();
                    mainListView2.M0 = null;
                }
            }
        });
    }

    public static void f(MainListView mainListView, List list) {
        MainActivity mainActivity = mainListView.f16603a;
        if (mainActivity != null && mainListView.x0 == null) {
            mainListView.x();
            if (list != null && !list.isEmpty()) {
                DialogFileDelete dialogFileDelete = new DialogFileDelete(mainActivity, mainListView.d, list, new DialogFileDelete.FileDeleteListener() { // from class: com.mycompany.app.main.MainListView.89
                    @Override // com.mycompany.app.dialog.DialogFileDelete.FileDeleteListener
                    public final void a() {
                        MainListView.this.d0(false, -1, false, true);
                    }

                    @Override // com.mycompany.app.dialog.DialogFileDelete.FileDeleteListener
                    public final void b(boolean z) {
                        MainListView mainListView2 = MainListView.this;
                        if (z) {
                            mainListView2.y0 = true;
                            if (mainListView2.c1) {
                                mainListView2.S(true, false);
                            }
                        }
                        ListTask listTask = mainListView2.g0;
                        if (listTask == null) {
                            return;
                        }
                        mainListView2.m0 = false;
                        listTask.h(null, true);
                    }
                });
                mainListView.x0 = dialogFileDelete;
                dialogFileDelete.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.90
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        MainListView.this.x();
                    }
                });
                mainListView.y0 = false;
                mainListView.z0 = true;
            }
        }
    }

    public static void g(MainListView mainListView, MainItem.ChildItem childItem) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (mainListView.f16603a == null || mainListView.J()) {
            return;
        }
        DialogEditMemo dialogEditMemo = mainListView.L0;
        if (dialogEditMemo != null) {
            dialogEditMemo.dismiss();
            mainListView.L0 = null;
        }
        long j = 0;
        if (mainListView.d == 24) {
            boolean z = false;
            if (childItem != null) {
                j = childItem.y;
                if (childItem.f16550a == 1) {
                    z = true;
                }
                String str6 = childItem.g;
                String str7 = childItem.j;
                str5 = childItem.G;
                str3 = str6;
                str4 = str7;
            } else {
                str3 = null;
                str4 = null;
                str5 = null;
            }
            mainListView.L0 = new DialogEditMemo(mainListView.f16603a, j, z, str3, str4, str5, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.108
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r5v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
                public final void a(long j2, String str8, String str9) {
                    boolean z2;
                    DcChangeListener dcChangeListener;
                    if (j2 > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    MainListView mainListView2 = MainListView.this;
                    mainListView2.m0 = z2;
                    mainListView2.L(j2, false);
                    if (mainListView2.d == 24 && (dcChangeListener = mainListView2.y1) != 0) {
                        ?? obj = new Object();
                        obj.g = str8;
                        obj.G = str9;
                        dcChangeListener.b(obj);
                    }
                }
            });
        } else {
            if (childItem != null) {
                j = childItem.y;
                String str8 = childItem.h;
                str2 = childItem.g;
                str = str8;
            } else {
                str = null;
                str2 = null;
            }
            mainListView.L0 = new DialogEditMemo(mainListView.f16603a, mainListView.d, j, str, str2, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.109
                @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
                public final void a(long j2, String str9, String str10) {
                    boolean z2;
                    if (j2 > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    MainListView mainListView2 = MainListView.this;
                    mainListView2.m0 = z2;
                    mainListView2.L(j2, false);
                }
            });
        }
        mainListView.L0.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.110
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView2 = MainListView.this;
                DialogEditMemo dialogEditMemo2 = mainListView2.L0;
                if (dialogEditMemo2 != null) {
                    dialogEditMemo2.dismiss();
                    mainListView2.L0 = null;
                }
            }
        });
    }

    public static void h(MainListView mainListView, MainItem.ChildItem childItem) {
        MainActivity mainActivity = mainListView.f16603a;
        if (mainActivity != null && !mainListView.J()) {
            mainListView.y();
            if (childItem == null) {
                return;
            }
            DialogFileRename dialogFileRename = new DialogFileRename(mainActivity, mainListView.d, childItem, new DialogFileRename.FileRenameListener() { // from class: com.mycompany.app.main.MainListView.91
                @Override // com.mycompany.app.dialog.DialogFileRename.FileRenameListener
                public final void a(int i, String str, long j) {
                    ArrayList arrayList;
                    MainListView mainListView2 = MainListView.this;
                    int i2 = 0;
                    boolean z = true;
                    mainListView2.d0(false, -1, false, true);
                    mainListView2.B0 = true;
                    if (mainListView2.c1) {
                        mainListView2.S(true, false);
                    }
                    if (mainListView2.d == 32) {
                        if (mainListView2.A != null) {
                            int i3 = MainConst.k0[0];
                            int i4 = PrefList.Z0;
                            if (i4 == 0 || i4 != i) {
                                i = 0;
                                i2 = i3;
                            }
                            if (i4 != i) {
                                PrefList.Z0 = i;
                                PrefSet.f(mainListView2.b, 4, i, "mBookDownType");
                                mainListView2.A.setText(i2);
                            }
                            mainListView2.L(j, true);
                            return;
                        }
                        return;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        arrayList = new ArrayList();
                        arrayList.add(str);
                    } else {
                        arrayList = null;
                    }
                    if (mainListView2.g0 == null) {
                        return;
                    }
                    if (arrayList == null || arrayList.isEmpty()) {
                        z = false;
                    }
                    mainListView2.m0 = z;
                    mainListView2.g0.h(arrayList, false);
                }
            });
            mainListView.A0 = dialogFileRename;
            dialogFileRename.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.92
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MainListView.this.y();
                }
            });
            mainListView.B0 = false;
        }
    }

    public static void i(MainListView mainListView, MainItem.ChildItem childItem) {
        MainActivity mainActivity = mainListView.f16603a;
        if (mainActivity == null || mainListView.J()) {
            return;
        }
        DialogInfo dialogInfo = mainListView.P0;
        if (dialogInfo != null) {
            dialogInfo.dismiss();
            mainListView.P0 = null;
        }
        DialogInfo dialogInfo2 = new DialogInfo(mainActivity, mainListView.d, childItem);
        mainListView.P0 = dialogInfo2;
        dialogInfo2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.117
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView2 = MainListView.this;
                DialogInfo dialogInfo3 = mainListView2.P0;
                if (dialogInfo3 != null) {
                    dialogInfo3.dismiss();
                    mainListView2.P0 = null;
                }
            }
        });
    }

    public static void j(MainListView mainListView, List list, String str, String str2, long j) {
        if (mainListView.f16603a == null || mainListView.J()) {
            return;
        }
        DialogUpdateFilter dialogUpdateFilter = mainListView.H0;
        if (dialogUpdateFilter != null) {
            dialogUpdateFilter.dismiss();
            mainListView.H0 = null;
        }
        mainListView.E1 = j;
        DialogUpdateFilter dialogUpdateFilter2 = new DialogUpdateFilter(mainListView.f16603a, list, str, str2, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.MainListView.100
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                MainListView mainListView2 = MainListView.this;
                long j2 = mainListView2.E1;
                if (j2 < 0) {
                    mainListView2.N();
                } else {
                    mainListView2.L(j2, false);
                }
            }
        });
        mainListView.H0 = dialogUpdateFilter2;
        dialogUpdateFilter2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.101
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView2 = MainListView.this;
                DialogUpdateFilter dialogUpdateFilter3 = mainListView2.H0;
                if (dialogUpdateFilter3 != null) {
                    dialogUpdateFilter3.dismiss();
                    mainListView2.H0 = null;
                }
            }
        });
    }

    public final void A() {
        DialogSetFilter dialogSetFilter = this.F0;
        if (dialogSetFilter != null) {
            dialogSetFilter.dismiss();
            this.F0 = null;
        }
    }

    public final void B() {
        this.R0 = false;
        DialogSetHistory dialogSetHistory = this.Q0;
        if (dialogSetHistory != null) {
            dialogSetHistory.dismiss();
            this.Q0 = null;
        }
    }

    public final void C() {
        MyPopupMenu myPopupMenu = this.p0;
        if (myPopupMenu != null) {
            MyDialogNormal myDialogNormal = this.V0;
            if (myDialogNormal != null) {
                myDialogNormal.u = null;
            } else {
                MyDialogBottom myDialogBottom = this.W0;
                if (myDialogBottom != null) {
                    myDialogBottom.Y = null;
                } else {
                    MainActivity mainActivity = this.f16603a;
                    if (mainActivity != null) {
                        mainActivity.Z0 = null;
                    }
                }
            }
            myPopupMenu.a();
            this.p0 = null;
        }
    }

    public final void D() {
        MyPopupMenu myPopupMenu = this.o0;
        if (myPopupMenu != null) {
            MyDialogNormal myDialogNormal = this.V0;
            if (myDialogNormal != null) {
                myDialogNormal.u = null;
            } else {
                MyDialogBottom myDialogBottom = this.W0;
                if (myDialogBottom != null) {
                    myDialogBottom.Y = null;
                } else {
                    MainActivity mainActivity = this.f16603a;
                    if (mainActivity != null) {
                        mainActivity.Z0 = null;
                    }
                }
            }
            myPopupMenu.a();
            this.o0 = null;
        }
    }

    public final void E() {
        MyPopupMenu myPopupMenu = this.n0;
        if (myPopupMenu != null) {
            MyDialogNormal myDialogNormal = this.V0;
            if (myDialogNormal != null) {
                myDialogNormal.u = null;
            } else {
                MyDialogBottom myDialogBottom = this.W0;
                if (myDialogBottom != null) {
                    myDialogBottom.Y = null;
                } else {
                    MainActivity mainActivity = this.f16603a;
                    if (mainActivity != null) {
                        mainActivity.Z0 = null;
                    }
                }
            }
            myPopupMenu.a();
            this.n0 = null;
        }
    }

    public final void F(boolean z) {
        if (this.n && this.w != null) {
            if (this.R != null) {
                q0(z);
                return;
            }
            this.m1 = z;
            RelativeLayout relativeLayout = this.h;
            if (relativeLayout != null) {
                relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.23
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity mainActivity;
                        final MainListView mainListView = MainListView.this;
                        if (mainListView.w != null && (mainActivity = mainListView.f16603a) != null) {
                            FrameLayout frameLayout = new FrameLayout(mainActivity);
                            frameLayout.setVisibility(8);
                            View view = new View(mainActivity);
                            int i = MainApp.m1;
                            frameLayout.addView(view, i, i);
                            View view2 = new View(mainActivity);
                            int i2 = MainApp.m1;
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                            layoutParams.gravity = 8388613;
                            frameLayout.addView(view2, layoutParams);
                            LinearLayout linearLayout = new LinearLayout(mainActivity);
                            linearLayout.setBaselineAligned(false);
                            linearLayout.setOrientation(0);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                            layoutParams2.topMargin = MainApp.m1;
                            frameLayout.addView(linearLayout, layoutParams2);
                            MyLineText myLineText = new MyLineText(mainActivity);
                            myLineText.setGravity(17);
                            myLineText.setTextSize(1, 16.0f);
                            myLineText.setVisibility(8);
                            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                            layoutParams3.weight = 1.0f;
                            linearLayout.addView(myLineText, layoutParams3);
                            MyLineText myLineText2 = new MyLineText(mainActivity);
                            myLineText2.setGravity(17);
                            myLineText2.setTextSize(1, 16.0f);
                            myLineText2.r(mainActivity);
                            myLineText2.setVisibility(8);
                            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -1);
                            layoutParams4.weight = 1.0f;
                            linearLayout.addView(myLineText2, layoutParams4);
                            MyLineText myLineText3 = new MyLineText(mainActivity);
                            myLineText3.setGravity(17);
                            myLineText3.setTextSize(1, 16.0f);
                            myLineText3.r(mainActivity);
                            myLineText3.setVisibility(8);
                            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
                            layoutParams5.weight = 1.0f;
                            linearLayout.addView(myLineText3, layoutParams5);
                            MyLineText myLineText4 = new MyLineText(mainActivity);
                            myLineText4.setGravity(17);
                            myLineText4.setTextSize(1, 16.0f);
                            myLineText4.r(mainActivity);
                            myLineText4.setVisibility(8);
                            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
                            layoutParams6.weight = 1.0f;
                            linearLayout.addView(myLineText4, layoutParams6);
                            mainListView.R = frameLayout;
                            mainListView.S = view;
                            mainListView.T = view2;
                            mainListView.U = linearLayout;
                            if (mainListView.d == 32) {
                                mainListView.W = myLineText;
                                mainListView.X = myLineText2;
                                mainListView.Z = myLineText3;
                                mainListView.a0 = myLineText4;
                                myLineText.setText(R.string.delete_file);
                                mainListView.X.setText(R.string.delete_record);
                                mainListView.Z.setText(R.string.rename);
                                mainListView.a0.setText(R.string.share);
                            } else if (mainListView.e) {
                                mainListView.W = myLineText;
                                myLineText.setText(R.string.delete);
                                int i3 = mainListView.d;
                                if (i3 != 19 && i3 != 20 && i3 != 21 && i3 != 22 && i3 != 23 && i3 != 24 && i3 != 28 && i3 != 29 && i3 != 30) {
                                    if (i3 != 25 && i3 != 27) {
                                        if (i3 == 18) {
                                            mainListView.a0 = myLineText2;
                                            myLineText2.setText(R.string.share);
                                        } else if (i3 == 35 || i3 == 36) {
                                            mainListView.Y = myLineText2;
                                            mainListView.a0 = myLineText3;
                                            myLineText2.setText(R.string.edit);
                                            mainListView.a0.setText(R.string.share);
                                        }
                                    } else {
                                        mainListView.V = myLineText2;
                                        myLineText2.setText(R.string.update);
                                    }
                                } else {
                                    mainListView.Y = myLineText2;
                                    myLineText2.setText(R.string.edit);
                                }
                            } else {
                                mainListView.W = myLineText;
                                mainListView.Z = myLineText2;
                                mainListView.a0 = myLineText3;
                                myLineText.setText(R.string.delete);
                                mainListView.Z.setText(R.string.rename);
                                mainListView.a0.setText(R.string.share);
                                int i4 = mainListView.d;
                                if (i4 == 1 || i4 == 2 || i4 == 3) {
                                    mainListView.b0 = myLineText4;
                                    myLineText4.setText(R.string.extract);
                                }
                            }
                            RelativeLayout relativeLayout2 = mainListView.h;
                            if (relativeLayout2 == null) {
                                return;
                            }
                            relativeLayout2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.24
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final MainListView mainListView2 = MainListView.this;
                                    if (mainListView2.w != null && mainListView2.R != null) {
                                        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, MainApp.g1 + MainApp.m1);
                                        layoutParams7.gravity = 80;
                                        mainListView2.w.addView(mainListView2.R, layoutParams7);
                                        MyLineText myLineText5 = mainListView2.V;
                                        if (myLineText5 != null) {
                                            myLineText5.setVisibility(0);
                                            mainListView2.V.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.25
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null) {
                                                        if (mainListView3.d == 27) {
                                                            mainListView3.w0(mainListAdapter.j(), null, null);
                                                        } else {
                                                            MainListView.j(mainListView3, mainListAdapter.j(), null, null, -1L);
                                                        }
                                                        MainListView.this.d0(false, -1, false, true);
                                                    }
                                                }
                                            });
                                        }
                                        MyLineText myLineText6 = mainListView2.W;
                                        if (myLineText6 != null) {
                                            myLineText6.setVisibility(0);
                                            mainListView2.W.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.26
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null) {
                                                        if (mainListView3.e) {
                                                            MainListView.d(mainListView3, mainListAdapter.j(), null, true);
                                                        } else {
                                                            MainListView.f(mainListView3, mainListAdapter.j());
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                        MyLineText myLineText7 = mainListView2.X;
                                        if (myLineText7 != null) {
                                            myLineText7.setVisibility(0);
                                            mainListView2.X.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.27
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null) {
                                                        MainListView.d(mainListView3, mainListAdapter.j(), null, false);
                                                    }
                                                }
                                            });
                                        }
                                        MyLineText myLineText8 = mainListView2.Y;
                                        if (myLineText8 != null) {
                                            myLineText8.setVisibility(0);
                                            mainListView2.Y.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.28
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    List j;
                                                    MainItem.ChildItem childItem;
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null && (j = mainListAdapter.j()) != null && !j.isEmpty() && (childItem = (MainItem.ChildItem) j.get(0)) != null) {
                                                        int i5 = mainListView3.d;
                                                        if (i5 == 35) {
                                                            mainListView3.s0(childItem, null);
                                                        } else if (i5 != 24 && i5 != 36) {
                                                            mainListView3.t0(childItem);
                                                        } else {
                                                            MainListView.g(mainListView3, childItem);
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                        MyLineText myLineText9 = mainListView2.Z;
                                        if (myLineText9 != null) {
                                            myLineText9.setVisibility(0);
                                            mainListView2.Z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.29
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    List j;
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null && (j = mainListAdapter.j()) != null && !j.isEmpty()) {
                                                        MainListView.h(mainListView3, (MainItem.ChildItem) j.get(0));
                                                    }
                                                }
                                            });
                                        }
                                        MyLineText myLineText10 = mainListView2.a0;
                                        if (myLineText10 != null) {
                                            myLineText10.setVisibility(0);
                                            mainListView2.a0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.30
                                                /* JADX WARN: Removed duplicated region for block: B:71:0x0228  */
                                                /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
                                                @Override // android.view.View.OnClickListener
                                                /*
                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                    To view partially-correct add '--show-bad-code' argument
                                                */
                                                public final void onClick(android.view.View r18) {
                                                    /*
                                                        Method dump skipped, instructions count: 595
                                                        To view this dump add '--comments-level debug' option
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListView.AnonymousClass30.onClick(android.view.View):void");
                                                }
                                            });
                                        }
                                        MyLineText myLineText11 = mainListView2.b0;
                                        if (myLineText11 != null) {
                                            if (mainListView2.d == 1) {
                                                myLineText11.setVisibility(0);
                                            } else {
                                                myLineText11.setVisibility(8);
                                            }
                                            mainListView2.b0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.31
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view3) {
                                                    MainListListener mainListListener;
                                                    MainListView mainListView3 = MainListView.this;
                                                    MainListAdapter mainListAdapter = mainListView3.h0;
                                                    if (mainListAdapter != null && mainListView3.c0 == null && mainListView3.d0 == null && (mainListListener = mainListView3.o) != null) {
                                                        mainListListener.k(mainListAdapter.j());
                                                    }
                                                }
                                            });
                                        }
                                        RelativeLayout relativeLayout3 = mainListView2.h;
                                        if (relativeLayout3 != null) {
                                            relativeLayout3.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.32
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainListView mainListView3 = MainListView.this;
                                                    boolean z2 = mainListView3.m1;
                                                    mainListView3.W();
                                                    mainListView3.q0(z2);
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

    public final void G() {
        int i;
        this.c1 = true;
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            fragmentExpandView.setBackColor(i);
        }
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            mainListAdapter.r = true;
        }
        if (this.X0 == null && this.x != null && !this.t1) {
            this.t1 = true;
            RelativeLayout relativeLayout = this.h;
            if (relativeLayout != null) {
                relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.42
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListView.a(MainListView.this);
                    }
                });
            }
        }
    }

    public final void H() {
        ListTask c2 = ListTask.c(this.b, this.d, new ListTask.ListTaskListener() { // from class: com.mycompany.app.main.MainListView.1
            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void a() {
                MainListView mainListView = MainListView.this;
                if (mainListView.d == 13) {
                    mainListView.L = false;
                }
                mainListView.o0(0L, false);
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void b() {
                MainListView mainListView = MainListView.this;
                if (mainListView.L) {
                    mainListView.L = false;
                    mainListView.o0(0L, false);
                }
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void c() {
                MainListView mainListView = MainListView.this;
                if (mainListView.L) {
                    mainListView.L = false;
                    mainListView.o0(0L, false);
                }
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final MainListAdapter d() {
                return MainListView.this.h0;
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final MainListAdapter2 e() {
                return null;
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void f() {
                MainListView mainListView = MainListView.this;
                MainListListener mainListListener = mainListView.o;
                if (mainListListener != null) {
                    mainListListener.getClass();
                }
                if (mainListView.q0 == PrefUtil.d(mainListView.d) && mainListView.r0 == PrefUtil.e(mainListView.d) && mainListView.s0 == PrefUtil.f(mainListView.d) && mainListView.t0 == PrefList.j && mainListView.u0 == PrefList.Z0) {
                    return;
                }
                mainListView.o0(200L, true);
            }

            /* JADX WARN: Type inference failed for: r5v13, types: [com.mycompany.app.expand.ExpandListAdapter, android.widget.BaseExpandableListAdapter, com.mycompany.app.main.MainListAdapter] */
            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void g(ListTask.ListTaskConfig listTaskConfig) {
                boolean z;
                int i;
                int size;
                int i2;
                ListTask listTask;
                int i3;
                List list;
                MainListAdapter mainListAdapter;
                int i4;
                int i5;
                int i6;
                int i7;
                int i8;
                MainListView mainListView = MainListView.this;
                if (mainListView.g || (((i8 = mainListView.d) != 1 && i8 != 2 && i8 != 3) || i8 == PrefList.j)) {
                    int i9 = mainListView.d;
                    if (i9 == 13) {
                        mainListView.L = false;
                    }
                    if (mainListView.M != null) {
                        int d = PrefUtil.d(i9);
                        if (mainListView.q0 != d) {
                            FragmentExpandView fragmentExpandView = mainListView.M;
                            if (MainApp.K1) {
                                i7 = -14606047;
                            } else {
                                i7 = -1;
                            }
                            fragmentExpandView.setBackColor(i7);
                        }
                        MainItem.ChildItem childItem = listTaskConfig.n;
                        if (childItem != null) {
                            mainListView.k0 = childItem.H;
                            mainListView.l0 = childItem.J;
                        } else {
                            mainListView.k0 = -1;
                            mainListView.l0 = -1;
                        }
                        int e = PrefUtil.e(mainListView.d);
                        boolean f = PrefUtil.f(mainListView.d);
                        int i10 = PrefList.j;
                        int i11 = PrefList.Z0;
                        if (mainListView.q0 == d && mainListView.r0 == e && mainListView.s0 == f && mainListView.t0 == i10 && mainListView.u0 == i11) {
                            z = false;
                        } else {
                            mainListView.j0 = PrefUtil.b(mainListView.d);
                            z = true;
                        }
                        mainListView.q0 = d;
                        mainListView.r0 = e;
                        mainListView.s0 = f;
                        mainListView.t0 = i10;
                        mainListView.u0 = i11;
                        MainListAdapter mainListAdapter2 = mainListView.h0;
                        if (mainListAdapter2 != null) {
                            List list2 = mainListAdapter2.h;
                            if (list2 != null) {
                                i5 = list2.size();
                            } else {
                                i5 = 0;
                            }
                            List list3 = listTaskConfig.f16239c;
                            if (list3 != null) {
                                i6 = list3.size();
                            } else {
                                i6 = 0;
                            }
                            if (i6 < i5) {
                                mainListView.M.collapseGroup(i5 - 1);
                            }
                        }
                        MainActivity mainActivity = mainListView.f16603a;
                        ListTask listTask2 = mainListView.g0;
                        if (listTask2 != null && mainListView.M != null) {
                            listTaskConfig.f16238a = mainListView.d;
                            listTaskConfig.b = mainListView.e;
                            listTaskConfig.o = listTask2.d();
                            if (!z && (mainListAdapter = mainListView.h0) != null) {
                                listTaskConfig.p = mainListAdapter.q;
                                mainListAdapter.C = false;
                                MainListLoader mainListLoader = mainListAdapter.v;
                                if (mainListLoader != null) {
                                    mainListLoader.f16599c = null;
                                }
                                mainListAdapter.h = listTaskConfig.f16239c;
                                mainListAdapter.i = listTaskConfig.d;
                                mainListAdapter.j = listTaskConfig.e;
                                mainListAdapter.k = listTaskConfig.f;
                                mainListAdapter.l = listTaskConfig.g;
                                mainListAdapter.m = listTaskConfig.h;
                                mainListAdapter.n = listTaskConfig.i;
                                MainItem.ChildItem childItem2 = listTaskConfig.n;
                                if (childItem2 != null) {
                                    i4 = childItem2.J;
                                } else {
                                    i4 = -1;
                                }
                                mainListAdapter.p = i4;
                                mainListAdapter.u = -1;
                                mainListAdapter.s = listTaskConfig.u;
                                mainListAdapter.notifyDataSetChanged();
                            } else {
                                FragmentExpandView fragmentExpandView2 = mainListView.M;
                                final ?? baseExpandableListAdapter = new BaseExpandableListAdapter();
                                baseExpandableListAdapter.b = new SparseArray();
                                baseExpandableListAdapter.f15690a = true;
                                baseExpandableListAdapter.d = mainActivity;
                                int i12 = listTaskConfig.f16238a;
                                baseExpandableListAdapter.e = i12;
                                baseExpandableListAdapter.f = listTaskConfig.b;
                                baseExpandableListAdapter.g = fragmentExpandView2;
                                baseExpandableListAdapter.h = listTaskConfig.f16239c;
                                baseExpandableListAdapter.i = listTaskConfig.d;
                                baseExpandableListAdapter.j = listTaskConfig.e;
                                baseExpandableListAdapter.k = listTaskConfig.f;
                                baseExpandableListAdapter.l = listTaskConfig.g;
                                baseExpandableListAdapter.m = listTaskConfig.h;
                                baseExpandableListAdapter.n = listTaskConfig.i;
                                baseExpandableListAdapter.o = listTaskConfig.o;
                                MainItem.ChildItem childItem3 = listTaskConfig.n;
                                if (childItem3 != null) {
                                    i3 = childItem3.J;
                                } else {
                                    i3 = -1;
                                }
                                baseExpandableListAdapter.p = i3;
                                baseExpandableListAdapter.q = listTaskConfig.p;
                                baseExpandableListAdapter.u = -1;
                                baseExpandableListAdapter.s = listTaskConfig.u;
                                baseExpandableListAdapter.A = MainUtil.C0(i12 == 18 ? "yyyy.MM.dd HH:mm:ss" : "yyyy.MM.dd");
                                if (i12 != 24 && i12 != 31 && i12 != 42 && (list = baseExpandableListAdapter.i) != null && !list.isEmpty()) {
                                    baseExpandableListAdapter.C = true;
                                    MainApp.J(mainActivity, new Runnable() { // from class: com.mycompany.app.main.MainListAdapter.14
                                        public AnonymousClass14() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainListAdapter mainListAdapter3 = MainListAdapter.this;
                                            try {
                                                List list4 = mainListAdapter3.i;
                                                if (list4 != null && !list4.isEmpty()) {
                                                    for (MainItem.ChildItem childItem4 : mainListAdapter3.i) {
                                                        if (mainListAdapter3.C) {
                                                            if (childItem4 != null && childItem4.b == 0) {
                                                                if (TextUtils.isEmpty(childItem4.F)) {
                                                                    if (mainListAdapter3.C) {
                                                                        long j = childItem4.A;
                                                                        if (j != -1) {
                                                                            childItem4.F = MainUtil.y1(j, mainListAdapter3.A, mainListAdapter3.e == 18 ? "yyyy.MM.dd HH:mm:ss" : "yyyy.MM.dd");
                                                                        }
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                                int i13 = mainListAdapter3.e;
                                                                if (i13 == 13 || i13 == 32) {
                                                                    if (!TextUtils.isEmpty(childItem4.G)) {
                                                                        continue;
                                                                    } else if (mainListAdapter3.C) {
                                                                        long j2 = childItem4.B;
                                                                        if (j2 != -1) {
                                                                            childItem4.G = MainUtil.h1(j2);
                                                                        }
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            return;
                                                        }
                                                    }
                                                }
                                            } catch (Exception unused) {
                                            }
                                        }
                                    });
                                }
                                baseExpandableListAdapter.v = new MainListLoader(mainActivity, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.main.MainListAdapter.1
                                    public AnonymousClass1() {
                                    }

                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                    public final void a(MainItem.ChildItem childItem4, View view) {
                                    }

                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                    public final void b(MainItem.ChildItem childItem4, View view, Bitmap bitmap) {
                                        Object tag;
                                        MainListAdapter mainListAdapter3 = MainListAdapter.this;
                                        int i13 = mainListAdapter3.e;
                                        if (childItem4 != null && view != null && (tag = view.getTag()) != null && (tag instanceof ChildHolder)) {
                                            ChildHolder childHolder = (ChildHolder) tag;
                                            if (childHolder.v == childItem4.J) {
                                                if (!childHolder.e.isActivated()) {
                                                    if (i13 == 18) {
                                                        childHolder.e.p(childItem4.v, childItem4.w, childItem4.h, mainListAdapter3.r());
                                                    } else {
                                                        childHolder.e.o(childItem4.v, childItem4.w);
                                                    }
                                                    childHolder.e.s();
                                                }
                                                if (childItem4.f16551c == 4) {
                                                    childHolder.f.setBackColor(-460552);
                                                }
                                                childHolder.f.r(childItem4.g, true);
                                                if (i13 == 32) {
                                                    if (childItem4.O) {
                                                        childHolder.f.setIconSmall(true);
                                                    } else {
                                                        childHolder.f.setIconSmall(false);
                                                    }
                                                }
                                                childHolder.f.setImageBitmap(bitmap);
                                            }
                                        }
                                    }
                                });
                                mainListView.h0 = baseExpandableListAdapter;
                                int i13 = mainListView.d;
                                if (i13 != 13 && i13 != 32) {
                                    if (i13 == 42) {
                                        baseExpandableListAdapter.r = true;
                                    }
                                } else {
                                    if (mainListView.U0 == null) {
                                        mainListView.U0 = GlideApp.a(mainActivity);
                                    }
                                    MainListAdapter mainListAdapter3 = mainListView.h0;
                                    GlideRequests glideRequests = mainListView.U0;
                                    MainListLoader mainListLoader2 = mainListAdapter3.v;
                                    if (mainListLoader2 != null) {
                                        mainListLoader2.e = glideRequests;
                                    }
                                }
                                if (mainListView.m) {
                                    mainListView.h0.x = new AnonymousClass71();
                                }
                                MainListAdapter mainListAdapter4 = mainListView.h0;
                                mainListAdapter4.y = new AnonymousClass72();
                                mainListAdapter4.z = new AnonymousClass73();
                                mainListView.M.setAdapter(mainListAdapter4);
                            }
                        }
                        mainListView.n0(listTaskConfig);
                        int i14 = listTaskConfig.m;
                        if (i14 != -1) {
                            mainListView.f0(mainListView.h0.n(i14), listTaskConfig.m, false, mainListView.m0);
                        } else if (mainListView.j0 && (i = mainListView.l0) != -1) {
                            mainListView.f0(mainListView.h0.n(i), mainListView.l0, true, false);
                        } else if (listTaskConfig.r) {
                            int i15 = listTaskConfig.s;
                            if (i15 != -1) {
                                mainListView.f0(mainListView.h0.n(i15), listTaskConfig.s, true, false);
                            } else {
                                int i16 = mainListView.l0;
                                if (i16 != -1) {
                                    mainListView.f0(mainListView.h0.n(i16), mainListView.l0, true, false);
                                } else {
                                    mainListView.f0(0, -10, true, false);
                                }
                            }
                        }
                        mainListView.j0 = false;
                        mainListView.m0 = false;
                        List list4 = mainListView.h0.i;
                        if (list4 == null) {
                            size = 0;
                        } else {
                            size = list4.size();
                        }
                        if (size == 0) {
                            ImageView imageView = mainListView.N;
                            if (imageView != null) {
                                imageView.setVisibility(8);
                            }
                            MyFadeImage myFadeImage = mainListView.P;
                            if (myFadeImage != null) {
                                myFadeImage.f();
                            }
                        } else {
                            ImageView imageView2 = mainListView.N;
                            if (imageView2 != null) {
                                if (size > 20) {
                                    i2 = 0;
                                } else {
                                    i2 = 4;
                                }
                                imageView2.setVisibility(i2);
                            }
                            MyFadeImage myFadeImage2 = mainListView.P;
                            if (myFadeImage2 != null) {
                                myFadeImage2.d();
                            }
                        }
                        mainListView.d0(listTaskConfig.p, -1, false, false);
                        if (size == 0 && (listTask = mainListView.g0) != null && listTask.f()) {
                            mainListView.L = true;
                        } else {
                            mainListView.o0(0L, false);
                        }
                        MainListListener mainListListener = mainListView.o;
                        if (mainListListener != null) {
                            mainListListener.o(listTaskConfig);
                        }
                    }
                    mainListView.l();
                    if (mainListView.y0) {
                        mainListView.x();
                    }
                    if (mainListView.B0) {
                        mainListView.y();
                    }
                    if (mainListView.D0) {
                        mainListView.u();
                    }
                    if (mainListView.R0) {
                        mainListView.B();
                    }
                    FragmentExpandView fragmentExpandView3 = mainListView.M;
                    if (fragmentExpandView3 != null) {
                        fragmentExpandView3.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListView mainListView2 = MainListView.this;
                                if (mainListView2.M == null) {
                                    return;
                                }
                                mainListView2.o(false);
                            }
                        });
                    }
                }
            }
        });
        this.g0 = c2;
        if (this.T0) {
            c2.o();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.view.View$OnClickListener, java.lang.Object] */
    public final void I() {
        int i;
        if (this.M != null) {
            k0();
            MyHeaderView myHeaderView = this.x;
            if (myHeaderView != 0) {
                myHeaderView.setOnClickListener(new Object());
            }
            MyButtonImage myButtonImage = this.y;
            if (myButtonImage != null) {
                myButtonImage.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListAdapter mainListAdapter;
                        MainListView mainListView = MainListView.this;
                        if (!mainListView.J()) {
                            if (mainListView.c1 && (mainListAdapter = mainListView.h0) != null && mainListAdapter.q) {
                                mainListView.V();
                                return;
                            }
                            if (mainListView.f) {
                                MainListListener mainListListener = mainListView.o;
                                if (mainListListener != null) {
                                    mainListListener.g();
                                    return;
                                }
                                return;
                            }
                            MainActivity mainActivity = mainListView.f16603a;
                            if (mainActivity != null) {
                                mainActivity.finish();
                            }
                        }
                    }
                });
            }
            MyButtonRelative myButtonRelative = this.z;
            if (myButtonRelative != null) {
                myButtonRelative.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z;
                        boolean z2;
                        boolean z3;
                        final MainListView mainListView = MainListView.this;
                        if (mainListView.n0 == null) {
                            mainListView.E();
                            if (view != null) {
                                ArrayList arrayList = new ArrayList();
                                int i2 = mainListView.d;
                                if (i2 == 13) {
                                    int length = MainConst.l0.length;
                                    for (int i3 = 0; i3 < length; i3++) {
                                        int i4 = MainConst.m0[i3];
                                        if (MainConst.l0[i3] == PrefList.r) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i4, z3));
                                    }
                                } else if (i2 == 32) {
                                    int length2 = MainConst.j0.length;
                                    for (int i5 = 0; i5 < length2; i5++) {
                                        int i6 = MainConst.k0[i5];
                                        if (MainConst.j0[i5] == PrefList.Z0) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i5, i6, z2));
                                    }
                                } else {
                                    int length3 = MainConst.h0.length;
                                    for (int i7 = 0; i7 < length3; i7++) {
                                        int i8 = MainConst.i0[i7];
                                        if (MainConst.h0[i7] == PrefList.j) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i7, i8, z));
                                    }
                                }
                                MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView.f16603a, mainListView.h, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView.77
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        MainListView.this.E();
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i9) {
                                        int i10;
                                        MainListView mainListView2 = MainListView.this;
                                        Context context = mainListView2.b;
                                        if (mainListView2.A != null) {
                                            int i11 = mainListView2.d;
                                            if (i11 == 13) {
                                                int[] iArr = MainConst.l0;
                                                int length4 = i9 % iArr.length;
                                                int i12 = PrefList.r;
                                                int i13 = iArr[length4];
                                                if (i12 != i13) {
                                                    PrefList.r = i13;
                                                    PrefSet.f(context, 4, i13, "mCastType");
                                                    mainListView2.A.setText(MainConst.m0[length4]);
                                                    mainListView2.d0(false, -1, false, false);
                                                    mainListView2.o0(0L, true);
                                                    DataCast.m(context).j();
                                                    mainListView2.U(false, false);
                                                    return true;
                                                }
                                            } else if (i11 == 32) {
                                                int[] iArr2 = MainConst.j0;
                                                int length5 = i9 % iArr2.length;
                                                int i14 = PrefList.Z0;
                                                int i15 = iArr2[length5];
                                                if (i14 != i15) {
                                                    PrefList.Z0 = i15;
                                                    PrefSet.f(context, 4, i15, "mBookDownType");
                                                    mainListView2.A.setText(MainConst.k0[length5]);
                                                    mainListView2.d0(false, -1, false, false);
                                                    mainListView2.U(false, false);
                                                    return true;
                                                }
                                            } else {
                                                int[] iArr3 = MainConst.h0;
                                                int length6 = i9 % iArr3.length;
                                                int i16 = PrefList.j;
                                                int i17 = iArr3[length6];
                                                if (i16 != i17) {
                                                    PrefList.j = i17;
                                                    PrefSet.f(context, 4, i17, "mViewType");
                                                    mainListView2.A.setText(MainConst.i0[length6]);
                                                    ListTask listTask = mainListView2.g0;
                                                    if (listTask != null) {
                                                        listTask.a();
                                                    }
                                                    int i18 = PrefList.j;
                                                    mainListView2.d = i18;
                                                    MainListListener mainListListener = mainListView2.o;
                                                    if (mainListListener != null) {
                                                        mainListListener.d(i18);
                                                    }
                                                    mainListView2.d0(false, -1, false, false);
                                                    mainListView2.o0(0L, true);
                                                    MyLineText myLineText = mainListView2.b0;
                                                    if (myLineText != null) {
                                                        if (mainListView2.d == 1) {
                                                            myLineText.setVisibility(0);
                                                        } else {
                                                            myLineText.setVisibility(8);
                                                        }
                                                    }
                                                    mainListView2.j0 = true;
                                                    mainListView2.k0 = -1;
                                                    mainListView2.l0 = -1;
                                                    mainListView2.m0 = false;
                                                    mainListView2.s = -1;
                                                    mainListView2.q0 = -1;
                                                    mainListView2.r0 = -1;
                                                    mainListView2.t0 = -1;
                                                    mainListView2.u0 = -1;
                                                    AppCompatTextView appCompatTextView = mainListView2.A;
                                                    if (appCompatTextView != null) {
                                                        int i19 = mainListView2.d;
                                                        if (i19 == 2) {
                                                            i10 = R.string.pdf;
                                                        } else if (i19 == 3) {
                                                            i10 = R.string.zip;
                                                        } else {
                                                            i10 = R.string.album;
                                                        }
                                                        appCompatTextView.setText(i10);
                                                    }
                                                    mainListView2.H();
                                                    mainListView2.U(true, false);
                                                    return true;
                                                }
                                            }
                                        }
                                        return true;
                                    }
                                });
                                mainListView.n0 = myPopupMenu;
                                MyDialogNormal myDialogNormal = mainListView.V0;
                                if (myDialogNormal != null) {
                                    myDialogNormal.u = myPopupMenu;
                                    return;
                                }
                                MyDialogBottom myDialogBottom = mainListView.W0;
                                if (myDialogBottom != null) {
                                    myDialogBottom.Y = myPopupMenu;
                                    return;
                                }
                                MainActivity mainActivity = mainListView.f16603a;
                                if (mainActivity != null) {
                                    mainActivity.Z0 = myPopupMenu;
                                }
                            }
                        }
                    }
                });
            }
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView != null && (i = this.i) > 0) {
                appCompatTextView.setText(i);
            }
            MyButtonImage myButtonImage2 = this.C;
            if (myButtonImage2 != null) {
                myButtonImage2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListView.this.u0();
                    }
                });
            }
            MyButtonImage myButtonImage3 = this.D;
            if (myButtonImage3 != null) {
                if (this.d == 25) {
                    myButtonImage3.setNoti(PrefAlbum.r);
                }
                if (this.l) {
                    this.D.setVisibility(0);
                }
                this.D.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListView mainListView = MainListView.this;
                        int i2 = mainListView.d;
                        if (i2 != 19 && i2 != 20 && i2 != 21 && i2 != 22 && i2 != 23 && i2 != 25 && i2 != 27 && i2 != 28 && i2 != 29 && i2 != 30) {
                            if (i2 == 26) {
                                MainListView.e(mainListView, null);
                                return;
                            }
                            if (i2 != 24 && i2 != 36) {
                                MainListListener mainListListener = mainListView.o;
                                if (mainListListener != null) {
                                    mainListListener.a();
                                    return;
                                }
                                return;
                            }
                            MainListView.g(mainListView, null);
                            return;
                        }
                        if (i2 == 25 && PrefAlbum.r) {
                            PrefAlbum.r = false;
                            PrefSet.d(0, mainListView.b, "mFilterNoti2", false);
                            MyButtonImage myButtonImage4 = mainListView.D;
                            if (myButtonImage4 != null) {
                                myButtonImage4.setNoti(false);
                            }
                        }
                        MainListListener mainListListener2 = mainListView.o;
                        if (mainListListener2 != null) {
                            mainListListener2.m(view);
                        }
                    }
                });
            }
            MyButtonImage myButtonImage4 = this.E;
            if (myButtonImage4 != null) {
                myButtonImage4.setVisibility(0);
                this.E.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        List arrayList;
                        MainListView mainListView = MainListView.this;
                        MainListAdapter mainListAdapter = mainListView.h0;
                        if (mainListAdapter == null) {
                            return;
                        }
                        if (mainListAdapter.o() <= 0) {
                            arrayList = null;
                        } else {
                            int i2 = mainListAdapter.n;
                            if (i2 > 0) {
                                List list = mainListAdapter.i;
                                arrayList = list.subList(i2, list.size());
                            } else {
                                arrayList = new ArrayList(mainListAdapter.i);
                            }
                        }
                        MainListView.d(mainListView, arrayList, null, true);
                    }
                });
            }
            MyButtonImage myButtonImage5 = this.F;
            if (myButtonImage5 != null) {
                myButtonImage5.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ArrayList arrayList;
                        MainListView mainListView = MainListView.this;
                        if (!mainListView.K()) {
                            int i2 = mainListView.d;
                            if (i2 != 25 && i2 != 27) {
                                mainListView.P();
                                return;
                            }
                            MainListAdapter mainListAdapter = mainListView.h0;
                            if (mainListAdapter != null) {
                                List list = mainListAdapter.i;
                                if (list != null && !list.isEmpty()) {
                                    arrayList = new ArrayList();
                                    for (MainItem.ChildItem childItem : mainListAdapter.i) {
                                        if (childItem != null && childItem.b == 0 && childItem.M) {
                                            arrayList.add(childItem);
                                        }
                                    }
                                } else {
                                    arrayList = null;
                                }
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    if (mainListView.d == 27) {
                                        mainListView.w0(arrayList, null, null);
                                    } else {
                                        MainListView.j(mainListView, arrayList, null, null, -1L);
                                    }
                                }
                            }
                        }
                    }
                });
            }
            MyButtonImage myButtonImage6 = this.G;
            if (myButtonImage6 != null) {
                myButtonImage6.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListView mainListView = MainListView.this;
                        if (mainListView.c1) {
                            return;
                        }
                        mainListView.G();
                    }
                });
            }
            MyButtonImage myButtonImage7 = this.H;
            if (myButtonImage7 != null) {
                myButtonImage7.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z;
                        boolean z2;
                        final MainListView mainListView = MainListView.this;
                        if (mainListView.o0 == null) {
                            mainListView.D();
                            if (view != null) {
                                ArrayList arrayList = new ArrayList();
                                int i2 = mainListView.d;
                                if (i2 == 26) {
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.sort));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(12, R.string.info));
                                } else {
                                    if (i2 != 1 && i2 != 2 && i2 != 3) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (i2 == 13) {
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.setting));
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.sort));
                                    if (z) {
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.show_recent, 0, PrefUtil.b(mainListView.d)));
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.show_detail, 0, PrefUtil.a(mainListView.d)));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(4, R.string.show_single, 0, PrefUtil.c(mainListView.d)));
                                    if (z) {
                                        int i3 = R.string.open_continue;
                                        int i4 = mainListView.d;
                                        if (i4 == 1) {
                                            z2 = PrefList.q;
                                        } else if (i4 == 2) {
                                            z2 = PrefList.q;
                                        } else if (i4 == 3) {
                                            z2 = PrefList.q;
                                        } else {
                                            z2 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(5, i3, 0, z2));
                                    }
                                    if (!mainListView.g) {
                                        if (z) {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.scan_dir));
                                        } else if (mainListView.d == 13) {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.select_dir));
                                        }
                                    }
                                    int i5 = mainListView.d;
                                    if (i5 == 18) {
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(7, R.string.history_time));
                                    } else if (i5 == 25 || i5 == 27) {
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(11, R.string.auto_update));
                                    }
                                }
                                MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView.f16603a, mainListView.h, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView.78
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        MainListView.this.D();
                                    }

                                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i6) {
                                        final MainListView mainListView2 = MainListView.this;
                                        Context context = mainListView2.b;
                                        MainActivity mainActivity = mainListView2.f16603a;
                                        boolean z3 = false;
                                        switch (i6) {
                                            case 0:
                                                MainListListener mainListListener = mainListView2.o;
                                                if (mainListListener != null) {
                                                    mainListListener.s();
                                                }
                                                return true;
                                            case 1:
                                                if (mainActivity != null && !mainListView2.J()) {
                                                    DialogSetSort dialogSetSort = mainListView2.w0;
                                                    if (dialogSetSort != null) {
                                                        dialogSetSort.dismiss();
                                                        mainListView2.w0 = null;
                                                    }
                                                    DialogSetSort dialogSetSort2 = new DialogSetSort(mainActivity, mainListView2.d, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.MainListView.87
                                                        @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                        public final void a() {
                                                            MainListView.this.N();
                                                        }
                                                    });
                                                    mainListView2.w0 = dialogSetSort2;
                                                    dialogSetSort2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.88
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            MainListView mainListView3 = MainListView.this;
                                                            DialogSetSort dialogSetSort3 = mainListView3.w0;
                                                            if (dialogSetSort3 != null) {
                                                                dialogSetSort3.dismiss();
                                                                mainListView3.w0 = null;
                                                            }
                                                        }
                                                    });
                                                    return true;
                                                }
                                                return true;
                                            case 2:
                                                MyPopupMenu myPopupMenu2 = mainListView2.o0;
                                                if (myPopupMenu2 != null) {
                                                    boolean d = myPopupMenu2.d(i6);
                                                    boolean z4 = !d;
                                                    int i7 = mainListView2.d;
                                                    if (i7 == 1) {
                                                        PrefList.p = z4;
                                                        PrefSet.d(4, context, "mAlbumRecent", z4);
                                                    } else if (i7 == 2) {
                                                        PrefList.p = z4;
                                                        PrefSet.d(4, context, "mAlbumRecent", z4);
                                                    } else if (i7 == 3) {
                                                        PrefList.p = z4;
                                                        PrefSet.d(4, context, "mAlbumRecent", z4);
                                                    }
                                                    if (!d) {
                                                        mainListView2.p(false);
                                                        mainListView2.g0(mainListView2.l0, true);
                                                        return true;
                                                    }
                                                    MainListAdapter mainListAdapter = mainListView2.h0;
                                                    if (mainListAdapter != null) {
                                                        mainListAdapter.notifyDataSetChanged();
                                                        mainListView2.p(false);
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            case 3:
                                                if (mainListView2.o0 != null) {
                                                    PrefUtil.g(context, mainListView2.d, !r4.d(i6));
                                                    MainListAdapter mainListAdapter2 = mainListView2.h0;
                                                    if (mainListAdapter2 != null) {
                                                        mainListAdapter2.notifyDataSetChanged();
                                                        mainListView2.p(false);
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            case 4:
                                                if (mainListView2.o0 != null) {
                                                    PrefUtil.h(context, mainListView2.d, !r4.d(i6));
                                                    MainListAdapter mainListAdapter3 = mainListView2.h0;
                                                    if (mainListAdapter3 != null) {
                                                        mainListAdapter3.notifyDataSetChanged();
                                                        mainListView2.p(false);
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            case 5:
                                                MyPopupMenu myPopupMenu3 = mainListView2.o0;
                                                if (myPopupMenu3 != null) {
                                                    int i8 = mainListView2.d;
                                                    boolean z5 = !myPopupMenu3.d(i6);
                                                    if (i8 == 1) {
                                                        PrefList.q = z5;
                                                        PrefSet.d(4, context, "mAlbumContinue", z5);
                                                        return true;
                                                    }
                                                    if (i8 == 2) {
                                                        PrefList.q = z5;
                                                        PrefSet.d(4, context, "mAlbumContinue", z5);
                                                        return true;
                                                    }
                                                    if (i8 == 3) {
                                                        PrefList.q = z5;
                                                        PrefSet.d(4, context, "mAlbumContinue", z5);
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            case 6:
                                                MainListListener mainListListener2 = mainListView2.o;
                                                if (mainListListener2 != null) {
                                                    mainListListener2.r();
                                                    return true;
                                                }
                                                return true;
                                            case 7:
                                                if (mainActivity != null && !mainListView2.J()) {
                                                    mainListView2.B();
                                                    DialogSetHistory dialogSetHistory = new DialogSetHistory(mainActivity, new DialogSetHistory.SetHistoryListener() { // from class: com.mycompany.app.main.MainListView.118
                                                        @Override // com.mycompany.app.dialog.DialogSetHistory.SetHistoryListener
                                                        public final void a(boolean z6) {
                                                            MainListView mainListView3 = MainListView.this;
                                                            if (z6) {
                                                                mainListView3.R0 = true;
                                                                if (mainListView3.c1) {
                                                                    mainListView3.S(true, false);
                                                                }
                                                                mainListView3.N();
                                                                return;
                                                            }
                                                            mainListView3.B();
                                                        }
                                                    });
                                                    mainListView2.Q0 = dialogSetHistory;
                                                    dialogSetHistory.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.119
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            MainListView.this.B();
                                                        }
                                                    });
                                                    mainListView2.R0 = false;
                                                    return true;
                                                }
                                                return true;
                                            case 8:
                                                MainListListener mainListListener3 = mainListView2.o;
                                                if (mainListListener3 != null) {
                                                    mainListListener3.n(true);
                                                    return true;
                                                }
                                                return true;
                                            case 9:
                                                MainListListener mainListListener4 = mainListView2.o;
                                                if (mainListListener4 != null) {
                                                    mainListListener4.n(false);
                                                    return true;
                                                }
                                                return true;
                                            case 10:
                                                MainListListener mainListListener5 = mainListView2.o;
                                                if (mainListListener5 != null) {
                                                    mainListListener5.j();
                                                    return true;
                                                }
                                                return true;
                                            case 11:
                                                if (mainActivity != null && !mainListView2.J()) {
                                                    DialogSeekFilter dialogSeekFilter = mainListView2.G0;
                                                    if (dialogSeekFilter != null) {
                                                        dialogSeekFilter.dismiss();
                                                        mainListView2.G0 = null;
                                                    }
                                                    if (mainListView2.d == 27) {
                                                        z3 = true;
                                                    }
                                                    DialogSeekFilter dialogSeekFilter2 = new DialogSeekFilter(mainActivity, z3);
                                                    mainListView2.G0 = dialogSeekFilter2;
                                                    dialogSeekFilter2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.99
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            MainListView mainListView3 = MainListView.this;
                                                            DialogSeekFilter dialogSeekFilter3 = mainListView3.G0;
                                                            if (dialogSeekFilter3 != null) {
                                                                dialogSeekFilter3.dismiss();
                                                                mainListView3.G0 = null;
                                                            }
                                                        }
                                                    });
                                                    return true;
                                                }
                                                return true;
                                            case 12:
                                                if (mainActivity != null && !mainListView2.J()) {
                                                    DialogWebView dialogWebView = mainListView2.J0;
                                                    if (dialogWebView != null) {
                                                        dialogWebView.dismiss();
                                                        mainListView2.J0 = null;
                                                    }
                                                    DialogWebView dialogWebView2 = new DialogWebView(mainListView2.f16603a, "https://help.adblockplus.org/hc/en-us/articles/360062733293-How-to-write-filters#basic", "https://help.adblockplus.org/hc/en-us/articles/360062733293-How-to-write-filters#basic", false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.main.MainListView.104
                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void a(int i9, String str, String str2) {
                                                            MainListView mainListView3 = MainListView.this;
                                                            if (mainListView3.f16603a == null) {
                                                                return;
                                                            }
                                                            Intent o4 = MainUtil.o4(mainListView3.b);
                                                            o4.putExtra("EXTRA_PATH", str);
                                                            o4.addFlags(67108864);
                                                            mainListView3.f16603a.startActivity(o4);
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void b() {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void c(String str, String str2, String str3, long j) {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void d(WebNestView webNestView, String str) {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void e() {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void f() {
                                                        }
                                                    });
                                                    mainListView2.J0 = dialogWebView2;
                                                    dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.105
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            MainListView mainListView3 = MainListView.this;
                                                            DialogWebView dialogWebView3 = mainListView3.J0;
                                                            if (dialogWebView3 != null) {
                                                                dialogWebView3.dismiss();
                                                                mainListView3.J0 = null;
                                                            }
                                                        }
                                                    });
                                                    return true;
                                                }
                                                return true;
                                            default:
                                                return true;
                                        }
                                    }
                                });
                                mainListView.o0 = myPopupMenu;
                                MyDialogNormal myDialogNormal = mainListView.V0;
                                if (myDialogNormal != null) {
                                    myDialogNormal.u = myPopupMenu;
                                    return;
                                }
                                MyDialogBottom myDialogBottom = mainListView.W0;
                                if (myDialogBottom != null) {
                                    myDialogBottom.Y = myPopupMenu;
                                    return;
                                }
                                MainActivity mainActivity = mainListView.f16603a;
                                if (mainActivity != null) {
                                    mainActivity.Z0 = myPopupMenu;
                                }
                            }
                        }
                    }
                });
            }
            MyButtonCheck myButtonCheck = this.J;
            if (myButtonCheck != null) {
                myButtonCheck.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.13
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListView.this.m0();
                    }
                });
            }
            this.M.setFragmentScrollListener(new FragmentExpandView.FragmentScrollListener() { // from class: com.mycompany.app.main.MainListView.14
                @Override // com.mycompany.app.fragment.FragmentExpandView.FragmentScrollListener
                public final void a(int i2, boolean z) {
                    MainListView mainListView = MainListView.this;
                    if (i2 == 0) {
                        mainListView.l();
                    }
                    if (!z) {
                        return;
                    }
                    mainListView.o(false);
                }

                @Override // com.mycompany.app.fragment.FragmentExpandView.FragmentScrollListener
                public final void b(int i2, int i3, int i4, int i5, int i6, int i7) {
                    boolean z;
                    MyHeaderView myHeaderView2;
                    MainListView mainListView = MainListView.this;
                    if (mainListView.M != null) {
                        if (!mainListView.c1 && PrefUtil.d(mainListView.d) != 0) {
                            mainListView.M.e(false);
                        } else {
                            FragmentExpandView fragmentExpandView = mainListView.M;
                            if (i3 > 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            fragmentExpandView.e(z);
                        }
                        if (i2 == 0) {
                            if (mainListView.i0 != i2) {
                                mainListView.i0 = i2;
                                if (i3 >= MainApp.b1 && i5 != 2) {
                                    if (i5 == 1 && (myHeaderView2 = mainListView.x) != null && Float.compare(myHeaderView2.getTranslationY(), -MainApp.b1) != 0) {
                                        mainListView.l0(-MainApp.b1, true);
                                        return;
                                    }
                                    return;
                                }
                                mainListView.z0();
                                return;
                            }
                            return;
                        }
                        mainListView.i0 = i2;
                        mainListView.j0 = false;
                        MyScrollBar myScrollBar = mainListView.O;
                        if (myScrollBar != null) {
                            myScrollBar.p(i6, i7);
                        }
                        if (mainListView.x != null) {
                            mainListView.l0(0.0f, false);
                        }
                    }
                }
            });
            if (this.k) {
                ImageView imageView = new ImageView(this.f16603a);
                this.N = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                if (MainApp.K1) {
                    this.N.setImageResource(R.drawable.outline_list_footer_dark_24);
                    this.N.setBackgroundResource(R.drawable.selector_normal_dark);
                } else {
                    this.N.setImageResource(R.drawable.outline_list_footer_black_24);
                    this.N.setBackgroundResource(R.drawable.selector_normal);
                }
                this.N.setLayoutParams(new AbsListView.LayoutParams(-1, MainApp.i1));
                this.M.addFooterView(this.N, null, false);
                this.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListView mainListView = MainListView.this;
                        FragmentExpandView fragmentExpandView = mainListView.M;
                        if (fragmentExpandView == null) {
                            return;
                        }
                        fragmentExpandView.setSelection(0);
                        mainListView.M.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.15.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                                MainListView mainListView2 = MainListView.this;
                                if (mainListView2.M == null) {
                                    return;
                                }
                                MyScrollBar myScrollBar = mainListView2.O;
                                if (myScrollBar != null) {
                                    myScrollBar.o();
                                }
                                MainListView.this.o(false);
                                MainListView.this.l();
                            }
                        });
                    }
                });
            }
            this.M.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() { // from class: com.mycompany.app.main.MainListView.16
                @Override // android.widget.ExpandableListView.OnGroupClickListener
                public final boolean onGroupClick(ExpandableListView expandableListView, View view, int i2, long j) {
                    MainListAdapter mainListAdapter;
                    MainListView mainListView = MainListView.this;
                    FragmentExpandView fragmentExpandView = mainListView.M;
                    if (fragmentExpandView == null || (mainListAdapter = mainListView.h0) == null) {
                        return false;
                    }
                    mainListAdapter.t = true;
                    if (fragmentExpandView.isGroupExpanded(i2)) {
                        mainListView.M.a(i2, 0);
                        return true;
                    }
                    mainListView.M.b(i2);
                    return true;
                }
            });
            this.M.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() { // from class: com.mycompany.app.main.MainListView.17
                @Override // android.widget.ExpandableListView.OnGroupExpandListener
                public final void onGroupExpand(int i2) {
                    MainListAdapter mainListAdapter = MainListView.this.h0;
                    if (mainListAdapter != null) {
                        if (mainListAdapter.t) {
                            mainListAdapter.t = false;
                            mainListAdapter.u = i2;
                        } else {
                            mainListAdapter.u = -1;
                        }
                    }
                }
            });
            this.M.setOnGroupCollapseListener(new ExpandableListView.OnGroupCollapseListener() { // from class: com.mycompany.app.main.MainListView.18
                @Override // android.widget.ExpandableListView.OnGroupCollapseListener
                public final void onGroupCollapse(int i2) {
                    List list;
                    MainListView mainListView = MainListView.this;
                    if (mainListView.M != null) {
                        MainListAdapter mainListAdapter = mainListView.h0;
                        int i3 = -1;
                        if (mainListAdapter != null) {
                            if (mainListAdapter.t) {
                                mainListAdapter.t = false;
                                mainListAdapter.u = i2;
                            } else {
                                mainListAdapter.u = -1;
                            }
                        }
                        MyListGroup myListGroup = mainListView.p;
                        if (myListGroup != null && myListGroup.getVisibility() == 0) {
                            MainListAdapter mainListAdapter2 = mainListView.h0;
                            if (mainListAdapter2.g != null && (list = mainListAdapter2.h) != null && i2 >= 0 && i2 < list.size()) {
                                if (mainListAdapter2.h.size() == 1) {
                                    i3 = 0;
                                } else {
                                    i3 = i2;
                                    for (int i4 = 0; i4 < i2 && i4 < mainListAdapter2.h.size(); i4++) {
                                        MainItem.GroupItem groupItem = (MainItem.GroupItem) mainListAdapter2.h.get(i4);
                                        if (groupItem != null && groupItem.f16553c != 0 && mainListAdapter2.g.isGroupExpanded(i4)) {
                                            i3 += groupItem.f16553c;
                                        }
                                    }
                                }
                            }
                            mainListView.M.setSelectionFromTop(i3, Math.round(mainListView.p.getTranslationY()));
                            mainListView.M.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.18.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainListView mainListView2 = MainListView.this;
                                    if (mainListView2.M == null) {
                                        return;
                                    }
                                    mainListView2.o(false);
                                }
                            });
                        }
                    }
                }
            });
            this.M.setOnChildClickListener(new ExpandableListView.OnChildClickListener() { // from class: com.mycompany.app.main.MainListView.19
                @Override // android.widget.ExpandableListView.OnChildClickListener
                public final boolean onChildClick(ExpandableListView expandableListView, View view, int i2, int i3, long j) {
                    MainListAdapter mainListAdapter;
                    int i4;
                    MainItem.ChildItem m;
                    MainItem.ChildItem childItem;
                    String str;
                    List list;
                    int indexOf;
                    List list2;
                    MainItem.ChildItem childItem2;
                    MainItem.GroupItem groupItem;
                    final MainListView mainListView = MainListView.this;
                    MainActivity mainActivity = mainListView.f16603a;
                    Context context = mainListView.b;
                    if (!mainListView.J() && (mainListAdapter = mainListView.h0) != null) {
                        int i5 = mainListView.d;
                        if (i5 != 1 && i5 != 14) {
                            if (i5 != 2 && i5 != 15) {
                                if (i5 == 3 || i5 == 16) {
                                    ListTaskCmp.k = true;
                                }
                            } else {
                                ListTaskPdf.k = true;
                            }
                        } else {
                            ListTaskAlbum.k = true;
                        }
                        List list3 = mainListAdapter.h;
                        if (list3 == null || i2 < 0 || i2 >= list3.size() || (groupItem = (MainItem.GroupItem) mainListAdapter.h.get(i2)) == null) {
                            i4 = 0;
                        } else {
                            i4 = groupItem.e;
                        }
                        int i6 = i4 + i3;
                        if (mainListView.n) {
                            MainListAdapter mainListAdapter2 = mainListView.h0;
                            if (mainListAdapter2.q) {
                                if (!mainListAdapter2.t(i6)) {
                                    MainListAdapter mainListAdapter3 = mainListView.h0;
                                    boolean[] zArr = mainListAdapter3.l;
                                    if (zArr != null && i6 >= 0 && i6 < zArr.length) {
                                        mainListAdapter3.v(i6, !zArr[i6]);
                                    }
                                    mainListView.c0();
                                    mainListView.a0();
                                    return true;
                                }
                            }
                        }
                        if (mainListView.o != null) {
                            MainItem.ChildItem childItem3 = null;
                            if (!mainListView.e) {
                                MainItem.ChildItem m2 = mainListView.h0.m(i6);
                                if (m2 != null) {
                                    if (mainListView.d == 13) {
                                        mainListView.o.b(i6, mainListView.h0.i);
                                        return true;
                                    }
                                    if (mainListView.c1) {
                                        DataSearch a2 = DataSearch.a(context);
                                        String str2 = m2.g;
                                        a2.getClass();
                                        if (!TextUtils.isEmpty(str2) && (list = a2.b) != null && !list.isEmpty() && (indexOf = a2.b.indexOf(str2)) >= 0 && (list2 = a2.f12899a) != null && indexOf < list2.size() && (childItem2 = (MainItem.ChildItem) a2.f12899a.get(indexOf)) != null) {
                                            childItem2.J = indexOf;
                                            childItem3 = childItem2;
                                        }
                                        if (childItem3 != null) {
                                            mainListView.S(false, true);
                                            mainListView.N();
                                            m2 = childItem3;
                                        }
                                    }
                                    mainListView.o.f(m2.J, m2, false);
                                    return true;
                                }
                            } else {
                                int i7 = mainListView.d;
                                if (i7 != 19 && i7 != 20 && i7 != 21 && i7 != 22 && i7 != 23 && i7 != 28 && i7 != 29 && i7 != 30 && (m = mainListView.h0.m(i6)) != null) {
                                    if (mainListView.d == 25) {
                                        if (mainActivity != null) {
                                            if ("sb_user_filter_path".equals(m.g)) {
                                                mainListView.u0();
                                                return true;
                                            }
                                            if (URLUtil.isNetworkUrl(m.g)) {
                                                str = m.z;
                                            } else {
                                                str = m.g;
                                            }
                                            if (!MainUtil.h6(context, str)) {
                                                MainUtil.e8(mainActivity, R.string.invalid_file);
                                                return true;
                                            }
                                            Intent intent = new Intent(context, (Class<?>) MainTxtView.class);
                                            intent.putExtra("EXTRA_PATH", str);
                                            mainActivity.startActivity(intent);
                                            return true;
                                        }
                                    } else {
                                        if (TextUtils.isEmpty(m.g)) {
                                            MainUtil.e8(mainActivity, R.string.invalid_path);
                                            return true;
                                        }
                                        int i8 = mainListView.d;
                                        if (i8 == 18) {
                                            mainListView.o.f(0, m, true);
                                            return true;
                                        }
                                        if (i8 == 24) {
                                            MainListView.g(mainListView, m);
                                            return true;
                                        }
                                        if (i8 == 26) {
                                            MainListView.e(mainListView, m);
                                            return true;
                                        }
                                        if (i8 == 27) {
                                            mainListView.r0(m);
                                            return true;
                                        }
                                        if (i8 == 31) {
                                            if (mainActivity != null && !mainListView.J()) {
                                                DialogSetPms dialogSetPms = mainListView.S0;
                                                if (dialogSetPms != null) {
                                                    dialogSetPms.dismiss();
                                                    mainListView.S0 = null;
                                                }
                                                DialogSetPms dialogSetPms2 = new DialogSetPms(mainActivity, m, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.MainListView.120
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        MainListView.this.N();
                                                    }
                                                });
                                                mainListView.S0 = dialogSetPms2;
                                                dialogSetPms2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.121
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        MainListView mainListView2 = MainListView.this;
                                                        DialogSetPms dialogSetPms3 = mainListView2.S0;
                                                        if (dialogSetPms3 != null) {
                                                            dialogSetPms3.dismiss();
                                                            mainListView2.S0 = null;
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                        } else {
                                            if (i8 == 14) {
                                                childItem = DataAlbum.m(context).g(m.g);
                                            } else if (i8 == 15) {
                                                childItem = DataPdf.m(context).g(m.g);
                                            } else if (i8 == 16) {
                                                childItem = DataCmp.m(context).g(m.g);
                                            } else {
                                                childItem = m;
                                            }
                                            if (childItem == null) {
                                                MainUtil.e8(mainActivity, R.string.invalid_path);
                                                return true;
                                            }
                                            childItem.t = m.t;
                                            childItem.u = m.u;
                                            mainListView.o.f(childItem.J, childItem, true);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return true;
                }
            });
            if (this.n) {
                this.M.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.mycompany.app.main.MainListView.20
                    @Override // android.widget.AdapterView.OnItemLongClickListener
                    public final boolean onItemLongClick(AdapterView adapterView, View view, int i2, long j) {
                        Object tag;
                        MainListView mainListView = MainListView.this;
                        if (mainListView.h0 != null && (tag = view.getTag()) != null) {
                            if (tag instanceof MainListAdapter.GroupHolder) {
                                return MainListView.b(mainListView, ((MainListAdapter.GroupHolder) tag).m);
                            }
                            if (tag instanceof MainListAdapter.ChildHolder) {
                                int i3 = ((MainListAdapter.ChildHolder) tag).v;
                                if (mainListView.M != null && mainListView.h0 != null && !mainListView.J() && !mainListView.h0.t(i3)) {
                                    MainListAdapter mainListAdapter = mainListView.h0;
                                    if (!mainListAdapter.q) {
                                        mainListView.d0(true, i3, false, true);
                                        return true;
                                    }
                                    boolean[] zArr = mainListAdapter.l;
                                    if (zArr != null && i3 >= 0 && i3 < zArr.length) {
                                        mainListAdapter.v(i3, !zArr[i3]);
                                    }
                                    mainListView.c0();
                                    mainListView.a0();
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                });
            }
            MyScrollBar myScrollBar = this.O;
            if (myScrollBar != null) {
                myScrollBar.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.main.MainListView.21
                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void c(int i2) {
                        MainListView mainListView = MainListView.this;
                        FragmentExpandView fragmentExpandView = mainListView.M;
                        if (fragmentExpandView == null) {
                            return;
                        }
                        fragmentExpandView.setSelection(i2);
                        mainListView.M.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.21.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                FragmentExpandView fragmentExpandView2 = MainListView.this.M;
                                if (fragmentExpandView2 == null) {
                                    return;
                                }
                                fragmentExpandView2.f(true);
                            }
                        });
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int d() {
                        FragmentExpandView fragmentExpandView = MainListView.this.M;
                        if (fragmentExpandView == null) {
                            return 0;
                        }
                        return fragmentExpandView.computeVerticalScrollOffset();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void e() {
                        FragmentExpandView fragmentExpandView = MainListView.this.M;
                        if (fragmentExpandView == null) {
                            return;
                        }
                        fragmentExpandView.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.21.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                FragmentExpandView fragmentExpandView2 = MainListView.this.M;
                                if (fragmentExpandView2 == null) {
                                    return;
                                }
                                fragmentExpandView2.f(false);
                            }
                        });
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int f() {
                        FragmentExpandView fragmentExpandView = MainListView.this.M;
                        if (fragmentExpandView == null) {
                            return 0;
                        }
                        return fragmentExpandView.computeVerticalScrollRange();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int g() {
                        FragmentExpandView fragmentExpandView = MainListView.this.M;
                        if (fragmentExpandView == null) {
                            return 0;
                        }
                        return fragmentExpandView.computeVerticalScrollExtent();
                    }
                });
            }
            if (this.d == 25 && PrefRead.C) {
                this.w.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.22
                    @Override // java.lang.Runnable
                    public final void run() {
                        RelativeLayout relativeLayout;
                        if (PrefRead.C) {
                            final MainListView mainListView = MainListView.this;
                            if (mainListView.Q == null && mainListView.w != null && (relativeLayout = mainListView.h) != null) {
                                relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.66
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final MainListView mainListView2 = MainListView.this;
                                        MainActivity mainActivity = mainListView2.f16603a;
                                        if (PrefRead.C && mainListView2.Q == null && mainListView2.w != null && mainActivity != null) {
                                            MyFadeFrame myFadeFrame = new MyFadeFrame(mainActivity);
                                            int i2 = MainApp.F1;
                                            myFadeFrame.setPadding(i2, i2, i2, i2);
                                            FrameLayout frameLayout = new FrameLayout(mainActivity);
                                            frameLayout.setBackgroundResource(R.drawable.round_guide_8);
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                            layoutParams.gravity = 8388691;
                                            myFadeFrame.addView(frameLayout, layoutParams);
                                            LinearLayout linearLayout = new LinearLayout(mainActivity);
                                            int i3 = MainApp.E1;
                                            linearLayout.setPadding(i3, i3, i3, i3);
                                            linearLayout.setOrientation(1);
                                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams2.gravity = 1;
                                            frameLayout.addView(linearLayout, layoutParams2);
                                            AppCompatTextView appCompatTextView2 = new AppCompatTextView(mainActivity, null);
                                            appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                                            appCompatTextView2.setTextSize(1, 16.0f);
                                            appCompatTextView2.setTextColor(-1);
                                            linearLayout.addView(appCompatTextView2, -2, -2);
                                            mainListView2.Q = myFadeFrame;
                                            appCompatTextView2.setText(mainActivity.getString(R.string.filter_user_1) + "\n\n" + mainActivity.getString(R.string.filter_guide_3) + "\n\n" + mainActivity.getString(R.string.filter_user_2));
                                            mainListView2.Q.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.MainListView.67
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z) {
                                                    MainListView mainListView3;
                                                    MyFadeFrame myFadeFrame2;
                                                    if (!z && (myFadeFrame2 = (mainListView3 = MainListView.this).Q) != null && mainListView3.w != null) {
                                                        myFadeFrame2.f();
                                                        mainListView3.w.removeView(mainListView3.Q);
                                                        mainListView3.Q = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z, boolean z2) {
                                                }
                                            });
                                            mainListView2.Q.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainListView.68
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z = PrefRead.C;
                                                    MainListView mainListView3 = MainListView.this;
                                                    if (z) {
                                                        PrefRead.C = false;
                                                        PrefSet.d(8, mainListView3.b, "mGuideFilter", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = mainListView3.Q;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.69
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefRead.C;
                                                    MainListView mainListView3 = MainListView.this;
                                                    if (z) {
                                                        PrefRead.C = false;
                                                        PrefSet.d(8, mainListView3.b, "mGuideFilter", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = mainListView3.Q;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                }
                                            });
                                            mainListView2.w.addView(mainListView2.Q, -1, -1);
                                        }
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
        if (this.d == 42) {
            G();
        } else {
            H();
        }
        int i2 = this.d;
        if (i2 != 13 && i2 != 32) {
            return;
        }
        MainApp.J(this.b, new Runnable() { // from class: com.mycompany.app.main.MainListView.2
            @Override // java.lang.Runnable
            public final void run() {
                MainListView mainListView = MainListView.this;
                MainActivity mainActivity = mainListView.f16603a;
                if (mainActivity != null && mainListView.U0 == null) {
                    mainListView.U0 = GlideApp.a(mainActivity);
                }
            }
        });
    }

    public final boolean J() {
        if (this.v0 != null || this.w0 != null || this.x0 != null || this.A0 != null || this.C0 != null || this.E0 != null || this.F0 != null || this.G0 != null || this.H0 != null || this.I0 != null || this.J0 != null || this.K0 != null || this.L0 != null || this.M0 != null || this.N0 != null || this.O0 != null || this.P0 != null || this.Q0 != null || this.S0 != null) {
            return true;
        }
        return false;
    }

    public final boolean K() {
        if (this.o == null || J()) {
            return true;
        }
        MyCoverView myCoverView = this.f0;
        if (myCoverView == null) {
            return false;
        }
        return myCoverView.h();
    }

    public final void L(long j, boolean z) {
        ListTask listTask = this.g0;
        if (listTask != null) {
            this.j0 = true;
            listTask.k(j, z);
        }
    }

    public final void M(String str) {
        if (this.g0 != null) {
            this.m0 = !TextUtils.isEmpty(str);
            this.g0.l(str, false, false);
        }
    }

    public final void N() {
        ListTask listTask = this.g0;
        if (listTask != null) {
            listTask.l(null, false, false);
        }
    }

    public final void O() {
        T();
        if (this.c1) {
            S(false, false);
        }
        if (this.U0 != null) {
            this.U0 = null;
        }
        ValueAnimator valueAnimator = this.t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.t = null;
        }
        MyListGroup myListGroup = this.p;
        if (myListGroup != null) {
            myListGroup.f18854c = false;
            myListGroup.f = null;
            myListGroup.i = null;
            myListGroup.j = null;
            this.p = null;
        }
        MyButtonImage myButtonImage = this.y;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.y = null;
        }
        MyButtonRelative myButtonRelative = this.z;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.z = null;
        }
        MyButtonImage myButtonImage2 = this.C;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.C = null;
        }
        MyButtonImage myButtonImage3 = this.D;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.D = null;
        }
        MyButtonImage myButtonImage4 = this.E;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.E = null;
        }
        MyButtonImage myButtonImage5 = this.F;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.F = null;
        }
        MyButtonImage myButtonImage6 = this.G;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.G = null;
        }
        MyButtonImage myButtonImage7 = this.H;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.H = null;
        }
        MyButtonCheck myButtonCheck = this.J;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.J = null;
        }
        MyProgressBar myProgressBar = this.K;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.K = null;
        }
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            if (fragmentExpandView.f) {
                fragmentExpandView.f = false;
                fragmentExpandView.stopNestedScroll();
                fragmentExpandView.g = null;
                fragmentExpandView.l = null;
            }
            this.M = null;
        }
        MyScrollBar myScrollBar = this.O;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.O = null;
        }
        MyFadeImage myFadeImage = this.P;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.P = null;
        }
        MyLineText myLineText = this.V;
        if (myLineText != null) {
            myLineText.u();
            this.V = null;
        }
        MyLineText myLineText2 = this.W;
        if (myLineText2 != null) {
            myLineText2.u();
            this.W = null;
        }
        MyLineText myLineText3 = this.X;
        if (myLineText3 != null) {
            myLineText3.u();
            this.X = null;
        }
        MyLineText myLineText4 = this.Y;
        if (myLineText4 != null) {
            myLineText4.u();
            this.Y = null;
        }
        MyLineText myLineText5 = this.Z;
        if (myLineText5 != null) {
            myLineText5.u();
            this.Z = null;
        }
        MyLineText myLineText6 = this.a0;
        if (myLineText6 != null) {
            myLineText6.u();
            this.a0 = null;
        }
        MyLineText myLineText7 = this.b0;
        if (myLineText7 != null) {
            myLineText7.u();
            this.b0 = null;
        }
        ValueAnimator valueAnimator2 = this.c0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.c0 = null;
        }
        ValueAnimator valueAnimator3 = this.d0;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.d0 = null;
        }
        MyButtonImage myButtonImage8 = this.e0;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.e0 = null;
        }
        MyCoverView myCoverView = this.f0;
        if (myCoverView != null) {
            myCoverView.i();
            this.f0 = null;
        }
        this.V0 = null;
        this.W0 = null;
        this.o = null;
        this.h = null;
        this.w = null;
        this.x = null;
        this.A = null;
        this.B = null;
        this.q = null;
        this.u = null;
        this.v = null;
        this.I = null;
        this.N = null;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.f1 = null;
        this.g1 = null;
        this.y1 = null;
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            mainListAdapter.f15690a = false;
            mainListAdapter.C = false;
            MainListLoader mainListLoader = mainListAdapter.v;
            if (mainListLoader != null) {
                mainListLoader.f();
                mainListAdapter.v = null;
            }
            mainListAdapter.g = null;
            mainListAdapter.h = null;
            mainListAdapter.i = null;
            mainListAdapter.j = null;
            mainListAdapter.k = null;
            mainListAdapter.l = null;
            mainListAdapter.m = 0;
            mainListAdapter.n = 0;
            mainListAdapter.w = null;
            mainListAdapter.x = null;
            mainListAdapter.y = null;
            mainListAdapter.z = null;
            mainListAdapter.s = null;
            mainListAdapter.A = null;
            mainListAdapter.B = null;
            this.h0 = null;
        }
    }

    public final void P() {
        int i;
        if (this.g0 != null) {
            MainUtil.h8(this.b, this.F, R.anim.ic_rotate, false);
            MyProgressBar myProgressBar = this.K;
            if (myProgressBar != null && !myProgressBar.A) {
                if (this.g0.e()) {
                    this.L = true;
                    this.g0.g(false);
                } else {
                    if (this.d == 13) {
                        this.L = true;
                    }
                    this.j0 = false;
                    U(false, false);
                }
                MyProgressBar myProgressBar2 = this.K;
                if (this.e) {
                    i = 3;
                } else {
                    i = 1;
                }
                myProgressBar2.k(true, i, new MyProgressBar.MyProgressListener() { // from class: com.mycompany.app.main.MainListView.70
                    @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                    public final void a() {
                    }

                    @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                    public final int b() {
                        return 0;
                    }

                    @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                    public final boolean c() {
                        return MainListView.this.L;
                    }
                });
            }
        }
    }

    public final void Q(boolean z) {
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            fragmentExpandView.setEnabled(true);
        }
        if (!z) {
            DialogListBook dialogListBook = this.v0;
            if (dialogListBook != null) {
                dialogListBook.r(false);
                return;
            }
            return;
        }
        t();
        E();
        D();
        C();
        ListTask listTask = this.g0;
        if (listTask != null) {
            listTask.a();
        }
        this.j0 = true;
        Context context = this.b;
        if (context != null) {
            int i = this.d;
            if (i == 13) {
                DataCast.m(context).j();
                return;
            }
            if (i == 14) {
                DataBookAlbum.k(context).f();
                return;
            }
            if (i == 15) {
                DataBookPdf.k(context).f();
                return;
            }
            if (i == 16) {
                DataBookCmp.k(context).f();
                return;
            }
            if (i == 18) {
                DataBookHistory.k(context).f();
                return;
            }
            if (i == 19) {
                DataBookAds.l(context).f();
                return;
            }
            if (i == 20) {
                DataBookOver.k(context).f();
                return;
            }
            if (i == 21) {
                DataBookPop.l(context).f();
                return;
            }
            if (i == 22) {
                DataBookLink.m(context).f();
                return;
            }
            if (i == 23) {
                DataBookBlock.k(context).f();
                return;
            }
            if (i == 24) {
                DataBookDc.k(context).f();
                return;
            }
            if (i == 25) {
                DataBookFilter.k(context).f();
                return;
            }
            if (i == 26) {
                DataBookUser.k(context).f();
                return;
            }
            if (i == 27) {
                DataBookScript.k(context).f();
                return;
            }
            if (i == 28) {
                DataBookJava.l(context).f();
                return;
            }
            if (i == 29) {
                DataBookTmem.l(context).f();
                return;
            }
            if (i == 30) {
                DataBookTrans.l(context).f();
            } else if (i == 31) {
                DataBookPms.k(context).f();
            } else if (i == 32) {
                DataBookDown.k(context).f();
            }
        }
    }

    public final void R(boolean z, boolean z2, boolean z3) {
        Context context;
        int d;
        MyCoverView myCoverView = this.f0;
        boolean z4 = false;
        if (myCoverView != null && myCoverView.isActivated()) {
            this.f0.setActivated(false);
            this.f0.f(false);
        }
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            fragmentExpandView.setEnabled(true);
        }
        if (z2) {
            U(false, false);
        }
        DialogListBook dialogListBook = this.v0;
        if (dialogListBook != null) {
            dialogListBook.s(z);
        }
        if (z && !z3) {
            MainListAdapter mainListAdapter = this.h0;
            if (mainListAdapter != null && mainListAdapter.o() != 0 && (context = this.b) != null) {
                int i = this.d;
                if (i == 1) {
                    d = DataAlbum.m(context).d();
                } else if (i == 2) {
                    d = DataPdf.m(context).d();
                } else if (i == 3) {
                    d = DataCmp.m(context).d();
                } else if (i == 13) {
                    d = DataCast.m(context).d();
                } else if (i == 14) {
                    d = DataBookAlbum.k(context).d();
                } else if (i == 15) {
                    d = DataBookPdf.k(context).d();
                } else if (i == 16) {
                    d = DataBookCmp.k(context).d();
                } else if (i == 18) {
                    d = DataBookHistory.k(context).d();
                } else if (i == 19) {
                    d = DataBookAds.l(context).d();
                } else if (i == 20) {
                    d = DataBookOver.k(context).d();
                } else if (i == 21) {
                    d = DataBookPop.l(context).d();
                } else if (i == 22) {
                    d = DataBookLink.m(context).d();
                } else if (i == 23) {
                    d = DataBookBlock.k(context).d();
                } else if (i == 24) {
                    d = DataBookDc.k(context).d();
                } else if (i == 25) {
                    d = DataBookFilter.k(context).d();
                } else if (i == 26) {
                    d = DataBookUser.k(context).d();
                } else if (i == 27) {
                    d = DataBookScript.k(context).d();
                } else if (i == 28) {
                    d = DataBookJava.l(context).d();
                } else if (i == 29) {
                    d = DataBookTmem.l(context).d();
                } else if (i == 30) {
                    d = DataBookTrans.l(context).d();
                } else if (i == 31) {
                    d = DataBookPms.k(context).d();
                } else if (i == 32) {
                    d = DataBookDown.k(context).d();
                }
                if (d == 0) {
                    z4 = true;
                }
            }
            if (z4) {
                if (this.f) {
                    MainListListener mainListListener = this.o;
                    if (mainListListener != null) {
                        mainListListener.g();
                        return;
                    }
                    return;
                }
                MainActivity mainActivity = this.f16603a;
                if (mainActivity != null) {
                    mainActivity.finish();
                }
            }
        }
    }

    public final void S(boolean z, boolean z2) {
        DataBookDown dataBookDown;
        DataBookPms dataBookPms;
        DataBookTrans dataBookTrans;
        DataBookTmem dataBookTmem;
        DataBookJava dataBookJava;
        DataBookFilter dataBookFilter;
        DataBookDc dataBookDc;
        DataBookBlock dataBookBlock;
        DataBookLink dataBookLink;
        DataBookPop dataBookPop;
        DataBookOver dataBookOver;
        DataBookAds dataBookAds;
        DataBookHistory dataBookHistory;
        DataBookCmp dataBookCmp;
        DataBookPdf dataBookPdf;
        DataBookAlbum dataBookAlbum;
        DataCast dataCast;
        DataCmp dataCmp;
        DataPdf dataPdf;
        DataAlbum dataAlbum;
        int i;
        boolean z3 = false;
        this.c1 = false;
        MyEditPure myEditPure = this.Y0;
        Context context = this.b;
        if (myEditPure != null) {
            MainUtil.X4(context, myEditPure);
        }
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            fragmentExpandView.setBackColor(i);
        }
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            mainListAdapter.r = false;
            mainListAdapter.s = null;
        }
        if (this.X0 == null) {
            return;
        }
        if (context != null) {
            int i2 = this.d;
            if (i2 == 1) {
                this.j0 = z;
                MainApp p = MainApp.p(context);
                if (p != null && (dataAlbum = p.e0) != null) {
                    dataAlbum.k(context, z2);
                }
            } else if (i2 == 2) {
                this.j0 = z;
                MainApp p2 = MainApp.p(context);
                if (p2 != null && (dataPdf = p2.i0) != null) {
                    dataPdf.k(context, z2);
                }
            } else if (i2 == 3) {
                this.j0 = z;
                MainApp p3 = MainApp.p(context);
                if (p3 != null && (dataCmp = p3.g0) != null) {
                    dataCmp.k(context, z2);
                }
            } else if (i2 == 13) {
                this.j0 = z;
                MainApp p4 = MainApp.p(context);
                if (p4 != null && (dataCast = p4.f0) != null) {
                    dataCast.k(context, z2);
                }
            } else if (i2 == 14) {
                MainApp p5 = MainApp.p(context);
                if (p5 != null && (dataBookAlbum = p5.n0) != null) {
                    dataBookAlbum.g(context, z2);
                }
            } else if (i2 == 15) {
                MainApp p6 = MainApp.p(context);
                if (p6 != null && (dataBookPdf = p6.x0) != null) {
                    dataBookPdf.g(context, z2);
                }
            } else if (i2 == 16) {
                MainApp p7 = MainApp.p(context);
                if (p7 != null && (dataBookCmp = p7.p0) != null) {
                    dataBookCmp.g(context, z2);
                }
            } else if (i2 == 18) {
                MainApp p8 = MainApp.p(context);
                if (p8 != null && (dataBookHistory = p8.t0) != null) {
                    dataBookHistory.g(context, z2);
                }
            } else if (i2 == 19) {
                MainApp p9 = MainApp.p(context);
                if (p9 != null && (dataBookAds = p9.m0) != null) {
                    dataBookAds.g(context, z2);
                }
            } else if (i2 == 20) {
                MainApp p10 = MainApp.p(context);
                if (p10 != null && (dataBookOver = p10.w0) != null) {
                    dataBookOver.g(context, z2);
                }
            } else if (i2 == 21) {
                MainApp p11 = MainApp.p(context);
                if (p11 != null && (dataBookPop = p11.z0) != null) {
                    dataBookPop.g(context, z2);
                }
            } else if (i2 == 22) {
                MainApp p12 = MainApp.p(context);
                if (p12 != null && (dataBookLink = p12.v0) != null) {
                    dataBookLink.g(context, z2);
                }
            } else if (i2 == 23) {
                MainApp p13 = MainApp.p(context);
                if (p13 != null && (dataBookBlock = p13.o0) != null) {
                    dataBookBlock.g(context, z2);
                }
            } else if (i2 == 24) {
                MainApp p14 = MainApp.p(context);
                if (p14 != null && (dataBookDc = p14.q0) != null) {
                    dataBookDc.g(context, z2);
                }
            } else if (i2 == 25) {
                MainApp p15 = MainApp.p(context);
                if (p15 != null && (dataBookFilter = p15.s0) != null) {
                    dataBookFilter.g(context, z2);
                }
            } else if (i2 == 28) {
                MainApp p16 = MainApp.p(context);
                if (p16 != null && (dataBookJava = p16.u0) != null) {
                    dataBookJava.g(context, z2);
                }
            } else if (i2 == 29) {
                MainApp p17 = MainApp.p(context);
                if (p17 != null && (dataBookTmem = p17.D0) != null) {
                    dataBookTmem.g(context, z2);
                }
            } else if (i2 == 30) {
                MainApp p18 = MainApp.p(context);
                if (p18 != null && (dataBookTrans = p18.E0) != null) {
                    dataBookTrans.g(context, z2);
                }
            } else if (i2 == 31) {
                MainApp p19 = MainApp.p(context);
                if (p19 != null && (dataBookPms = p19.y0) != null) {
                    dataBookPms.g(context, z2);
                }
            } else if (i2 == 32) {
                if (z2 && PrefList.Z0 == 0) {
                    z3 = true;
                }
                MainApp p20 = MainApp.p(context);
                if (p20 != null && (dataBookDown = p20.r0) != null) {
                    dataBookDown.g(context, z3);
                }
            }
        }
        ListTask listTask = this.g0;
        if (listTask != null) {
            listTask.n();
        }
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView != null) {
            myHeaderView.removeView(this.X0);
            this.X0 = null;
        }
        MyButtonImage myButtonImage = this.Z0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.Z0 = null;
        }
        MyButtonImage myButtonImage2 = this.a1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.a1 = null;
        }
        MyRoundView myRoundView = this.b1;
        if (myRoundView != null) {
            myRoundView.a();
            this.b1 = null;
        }
        this.Y0 = null;
    }

    public final void T() {
        FrameLayout frameLayout = this.h1;
        if (frameLayout != null) {
            try {
                frameLayout.removeAllViewsInLayout();
            } catch (Exception unused) {
            }
            this.h1.setVisibility(4);
            this.h1.requestLayout();
            this.h1 = null;
        }
        FrameLayout frameLayout2 = this.k1;
        if (frameLayout2 != null) {
            try {
                frameLayout2.removeAllViewsInLayout();
            } catch (Exception unused2) {
            }
            this.k1.setVisibility(8);
            this.k1 = null;
        }
        this.i1 = null;
        this.j1 = null;
        this.l1 = null;
    }

    public final void U(boolean z, boolean z2) {
        ListTask listTask = this.g0;
        if (listTask != null) {
            listTask.i(z, z2, false);
        }
    }

    public final boolean V() {
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null && mainListAdapter.q) {
            d0(false, -1, false, true);
            return true;
        }
        if (this.d == 42 || !this.c1) {
            return false;
        }
        S(true, true);
        N();
        return true;
    }

    public final void W() {
        if (this.R == null) {
            return;
        }
        if (MainApp.K1) {
            this.S.setBackgroundResource(R.drawable.round_bot_left_b);
            this.T.setBackgroundResource(R.drawable.round_bot_right_b);
            this.U.setBackgroundColor(-16777216);
            MyLineText myLineText = this.V;
            if (myLineText != null) {
                myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText2 = this.W;
            if (myLineText2 != null) {
                myLineText2.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText3 = this.X;
            if (myLineText3 != null) {
                myLineText3.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText4 = this.Y;
            if (myLineText4 != null) {
                myLineText4.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText5 = this.Z;
            if (myLineText5 != null) {
                myLineText5.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText6 = this.a0;
            if (myLineText6 != null) {
                myLineText6.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText7 = this.b0;
            if (myLineText7 != null) {
                myLineText7.setBackgroundResource(R.drawable.selector_normal_dark);
            }
        } else {
            this.S.setBackgroundResource(R.drawable.round_bot_left_g);
            this.T.setBackgroundResource(R.drawable.round_bot_right_g);
            this.U.setBackgroundColor(-460552);
            MyLineText myLineText8 = this.V;
            if (myLineText8 != null) {
                myLineText8.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText9 = this.W;
            if (myLineText9 != null) {
                myLineText9.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText10 = this.X;
            if (myLineText10 != null) {
                myLineText10.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText11 = this.Y;
            if (myLineText11 != null) {
                myLineText11.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText12 = this.Z;
            if (myLineText12 != null) {
                myLineText12.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText13 = this.a0;
            if (myLineText13 != null) {
                myLineText13.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText14 = this.b0;
            if (myLineText14 != null) {
                myLineText14.setBackgroundResource(R.drawable.selector_normal_gray);
            }
        }
        n();
    }

    public final void Y() {
        if (this.R != null && this.h0 != null) {
            ValueAnimator valueAnimator = this.c0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.c0 = null;
            }
            ValueAnimator valueAnimator2 = this.d0;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.d0 = null;
            }
            if (this.h0.q) {
                this.R.setTranslationY(0.0f);
                this.R.setVisibility(0);
            } else {
                this.R.setVisibility(8);
            }
        }
    }

    public final void Z() {
        int i;
        FrameLayout frameLayout = this.h1;
        if (frameLayout != null && this.j1 != null) {
            int i2 = -16777216;
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            frameLayout.setBackgroundColor(i);
            MediaRouteButton mediaRouteButton = this.j1;
            if (MainApp.K1) {
                i2 = -328966;
            }
            MainUtil.h7(i2, this.b, mediaRouteButton);
        }
    }

    public final void a0() {
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            if (this.d == 35) {
                MainListListener mainListListener = this.o;
                if (mainListListener != null) {
                    mainListListener.e(mainListAdapter.m, mainListAdapter.o(), this.h0.s());
                    return;
                }
                return;
            }
            AppCompatTextView appCompatTextView = this.I;
            if (appCompatTextView != null) {
                appCompatTextView.setText(MainUtil.h3(mainListAdapter.m, mainListAdapter.o()));
            }
            MyButtonCheck myButtonCheck = this.J;
            if (myButtonCheck != null) {
                myButtonCheck.q(this.h0.s(), true);
            }
        }
    }

    public final boolean b0(Configuration configuration) {
        Paint paint;
        int i;
        if (this.d != 42) {
            MainApp.K1 = MainUtil.i5(true, configuration);
            MainApp.L1 = MainUtil.i5(false, configuration);
        }
        boolean z = this.f16604c;
        boolean z2 = MainApp.K1;
        if (z == z2) {
            return false;
        }
        this.f16604c = z2;
        E();
        D();
        C();
        k0();
        p(false);
        j0();
        W();
        e0();
        Z();
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView != null) {
            myHeaderView.invalidate();
        }
        MyListGroup myListGroup = this.p;
        if (myListGroup != null) {
            myListGroup.invalidate();
        }
        MyProgressBar myProgressBar = this.K;
        if (myProgressBar != null && (paint = myProgressBar.m) != null) {
            if (MainApp.K1) {
                i = -922746881;
            } else {
                i = myProgressBar.i;
            }
            myProgressBar.j = i;
            paint.setColor(i);
        }
        MyScrollBar myScrollBar = this.O;
        if (myScrollBar != null) {
            myScrollBar.l();
        }
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            mainListAdapter.notifyDataSetChanged();
        }
        ImageView imageView = this.N;
        if (imageView != null) {
            if (MainApp.K1) {
                imageView.setImageResource(R.drawable.outline_list_footer_dark_24);
                this.N.setBackgroundResource(R.drawable.selector_normal_dark);
            } else {
                imageView.setImageResource(R.drawable.outline_list_footer_black_24);
                this.N.setBackgroundResource(R.drawable.selector_normal);
            }
        }
        DialogListBook dialogListBook = this.v0;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
        DialogEditScript dialogEditScript = this.N0;
        if (dialogEditScript != null) {
            boolean z3 = dialogEditScript.e0;
            boolean z4 = MainApp.K1;
            if (z3 != z4) {
                dialogEditScript.e0 = z4;
                dialogEditScript.w();
            }
            dialogEditScript.f();
        }
        return true;
    }

    public final void c0() {
        p(true);
        n();
    }

    public final void d0(boolean z, int i, boolean z2, boolean z3) {
        Object tag;
        int i2;
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null) {
            if (z == mainListAdapter.q) {
                p(false);
                if (this.d == 32) {
                    m();
                    return;
                }
                return;
            }
            if (z && mainListAdapter.o() == 0) {
                p(false);
                return;
            }
            MainListAdapter mainListAdapter2 = this.h0;
            FragmentExpandView fragmentExpandView = mainListAdapter2.g;
            if (fragmentExpandView != null && mainListAdapter2.q != z) {
                mainListAdapter2.q = z;
                int childCount = fragmentExpandView.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = mainListAdapter2.g.getChildAt(i3);
                    if (childAt != null && (tag = childAt.getTag()) != null) {
                        if (tag instanceof MainListAdapter.GroupHolder) {
                            MainListAdapter.GroupHolder groupHolder = (MainListAdapter.GroupHolder) tag;
                            if (mainListAdapter2.x != null) {
                                MyButtonImage myButtonImage = groupHolder.k;
                                if (!z) {
                                    myButtonImage.g();
                                } else {
                                    myButtonImage.f(false);
                                }
                            }
                            MyButtonCheck myButtonCheck = groupHolder.l;
                            if (z) {
                                myButtonCheck.i();
                            } else {
                                myButtonCheck.h();
                            }
                        } else if (tag instanceof MainListAdapter.ChildHolder) {
                            MainListAdapter.ChildHolder childHolder = (MainListAdapter.ChildHolder) tag;
                            if (mainListAdapter2.x != null) {
                                if (mainListAdapter2.e == 32) {
                                    int i4 = childHolder.v;
                                    if (i4 >= 0 && i4 < mainListAdapter2.i.size()) {
                                        mainListAdapter2.x(childHolder, (MainItem.ChildItem) mainListAdapter2.i.get(childHolder.v));
                                    }
                                } else if (childHolder.r != null) {
                                    MyButtonImage myButtonImage2 = childHolder.o;
                                    int i5 = 4;
                                    if (mainListAdapter2.q) {
                                        i2 = 4;
                                    } else {
                                        i2 = 0;
                                    }
                                    myButtonImage2.setVisibility(i2);
                                    MySwitchView mySwitchView = childHolder.r;
                                    if (!mainListAdapter2.q) {
                                        i5 = 0;
                                    }
                                    mySwitchView.setVisibility(i5);
                                } else {
                                    MyButtonImage myButtonImage3 = childHolder.o;
                                    if (!z) {
                                        myButtonImage3.g();
                                    } else {
                                        myButtonImage3.f(z);
                                    }
                                }
                            }
                        }
                    }
                }
                if (z) {
                    int size = mainListAdapter2.h.size();
                    mainListAdapter2.j = new boolean[size];
                    mainListAdapter2.k = new int[size];
                    mainListAdapter2.l = new boolean[mainListAdapter2.i.size()];
                    mainListAdapter2.m = 0;
                    if (z2) {
                        mainListAdapter2.y(i, true);
                    } else {
                        mainListAdapter2.v(i, true);
                    }
                } else {
                    mainListAdapter2.j = null;
                    mainListAdapter2.k = null;
                    mainListAdapter2.l = null;
                    mainListAdapter2.m = 0;
                    mainListAdapter2.w(false);
                }
            }
            c0();
            if (this.d == 35) {
                if (z) {
                    MainListListener mainListListener = this.o;
                    if (mainListListener != null) {
                        MainListAdapter mainListAdapter3 = this.h0;
                        mainListListener.e(mainListAdapter3.m, mainListAdapter3.o(), this.h0.s());
                        this.o.i(z, z3);
                    }
                    F(z3);
                    return;
                }
                MainListListener mainListListener2 = this.o;
                if (mainListListener2 != null) {
                    mainListListener2.i(z, z3);
                }
                s(z3);
                return;
            }
            boolean z4 = this.l;
            Context context = this.b;
            if (z) {
                AppCompatTextView appCompatTextView = this.I;
                if (appCompatTextView != null) {
                    MainListAdapter mainListAdapter4 = this.h0;
                    appCompatTextView.setText(MainUtil.h3(mainListAdapter4.m, mainListAdapter4.o()));
                }
                MyButtonCheck myButtonCheck2 = this.J;
                if (myButtonCheck2 != null) {
                    myButtonCheck2.q(this.h0.s(), true);
                }
                if (this.c1) {
                    AppCompatTextView appCompatTextView2 = this.A;
                    if (appCompatTextView2 != null) {
                        this.e1 = appCompatTextView2.getText();
                        this.A.setText(MainUtil.Q0(this.Y0, false));
                    }
                    ImageView imageView = this.B;
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    FrameLayout frameLayout = this.X0;
                    if (frameLayout != null) {
                        frameLayout.setVisibility(8);
                    }
                    MyEditPure myEditPure = this.Y0;
                    if (myEditPure != null) {
                        myEditPure.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.76
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListView mainListView = MainListView.this;
                                MyEditPure myEditPure2 = mainListView.Y0;
                                if (myEditPure2 == null) {
                                    return;
                                }
                                MainUtil.X4(mainListView.b, myEditPure2);
                            }
                        });
                    }
                    z3 = false;
                }
                if (z3) {
                    MyButtonImage myButtonImage4 = this.D;
                    if (myButtonImage4 != null && z4) {
                        if (this.d == 36) {
                            MainUtil.h8(context, myButtonImage4, R.anim.ic_rotate_out, true);
                        } else {
                            MainUtil.h8(context, myButtonImage4, R.anim.ic_scale_out, true);
                        }
                    }
                    MyButtonImage myButtonImage5 = this.C;
                    if (myButtonImage5 != null) {
                        MainUtil.h8(context, myButtonImage5, R.anim.ic_scale_out, true);
                    }
                    MyButtonImage myButtonImage6 = this.E;
                    if (myButtonImage6 != null) {
                        MainUtil.h8(context, myButtonImage6, R.anim.ic_scale_out, true);
                    }
                    MyButtonImage myButtonImage7 = this.F;
                    if (myButtonImage7 != null) {
                        MainUtil.h8(context, myButtonImage7, R.anim.ic_scale_out, true);
                    }
                    MyButtonImage myButtonImage8 = this.G;
                    if (myButtonImage8 != null) {
                        MainUtil.h8(context, myButtonImage8, R.anim.ic_scale_out, true);
                    }
                    MyButtonImage myButtonImage9 = this.H;
                    if (myButtonImage9 != null) {
                        MainUtil.h8(context, myButtonImage9, R.anim.ic_rotate_out, true);
                    }
                    AppCompatTextView appCompatTextView3 = this.I;
                    if (appCompatTextView3 != null) {
                        MainUtil.h8(context, appCompatTextView3, R.anim.ic_scale_in, false);
                    }
                    MyButtonCheck myButtonCheck3 = this.J;
                    if (myButtonCheck3 != null) {
                        MainUtil.h8(context, myButtonCheck3, R.anim.ic_rotate_in, false);
                    }
                } else {
                    MyButtonImage myButtonImage10 = this.D;
                    if (myButtonImage10 != null && z4) {
                        myButtonImage10.setVisibility(8);
                    }
                    MyButtonImage myButtonImage11 = this.C;
                    if (myButtonImage11 != null) {
                        myButtonImage11.setVisibility(8);
                    }
                    MyButtonImage myButtonImage12 = this.E;
                    if (myButtonImage12 != null) {
                        myButtonImage12.setVisibility(8);
                    }
                    MyButtonImage myButtonImage13 = this.F;
                    if (myButtonImage13 != null) {
                        myButtonImage13.setVisibility(8);
                    }
                    MyButtonImage myButtonImage14 = this.G;
                    if (myButtonImage14 != null) {
                        myButtonImage14.setVisibility(8);
                    }
                    MyButtonImage myButtonImage15 = this.H;
                    if (myButtonImage15 != null) {
                        myButtonImage15.setVisibility(8);
                    }
                    AppCompatTextView appCompatTextView4 = this.I;
                    if (appCompatTextView4 != null) {
                        appCompatTextView4.setVisibility(0);
                    }
                    MyButtonCheck myButtonCheck4 = this.J;
                    if (myButtonCheck4 != null) {
                        myButtonCheck4.setVisibility(0);
                    }
                }
                if (this.d == 13) {
                    if (this.n && this.w != null && this.e0 == null) {
                        MyButtonImage myButtonImage16 = new MyButtonImage(this.f16603a);
                        this.e0 = myButtonImage16;
                        myButtonImage16.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        this.e0.setImageResource(R.drawable.baseline_play_arrow_white_24);
                        this.e0.setBgNorRadius(MainApp.E1 + MainApp.G1);
                        this.e0.k(-5854742, -5854742);
                        this.e0.setVisibility(8);
                        int childCount2 = this.w.getChildCount() - 1;
                        if (childCount2 < 0) {
                            childCount2 = 0;
                        }
                        int i6 = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i6, i6);
                        layoutParams.gravity = 8388693;
                        int i7 = MainApp.F1;
                        layoutParams.bottomMargin = i7;
                        layoutParams.setMarginEnd(i7);
                        this.w.addView(this.e0, childCount2, layoutParams);
                        this.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.41
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MainListAdapter mainListAdapter5;
                                MainListView mainListView = MainListView.this;
                                if (mainListView.o != null && (mainListAdapter5 = mainListView.h0) != null) {
                                    List j = mainListAdapter5.j();
                                    if (j != null && !j.isEmpty()) {
                                        mainListView.o.b(0, j);
                                    } else {
                                        MainUtil.e8(mainListView.f16603a, R.string.local_cast_guide_2);
                                    }
                                }
                            }
                        });
                    }
                    MyButtonImage myButtonImage17 = this.e0;
                    if (myButtonImage17 != null) {
                        if (z3) {
                            myButtonImage17.g();
                            return;
                        } else {
                            myButtonImage17.setVisibility(0);
                            return;
                        }
                    }
                    return;
                }
                F(z3);
                return;
            }
            if (this.c1) {
                AppCompatTextView appCompatTextView5 = this.A;
                if (appCompatTextView5 != null) {
                    appCompatTextView5.setText(this.e1);
                }
                ImageView imageView2 = this.B;
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                }
                FrameLayout frameLayout2 = this.X0;
                if (frameLayout2 != null) {
                    frameLayout2.setVisibility(0);
                }
                z3 = false;
            }
            if (z3) {
                MyButtonImage myButtonImage18 = this.D;
                if (myButtonImage18 != null && z4) {
                    if (this.d == 36) {
                        MainUtil.h8(context, myButtonImage18, R.anim.ic_rotate_in, false);
                    } else {
                        MainUtil.h8(context, myButtonImage18, R.anim.ic_scale_in, false);
                    }
                }
                MyButtonImage myButtonImage19 = this.C;
                if (myButtonImage19 != null) {
                    MainUtil.h8(context, myButtonImage19, R.anim.ic_scale_in, false);
                }
                MyButtonImage myButtonImage20 = this.E;
                if (myButtonImage20 != null) {
                    MainUtil.h8(context, myButtonImage20, R.anim.ic_scale_in, false);
                }
                MyButtonImage myButtonImage21 = this.F;
                if (myButtonImage21 != null) {
                    MainUtil.h8(context, myButtonImage21, R.anim.ic_scale_in, false);
                }
                MyButtonImage myButtonImage22 = this.G;
                if (myButtonImage22 != null) {
                    MainUtil.h8(context, myButtonImage22, R.anim.ic_scale_in, false);
                }
                MyButtonImage myButtonImage23 = this.H;
                if (myButtonImage23 != null) {
                    MainUtil.h8(context, myButtonImage23, R.anim.ic_rotate_in, false);
                }
                AppCompatTextView appCompatTextView6 = this.I;
                if (appCompatTextView6 != null) {
                    MainUtil.h8(context, appCompatTextView6, R.anim.ic_scale_out, true);
                }
                MyButtonCheck myButtonCheck5 = this.J;
                if (myButtonCheck5 != null) {
                    MainUtil.h8(context, myButtonCheck5, R.anim.ic_rotate_out, true);
                }
            } else {
                MyButtonImage myButtonImage24 = this.D;
                if (myButtonImage24 != null && z4) {
                    myButtonImage24.setVisibility(0);
                }
                MyButtonImage myButtonImage25 = this.C;
                if (myButtonImage25 != null) {
                    myButtonImage25.setVisibility(0);
                }
                MyButtonImage myButtonImage26 = this.E;
                if (myButtonImage26 != null) {
                    myButtonImage26.setVisibility(0);
                }
                MyButtonImage myButtonImage27 = this.F;
                if (myButtonImage27 != null) {
                    myButtonImage27.setVisibility(0);
                }
                MyButtonImage myButtonImage28 = this.G;
                if (myButtonImage28 != null) {
                    myButtonImage28.setVisibility(0);
                }
                MyButtonImage myButtonImage29 = this.H;
                if (myButtonImage29 != null) {
                    myButtonImage29.setVisibility(0);
                }
                AppCompatTextView appCompatTextView7 = this.I;
                if (appCompatTextView7 != null) {
                    appCompatTextView7.setVisibility(8);
                }
                MyButtonCheck myButtonCheck6 = this.J;
                if (myButtonCheck6 != null) {
                    myButtonCheck6.setVisibility(8);
                }
            }
            if (this.d == 13) {
                MyButtonImage myButtonImage30 = this.e0;
                if (myButtonImage30 != null) {
                    if (z3) {
                        myButtonImage30.f(false);
                        return;
                    } else {
                        myButtonImage30.setVisibility(8);
                        return;
                    }
                }
                return;
            }
            s(z3);
        }
    }

    public final void e0() {
        int i;
        FrameLayout frameLayout = this.X0;
        if (frameLayout == null) {
            return;
        }
        if (MainApp.K1) {
            frameLayout.setBackgroundColor(-16777216);
            this.Y0.setTextColor(-328966);
            this.Z0.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.a1.setImageResource(R.drawable.outline_cancel_dark_18);
            this.Z0.setBgPreColor(-12632257);
            this.a1.setBgPreColor(-12632257);
        } else {
            frameLayout.setBackgroundColor(-460552);
            this.Y0.setTextColor(-16777216);
            this.Z0.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.a1.setImageResource(R.drawable.outline_cancel_black_18);
            this.Z0.setBgPreColor(-2039584);
            this.a1.setBgPreColor(-2039584);
        }
        MyRoundView myRoundView = this.b1;
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -1;
        }
        myRoundView.setBackColor(i);
    }

    public final void f0(final int i, final int i2, final boolean z, final boolean z2) {
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null && this.h0 != null && i >= 0) {
            if (i == 0) {
                fragmentExpandView.setSelection(0);
                this.M.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.74
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListAdapter mainListAdapter;
                        MainListView mainListView = MainListView.this;
                        if (mainListView.M != null) {
                            mainListView.o(true);
                            mainListView.z0();
                            if (z2) {
                                MainListAdapter mainListAdapter2 = mainListView.h0;
                                if (mainListAdapter2 != null) {
                                    mainListAdapter2.C();
                                    return;
                                }
                                return;
                            }
                            if (z && (mainListAdapter = mainListView.h0) != null) {
                                mainListAdapter.D(i2);
                            }
                        }
                    }
                });
            } else {
                final int i3 = this.j;
                fragmentExpandView.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView.75
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListView mainListView = MainListView.this;
                        FragmentExpandView fragmentExpandView2 = mainListView.M;
                        if (fragmentExpandView2 == null) {
                            return;
                        }
                        int firstVisiblePosition = fragmentExpandView2.getFirstVisiblePosition() + 2;
                        int i4 = i;
                        if (i4 <= firstVisiblePosition || i4 >= mainListView.M.getLastVisiblePosition()) {
                            mainListView.M.setSelectionFromTop(i4, i3);
                        }
                        mainListView.M.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.75.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListAdapter mainListAdapter;
                                AnonymousClass75 anonymousClass75 = AnonymousClass75.this;
                                MainListView mainListView2 = MainListView.this;
                                if (mainListView2.M != null) {
                                    mainListView2.o(true);
                                    mainListView2.z0();
                                    if (z2) {
                                        MainListAdapter mainListAdapter2 = mainListView2.h0;
                                        if (mainListAdapter2 != null) {
                                            mainListAdapter2.C();
                                            return;
                                        }
                                        return;
                                    }
                                    if (z && (mainListAdapter = mainListView2.h0) != null) {
                                        mainListAdapter.D(i2);
                                    }
                                }
                            }
                        });
                    }
                }, 200L);
            }
        }
    }

    public final boolean g0(int i, boolean z) {
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter == null) {
            return false;
        }
        MainItem.ChildItem m = mainListAdapter.m(i);
        if (m == null) {
            this.k0 = -1;
            this.l0 = -1;
            this.h0.B(-1, z);
            return false;
        }
        this.j0 = true;
        this.k0 = m.H;
        this.l0 = i;
        this.h0.B(i, z);
        n0(null);
        f0(this.h0.n(i), i, z, false);
        this.j0 = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h0(float r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListView.h0(float, boolean):void");
    }

    /* JADX WARN: Type inference failed for: r9v41, types: [com.mycompany.app.main.MainListAdapter$GroupHolder, java.lang.Object] */
    public final void i0(final int i, boolean z) {
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        FrameLayout frameLayout;
        int i5;
        int i6;
        AnimatorSet L;
        boolean z5;
        if (this.p != null && i != -1) {
            if (!this.c1 && PrefUtil.d(this.d) != 0) {
                MainItem.GroupItem group = this.h0.getGroup(i);
                if (group == null) {
                    this.p.setVisibility(8);
                    x0(false);
                    p0(this.s, true);
                    this.s = -1;
                    return;
                }
                MainListAdapter.GroupHolder groupHolder = this.q;
                if (groupHolder == null) {
                    MyListGroup myListGroup = this.p;
                    Context context = myListGroup.getContext();
                    if (context == null) {
                        groupHolder = null;
                    } else {
                        myListGroup.f18854c = true;
                        myListGroup.k = MainApp.K1;
                        myListGroup.f = MainUtil.S(context, R.drawable.shadow_list_up);
                        myListGroup.g = true;
                        myListGroup.h = MainApp.m1;
                        if (MainApp.K1) {
                            myListGroup.i = MainUtil.S(context, R.drawable.round_top_left_d);
                            myListGroup.j = MainUtil.S(context, R.drawable.round_top_right_d);
                        } else {
                            myListGroup.i = MainUtil.S(context, R.drawable.round_top_left_w);
                            myListGroup.j = MainUtil.S(context, R.drawable.round_top_right_w);
                        }
                        int i7 = R.id.group_item_name;
                        myListGroup.setPadding(0, 0, 0, MainApp.m1);
                        MyLineRelative myLineRelative = new MyLineRelative(context);
                        myLineRelative.setPadding(MainApp.i1, MainApp.F1, MainApp.g1, MainApp.F1);
                        myLineRelative.setMinimumHeight(MainApp.i1);
                        myLineRelative.setGravity(16);
                        myLineRelative.b(MainApp.E1);
                        myListGroup.addView(myLineRelative, -1, -2);
                        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                        appCompatTextView.setId(i7);
                        appCompatTextView.setSingleLine(true);
                        appCompatTextView.setTextSize(1, 16.0f);
                        myLineRelative.addView(appCompatTextView, -2, -2);
                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                        appCompatTextView2.setSingleLine(true);
                        appCompatTextView2.setTextSize(1, 14.0f);
                        appCompatTextView2.setVisibility(8);
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                        layoutParams.addRule(3, i7);
                        layoutParams.topMargin = MainApp.G1;
                        myLineRelative.addView(appCompatTextView2, layoutParams);
                        FrameLayout frameLayout2 = new FrameLayout(context);
                        frameLayout2.setVisibility(8);
                        int i8 = MainApp.i1;
                        myListGroup.addView(frameLayout2, i8, i8);
                        MyRoundImage myRoundImage = new MyRoundImage(context);
                        myRoundImage.setCircleRadius(MainApp.j1);
                        myRoundImage.o(-6381922, R.drawable.outline_check_white_24);
                        myRoundImage.setVisibility(4);
                        int i9 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i9, i9);
                        layoutParams2.gravity = 17;
                        frameLayout2.addView(myRoundImage, layoutParams2);
                        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                        myButtonCheck.o(MainApp.j1, MainApp.k1);
                        myButtonCheck.p(R.drawable.baseline_folder_white_24, R.drawable.outline_folder_white_24);
                        int i10 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i10, i10);
                        layoutParams3.gravity = 17;
                        frameLayout2.addView(myButtonCheck, layoutParams3);
                        FrameLayout frameLayout3 = new FrameLayout(context);
                        frameLayout3.setVisibility(8);
                        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.i1);
                        layoutParams4.addRule(21);
                        myListGroup.addView(frameLayout3, layoutParams4);
                        MyButtonImage myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        myButtonImage.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.i1);
                        layoutParams5.setMarginStart(MainApp.F1);
                        frameLayout3.addView(myButtonImage, layoutParams5);
                        MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
                        myButtonCheck2.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.i1);
                        layoutParams6.gravity = 8388613;
                        frameLayout3.addView(myButtonCheck2, layoutParams6);
                        ?? obj = new Object();
                        obj.d = frameLayout2;
                        obj.e = myRoundImage;
                        obj.f = myButtonCheck;
                        obj.g = myLineRelative;
                        obj.h = appCompatTextView;
                        obj.i = appCompatTextView2;
                        obj.j = frameLayout3;
                        obj.k = myButtonImage;
                        obj.l = myButtonCheck2;
                        groupHolder = obj;
                    }
                    if (groupHolder != null && groupHolder.d != null) {
                        boolean z6 = MainApp.K1;
                        this.r = z6;
                        if (z6) {
                            groupHolder.g.setBackgroundResource(R.drawable.selector_list_back_dark);
                            groupHolder.i.setTextColor(-328966);
                            groupHolder.k.setImageResource(R.drawable.outline_more_vert_dark_24);
                            groupHolder.k.setBgPreColor(-12632257);
                            groupHolder.l.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            groupHolder.l.setBgPreColor(-12632257);
                        } else {
                            groupHolder.g.setBackgroundResource(R.drawable.selector_list_back);
                            groupHolder.i.setTextColor(-10395295);
                            groupHolder.k.setImageResource(R.drawable.outline_more_vert_black_24);
                            groupHolder.k.setBgPreColor(553648128);
                            groupHolder.l.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            groupHolder.l.setBgPreColor(553648128);
                        }
                        this.q = groupHolder;
                    } else {
                        return;
                    }
                }
                boolean z7 = this.r;
                boolean z8 = MainApp.K1;
                if (z7 != z8) {
                    this.r = z8;
                    if (z8) {
                        groupHolder.g.setBackgroundResource(R.drawable.selector_list_back_dark);
                        i2 = -328966;
                        groupHolder.i.setTextColor(-328966);
                        groupHolder.k.setImageResource(R.drawable.outline_more_vert_dark_24);
                        groupHolder.k.setBgPreColor(-12632257);
                        groupHolder.l.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                        groupHolder.l.setBgPreColor(-12632257);
                    } else {
                        i2 = -328966;
                        groupHolder.g.setBackgroundResource(R.drawable.selector_list_back);
                        groupHolder.i.setTextColor(-10395295);
                        groupHolder.k.setImageResource(R.drawable.outline_more_vert_black_24);
                        groupHolder.k.setBgPreColor(553648128);
                        groupHolder.l.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                        groupHolder.l.setBgPreColor(553648128);
                    }
                } else {
                    i2 = -328966;
                }
                boolean u = this.h0.u(i);
                if (z && u == groupHolder.g.isActivated()) {
                    if (groupHolder.l.getVisibility() == 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z5 != this.h0.q) {
                        z2 = false;
                    } else {
                        return;
                    }
                } else {
                    z2 = z;
                }
                groupHolder.d.setVisibility(8);
                groupHolder.g.setVisibility(8);
                groupHolder.j.setVisibility(8);
                groupHolder.i.setVisibility(8);
                if (group.f16552a != 1 && !TextUtils.isEmpty(group.b)) {
                    groupHolder.d.setVisibility(0);
                    groupHolder.f.setBgNorColor(-16777216);
                    groupHolder.f.q(false, false);
                    if (z2) {
                        if (u) {
                            L = MainUtil.L(groupHolder.f, groupHolder.e);
                        } else {
                            L = MainUtil.L(groupHolder.e, groupHolder.f);
                        }
                        if (L != null) {
                            L.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView.57
                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    MainListView mainListView = MainListView.this;
                                    MainListAdapter mainListAdapter = mainListView.h0;
                                    if (mainListAdapter != null && mainListView.q != null) {
                                        if (mainListAdapter.u(mainListView.s)) {
                                            mainListView.q.f.setVisibility(4);
                                            mainListView.q.e.setScaleX(1.0f);
                                            mainListView.q.e.setVisibility(0);
                                        } else {
                                            mainListView.q.e.setVisibility(4);
                                            mainListView.q.f.setScaleX(1.0f);
                                            mainListView.q.f.setVisibility(0);
                                        }
                                    }
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationRepeat(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            });
                        }
                        i3 = 0;
                    } else if (u) {
                        groupHolder.f.setVisibility(4);
                        groupHolder.e.setScaleX(1.0f);
                        i3 = 0;
                        groupHolder.e.setVisibility(0);
                    } else {
                        i3 = 0;
                        groupHolder.e.setVisibility(4);
                        groupHolder.f.setScaleX(1.0f);
                        groupHolder.f.setVisibility(0);
                    }
                    groupHolder.g.setVisibility(i3);
                    groupHolder.h.setText(group.b);
                    groupHolder.h.setSingleLine(PrefUtil.c(this.d));
                    MainListAdapter mainListAdapter = this.h0;
                    if (i == mainListAdapter.l(mainListAdapter.p)) {
                        if (PrefUtil.b(this.d)) {
                            groupHolder.h.setTextColor(-769226);
                        } else {
                            AppCompatTextView appCompatTextView3 = groupHolder.h;
                            if (MainApp.K1) {
                                i6 = i2;
                            } else {
                                i6 = -16777216;
                            }
                            appCompatTextView3.setTextColor(i6);
                        }
                    } else {
                        AppCompatTextView appCompatTextView4 = groupHolder.h;
                        if (MainApp.K1) {
                            i4 = i2;
                        } else {
                            i4 = -16777216;
                        }
                        appCompatTextView4.setTextColor(i4);
                    }
                    if (PrefUtil.a(this.d)) {
                        AppCompatTextView appCompatTextView5 = groupHolder.i;
                        StringBuilder sb = new StringBuilder();
                        sb.append(group.f16553c);
                        if (group.f16553c > 1) {
                            i5 = R.string.items;
                        } else {
                            i5 = R.string.item;
                        }
                        sb.append(this.f16603a.getString(i5));
                        appCompatTextView5.setText(sb.toString());
                        groupHolder.i.setVisibility(0);
                    }
                    MainListAdapter mainListAdapter2 = this.h0;
                    MainListAdapter.ListMoreListener listMoreListener = mainListAdapter2.x;
                    MainListAdapter.ListRectListener listRectListener = mainListAdapter2.y;
                    if (listMoreListener == null && listRectListener == null) {
                        z4 = false;
                        z3 = false;
                    } else {
                        final boolean z9 = mainListAdapter2.q;
                        groupHolder.j.setVisibility(0);
                        groupHolder.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainListView.58
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                return z9;
                            }
                        });
                        if (listMoreListener != null && !z9) {
                            groupHolder.k.setVisibility(0);
                            groupHolder.k.setTag(Integer.valueOf(i));
                            groupHolder.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.59
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListAdapter.ListMoreListener listMoreListener2;
                                    MainListAdapter mainListAdapter3 = MainListView.this.h0;
                                    if (mainListAdapter3 != null && (listMoreListener2 = mainListAdapter3.x) != null) {
                                        ((AnonymousClass71) listMoreListener2).b(view, ((Integer) view.getTag()).intValue());
                                    }
                                }
                            });
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (listRectListener != null && z9) {
                            groupHolder.l.setVisibility(0);
                            groupHolder.l.q(u, z2);
                            groupHolder.l.setTag(Integer.valueOf(i));
                            groupHolder.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.60
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListAdapter.ListRectListener listRectListener2;
                                    MainListAdapter mainListAdapter3 = MainListView.this.h0;
                                    if (mainListAdapter3 != null && (listRectListener2 = mainListAdapter3.y) != null) {
                                        ((AnonymousClass72) listRectListener2).a(((Integer) view.getTag()).intValue());
                                    }
                                }
                            });
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                    }
                    if (!z3) {
                        groupHolder.k.setVisibility(8);
                    }
                    if (!z4) {
                        groupHolder.l.setVisibility(8);
                    }
                    groupHolder.g.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView.61
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Object tag;
                            MainListView mainListView = MainListView.this;
                            FragmentExpandView fragmentExpandView = mainListView.M;
                            if (fragmentExpandView != null) {
                                MainListAdapter mainListAdapter3 = mainListView.h0;
                                if (mainListAdapter3 != null) {
                                    mainListAdapter3.t = true;
                                }
                                int i11 = i;
                                if (fragmentExpandView.isGroupExpanded(i11)) {
                                    if (mainListView.M == null) {
                                        return;
                                    }
                                    MyListGroup myListGroup2 = mainListView.p;
                                    int i12 = 0;
                                    if (myListGroup2 != null && myListGroup2.getVisibility() == 0) {
                                        int childCount = mainListView.M.getChildCount();
                                        int i13 = 0;
                                        while (true) {
                                            if (i13 >= childCount) {
                                                break;
                                            }
                                            View childAt = mainListView.M.getChildAt(i13);
                                            if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter.ChildHolder) && ((MainListAdapter.ChildHolder) tag).t == i11) {
                                                i12 = Math.round((mainListView.p.getTranslationY() + mainListView.r()) - (childAt.getY() + mainListView.j));
                                                break;
                                            }
                                            i13++;
                                        }
                                    }
                                    mainListView.M.a(i11, i12);
                                    return;
                                }
                                mainListView.M.b(i11);
                            }
                        }
                    });
                    if (this.n) {
                        groupHolder.g.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.MainListView.62
                            @Override // android.view.View.OnLongClickListener
                            public final boolean onLongClick(View view) {
                                return MainListView.b(MainListView.this, i);
                            }
                        });
                    }
                    groupHolder.g.setActivated(u);
                    this.p.setVisibility(0);
                    x0(true);
                    p0(this.s, false);
                    if (this.u == null && this.v == null && (frameLayout = this.w) != null) {
                        frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.63
                            @Override // java.lang.Runnable
                            public final void run() {
                                boolean z10;
                                MainListView mainListView = MainListView.this;
                                Context context2 = mainListView.b;
                                if (mainListView.u == null && mainListView.v == null && mainListView.w != null && mainListView.p != null) {
                                    mainListView.u = new View(context2);
                                    mainListView.v = new View(context2);
                                    if (mainListView.p.getVisibility() == 0) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    mainListView.x0(z10);
                                    mainListView.j0();
                                    int i11 = MainApp.m1;
                                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i11, i11);
                                    layoutParams7.gravity = 8388659;
                                    layoutParams7.topMargin = MainApp.b1;
                                    int i12 = MainApp.m1;
                                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i12, i12);
                                    layoutParams8.gravity = 8388661;
                                    layoutParams8.topMargin = MainApp.b1;
                                    try {
                                        mainListView.w.addView(mainListView.u, layoutParams7);
                                        mainListView.w.addView(mainListView.v, layoutParams8);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                this.p.setVisibility(8);
                x0(false);
                groupHolder.k.setVisibility(8);
                groupHolder.l.setVisibility(8);
                p0(this.s, true);
                this.s = -1;
                return;
            }
            this.p.setVisibility(8);
            x0(false);
            p0(this.s, true);
            this.s = -1;
            return;
        }
        this.s = -1;
    }

    public final void j0() {
        View view = this.u;
        if (view != null && this.v != null) {
            if (MainApp.K1) {
                view.setBackgroundResource(R.drawable.round_top_left_b);
                this.v.setBackgroundResource(R.drawable.round_top_right_b);
            } else {
                view.setBackgroundResource(R.drawable.round_top_left_g);
                this.v.setBackgroundResource(R.drawable.round_top_right_g);
            }
        }
    }

    public final void k(WebCastView webCastView, MediaRouteButton mediaRouteButton, View view) {
        if (PrefMain.s && !PrefSync.j) {
            if (webCastView != null && mediaRouteButton != null && view != null && this.i1 == null && this.f1 != null && this.g1 != null) {
                this.i1 = webCastView;
                this.j1 = mediaRouteButton;
                this.l1 = view;
                try {
                    MainUtil.W6(webCastView);
                    this.i1.setMovable(false);
                    FrameLayout frameLayout = this.f1;
                    this.h1 = frameLayout;
                    frameLayout.addView(this.i1, MainApp.g1, -1);
                    this.h1.setVisibility(0);
                    MainUtil.W6(this.l1);
                    FrameLayout frameLayout2 = this.g1;
                    this.k1 = frameLayout2;
                    frameLayout2.addView(this.l1, -1, -2);
                    this.k1.setVisibility(0);
                    Z();
                    MediaRouteButton mediaRouteButton2 = this.j1;
                    if (mediaRouteButton2 != null) {
                        try {
                            CastButtonFactory.a(this.b, mediaRouteButton2);
                        } catch (Exception unused) {
                        }
                        this.j1.post(new Runnable() { // from class: com.mycompany.app.main.MainListView.52
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i;
                                MainListView mainListView = MainListView.this;
                                Context context = mainListView.b;
                                MediaRouteButton mediaRouteButton3 = mainListView.j1;
                                if (MainApp.K1) {
                                    i = -328966;
                                } else {
                                    i = -16777216;
                                }
                                MainUtil.h7(i, context, mediaRouteButton3);
                            }
                        });
                    }
                    t();
                    return;
                } catch (Exception unused2) {
                    T();
                    return;
                }
            }
            return;
        }
        T();
    }

    public final void k0() {
        int i;
        FragmentExpandView fragmentExpandView = this.M;
        if (fragmentExpandView != null) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            fragmentExpandView.setBackColor(i);
        }
        if (MainApp.K1) {
            MyButtonRelative myButtonRelative = this.z;
            if (myButtonRelative != null) {
                myButtonRelative.setBgPreColor(-12632257);
            }
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(-328966);
            }
            AppCompatTextView appCompatTextView2 = this.I;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextColor(-328966);
            }
            ImageView imageView = this.B;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.outline_arrow_drop_down_dark_20);
            }
            MyButtonImage myButtonImage = this.y;
            if (myButtonImage != null) {
                myButtonImage.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.y.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage2 = this.C;
            if (myButtonImage2 != null) {
                myButtonImage2.setImageResource(R.drawable.outline_kid_star_2_dark_20);
                this.C.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage3 = this.D;
            if (myButtonImage3 != null) {
                myButtonImage3.setImageResource(R.drawable.outline_add_dark_20);
                this.D.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage4 = this.E;
            if (myButtonImage4 != null) {
                myButtonImage4.setImageResource(R.drawable.outline_delete_dark_20);
                this.E.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage5 = this.F;
            if (myButtonImage5 != null) {
                myButtonImage5.setImageResource(R.drawable.outline_refresh_dark_20);
                this.F.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage6 = this.G;
            if (myButtonImage6 != null) {
                myButtonImage6.setImageResource(R.drawable.outline_search_dark_20);
                this.G.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage7 = this.H;
            if (myButtonImage7 != null) {
                myButtonImage7.setImageResource(R.drawable.outline_more_vert_dark_20);
                this.H.setBgPreColor(-12632257);
            }
            MyButtonCheck myButtonCheck = this.J;
            if (myButtonCheck != null) {
                myButtonCheck.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                this.J.setBgPreColor(-12632257);
                return;
            }
            return;
        }
        MyButtonRelative myButtonRelative2 = this.z;
        if (myButtonRelative2 != null) {
            myButtonRelative2.setBgPreColor(553648128);
        }
        AppCompatTextView appCompatTextView3 = this.A;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setTextColor(-16777216);
        }
        AppCompatTextView appCompatTextView4 = this.I;
        if (appCompatTextView4 != null) {
            appCompatTextView4.setTextColor(-16777216);
        }
        ImageView imageView2 = this.B;
        if (imageView2 != null) {
            imageView2.setImageResource(R.drawable.outline_arrow_drop_down_black_20);
        }
        MyButtonImage myButtonImage8 = this.y;
        if (myButtonImage8 != null) {
            myButtonImage8.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.y.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage9 = this.C;
        if (myButtonImage9 != null) {
            myButtonImage9.setImageResource(R.drawable.outline_kid_star_2_black_20);
            this.C.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage10 = this.D;
        if (myButtonImage10 != null) {
            myButtonImage10.setImageResource(R.drawable.outline_add_black_20);
            this.D.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage11 = this.E;
        if (myButtonImage11 != null) {
            myButtonImage11.setImageResource(R.drawable.outline_delete_black_20);
            this.E.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage12 = this.F;
        if (myButtonImage12 != null) {
            myButtonImage12.setImageResource(R.drawable.outline_refresh_black_20);
            this.F.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage13 = this.G;
        if (myButtonImage13 != null) {
            myButtonImage13.setImageResource(R.drawable.outline_search_black_20);
            this.G.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage14 = this.H;
        if (myButtonImage14 != null) {
            myButtonImage14.setImageResource(R.drawable.outline_more_vert_black_20);
            this.H.setBgPreColor(553648128);
        }
        MyButtonCheck myButtonCheck2 = this.J;
        if (myButtonCheck2 != null) {
            myButtonCheck2.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            this.J.setBgPreColor(553648128);
        }
    }

    public final void l() {
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView != null && Float.compare(myHeaderView.getTranslationY(), 0.0f) != 0 && this.M.computeVerticalScrollOffset() < MainApp.b1) {
            z0();
        }
    }

    public final void l0(float f, boolean z) {
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView == null) {
            this.s = -1;
            return;
        }
        myHeaderView.animate().cancel();
        if (z) {
            this.x.animate().translationY(0.0f).setDuration(300L).start();
            float translationY = this.x.getTranslationY();
            if (this.x != null && this.p != null) {
                if (!this.c1 && PrefUtil.d(this.d) != 0) {
                    ValueAnimator valueAnimator = this.t;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.t = null;
                    }
                    this.u1 = 0.0f;
                    this.v1 = translationY;
                    this.w1 = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(translationY, 0.0f);
                    this.t = ofFloat;
                    ofFloat.setDuration(300L);
                    this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.MainListView.53
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            MainListView mainListView = MainListView.this;
                            if (mainListView.t != null) {
                                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                                if (mainListView.t != null && mainListView.p != null) {
                                    mainListView.v1 = floatValue;
                                    if (!mainListView.w1) {
                                        mainListView.w1 = true;
                                        MainApp.N(mainListView.b, mainListView.x1);
                                    }
                                }
                            }
                        }
                    });
                    this.t.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView.54
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            MainListView.this.t = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final MainListView mainListView = MainListView.this;
                            if (mainListView.t == null) {
                                return;
                            }
                            MainApp.N(mainListView.b, new Runnable() { // from class: com.mycompany.app.main.MainListView.56
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainListView mainListView2 = MainListView.this;
                                    if (mainListView2.t != null) {
                                        mainListView2.t = null;
                                        float f2 = mainListView2.u1;
                                        if (mainListView2.p == null) {
                                            return;
                                        }
                                        mainListView2.h0(f2, true);
                                    }
                                }
                            });
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    this.t.start();
                    return;
                }
                this.p.setVisibility(8);
                x0(false);
                p0(this.s, true);
                this.s = -1;
                return;
            }
            this.s = -1;
            return;
        }
        this.x.setTranslationY(0.0f);
        h0(0.0f, z);
    }

    public final void m() {
        MainListAdapter mainListAdapter;
        MyLineText myLineText;
        MainItem.ChildItem childItem;
        int i;
        if (this.R != null && (mainListAdapter = this.h0) != null && mainListAdapter.q && (myLineText = this.Z) != null && !myLineText.isEnabled()) {
            MainListAdapter mainListAdapter2 = this.h0;
            boolean z = true;
            if (mainListAdapter2.m == 1) {
                List j = mainListAdapter2.j();
                if (j != null && !j.isEmpty() && (childItem = (MainItem.ChildItem) j.get(0)) != null && (i = childItem.d) != 3 && i != 5) {
                    z = false;
                }
                X(this.Z, z);
            }
        }
    }

    public final void m0() {
        MainListAdapter mainListAdapter;
        if (!K() && (mainListAdapter = this.h0) != null && mainListAdapter.q) {
            this.h0.w(!mainListAdapter.s());
            a0();
            c0();
        }
    }

    public final void n() {
        MainListAdapter mainListAdapter;
        boolean z;
        List j;
        MainItem.ChildItem childItem;
        int i;
        if (this.R != null && (mainListAdapter = this.h0) != null && mainListAdapter.q) {
            int i2 = mainListAdapter.m;
            boolean z2 = true;
            boolean z3 = false;
            if (i2 > 0) {
                z = true;
            } else {
                z = false;
            }
            if (i2 != 1) {
                z2 = false;
            }
            if (this.d != 32 || !z2 || (j = mainListAdapter.j()) == null || j.isEmpty() || (childItem = (MainItem.ChildItem) j.get(0)) == null || (i = childItem.d) == 3 || i == 5) {
                z3 = z2;
            }
            X(this.V, z);
            X(this.W, z);
            X(this.X, z);
            X(this.Y, z2);
            X(this.Z, z3);
            X(this.b0, z);
            int i3 = this.d;
            if (i3 != 35 && i3 != 36) {
                X(this.a0, z);
            } else {
                X(this.a0, z2);
            }
        }
    }

    public final void n0(ListTask.ListTaskConfig listTaskConfig) {
        List<MainItem.GroupItem> list;
        List list2;
        int i;
        boolean z;
        MainListAdapter mainListAdapter = this.h0;
        if (mainListAdapter != null && (list = mainListAdapter.h) != null && !list.isEmpty()) {
            int i2 = 0;
            if (!this.c1 && PrefUtil.d(this.d) != 0) {
                if (!this.h0.o) {
                    int size = list.size();
                    while (i2 < size) {
                        this.M.collapseGroup(i2);
                        i2++;
                    }
                    return;
                }
                if (listTaskConfig != null) {
                    list2 = listTaskConfig.l;
                    i = listTaskConfig.m;
                } else {
                    list2 = null;
                    i = -1;
                }
                if (list2 != null && i != -1) {
                    z = true;
                } else {
                    z = false;
                }
                int i3 = 0;
                for (MainItem.GroupItem groupItem : list) {
                    if (groupItem.f16552a != 1) {
                        if (groupItem.f16553c == 0) {
                            this.M.collapseGroup(i2);
                        } else if (z) {
                            if (i3 < list2.size() && list2.contains(Integer.valueOf(i2))) {
                                this.M.expandGroup(i2);
                                i3++;
                            } else if (this.j0 && this.k0 == i2 && this.l0 != -1) {
                                this.M.expandGroup(i2);
                            }
                        } else if (this.j0 && this.k0 == i2 && this.l0 != -1) {
                            this.M.expandGroup(i2);
                        }
                    }
                    i2++;
                }
                return;
            }
            int size2 = list.size();
            while (i2 < size2) {
                this.M.expandGroup(i2);
                i2++;
            }
        }
    }

    public final void o(boolean z) {
        MyListGroup myListGroup;
        boolean z2;
        boolean z3;
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView != null && (myListGroup = this.p) != null) {
            if (!z) {
                h0(myHeaderView.getTranslationY(), false);
                return;
            }
            if (myListGroup.getVisibility() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            h0(this.x.getTranslationY(), false);
            if (this.p.getVisibility() == 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 != z3) {
                float translationY = this.p.getTranslationY();
                float r = r();
                if (z3) {
                    this.p.setTranslationY(translationY - r);
                    this.p.animate().translationY(translationY).setDuration(300L).setListener(null).start();
                } else {
                    this.p.setVisibility(0);
                    x0(true);
                    this.p.setTranslationY(translationY);
                    this.p.animate().translationY(translationY - r).setDuration(300L).setListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView.64
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            MyListGroup myListGroup2;
                            MainListView mainListView = MainListView.this;
                            if (mainListView.s == -1 && (myListGroup2 = mainListView.p) != null) {
                                myListGroup2.setVisibility(8);
                                mainListView.x0(false);
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    }).start();
                }
            }
        }
    }

    public final void o0(long j, boolean z) {
        if (z) {
            MyCoverView myCoverView = this.f0;
            if (myCoverView != null) {
                myCoverView.setActivated(false);
                this.f0.n(true, 1.0f, j);
            }
            FragmentExpandView fragmentExpandView = this.M;
            if (fragmentExpandView != null) {
                fragmentExpandView.setEnabled(false);
                return;
            }
            return;
        }
        MyCoverView myCoverView2 = this.f0;
        if (myCoverView2 != null) {
            myCoverView2.setActivated(false);
            this.f0.f(false);
        }
        FragmentExpandView fragmentExpandView2 = this.M;
        if (fragmentExpandView2 != null) {
            fragmentExpandView2.setEnabled(true);
        }
    }

    public final void p(boolean z) {
        MyListGroup myListGroup;
        if (this.s != -1 && (myListGroup = this.p) != null && myListGroup.getVisibility() == 0) {
            i0(this.s, z);
        }
    }

    public final void p0(int i, boolean z) {
        MainListAdapter mainListAdapter;
        FragmentExpandView fragmentExpandView;
        Object tag;
        MyListChild myListChild;
        boolean z2;
        if (i != -1 && (mainListAdapter = this.h0) != null && (fragmentExpandView = mainListAdapter.g) != null) {
            int childCount = fragmentExpandView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = mainListAdapter.g.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter.ChildHolder)) {
                    MainListAdapter.ChildHolder childHolder = (MainListAdapter.ChildHolder) tag;
                    if (childHolder.u == 0 && (myListChild = childHolder.b) != null) {
                        if (!z && childHolder.t == i) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        if (myListChild.g != z2) {
                            myListChild.g = z2;
                            myListChild.a();
                            myListChild.invalidateOutline();
                        }
                    }
                }
            }
        }
    }

    public final void q(MotionEvent motionEvent) {
        if (motionEvent != null && this.O != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1 || actionMasked == 3) {
                this.O.e();
            }
        }
    }

    public final void q0(boolean z) {
        int i;
        if (!z) {
            Y();
            return;
        }
        if (this.R != null && this.c0 == null) {
            ValueAnimator valueAnimator = this.d0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.d0 = null;
            }
            if (this.R.getVisibility() == 0) {
                i = Math.round(this.R.getTranslationY());
                if (i == 0) {
                    return;
                }
            } else {
                i = MainApp.g1 + MainApp.m1;
            }
            this.n1 = i;
            this.o1 = false;
            ValueAnimator ofInt = ValueAnimator.ofInt(i, 0);
            this.c0 = ofInt;
            ofInt.setDuration(200L);
            this.c0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.MainListView.33
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MainListView mainListView = MainListView.this;
                    if (mainListView.c0 != null && mainListView.R != null) {
                        int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                        if (mainListView.c0 != null && mainListView.R != null) {
                            mainListView.n1 = intValue;
                            if (!mainListView.o1) {
                                mainListView.o1 = true;
                                MainApp.N(mainListView.b, mainListView.p1);
                            }
                        }
                    }
                }
            });
            this.c0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView.34
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MainListView mainListView = MainListView.this;
                    if (mainListView.c0 == null) {
                        return;
                    }
                    mainListView.c0 = null;
                    mainListView.Y();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MainListView mainListView = MainListView.this;
                    if (mainListView.c0 == null) {
                        return;
                    }
                    MainApp.N(mainListView.b, new Runnable() { // from class: com.mycompany.app.main.MainListView.36
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListView mainListView2 = MainListView.this;
                            if (mainListView2.c0 == null) {
                                return;
                            }
                            mainListView2.c0 = null;
                            mainListView2.Y();
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            this.c0.start();
        }
    }

    public final int r() {
        MyListGroup myListGroup = this.p;
        if (myListGroup == null) {
            return 0;
        }
        int height = myListGroup.getHeight();
        if (height == 0) {
            this.p.measure(0, 0);
            height = this.p.getMeasuredHeight();
        }
        return height - MainApp.m1;
    }

    public final void r0(MainItem.ChildItem childItem) {
        MainActivity mainActivity = this.f16603a;
        if (mainActivity == null || J()) {
            return;
        }
        DialogEditScript dialogEditScript = this.N0;
        if (dialogEditScript != null) {
            dialogEditScript.dismiss();
            this.N0 = null;
        }
        DialogEditScript dialogEditScript2 = new DialogEditScript(mainActivity, childItem, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.113
            @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
            public final void a(long j, String str, String str2) {
                boolean z;
                if (j > 0) {
                    z = true;
                } else {
                    z = false;
                }
                MainListView mainListView = MainListView.this;
                mainListView.m0 = z;
                mainListView.L(j, false);
            }
        });
        this.N0 = dialogEditScript2;
        dialogEditScript2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.114
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView = MainListView.this;
                DialogEditScript dialogEditScript3 = mainListView.N0;
                if (dialogEditScript3 != null) {
                    dialogEditScript3.dismiss();
                    mainListView.N0 = null;
                }
            }
        });
    }

    public final void s(boolean z) {
        if (!z) {
            Y();
            return;
        }
        if (this.R != null && this.d0 == null) {
            ValueAnimator valueAnimator = this.c0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.c0 = null;
            }
            if (this.R.getVisibility() == 0) {
                int round = Math.round(this.R.getTranslationY());
                int i = MainApp.g1 + MainApp.m1;
                if (round == i) {
                    this.R.setVisibility(8);
                    return;
                }
                this.q1 = round;
                this.r1 = false;
                ValueAnimator ofInt = ValueAnimator.ofInt(round, i);
                this.d0 = ofInt;
                ofInt.setDuration(200L);
                this.d0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.MainListView.37
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        MainListView mainListView = MainListView.this;
                        if (mainListView.d0 != null && mainListView.R != null) {
                            int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                            if (mainListView.d0 != null && mainListView.R != null) {
                                mainListView.q1 = intValue;
                                if (!mainListView.r1) {
                                    mainListView.r1 = true;
                                    MainApp.N(mainListView.b, mainListView.s1);
                                }
                            }
                        }
                    }
                });
                this.d0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView.38
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MainListView mainListView = MainListView.this;
                        if (mainListView.d0 == null) {
                            return;
                        }
                        mainListView.d0 = null;
                        mainListView.Y();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MainListView mainListView = MainListView.this;
                        if (mainListView.d0 == null) {
                            return;
                        }
                        MainApp.N(mainListView.b, new Runnable() { // from class: com.mycompany.app.main.MainListView.40
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListView mainListView2 = MainListView.this;
                                if (mainListView2.d0 == null) {
                                    return;
                                }
                                mainListView2.d0 = null;
                                mainListView2.Y();
                            }
                        });
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
                this.d0.start();
            }
        }
    }

    public final void s0(MainItem.ChildItem childItem, DialogSetFull.DialogApplyListener dialogApplyListener) {
        int i;
        long j;
        String str;
        String str2;
        if (this.f16603a == null || J()) {
            return;
        }
        v();
        if (childItem != null) {
            j = childItem.y;
            String str3 = childItem.h;
            String str4 = childItem.g;
            i = childItem.v;
            str = str3;
            str2 = str4;
        } else {
            DbBookSearch dbBookSearch = DbBookSearch.f12950c;
            int[] iArr = MainConst.b0;
            int length = iArr.length;
            int i2 = DbBookSearch.f % length;
            if (i2 < 0) {
                i2 = 0;
            }
            i = iArr[i2];
            DbBookSearch.f = (i2 + 3) % length;
            j = 0;
            str = null;
            str2 = null;
        }
        int i3 = i;
        long j2 = j;
        this.F1 = dialogApplyListener;
        DialogEditSearch dialogEditSearch = new DialogEditSearch(this.f16603a, j2, str, str2, i3, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.106
            @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
            public final void a(long j3, String str5, String str6) {
                boolean z;
                MainListView mainListView = MainListView.this;
                DialogSetFull.DialogApplyListener dialogApplyListener2 = mainListView.F1;
                mainListView.F1 = null;
                mainListView.v();
                if (dialogApplyListener2 != null) {
                    dialogApplyListener2.a();
                }
                if (j3 > 0) {
                    z = true;
                } else {
                    z = false;
                }
                mainListView.m0 = z;
                mainListView.L(j3, false);
            }
        });
        this.K0 = dialogEditSearch;
        dialogEditSearch.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.107
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView.this.v();
            }
        });
    }

    public final void t() {
        z();
        DialogSetSort dialogSetSort = this.w0;
        if (dialogSetSort != null) {
            dialogSetSort.dismiss();
            this.w0 = null;
        }
        x();
        y();
        u();
        w();
        A();
        DialogSeekFilter dialogSeekFilter = this.G0;
        if (dialogSeekFilter != null) {
            dialogSeekFilter.dismiss();
            this.G0 = null;
        }
        DialogUpdateFilter dialogUpdateFilter = this.H0;
        if (dialogUpdateFilter != null) {
            dialogUpdateFilter.dismiss();
            this.H0 = null;
        }
        DialogUpdateScript dialogUpdateScript = this.I0;
        if (dialogUpdateScript != null) {
            dialogUpdateScript.dismiss();
            this.I0 = null;
        }
        DialogWebView dialogWebView = this.J0;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.J0 = null;
        }
        v();
        DialogEditMemo dialogEditMemo = this.L0;
        if (dialogEditMemo != null) {
            dialogEditMemo.dismiss();
            this.L0 = null;
        }
        DialogEditCmd dialogEditCmd = this.M0;
        if (dialogEditCmd != null) {
            dialogEditCmd.dismiss();
            this.M0 = null;
        }
        DialogEditScript dialogEditScript = this.N0;
        if (dialogEditScript != null) {
            dialogEditScript.dismiss();
            this.N0 = null;
        }
        DialogSetDown dialogSetDown = this.O0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.O0 = null;
        }
        this.G1 = null;
        DialogInfo dialogInfo = this.P0;
        if (dialogInfo != null) {
            dialogInfo.dismiss();
            this.P0 = null;
        }
        B();
        DialogSetPms dialogSetPms = this.S0;
        if (dialogSetPms != null) {
            dialogSetPms.dismiss();
            this.S0 = null;
        }
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void t0(MainItem.ChildItem childItem) {
        MainItem.ChildItem childItem2;
        MainActivity mainActivity = this.f16603a;
        if (mainActivity == null || J()) {
            return;
        }
        w();
        if (childItem == null) {
            ?? obj = new Object();
            obj.y = -1L;
            childItem2 = obj;
        } else {
            boolean isEmpty = TextUtils.isEmpty(childItem.g);
            childItem2 = childItem;
            if (isEmpty) {
                MainUtil.e8(mainActivity, R.string.empty);
                return;
            }
        }
        DialogEditUrl dialogEditUrl = new DialogEditUrl(mainActivity, this.d, childItem2, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.95
            @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
            public final void a(long j, String str, String str2) {
                MainListView mainListView = MainListView.this;
                mainListView.d0(false, -1, false, true);
                mainListView.w();
                if (!TextUtils.isEmpty(str)) {
                    mainListView.N();
                    MainListView mainListView2 = MainListView.this;
                    if (mainListView2.d == 27) {
                        mainListView2.w0(null, null, str);
                        return;
                    } else {
                        MainListView.j(mainListView2, null, str, str2, j);
                        return;
                    }
                }
                mainListView.L(j, false);
            }
        });
        this.E0 = dialogEditUrl;
        dialogEditUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.96
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView.this.w();
            }
        });
    }

    public final void u() {
        int i;
        MainListListener mainListListener;
        if (this.D0 && (((i = this.d) == 35 || i == 36) && (mainListListener = this.o) != null)) {
            mainListListener.r();
        }
        this.D0 = false;
        DialogDeleteBook dialogDeleteBook = this.C0;
        if (dialogDeleteBook != null) {
            dialogDeleteBook.dismiss();
            this.C0 = null;
        }
        this.D1 = null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
    public final void u0() {
        MainActivity mainActivity = this.f16603a;
        if (mainActivity == null || J()) {
            return;
        }
        z();
        ?? obj = new Object();
        int i = this.d;
        if (i == 1) {
            obj.f16734a = 14;
        } else if (i == 2) {
            obj.f16734a = 15;
        } else if (i == 3) {
            obj.f16734a = 16;
        } else if (i == 25) {
            obj.f16734a = 26;
            obj.f = R.string.user_filter;
        }
        DialogListBook dialogListBook = new DialogListBook(mainActivity, obj, null, new DialogListBook.ListBookListener() { // from class: com.mycompany.app.main.MainListView.84
            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void a(int i2, MainItem.ChildItem childItem, int i3) {
                MainListView mainListView = MainListView.this;
                mainListView.z();
                MainListListener mainListListener = mainListView.o;
                if (mainListListener != null) {
                    mainListListener.f(i2, childItem, true);
                }
            }

            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void b() {
            }
        });
        this.v0 = dialogListBook;
        dialogListBook.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.85
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView = MainListView.this;
                mainListView.z();
                MainListListener mainListListener = mainListView.o;
                if (mainListListener != null) {
                    mainListListener.c(null);
                }
                if (mainListView.d == 25) {
                    mainListView.N();
                }
            }
        });
        this.v0.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.main.MainListView.86
            @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
            public final void a() {
                MainListView mainListView = MainListView.this;
                MainListListener mainListListener = mainListView.o;
                if (mainListListener != null) {
                    mainListListener.c(mainListView.v0);
                }
            }
        };
    }

    public final void v() {
        DialogEditSearch dialogEditSearch = this.K0;
        if (dialogEditSearch != null) {
            dialogEditSearch.dismiss();
            this.K0 = null;
        }
        this.F1 = null;
    }

    public final void v0(boolean z) {
        MainActivity mainActivity = this.f16603a;
        if (mainActivity == null || J()) {
            return;
        }
        A();
        DialogSetFilter dialogSetFilter = new DialogSetFilter(mainActivity, z, new DialogSetFilter.SetFilterListener() { // from class: com.mycompany.app.main.MainListView.97
            @Override // com.mycompany.app.dialog.DialogSetFilter.SetFilterListener
            public final void a(ArrayList arrayList) {
                MainListView.this.A();
                if (arrayList != null && !arrayList.isEmpty()) {
                    MainListView.j(MainListView.this, arrayList, null, null, -1L);
                }
            }
        });
        this.F0 = dialogSetFilter;
        dialogSetFilter.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.98
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView.this.A();
            }
        });
    }

    public final void w() {
        DialogEditUrl dialogEditUrl = this.E0;
        if (dialogEditUrl != null) {
            dialogEditUrl.dismiss();
            this.E0 = null;
        }
    }

    public final void w0(List list, MainItem.ChildItem childItem, String str) {
        if (this.f16603a == null || J()) {
            return;
        }
        DialogUpdateScript dialogUpdateScript = this.I0;
        if (dialogUpdateScript != null) {
            dialogUpdateScript.dismiss();
            this.I0 = null;
        }
        DialogUpdateScript dialogUpdateScript2 = new DialogUpdateScript(this.f16603a, list, childItem, str, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView.102
            @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
            public final void a(long j, String str2, String str3) {
                boolean z;
                if (j > 0) {
                    z = true;
                } else {
                    z = false;
                }
                MainListView mainListView = MainListView.this;
                mainListView.m0 = z;
                mainListView.L(j, false);
            }
        });
        this.I0 = dialogUpdateScript2;
        dialogUpdateScript2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView.103
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainListView mainListView = MainListView.this;
                DialogUpdateScript dialogUpdateScript3 = mainListView.I0;
                if (dialogUpdateScript3 != null) {
                    dialogUpdateScript3.dismiss();
                    mainListView.I0 = null;
                }
            }
        });
    }

    public final void x() {
        MainListAdapter mainListAdapter;
        if (!this.z0 && this.y0 && (mainListAdapter = this.h0) != null) {
            mainListAdapter.C();
        }
        this.y0 = false;
        this.z0 = false;
        DialogFileDelete dialogFileDelete = this.x0;
        if (dialogFileDelete != null) {
            dialogFileDelete.dismiss();
            this.x0 = null;
        }
    }

    public final void x0(boolean z) {
        View view = this.u;
        if (view != null && this.v != null) {
            if (z) {
                view.setVisibility(0);
                this.v.setVisibility(0);
            } else {
                view.setVisibility(8);
                this.v.setVisibility(8);
            }
        }
    }

    public final void y() {
        MainListAdapter mainListAdapter;
        if (this.B0 && (mainListAdapter = this.h0) != null) {
            mainListAdapter.C();
        }
        this.B0 = false;
        DialogFileRename dialogFileRename = this.A0;
        if (dialogFileRename != null) {
            dialogFileRename.dismiss();
            this.A0 = null;
        }
    }

    public final void y0() {
        MyCoverView myCoverView = this.f0;
        if (myCoverView == null) {
            return;
        }
        myCoverView.setActivated(true);
        this.f0.l();
        this.f0.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView.65
            @Override // java.lang.Runnable
            public final void run() {
                MainListView mainListView = MainListView.this;
                MyCoverView myCoverView2 = mainListView.f0;
                if (myCoverView2 != null && myCoverView2.isActivated()) {
                    mainListView.f0.setActivated(false);
                    mainListView.f0.f(false);
                }
            }
        }, 400L);
    }

    public final void z() {
        DialogListBook dialogListBook = this.v0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.v0 = null;
        }
    }

    public final void z0() {
        MyHeaderView myHeaderView = this.x;
        if (myHeaderView != null && Float.compare(myHeaderView.getTranslationY(), 0.0f) != 0) {
            l0(0.0f, true);
        }
    }
}
