package com.mycompany.app.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Insets;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.window.OnBackInvokedCallback;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MainWebDestroy;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.view.MyDialogBottom;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyDialogNormal extends Dialog {
    public static final /* synthetic */ int v = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18667c;
    public MainActivity f;
    public View g;
    public WindowInsetsControllerCompat h;
    public Handler i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public MyDialogBottom.BotViewListener n;
    public MyDialogBottom.UserShowListener o;
    public DialogInterface.OnDismissListener p;
    public View q;
    public ExecutorService r;
    public boolean s;
    public OnBackInvokedCallback t;
    public MyPopupWrap u;

    /* renamed from: com.mycompany.app.view.MyDialogNormal$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            final MyDialogNormal myDialogNormal = MyDialogNormal.this;
            if (!myDialogNormal.f18667c) {
                myDialogNormal.n();
                return;
            }
            View h = myDialogNormal.h();
            if (h != null) {
                ViewCompat.N(h, new WindowInsetsAnimationCompat.Callback() { // from class: com.mycompany.app.view.MyDialogNormal.4
                    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                    public final void a() {
                        Handler handler = MyDialogNormal.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyDialogNormal.this.s = false;
                            }
                        });
                    }

                    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                    public final void b() {
                        MyDialogNormal.this.s = true;
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
            if (!MainConst.e) {
                Handler handler = myDialogNormal.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyDialogNormal.b(MyDialogNormal.this);
                        }
                    });
                    return;
                }
                return;
            }
            Handler handler2 = myDialogNormal.i;
            if (handler2 == null) {
                return;
            }
            handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.3.2
                @Override // java.lang.Runnable
                public final void run() {
                    View h2;
                    final MyDialogNormal myDialogNormal2 = MyDialogNormal.this;
                    if (!myDialogNormal2.f18667c) {
                        myDialogNormal2.n();
                        return;
                    }
                    if (MainConst.e && (h2 = myDialogNormal2.h()) != null) {
                        h2.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.mycompany.app.view.MyDialogNormal.5
                            @Override // android.view.View.OnApplyWindowInsetsListener
                            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                                if (view == null || windowInsets == null) {
                                    return windowInsets;
                                }
                                MyDialogNormal myDialogNormal3 = MyDialogNormal.this;
                                MyDialogNormal.c(myDialogNormal3, windowInsets);
                                myDialogNormal3.f();
                                return windowInsets;
                            }
                        });
                        MainUtil.j7(myDialogNormal2.getWindow(), false);
                    }
                    Handler handler3 = myDialogNormal2.i;
                    if (handler3 == null) {
                        return;
                    }
                    handler3.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.3.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyDialogNormal.b(MyDialogNormal.this);
                        }
                    });
                }
            });
        }
    }

    public MyDialogNormal(Context context, int i) {
        super(context, i);
        this.f18667c = true;
        this.k = true;
        if (context instanceof MainActivity) {
            this.f = (MainActivity) context;
        }
        this.i = new Handler(Looper.getMainLooper());
        MainWebDestroy w = MainApp.w(context);
        if (w != null) {
            w.i = true;
        }
    }

    public static void a(MyDialogNormal myDialogNormal) {
        if (myDialogNormal.i == null) {
            return;
        }
        try {
            super.dismiss();
        } catch (Exception unused) {
            if (myDialogNormal.p != null) {
                myDialogNormal.p.onDismiss(myDialogNormal);
                myDialogNormal.p = null;
            }
        }
        MyPopupWrap myPopupWrap = myDialogNormal.u;
        myDialogNormal.u = null;
        if (myPopupWrap != null) {
            myPopupWrap.a();
        }
        MainWebDestroy w = MainApp.w(myDialogNormal.getContext());
        if (w != null) {
            w.i = false;
            w.d(true);
        }
        myDialogNormal.f = null;
        myDialogNormal.g = null;
        myDialogNormal.h = null;
        MainUtil.R6(myDialogNormal.i);
        myDialogNormal.i = null;
        myDialogNormal.n = null;
        myDialogNormal.o = null;
        myDialogNormal.q = null;
        myDialogNormal.r = null;
        myDialogNormal.t = null;
        myDialogNormal.l = false;
    }

    public static void b(MyDialogNormal myDialogNormal) {
        if (!myDialogNormal.f18667c) {
            myDialogNormal.n();
            return;
        }
        try {
            super.show();
            Handler handler = myDialogNormal.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.6

                /* renamed from: com.mycompany.app.view.MyDialogNormal$6$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                class AnonymousClass1 implements Runnable {
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.lang.Runnable] */
                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler2;
                    MyDialogNormal myDialogNormal2 = MyDialogNormal.this;
                    if (myDialogNormal2.f18667c) {
                        MyDialogBottom.UserShowListener userShowListener = myDialogNormal2.o;
                        if (userShowListener != null) {
                            userShowListener.a();
                        }
                        myDialogNormal2.k = false;
                        Handler handler3 = myDialogNormal2.i;
                        if (handler3 != 0) {
                            handler3.postDelayed(new Object(), 200L);
                            if (!PrefPdf.n || (handler2 = myDialogNormal2.i) == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.6.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyDialogNormal myDialogNormal3 = MyDialogNormal.this;
                                    if (!myDialogNormal3.f18667c) {
                                        return;
                                    }
                                    MainUtil.g7(myDialogNormal3.getWindow(), PrefPdf.o, PrefPdf.n);
                                }
                            });
                        }
                    }
                }
            });
        } catch (Exception unused) {
            myDialogNormal.n();
        }
    }

    public static void c(MyDialogNormal myDialogNormal, WindowInsets windowInsets) {
        Insets insets;
        Insets insets2;
        int i;
        int i2;
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
                    View view = myDialogNormal.q;
                    if (view != null) {
                        if (view.getPaddingTop() != i3 || view.getPaddingBottom() != i4 || view.getPaddingLeft() != i || view.getPaddingRight() != i2) {
                            view.setPadding(i, i3, i2, i4);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean d(MyDialogNormal myDialogNormal) {
        View view;
        if (!myDialogNormal.f18667c || (view = myDialogNormal.q) == null) {
            return false;
        }
        try {
            super.setContentView(view);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f18667c = false;
        this.k = false;
        this.l = true;
        if (!this.m) {
            this.m = true;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogNormal.a(MyDialogNormal.this);
                }
            });
        }
    }

    public final boolean e() {
        MyPopupWrap myPopupWrap = this.u;
        this.u = null;
        if (myPopupWrap == null) {
            return false;
        }
        myPopupWrap.b();
        return true;
    }

    public final void f() {
        Handler handler;
        if (this.u == null || (handler = this.i) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.9
            @Override // java.lang.Runnable
            public final void run() {
                int i = MyDialogNormal.v;
                MyDialogNormal myDialogNormal = MyDialogNormal.this;
                MyPopupWrap myPopupWrap = myDialogNormal.u;
                myDialogNormal.u = null;
                if (myPopupWrap == null) {
                    return;
                }
                myPopupWrap.a();
            }
        });
    }

    public final void g(View view, MyDialogBottom.BotViewListener botViewListener) {
        this.n = botViewListener;
        this.q = view;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.2
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogNormal myDialogNormal = MyDialogNormal.this;
                if (!MyDialogNormal.d(myDialogNormal)) {
                    myDialogNormal.n();
                    return;
                }
                Handler handler2 = myDialogNormal.i;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyDialogNormal myDialogNormal2 = MyDialogNormal.this;
                        MyDialogBottom.BotViewListener botViewListener2 = myDialogNormal2.n;
                        if (botViewListener2 != null) {
                            botViewListener2.a(myDialogNormal2.q);
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

    public final boolean i() {
        if (!this.j && !this.k && !this.l) {
            return false;
        }
        return true;
    }

    public final void j() {
        if (!MainConst.f16453c || this.t != null) {
            return;
        }
        this.t = new OnBackInvokedCallback() { // from class: com.mycompany.app.view.MyDialogNormal.8
            public final void onBackInvoked() {
                if (MyDialogNormal.this.e()) {
                    return;
                }
                MyDialogNormal.this.l();
            }
        };
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.t);
    }

    public final boolean k() {
        if (!this.s && !this.k && !this.l) {
            return false;
        }
        return true;
    }

    public void l() {
        if (e()) {
            return;
        }
        dismiss();
    }

    public final void m(Runnable runnable) {
        ExecutorService executorService = this.r;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getContext());
            if (executorService == null) {
                return;
            } else {
                this.r = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void n() {
        this.f18667c = false;
        this.k = false;
        this.l = true;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyDialogNormal.7
            @Override // java.lang.Runnable
            public final void run() {
                MyDialogNormal myDialogNormal = MyDialogNormal.this;
                DialogInterface.OnDismissListener onDismissListener = myDialogNormal.p;
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(myDialogNormal);
                    myDialogNormal.p = null;
                }
                myDialogNormal.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        this.j = z;
        super.onWindowFocusChanged(z);
    }

    @Override // android.app.Dialog
    public final void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.p = onDismissListener;
        super.setOnDismissListener(onDismissListener);
    }

    @Override // android.app.Dialog
    public final void show() {
        if (!this.f18667c) {
            n();
            return;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass3());
    }
}
