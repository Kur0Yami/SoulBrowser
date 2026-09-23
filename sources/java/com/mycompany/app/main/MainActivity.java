package com.mycompany.app.main;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.window.OnBackInvokedCallback;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.gms.common.ConnectionResult;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.view.MyEditAuto;
import com.mycompany.app.view.MyPopupWrap;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import kotlin.time.DurationKt;

/* loaded from: classes3.dex */
public class MainActivity extends AppCompatActivity {
    public static int b1;
    public static int c1;
    public static int d1;
    public static boolean e1;
    public int A0;
    public boolean B0;
    public ExecutorService C0;
    public MainHeightListener D0;
    public boolean E0;
    public ActivityResultRegistry$register$2 F;
    public View F0;
    public ActivityResultRegistry$register$2 G;
    public MainInsetListener G0;
    public ActivityResultRegistry$register$2 H;
    public MainViewerListener H0;
    public ActivityResultRegistry$register$2 I;
    public boolean I0;
    public ActivityResultRegistry$register$2 J;
    public int J0;
    public ActivityResultRegistry$register$2 K;
    public int K0;
    public ActivityResultRegistry$register$2 L;
    public int L0;
    public ActivityResultRegistry$register$2 M;
    public int M0;
    public ActivityResultRegistry$register$2 N;
    public int N0;
    public ActivityResultRegistry$register$2 O;
    public Handler O0;
    public ActivityResultRegistry$register$2 P;
    public View P0;
    public ActivityResultRegistry$register$2 Q;
    public View Q0;
    public ActivityResultRegistry$register$2 R;
    public View R0;
    public ActivityResultRegistry$register$2 S;
    public EventHandler S0;
    public ActivityResultRegistry$register$2 T;
    public boolean T0;
    public ActivityResultRegistry$register$2 U;
    public int U0;
    public ActivityResultRegistry$register$2 V;
    public SystemBarListener V0;
    public ActivityResultRegistry$register$2 W;
    public boolean W0;
    public ActivityResultRegistry$register$2 X;
    public OnBackInvokedCallback X0;
    public ActivityResultRegistry$register$2 Y;
    public MyEditAuto.KeyBackListener Y0;
    public ActivityResultRegistry$register$2 Z;
    public MyPopupWrap Z0;
    public ActivityResultRegistry$register$2 a0;
    public MyEditAuto a1;
    public ActivityResultRegistry$register$2 b0;
    public ActivityResultRegistry$register$2 c0;
    public ActivityResultRegistry$register$2 d0;
    public ActivityResultRegistry$register$2 e0;
    public ActivityResultRegistry$register$2 f0;
    public ActivityResultRegistry$register$2 g0;
    public ActivityResultRegistry$register$2 h0;
    public ActivityResultRegistry$register$2 i0;
    public ActivityResultRegistry$register$2 j0;
    public ActivityResultRegistry$register$2 k0;
    public ActivityResultRegistry$register$2 l0;
    public ActivityResultRegistry$register$2 m0;
    public ActivityResultRegistry$register$2 n0;
    public ActivityResultRegistry$register$2 o0;
    public ActivityResultRegistry$register$2 p0;
    public ActivityResultRegistry$register$2 q0;
    public View r0;
    public WindowInsetsControllerCompat s0;
    public boolean t0;
    public boolean u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public boolean y0;
    public Point z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainActivity$39, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass39 implements Runnable {
        public AnonymousClass39() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Locale locale;
            Handler handler;
            final MainActivity mainActivity = MainActivity.this;
            boolean z = mainActivity.w0;
            mainActivity.w0 = false;
            int i = MainApp.X0;
            LocaleListCompat h = AppCompatDelegate.h();
            if (h != null && !h.d()) {
                locale = h.c(0);
            } else {
                locale = null;
            }
            MainApp.I1 = locale;
            MainApp.J1 = locale;
            MainApp.j();
            Point s4 = MainUtil.s4(mainActivity);
            if (s4 != null) {
                mainActivity.z0 = s4;
                if (mainActivity.t0) {
                    MainActivity.b1 = s4.x;
                    MainActivity.c1 = s4.y;
                }
            }
            Point point = mainActivity.z0;
            boolean z2 = true;
            if (point != null && point.x > point.y) {
                mainActivity.A0 = 2;
            } else {
                mainActivity.A0 = 1;
            }
            if (point != null) {
                int i2 = point.x;
                int i3 = point.y;
                if (i2 != 0 && i3 != 0) {
                    if (i2 > i3) {
                        i2 = i3;
                    }
                    if (i2 >= MainApp.X0) {
                        z2 = false;
                    }
                    mainActivity.B0 = z2;
                }
            }
            if (z && !mainActivity.I0) {
                if (!MainConst.d && mainActivity.t0) {
                    if (PrefWeb.t) {
                        PrefMain.v = false;
                    }
                    if (PrefWeb.u) {
                        PrefMain.x = false;
                        PrefMain.w = 0;
                    }
                }
                if (!PrefMain.v || PrefMain.u <= 0 || !PrefMain.x || PrefMain.w <= 0) {
                    if ((PrefWeb.t || PrefWeb.u) && !mainActivity.h0() && (handler = mainActivity.O0) != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.40
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainHeightListener mainHeightListener;
                                if (!PrefMain.v || PrefMain.u <= 0 || !PrefMain.x || PrefMain.w <= 0) {
                                    if (PrefWeb.t || PrefWeb.u) {
                                        MainActivity mainActivity2 = MainActivity.this;
                                        if (!mainActivity2.h0()) {
                                            int i4 = PrefMain.u;
                                            int i5 = PrefMain.w;
                                            MainUtil.h(mainActivity2, mainActivity2.getWindow(), mainActivity2.a0());
                                            if ((i4 != PrefMain.u || i5 != PrefMain.w) && (mainHeightListener = mainActivity2.D0) != null) {
                                                mainHeightListener.a();
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainActivity$42, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass42 implements Runnable {
        public AnonymousClass42() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = MainActivity.b1;
            MainActivity mainActivity = MainActivity.this;
            if (mainActivity.g0()) {
                mainActivity.F0.setPadding(mainActivity.M0, mainActivity.K0, mainActivity.N0, mainActivity.L0);
                MainInsetListener mainInsetListener = mainActivity.G0;
                if (mainInsetListener != null) {
                    mainInsetListener.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainActivity$45, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass45 implements Runnable {
        public AnonymousClass45() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            View view = mainActivity.P0;
            if (view == null || view.getKeepScreenOn()) {
                return;
            }
            mainActivity.P0.setKeepScreenOn(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainActivity$46, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass46 implements Runnable {
        public AnonymousClass46() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            View view = mainActivity.P0;
            if (view == null || !view.getKeepScreenOn()) {
                return;
            }
            mainActivity.P0.setKeepScreenOn(false);
        }
    }

    /* renamed from: com.mycompany.app.main.MainActivity$47, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass47 implements Runnable {
        public AnonymousClass47() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean c2;
            boolean a2;
            boolean b;
            boolean c3;
            MainActivity mainActivity = MainActivity.this;
            if (mainActivity.O0 != null) {
                int i = Build.VERSION.SDK_INT;
                boolean z = false;
                if (i < 30) {
                    Window window = mainActivity.getWindow();
                    View a0 = mainActivity.a0();
                    SystemBarListener systemBarListener = mainActivity.V0;
                    if (systemBarListener == null) {
                        b = false;
                    } else {
                        b = systemBarListener.b();
                    }
                    SystemBarListener systemBarListener2 = mainActivity.V0;
                    if (systemBarListener2 == null) {
                        c3 = false;
                    } else {
                        c3 = systemBarListener2.c();
                    }
                    SystemBarListener systemBarListener3 = mainActivity.V0;
                    if (systemBarListener3 != null) {
                        z = systemBarListener3.a();
                    }
                    MainUtil.G7(window, a0, false, b, c3, z);
                    return;
                }
                SystemBarListener systemBarListener4 = mainActivity.V0;
                if (systemBarListener4 == null) {
                    c2 = false;
                } else {
                    c2 = systemBarListener4.c();
                }
                if (!c2) {
                    if (mainActivity.O0 == null) {
                        return;
                    }
                    Window window2 = mainActivity.getWindow();
                    SystemBarListener systemBarListener5 = mainActivity.V0;
                    if (systemBarListener5 == null) {
                        a2 = false;
                    } else {
                        a2 = systemBarListener5.a();
                    }
                    MainUtil.F7(window2, false, a2);
                    mainActivity.O0.post(new AnonymousClass48());
                    return;
                }
                Window window3 = mainActivity.getWindow();
                if (i < 35 && i >= 30) {
                    MainUtil.j7(window3, false);
                }
                mainActivity.O0.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.47.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity mainActivity2 = MainActivity.this;
                        if (mainActivity2.O0 == null) {
                            return;
                        }
                        MainUtil.H7(mainActivity2.getWindow());
                        mainActivity2.O0.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.47.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                boolean a3;
                                MainActivity mainActivity3 = MainActivity.this;
                                if (mainActivity3.O0 == null) {
                                    return;
                                }
                                Window window4 = mainActivity3.getWindow();
                                SystemBarListener systemBarListener6 = mainActivity3.V0;
                                if (systemBarListener6 == null) {
                                    a3 = false;
                                } else {
                                    a3 = systemBarListener6.a();
                                }
                                MainUtil.F7(window4, false, a3);
                                mainActivity3.O0.post(new AnonymousClass48());
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainActivity$48, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass48 implements Runnable {
        public AnonymousClass48() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean b;
            MainActivity mainActivity = MainActivity.this;
            if (mainActivity.O0 == null) {
                return;
            }
            Window window = mainActivity.getWindow();
            View a0 = mainActivity.a0();
            WindowInsetsControllerCompat c0 = mainActivity.c0();
            SystemBarListener systemBarListener = mainActivity.V0;
            if (systemBarListener == null) {
                b = false;
            } else {
                b = systemBarListener.b();
            }
            MainUtil.J7(window, a0, c0, false, b);
            mainActivity.O0.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.48.1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean b2;
                    MainActivity mainActivity2 = MainActivity.this;
                    if (mainActivity2.O0 == null) {
                        return;
                    }
                    Window window2 = mainActivity2.getWindow();
                    View a02 = mainActivity2.a0();
                    WindowInsetsControllerCompat c02 = mainActivity2.c0();
                    SystemBarListener systemBarListener2 = mainActivity2.V0;
                    if (systemBarListener2 == null) {
                        b2 = false;
                    } else {
                        b2 = systemBarListener2.b();
                    }
                    MainUtil.I7(window2, a02, c02, false, b2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainActivity$50, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass50 implements Runnable {
        public AnonymousClass50() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            MyPopupWrap myPopupWrap = mainActivity.Z0;
            mainActivity.Z0 = null;
            if (myPopupWrap == null) {
                return;
            }
            myPopupWrap.a();
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f16428a;

        public EventHandler(MainActivity mainActivity) {
            super(Looper.getMainLooper());
            this.f16428a = new WeakReference(mainActivity);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MainActivity mainActivity = (MainActivity) this.f16428a.get();
            if (mainActivity != null && message.what == 0) {
                mainActivity.q0(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface MainHeightListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface MainInsetListener {
        void a(int i);

        void b();
    }

    /* loaded from: classes3.dex */
    public interface MainViewerListener {
        void a(int i);
    }

    /* loaded from: classes3.dex */
    public interface SystemBarListener {
        boolean a();

        boolean b();

        boolean c();
    }

    public static void X(MainActivity mainActivity, WindowInsets windowInsets) {
        Insets insets;
        Insets insets2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Handler handler;
        if (MainConst.e && windowInsets != null) {
            try {
                Insets insets3 = windowInsets.getInsets(WindowInsets.Type.statusBars());
                if (insets3 != null && (insets = windowInsets.getInsets(WindowInsets.Type.navigationBars())) != null && (insets2 = windowInsets.getInsets(WindowInsets.Type.ime())) != null) {
                    if (mainActivity.t0 && !mainActivity.x0) {
                        mainActivity.j0(windowInsets);
                    }
                    int i6 = insets3.top;
                    int i7 = 0;
                    if (i6 > 0) {
                        i2 = i6;
                        i5 = i2;
                        i = 0;
                        i4 = 0;
                        i3 = 0;
                    } else {
                        int i8 = insets3.bottom;
                        if (i8 > 0) {
                            i2 = i8;
                            i4 = i2;
                            i = 0;
                            i5 = 0;
                        } else {
                            i = insets3.left;
                            if (i > 0) {
                                i2 = 0;
                            } else {
                                int i9 = insets3.right;
                                if (i9 > 0) {
                                    i3 = i9;
                                    i = 0;
                                    i2 = 0;
                                    i4 = 0;
                                    i5 = 0;
                                } else {
                                    i = 0;
                                    i2 = 0;
                                }
                            }
                            i4 = i2;
                            i5 = i4;
                        }
                        i3 = i5;
                    }
                    int i10 = insets.top;
                    if (i10 > 0) {
                        i7 = i10;
                        i5 = i7;
                    } else {
                        int i11 = insets.bottom;
                        if (i11 > 0) {
                            i7 = i11;
                            i4 = i7;
                        } else {
                            int i12 = insets.left;
                            if (i12 > 0) {
                                i = i12;
                            } else {
                                int i13 = insets.right;
                                if (i13 > 0) {
                                    i3 = i13;
                                }
                            }
                        }
                    }
                    int abs = Math.abs(insets2.bottom - insets2.top);
                    if (mainActivity.J0 != abs) {
                        mainActivity.J0 = abs;
                        MainInsetListener mainInsetListener = mainActivity.G0;
                        if (mainInsetListener != null) {
                            mainInsetListener.a(abs);
                        }
                    }
                    PrefMain.u = i2;
                    PrefMain.w = i7;
                    PrefMain.v = true;
                    PrefMain.x = true;
                    if (mainActivity.t0) {
                        d1 = i;
                    } else if (mainActivity.E0 && abs > i4) {
                        i4 = abs;
                    }
                    mainActivity.K0 = i5;
                    mainActivity.L0 = i4;
                    mainActivity.M0 = i;
                    mainActivity.N0 = i3;
                    if (mainActivity.u0) {
                        Handler handler2 = mainActivity.O0;
                        if (handler2 != null) {
                            handler2.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.43
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainActivity mainActivity2 = MainActivity.this;
                                    MainViewerListener mainViewerListener = mainActivity2.H0;
                                    if (mainViewerListener != null) {
                                        mainViewerListener.a(mainActivity2.L0);
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    if (mainActivity.g0() && (handler = mainActivity.O0) != null) {
                        handler.post(new AnonymousClass42());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final boolean Y() {
        MyEditAuto myEditAuto = this.a1;
        this.a1 = null;
        if (myEditAuto != null) {
            myEditAuto.d();
            return true;
        }
        MyPopupWrap myPopupWrap = this.Z0;
        this.Z0 = null;
        if (myPopupWrap == null) {
            return false;
        }
        myPopupWrap.b();
        return true;
    }

    public final void Z(boolean z) {
        boolean z2 = false;
        if (z && !MainUtil.V5(this)) {
            int i = b1;
            int i2 = c1;
            if (i != 0 && i2 != 0) {
                if (i < i2) {
                    i2 = i;
                    i = i2;
                }
                int i3 = PrefTts.F + PrefTts.G;
                if (i3 <= i / 3 && i - i3 > i2) {
                    z2 = true;
                }
            }
        }
        e1 = z2;
    }

    public final View a0() {
        Window window;
        View view = this.r0;
        if (view != null) {
            return view;
        }
        try {
            window = getWindow();
        } catch (Exception unused) {
        }
        if (window == null) {
            return this.r0;
        }
        this.r0 = window.getDecorView();
        return this.r0;
    }

    public final int b0() {
        Point point;
        int max;
        if (!MainUtil.V5(this) && (point = this.z0) != null) {
            int i = point.x;
            int i2 = point.y;
            if (i != 0 && i2 != 0 && (max = (int) (Math.max(i, i2) * 0.65f)) < i) {
                return max;
            }
            return -1;
        }
        return -1;
    }

    public final WindowInsetsControllerCompat c0() {
        if (this.s0 == null) {
            this.s0 = MainUtil.r4(getWindow(), a0());
        }
        return this.s0;
    }

    public final void d0() {
        View a0;
        if (!MainConst.e || this.I0 || (a0 = a0()) == null) {
            return;
        }
        this.I0 = true;
        a0.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.mycompany.app.main.MainActivity.41
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                MainActivity.X(MainActivity.this, windowInsets);
                return windowInsets;
            }
        });
        MainUtil.j7(getWindow(), false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked;
        if (this.P0 != null && ((actionMasked = motionEvent.getActionMasked()) == 1 || actionMasked == 3)) {
            q0(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e0(MyEditAuto.KeyBackListener keyBackListener) {
        int i;
        if (!MainConst.f16453c || this.X0 != null) {
            return;
        }
        this.Y0 = keyBackListener;
        this.X0 = new OnBackInvokedCallback() { // from class: com.mycompany.app.main.MainActivity.49
            public final void onBackInvoked() {
                MainActivity mainActivity = MainActivity.this;
                MyEditAuto.KeyBackListener keyBackListener2 = mainActivity.Y0;
                if (keyBackListener2 != null) {
                    if (keyBackListener2.a(true, true)) {
                        return;
                    }
                } else if (mainActivity.Y()) {
                    return;
                }
                MainActivity.this.l0();
            }
        };
        if (keyBackListener != null) {
            i = DurationKt.NANOS_IN_MILLIS;
        } else {
            i = 0;
        }
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(i, this.X0);
    }

    public final void f0() {
        if (!MainConst.e) {
            return;
        }
        d0();
    }

    public final boolean g0() {
        View view = this.F0;
        if (view == null) {
            return false;
        }
        if (view.getPaddingTop() == this.K0 && view.getPaddingBottom() == this.L0 && view.getPaddingLeft() == this.M0 && view.getPaddingRight() == this.N0) {
            return false;
        }
        return true;
    }

    public final boolean h0() {
        if (this.A0 == 0) {
            Point s4 = MainUtil.s4(this);
            if (s4 != null) {
                this.z0 = s4;
                if (this.t0) {
                    b1 = s4.x;
                    c1 = s4.y;
                }
            }
            Point point = this.z0;
            if (point != null && point.x > point.y) {
                this.A0 = 2;
            } else {
                this.A0 = 1;
            }
        }
        if (this.A0 == 2) {
            return true;
        }
        return false;
    }

    public final boolean i0() {
        if (this.x0) {
            return this.y0;
        }
        if (MainConst.d) {
            try {
                View a0 = a0();
                if (a0 != null) {
                    return j0(a0.getRootWindowInsets());
                }
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public void initMainScreenOn(View view) {
        this.P0 = view;
    }

    public final boolean j0(WindowInsets windowInsets) {
        int i;
        boolean z;
        int i2;
        if (!MainConst.d || windowInsets == null) {
            return false;
        }
        try {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.systemGestures());
            if (insets != null) {
                i = insets.left;
                if (i <= 0) {
                    i2 = insets.right;
                    if (i2 <= 0) {
                        z = false;
                        this.x0 = true;
                        this.y0 = z;
                        return z;
                    }
                }
                z = true;
                this.x0 = true;
                this.y0 = z;
                return z;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void k0(int i, int i2, Intent intent) {
    }

    public void l0() {
        if (Y()) {
            return;
        }
        finish();
    }

    public final void m0(Runnable runnable) {
        ExecutorService executorService = this.C0;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getApplicationContext());
            if (executorService == null) {
                return;
            } else {
                this.C0 = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void n0(View view, boolean z) {
        if (z) {
            this.Q0 = this.P0;
            this.P0 = view;
        } else {
            this.P0 = this.Q0;
            this.Q0 = null;
        }
        this.T0 = true;
        q0(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v100, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v103, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v106, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v109, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v112, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v28, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v37, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v40, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v43, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v46, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v49, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v52, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v55, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v58, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v61, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v64, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v67, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v70, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v73, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v76, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v79, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v82, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v85, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v88, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v91, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v94, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v97, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    public final void o0(Intent intent, int i) {
        switch (i) {
            case 0:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$2 = this.F;
                    if (activityResultRegistry$register$2 != null) {
                        activityResultRegistry$register$2.a(intent);
                        return;
                    }
                    return;
                }
                this.F = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.1
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(0, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 1:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$22 = this.G;
                    if (activityResultRegistry$register$22 != null) {
                        activityResultRegistry$register$22.a(intent);
                        return;
                    }
                    return;
                }
                this.G = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.2
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(1, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 2:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$23 = this.H;
                    if (activityResultRegistry$register$23 != null) {
                        activityResultRegistry$register$23.a(intent);
                        return;
                    }
                    return;
                }
                this.H = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.3
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(2, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 3:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$24 = this.I;
                    if (activityResultRegistry$register$24 != null) {
                        activityResultRegistry$register$24.a(intent);
                        return;
                    }
                    return;
                }
                this.I = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.4
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(3, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 4:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$25 = this.J;
                    if (activityResultRegistry$register$25 != null) {
                        activityResultRegistry$register$25.a(intent);
                        return;
                    }
                    return;
                }
                this.J = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.5
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(4, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 5:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$26 = this.K;
                    if (activityResultRegistry$register$26 != null) {
                        activityResultRegistry$register$26.a(intent);
                        return;
                    }
                    return;
                }
                this.K = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.6
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(5, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 6:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$27 = this.L;
                    if (activityResultRegistry$register$27 != null) {
                        activityResultRegistry$register$27.a(intent);
                        return;
                    }
                    return;
                }
                this.L = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.7
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(6, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 7:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$28 = this.M;
                    if (activityResultRegistry$register$28 != null) {
                        activityResultRegistry$register$28.a(intent);
                        return;
                    }
                    return;
                }
                this.M = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.8
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(7, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 8:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$29 = this.N;
                    if (activityResultRegistry$register$29 != null) {
                        activityResultRegistry$register$29.a(intent);
                        return;
                    }
                    return;
                }
                this.N = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.9
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(8, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 9:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$210 = this.O;
                    if (activityResultRegistry$register$210 != null) {
                        activityResultRegistry$register$210.a(intent);
                        return;
                    }
                    return;
                }
                this.O = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.10
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(9, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 10:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$211 = this.P;
                    if (activityResultRegistry$register$211 != null) {
                        activityResultRegistry$register$211.a(intent);
                        return;
                    }
                    return;
                }
                this.P = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.11
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(10, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 11:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$212 = this.Q;
                    if (activityResultRegistry$register$212 != null) {
                        activityResultRegistry$register$212.a(intent);
                        return;
                    }
                    return;
                }
                this.Q = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.12
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(11, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 12:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$213 = this.R;
                    if (activityResultRegistry$register$213 != null) {
                        activityResultRegistry$register$213.a(intent);
                        return;
                    }
                    return;
                }
                this.R = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.13
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(12, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 13:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$214 = this.S;
                    if (activityResultRegistry$register$214 != null) {
                        activityResultRegistry$register$214.a(intent);
                        return;
                    }
                    return;
                }
                this.S = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.14
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(13, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 14:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$215 = this.T;
                    if (activityResultRegistry$register$215 != null) {
                        activityResultRegistry$register$215.a(intent);
                        return;
                    }
                    return;
                }
                this.T = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.15
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(14, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 15:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$216 = this.U;
                    if (activityResultRegistry$register$216 != null) {
                        activityResultRegistry$register$216.a(intent);
                        return;
                    }
                    return;
                }
                this.U = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.16
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(15, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 16:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$217 = this.V;
                    if (activityResultRegistry$register$217 != null) {
                        activityResultRegistry$register$217.a(intent);
                        return;
                    }
                    return;
                }
                this.V = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.17
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(16, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 17:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$218 = this.W;
                    if (activityResultRegistry$register$218 != null) {
                        activityResultRegistry$register$218.a(intent);
                        return;
                    }
                    return;
                }
                this.W = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.18
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(17, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 18:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$219 = this.X;
                    if (activityResultRegistry$register$219 != null) {
                        activityResultRegistry$register$219.a(intent);
                        return;
                    }
                    return;
                }
                this.X = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.19
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(18, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 19:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$220 = this.Y;
                    if (activityResultRegistry$register$220 != null) {
                        activityResultRegistry$register$220.a(intent);
                        return;
                    }
                    return;
                }
                this.Y = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.20
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(19, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 20:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$221 = this.Z;
                    if (activityResultRegistry$register$221 != null) {
                        activityResultRegistry$register$221.a(intent);
                        return;
                    }
                    return;
                }
                this.Z = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.21
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(20, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 21:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$222 = this.a0;
                    if (activityResultRegistry$register$222 != null) {
                        activityResultRegistry$register$222.a(intent);
                        return;
                    }
                    return;
                }
                this.a0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.22
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(21, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 22:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$223 = this.b0;
                    if (activityResultRegistry$register$223 != null) {
                        activityResultRegistry$register$223.a(intent);
                        return;
                    }
                    return;
                }
                this.b0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.23
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(22, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case ConnectionResult.API_DISABLED /* 23 */:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$224 = this.c0;
                    if (activityResultRegistry$register$224 != null) {
                        activityResultRegistry$register$224.a(intent);
                        return;
                    }
                    return;
                }
                this.c0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.24
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(23, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$225 = this.d0;
                    if (activityResultRegistry$register$225 != null) {
                        activityResultRegistry$register$225.a(intent);
                        return;
                    }
                    return;
                }
                this.d0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.25
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(24, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 25:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$226 = this.e0;
                    if (activityResultRegistry$register$226 != null) {
                        activityResultRegistry$register$226.a(intent);
                        return;
                    }
                    return;
                }
                this.e0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.26
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(25, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 26:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$227 = this.f0;
                    if (activityResultRegistry$register$227 != null) {
                        activityResultRegistry$register$227.a(intent);
                        return;
                    }
                    return;
                }
                this.f0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.27
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(26, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 27:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$228 = this.g0;
                    if (activityResultRegistry$register$228 != null) {
                        activityResultRegistry$register$228.a(intent);
                        return;
                    }
                    return;
                }
                this.g0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.28
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(27, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 28:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$229 = this.h0;
                    if (activityResultRegistry$register$229 != null) {
                        activityResultRegistry$register$229.a(intent);
                        return;
                    }
                    return;
                }
                this.h0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.29
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(28, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 29:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$230 = this.i0;
                    if (activityResultRegistry$register$230 != null) {
                        activityResultRegistry$register$230.a(intent);
                        return;
                    }
                    return;
                }
                this.i0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.30
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(29, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 30:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$231 = this.j0;
                    if (activityResultRegistry$register$231 != null) {
                        activityResultRegistry$register$231.a(intent);
                        return;
                    }
                    return;
                }
                this.j0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.31
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(30, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 31:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$232 = this.k0;
                    if (activityResultRegistry$register$232 != null) {
                        activityResultRegistry$register$232.a(intent);
                        return;
                    }
                    return;
                }
                this.k0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.32
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(31, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 32:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$233 = this.l0;
                    if (activityResultRegistry$register$233 != null) {
                        activityResultRegistry$register$233.a(intent);
                        return;
                    }
                    return;
                }
                this.l0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.33
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(32, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 33:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$234 = this.m0;
                    if (activityResultRegistry$register$234 != null) {
                        activityResultRegistry$register$234.a(intent);
                        return;
                    }
                    return;
                }
                this.m0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.34
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(33, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 34:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$235 = this.n0;
                    if (activityResultRegistry$register$235 != null) {
                        activityResultRegistry$register$235.a(intent);
                        return;
                    }
                    return;
                }
                this.n0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.35
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(34, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 35:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$236 = this.o0;
                    if (activityResultRegistry$register$236 != null) {
                        activityResultRegistry$register$236.a(intent);
                        return;
                    }
                    return;
                }
                this.o0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.36
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(35, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 36:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$237 = this.p0;
                    if (activityResultRegistry$register$237 != null) {
                        activityResultRegistry$register$237.a(intent);
                        return;
                    }
                    return;
                }
                this.p0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.37
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(36, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            case 37:
                if (intent != null) {
                    ActivityResultRegistry$register$2 activityResultRegistry$register$238 = this.q0;
                    if (activityResultRegistry$register$238 != null) {
                        activityResultRegistry$register$238.a(intent);
                        return;
                    }
                    return;
                }
                this.q0 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.main.MainActivity.38
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj) {
                        ActivityResult activityResult = (ActivityResult) obj;
                        if (activityResult == null) {
                            return;
                        }
                        MainActivity.this.k0(37, activityResult.f53c, activityResult.f);
                    }
                });
                return;
            default:
                if (intent != null) {
                    startActivity(intent);
                    return;
                }
                return;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Handler handler;
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.A0 = 2;
        } else {
            this.A0 = 1;
        }
        m0(new AnonymousClass39());
        if (this.Z0 == null || (handler = this.O0) == null) {
            return;
        }
        handler.post(new AnonymousClass50());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.O0 = new Handler(Looper.getMainLooper());
        m0(new AnonymousClass39());
        if (!this.W0) {
            e0(null);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventHandler eventHandler = this.S0;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.S0 = null;
        }
        this.P0 = null;
        this.Q0 = null;
        this.R0 = null;
        MainUtil.R6(this.O0);
        this.O0 = null;
        this.r0 = null;
        this.s0 = null;
        this.z0 = null;
        this.C0 = null;
        this.F0 = null;
        this.G0 = null;
        this.D0 = null;
        this.V0 = null;
        this.X0 = null;
        this.Y0 = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        q0(true);
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        MainDownSvc mainDownSvc;
        Handler handler;
        super.onPause();
        q0(false);
        if (this.Z0 != null && (handler = this.O0) != null) {
            handler.post(new AnonymousClass50());
        }
        MainApp p = MainApp.p(getApplicationContext());
        if (p != null && p.u && (mainDownSvc = p.v) != null) {
            mainDownSvc.W(true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        MainDownSvc mainDownSvc;
        super.onResume();
        this.w0 = true;
        this.x0 = false;
        m0(new AnonymousClass39());
        this.T0 = true;
        q0(true);
        MainApp p = MainApp.p(getApplicationContext());
        if (p != null && p.u && (mainDownSvc = p.v) != null) {
            mainDownSvc.W(false);
        }
    }

    public final void p0() {
        Handler handler;
        Handler handler2;
        View view = this.P0;
        if (view != null) {
            int i = 3600000 - this.U0;
            if (i <= 0) {
                if (view != null && view.getKeepScreenOn() && (handler2 = this.O0) != null) {
                    handler2.post(new AnonymousClass46());
                    return;
                }
                return;
            }
            if (this.S0 == null) {
                this.S0 = new EventHandler(this);
            }
            this.S0.sendEmptyMessageDelayed(0, i);
            View view2 = this.P0;
            if (view2 == null || view2.getKeepScreenOn() || (handler = this.O0) == null) {
                return;
            }
            handler.post(new AnonymousClass45());
        }
    }

    public final void q0(boolean z) {
        Handler handler;
        Handler handler2;
        if (this.P0 != null) {
            EventHandler eventHandler = this.S0;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
                if (PrefPdf.m != 1) {
                    this.S0 = null;
                }
            }
            int i = PrefPdf.m;
            if (i == 2) {
                View view = this.P0;
                if (view != null && !view.getKeepScreenOn() && (handler2 = this.O0) != null) {
                    handler2.post(new AnonymousClass45());
                    return;
                }
                return;
            }
            if (z && i != 0) {
                if (!this.T0) {
                    p0();
                    return;
                } else {
                    this.T0 = false;
                    m0(new Runnable() { // from class: com.mycompany.app.main.MainActivity.44
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity mainActivity = MainActivity.this;
                            mainActivity.U0 = MainUtil.E3(mainActivity.getApplicationContext());
                            Handler handler3 = mainActivity.O0;
                            if (handler3 == null) {
                                return;
                            }
                            handler3.post(new Runnable() { // from class: com.mycompany.app.main.MainActivity.44.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainActivity mainActivity2 = MainActivity.this;
                                    int i2 = MainActivity.b1;
                                    mainActivity2.p0();
                                }
                            });
                        }
                    });
                    return;
                }
            }
            View view2 = this.P0;
            if (view2 == null || !view2.getKeepScreenOn() || (handler = this.O0) == null) {
                return;
            }
            handler.post(new AnonymousClass46());
        }
    }

    public final void r0() {
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass47());
    }

    public final void s0(View view, boolean z) {
        EventHandler eventHandler = this.S0;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (z) {
            this.R0 = this.P0;
            this.P0 = null;
            view.setKeepScreenOn(true);
        } else {
            view.setKeepScreenOn(false);
            this.P0 = this.R0;
            this.R0 = null;
            this.T0 = true;
            q0(true);
        }
    }

    public void setMainInsetView(View view) {
        Handler handler;
        if (MainConst.e) {
            this.F0 = view;
            if (!g0() || (handler = this.O0) == null) {
                return;
            }
            handler.post(new AnonymousClass42());
        }
    }

    public void t0(Intent intent, int i) {
        o0(intent, i);
    }
}
