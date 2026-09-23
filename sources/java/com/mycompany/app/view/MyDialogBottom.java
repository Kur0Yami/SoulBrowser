package com.mycompany.app.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Insets;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.behavior.MyBehaviorDialog;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MainWebDestroy;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefWeb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyDialogBottom extends Dialog {
    public static final /* synthetic */ int Z = 0;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public MyRecyclerView F;
    public BotListListener G;
    public boolean H;
    public ExecutorService I;
    public boolean J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public int T;
    public int U;
    public boolean V;
    public final MyBehaviorDialog.BottomSheetCallback W;
    public OnBackInvokedCallback X;
    public MyPopupWrap Y;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18633c;
    public MainActivity f;
    public View g;
    public WindowInsetsControllerCompat h;
    public Handler i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public BotViewListener p;
    public ShowAdListener q;
    public DialogInterface.OnDismissListener r;
    public MyDiagBody s;
    public CoordinatorLayout t;
    public FrameLayout u;
    public View v;
    public int w;
    public boolean x;
    public MyBehaviorDialog y;
    public boolean z;

    /* renamed from: com.mycompany.app.view.MyDialogBottom$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements Runnable {
        public AnonymousClass20() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = MyDialogBottom.Z;
            MyDialogBottom myDialogBottom = MyDialogBottom.this;
            MyPopupWrap myPopupWrap = myDialogBottom.Y;
            myDialogBottom.Y = null;
            if (myPopupWrap == null) {
                return;
            }
            myPopupWrap.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyDialogBottom$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyDialogBottom$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 implements Runnable {

        /* renamed from: com.mycompany.app.view.MyDialogBottom$7$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                final MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (!myDialogBottom.f18633c) {
                    myDialogBottom.u();
                    return;
                }
                FrameLayout frameLayout = myDialogBottom.u;
                if (frameLayout != null) {
                    ViewCompat.z(frameLayout, new AccessibilityDelegateCompat() { // from class: com.mycompany.app.view.MyDialogBottom.8
                        @Override // androidx.core.view.AccessibilityDelegateCompat
                        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
                            if (MyDialogBottom.this.z) {
                                accessibilityNodeInfoCompat.a(1048576);
                                accessibilityNodeInfoCompat.o(true);
                            } else {
                                accessibilityNodeInfoCompat.o(false);
                            }
                        }

                        @Override // androidx.core.view.AccessibilityDelegateCompat
                        public final boolean g(View view, int i, Bundle bundle) {
                            if (i == 1048576) {
                                MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                                if (myDialogBottom2.z) {
                                    myDialogBottom2.cancel();
                                    return true;
                                }
                            }
                            return super.g(view, i, bundle);
                        }
                    });
                }
                Handler handler = myDialogBottom.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.7.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        final MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                        if (!myDialogBottom2.f18633c) {
                            myDialogBottom2.u();
                            return;
                        }
                        View h = myDialogBottom2.h();
                        if (h != null) {
                            ViewCompat.N(h, new WindowInsetsAnimationCompat.Callback() { // from class: com.mycompany.app.view.MyDialogBottom.11
                                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                                public final void a() {
                                    Handler handler2 = MyDialogBottom.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.11.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MyDialogBottom.this.J = false;
                                        }
                                    });
                                }

                                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                                public final void b() {
                                    MyDialogBottom.this.J = true;
                                }

                                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                                public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
                                    return windowInsetsCompat;
                                }

                                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                                public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                                    return boundsCompat;
                                }
                            });
                        }
                        Handler handler2 = MyDialogBottom.this.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.7.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final MyDialogBottom myDialogBottom3 = MyDialogBottom.this;
                                if (!myDialogBottom3.f18633c) {
                                    myDialogBottom3.u();
                                    return;
                                }
                                if (myDialogBottom3.E) {
                                    myDialogBottom3.n();
                                    Handler handler3 = myDialogBottom3.i;
                                    if (handler3 != null) {
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.9
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i = MyDialogBottom.Z;
                                                MyDialogBottom.this.v();
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                if (!MainConst.e && myDialogBottom3.x) {
                                    myDialogBottom3.w();
                                    return;
                                }
                                myDialogBottom3.n();
                                Handler handler4 = myDialogBottom3.i;
                                if (handler4 == null) {
                                    return;
                                }
                                handler4.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i = MyDialogBottom.Z;
                                        MyDialogBottom.this.w();
                                    }
                                });
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            FrameLayout frameLayout;
            CoordinatorLayout.LayoutParams layoutParams;
            MyDialogBottom myDialogBottom = MyDialogBottom.this;
            if (!myDialogBottom.f18633c) {
                myDialogBottom.u();
                return;
            }
            if (myDialogBottom.y == null && (frameLayout = myDialogBottom.u) != null && (layoutParams = (CoordinatorLayout.LayoutParams) frameLayout.getLayoutParams()) != null) {
                MyBehaviorDialog myBehaviorDialog = new MyBehaviorDialog(myDialogBottom.getContext(), null);
                myDialogBottom.y = myBehaviorDialog;
                myBehaviorDialog.C(myDialogBottom.z);
                MyBehaviorDialog myBehaviorDialog2 = myDialogBottom.y;
                myBehaviorDialog2.o = myDialogBottom.B;
                boolean z = myDialogBottom.C;
                if (!myBehaviorDialog2.p && z) {
                    myBehaviorDialog2.q = false;
                    myBehaviorDialog2.r = 4;
                } else {
                    myBehaviorDialog2.q = true;
                    myBehaviorDialog2.r = 3;
                }
                myBehaviorDialog2.s = myDialogBottom.D;
                MyBehaviorDialog.BottomSheetCallback bottomSheetCallback = myDialogBottom.W;
                ArrayList arrayList = myBehaviorDialog2.F;
                if (!arrayList.contains(bottomSheetCallback)) {
                    arrayList.add(bottomSheetCallback);
                }
                layoutParams.f611c = 48;
                layoutParams.b(myDialogBottom.y);
                myDialogBottom.u.requestLayout();
            }
            Handler handler = myDialogBottom.i;
            if (handler == null) {
                return;
            }
            handler.post(new AnonymousClass1());
        }
    }

    /* loaded from: classes3.dex */
    public interface BotListListener {
        void a(boolean z);
    }

    /* loaded from: classes3.dex */
    public interface BotViewListener {
        void a(View view);
    }

    /* loaded from: classes3.dex */
    public interface ShowAdListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface UserShowListener {
        void a();
    }

    public MyDialogBottom(Context context) {
        super(context, 0);
        this.W = new MyBehaviorDialog.BottomSheetCallback() { // from class: com.mycompany.app.view.MyDialogBottom.18
            @Override // com.mycompany.app.behavior.MyBehaviorDialog.BottomSheetCallback
            public final void a(int i) {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (i == 5) {
                    myDialogBottom.cancel();
                    return;
                }
                MyRecyclerView myRecyclerView = myDialogBottom.F;
                if (myRecyclerView != null) {
                    if (i != 3 && i != 4) {
                        return;
                    }
                    myRecyclerView.p0();
                    myDialogBottom.H = true;
                }
            }
        };
        l(context);
    }

    public static void a(MyDialogBottom myDialogBottom) {
        if (myDialogBottom.i == null) {
            return;
        }
        try {
            super.dismiss();
        } catch (Exception unused) {
            if (myDialogBottom.r != null) {
                myDialogBottom.r.onDismiss(myDialogBottom);
                myDialogBottom.r = null;
            }
        }
        MyPopupWrap myPopupWrap = myDialogBottom.Y;
        myDialogBottom.Y = null;
        if (myPopupWrap != null) {
            myPopupWrap.a();
        }
        MainWebDestroy w = MainApp.w(myDialogBottom.getContext());
        if (w != null) {
            w.i = false;
            w.d(true);
        }
        MyRecyclerView myRecyclerView = myDialogBottom.F;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            myDialogBottom.F = null;
        }
        myDialogBottom.f = null;
        myDialogBottom.g = null;
        myDialogBottom.h = null;
        MainUtil.R6(myDialogBottom.i);
        myDialogBottom.i = null;
        myDialogBottom.p = null;
        myDialogBottom.q = null;
        myDialogBottom.s = null;
        myDialogBottom.t = null;
        myDialogBottom.u = null;
        myDialogBottom.v = null;
        myDialogBottom.y = null;
        myDialogBottom.G = null;
        myDialogBottom.I = null;
        myDialogBottom.X = null;
        myDialogBottom.n = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.widget.FrameLayout, android.view.View, android.view.ViewGroup, com.mycompany.app.view.MyDiagBody] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, android.view.View$OnTouchListener] */
    public static boolean b(MyDialogBottom myDialogBottom, boolean z) {
        Context context;
        int b0;
        int i;
        if (myDialogBottom.f18633c && (context = myDialogBottom.getContext()) != null) {
            try {
                ?? frameLayout = new FrameLayout(context);
                if (MainConst.e) {
                    frameLayout.setPadding(myDialogBottom.K, myDialogBottom.L, myDialogBottom.M, myDialogBottom.N);
                }
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                frameLayout.addView(new View(context), -1, -1);
                ?? frameLayout2 = new FrameLayout(context);
                frameLayout.addView(frameLayout2, -1, -1);
                CoordinatorLayout coordinatorLayout = new CoordinatorLayout(context, null);
                MainActivity mainActivity = myDialogBottom.f;
                if (mainActivity == null) {
                    b0 = -1;
                } else {
                    b0 = mainActivity.b0();
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(b0, -1);
                layoutParams.gravity = 1;
                frameLayout2.addView(coordinatorLayout, layoutParams);
                FrameLayout frameLayout3 = new FrameLayout(context);
                if (z) {
                    i = -1;
                } else {
                    i = -2;
                }
                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, i);
                layoutParams2.f611c = 80;
                coordinatorLayout.addView(frameLayout3, layoutParams2);
                myDialogBottom.s = frameLayout;
                myDialogBottom.t = coordinatorLayout;
                myDialogBottom.u = frameLayout3;
                frameLayout2.setListener(new ImageSizeListener() { // from class: com.mycompany.app.view.MyDialogBottom.4
                    @Override // com.mycompany.app.image.ImageSizeListener
                    public final void a(View view, int i2, int i3) {
                        Handler handler = MyDialogBottom.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                FrameLayout.LayoutParams layoutParams3;
                                int b02;
                                Handler handler2;
                                MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                                CoordinatorLayout coordinatorLayout2 = myDialogBottom2.t;
                                if (coordinatorLayout2 != null && (layoutParams3 = (FrameLayout.LayoutParams) coordinatorLayout2.getLayoutParams()) != null) {
                                    MainActivity mainActivity2 = myDialogBottom2.f;
                                    if (mainActivity2 == null) {
                                        b02 = -1;
                                    } else {
                                        b02 = mainActivity2.b0();
                                    }
                                    if (layoutParams3.width != b02) {
                                        layoutParams3.width = b02;
                                        FrameLayout frameLayout4 = myDialogBottom2.u;
                                        if (frameLayout4 != null) {
                                            frameLayout4.requestLayout();
                                        }
                                        if (MainConst.e && myDialogBottom2.Q && myDialogBottom2.k) {
                                            myDialogBottom2.O = b02;
                                            myDialogBottom2.z();
                                        }
                                        if (myDialogBottom2.Y == null || (handler2 = myDialogBottom2.i) == null) {
                                            return;
                                        }
                                        handler2.post(new AnonymousClass20());
                                    }
                                }
                            }
                        });
                    }
                });
                frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyDialogBottom.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                        if (myDialogBottom2.z && myDialogBottom2.A && myDialogBottom2.isShowing()) {
                            myDialogBottom2.cancel();
                        }
                    }
                });
                myDialogBottom.u.setOnTouchListener(new Object());
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static void c(MyDialogBottom myDialogBottom, WindowInsets windowInsets) {
        Insets insets;
        Insets insets2;
        int i;
        int i2;
        int b0;
        if (MainConst.e) {
            try {
                Insets insets3 = windowInsets.getInsets(WindowInsets.Type.statusBars());
                if (insets3 != null && (insets = windowInsets.getInsets(WindowInsets.Type.navigationBars())) != null && (insets2 = windowInsets.getInsets(WindowInsets.Type.ime())) != null) {
                    int i3 = insets3.top;
                    int i4 = 0;
                    if (i3 > 0) {
                        i = 0;
                        i2 = 0;
                    } else {
                        int i5 = insets3.bottom;
                        if (i5 > 0) {
                            i = 0;
                            i2 = 0;
                            i4 = i5;
                            i3 = 0;
                        } else {
                            int i6 = insets3.left;
                            if (i6 > 0) {
                                i = i6;
                                i3 = 0;
                            } else {
                                int i7 = insets3.right;
                                if (i7 > 0) {
                                    i2 = i7;
                                    i = 0;
                                    i3 = 0;
                                } else {
                                    i = 0;
                                    i3 = 0;
                                }
                            }
                            i2 = i3;
                        }
                    }
                    int i8 = insets.top;
                    if (i8 > 0) {
                        i3 = i8;
                    } else {
                        int i9 = insets2.bottom;
                        if (i9 <= 0 && (i9 = insets.bottom) <= 0) {
                            int i10 = insets.left;
                            if (i10 > 0) {
                                i = i10;
                            } else {
                                int i11 = insets.right;
                                if (i11 > 0) {
                                    i2 = i11;
                                }
                            }
                        }
                        i4 = i9;
                    }
                    myDialogBottom.K = i;
                    myDialogBottom.L = i3;
                    myDialogBottom.M = i2;
                    myDialogBottom.N = i4;
                    if (myDialogBottom.Q && myDialogBottom.k) {
                        MainActivity mainActivity = myDialogBottom.f;
                        if (mainActivity == null) {
                            b0 = -1;
                        } else {
                            b0 = mainActivity.b0();
                        }
                        myDialogBottom.O = b0;
                        myDialogBottom.P = i4;
                        myDialogBottom.z();
                    }
                    MyDiagBody myDiagBody = myDialogBottom.s;
                    if (myDiagBody != null) {
                        if (myDiagBody.getPaddingTop() != i3 || myDiagBody.getPaddingBottom() != i4 || myDiagBody.getPaddingLeft() != i || myDiagBody.getPaddingRight() != i2) {
                            myDiagBody.setPadding(i, i3, i2, i4);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean d(MyDialogBottom myDialogBottom, boolean z) {
        int i;
        if (myDialogBottom.f18633c && myDialogBottom.v != null) {
            if (z) {
                i = -1;
            } else {
                i = -2;
            }
            try {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, i);
                layoutParams.bottomMargin = myDialogBottom.w;
                myDialogBottom.u.addView(myDialogBottom.v, layoutParams);
                super.setContentView(myDialogBottom.s);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public final void A(View view) {
        MyBehaviorDialog myBehaviorDialog;
        if (!this.D && (myBehaviorDialog = this.y) != null) {
            if (myBehaviorDialog.s) {
                view = null;
            }
            myBehaviorDialog.t = view;
            myBehaviorDialog.D = new WeakReference(view);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f18633c = false;
        this.m = false;
        this.n = true;
        if (!this.o) {
            this.o = true;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogBottom.a(MyDialogBottom.this);
                }
            });
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18633c) {
            return false;
        }
        if (this.F != null && motionEvent.getActionMasked() == 0) {
            this.H = false;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean e() {
        MyPopupWrap myPopupWrap = this.Y;
        this.Y = null;
        if (myPopupWrap == null) {
            return false;
        }
        myPopupWrap.b();
        return true;
    }

    public final void f(View view, BotViewListener botViewListener) {
        this.p = botViewListener;
        this.v = view;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.3
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (!MyDialogBottom.b(myDialogBottom, true)) {
                    myDialogBottom.u();
                    return;
                }
                if (!MyDialogBottom.d(myDialogBottom, true)) {
                    myDialogBottom.u();
                    return;
                }
                Handler handler2 = myDialogBottom.i;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                        BotViewListener botViewListener2 = myDialogBottom2.p;
                        if (botViewListener2 != null) {
                            botViewListener2.a(myDialogBottom2.v);
                        }
                    }
                });
            }
        });
    }

    public final void g(View view, BotViewListener botViewListener) {
        this.p = botViewListener;
        this.v = view;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.2
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (!MyDialogBottom.b(myDialogBottom, false)) {
                    myDialogBottom.u();
                    return;
                }
                if (!MyDialogBottom.d(myDialogBottom, false)) {
                    myDialogBottom.u();
                    return;
                }
                Handler handler2 = myDialogBottom.i;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                        BotViewListener botViewListener2 = myDialogBottom2.p;
                        if (botViewListener2 != null) {
                            botViewListener2.a(myDialogBottom2.v);
                        }
                    }
                });
            }
        });
    }

    public final View h() {
        View view = this.g;
        if (view != null) {
            return view;
        }
        Window window = getWindow();
        if (window == null) {
            return this.g;
        }
        View decorView = window.getDecorView();
        this.g = decorView;
        return decorView;
    }

    public final WindowInsetsControllerCompat i() {
        if (this.h == null) {
            this.h = MainUtil.r4(getWindow(), h());
        }
        return this.h;
    }

    public final boolean j() {
        if (!this.l && !this.m && !this.n) {
            return false;
        }
        return true;
    }

    public final void k() {
        WindowManager.LayoutParams attributes;
        if (!this.f18633c) {
            u();
            return;
        }
        Window window = getWindow();
        View h = h();
        WindowInsetsControllerCompat i = i();
        boolean z = this.j;
        boolean z2 = this.k;
        if (window != null) {
            if (Build.VERSION.SDK_INT < 30) {
                if ((h != null || (h = window.getDecorView()) != null) && (attributes = window.getAttributes()) != null) {
                    int systemUiVisibility = h.getSystemUiVisibility();
                    if (!z) {
                        attributes.flags |= 1024;
                        systemUiVisibility |= 4;
                    }
                    if (!z2) {
                        attributes.flags = attributes.flags;
                        systemUiVisibility |= 4098;
                    }
                    window.setAttributes(attributes);
                    h.setSystemUiVisibility(systemUiVisibility);
                }
            } else if (i != null || (i = MainUtil.r4(window, h)) != null) {
                i.f();
            }
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.14
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (!myDialogBottom.f18633c) {
                    myDialogBottom.u();
                    return;
                }
                Window window2 = myDialogBottom.getWindow();
                View h2 = myDialogBottom.h();
                WindowInsetsControllerCompat i2 = myDialogBottom.i();
                boolean z3 = myDialogBottom.j;
                boolean z4 = myDialogBottom.k;
                if (window2 != null && Build.VERSION.SDK_INT >= 30 && (i2 != null || (i2 = MainUtil.r4(window2, h2)) != null)) {
                    if (!z3) {
                        i2.a(1);
                    }
                    if (!z4) {
                        i2.a(2);
                    }
                }
                Handler handler2 = myDialogBottom.i;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.14.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                        int i3 = MyDialogBottom.Z;
                        myDialogBottom2.v();
                    }
                });
            }
        });
    }

    public final void l(Context context) {
        this.f18633c = true;
        this.m = true;
        this.j = true;
        this.k = true;
        if (context instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) context;
            this.f = mainActivity;
            if (mainActivity.t0 && !mainActivity.v0) {
                this.j = PrefWeb.t;
                this.k = PrefWeb.u;
            }
        }
        this.i = new Handler(Looper.getMainLooper());
        this.z = true;
        this.A = true;
        this.B = true;
        this.w = (int) MainUtil.G(context, 10.0f);
        MainWebDestroy w = MainApp.w(context);
        if (w != null) {
            w.i = true;
        }
    }

    public final void m() {
        if (!MainConst.f16453c || this.X != null) {
            return;
        }
        this.X = new OnBackInvokedCallback() { // from class: com.mycompany.app.view.MyDialogBottom.19
            public final void onBackInvoked() {
                if (MyDialogBottom.this.e()) {
                    return;
                }
                MyDialogBottom.this.r();
            }
        };
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.X);
    }

    public final void n() {
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT < 30) {
                window.setSoftInputMode(16);
                return;
            }
            View h = h();
            if (h != null) {
                h.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.mycompany.app.view.MyDialogBottom.12
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        int i;
                        int i2;
                        Handler handler;
                        if (view == null || windowInsets == null) {
                            return windowInsets;
                        }
                        try {
                            boolean z = MainConst.e;
                            MyDialogBottom myDialogBottom = MyDialogBottom.this;
                            if (!z) {
                                i = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
                                if (MainConst.d && i > 0) {
                                    i2 = windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
                                    i -= i2;
                                }
                                view.setPadding(0, 0, 0, i);
                            } else {
                                MyDialogBottom.c(myDialogBottom, windowInsets);
                            }
                            if (myDialogBottom.Y != null && (handler = myDialogBottom.i) != null) {
                                handler.post(new AnonymousClass20());
                            }
                        } catch (Exception unused) {
                        }
                        return windowInsets;
                    }
                });
                if (MainConst.e) {
                    MainUtil.j7(window, false);
                }
            }
        }
    }

    public final boolean o() {
        if (!this.J && !this.m && !this.n) {
            return false;
        }
        return true;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (e()) {
            return;
        }
        r();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.l = z;
        super.onWindowFocusChanged(z);
    }

    public final boolean p() {
        MainActivity mainActivity = this.f;
        if (mainActivity == null) {
            return MainUtil.N5(getContext());
        }
        return mainActivity.h0();
    }

    public final boolean q() {
        MainActivity mainActivity = this.f;
        if (mainActivity == null) {
            return MainUtil.X5(getContext());
        }
        return mainActivity.B0;
    }

    public void r() {
        if (e()) {
            return;
        }
        dismiss();
    }

    public final void s(Runnable runnable) {
        ExecutorService executorService = this.I;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getContext());
            if (executorService == null) {
                return;
            } else {
                this.I = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.z != z) {
            this.z = z;
            MyBehaviorDialog myBehaviorDialog = this.y;
            if (myBehaviorDialog != null) {
                myBehaviorDialog.C(z);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z) {
            this.z = true;
        }
        this.A = z;
    }

    @Override // android.app.Dialog
    public final void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.r = onDismissListener;
        super.setOnDismissListener(onDismissListener);
    }

    @Override // android.app.Dialog
    public final void show() {
        if (!this.f18633c) {
            u();
            return;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass7());
    }

    public final void t(MyRecyclerView myRecyclerView, BotListListener botListListener) {
        this.F = myRecyclerView;
        this.G = botListListener;
        if (myRecyclerView == null) {
            return;
        }
        myRecyclerView.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.view.MyDialogBottom.17
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void a(int i) {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                MyRecyclerView myRecyclerView2 = myDialogBottom.F;
                if (myRecyclerView2 != null && myDialogBottom.H && i != 0) {
                    myRecyclerView2.p0();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView, int i, int i2) {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                MyRecyclerView myRecyclerView2 = myDialogBottom.F;
                if (myRecyclerView2 != null) {
                    boolean z = true;
                    if (myRecyclerView2.getScrollState() == 2 && myDialogBottom.F.canScrollVertically(-1) != myDialogBottom.F.canScrollVertically(1)) {
                        myDialogBottom.F.p0();
                    }
                    BotListListener botListListener2 = myDialogBottom.G;
                    if (botListListener2 != null) {
                        if (myDialogBottom.F.computeVerticalScrollOffset() <= 0) {
                            z = false;
                        }
                        botListListener2.a(z);
                    }
                }
            }
        });
    }

    public final void u() {
        this.f18633c = false;
        this.m = false;
        this.n = true;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.16
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                DialogInterface.OnDismissListener onDismissListener = myDialogBottom.r;
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(myDialogBottom);
                    myDialogBottom.r = null;
                }
                myDialogBottom.dismiss();
            }
        });
    }

    public final void v() {
        if (!this.f18633c) {
            u();
            return;
        }
        try {
            super.show();
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.15
                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler2;
                    MyDialogBottom myDialogBottom = MyDialogBottom.this;
                    if (myDialogBottom.f18633c) {
                        myDialogBottom.m = false;
                        Handler handler3 = myDialogBottom.i;
                        if (handler3 != null) {
                            handler3.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.15.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ShowAdListener showAdListener;
                                    MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                                    if (myDialogBottom2.f18633c && (showAdListener = myDialogBottom2.q) != null) {
                                        showAdListener.a();
                                    }
                                }
                            }, 200L);
                            if (Build.VERSION.SDK_INT < 30 || (handler2 = myDialogBottom.i) == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.15.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                                    if (!myDialogBottom2.f18633c) {
                                        return;
                                    }
                                    MainUtil.g7(myDialogBottom2.getWindow(), PrefPdf.o, PrefPdf.n);
                                }
                            });
                        }
                    }
                }
            });
        } catch (Exception unused) {
            u();
        }
    }

    public final void w() {
        int b0;
        boolean z = this.f18633c;
        if (!z) {
            u();
            return;
        }
        if (this.Q && this.k) {
            if (!z) {
                u();
                return;
            }
            if (MainConst.e) {
                MainActivity mainActivity = this.f;
                if (mainActivity == null) {
                    b0 = -1;
                } else {
                    b0 = mainActivity.b0();
                }
                this.O = b0;
            }
            z();
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.13
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogBottom myDialogBottom = MyDialogBottom.this;
                    if (!myDialogBottom.f18633c) {
                        myDialogBottom.u();
                        return;
                    }
                    int i = Build.VERSION.SDK_INT;
                    boolean k5 = MainUtil.k5(myDialogBottom.R);
                    boolean z2 = false;
                    boolean z3 = true;
                    if (!myDialogBottom.S ? k5 || (PrefWeb.O != 0 && myDialogBottom.T != 0) : k5 || PrefWeb.U) {
                        z2 = true;
                    }
                    if (i >= 26) {
                        z3 = MainApp.K1;
                    }
                    MainUtil.E7(myDialogBottom.getWindow(), myDialogBottom.h(), myDialogBottom.i(), z2, z3);
                    Handler handler2 = myDialogBottom.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogBottom.13.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyDialogBottom myDialogBottom2 = MyDialogBottom.this;
                            if (myDialogBottom2.j && myDialogBottom2.k) {
                                myDialogBottom2.v();
                            } else {
                                myDialogBottom2.k();
                            }
                        }
                    });
                }
            });
            return;
        }
        if (this.j && this.k) {
            v();
        } else {
            k();
        }
    }

    public final void x(int i, int i2, boolean z, boolean z2, boolean z3) {
        this.Q = true;
        this.R = z;
        this.S = z2;
        this.T = i;
        this.U = i2;
        this.V = z3;
    }

    public final void y(boolean z) {
        this.B = z;
        MyBehaviorDialog myBehaviorDialog = this.y;
        if (myBehaviorDialog != null) {
            myBehaviorDialog.o = z;
        }
    }

    public final void z() {
        boolean z;
        int i;
        int i2 = Build.VERSION.SDK_INT;
        Window window = getWindow();
        if (window != null) {
            int i3 = -16777216;
            if (i2 >= 26) {
                if (this.V) {
                    if (MainApp.K1) {
                        i = -14606047;
                    } else {
                        i = -1;
                    }
                    i3 = i;
                } else if (!MainApp.K1) {
                    i3 = -460552;
                }
            }
            int i4 = this.U;
            if (i4 != 0) {
                i3 = MainUtil.q1(i3, i4);
            }
            if (MainConst.e) {
                MyDiagBody myDiagBody = this.s;
                if (myDiagBody != null) {
                    int i5 = this.O;
                    int i6 = this.P;
                    boolean z2 = true;
                    if (myDiagBody.h == i5 && myDiagBody.i == i6) {
                        z = false;
                    } else {
                        myDiagBody.h = i5;
                        myDiagBody.i = i6;
                        if (i5 != 0 && i6 != 0) {
                            myDiagBody.a(myDiagBody.getWidth(), myDiagBody.getHeight());
                            z = true;
                        } else {
                            myDiagBody.invalidate();
                            return;
                        }
                    }
                    if (myDiagBody.f18632c != i3) {
                        myDiagBody.f18632c = i3;
                        if (myDiagBody.f == null) {
                            Paint paint = new Paint();
                            myDiagBody.f = paint;
                            paint.setAntiAlias(true);
                            myDiagBody.f.setStyle(Paint.Style.FILL);
                        }
                        myDiagBody.f.setColor(myDiagBody.f18632c);
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        myDiagBody.invalidate();
                        return;
                    }
                    return;
                }
                return;
            }
            if (MainUtil.O2(window) != i3) {
                MainUtil.t7(window, i3);
            }
        }
    }

    public MyDialogBottom(Context context, int i) {
        super(context, i);
        this.W = new MyBehaviorDialog.BottomSheetCallback() { // from class: com.mycompany.app.view.MyDialogBottom.18
            @Override // com.mycompany.app.behavior.MyBehaviorDialog.BottomSheetCallback
            public final void a(int i2) {
                MyDialogBottom myDialogBottom = MyDialogBottom.this;
                if (i2 == 5) {
                    myDialogBottom.cancel();
                    return;
                }
                MyRecyclerView myRecyclerView = myDialogBottom.F;
                if (myRecyclerView != null) {
                    if (i2 != 3 && i2 != 4) {
                        return;
                    }
                    myRecyclerView.p0();
                    myDialogBottom.H = true;
                }
            }
        };
        l(context);
    }
}
