package com.mycompany.app.dialog;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.behavior.MyBehaviorDialog;
import com.mycompany.app.dialog.DialogMenuMain;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.main.MenuListAdapter;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundCoord;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogMenuList {
    public ValueAnimator A;
    public ValueAnimator B;
    public MyPopupMenu C;
    public boolean D;
    public float F;
    public boolean G;
    public float I;
    public boolean J;

    /* renamed from: a, reason: collision with root package name */
    public WebViewActivity f13852a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public DialogMenuMain.DownMenuListener f13853c;
    public final MyWebBody d;
    public View e;
    public int[] f;
    public int[] g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public int k;
    public final boolean l;
    public ViewGroup m;
    public FrameLayout n;
    public MyRoundLinear o;
    public MyButtonImage p;
    public MyButtonImage q;
    public AppCompatTextView r;
    public MyButtonImage s;
    public MyButtonImage t;
    public MyButtonImage u;
    public MyRecyclerView v;
    public MenuListAdapter w;
    public MyBarView x;
    public int y;
    public int z;
    public final MyBehaviorDialog.BottomSheetCallback E = new MyBehaviorDialog.BottomSheetCallback() { // from class: com.mycompany.app.dialog.DialogMenuList.18
        @Override // com.mycompany.app.behavior.MyBehaviorDialog.BottomSheetCallback
        public final void a(int i) {
            if (i == 5) {
                DialogMenuList.this.b();
            }
        }
    };
    public final Runnable H = new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.21
        @Override // java.lang.Runnable
        public final void run() {
            DialogMenuList dialogMenuList = DialogMenuList.this;
            dialogMenuList.G = false;
            if (dialogMenuList.A == null) {
                return;
            }
            DialogMenuList.a(dialogMenuList, dialogMenuList.F);
        }
    };
    public final Runnable K = new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.25
        @Override // java.lang.Runnable
        public final void run() {
            DialogMenuList dialogMenuList = DialogMenuList.this;
            dialogMenuList.J = false;
            if (dialogMenuList.B != null) {
                float f = dialogMenuList.I;
                ViewGroup viewGroup = dialogMenuList.m;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.setAlpha(f);
                dialogMenuList.m.setScaleX(f);
                dialogMenuList.m.setScaleY(f);
            }
        }
    };

    /* renamed from: com.mycompany.app.dialog.DialogMenuList$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogMenuList$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogMenuList.this.b();
        }
    }

    public DialogMenuList(WebViewActivity webViewActivity, Context context, MyWebBody myWebBody, View view, int[] iArr, int[] iArr2, boolean z, boolean z2, boolean z3, int i, boolean z4, DialogMenuMain.DownMenuListener downMenuListener) {
        this.f13852a = webViewActivity;
        this.b = context;
        this.f13853c = downMenuListener;
        this.d = myWebBody;
        this.e = view;
        this.f = iArr;
        this.g = iArr2;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = i;
        this.l = z4;
        if (myWebBody == null) {
            return;
        }
        myWebBody.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                int i2;
                final DialogMenuList dialogMenuList = DialogMenuList.this;
                Context context2 = dialogMenuList.b;
                if (context2 != null) {
                    MyRoundLinear myRoundLinear = new MyRoundLinear(context2);
                    myRoundLinear.setOrientation(1);
                    MyLineFrame myLineFrame = new MyLineFrame(context2);
                    int G = (int) MainUtil.G(context2, 2.0f);
                    myLineFrame.setPadding(G, 0, G, 0);
                    myLineFrame.a(MainApp.E1);
                    myRoundLinear.addView(myLineFrame, -1, MainApp.g1);
                    float f = MainApp.g1 / 2.0f;
                    MyButtonImage myButtonImage2 = new MyButtonImage(context2);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setBgPreRadius(f);
                    int i3 = MainApp.g1;
                    myLineFrame.addView(myButtonImage2, i3, i3);
                    MyButtonImage myButtonImage3 = new MyButtonImage(context2);
                    myButtonImage3.setScaleType(scaleType);
                    myButtonImage3.setBgPreRadius(f);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams.setMarginStart(MainApp.f1);
                    myLineFrame.addView(myButtonImage3, layoutParams);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context2, null, 16, 1, 14.0f);
                    C.setTextColor(-769226);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams2.setMarginStart((int) MainUtil.G(context2, 80.0f));
                    myLineFrame.addView(C, layoutParams2);
                    if (dialogMenuList.l) {
                        myButtonImage = new MyButtonImage(context2);
                        myButtonImage.setScaleType(scaleType);
                        myButtonImage.setBgPreRadius(f);
                        int i5 = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i5, i5);
                        layoutParams3.gravity = 8388613;
                        layoutParams3.setMarginEnd(MainApp.g1 * 2);
                        myLineFrame.addView(myButtonImage, layoutParams3);
                    } else {
                        myButtonImage = null;
                    }
                    MyButtonImage myButtonImage4 = new MyButtonImage(context2);
                    myButtonImage4.setScaleType(scaleType);
                    myButtonImage4.setBgPreRadius(f);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams4.gravity = 8388613;
                    layoutParams4.setMarginEnd(MainApp.g1);
                    myLineFrame.addView(myButtonImage4, layoutParams4);
                    MyButtonImage myButtonImage5 = new MyButtonImage(context2);
                    myButtonImage5.setScaleType(scaleType);
                    myButtonImage5.setBgPreRadius(f);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams5.gravity = 8388613;
                    myLineFrame.addView(myButtonImage5, layoutParams5);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context2);
                    myRecyclerView.u0(true, true);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams6.weight = 1.0f;
                    myRoundLinear.addView(myRecyclerView, layoutParams6);
                    dialogMenuList.o = myRoundLinear;
                    dialogMenuList.v = myRecyclerView;
                    dialogMenuList.p = myButtonImage2;
                    dialogMenuList.q = myButtonImage3;
                    dialogMenuList.r = C;
                    dialogMenuList.t = myButtonImage4;
                    dialogMenuList.u = myButtonImage5;
                    dialogMenuList.s = myButtonImage;
                    myRoundLinear.b();
                    dialogMenuList.o.setOnClickListener(new Object());
                    if (MainApp.K1) {
                        dialogMenuList.p.setImageResource(R.drawable.outline_restart_alt_dark_20);
                        dialogMenuList.t.setImageResource(R.drawable.outline_view_agenda_dark_20);
                        dialogMenuList.u.setImageResource(R.drawable.outline_settings_dark_20);
                        dialogMenuList.p.setBgPreColor(-12632257);
                        dialogMenuList.q.setBgPreColor(-12632257);
                        dialogMenuList.t.setBgPreColor(-12632257);
                        dialogMenuList.u.setBgPreColor(-12632257);
                    } else {
                        dialogMenuList.p.setImageResource(R.drawable.outline_restart_alt_black_20);
                        dialogMenuList.t.setImageResource(R.drawable.outline_view_agenda_black_20);
                        dialogMenuList.u.setImageResource(R.drawable.outline_settings_black_20);
                        dialogMenuList.p.setBgPreColor(553648128);
                        dialogMenuList.q.setBgPreColor(553648128);
                        dialogMenuList.t.setBgPreColor(553648128);
                        dialogMenuList.u.setBgPreColor(553648128);
                    }
                    dialogMenuList.p.setMaxAlpha(0.85f);
                    dialogMenuList.t.setMaxAlpha(0.85f);
                    dialogMenuList.u.setMaxAlpha(0.85f);
                    dialogMenuList.p.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            DialogMenuMain.DownMenuListener downMenuListener2 = DialogMenuList.this.f13853c;
                            if (downMenuListener2 != null) {
                                downMenuListener2.g();
                            }
                        }
                    });
                    if (dialogMenuList.k > 0) {
                        dialogMenuList.q.setImageResource(R.drawable.outline_verified_user_red_20);
                        dialogMenuList.r.setText(Integer.toString(dialogMenuList.k));
                    } else {
                        if (MainApp.K1) {
                            dialogMenuList.q.setImageResource(R.drawable.outline_verified_user_dark_20);
                        } else {
                            dialogMenuList.q.setImageResource(R.drawable.outline_verified_user_black_20);
                        }
                        dialogMenuList.q.setMaxAlpha(0.85f);
                    }
                    if (PrefAlbum.o) {
                        dialogMenuList.q.setNoti(true);
                    }
                    dialogMenuList.q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            boolean z5 = PrefAlbum.o;
                            DialogMenuList dialogMenuList2 = DialogMenuList.this;
                            if (z5) {
                                PrefAlbum.o = false;
                                PrefSet.d(0, dialogMenuList2.b, "mNotiClean", false);
                                MyButtonImage myButtonImage6 = dialogMenuList2.q;
                                if (myButtonImage6 != null) {
                                    myButtonImage6.setNoti(false);
                                }
                            }
                            DialogMenuMain.DownMenuListener downMenuListener2 = dialogMenuList2.f13853c;
                            if (downMenuListener2 != null) {
                                downMenuListener2.c();
                            }
                        }
                    });
                    MyButtonImage myButtonImage6 = dialogMenuList.s;
                    if (myButtonImage6 != null) {
                        if (MainApp.K1) {
                            myButtonImage6.setImageResource(R.drawable.outline_local_cafe_dark_20);
                            dialogMenuList.s.setBgPreColor(-12632257);
                        } else {
                            myButtonImage6.setImageResource(R.drawable.outline_local_cafe_black_20);
                            dialogMenuList.s.setBgPreColor(553648128);
                        }
                        dialogMenuList.s.setMaxAlpha(0.85f);
                        dialogMenuList.s.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogMenuMain.DownMenuListener downMenuListener2 = DialogMenuList.this.f13853c;
                                if (downMenuListener2 != null) {
                                    downMenuListener2.h();
                                }
                            }
                        });
                    }
                    dialogMenuList.t.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            boolean z5;
                            boolean z6;
                            boolean z7;
                            boolean z8;
                            final DialogMenuList dialogMenuList2 = DialogMenuList.this;
                            if (dialogMenuList2.f13852a != null && dialogMenuList2.C == null) {
                                dialogMenuList2.d();
                                if (view2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    int i8 = R.string.small_list;
                                    boolean z9 = false;
                                    if (PrefMain.y == 0) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, i8, z5));
                                    int i9 = R.string.large_list;
                                    if (PrefMain.y == 1) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i9, z6));
                                    int i10 = R.string.two_lines;
                                    if (PrefMain.y == 3) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(3, i10, z7));
                                    int i11 = R.string.three_lines;
                                    if (PrefMain.y == 4) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(4, i11, z8));
                                    int i12 = R.string.expand_mode;
                                    if (PrefMain.y == 2) {
                                        z9 = true;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, i12, z9));
                                    MyPopupMenu myPopupMenu = new MyPopupMenu(dialogMenuList2.f13852a, dialogMenuList2.o, view2, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogMenuList.27
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            DialogMenuList.this.d();
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view3, int i13) {
                                            int i14 = i13 % 5;
                                            if (PrefMain.y != i14) {
                                                PrefMain.y = i14;
                                                DialogMenuList dialogMenuList3 = DialogMenuList.this;
                                                PrefSet.f(dialogMenuList3.b, 5, i14, "mMenuType");
                                                DialogMenuMain.DownMenuListener downMenuListener2 = dialogMenuList3.f13853c;
                                                if (downMenuListener2 != null) {
                                                    downMenuListener2.d();
                                                }
                                            }
                                            return true;
                                        }
                                    });
                                    dialogMenuList2.C = myPopupMenu;
                                    WebViewActivity webViewActivity2 = dialogMenuList2.f13852a;
                                    if (webViewActivity2 != null) {
                                        webViewActivity2.Z0 = myPopupMenu;
                                    }
                                }
                            }
                        }
                    });
                    dialogMenuList.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            DialogMenuMain.DownMenuListener downMenuListener2 = DialogMenuList.this.f13853c;
                            if (downMenuListener2 != null) {
                                downMenuListener2.f();
                            }
                        }
                    });
                    if (dialogMenuList.v != null) {
                        dialogMenuList.w = new MenuListAdapter(dialogMenuList.f, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.dialog.DialogMenuList.11
                            @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                            public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                                DialogMenuMain.DownMenuListener downMenuListener2 = DialogMenuList.this.f13853c;
                                if (downMenuListener2 != null) {
                                    downMenuListener2.e();
                                }
                            }

                            @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                            public final void b(View view2, int i8, int i9) {
                                DialogMenuMain.DownMenuListener downMenuListener2 = DialogMenuList.this.f13853c;
                                if (downMenuListener2 != null) {
                                    downMenuListener2.b(view2, i9);
                                }
                            }
                        });
                        MyRecyclerView myRecyclerView2 = dialogMenuList.v;
                        if (MainApp.K1) {
                            i2 = -16777216;
                        } else {
                            i2 = -460552;
                        }
                        myRecyclerView2.setBackgroundColor(i2);
                        com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogMenuList.v);
                        dialogMenuList.v.setAdapter(dialogMenuList.w);
                        dialogMenuList.v.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.dialog.DialogMenuList.12
                            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                            public final void b(RecyclerView recyclerView, int i8, int i9) {
                                DialogMenuList dialogMenuList2 = DialogMenuList.this;
                                MyRecyclerView myRecyclerView3 = dialogMenuList2.v;
                                if (myRecyclerView3 != null) {
                                    if (myRecyclerView3.computeVerticalScrollOffset() > 0) {
                                        dialogMenuList2.v.w0();
                                    } else {
                                        dialogMenuList2.v.r0();
                                    }
                                    if (recyclerView.getScrollState() == 2 && recyclerView.canScrollVertically(-1) != recyclerView.canScrollVertically(1)) {
                                        recyclerView.p0();
                                    }
                                }
                            }
                        });
                    }
                    MyWebBody myWebBody2 = dialogMenuList.d;
                    if (myWebBody2 == null) {
                        return;
                    }
                    myWebBody2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i8;
                            final DialogMenuList dialogMenuList2 = DialogMenuList.this;
                            MyWebBody myWebBody3 = dialogMenuList2.d;
                            if (myWebBody3 != null && dialogMenuList2.e != null) {
                                try {
                                    if (dialogMenuList2.h) {
                                        FrameLayout frameLayout = new FrameLayout(dialogMenuList2.f13852a);
                                        dialogMenuList2.m = frameLayout;
                                        frameLayout.addView(dialogMenuList2.o, -1, -2);
                                    } else {
                                        MyRoundLinear myRoundLinear2 = dialogMenuList2.o;
                                        if (myRoundLinear2 != null) {
                                            int[] iArr3 = dialogMenuList2.g;
                                            if (iArr3 != null) {
                                                i8 = iArr3.length;
                                            } else {
                                                i8 = 0;
                                            }
                                            if (i8 > 0) {
                                                myRoundLinear2.setPadding(0, 0, 0, PrefPdf.y);
                                            }
                                            myWebBody3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.16
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final DialogMenuList dialogMenuList3 = DialogMenuList.this;
                                                    MyRoundLinear myRoundLinear3 = dialogMenuList3.o;
                                                    if (myRoundLinear3 == null) {
                                                        return;
                                                    }
                                                    ViewCompat.z(myRoundLinear3, new AccessibilityDelegateCompat() { // from class: com.mycompany.app.dialog.DialogMenuList.17
                                                        @Override // androidx.core.view.AccessibilityDelegateCompat
                                                        public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                                                            this.f760a.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.f834a);
                                                            accessibilityNodeInfoCompat.a(1048576);
                                                            accessibilityNodeInfoCompat.o(true);
                                                        }

                                                        @Override // androidx.core.view.AccessibilityDelegateCompat
                                                        public final boolean g(View view2, int i9, Bundle bundle) {
                                                            if (i9 == 1048576) {
                                                                DialogMenuList.this.b();
                                                                return true;
                                                            }
                                                            return super.g(view2, i9, bundle);
                                                        }
                                                    });
                                                }
                                            });
                                        }
                                        MyRoundCoord myRoundCoord = new MyRoundCoord(dialogMenuList2.f13852a);
                                        dialogMenuList2.m = myRoundCoord;
                                        MyRoundLinear myRoundLinear3 = dialogMenuList2.o;
                                        MyBehaviorDialog myBehaviorDialog = new MyBehaviorDialog(dialogMenuList2.b);
                                        boolean z5 = dialogMenuList2.i;
                                        if (!myBehaviorDialog.p && !z5) {
                                            myBehaviorDialog.q = false;
                                            myBehaviorDialog.r = 4;
                                        } else {
                                            myBehaviorDialog.q = true;
                                            myBehaviorDialog.r = 3;
                                        }
                                        MyBehaviorDialog.BottomSheetCallback bottomSheetCallback = dialogMenuList2.E;
                                        ArrayList arrayList = myBehaviorDialog.F;
                                        if (!arrayList.contains(bottomSheetCallback)) {
                                            arrayList.add(bottomSheetCallback);
                                        }
                                        myBehaviorDialog.C(true);
                                        myBehaviorDialog.o = true;
                                        CoordinatorLayout.LayoutParams layoutParams7 = new CoordinatorLayout.LayoutParams(-1, -2);
                                        layoutParams7.b(myBehaviorDialog);
                                        myRoundCoord.addView(myRoundLinear3, layoutParams7);
                                    }
                                    dialogMenuList2.m.setVisibility(4);
                                    FrameLayout frameLayout2 = new FrameLayout(dialogMenuList2.f13852a);
                                    dialogMenuList2.n = frameLayout2;
                                    frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuList.13
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            DialogMenuList.this.b();
                                        }
                                    });
                                    dialogMenuList2.n.addView(dialogMenuList2.m, dialogMenuList2.c());
                                    myWebBody3.addView(dialogMenuList2.n, -1, -1);
                                    myWebBody3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.14
                                        /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
                                        
                                            if (r1.o == null) goto L34;
                                         */
                                        /* JADX WARN: Type inference failed for: r8v4, types: [android.widget.LinearLayout, com.mycompany.app.view.MyBarView] */
                                        @Override // java.lang.Runnable
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct add '--show-bad-code' argument
                                        */
                                        public final void run() {
                                            /*
                                                Method dump skipped, instructions count: 306
                                                To view this dump add '--comments-level debug' option
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogMenuList.AnonymousClass14.run():void");
                                        }
                                    });
                                } catch (Exception unused) {
                                    MyRoundLinear myRoundLinear4 = dialogMenuList2.o;
                                    if (myRoundLinear4 != null) {
                                        myRoundLinear4.post(new AnonymousClass9());
                                    }
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    public static void a(DialogMenuList dialogMenuList, float f) {
        ViewGroup viewGroup = dialogMenuList.m;
        if (viewGroup != null) {
            viewGroup.setAlpha(f);
            dialogMenuList.m.setScaleX(f);
            dialogMenuList.m.setScaleY(f);
            if (dialogMenuList.m.getVisibility() != 0) {
                dialogMenuList.m.setVisibility(0);
            }
        }
    }

    public final boolean b() {
        if (this.m == null || this.B != null) {
            return false;
        }
        d();
        this.m.setPivotX(this.y);
        this.m.setPivotY(this.z);
        this.I = 1.0f;
        this.J = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.B = ofFloat;
        ofFloat.setDuration(200L);
        a.r(this.B);
        this.B.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogMenuList.23
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogMenuList dialogMenuList = DialogMenuList.this;
                if (dialogMenuList.B != null && dialogMenuList.m != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (dialogMenuList.B != null && dialogMenuList.m != null) {
                        dialogMenuList.I = floatValue;
                        if (!dialogMenuList.J) {
                            dialogMenuList.J = true;
                            MainApp.N(dialogMenuList.b, dialogMenuList.K);
                        }
                    }
                }
            }
        });
        this.B.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogMenuList.24
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DialogMenuList dialogMenuList = DialogMenuList.this;
                if (dialogMenuList.B == null) {
                    return;
                }
                dialogMenuList.B = null;
                dialogMenuList.e();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final DialogMenuList dialogMenuList = DialogMenuList.this;
                if (dialogMenuList.B == null) {
                    return;
                }
                MainApp.N(dialogMenuList.b, new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.26
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogMenuList dialogMenuList2 = DialogMenuList.this;
                        if (dialogMenuList2.B == null) {
                            return;
                        }
                        dialogMenuList2.B = null;
                        dialogMenuList2.e();
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
        ValueAnimator valueAnimator = this.A;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.A = null;
        }
        this.B.start();
        return true;
    }

    public final FrameLayout.LayoutParams c() {
        int i;
        float f;
        int i2;
        int i3;
        int[] iArr = this.g;
        int i4 = 0;
        if (iArr != null) {
            i = iArr.length;
        } else {
            i = 0;
        }
        int[] iArr2 = new int[2];
        MyWebBody myWebBody = this.d;
        myWebBody.getLocationOnScreen(iArr2);
        int paddingLeft = myWebBody.getPaddingLeft() + iArr2[0];
        int paddingTop = myWebBody.getPaddingTop() + iArr2[1];
        int rectWidth = myWebBody.getRectWidth();
        int rectHeight = myWebBody.getRectHeight();
        this.e.getLocationOnScreen(iArr2);
        int width = (this.e.getWidth() / 2) + (iArr2[0] - paddingLeft);
        int height = (this.e.getHeight() / 2) + (iArr2[1] - paddingTop);
        Context context = this.b;
        if (i < 9) {
            f = 244.0f;
        } else {
            f = 284.0f;
        }
        int G = (int) MainUtil.G(context, f);
        if (this.j) {
            i2 = width - G;
            if (i2 < 0) {
                i2 = 0;
            } else {
                G = width;
            }
            if (G > rectWidth) {
                G = rectWidth;
            }
        } else {
            int i5 = width + G;
            if (i5 > rectWidth) {
                i2 = rectWidth - G;
                G = rectWidth;
            } else {
                G = i5;
                i2 = width;
            }
            if (i2 < 0) {
                i2 = 0;
            }
        }
        if (this.h) {
            i3 = rectHeight;
            i4 = height;
        } else if (height > rectHeight) {
            i3 = rectHeight;
        } else {
            i3 = height;
        }
        this.y = width - i2;
        this.z = height - i4;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(i2, i4, rectWidth - G, rectHeight - i3);
        return layoutParams;
    }

    public final void d() {
        MyPopupMenu myPopupMenu = this.C;
        if (myPopupMenu != null) {
            WebViewActivity webViewActivity = this.f13852a;
            if (webViewActivity != null) {
                webViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.C = null;
        }
    }

    public final void e() {
        if (this.b == null) {
            return;
        }
        FrameLayout frameLayout = this.n;
        if (frameLayout != null) {
            MyWebBody myWebBody = this.d;
            if (myWebBody != null) {
                myWebBody.removeView(frameLayout);
            }
            this.n = null;
        }
        this.m = null;
        this.n = null;
        DialogMenuMain.DownMenuListener downMenuListener = this.f13853c;
        if (downMenuListener != null) {
            downMenuListener.a();
            this.f13853c = null;
        }
        MyRoundLinear myRoundLinear = this.o;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.o = null;
        }
        MyButtonImage myButtonImage = this.p;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.p = null;
        }
        MyButtonImage myButtonImage2 = this.q;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.q = null;
        }
        MyButtonImage myButtonImage3 = this.s;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.s = null;
        }
        MyButtonImage myButtonImage4 = this.t;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.t = null;
        }
        MyButtonImage myButtonImage5 = this.u;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.u = null;
        }
        MyRecyclerView myRecyclerView = this.v;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.v = null;
        }
        MenuListAdapter menuListAdapter = this.w;
        if (menuListAdapter != null) {
            menuListAdapter.f = menuListAdapter.d();
            menuListAdapter.d = null;
            menuListAdapter.e = null;
            this.w = null;
        }
        MyBarView myBarView = this.x;
        if (myBarView != null) {
            myBarView.d();
            this.x = null;
        }
        this.f13852a = null;
        this.b = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.r = null;
    }

    public final void f(int i) {
        this.k = i;
        if (!this.D) {
            this.D = true;
            MyButtonImage myButtonImage = this.q;
            if (myButtonImage == null) {
                return;
            }
            myButtonImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuList.10
                @Override // java.lang.Runnable
                public final void run() {
                    DialogMenuList dialogMenuList = DialogMenuList.this;
                    MyButtonImage myButtonImage2 = dialogMenuList.q;
                    if (myButtonImage2 == null) {
                        return;
                    }
                    myButtonImage2.setImageResource(R.drawable.outline_verified_user_red_20);
                    dialogMenuList.q.setMaxAlpha(1.0f);
                    dialogMenuList.r.setText(Integer.toString(dialogMenuList.k));
                    dialogMenuList.D = false;
                }
            });
        }
    }
}
