package com.mycompany.app.main;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.a;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.mycompany.app.data.book.DataBookSearch;
import com.mycompany.app.dialog.DialogDeleteBook;
import com.mycompany.app.dialog.DialogEditMemo;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.dialog.DialogInfo;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetSort2;
import com.mycompany.app.dialog.DialogWebBookEdit;
import com.mycompany.app.dialog.DialogWebBookList;
import com.mycompany.app.dialog.DialogWebBookMove;
import com.mycompany.app.fragment.FragmentTabPath;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListAdapter2;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.quick.ListDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.wview.WebCastView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MainListView2 {
    public ItemTouchHelper A;
    public MyEditPure A0;
    public boolean B;
    public MyButtonImage B0;
    public int C;
    public MyButtonImage C0;
    public int D;
    public MyRoundView D0;
    public MyScrollBar E;
    public boolean E0;
    public MyFadeImage F;
    public boolean F0;
    public AppCompatTextView G;
    public CharSequence G0;
    public RelativeLayout H;
    public FrameLayout H0;
    public FrameLayout I;
    public FrameLayout I0;
    public View J;
    public FrameLayout J0;
    public View K;
    public WebCastView K0;
    public LinearLayout L;
    public MediaRouteButton L0;
    public MyLineText M;
    public FrameLayout M0;
    public MyLineText N;
    public View N0;
    public MyLineText O;
    public boolean O0;
    public ValueAnimator P;
    public int P0;
    public ValueAnimator Q;
    public boolean Q0;
    public MyCoverView R;
    public ListTask S;
    public int S0;
    public MainListAdapter2 T;
    public boolean T0;
    public boolean U;
    public int V;
    public boolean V0;
    public int W;
    public boolean W0;
    public int X;
    public HashMap Y;
    public String Y0;
    public String Z;

    /* renamed from: a, reason: collision with root package name */
    public int f16738a;
    public boolean a0;
    public final MainActivity b;
    public boolean b0;

    /* renamed from: c, reason: collision with root package name */
    public final Context f16739c;
    public MyPopupMenu c0;
    public boolean d;
    public MyPopupMenu d0;
    public final int e;
    public boolean e0;
    public final boolean f;
    public boolean f0;
    public RelativeLayout g;
    public int g0;
    public final int h;
    public boolean h0;
    public final int i;
    public DialogSetSort2 i0;
    public final boolean j;
    public DialogWebBookEdit j0;
    public final boolean k;
    public DialogWebBookList k0;
    public MainListListener l;
    public DialogWebBookMove l0;
    public FragmentTabPath m;
    public boolean m0;
    public FrameLayout n;
    public boolean n0;
    public MyHeaderView o;
    public DialogDeleteBook o0;
    public MyButtonImage p;
    public boolean p0;
    public AppCompatTextView q;
    public DialogEditMemo q0;
    public LinearLayout r;
    public DialogSetDown r0;
    public MyButtonImage s;
    public DialogInfo s0;
    public MyButtonImage t;
    public String t0;
    public MyButtonImage u;
    public String u0;
    public MyButtonImage v;
    public List v0;
    public AppCompatTextView w;
    public boolean w0;
    public MyButtonCheck x;
    public boolean x0;
    public MyRecyclerView y;
    public MyDialogNormal y0;
    public MyManagerLinear z;
    public FrameLayout z0;
    public final Runnable R0 = new Runnable() { // from class: com.mycompany.app.main.MainListView2.20
        @Override // java.lang.Runnable
        public final void run() {
            MainListView2 mainListView2 = MainListView2.this;
            mainListView2.Q0 = false;
            if (mainListView2.P != null) {
                int i = mainListView2.P0;
                FrameLayout frameLayout = mainListView2.I;
                if (frameLayout != null) {
                    frameLayout.setTranslationY(i);
                    if (mainListView2.I.getVisibility() != 0) {
                        mainListView2.I.setVisibility(0);
                    }
                }
            }
        }
    };
    public final Runnable U0 = new Runnable() { // from class: com.mycompany.app.main.MainListView2.24
        @Override // java.lang.Runnable
        public final void run() {
            MainListView2 mainListView2 = MainListView2.this;
            mainListView2.T0 = false;
            if (mainListView2.Q != null) {
                int i = mainListView2.S0;
                FrameLayout frameLayout = mainListView2.I;
                if (frameLayout == null) {
                    return;
                }
                frameLayout.setTranslationY(i);
            }
        }
    };
    public final Runnable X0 = new Runnable() { // from class: com.mycompany.app.main.MainListView2.43
        @Override // java.lang.Runnable
        public final void run() {
            MyManagerLinear myManagerLinear;
            MainListView2 mainListView2 = MainListView2.this;
            if (mainListView2.E != null && (myManagerLinear = mainListView2.z) != null) {
                mainListView2.E.p((myManagerLinear.V0() - mainListView2.z.U0()) + 1, mainListView2.z.H());
            }
            mainListView2.W0 = false;
        }
    };

    /* renamed from: com.mycompany.app.main.MainListView2$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView2$28, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass28 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView2$38, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass38 implements MainListAdapter2.List2Listener {
        public AnonymousClass38() {
        }
    }

    /* renamed from: com.mycompany.app.main.MainListView2$40, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass40 implements ListDragHelper.ListDragListener {
        public AnonymousClass40() {
        }

        @Override // com.mycompany.app.quick.ListDragHelper.ListDragListener
        public final void a(int i) {
            MainListView2 mainListView2 = MainListView2.this;
            mainListView2.B = false;
            if (i == 2) {
                mainListView2.B = true;
            } else if (i == 0 && mainListView2.C != mainListView2.D) {
                mainListView2.w0 = true;
                MainApp.J(mainListView2.f16739c, new Runnable() { // from class: com.mycompany.app.main.MainListView2.40.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass40 anonymousClass40 = AnonymousClass40.this;
                        MainListView2 mainListView22 = MainListView2.this;
                        MainListAdapter2 mainListAdapter2 = mainListView22.T;
                        if (mainListAdapter2 == null) {
                            return;
                        }
                        if (mainListView22.C != mainListView22.D) {
                            mainListAdapter2.L();
                        }
                        MainListView2.this.w0 = false;
                    }
                });
            }
        }

        @Override // com.mycompany.app.quick.ListDragHelper.ListDragListener
        public final boolean b(int i, int i2) {
            MainListView2 mainListView2 = MainListView2.this;
            MainListAdapter2 mainListAdapter2 = mainListView2.T;
            if (mainListAdapter2 != null) {
                mainListView2.D = i2;
                if (!mainListAdapter2.F(i, i2)) {
                    return false;
                }
                mainListAdapter2.j(i, i2);
                return true;
            }
            return false;
        }

        @Override // com.mycompany.app.quick.ListDragHelper.ListDragListener
        public final void c(final int i, final int i2) {
            MainListView2 mainListView2 = MainListView2.this;
            mainListView2.B = false;
            if (mainListView2.T == null) {
                return;
            }
            mainListView2.x0 = true;
            MainApp.J(mainListView2.f16739c, new Runnable() { // from class: com.mycompany.app.main.MainListView2.40.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:110:0x0207 A[LOOP:1: B:103:0x01ae->B:110:0x0207, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:111:0x0213 A[EDGE_INSN: B:111:0x0213->B:53:0x0213 BREAK  A[LOOP:1: B:103:0x01ae->B:110:0x0207], SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:54:0x0215  */
                /* JADX WARN: Type inference failed for: r4v16, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 768
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListView2.AnonymousClass40.AnonymousClass2.run():void");
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class ListPos {

        /* renamed from: a, reason: collision with root package name */
        public String f16808a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f16809c;
    }

    public MainListView2(MainActivity mainActivity, Context context, MainListView.ListViewConfig listViewConfig, MainListListener mainListListener) {
        this.b = mainActivity;
        this.f16739c = context;
        int i = listViewConfig.f16734a;
        this.e = i;
        boolean z = listViewConfig.d;
        this.f = z;
        this.h = listViewConfig.f;
        this.i = listViewConfig.g;
        this.j = listViewConfig.j;
        this.k = listViewConfig.k;
        this.l = mainListListener;
        this.d = MainApp.K1;
        this.U = true;
        this.X = -1;
        this.a0 = false;
        this.b0 = false;
        this.g0 = -1;
        MainListView.ListViewHolder listViewHolder = listViewConfig.e;
        if (listViewHolder != null) {
            this.g = listViewHolder.f16736a;
            this.n = listViewHolder.b;
            this.o = listViewHolder.d;
            this.p = listViewHolder.e;
            this.q = listViewHolder.f;
            this.y = listViewHolder.x;
            this.E = listViewHolder.s;
            this.F = listViewHolder.t;
            this.R = listViewHolder.u;
            this.r = listViewHolder.y;
            this.t = listViewHolder.k;
            this.v = listViewHolder.n;
            this.w = listViewHolder.o;
            this.x = listViewHolder.p;
            this.H0 = listViewHolder.v;
            this.I0 = listViewHolder.w;
            if (i == 37) {
                this.G = listViewHolder.B;
            } else {
                this.s = listViewHolder.i;
                this.m = listViewHolder.z;
                this.H = listViewHolder.A;
            }
            if (!z) {
                MyButtonImage myButtonImage = listViewHolder.m;
                this.u = myButtonImage;
                if (myButtonImage != null) {
                    myButtonImage.setVisibility(0);
                }
            }
        }
    }

    public static void a(MainListView2 mainListView2) {
        if (mainListView2.E0 && mainListView2.z0 == null && mainListView2.o != null) {
            MainActivity mainActivity = mainListView2.b;
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
                mainListView2.z0 = frameLayout;
                mainListView2.A0 = myEditPure;
                mainListView2.B0 = myButtonImage;
                mainListView2.C0 = myButtonImage2;
                mainListView2.D0 = myRoundView;
                RelativeLayout relativeLayout = mainListView2.g;
                if (relativeLayout == null) {
                    return;
                }
                relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.27
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View$OnClickListener, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        final MainListView2 mainListView22 = MainListView2.this;
                        if (mainListView22.E0 && mainListView22.z0 != null && mainListView22.o != null) {
                            mainListView22.C();
                            DataBookSearch a2 = DataBookSearch.a(mainListView22.f16739c);
                            a2.f12914a = null;
                            a2.b = null;
                            mainListView22.z0.setOnClickListener(new Object());
                            mainListView22.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.29
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListView2 mainListView23 = MainListView2.this;
                                    if (!mainListView23.m() && mainListView23.A0 != null) {
                                        mainListView23.q();
                                        ListTask listTask = mainListView23.S;
                                        if (listTask != null) {
                                            listTask.l(null, false, false);
                                        }
                                    }
                                }
                            });
                            mainListView22.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.30
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListView2 mainListView23 = MainListView2.this;
                                    MyButtonImage myButtonImage3 = mainListView23.C0;
                                    if (myButtonImage3 != null) {
                                        myButtonImage3.setVisibility(4);
                                        mainListView23.A0.setText((CharSequence) null);
                                        ListTask listTask = mainListView23.S;
                                        if (listTask != null) {
                                            listTask.j(null);
                                        }
                                    }
                                }
                            });
                            mainListView22.A0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.main.MainListView2.31
                                @Override // android.text.TextWatcher
                                public final void afterTextChanged(Editable editable) {
                                    String str;
                                    MainListView2 mainListView23 = MainListView2.this;
                                    if (mainListView23.C0 == null) {
                                        return;
                                    }
                                    if (!TextUtils.isEmpty(editable)) {
                                        str = editable.toString();
                                    } else {
                                        str = null;
                                    }
                                    if (TextUtils.isEmpty(str)) {
                                        mainListView23.C0.setVisibility(4);
                                    } else {
                                        mainListView23.C0.setVisibility(0);
                                        str = str.trim();
                                    }
                                    boolean isEmpty = TextUtils.isEmpty(str);
                                    boolean z = !isEmpty;
                                    if (!isEmpty || mainListView23.F0) {
                                        if (!isEmpty) {
                                            String lowerCase = str.toLowerCase(Locale.US);
                                            ListTask listTask = mainListView23.S;
                                            if (listTask != null) {
                                                listTask.j(lowerCase);
                                            }
                                        } else {
                                            ListTask listTask2 = mainListView23.S;
                                            if (listTask2 != null) {
                                                listTask2.j(null);
                                            }
                                        }
                                    }
                                    mainListView23.F0 = z;
                                }

                                @Override // android.text.TextWatcher
                                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                                }

                                @Override // android.text.TextWatcher
                                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                                }
                            });
                            RelativeLayout relativeLayout2 = mainListView22.g;
                            if (relativeLayout2 == null) {
                                return;
                            }
                            relativeLayout2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.32
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FrameLayout frameLayout2;
                                    MyHeaderView myHeaderView;
                                    final MainListView2 mainListView23 = MainListView2.this;
                                    if (mainListView23.E0 && (frameLayout2 = mainListView23.z0) != null && (myHeaderView = mainListView23.o) != null) {
                                        myHeaderView.addView(frameLayout2, -1, MainApp.b1);
                                        RelativeLayout relativeLayout3 = mainListView23.g;
                                        if (relativeLayout3 == null) {
                                            return;
                                        }
                                        relativeLayout3.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.33
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final MainListView2 mainListView24 = MainListView2.this;
                                                if (mainListView24.E0 && mainListView24.z0 != null && mainListView24.o != null) {
                                                    mainListView24.A0.setFocusable(true);
                                                    mainListView24.A0.setFocusableInTouchMode(true);
                                                    RelativeLayout relativeLayout4 = mainListView24.g;
                                                    if (relativeLayout4 == null) {
                                                        return;
                                                    }
                                                    relativeLayout4.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.34
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final MainListView2 mainListView25 = MainListView2.this;
                                                            if (mainListView25.E0 && mainListView25.z0 != null && mainListView25.o != null) {
                                                                mainListView25.A0.requestFocus();
                                                                mainListView25.A0.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView2.35
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        Context context;
                                                                        MainListView2 mainListView26 = MainListView2.this;
                                                                        MyEditPure myEditPure2 = mainListView26.A0;
                                                                        if (myEditPure2 != null && (context = mainListView26.f16739c) != null) {
                                                                            MainUtil.c8(context, myEditPure2);
                                                                        }
                                                                    }
                                                                }, 200L);
                                                                ListTask listTask = mainListView25.S;
                                                                if (listTask != null) {
                                                                    listTask.j(null);
                                                                }
                                                                mainListView25.V0 = false;
                                                                return;
                                                            }
                                                            mainListView25.V0 = false;
                                                        }
                                                    });
                                                    return;
                                                }
                                                mainListView24.V0 = false;
                                            }
                                        });
                                        return;
                                    }
                                    mainListView23.V0 = false;
                                }
                            });
                            return;
                        }
                        mainListView22.V0 = false;
                    }
                });
                return;
            }
            return;
        }
        mainListView2.V0 = false;
    }

    public static void b(MainListView2 mainListView2, List list) {
        boolean z;
        boolean z2;
        if (mainListView2.b != null && !mainListView2.m()) {
            mainListView2.f();
            if (mainListView2.T != null && list != null && !list.isEmpty()) {
                if (!mainListView2.E0) {
                    if (list.size() == mainListView2.T.B()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z = z2;
                } else {
                    z = false;
                }
                DialogDeleteBook dialogDeleteBook = new DialogDeleteBook(mainListView2.b, mainListView2.e, list, null, z, true, new DialogDeleteBook.DeleteBookListener() { // from class: com.mycompany.app.main.MainListView2.56
                    @Override // com.mycompany.app.dialog.DialogDeleteBook.DeleteBookListener
                    public final void a() {
                        MainListView2.this.B(-1, false, true);
                    }

                    @Override // com.mycompany.app.dialog.DialogDeleteBook.DeleteBookListener
                    public final void b() {
                        MainListView2 mainListView22 = MainListView2.this;
                        mainListView22.p0 = true;
                        if (mainListView22.E0) {
                            mainListView22.q();
                        }
                        ListTask listTask = mainListView22.S;
                        if (listTask != null) {
                            listTask.m(true, null, null, null);
                        }
                    }
                });
                mainListView2.o0 = dialogDeleteBook;
                dialogDeleteBook.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.57
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        MainListView2.this.f();
                    }
                });
                mainListView2.p0 = false;
            }
        }
    }

    public static void c(MainListView2 mainListView2, final List list) {
        if (mainListView2.b != null && !mainListView2.m()) {
            mainListView2.g();
            ListTask listTask = mainListView2.S;
            if (listTask == null) {
                return;
            }
            final String b = listTask.b();
            DialogWebBookList dialogWebBookList = new DialogWebBookList(mainListView2.b, b, list, 3, new DialogWebBookList.BookListListener() { // from class: com.mycompany.app.main.MainListView2.52
                @Override // com.mycompany.app.dialog.DialogWebBookList.BookListListener
                public final void a(String str) {
                    MainListView2 mainListView22 = MainListView2.this;
                    mainListView22.g();
                    if (MainUtil.q5(b, str)) {
                        mainListView22.B(-1, false, true);
                    } else {
                        MainListView2.d(mainListView22, list, str, 3);
                    }
                }

                @Override // com.mycompany.app.dialog.DialogWebBookList.BookListListener
                public final void b(int i, String str) {
                }
            });
            mainListView2.k0 = dialogWebBookList;
            dialogWebBookList.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.53
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MainListView2.this.g();
                }
            });
        }
    }

    public static void d(MainListView2 mainListView2, List list, String str, int i) {
        ListTask listTask;
        if (mainListView2.b != null && !mainListView2.m()) {
            mainListView2.h();
            if ((i == 2 || i == 3 || i == 4) && list != null && !list.isEmpty()) {
                if (str == null && (listTask = mainListView2.S) != null) {
                    str = listTask.b();
                }
                mainListView2.t0 = null;
                DialogWebBookMove dialogWebBookMove = new DialogWebBookMove(mainListView2.b, list, str, i, new DialogWebBookMove.BookMoveListener() { // from class: com.mycompany.app.main.MainListView2.54
                    @Override // com.mycompany.app.dialog.DialogWebBookMove.BookMoveListener
                    public final void a() {
                        MainListView2.this.B(-1, false, true);
                    }

                    @Override // com.mycompany.app.dialog.DialogWebBookMove.BookMoveListener
                    public final void b(ArrayList arrayList, String str2) {
                        boolean z;
                        MainListView2 mainListView22 = MainListView2.this;
                        mainListView22.m0 = true;
                        if (mainListView22.E0) {
                            mainListView22.q();
                        }
                        if (mainListView22.S == null) {
                            return;
                        }
                        mainListView22.t0 = str2;
                        mainListView22.G(str2);
                        mainListView22.U = true;
                        if (arrayList != null && !arrayList.isEmpty()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        mainListView22.b0 = z;
                        mainListView22.S.m(true, str2, null, arrayList);
                    }
                });
                mainListView2.l0 = dialogWebBookMove;
                dialogWebBookMove.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.55
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        MainListView2.this.h();
                    }
                });
                boolean z = false;
                mainListView2.m0 = false;
                if (i == 2) {
                    z = true;
                }
                mainListView2.n0 = z;
            }
        }
    }

    public static void v(TextView textView, boolean z) {
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

    public final void A() {
        MainListAdapter2 mainListAdapter2;
        boolean z;
        if (this.I != null && (mainListAdapter2 = this.T) != null && mainListAdapter2.m) {
            boolean z2 = false;
            if (mainListAdapter2.i > 0) {
                z = true;
            } else {
                z = false;
            }
            v(this.M, z);
            v(this.N, z);
            if (z) {
                Iterator it = this.T.y().iterator();
                while (it.hasNext()) {
                    if (((MainItem.ChildItem) it.next()).k) {
                        break;
                    }
                }
            }
            z2 = z;
            v(this.O, z2);
        }
    }

    public final void B(int i, boolean z, boolean z2) {
        Object tag;
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null && z != mainListAdapter2.m) {
            if (!z || mainListAdapter2.B() != 0) {
                MainListAdapter2 mainListAdapter22 = this.T;
                MyRecyclerView myRecyclerView = mainListAdapter22.f;
                if (myRecyclerView != null && mainListAdapter22.m != z) {
                    mainListAdapter22.m = z;
                    int childCount = myRecyclerView.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = mainListAdapter22.f.getChildAt(i2);
                        if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter2.MainListHolder)) {
                            MainListAdapter2.MainListHolder mainListHolder = (MainListAdapter2.MainListHolder) tag;
                            if (mainListAdapter22.r != null && mainListHolder.F != null) {
                                if (mainListAdapter22.E(mainListHolder.H)) {
                                    mainListHolder.F.setVisibility(8);
                                } else {
                                    MyButtonImage myButtonImage = mainListHolder.F;
                                    if (!z) {
                                        myButtonImage.g();
                                    } else {
                                        myButtonImage.f(z);
                                    }
                                }
                            }
                        }
                    }
                    if (z) {
                        mainListAdapter22.h = new boolean[mainListAdapter22.g.size()];
                        mainListAdapter22.i = 0;
                        mainListAdapter22.G(i, true);
                    } else {
                        mainListAdapter22.h = null;
                        mainListAdapter22.i = 0;
                        mainListAdapter22.H(false);
                    }
                }
                A();
                Context context = this.f16739c;
                if (z) {
                    AppCompatTextView appCompatTextView = this.w;
                    if (appCompatTextView != null) {
                        MainListAdapter2 mainListAdapter23 = this.T;
                        appCompatTextView.setText(MainUtil.h3(mainListAdapter23.i, mainListAdapter23.B()));
                    }
                    MyButtonCheck myButtonCheck = this.x;
                    if (myButtonCheck != null) {
                        myButtonCheck.q(this.T.D(), true);
                    }
                    if (this.E0) {
                        AppCompatTextView appCompatTextView2 = this.q;
                        if (appCompatTextView2 != null) {
                            this.G0 = appCompatTextView2.getText();
                            this.q.setText(MainUtil.Q0(this.A0, false));
                        }
                        FrameLayout frameLayout = this.z0;
                        if (frameLayout != null) {
                            frameLayout.setVisibility(8);
                        }
                        MyEditPure myEditPure = this.A0;
                        if (myEditPure != null) {
                            myEditPure.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.44
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainListView2 mainListView2 = MainListView2.this;
                                    MyEditPure myEditPure2 = mainListView2.A0;
                                    if (myEditPure2 == null) {
                                        return;
                                    }
                                    MainUtil.X4(mainListView2.f16739c, myEditPure2);
                                }
                            });
                        }
                        z2 = false;
                    }
                    if (z2) {
                        LinearLayout linearLayout = this.r;
                        if (linearLayout != null) {
                            MainUtil.h8(context, linearLayout, R.anim.ic_scale_out, true);
                        }
                        MyButtonImage myButtonImage2 = this.v;
                        if (myButtonImage2 != null) {
                            MainUtil.h8(context, myButtonImage2, R.anim.ic_rotate_out, true);
                        }
                        AppCompatTextView appCompatTextView3 = this.w;
                        if (appCompatTextView3 != null) {
                            MainUtil.h8(context, appCompatTextView3, R.anim.ic_scale_in, false);
                        }
                        MyButtonCheck myButtonCheck2 = this.x;
                        if (myButtonCheck2 != null) {
                            MainUtil.h8(context, myButtonCheck2, R.anim.ic_rotate_in, false);
                        }
                    } else {
                        LinearLayout linearLayout2 = this.r;
                        if (linearLayout2 != null) {
                            linearLayout2.setVisibility(8);
                        }
                        MyButtonImage myButtonImage3 = this.v;
                        if (myButtonImage3 != null) {
                            myButtonImage3.setVisibility(8);
                        }
                        AppCompatTextView appCompatTextView4 = this.w;
                        if (appCompatTextView4 != null) {
                            appCompatTextView4.setVisibility(0);
                        }
                        MyButtonCheck myButtonCheck3 = this.x;
                        if (myButtonCheck3 != null) {
                            myButtonCheck3.setVisibility(0);
                        }
                    }
                    if (this.k && this.n != null) {
                        if (this.I != null) {
                            I(z2);
                            return;
                        }
                        this.O0 = z2;
                        RelativeLayout relativeLayout = this.g;
                        if (relativeLayout != null) {
                            relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.12
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainActivity mainActivity;
                                    View view;
                                    View view2;
                                    final MainListView2 mainListView2 = MainListView2.this;
                                    if (mainListView2.n != null && (mainActivity = mainListView2.b) != null) {
                                        FrameLayout frameLayout2 = new FrameLayout(mainActivity);
                                        frameLayout2.setVisibility(8);
                                        if (mainListView2.H == null) {
                                            view = new View(mainActivity);
                                            int i3 = MainApp.m1;
                                            frameLayout2.addView(view, i3, i3);
                                            view2 = new View(mainActivity);
                                            int i4 = MainApp.m1;
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
                                            layoutParams.gravity = 8388613;
                                            frameLayout2.addView(view2, layoutParams);
                                        } else {
                                            view = null;
                                            view2 = null;
                                        }
                                        LinearLayout linearLayout3 = new LinearLayout(mainActivity);
                                        linearLayout3.setBaselineAligned(false);
                                        linearLayout3.setOrientation(0);
                                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                                        if (mainListView2.H == null) {
                                            layoutParams2.topMargin = MainApp.m1;
                                        }
                                        frameLayout2.addView(linearLayout3, layoutParams2);
                                        MyLineText myLineText = new MyLineText(mainActivity);
                                        myLineText.setGravity(17);
                                        myLineText.setTextSize(1, 16.0f);
                                        myLineText.setVisibility(8);
                                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                                        layoutParams3.weight = 1.0f;
                                        linearLayout3.addView(myLineText, layoutParams3);
                                        MyLineText myLineText2 = new MyLineText(mainActivity);
                                        myLineText2.setGravity(17);
                                        myLineText2.setTextSize(1, 16.0f);
                                        myLineText2.r(mainActivity);
                                        myLineText2.setVisibility(8);
                                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -1);
                                        layoutParams4.weight = 1.0f;
                                        linearLayout3.addView(myLineText2, layoutParams4);
                                        MyLineText myLineText3 = new MyLineText(mainActivity);
                                        myLineText3.setGravity(17);
                                        myLineText3.setTextSize(1, 16.0f);
                                        myLineText3.r(mainActivity);
                                        myLineText3.setVisibility(8);
                                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
                                        layoutParams5.weight = 1.0f;
                                        linearLayout3.addView(myLineText3, layoutParams5);
                                        MyLineText myLineText4 = new MyLineText(mainActivity);
                                        myLineText4.setGravity(17);
                                        myLineText4.setTextSize(1, 16.0f);
                                        myLineText4.r(mainActivity);
                                        myLineText4.setVisibility(8);
                                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
                                        layoutParams6.weight = 1.0f;
                                        linearLayout3.addView(myLineText4, layoutParams6);
                                        mainListView2.I = frameLayout2;
                                        mainListView2.J = view;
                                        mainListView2.K = view2;
                                        mainListView2.L = linearLayout3;
                                        mainListView2.M = myLineText;
                                        mainListView2.N = myLineText2;
                                        mainListView2.O = myLineText3;
                                        RelativeLayout relativeLayout2 = mainListView2.g;
                                        if (relativeLayout2 == null) {
                                            return;
                                        }
                                        relativeLayout2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.13
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                FrameLayout frameLayout3;
                                                final MainListView2 mainListView22 = MainListView2.this;
                                                int i5 = mainListView22.e;
                                                if (mainListView22.n != null && (frameLayout3 = mainListView22.I) != null) {
                                                    RelativeLayout relativeLayout3 = mainListView22.H;
                                                    if (relativeLayout3 != null) {
                                                        relativeLayout3.addView(frameLayout3, -1, MainApp.g1);
                                                    } else {
                                                        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, MainApp.g1 + MainApp.m1);
                                                        layoutParams7.gravity = 80;
                                                        mainListView22.n.addView(mainListView22.I, layoutParams7);
                                                    }
                                                    mainListView22.M.setText(R.string.delete);
                                                    mainListView22.N.setText(R.string.move);
                                                    mainListView22.O.setText(R.string.share);
                                                    MyLineText myLineText5 = mainListView22.M;
                                                    if (myLineText5 != null) {
                                                        myLineText5.setVisibility(0);
                                                        mainListView22.M.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.14
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view3) {
                                                                MainListView2 mainListView23 = MainListView2.this;
                                                                MainListAdapter2 mainListAdapter24 = mainListView23.T;
                                                                if (mainListAdapter24 != null && mainListView23.P == null && mainListView23.Q == null) {
                                                                    if (mainListView23.e == 37) {
                                                                        MainListView2.b(mainListView23, mainListAdapter24.y());
                                                                    } else {
                                                                        MainListView2.d(mainListView23, mainListAdapter24.y(), null, 2);
                                                                    }
                                                                }
                                                            }
                                                        });
                                                    }
                                                    MyLineText myLineText6 = mainListView22.N;
                                                    if (myLineText6 != null) {
                                                        if (i5 == 37) {
                                                            myLineText6.setVisibility(8);
                                                        } else {
                                                            myLineText6.setVisibility(0);
                                                        }
                                                        mainListView22.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.15
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view3) {
                                                                MainListView2 mainListView23 = MainListView2.this;
                                                                MainListAdapter2 mainListAdapter24 = mainListView23.T;
                                                                if (mainListAdapter24 != null && mainListView23.P == null && mainListView23.Q == null) {
                                                                    MainListView2.c(mainListView23, mainListAdapter24.y());
                                                                }
                                                            }
                                                        });
                                                    }
                                                    MyLineText myLineText7 = mainListView22.O;
                                                    if (myLineText7 != null) {
                                                        if (i5 == 37) {
                                                            myLineText7.setVisibility(8);
                                                        } else {
                                                            myLineText7.setVisibility(0);
                                                        }
                                                        mainListView22.O.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.16
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view3) {
                                                                MainListView2 mainListView23 = MainListView2.this;
                                                                MainActivity mainActivity2 = mainListView23.b;
                                                                MainListAdapter2 mainListAdapter24 = mainListView23.T;
                                                                if (mainListAdapter24 != null && mainListView23.P == null && mainListView23.Q == null) {
                                                                    if (mainListAdapter24.i > 100) {
                                                                        MainUtil.e8(mainActivity2, R.string.share_limit);
                                                                        return;
                                                                    }
                                                                    List<MainItem.ChildItem> y = mainListAdapter24.y();
                                                                    if (y != null && !y.isEmpty()) {
                                                                        if (y.size() == 1) {
                                                                            MainItem.ChildItem childItem = (MainItem.ChildItem) y.get(0);
                                                                            if (childItem != null) {
                                                                                mainListView23.B(-1, false, true);
                                                                                if (MainUtil.a8(mainActivity2, childItem.g, childItem.h)) {
                                                                                    mainListView23.J();
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            }
                                                                            return;
                                                                        }
                                                                        StringBuilder sb = new StringBuilder();
                                                                        for (MainItem.ChildItem childItem2 : y) {
                                                                            if (childItem2 != null && !TextUtils.isEmpty(childItem2.g)) {
                                                                                if (!TextUtils.isEmpty(childItem2.h)) {
                                                                                    sb.append(childItem2.h);
                                                                                    sb.append("\n");
                                                                                }
                                                                                sb.append(childItem2.g);
                                                                                sb.append("\n\n");
                                                                            }
                                                                        }
                                                                        mainListView23.B(-1, false, true);
                                                                        if (MainUtil.a8(mainActivity2, sb.toString(), null)) {
                                                                            mainListView23.J();
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        });
                                                    }
                                                    RelativeLayout relativeLayout4 = mainListView22.g;
                                                    if (relativeLayout4 != null) {
                                                        relativeLayout4.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.17
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MainListView2 mainListView23 = MainListView2.this;
                                                                boolean z3 = mainListView23.O0;
                                                                mainListView23.u();
                                                                mainListView23.I(z3);
                                                            }
                                                        });
                                                    }
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.E0) {
                    AppCompatTextView appCompatTextView5 = this.q;
                    if (appCompatTextView5 != null) {
                        appCompatTextView5.setText(this.G0);
                    }
                    FrameLayout frameLayout2 = this.z0;
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(0);
                    }
                    z2 = false;
                }
                if (z2) {
                    LinearLayout linearLayout3 = this.r;
                    if (linearLayout3 != null) {
                        MainUtil.h8(context, linearLayout3, R.anim.ic_scale_in, false);
                    }
                    MyButtonImage myButtonImage4 = this.v;
                    if (myButtonImage4 != null) {
                        MainUtil.h8(context, myButtonImage4, R.anim.ic_rotate_in, false);
                    }
                    AppCompatTextView appCompatTextView6 = this.w;
                    if (appCompatTextView6 != null) {
                        MainUtil.h8(context, appCompatTextView6, R.anim.ic_scale_out, true);
                    }
                    MyButtonCheck myButtonCheck4 = this.x;
                    if (myButtonCheck4 != null) {
                        MainUtil.h8(context, myButtonCheck4, R.anim.ic_rotate_out, true);
                    }
                } else {
                    LinearLayout linearLayout4 = this.r;
                    if (linearLayout4 != null) {
                        linearLayout4.setVisibility(0);
                    }
                    MyButtonImage myButtonImage5 = this.v;
                    if (myButtonImage5 != null) {
                        myButtonImage5.setVisibility(0);
                    }
                    AppCompatTextView appCompatTextView7 = this.w;
                    if (appCompatTextView7 != null) {
                        appCompatTextView7.setVisibility(8);
                    }
                    MyButtonCheck myButtonCheck5 = this.x;
                    if (myButtonCheck5 != null) {
                        myButtonCheck5.setVisibility(8);
                    }
                }
                if (this.H == null && z2) {
                    if (this.I != null && this.Q == null) {
                        ValueAnimator valueAnimator = this.P;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                            this.P = null;
                        }
                        if (this.I.getVisibility() == 0) {
                            int round = Math.round(this.I.getTranslationY());
                            int i3 = MainApp.g1 + MainApp.m1;
                            if (round == i3) {
                                this.I.setVisibility(8);
                                return;
                            }
                            this.S0 = round;
                            this.T0 = false;
                            ValueAnimator ofInt = ValueAnimator.ofInt(round, i3);
                            this.Q = ofInt;
                            ofInt.setDuration(200L);
                            this.Q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.MainListView2.22
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    MainListView2 mainListView2 = MainListView2.this;
                                    if (mainListView2.Q != null && mainListView2.I != null) {
                                        int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                                        if (mainListView2.Q != null && mainListView2.I != null) {
                                            mainListView2.S0 = intValue;
                                            if (!mainListView2.T0) {
                                                mainListView2.T0 = true;
                                                MainApp.N(mainListView2.f16739c, mainListView2.U0);
                                            }
                                        }
                                    }
                                }
                            });
                            this.Q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView2.23
                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                    MainListView2 mainListView2 = MainListView2.this;
                                    if (mainListView2.Q == null) {
                                        return;
                                    }
                                    mainListView2.Q = null;
                                    mainListView2.w();
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    final MainListView2 mainListView2 = MainListView2.this;
                                    if (mainListView2.Q == null) {
                                        return;
                                    }
                                    MainApp.N(mainListView2.f16739c, new Runnable() { // from class: com.mycompany.app.main.MainListView2.25
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainListView2 mainListView22 = MainListView2.this;
                                            if (mainListView22.Q == null) {
                                                return;
                                            }
                                            mainListView22.Q = null;
                                            mainListView22.w();
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
                            this.Q.start();
                            return;
                        }
                        return;
                    }
                    return;
                }
                w();
            }
        }
    }

    public final void C() {
        int i;
        FrameLayout frameLayout = this.z0;
        if (frameLayout == null) {
            return;
        }
        if (MainApp.K1) {
            frameLayout.setBackgroundColor(-16777216);
            this.A0.setTextColor(-328966);
            this.B0.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.C0.setImageResource(R.drawable.outline_cancel_dark_18);
            this.B0.setBgPreColor(-12632257);
            this.C0.setBgPreColor(-12632257);
        } else {
            frameLayout.setBackgroundColor(-460552);
            this.A0.setTextColor(-16777216);
            this.B0.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.C0.setImageResource(R.drawable.outline_cancel_black_18);
            this.B0.setBgPreColor(-2039584);
            this.C0.setBgPreColor(-2039584);
        }
        MyRoundView myRoundView = this.D0;
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -1;
        }
        myRoundView.setBackColor(i);
    }

    public final void D(int i, int i2, boolean z, boolean z2) {
        Context context = this.f16739c;
        if (context == null) {
            return;
        }
        FragmentTabPath fragmentTabPath = this.m;
        int i3 = this.i;
        if (fragmentTabPath != null) {
            if (this.f16738a == 0) {
                this.f16738a = (int) MainUtil.G(context, 32.0f);
            }
            i3 += this.f16738a;
        }
        E(i, z, z2, i3, i2);
    }

    public final void E(final int i, final boolean z, final boolean z2, final int i2, final int i3) {
        MyRecyclerView myRecyclerView = this.y;
        if (myRecyclerView != null && this.T != null && i >= 0) {
            if (i == 0) {
                myRecyclerView.i0(0);
                this.y.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.41
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListAdapter2 mainListAdapter2;
                        boolean z3 = z2;
                        MainListView2 mainListView2 = MainListView2.this;
                        if (z3) {
                            MainListAdapter2 mainListAdapter22 = mainListView2.T;
                            if (mainListAdapter22 != null) {
                                mainListAdapter22.J();
                                return;
                            }
                            return;
                        }
                        if (z && (mainListAdapter2 = mainListView2.T) != null) {
                            mainListAdapter2.K(i3);
                        }
                    }
                });
            } else {
                myRecyclerView.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView2.42
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListView2 mainListView2 = MainListView2.this;
                        MyManagerLinear myManagerLinear = mainListView2.z;
                        if (myManagerLinear != null && mainListView2.y != null) {
                            int U0 = myManagerLinear.U0() + 2;
                            int i4 = i;
                            if (i4 <= U0 || i4 >= mainListView2.z.V0()) {
                                mainListView2.z.k1(i4, i2);
                            }
                            mainListView2.y.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.42.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainListAdapter2 mainListAdapter2;
                                    AnonymousClass42 anonymousClass42 = AnonymousClass42.this;
                                    MainListView2 mainListView22 = MainListView2.this;
                                    if (z2) {
                                        MainListAdapter2 mainListAdapter22 = mainListView22.T;
                                        if (mainListAdapter22 != null) {
                                            mainListAdapter22.J();
                                            return;
                                        }
                                        return;
                                    }
                                    if (z && (mainListAdapter2 = mainListView22.T) != null) {
                                        mainListAdapter2.K(i3);
                                    }
                                }
                            });
                        }
                    }
                }, 200L);
            }
        }
    }

    public final void F() {
        int i;
        MyRecyclerView myRecyclerView = this.y;
        if (myRecyclerView != null) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            myRecyclerView.setBackgroundColor(i);
        }
        boolean z = MainApp.K1;
        boolean z2 = this.f;
        if (z) {
            AppCompatTextView appCompatTextView = this.q;
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(-328966);
            }
            AppCompatTextView appCompatTextView2 = this.w;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextColor(-328966);
            }
            AppCompatTextView appCompatTextView3 = this.G;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTextColor(-328966);
            }
            MyButtonImage myButtonImage = this.p;
            if (myButtonImage != null) {
                myButtonImage.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.p.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage2 = this.s;
            if (myButtonImage2 != null) {
                myButtonImage2.setImageResource(R.drawable.outline_home_dark_20);
                this.s.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage3 = this.t;
            if (myButtonImage3 != null) {
                if (z2) {
                    myButtonImage3.setImageResource(R.drawable.outline_create_new_folder_dark_20);
                } else {
                    myButtonImage3.setImageResource(R.drawable.outline_add_dark_20);
                }
                this.t.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage4 = this.u;
            if (myButtonImage4 != null) {
                myButtonImage4.setImageResource(R.drawable.outline_search_dark_20);
                this.u.setBgPreColor(-12632257);
            }
            MyButtonImage myButtonImage5 = this.v;
            if (myButtonImage5 != null) {
                myButtonImage5.setImageResource(R.drawable.outline_more_vert_dark_20);
                this.v.setBgPreColor(-12632257);
            }
            MyButtonCheck myButtonCheck = this.x;
            if (myButtonCheck != null) {
                myButtonCheck.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                this.x.setBgPreColor(-12632257);
                return;
            }
            return;
        }
        AppCompatTextView appCompatTextView4 = this.q;
        if (appCompatTextView4 != null) {
            appCompatTextView4.setTextColor(-16777216);
        }
        AppCompatTextView appCompatTextView5 = this.w;
        if (appCompatTextView5 != null) {
            appCompatTextView5.setTextColor(-16777216);
        }
        AppCompatTextView appCompatTextView6 = this.G;
        if (appCompatTextView6 != null) {
            appCompatTextView6.setTextColor(-16777216);
        }
        MyButtonImage myButtonImage6 = this.p;
        if (myButtonImage6 != null) {
            myButtonImage6.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.p.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage7 = this.s;
        if (myButtonImage7 != null) {
            myButtonImage7.setImageResource(R.drawable.outline_home_black_20);
            this.s.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage8 = this.t;
        if (myButtonImage8 != null) {
            if (z2) {
                myButtonImage8.setImageResource(R.drawable.outline_create_new_folder_black_20);
            } else {
                myButtonImage8.setImageResource(R.drawable.outline_add_black_20);
            }
            this.t.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage9 = this.u;
        if (myButtonImage9 != null) {
            myButtonImage9.setImageResource(R.drawable.outline_search_black_20);
            this.u.setBgPreColor(553648128);
        }
        MyButtonImage myButtonImage10 = this.v;
        if (myButtonImage10 != null) {
            myButtonImage10.setImageResource(R.drawable.outline_more_vert_black_20);
            this.v.setBgPreColor(553648128);
        }
        MyButtonCheck myButtonCheck2 = this.x;
        if (myButtonCheck2 != null) {
            myButtonCheck2.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            this.x.setBgPreColor(553648128);
        }
    }

    public final void G(String str) {
        MainListAdapter2 mainListAdapter2;
        MyButtonImage myButtonImage = this.s;
        if (myButtonImage == null) {
            return;
        }
        if (!this.f && (mainListAdapter2 = this.T) != null && mainListAdapter2.m) {
            myButtonImage.setVisibility(8);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.s.setVisibility(8);
        } else if (str.equals("/")) {
            this.s.setVisibility(8);
        } else {
            this.s.setVisibility(0);
        }
    }

    public final void H(long j, boolean z) {
        if (z) {
            MyCoverView myCoverView = this.R;
            if (myCoverView != null) {
                myCoverView.setActivated(false);
                this.R.n(true, 1.0f, j);
            }
            MyRecyclerView myRecyclerView = this.y;
            if (myRecyclerView != null) {
                myRecyclerView.setEnabled(false);
                return;
            }
            return;
        }
        MyCoverView myCoverView2 = this.R;
        if (myCoverView2 != null) {
            myCoverView2.setActivated(false);
            this.R.f(false);
        }
        MyRecyclerView myRecyclerView2 = this.y;
        if (myRecyclerView2 != null) {
            myRecyclerView2.setEnabled(true);
        }
    }

    public final void I(boolean z) {
        int i;
        if (this.H == null && z) {
            if (this.I != null && this.P == null) {
                ValueAnimator valueAnimator = this.Q;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.Q = null;
                }
                if (this.I.getVisibility() == 0) {
                    i = Math.round(this.I.getTranslationY());
                    if (i == 0) {
                        return;
                    }
                } else {
                    i = MainApp.g1 + MainApp.m1;
                }
                this.P0 = i;
                this.Q0 = false;
                ValueAnimator ofInt = ValueAnimator.ofInt(i, 0);
                this.P = ofInt;
                ofInt.setDuration(200L);
                this.P.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.MainListView2.18
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        MainListView2 mainListView2 = MainListView2.this;
                        if (mainListView2.P != null && mainListView2.I != null) {
                            int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                            if (mainListView2.P != null && mainListView2.I != null) {
                                mainListView2.P0 = intValue;
                                if (!mainListView2.Q0) {
                                    mainListView2.Q0 = true;
                                    MainApp.N(mainListView2.f16739c, mainListView2.R0);
                                }
                            }
                        }
                    }
                });
                this.P.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListView2.19
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MainListView2 mainListView2 = MainListView2.this;
                        if (mainListView2.P == null) {
                            return;
                        }
                        mainListView2.P = null;
                        mainListView2.w();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MainListView2 mainListView2 = MainListView2.this;
                        if (mainListView2.P == null) {
                            return;
                        }
                        MainApp.N(mainListView2.f16739c, new Runnable() { // from class: com.mycompany.app.main.MainListView2.21
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListView2 mainListView22 = MainListView2.this;
                                if (mainListView22.P == null) {
                                    return;
                                }
                                mainListView22.P = null;
                                mainListView22.w();
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
                this.P.start();
                return;
            }
            return;
        }
        w();
    }

    public final void J() {
        MyCoverView myCoverView = this.R;
        if (myCoverView == null) {
            return;
        }
        myCoverView.setActivated(true);
        this.R.l();
        this.R.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainListView2.37
            @Override // java.lang.Runnable
            public final void run() {
                MainListView2 mainListView2 = MainListView2.this;
                MyCoverView myCoverView2 = mainListView2.R;
                if (myCoverView2 != null && myCoverView2.isActivated()) {
                    mainListView2.R.setActivated(false);
                    mainListView2.R.f(false);
                }
            }
        }, 400L);
    }

    public final void K(String str, ArrayList arrayList, List list) {
        boolean z;
        if (this.S == null) {
            return;
        }
        G(str);
        if (list != null && !list.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        this.b0 = z;
        this.S.m(z, str, arrayList, list);
    }

    public final void L(ArrayList arrayList, String str) {
        if (this.S == null) {
            return;
        }
        G(str);
        this.S.m(false, str, arrayList, null);
    }

    public final void e(WebCastView webCastView, MediaRouteButton mediaRouteButton, View view) {
        if (PrefMain.s && !PrefSync.j) {
            if (webCastView != null && mediaRouteButton != null && view != null && this.K0 == null && this.H0 != null && this.I0 != null) {
                this.K0 = webCastView;
                this.L0 = mediaRouteButton;
                this.N0 = view;
                try {
                    MainUtil.W6(webCastView);
                    this.K0.setMovable(false);
                    FrameLayout frameLayout = this.H0;
                    this.J0 = frameLayout;
                    frameLayout.addView(this.K0, MainApp.g1, -1);
                    this.J0.setVisibility(0);
                    MainUtil.W6(this.N0);
                    FrameLayout frameLayout2 = this.I0;
                    this.M0 = frameLayout2;
                    frameLayout2.addView(this.N0, -1, -2);
                    this.M0.setVisibility(0);
                    x();
                    MediaRouteButton mediaRouteButton2 = this.L0;
                    if (mediaRouteButton2 != null) {
                        try {
                            CastButtonFactory.a(this.f16739c, mediaRouteButton2);
                        } catch (Exception unused) {
                        }
                        this.L0.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.36
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i;
                                MainListView2 mainListView2 = MainListView2.this;
                                Context context = mainListView2.f16739c;
                                MediaRouteButton mediaRouteButton3 = mainListView2.L0;
                                if (MainApp.K1) {
                                    i = -328966;
                                } else {
                                    i = -16777216;
                                }
                                MainUtil.h7(i, context, mediaRouteButton3);
                            }
                        });
                    }
                    DialogSetSort2 dialogSetSort2 = this.i0;
                    if (dialogSetSort2 != null) {
                        dialogSetSort2.dismiss();
                        this.i0 = null;
                    }
                    g();
                    h();
                    f();
                    DialogEditMemo dialogEditMemo = this.q0;
                    if (dialogEditMemo != null) {
                        dialogEditMemo.dismiss();
                        this.q0 = null;
                    }
                    DialogSetDown dialogSetDown = this.r0;
                    if (dialogSetDown != null) {
                        dialogSetDown.dismiss();
                        this.r0 = null;
                    }
                    this.Y0 = null;
                    DialogInfo dialogInfo = this.s0;
                    if (dialogInfo != null) {
                        dialogInfo.dismiss();
                        this.s0 = null;
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    r();
                    return;
                }
            }
            return;
        }
        r();
    }

    public final void f() {
        this.p0 = false;
        DialogDeleteBook dialogDeleteBook = this.o0;
        if (dialogDeleteBook != null) {
            dialogDeleteBook.dismiss();
            this.o0 = null;
        }
    }

    public final void g() {
        DialogWebBookList dialogWebBookList = this.k0;
        if (dialogWebBookList != null) {
            dialogWebBookList.dismiss();
            this.k0 = null;
        }
    }

    public final void h() {
        MainListAdapter2 mainListAdapter2;
        if (!this.n0 && this.m0 && (mainListAdapter2 = this.T) != null) {
            mainListAdapter2.J();
        }
        this.m0 = false;
        this.n0 = false;
        DialogWebBookMove dialogWebBookMove = this.l0;
        if (dialogWebBookMove != null) {
            dialogWebBookMove.dismiss();
            this.l0 = null;
        }
    }

    public final void i() {
        MyPopupMenu myPopupMenu = this.d0;
        if (myPopupMenu != null) {
            MyDialogNormal myDialogNormal = this.y0;
            if (myDialogNormal != null) {
                myDialogNormal.u = null;
            } else {
                MainActivity mainActivity = this.b;
                if (mainActivity != null) {
                    mainActivity.Z0 = null;
                }
            }
            myPopupMenu.a();
            this.d0 = null;
        }
    }

    public final void j() {
        MyPopupMenu myPopupMenu = this.c0;
        if (myPopupMenu != null) {
            MyDialogNormal myDialogNormal = this.y0;
            if (myDialogNormal != null) {
                myDialogNormal.u = null;
            } else {
                MainActivity mainActivity = this.b;
                if (mainActivity != null) {
                    mainActivity.Z0 = null;
                }
            }
            myPopupMenu.a();
            this.c0 = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15, types: [android.view.View$OnClickListener, java.lang.Object] */
    public final void k() {
        int i;
        MyRecyclerView myRecyclerView = this.y;
        int i2 = this.e;
        if (myRecyclerView != null) {
            F();
            MyHeaderView myHeaderView = this.o;
            if (myHeaderView != 0) {
                myHeaderView.setOnClickListener(new Object());
            }
            MyButtonImage myButtonImage = this.p;
            if (myButtonImage != null) {
                myButtonImage.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListAdapter2 mainListAdapter2;
                        MainListView2 mainListView2 = MainListView2.this;
                        if (!mainListView2.m()) {
                            if (mainListView2.E0 && (mainListAdapter2 = mainListView2.T) != null && mainListAdapter2.m) {
                                mainListView2.t();
                                return;
                            }
                            MainListListener mainListListener = mainListView2.l;
                            if (mainListListener != null) {
                                mainListListener.g();
                            }
                        }
                    }
                });
            }
            AppCompatTextView appCompatTextView = this.q;
            if (appCompatTextView != null && (i = this.h) > 0) {
                appCompatTextView.setText(i);
            }
            MyButtonImage myButtonImage2 = this.s;
            if (myButtonImage2 != null) {
                myButtonImage2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListListener mainListListener = MainListView2.this.l;
                        if (mainListListener != null) {
                            mainListListener.l();
                        }
                    }
                });
            }
            MyButtonImage myButtonImage3 = this.t;
            if (myButtonImage3 != null) {
                myButtonImage3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainListListener mainListListener = MainListView2.this.l;
                        if (mainListListener != null) {
                            mainListListener.m(view);
                        }
                    }
                });
            }
            MyButtonImage myButtonImage4 = this.u;
            if (myButtonImage4 != null) {
                myButtonImage4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        final MainListView2 mainListView2 = MainListView2.this;
                        if (!mainListView2.E0) {
                            mainListView2.E0 = true;
                            FragmentTabPath fragmentTabPath = mainListView2.m;
                            if (fragmentTabPath != null) {
                                fragmentTabPath.setVisibility(4);
                            }
                            MainListAdapter2 mainListAdapter2 = mainListView2.T;
                            if (mainListAdapter2 != null) {
                                mainListAdapter2.n = true;
                            }
                            if (mainListView2.z0 == null && mainListView2.o != null && !mainListView2.V0) {
                                mainListView2.V0 = true;
                                RelativeLayout relativeLayout = mainListView2.g;
                                if (relativeLayout != null) {
                                    relativeLayout.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.26
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainListView2.a(MainListView2.this);
                                        }
                                    });
                                }
                            }
                        }
                    }
                });
            }
            MyButtonImage myButtonImage5 = this.v;
            if (myButtonImage5 != null) {
                if (i2 != 37 && !this.f && PrefAlbum.q) {
                    myButtonImage5.setNoti(true);
                }
                this.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        final MainListView2 mainListView2 = MainListView2.this;
                        boolean z = mainListView2.f;
                        int i3 = mainListView2.e;
                        if (i3 != 37 && !z && PrefAlbum.q) {
                            PrefAlbum.q = false;
                            PrefSet.d(0, mainListView2.f16739c, "mNotiBook", false);
                            MyButtonImage myButtonImage6 = mainListView2.v;
                            if (myButtonImage6 != null) {
                                myButtonImage6.setNoti(false);
                            }
                        }
                        if (mainListView2.c0 == null) {
                            mainListView2.j();
                            if (view != null) {
                                ArrayList arrayList = new ArrayList();
                                if (i3 == 17) {
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.sort));
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.show_detail, 0, PrefUtil.a(i3)));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.show_single, 0, PrefUtil.c(i3)));
                                if (i3 != 37 && !z) {
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.import_html));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(4, R.string.export_html));
                                    if (PrefSync.k) {
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(5, R.string.import_normal));
                                    }
                                }
                                MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView2.b, mainListView2.g, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView2.45
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        MainListView2.this.j();
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i4) {
                                        MainListListener mainListListener;
                                        final MainListView2 mainListView22 = MainListView2.this;
                                        int i5 = mainListView22.e;
                                        Context context = mainListView22.f16739c;
                                        if (i4 != 0) {
                                            if (i4 != 1) {
                                                if (i4 != 2) {
                                                    if (i4 != 3) {
                                                        if (i4 != 4) {
                                                            if (i4 == 5 && (mainListListener = mainListView22.l) != null) {
                                                                mainListListener.n(false);
                                                                return true;
                                                            }
                                                        } else {
                                                            MainListListener mainListListener2 = mainListView22.l;
                                                            if (mainListListener2 != null) {
                                                                mainListListener2.j();
                                                                return true;
                                                            }
                                                        }
                                                    } else {
                                                        MainListListener mainListListener3 = mainListView22.l;
                                                        if (mainListListener3 != null) {
                                                            mainListListener3.n(true);
                                                            return true;
                                                        }
                                                    }
                                                } else {
                                                    if (mainListView22.c0 != null) {
                                                        PrefUtil.h(context, i5, !r3.d(i4));
                                                        MainListAdapter2 mainListAdapter2 = mainListView22.T;
                                                        if (mainListAdapter2 != null) {
                                                            mainListAdapter2.g();
                                                            return true;
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (mainListView22.c0 != null) {
                                                    PrefUtil.g(context, i5, !r3.d(i4));
                                                    MainListAdapter2 mainListAdapter22 = mainListView22.T;
                                                    if (mainListAdapter22 != null) {
                                                        mainListAdapter22.g();
                                                        return true;
                                                    }
                                                }
                                            }
                                        } else {
                                            MainActivity mainActivity = mainListView22.b;
                                            if (mainActivity != null && !mainListView22.m()) {
                                                DialogSetSort2 dialogSetSort2 = mainListView22.i0;
                                                if (dialogSetSort2 != null) {
                                                    dialogSetSort2.dismiss();
                                                    mainListView22.i0 = null;
                                                }
                                                DialogSetSort2 dialogSetSort22 = new DialogSetSort2(mainActivity, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.MainListView2.48
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        ListTask listTask;
                                                        MainListView2 mainListView23 = MainListView2.this;
                                                        if (mainListView23.y != null && (listTask = mainListView23.S) != null) {
                                                            listTask.l(null, true, false);
                                                        }
                                                    }
                                                });
                                                mainListView22.i0 = dialogSetSort22;
                                                dialogSetSort22.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.49
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        MainListView2 mainListView23 = MainListView2.this;
                                                        DialogSetSort2 dialogSetSort23 = mainListView23.i0;
                                                        if (dialogSetSort23 != null) {
                                                            dialogSetSort23.dismiss();
                                                            mainListView23.i0 = null;
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                        }
                                        return true;
                                    }
                                });
                                mainListView2.c0 = myPopupMenu;
                                MyDialogNormal myDialogNormal = mainListView2.y0;
                                if (myDialogNormal != null) {
                                    myDialogNormal.u = myPopupMenu;
                                    return;
                                }
                                MainActivity mainActivity = mainListView2.b;
                                if (mainActivity != null) {
                                    mainActivity.Z0 = myPopupMenu;
                                }
                            }
                        }
                    }
                });
            }
            MyButtonCheck myButtonCheck = this.x;
            if (myButtonCheck != null) {
                myButtonCheck.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListView2.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z;
                        MainListAdapter2 mainListAdapter2;
                        MainListView2 mainListView2 = MainListView2.this;
                        if (mainListView2.l == null || mainListView2.m()) {
                            z = true;
                        } else {
                            MyCoverView myCoverView = mainListView2.R;
                            if (myCoverView == null) {
                                z = false;
                            } else {
                                z = myCoverView.h();
                            }
                        }
                        if (!z && (mainListAdapter2 = mainListView2.T) != null && mainListAdapter2.m) {
                            mainListView2.T.H(!mainListAdapter2.D());
                            mainListView2.y();
                            mainListView2.A();
                        }
                    }
                });
            }
            this.y.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.main.MainListView2.9
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void b(RecyclerView recyclerView, int i3, int i4) {
                    MainListView2 mainListView2 = MainListView2.this;
                    MyRecyclerView myRecyclerView2 = mainListView2.y;
                    if (myRecyclerView2 != null) {
                        if (myRecyclerView2.computeVerticalScrollOffset() > 0) {
                            mainListView2.y.w0();
                        } else {
                            mainListView2.y.r0();
                        }
                        mainListView2.U = false;
                        Runnable runnable = mainListView2.X0;
                        MyScrollBar myScrollBar = mainListView2.E;
                        if (myScrollBar != null && mainListView2.z != null && !mainListView2.W0) {
                            mainListView2.W0 = true;
                            myScrollBar.removeCallbacks(runnable);
                            mainListView2.E.post(runnable);
                        }
                    }
                }
            });
            MyScrollBar myScrollBar = this.E;
            if (myScrollBar != null) {
                myScrollBar.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.main.MainListView2.10
                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void c(int i3) {
                        MyManagerLinear myManagerLinear = MainListView2.this.z;
                        if (myManagerLinear == null) {
                            return;
                        }
                        myManagerLinear.k1(i3, 0);
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int d() {
                        MyRecyclerView myRecyclerView2 = MainListView2.this.y;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollOffset();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void e() {
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int f() {
                        MyRecyclerView myRecyclerView2 = MainListView2.this.y;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollRange();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int g() {
                        MyRecyclerView myRecyclerView2 = MainListView2.this.y;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollExtent();
                    }
                });
            }
            FragmentTabPath fragmentTabPath = this.m;
            if (fragmentTabPath != null) {
                fragmentTabPath.setListener(new FragmentTabPath.FragmentTabListener() { // from class: com.mycompany.app.main.MainListView2.11
                    @Override // com.mycompany.app.fragment.FragmentTabPath.FragmentTabListener
                    public final void a(String str) {
                        MainListListener mainListListener = MainListView2.this.l;
                        if (mainListListener != null) {
                            mainListListener.t(str);
                        }
                    }
                });
            }
        }
        this.S = ListTask.c(this.f16739c, i2, new ListTask.ListTaskListener() { // from class: com.mycompany.app.main.MainListView2.1
            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void a() {
                MainListView2.this.H(0L, false);
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void b() {
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void c() {
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final MainListAdapter d() {
                return null;
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final MainListAdapter2 e() {
                return MainListView2.this.T;
            }

            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void f() {
                MainListListener mainListListener = MainListView2.this.l;
                if (mainListListener != null) {
                    mainListListener.getClass();
                }
            }

            /* JADX WARN: Type inference failed for: r2v16, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback, com.mycompany.app.quick.ListDragHelper] */
            /* JADX WARN: Type inference failed for: r4v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
            /* JADX WARN: Type inference failed for: r4v12, types: [com.mycompany.app.main.MainListAdapter2, androidx.recyclerview.widget.RecyclerView$Adapter] */
            @Override // com.mycompany.app.list.ListTask.ListTaskListener
            public final void g(ListTask.ListTaskConfig listTaskConfig) {
                boolean z;
                int i3;
                int i4;
                int size;
                String str;
                int i5;
                boolean z2;
                MainListAdapter2 mainListAdapter2;
                int i6;
                final MainListView2 mainListView2 = MainListView2.this;
                Context context = mainListView2.f16739c;
                if (mainListView2.y != null) {
                    FragmentTabPath fragmentTabPath2 = mainListView2.m;
                    if (fragmentTabPath2 != null) {
                        fragmentTabPath2.b(context, listTaskConfig.q);
                    }
                    mainListView2.V = listTaskConfig.i;
                    mainListView2.W = listTaskConfig.j;
                    MainItem.ChildItem childItem = listTaskConfig.n;
                    if (childItem != null) {
                        mainListView2.X = childItem.J;
                    } else {
                        mainListView2.X = -1;
                    }
                    int i7 = mainListView2.e;
                    if (i7 == 17) {
                        boolean z3 = PrefList.F;
                        boolean z4 = PrefList.G;
                        int i8 = PrefList.H;
                        boolean z5 = PrefList.I;
                        if (mainListView2.e0 == z3 && mainListView2.f0 == z4 && mainListView2.g0 == i8 && mainListView2.h0 == z5) {
                            z = false;
                        } else {
                            z = true;
                        }
                        mainListView2.e0 = z3;
                        mainListView2.f0 = z4;
                        mainListView2.g0 = i8;
                        mainListView2.h0 = z5;
                    } else {
                        z = false;
                    }
                    ListTask listTask = mainListView2.S;
                    ListPos listPos = null;
                    if (listTask != null && mainListView2.y != null) {
                        listTaskConfig.f16238a = i7;
                        listTaskConfig.b = true;
                        listTaskConfig.o = listTask.d();
                        if (!z && (mainListAdapter2 = mainListView2.T) != null) {
                            listTaskConfig.p = mainListAdapter2.m;
                            mainListAdapter2.u = false;
                            MainListLoader mainListLoader = mainListAdapter2.p;
                            if (mainListLoader != null) {
                                mainListLoader.f16599c = null;
                            }
                            mainListAdapter2.g = listTaskConfig.d;
                            mainListAdapter2.h = listTaskConfig.g;
                            mainListAdapter2.i = listTaskConfig.h;
                            mainListAdapter2.j = listTaskConfig.i;
                            mainListAdapter2.k = listTaskConfig.j;
                            MainItem.ChildItem childItem2 = listTaskConfig.n;
                            if (childItem2 != null) {
                                i6 = childItem2.J;
                            } else {
                                i6 = -1;
                            }
                            mainListAdapter2.l = i6;
                            mainListAdapter2.o = listTaskConfig.u;
                            mainListAdapter2.g();
                        } else {
                            mainListView2.z = new LinearLayoutManager(1);
                            MainActivity mainActivity = mainListView2.b;
                            MyRecyclerView myRecyclerView2 = mainListView2.y;
                            final ?? adapter = new RecyclerView.Adapter();
                            adapter.d = mainActivity;
                            adapter.e = listTaskConfig.f16238a;
                            adapter.f = myRecyclerView2;
                            adapter.g = listTaskConfig.d;
                            adapter.h = listTaskConfig.g;
                            adapter.i = listTaskConfig.h;
                            adapter.j = listTaskConfig.i;
                            adapter.k = listTaskConfig.j;
                            MainItem.ChildItem childItem3 = listTaskConfig.n;
                            if (childItem3 != null) {
                                i5 = childItem3.J;
                            } else {
                                i5 = -1;
                            }
                            adapter.l = i5;
                            adapter.m = listTaskConfig.p;
                            adapter.o = listTaskConfig.u;
                            adapter.s = MainUtil.C0("yyyy.MM.dd");
                            List list = adapter.g;
                            if (list != null && !list.isEmpty()) {
                                adapter.u = true;
                                MainApp.J(mainActivity, new Runnable() { // from class: com.mycompany.app.main.MainListAdapter2.10
                                    public AnonymousClass10() {
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListAdapter2 mainListAdapter22 = MainListAdapter2.this;
                                        try {
                                            List list2 = mainListAdapter22.g;
                                            if (list2 != null && !list2.isEmpty()) {
                                                for (MainItem.ChildItem childItem4 : mainListAdapter22.g) {
                                                    if (mainListAdapter22.u) {
                                                        if (childItem4 != null && childItem4.b == 0 && TextUtils.isEmpty(childItem4.F)) {
                                                            if (mainListAdapter22.u) {
                                                                long j = childItem4.A;
                                                                if (j != -1) {
                                                                    childItem4.F = MainUtil.y1(j, mainListAdapter22.s, "yyyy.MM.dd");
                                                                }
                                                            } else {
                                                                return;
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
                            adapter.p = new MainListLoader(mainActivity, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.main.MainListAdapter2.1
                                public AnonymousClass1() {
                                }

                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                public final void a(MainItem.ChildItem childItem4, View view) {
                                }

                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                public final void b(MainItem.ChildItem childItem4, View view, Bitmap bitmap) {
                                    Object tag;
                                    MyRoundImage myRoundImage;
                                    if (childItem4 != null && view != null && (tag = view.getTag()) != null && (tag instanceof MainListHolder)) {
                                        MainListHolder mainListHolder = (MainListHolder) tag;
                                        if (mainListHolder.H == childItem4.J && (myRoundImage = mainListHolder.y) != null) {
                                            if (!myRoundImage.isActivated()) {
                                                MyRoundImage myRoundImage2 = mainListHolder.y;
                                                int i9 = childItem4.v;
                                                int i10 = childItem4.w;
                                                String str2 = childItem4.h;
                                                MainListAdapter2 mainListAdapter22 = MainListAdapter2.this;
                                                if (mainListAdapter22.t == null) {
                                                    mainListAdapter22.t = Pattern.compile("\\p{Punct}");
                                                }
                                                myRoundImage2.p(i9, i10, str2, mainListAdapter22.t);
                                                mainListHolder.y.s();
                                            }
                                            if (childItem4.f16551c == 4) {
                                                mainListHolder.z.setBackColor(-460552);
                                            }
                                            mainListHolder.z.r(childItem4.g, true);
                                            mainListHolder.z.setImageBitmap(bitmap);
                                        }
                                    }
                                }
                            });
                            mainListView2.T = adapter;
                            adapter.q = new AnonymousClass38();
                            if (mainListView2.j) {
                                adapter.r = new MainListAdapter.ListMoreListener() { // from class: com.mycompany.app.main.MainListView2.39
                                    @Override // com.mycompany.app.main.MainListAdapter.ListMoreListener
                                    public final void a(View view, int i9) {
                                        boolean z6;
                                        final MainListView2 mainListView22 = MainListView2.this;
                                        int i10 = 0;
                                        if (mainListView22.l == null || mainListView22.m()) {
                                            z6 = true;
                                        } else {
                                            MyCoverView myCoverView = mainListView22.R;
                                            if (myCoverView == null) {
                                                z6 = false;
                                            } else {
                                                z6 = myCoverView.h();
                                            }
                                        }
                                        if (!z6) {
                                            final MainItem.ChildItem z7 = mainListView22.T.z(i9);
                                            int i11 = mainListView22.e;
                                            if (mainListView22.d0 == null && mainListView22.T != null) {
                                                mainListView22.i();
                                                if (z7 != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    if (i11 != 17 || PrefList.F) {
                                                        if (z7.J > mainListView22.V) {
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.move_top));
                                                        }
                                                        int i12 = z7.J;
                                                        List list2 = mainListView22.T.g;
                                                        if (list2 != null) {
                                                            i10 = list2.size();
                                                        }
                                                        if (i12 < (i10 - mainListView22.W) - 1) {
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.move_bot));
                                                        }
                                                    }
                                                    if (i11 == 37) {
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.delete));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(9, R.string.edit));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(12, R.string.details));
                                                    } else if (z7.k) {
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.delete));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(7, R.string.move));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(8, R.string.rename));
                                                    } else {
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.new_url));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.group_url));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(4, R.string.back_url));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(5, R.string.copy_url));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.delete));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(7, R.string.move));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(9, R.string.edit));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(10, R.string.share));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(11, R.string.open_with));
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(12, R.string.details));
                                                    }
                                                    MyPopupMenu myPopupMenu = new MyPopupMenu(mainListView22.b, mainListView22.g, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainListView2.46
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            MainListView2.this.i();
                                                        }

                                                        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0014. Please report as an issue. */
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view2, int i13) {
                                                            boolean z8;
                                                            final MainListView2 mainListView23 = MainListView2.this;
                                                            Context context2 = mainListView23.f16739c;
                                                            int i14 = mainListView23.e;
                                                            MainActivity mainActivity2 = mainListView23.b;
                                                            final boolean z9 = false;
                                                            MainItem.ChildItem childItem4 = z7;
                                                            final boolean z10 = true;
                                                            switch (i13) {
                                                                case 0:
                                                                    final int i15 = childItem4.J;
                                                                    if (mainListView23.T == null) {
                                                                        return true;
                                                                    }
                                                                    mainListView23.H(200L, true);
                                                                    MainApp.J(context2, new Runnable() { // from class: com.mycompany.app.main.MainListView2.47
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            int size2;
                                                                            final int i16;
                                                                            MainListView2 mainListView24 = MainListView2.this;
                                                                            MainListAdapter2 mainListAdapter22 = mainListView24.T;
                                                                            if (mainListAdapter22 != null) {
                                                                                final boolean z11 = false;
                                                                                if (z10) {
                                                                                    i16 = mainListView24.V;
                                                                                } else {
                                                                                    List list3 = mainListAdapter22.g;
                                                                                    if (list3 == null) {
                                                                                        size2 = 0;
                                                                                    } else {
                                                                                        size2 = list3.size();
                                                                                    }
                                                                                    i16 = (size2 - mainListView24.W) - 1;
                                                                                }
                                                                                MainListAdapter2 mainListAdapter23 = mainListView24.T;
                                                                                if (mainListAdapter23.F(i15, i16)) {
                                                                                    mainListAdapter23.L();
                                                                                    z11 = true;
                                                                                }
                                                                                MyCoverView myCoverView2 = mainListView24.R;
                                                                                if (myCoverView2 == null) {
                                                                                    return;
                                                                                }
                                                                                myCoverView2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.47.1
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        MainListView2 mainListView25 = MainListView2.this;
                                                                                        MainListAdapter2 mainListAdapter24 = mainListView25.T;
                                                                                        if (mainListAdapter24 == null) {
                                                                                            return;
                                                                                        }
                                                                                        if (z11) {
                                                                                            mainListAdapter24.g();
                                                                                            MainListAdapter2 mainListAdapter25 = mainListView25.T;
                                                                                            if (mainListAdapter25 != null) {
                                                                                                int i17 = i16;
                                                                                                if (mainListAdapter25.z(i17) == null) {
                                                                                                    mainListView25.X = -1;
                                                                                                    mainListView25.T.I(-1);
                                                                                                } else {
                                                                                                    mainListView25.U = true;
                                                                                                    mainListView25.X = i17;
                                                                                                    mainListView25.T.I(i17);
                                                                                                    mainListView25.D(mainListView25.T.A(i17), i17, true, false);
                                                                                                    mainListView25.U = false;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        mainListView25.H(0L, false);
                                                                                    }
                                                                                });
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                case 1:
                                                                    final int i16 = childItem4.J;
                                                                    if (mainListView23.T == null) {
                                                                        return true;
                                                                    }
                                                                    mainListView23.H(200L, true);
                                                                    MainApp.J(context2, new Runnable() { // from class: com.mycompany.app.main.MainListView2.47
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            int size2;
                                                                            final int i162;
                                                                            MainListView2 mainListView24 = MainListView2.this;
                                                                            MainListAdapter2 mainListAdapter22 = mainListView24.T;
                                                                            if (mainListAdapter22 != null) {
                                                                                final boolean z11 = false;
                                                                                if (z9) {
                                                                                    i162 = mainListView24.V;
                                                                                } else {
                                                                                    List list3 = mainListAdapter22.g;
                                                                                    if (list3 == null) {
                                                                                        size2 = 0;
                                                                                    } else {
                                                                                        size2 = list3.size();
                                                                                    }
                                                                                    i162 = (size2 - mainListView24.W) - 1;
                                                                                }
                                                                                MainListAdapter2 mainListAdapter23 = mainListView24.T;
                                                                                if (mainListAdapter23.F(i16, i162)) {
                                                                                    mainListAdapter23.L();
                                                                                    z11 = true;
                                                                                }
                                                                                MyCoverView myCoverView2 = mainListView24.R;
                                                                                if (myCoverView2 == null) {
                                                                                    return;
                                                                                }
                                                                                myCoverView2.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.47.1
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        MainListView2 mainListView25 = MainListView2.this;
                                                                                        MainListAdapter2 mainListAdapter24 = mainListView25.T;
                                                                                        if (mainListAdapter24 == null) {
                                                                                            return;
                                                                                        }
                                                                                        if (z11) {
                                                                                            mainListAdapter24.g();
                                                                                            MainListAdapter2 mainListAdapter25 = mainListView25.T;
                                                                                            if (mainListAdapter25 != null) {
                                                                                                int i17 = i162;
                                                                                                if (mainListAdapter25.z(i17) == null) {
                                                                                                    mainListView25.X = -1;
                                                                                                    mainListView25.T.I(-1);
                                                                                                } else {
                                                                                                    mainListView25.U = true;
                                                                                                    mainListView25.X = i17;
                                                                                                    mainListView25.T.I(i17);
                                                                                                    mainListView25.D(mainListView25.T.A(i17), i17, true, false);
                                                                                                    mainListView25.U = false;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        mainListView25.H(0L, false);
                                                                                    }
                                                                                });
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                case 2:
                                                                    z8 = true;
                                                                    MainListListener mainListListener = mainListView23.l;
                                                                    if (mainListListener != null) {
                                                                        mainListListener.p(3, childItem4);
                                                                        return true;
                                                                    }
                                                                    return z8;
                                                                case 3:
                                                                    z8 = true;
                                                                    MainListListener mainListListener2 = mainListView23.l;
                                                                    if (mainListListener2 != null) {
                                                                        mainListListener2.p(4, childItem4);
                                                                        return true;
                                                                    }
                                                                    return z8;
                                                                case 4:
                                                                    z8 = true;
                                                                    MainListListener mainListListener3 = mainListView23.l;
                                                                    if (mainListListener3 != null) {
                                                                        mainListListener3.p(5, childItem4);
                                                                        return true;
                                                                    }
                                                                    return z8;
                                                                case 5:
                                                                    MainUtil.s(R.string.copied_clipboard, mainActivity2, "Copied URL", childItem4.g);
                                                                    return true;
                                                                case 6:
                                                                    ArrayList arrayList2 = new ArrayList();
                                                                    arrayList2.add(childItem4);
                                                                    if (i14 == 37) {
                                                                        MainListView2.b(mainListView23, arrayList2);
                                                                        return true;
                                                                    }
                                                                    MainListView2.d(mainListView23, arrayList2, null, 2);
                                                                    return true;
                                                                case 7:
                                                                    ArrayList arrayList3 = new ArrayList();
                                                                    arrayList3.add(childItem4);
                                                                    MainListView2.c(mainListView23, arrayList3);
                                                                    return true;
                                                                case 8:
                                                                    ArrayList arrayList4 = new ArrayList();
                                                                    arrayList4.add(childItem4);
                                                                    MainListView2.d(mainListView23, arrayList4, null, 4);
                                                                    return true;
                                                                case 9:
                                                                    if (i14 == 37) {
                                                                        if (mainActivity2 != null && !mainListView23.m()) {
                                                                            DialogEditMemo dialogEditMemo = mainListView23.q0;
                                                                            if (dialogEditMemo != null) {
                                                                                dialogEditMemo.dismiss();
                                                                                mainListView23.q0 = null;
                                                                            }
                                                                            DialogEditMemo dialogEditMemo2 = new DialogEditMemo(mainListView23.b, mainListView23.e, childItem4.y, null, childItem4.h, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.MainListView2.58
                                                                                @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
                                                                                public final void a(long j, String str2, String str3) {
                                                                                    MainListView2 mainListView24 = MainListView2.this;
                                                                                    if (mainListView24.E0) {
                                                                                        mainListView24.q();
                                                                                    }
                                                                                    if (mainListView24.S != null) {
                                                                                        mainListView24.U = true;
                                                                                        mainListView24.b0 = true;
                                                                                        ArrayList arrayList5 = new ArrayList();
                                                                                        arrayList5.add(Long.valueOf(j));
                                                                                        mainListView24.S.m(true, null, null, arrayList5);
                                                                                    }
                                                                                }
                                                                            });
                                                                            mainListView23.q0 = dialogEditMemo2;
                                                                            dialogEditMemo2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.59
                                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                                    MainListView2 mainListView24 = MainListView2.this;
                                                                                    DialogEditMemo dialogEditMemo3 = mainListView24.q0;
                                                                                    if (dialogEditMemo3 != null) {
                                                                                        dialogEditMemo3.dismiss();
                                                                                        mainListView24.q0 = null;
                                                                                    }
                                                                                }
                                                                            });
                                                                            return true;
                                                                        }
                                                                    } else if (mainActivity2 != null && !mainListView23.m()) {
                                                                        DialogWebBookEdit dialogWebBookEdit = mainListView23.j0;
                                                                        if (dialogWebBookEdit != null) {
                                                                            dialogWebBookEdit.dismiss();
                                                                            mainListView23.j0 = null;
                                                                        }
                                                                        mainListView23.t0 = null;
                                                                        DialogWebBookEdit dialogWebBookEdit2 = new DialogWebBookEdit(mainListView23.b, childItem4, childItem4.g, childItem4.h, new DialogWebBookEdit.BookEditListener() { // from class: com.mycompany.app.main.MainListView2.50
                                                                            @Override // com.mycompany.app.dialog.DialogWebBookEdit.BookEditListener
                                                                            public final void a(long j, String str2, String str3) {
                                                                                MainListView2 mainListView24 = MainListView2.this;
                                                                                if (mainListView24.E0) {
                                                                                    mainListView24.q();
                                                                                }
                                                                                if (mainListView24.S != null) {
                                                                                    mainListView24.t0 = str2;
                                                                                    mainListView24.G(str2);
                                                                                    mainListView24.U = true;
                                                                                    mainListView24.b0 = true;
                                                                                    ArrayList arrayList5 = new ArrayList();
                                                                                    arrayList5.add(Long.valueOf(j));
                                                                                    mainListView24.S.m(true, str2, null, arrayList5);
                                                                                }
                                                                            }

                                                                            @Override // com.mycompany.app.dialog.DialogWebBookEdit.BookEditListener
                                                                            public final Bitmap getIcon() {
                                                                                return null;
                                                                            }
                                                                        });
                                                                        mainListView23.j0 = dialogWebBookEdit2;
                                                                        dialogWebBookEdit2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.51
                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                MainListView2 mainListView24 = MainListView2.this;
                                                                                DialogWebBookEdit dialogWebBookEdit3 = mainListView24.j0;
                                                                                if (dialogWebBookEdit3 != null) {
                                                                                    dialogWebBookEdit3.dismiss();
                                                                                    mainListView24.j0 = null;
                                                                                }
                                                                            }
                                                                        });
                                                                        return true;
                                                                    }
                                                                    return true;
                                                                case 10:
                                                                    if (MainUtil.a8(mainActivity2, childItem4.g, childItem4.h)) {
                                                                        mainListView23.J();
                                                                        return true;
                                                                    }
                                                                    return true;
                                                                case 11:
                                                                    String str2 = childItem4.g;
                                                                    if (TextUtils.isEmpty(str2)) {
                                                                        MainUtil.e8(mainActivity2, R.string.empty);
                                                                        return true;
                                                                    }
                                                                    if ("file:///android_asset/shortcut.html".equals(str2)) {
                                                                        MainUtil.e8(mainActivity2, R.string.not_supported_page);
                                                                        return true;
                                                                    }
                                                                    if (!MainUtil.I4(mainActivity2, str2) && mainActivity2 != null && !mainListView23.m()) {
                                                                        DialogSetDown dialogSetDown = mainListView23.r0;
                                                                        if (dialogSetDown != null) {
                                                                            dialogSetDown.dismiss();
                                                                            mainListView23.r0 = null;
                                                                        }
                                                                        mainListView23.Y0 = str2;
                                                                        DialogSetDown dialogSetDown2 = new DialogSetDown(mainListView23.b, str2, null, mainActivity2.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.main.MainListView2.60
                                                                            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                                                                            public final void a(String str3, String str4, String str5) {
                                                                                MainListView2 mainListView24 = MainListView2.this;
                                                                                String str6 = mainListView24.Y0;
                                                                                mainListView24.Y0 = null;
                                                                                MainUtil.G4(mainListView24.b, str4, str5, str6, null, null, null);
                                                                            }
                                                                        });
                                                                        mainListView23.r0 = dialogSetDown2;
                                                                        dialogSetDown2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.61
                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                MainListView2 mainListView24 = MainListView2.this;
                                                                                DialogSetDown dialogSetDown3 = mainListView24.r0;
                                                                                if (dialogSetDown3 != null) {
                                                                                    dialogSetDown3.dismiss();
                                                                                    mainListView24.r0 = null;
                                                                                }
                                                                                mainListView24.Y0 = null;
                                                                            }
                                                                        });
                                                                        return true;
                                                                    }
                                                                    return true;
                                                                case 12:
                                                                    if (mainActivity2 != null && !mainListView23.m()) {
                                                                        DialogInfo dialogInfo = mainListView23.s0;
                                                                        if (dialogInfo != null) {
                                                                            dialogInfo.dismiss();
                                                                            mainListView23.s0 = null;
                                                                        }
                                                                        DialogInfo dialogInfo2 = new DialogInfo(mainActivity2, i14, childItem4);
                                                                        mainListView23.s0 = dialogInfo2;
                                                                        dialogInfo2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainListView2.62
                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                MainListView2 mainListView24 = MainListView2.this;
                                                                                DialogInfo dialogInfo3 = mainListView24.s0;
                                                                                if (dialogInfo3 != null) {
                                                                                    dialogInfo3.dismiss();
                                                                                    mainListView24.s0 = null;
                                                                                }
                                                                            }
                                                                        });
                                                                        return true;
                                                                    }
                                                                    return true;
                                                                default:
                                                                    return false;
                                                            }
                                                        }
                                                    });
                                                    mainListView22.d0 = myPopupMenu;
                                                    MyDialogNormal myDialogNormal = mainListView22.y0;
                                                    if (myDialogNormal != null) {
                                                        myDialogNormal.u = myPopupMenu;
                                                        return;
                                                    }
                                                    MainActivity mainActivity2 = mainListView22.b;
                                                    if (mainActivity2 != null) {
                                                        mainActivity2.Z0 = myPopupMenu;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                };
                            }
                            mainListView2.y.setLayoutManager(mainListView2.z);
                            mainListView2.y.setAdapter(mainListView2.T);
                            if (mainListView2.k) {
                                if (i7 == 17) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                AnonymousClass40 anonymousClass40 = new AnonymousClass40();
                                ?? callback = new ItemTouchHelper.Callback();
                                callback.e = z2;
                                callback.f = MainApp.E1;
                                callback.d = anonymousClass40;
                                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(callback);
                                mainListView2.A = itemTouchHelper;
                                itemTouchHelper.i(mainListView2.y);
                            }
                        }
                    }
                    if (mainListView2.T != null) {
                        String b = mainListView2.S.b();
                        if (!TextUtils.isEmpty(b)) {
                            String str2 = mainListView2.Z;
                            mainListView2.Z = a.k(b, "/");
                            HashMap hashMap = mainListView2.Y;
                            if (hashMap != null && !hashMap.isEmpty()) {
                                ListPos listPos2 = (ListPos) mainListView2.Y.get(b);
                                if (listPos2 == null) {
                                    if (mainListView2.X == -1) {
                                        mainListView2.X = mainListView2.T.w(str2);
                                    }
                                } else {
                                    mainListView2.Y.remove(b);
                                    if (TextUtils.isEmpty(listPos2.f16808a)) {
                                        if (mainListView2.X == -1) {
                                            mainListView2.X = mainListView2.T.w(str2);
                                        }
                                    } else {
                                        if (!(listPos2.f16808a + "/").equalsIgnoreCase(str2)) {
                                            if (mainListView2.X == -1) {
                                                mainListView2.X = mainListView2.T.w(str2);
                                            }
                                        } else {
                                            String str3 = listPos2.f16808a;
                                            MainListAdapter2 mainListAdapter22 = mainListView2.T;
                                            int i9 = listPos2.b;
                                            List list2 = mainListAdapter22.g;
                                            if (list2 != null && i9 >= 0 && i9 < list2.size()) {
                                                str = ((MainItem.ChildItem) mainListAdapter22.g.get(i9)).g;
                                            } else {
                                                str = null;
                                            }
                                            if (!str3.equalsIgnoreCase(str)) {
                                                if (mainListView2.X == -1) {
                                                    mainListView2.X = mainListView2.T.w(str2);
                                                }
                                            } else {
                                                listPos = listPos2;
                                            }
                                        }
                                    }
                                }
                            } else if (mainListView2.X == -1) {
                                mainListView2.X = mainListView2.T.w(str2);
                            }
                        }
                    }
                    int i10 = listTaskConfig.m;
                    if (i10 != -1) {
                        mainListView2.D(mainListView2.T.A(i10), listTaskConfig.m, false, mainListView2.b0);
                    } else if (mainListView2.a0 && (i4 = listTaskConfig.k) != -1) {
                        mainListView2.D(i4 + 1, i4, false, false);
                    } else if (mainListView2.U && (i3 = mainListView2.X) != -1) {
                        mainListView2.D(mainListView2.T.A(i3), mainListView2.X, true, false);
                    } else if (listPos != null) {
                        ListPos listPos3 = listPos;
                        int i11 = listPos3.b;
                        mainListView2.E(i11 + 1, true, false, listPos3.f16809c, i11);
                    } else if (listTaskConfig.r) {
                        int i12 = listTaskConfig.s;
                        if (i12 != -1) {
                            mainListView2.D(mainListView2.T.A(i12), listTaskConfig.s, true, false);
                        } else {
                            int i13 = mainListView2.X;
                            if (i13 != -1) {
                                mainListView2.D(mainListView2.T.A(i13), mainListView2.X, true, false);
                            } else {
                                mainListView2.D(0, -10, true, false);
                            }
                        }
                    }
                    mainListView2.U = false;
                    mainListView2.a0 = false;
                    mainListView2.b0 = false;
                    List list3 = mainListView2.T.g;
                    if (list3 == null) {
                        size = 0;
                    } else {
                        size = list3.size();
                    }
                    if (size == 0) {
                        MyFadeImage myFadeImage = mainListView2.F;
                        if (myFadeImage != null) {
                            myFadeImage.f();
                        }
                        AppCompatTextView appCompatTextView2 = mainListView2.G;
                        if (appCompatTextView2 != null) {
                            appCompatTextView2.setVisibility(0);
                        }
                    } else {
                        MyFadeImage myFadeImage2 = mainListView2.F;
                        if (myFadeImage2 != null) {
                            myFadeImage2.d();
                        }
                        AppCompatTextView appCompatTextView3 = mainListView2.G;
                        if (appCompatTextView3 != null) {
                            appCompatTextView3.setVisibility(8);
                        }
                    }
                    mainListView2.B(-1, listTaskConfig.p, false);
                    mainListView2.H(0L, false);
                    MainListListener mainListListener = mainListView2.l;
                    if (mainListListener != null) {
                        mainListListener.o(listTaskConfig);
                    }
                }
                if (mainListView2.m0) {
                    mainListView2.h();
                }
                if (mainListView2.p0) {
                    mainListView2.f();
                }
            }
        });
    }

    public final boolean l() {
        MainListAdapter2 mainListAdapter2;
        int size;
        if (!this.E0 && (mainListAdapter2 = this.T) != null) {
            List list = mainListAdapter2.g;
            if (list == null) {
                size = 0;
            } else {
                size = list.size();
            }
            if (size == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean m() {
        if (this.i0 != null || this.k0 != null || this.l0 != null || this.o0 != null || this.q0 != null || this.r0 != null || this.s0 != null) {
            return true;
        }
        return false;
    }

    public final void n() {
        r();
        if (this.E0) {
            q();
        }
        FragmentTabPath fragmentTabPath = this.m;
        if (fragmentTabPath != null) {
            fragmentTabPath.f15705c = null;
            fragmentTabPath.f = null;
            fragmentTabPath.g = null;
            this.m = null;
        }
        MyButtonImage myButtonImage = this.p;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.p = null;
        }
        MyButtonImage myButtonImage2 = this.s;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.s = null;
        }
        MyButtonImage myButtonImage3 = this.t;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.t = null;
        }
        MyButtonImage myButtonImage4 = this.u;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.u = null;
        }
        MyButtonImage myButtonImage5 = this.v;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.v = null;
        }
        MyButtonCheck myButtonCheck = this.x;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.x = null;
        }
        MyRecyclerView myRecyclerView = this.y;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.y = null;
        }
        MyScrollBar myScrollBar = this.E;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.E = null;
        }
        MyFadeImage myFadeImage = this.F;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.F = null;
        }
        MyLineText myLineText = this.M;
        if (myLineText != null) {
            myLineText.u();
            this.M = null;
        }
        MyLineText myLineText2 = this.N;
        if (myLineText2 != null) {
            myLineText2.u();
            this.N = null;
        }
        MyLineText myLineText3 = this.O;
        if (myLineText3 != null) {
            myLineText3.u();
            this.O = null;
        }
        ValueAnimator valueAnimator = this.P;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.P = null;
        }
        ValueAnimator valueAnimator2 = this.Q;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.Q = null;
        }
        MyCoverView myCoverView = this.R;
        if (myCoverView != null) {
            myCoverView.i();
            this.R = null;
        }
        this.y0 = null;
        this.l = null;
        this.g = null;
        this.n = null;
        this.o = null;
        this.q = null;
        this.r = null;
        this.w = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.H0 = null;
        this.I0 = null;
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null) {
            mainListAdapter2.u = false;
            mainListAdapter2.v = mainListAdapter2.d();
            MainListLoader mainListLoader = mainListAdapter2.p;
            if (mainListLoader != null) {
                mainListLoader.f();
                mainListAdapter2.p = null;
            }
            mainListAdapter2.f = null;
            mainListAdapter2.g = null;
            mainListAdapter2.h = null;
            mainListAdapter2.i = 0;
            mainListAdapter2.j = 0;
            mainListAdapter2.k = 0;
            mainListAdapter2.q = null;
            mainListAdapter2.r = null;
            mainListAdapter2.o = null;
            mainListAdapter2.s = null;
            mainListAdapter2.t = null;
            this.T = null;
        }
    }

    public final void o(boolean z) {
        MainListView2 mainListView2;
        MyRecyclerView myRecyclerView = this.y;
        if (myRecyclerView != null) {
            myRecyclerView.setEnabled(true);
        }
        if (!z) {
            DialogWebBookList dialogWebBookList = this.k0;
            if (dialogWebBookList != null && (mainListView2 = dialogWebBookList.B) != null) {
                mainListView2.o(false);
                return;
            }
            return;
        }
        DialogSetSort2 dialogSetSort2 = this.i0;
        if (dialogSetSort2 != null) {
            dialogSetSort2.dismiss();
            this.i0 = null;
        }
        g();
        h();
        f();
        DialogEditMemo dialogEditMemo = this.q0;
        if (dialogEditMemo != null) {
            dialogEditMemo.dismiss();
            this.q0 = null;
        }
        DialogSetDown dialogSetDown = this.r0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.r0 = null;
        }
        this.Y0 = null;
        DialogInfo dialogInfo = this.s0;
        if (dialogInfo != null) {
            dialogInfo.dismiss();
            this.s0 = null;
        }
        j();
        i();
        ListTask listTask = this.S;
        if (listTask != null) {
            listTask.a();
        }
        this.U = true;
    }

    public final void p(boolean z, boolean z2) {
        ListTask listTask;
        MyCoverView myCoverView = this.R;
        if (myCoverView != null && myCoverView.isActivated()) {
            this.R.setActivated(false);
            this.R.f(false);
        }
        MyRecyclerView myRecyclerView = this.y;
        if (myRecyclerView != null) {
            myRecyclerView.setEnabled(true);
        }
        if (z2 && (listTask = this.S) != null) {
            listTask.i(false, false, false);
        }
        DialogWebBookList dialogWebBookList = this.k0;
        if (dialogWebBookList != null) {
            dialogWebBookList.w(z);
        }
    }

    public final void q() {
        this.E0 = false;
        MyEditPure myEditPure = this.A0;
        Context context = this.f16739c;
        if (myEditPure != null) {
            MainUtil.X4(context, myEditPure);
        }
        FragmentTabPath fragmentTabPath = this.m;
        if (fragmentTabPath != null) {
            fragmentTabPath.setVisibility(0);
        }
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null) {
            mainListAdapter2.n = false;
            mainListAdapter2.o = null;
        }
        if (this.z0 == null) {
            return;
        }
        DataBookSearch a2 = DataBookSearch.a(context);
        a2.f12914a = null;
        a2.b = null;
        ListTask listTask = this.S;
        if (listTask != null) {
            listTask.n();
        }
        MyHeaderView myHeaderView = this.o;
        if (myHeaderView != null) {
            myHeaderView.removeView(this.z0);
            this.z0 = null;
        }
        MyButtonImage myButtonImage = this.B0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.B0 = null;
        }
        MyButtonImage myButtonImage2 = this.C0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.C0 = null;
        }
        MyRoundView myRoundView = this.D0;
        if (myRoundView != null) {
            myRoundView.a();
            this.D0 = null;
        }
        this.A0 = null;
    }

    public final void r() {
        FrameLayout frameLayout = this.J0;
        if (frameLayout != null) {
            try {
                frameLayout.removeAllViewsInLayout();
            } catch (Exception unused) {
            }
            this.J0.setVisibility(4);
            this.J0.requestLayout();
            this.J0 = null;
        }
        FrameLayout frameLayout2 = this.M0;
        if (frameLayout2 != null) {
            try {
                frameLayout2.removeAllViewsInLayout();
            } catch (Exception unused2) {
            }
            this.M0.setVisibility(8);
            this.M0 = null;
        }
        this.K0 = null;
        this.L0 = null;
        this.N0 = null;
    }

    public final void s() {
        ListTask listTask = this.S;
        if (listTask != null) {
            String b = listTask.b();
            boolean z = PrefSync.k;
            Context context = this.f16739c;
            if (z) {
                if (!MainUtil.q5(PrefAlbum.N, b)) {
                    PrefAlbum.N = b;
                    PrefSet.c(0, context, "mWebBookSec", b);
                    return;
                }
                return;
            }
            if (!MainUtil.q5(PrefAlbum.M, b)) {
                PrefAlbum.M = b;
                PrefSet.c(0, context, "mWebBookDir", b);
            }
        }
    }

    public final boolean t() {
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null && mainListAdapter2.m) {
            B(-1, false, true);
            return true;
        }
        if (!this.E0) {
            return false;
        }
        q();
        ListTask listTask = this.S;
        if (listTask != null) {
            listTask.l(null, false, false);
        }
        return true;
    }

    public final void u() {
        if (this.I == null) {
            return;
        }
        if (MainApp.K1) {
            View view = this.J;
            if (view != null) {
                view.setBackgroundResource(R.drawable.round_bot_left_b);
            }
            View view2 = this.K;
            if (view2 != null) {
                view2.setBackgroundResource(R.drawable.round_bot_right_b);
            }
            this.L.setBackgroundColor(-16777216);
            MyLineText myLineText = this.M;
            if (myLineText != null) {
                myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText2 = this.N;
            if (myLineText2 != null) {
                myLineText2.setBackgroundResource(R.drawable.selector_normal_dark);
            }
            MyLineText myLineText3 = this.O;
            if (myLineText3 != null) {
                myLineText3.setBackgroundResource(R.drawable.selector_normal_dark);
            }
        } else {
            View view3 = this.J;
            if (view3 != null) {
                view3.setBackgroundResource(R.drawable.round_bot_left_g);
            }
            View view4 = this.K;
            if (view4 != null) {
                view4.setBackgroundResource(R.drawable.round_bot_right_g);
            }
            this.L.setBackgroundColor(-460552);
            MyLineText myLineText4 = this.M;
            if (myLineText4 != null) {
                myLineText4.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText5 = this.N;
            if (myLineText5 != null) {
                myLineText5.setBackgroundResource(R.drawable.selector_normal_gray);
            }
            MyLineText myLineText6 = this.O;
            if (myLineText6 != null) {
                myLineText6.setBackgroundResource(R.drawable.selector_normal_gray);
            }
        }
        A();
    }

    public final void w() {
        if (this.I != null && this.T != null) {
            ValueAnimator valueAnimator = this.P;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.P = null;
            }
            ValueAnimator valueAnimator2 = this.Q;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.Q = null;
            }
            if (this.T.m) {
                this.I.setTranslationY(0.0f);
                this.I.setVisibility(0);
            } else {
                this.I.setVisibility(8);
            }
        }
    }

    public final void x() {
        int i;
        FrameLayout frameLayout = this.J0;
        if (frameLayout != null && this.L0 != null) {
            int i2 = -16777216;
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            frameLayout.setBackgroundColor(i);
            MediaRouteButton mediaRouteButton = this.L0;
            if (MainApp.K1) {
                i2 = -328966;
            }
            MainUtil.h7(i2, this.f16739c, mediaRouteButton);
        }
    }

    public final void y() {
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null) {
            AppCompatTextView appCompatTextView = this.w;
            if (appCompatTextView != null) {
                appCompatTextView.setText(MainUtil.h3(mainListAdapter2.i, mainListAdapter2.B()));
            }
            MyButtonCheck myButtonCheck = this.x;
            if (myButtonCheck != null) {
                myButtonCheck.q(this.T.D(), true);
            }
        }
    }

    public final boolean z(Configuration configuration) {
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.d;
        boolean z2 = MainApp.K1;
        if (z == z2) {
            return false;
        }
        this.d = z2;
        j();
        i();
        F();
        u();
        C();
        x();
        MyHeaderView myHeaderView = this.o;
        if (myHeaderView != null) {
            myHeaderView.invalidate();
        }
        MyScrollBar myScrollBar = this.E;
        if (myScrollBar != null) {
            myScrollBar.l();
        }
        MainListAdapter2 mainListAdapter2 = this.T;
        if (mainListAdapter2 != null) {
            mainListAdapter2.g();
        }
        DialogWebBookList dialogWebBookList = this.k0;
        if (dialogWebBookList != null) {
            dialogWebBookList.v(configuration);
        }
        return true;
    }
}
