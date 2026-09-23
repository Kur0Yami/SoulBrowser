package com.mycompany.app.lock;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogLockReset;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.lock.PatternLock;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.widget.WidgetSearchActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class PatternActivity extends MainActivity {
    public static final /* synthetic */ int y1 = 0;
    public Context f1;
    public View g1;
    public SystemRunnable h1;
    public MyMainRelative i1;
    public ImageView j1;
    public AppCompatTextView k1;
    public PatternLock l1;
    public MyButtonText m1;
    public MyLineText n1;
    public AppCompatTextView o1;
    public int p1;
    public int q1;
    public String r1;
    public boolean s1;
    public boolean t1;
    public boolean u1;
    public String v1;
    public boolean w1;
    public DialogLockReset x1;

    /* renamed from: com.mycompany.app.lock.PatternActivity$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements MainActivity.SystemBarListener {
        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean a() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean b() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean c() {
            return true;
        }
    }

    /* renamed from: com.mycompany.app.lock.PatternActivity$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            final PatternActivity patternActivity = PatternActivity.this;
            if (patternActivity.i1 != null) {
                patternActivity.l1.i();
                if (MainApp.K1) {
                    patternActivity.j1.setBackgroundResource(R.drawable.outline_lock_dark_84);
                    patternActivity.k1.setTextColor(-328966);
                    MyButtonText myButtonText = patternActivity.m1;
                    if (myButtonText != null) {
                        myButtonText.setTextColor(-328966);
                        patternActivity.m1.u(-16777216, -14211289);
                    }
                    MyLineText myLineText = patternActivity.n1;
                    if (myLineText != null) {
                        myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
                    }
                    AppCompatTextView appCompatTextView = patternActivity.o1;
                    if (appCompatTextView != null) {
                        appCompatTextView.setBackgroundResource(R.drawable.selector_normal_dark);
                    }
                } else {
                    patternActivity.j1.setBackgroundResource(R.drawable.outline_lock_black_84);
                    patternActivity.k1.setTextColor(-16777216);
                    MyButtonText myButtonText2 = patternActivity.m1;
                    if (myButtonText2 != null) {
                        myButtonText2.setTextColor(-16777216);
                        patternActivity.m1.u(-2039584, -3092272);
                    }
                    MyLineText myLineText2 = patternActivity.n1;
                    if (myLineText2 != null) {
                        myLineText2.setBackgroundResource(R.drawable.selector_normal_gray);
                    }
                    AppCompatTextView appCompatTextView2 = patternActivity.o1;
                    if (appCompatTextView2 != null) {
                        appCompatTextView2.setBackgroundResource(R.drawable.selector_normal_gray);
                    }
                }
                PatternLock patternLock = patternActivity.l1;
                patternLock.u.add(new PatternLock.PatternLockListener() { // from class: com.mycompany.app.lock.PatternActivity.4
                    @Override // com.mycompany.app.lock.PatternLock.PatternLockListener
                    public final void a(ArrayList arrayList) {
                        String str;
                        PatternActivity patternActivity2 = PatternActivity.this;
                        PatternLock patternLock2 = patternActivity2.l1;
                        if (patternLock2 != null) {
                            String h = PatternLock.h(patternLock2, arrayList);
                            if (TextUtils.isEmpty(h)) {
                                return;
                            }
                            if (patternActivity2.q1 == 1) {
                                patternActivity2.u1 = true;
                                if (!patternActivity2.t1) {
                                    patternActivity2.v1 = h;
                                    patternActivity2.y0(false);
                                    return;
                                } else {
                                    patternActivity2.y0(!h.equals(patternActivity2.v1));
                                    return;
                                }
                            }
                            int i = patternActivity2.p1;
                            if (i == 1) {
                                str = PrefSecret.A;
                            } else if (i == 2) {
                                str = PrefSecret.C;
                            } else if (i == 3) {
                                str = PrefSecret.E;
                            } else {
                                str = PrefSecret.t;
                            }
                            if (!h.equals(str)) {
                                patternActivity2.w1 = true;
                                patternActivity2.k1.setText(R.string.wrong_input);
                            } else {
                                if (patternActivity2.q1 == 4) {
                                    PatternActivity.u0(patternActivity2);
                                    return;
                                }
                                if (!TextUtils.isEmpty(patternActivity2.r1)) {
                                    Intent o4 = MainUtil.o4(patternActivity2.getApplicationContext());
                                    o4.putExtra("EXTRA_PATH", patternActivity2.r1);
                                    patternActivity2.startActivity(o4);
                                } else {
                                    patternActivity2.setResult(-1);
                                    patternActivity2.finish();
                                }
                            }
                        }
                    }

                    @Override // com.mycompany.app.lock.PatternLock.PatternLockListener
                    public final void b() {
                        PatternActivity patternActivity2 = PatternActivity.this;
                        if (patternActivity2.w1) {
                            patternActivity2.w1 = false;
                            AppCompatTextView appCompatTextView3 = patternActivity2.k1;
                            if (appCompatTextView3 != null) {
                                appCompatTextView3.setText((CharSequence) null);
                            }
                        }
                    }
                });
                int i = patternActivity.q1;
                if (i == 1) {
                    if (patternActivity.n1 != null && patternActivity.o1 != null) {
                        patternActivity.y0(false);
                        patternActivity.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PatternActivity.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PatternActivity patternActivity2 = PatternActivity.this;
                                PatternLock patternLock2 = patternActivity2.l1;
                                if (patternLock2 == null) {
                                    return;
                                }
                                patternActivity2.t1 = false;
                                patternActivity2.u1 = false;
                                patternActivity2.v1 = null;
                                patternLock2.i();
                                patternActivity2.y0(false);
                            }
                        });
                        patternActivity.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PatternActivity.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PatternActivity patternActivity2 = PatternActivity.this;
                                PatternLock patternLock2 = patternActivity2.l1;
                                if (patternLock2 == null) {
                                    return;
                                }
                                patternActivity2.u1 = false;
                                patternLock2.i();
                                if (!patternActivity2.t1) {
                                    patternActivity2.t1 = true;
                                    patternActivity2.y0(false);
                                    return;
                                }
                                int i2 = patternActivity2.p1;
                                if (i2 == 1) {
                                    PrefSecret.z = 1;
                                    PrefSecret.A = patternActivity2.v1;
                                    PrefSecret.v(patternActivity2.f1);
                                } else if (i2 == 2) {
                                    PrefSecret.B = 1;
                                    PrefSecret.C = patternActivity2.v1;
                                    PrefSecret.t(patternActivity2.f1);
                                } else if (i2 == 3) {
                                    PrefSecret.D = 1;
                                    PrefSecret.E = patternActivity2.v1;
                                    PrefSecret.w(patternActivity2.f1);
                                } else {
                                    PrefSecret.s = 1;
                                    PrefSecret.t = patternActivity2.v1;
                                    PrefSecret.u(patternActivity2.f1);
                                }
                                patternActivity2.setResult(-1);
                                patternActivity2.finish();
                            }
                        });
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (patternActivity.m1 != null) {
                        patternActivity.k1.setText((CharSequence) null);
                        patternActivity.m1.setText(R.string.secret_reset);
                        patternActivity.m1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PatternActivity.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PatternActivity.v0(PatternActivity.this);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (i == 3) {
                    if (patternActivity.m1 != null) {
                        patternActivity.k1.setText((CharSequence) null);
                        patternActivity.m1.setText(R.string.cancel);
                        patternActivity.m1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PatternActivity.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PatternActivity.this.finish();
                            }
                        });
                        return;
                    }
                    return;
                }
                if (patternActivity.m1 == null) {
                    return;
                }
                patternActivity.k1.setText((CharSequence) null);
                if (PrefSecret.u) {
                    patternActivity.m1.setText(R.string.normal_start);
                } else {
                    patternActivity.m1.setText(R.string.secret_reset);
                }
                patternActivity.m1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PatternActivity.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z = PrefSecret.u;
                        PatternActivity patternActivity2 = PatternActivity.this;
                        if (!z) {
                            PatternActivity.v0(patternActivity2);
                        } else {
                            patternActivity2.m0(new Runnable() { // from class: com.mycompany.app.lock.PatternActivity.9.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PrefSync.k = false;
                                    PatternActivity patternActivity3 = PatternActivity.this;
                                    PrefSync.u(patternActivity3.f1);
                                    MainUtil.Y4(patternActivity3.f1);
                                    if (patternActivity3.q1 == 4) {
                                        PatternActivity.u0(patternActivity3);
                                    } else {
                                        MainUtil.d7(patternActivity3, patternActivity3.r1, false);
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public class SystemRunnable implements Runnable {
        public SystemRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            PatternActivity patternActivity = PatternActivity.this;
            View view = patternActivity.g1;
            if (view == null || (view.getSystemUiVisibility() & 4) == 4) {
                return;
            }
            patternActivity.r0();
        }
    }

    public static void u0(PatternActivity patternActivity) {
        patternActivity.finishAffinity();
        Intent intent = new Intent(patternActivity.getApplicationContext(), (Class<?>) WidgetSearchActivity.class);
        intent.putExtra("EXTRA_LOCK", true);
        intent.putExtra("EXTRA_VOICE", patternActivity.s1);
        patternActivity.startActivity(intent);
    }

    public static void v0(PatternActivity patternActivity) {
        if (patternActivity.x1 != null) {
            return;
        }
        patternActivity.x0();
        DialogLockReset dialogLockReset = new DialogLockReset(patternActivity, patternActivity.p1, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.lock.PatternActivity.10
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                int i = PatternActivity.y1;
                PatternActivity patternActivity2 = PatternActivity.this;
                patternActivity2.x0();
                int i2 = patternActivity2.q1;
                if (i2 == 4) {
                    PatternActivity.u0(patternActivity2);
                    return;
                }
                if (i2 == 0) {
                    patternActivity2.finishAffinity();
                    Intent o4 = MainUtil.o4(patternActivity2.getApplicationContext());
                    if (!TextUtils.isEmpty(patternActivity2.r1)) {
                        o4.putExtra("EXTRA_PATH", patternActivity2.r1);
                    }
                    patternActivity2.startActivity(o4);
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("EXTRA_LOAD", true);
                patternActivity2.setResult(-1, intent);
                patternActivity2.finish();
            }
        });
        patternActivity.x1 = dialogLockReset;
        dialogLockReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.lock.PatternActivity.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = PatternActivity.y1;
                PatternActivity.this.x0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.q1 == 0) {
            moveTaskToBack(true);
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        MyButtonText myButtonText;
        MyLineText myLineText;
        AppCompatTextView appCompatTextView;
        int i;
        super.onCreate(bundle);
        MainUtil.C7(this);
        f0();
        this.f1 = getApplicationContext();
        w0(getIntent());
        this.V0 = new Object();
        if (this.q1 == 3 && getWindow() != null) {
            r0();
            if (Build.VERSION.SDK_INT < 30) {
                View a0 = a0();
                this.g1 = a0;
                if (a0 != null) {
                    this.h1 = new SystemRunnable();
                    a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.lock.PatternActivity.1
                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i2) {
                            PatternActivity patternActivity;
                            View view;
                            SystemRunnable systemRunnable;
                            if ((i2 & 4) != 4 && (view = (patternActivity = PatternActivity.this).g1) != null && (systemRunnable = patternActivity.h1) != null) {
                                view.postDelayed(systemRunnable, 800L);
                            }
                        }
                    });
                }
            }
        }
        int i2 = R.id.lock_button_view;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        myMainRelative.addView(linearLayout, a.h(-1, -1, 2, i2));
        View view = new View(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 2.0f;
        linearLayout.addView(view, layoutParams);
        int G = (int) MainUtil.G(this, 84.0f);
        ImageView imageView = new ImageView(this);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(G, G);
        layoutParams2.gravity = 1;
        linearLayout.addView(imageView, layoutParams2);
        View view2 = new View(this);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.5f;
        linearLayout.addView(view2, layoutParams3);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        linearLayout.addView(appCompatTextView2, layoutParams4);
        View view3 = new View(this);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams5.weight = 0.5f;
        linearLayout.addView(view3, layoutParams5);
        int G2 = (int) MainUtil.G(this, 280.0f);
        PatternLock patternLock = new PatternLock(this);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(G2, G2);
        layoutParams6.gravity = 1;
        linearLayout.addView(patternLock, layoutParams6);
        View view4 = new View(this);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams7.weight = 1.0f;
        linearLayout.addView(view4, layoutParams7);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(i2);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams8.addRule(12);
        myMainRelative.addView(linearLayout2, layoutParams8);
        if (this.q1 == 1) {
            myLineText = new MyLineText(this);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.retry);
            myLineText.s(this);
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams9.weight = 1.0f;
            linearLayout2.addView(myLineText, layoutParams9);
            appCompatTextView = new AppCompatTextView(this, null);
            appCompatTextView.setGravity(17);
            appCompatTextView.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams10.weight = 1.0f;
            linearLayout2.addView(appCompatTextView, layoutParams10);
            myButtonText = null;
        } else {
            int G3 = (int) MainUtil.G(this, 24.0f);
            myButtonText = new MyButtonText(this);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setGravity(17);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setTextSize(1, 16.0f);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams11.bottomMargin = MainApp.f1;
            layoutParams11.setMarginStart(G3);
            layoutParams11.setMarginEnd(G3);
            linearLayout2.addView(myButtonText, layoutParams11);
            myLineText = null;
            appCompatTextView = null;
        }
        this.i1 = myMainRelative;
        this.j1 = imageView;
        this.k1 = appCompatTextView2;
        this.l1 = patternLock;
        this.m1 = myButtonText;
        this.n1 = myLineText;
        this.o1 = appCompatTextView;
        setContentView(myMainRelative);
        setMainInsetView(this.i1);
        MyMainRelative myMainRelative2 = this.i1;
        Window window = getWindow();
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -460552;
        }
        myMainRelative2.b(window, i);
        initMainScreenOn(this.i1);
        this.t1 = false;
        this.u1 = false;
        this.v1 = null;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass3());
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        View view = this.g1;
        if (view != null) {
            SystemRunnable systemRunnable = this.h1;
            if (systemRunnable != null) {
                view.removeCallbacks(systemRunnable);
            }
            this.g1 = null;
        }
        this.h1 = null;
        MyButtonText myButtonText = this.m1;
        if (myButtonText != null) {
            myButtonText.t();
            this.m1 = null;
        }
        MyLineText myLineText = this.n1;
        if (myLineText != null) {
            myLineText.u();
            this.n1 = null;
        }
        this.i1 = null;
        this.j1 = null;
        this.k1 = null;
        this.l1 = null;
        this.o1 = null;
        this.v1 = null;
        this.r1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        w0(intent);
        this.t1 = false;
        this.u1 = false;
        this.v1 = null;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass3());
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        x0();
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.lock.PatternActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                PatternActivity patternActivity = PatternActivity.this;
                if (patternActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(patternActivity.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.q1 == 3 && Build.VERSION.SDK_INT < 30) {
            r0();
        }
    }

    public final void w0(Intent intent) {
        if (intent == null) {
            return;
        }
        this.p1 = intent.getIntExtra("EXTRA_PASS", 0);
        int intExtra = intent.getIntExtra("EXTRA_TYPE", 0);
        this.q1 = intExtra;
        if (intExtra == 0) {
            this.r1 = intent.getStringExtra("EXTRA_PATH");
        } else {
            this.r1 = null;
        }
        if (this.q1 == 4) {
            this.s1 = intent.getBooleanExtra("EXTRA_VOICE", false);
        } else {
            this.s1 = false;
        }
    }

    public final void x0() {
        DialogLockReset dialogLockReset = this.x1;
        if (dialogLockReset != null) {
            dialogLockReset.dismiss();
            this.x1 = null;
        }
    }

    public final void y0(boolean z) {
        int i;
        int i2;
        if (this.k1 != null) {
            int i3 = -14784824;
            int i4 = -2434342;
            if (TextUtils.isEmpty(this.v1)) {
                this.t1 = false;
                MyLineText myLineText = this.n1;
                if (myLineText != null) {
                    myLineText.setEnabled(false);
                    MyLineText myLineText2 = this.n1;
                    if (MainApp.K1) {
                        i2 = -8355712;
                    } else {
                        i2 = -2434342;
                    }
                    myLineText2.setTextColor(i2);
                }
            } else {
                MyLineText myLineText3 = this.n1;
                if (myLineText3 != null) {
                    myLineText3.setEnabled(true);
                    MyLineText myLineText4 = this.n1;
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -14784824;
                    }
                    myLineText4.setTextColor(i);
                }
            }
            this.w1 = z;
            if (z) {
                this.k1.setText(R.string.wrong_input);
                AppCompatTextView appCompatTextView = this.o1;
                if (appCompatTextView != null) {
                    appCompatTextView.setEnabled(false);
                    AppCompatTextView appCompatTextView2 = this.o1;
                    if (MainApp.K1) {
                        i4 = -8355712;
                    }
                    appCompatTextView2.setTextColor(i4);
                    return;
                }
                return;
            }
            if (this.t1) {
                if (this.u1) {
                    this.k1.setText((CharSequence) null);
                    AppCompatTextView appCompatTextView3 = this.o1;
                    if (appCompatTextView3 != null) {
                        appCompatTextView3.setText(R.string.apply);
                    }
                } else {
                    this.k1.setText(R.string.reinput);
                    AppCompatTextView appCompatTextView4 = this.o1;
                    if (appCompatTextView4 != null) {
                        appCompatTextView4.setText(R.string.continue_input);
                    }
                }
            } else {
                this.k1.setText(R.string.input);
                AppCompatTextView appCompatTextView5 = this.o1;
                if (appCompatTextView5 != null) {
                    appCompatTextView5.setText(R.string.continue_input);
                }
            }
            AppCompatTextView appCompatTextView6 = this.o1;
            if (appCompatTextView6 != null) {
                if (this.u1) {
                    appCompatTextView6.setEnabled(true);
                    AppCompatTextView appCompatTextView7 = this.o1;
                    if (MainApp.K1) {
                        i3 = -328966;
                    }
                    appCompatTextView7.setTextColor(i3);
                    return;
                }
                appCompatTextView6.setEnabled(false);
                AppCompatTextView appCompatTextView8 = this.o1;
                if (MainApp.K1) {
                    i4 = -8355712;
                }
                appCompatTextView8.setTextColor(i4);
            }
        }
    }
}
