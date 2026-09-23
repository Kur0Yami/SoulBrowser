package com.mycompany.app.lock;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogLockReset;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.widget.WidgetSearchActivity;

/* loaded from: classes3.dex */
public class PassActivity extends MainActivity {
    public static final /* synthetic */ int y1 = 0;
    public Context f1;
    public View g1;
    public SystemRunnable h1;
    public MyMainRelative i1;
    public ImageView j1;
    public AppCompatTextView k1;
    public MyButtonRelative l1;
    public MyEditPure m1;
    public MyButtonImage n1;
    public MyButtonText o1;
    public MyLineText p1;
    public AppCompatTextView q1;
    public int r1;
    public int s1;
    public String t1;
    public boolean u1;
    public boolean v1;
    public String w1;
    public DialogLockReset x1;

    /* renamed from: com.mycompany.app.lock.PassActivity$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements MainActivity.SystemBarListener {
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

    /* renamed from: com.mycompany.app.lock.PassActivity$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            final PassActivity passActivity = PassActivity.this;
            if (passActivity.i1 != null) {
                passActivity.m1.setText((CharSequence) null);
                if (MainApp.K1) {
                    passActivity.j1.setBackgroundResource(R.drawable.outline_lock_dark_84);
                    passActivity.k1.setTextColor(-328966);
                    passActivity.l1.setBgNorColor(-16777216);
                    passActivity.m1.setTextColor(-328966);
                    MyButtonImage myButtonImage = passActivity.n1;
                    if (myButtonImage != null) {
                        myButtonImage.setBgPreColor(-12632257);
                    }
                    MyButtonText myButtonText = passActivity.o1;
                    if (myButtonText != null) {
                        myButtonText.setTextColor(-328966);
                        passActivity.o1.u(-16777216, -14211289);
                    }
                    MyLineText myLineText = passActivity.p1;
                    if (myLineText != null) {
                        myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
                    }
                    AppCompatTextView appCompatTextView = passActivity.q1;
                    if (appCompatTextView != null) {
                        appCompatTextView.setBackgroundResource(R.drawable.selector_normal_dark);
                    }
                } else {
                    passActivity.j1.setBackgroundResource(R.drawable.outline_lock_black_84);
                    passActivity.k1.setTextColor(-16777216);
                    passActivity.l1.setBgNorColor(-1);
                    passActivity.m1.setTextColor(-16777216);
                    MyButtonImage myButtonImage2 = passActivity.n1;
                    if (myButtonImage2 != null) {
                        myButtonImage2.setBgPreColor(553648128);
                    }
                    MyButtonText myButtonText2 = passActivity.o1;
                    if (myButtonText2 != null) {
                        myButtonText2.setTextColor(-16777216);
                        passActivity.o1.u(-2039584, -3092272);
                    }
                    MyLineText myLineText2 = passActivity.p1;
                    if (myLineText2 != null) {
                        myLineText2.setBackgroundResource(R.drawable.selector_normal_gray);
                    }
                    AppCompatTextView appCompatTextView2 = passActivity.q1;
                    if (appCompatTextView2 != null) {
                        appCompatTextView2.setBackgroundResource(R.drawable.selector_normal_gray);
                    }
                }
                passActivity.m1.setInputType(129);
                passActivity.m1.setTransformationMethod(PasswordTransformationMethod.getInstance());
                passActivity.m1.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.lock.PassActivity.4
                    @Override // android.text.TextWatcher
                    public final void afterTextChanged(Editable editable) {
                        String str;
                        int length;
                        int i2;
                        int i3;
                        int i4;
                        PassActivity passActivity2 = PassActivity.this;
                        if (passActivity2.k1 != null) {
                            if (editable != null) {
                                str = editable.toString();
                            } else {
                                str = null;
                            }
                            if (TextUtils.isEmpty(str)) {
                                length = 0;
                            } else {
                                length = str.length();
                            }
                            if (passActivity2.s1 == 1) {
                                int i5 = -2434342;
                                int i6 = -14784824;
                                if (length == 0) {
                                    if (passActivity2.v1) {
                                        passActivity2.k1.setText(R.string.reinput);
                                        MyLineText myLineText3 = passActivity2.p1;
                                        if (myLineText3 != null) {
                                            myLineText3.setEnabled(true);
                                            MyLineText myLineText4 = passActivity2.p1;
                                            if (MainApp.K1) {
                                                i4 = -328966;
                                            } else {
                                                i4 = -14784824;
                                            }
                                            myLineText4.setTextColor(i4);
                                        }
                                    } else {
                                        passActivity2.k1.setText((CharSequence) null);
                                        MyLineText myLineText5 = passActivity2.p1;
                                        if (myLineText5 != null) {
                                            myLineText5.setEnabled(false);
                                            MyLineText myLineText6 = passActivity2.p1;
                                            if (MainApp.K1) {
                                                i3 = -8355712;
                                            } else {
                                                i3 = -2434342;
                                            }
                                            myLineText6.setTextColor(i3);
                                        }
                                    }
                                } else {
                                    passActivity2.k1.setText((CharSequence) null);
                                    MyLineText myLineText7 = passActivity2.p1;
                                    if (myLineText7 != null) {
                                        myLineText7.setEnabled(true);
                                        MyLineText myLineText8 = passActivity2.p1;
                                        if (MainApp.K1) {
                                            i2 = -328966;
                                        } else {
                                            i2 = -14784824;
                                        }
                                        myLineText8.setTextColor(i2);
                                    }
                                }
                                AppCompatTextView appCompatTextView3 = passActivity2.q1;
                                if (appCompatTextView3 != null) {
                                    if (length < 4) {
                                        appCompatTextView3.setEnabled(false);
                                        AppCompatTextView appCompatTextView4 = passActivity2.q1;
                                        if (MainApp.K1) {
                                            i5 = -8355712;
                                        }
                                        appCompatTextView4.setTextColor(i5);
                                        return;
                                    }
                                    appCompatTextView3.setEnabled(true);
                                    AppCompatTextView appCompatTextView5 = passActivity2.q1;
                                    if (MainApp.K1) {
                                        i6 = -328966;
                                    }
                                    appCompatTextView5.setTextColor(i6);
                                    return;
                                }
                                return;
                            }
                            passActivity2.k1.setText((CharSequence) null);
                            MyButtonImage myButtonImage3 = passActivity2.n1;
                            if (myButtonImage3 != null) {
                                if (length < 4) {
                                    myButtonImage3.setEnabled(false);
                                    if (!MainApp.K1) {
                                        passActivity2.n1.setAlpha(0.2f);
                                        return;
                                    }
                                    return;
                                }
                                myButtonImage3.setEnabled(true);
                            }
                        }
                    }

                    @Override // android.text.TextWatcher
                    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }
                });
                passActivity.m1.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.lock.PassActivity.5
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                        PassActivity.u0(PassActivity.this);
                        return true;
                    }
                });
                MyButtonImage myButtonImage3 = passActivity.n1;
                if (myButtonImage3 != null) {
                    if (MainApp.K1) {
                        myButtonImage3.setImageResource(R.drawable.outline_check_dark_24);
                    } else {
                        myButtonImage3.setImageResource(R.drawable.outline_check_black_24);
                    }
                    if (!MainApp.K1) {
                        passActivity.n1.setAlpha(0.2f);
                    }
                    passActivity.n1.setEnabled(false);
                    passActivity.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PassActivity.u0(PassActivity.this);
                        }
                    });
                }
                int i2 = passActivity.s1;
                if (i2 == 1) {
                    if (passActivity.p1 != null && passActivity.q1 != null) {
                        passActivity.m1.setHint(R.string.pass_hint);
                        passActivity.k1.setText((CharSequence) null);
                        passActivity.p1.setEnabled(false);
                        MyLineText myLineText3 = passActivity.p1;
                        int i3 = -2434342;
                        if (MainApp.K1) {
                            i = -8355712;
                        } else {
                            i = -2434342;
                        }
                        myLineText3.setTextColor(i);
                        passActivity.q1.setText(R.string.continue_input);
                        passActivity.q1.setEnabled(false);
                        AppCompatTextView appCompatTextView3 = passActivity.q1;
                        if (MainApp.K1) {
                            i3 = -8355712;
                        }
                        appCompatTextView3.setTextColor(i3);
                        passActivity.p1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i4;
                                PassActivity passActivity2 = PassActivity.this;
                                MyEditPure myEditPure = passActivity2.m1;
                                if (myEditPure == null) {
                                    return;
                                }
                                passActivity2.v1 = false;
                                passActivity2.w1 = null;
                                myEditPure.setText((CharSequence) null);
                                passActivity2.k1.setText((CharSequence) null);
                                passActivity2.p1.setEnabled(false);
                                MyLineText myLineText4 = passActivity2.p1;
                                int i5 = -2434342;
                                if (MainApp.K1) {
                                    i4 = -8355712;
                                } else {
                                    i4 = -2434342;
                                }
                                myLineText4.setTextColor(i4);
                                passActivity2.q1.setText(R.string.continue_input);
                                passActivity2.q1.setEnabled(false);
                                AppCompatTextView appCompatTextView4 = passActivity2.q1;
                                if (MainApp.K1) {
                                    i5 = -8355712;
                                }
                                appCompatTextView4.setTextColor(i5);
                            }
                        });
                        passActivity.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PassActivity.u0(PassActivity.this);
                            }
                        });
                    } else {
                        return;
                    }
                } else if (i2 == 2) {
                    if (passActivity.o1 != null) {
                        passActivity.m1.setHint((CharSequence) null);
                        passActivity.k1.setText((CharSequence) null);
                        passActivity.o1.setText(R.string.secret_reset);
                        passActivity.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PassActivity.v0(PassActivity.this);
                            }
                        });
                    } else {
                        return;
                    }
                } else if (i2 == 3) {
                    if (passActivity.o1 != null) {
                        passActivity.m1.setHint((CharSequence) null);
                        passActivity.k1.setText((CharSequence) null);
                        passActivity.o1.setText(R.string.cancel);
                        passActivity.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                PassActivity.this.finish();
                            }
                        });
                    } else {
                        return;
                    }
                } else {
                    if (passActivity.o1 == null) {
                        return;
                    }
                    passActivity.m1.setHint((CharSequence) null);
                    passActivity.k1.setText((CharSequence) null);
                    if (PrefSecret.u) {
                        passActivity.o1.setText(R.string.normal_start);
                    } else {
                        passActivity.o1.setText(R.string.secret_reset);
                    }
                    passActivity.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PassActivity.11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            boolean z = PrefSecret.u;
                            PassActivity passActivity2 = PassActivity.this;
                            if (!z) {
                                PassActivity.v0(passActivity2);
                            } else {
                                passActivity2.m0(new Runnable() { // from class: com.mycompany.app.lock.PassActivity.11.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        PrefSync.k = false;
                                        PassActivity passActivity3 = PassActivity.this;
                                        PrefSync.u(passActivity3.f1);
                                        MainUtil.Y4(passActivity3.f1);
                                        if (passActivity3.s1 == 4) {
                                            passActivity3.x0();
                                        } else {
                                            MainUtil.d7(passActivity3, passActivity3.t1, false);
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
                passActivity.m1.post(new Runnable() { // from class: com.mycompany.app.lock.PassActivity.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        PassActivity passActivity2 = PassActivity.this;
                        MyEditPure myEditPure = passActivity2.m1;
                        if (myEditPure == null) {
                            return;
                        }
                        myEditPure.requestFocus();
                        passActivity2.m1.postDelayed(new Runnable() { // from class: com.mycompany.app.lock.PassActivity.12.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyEditPure myEditPure2;
                                PassActivity passActivity3 = PassActivity.this;
                                Context context = passActivity3.f1;
                                if (context != null && (myEditPure2 = passActivity3.m1) != null) {
                                    MainUtil.c8(context, myEditPure2);
                                }
                            }
                        }, 200L);
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
            PassActivity passActivity = PassActivity.this;
            View view = passActivity.g1;
            if (view == null || (view.getSystemUiVisibility() & 4) == 4) {
                return;
            }
            passActivity.r0();
        }
    }

    public static void u0(PassActivity passActivity) {
        String str;
        int i;
        MyEditPure myEditPure = passActivity.m1;
        if (myEditPure != null) {
            String Q0 = MainUtil.Q0(myEditPure, false);
            if (!TextUtils.isEmpty(Q0)) {
                if (passActivity.s1 == 1) {
                    if (Q0.length() >= 4) {
                        MyLineText myLineText = passActivity.p1;
                        if (myLineText != null) {
                            myLineText.setEnabled(true);
                            MyLineText myLineText2 = passActivity.p1;
                            if (MainApp.K1) {
                                i = -328966;
                            } else {
                                i = -14784824;
                            }
                            myLineText2.setTextColor(i);
                        }
                        int i2 = -2434342;
                        if (!passActivity.v1) {
                            passActivity.v1 = true;
                            passActivity.w1 = Q0;
                            passActivity.m1.setText((CharSequence) null);
                            passActivity.k1.setText(R.string.reinput);
                            AppCompatTextView appCompatTextView = passActivity.q1;
                            if (appCompatTextView != null) {
                                appCompatTextView.setText(R.string.apply);
                                passActivity.q1.setEnabled(false);
                                AppCompatTextView appCompatTextView2 = passActivity.q1;
                                if (MainApp.K1) {
                                    i2 = -8355712;
                                }
                                appCompatTextView2.setTextColor(i2);
                                return;
                            }
                            return;
                        }
                        if (!Q0.equals(passActivity.w1)) {
                            passActivity.m1.selectAll();
                            passActivity.k1.setText(R.string.wrong_input);
                            AppCompatTextView appCompatTextView3 = passActivity.q1;
                            if (appCompatTextView3 != null) {
                                appCompatTextView3.setEnabled(false);
                                AppCompatTextView appCompatTextView4 = passActivity.q1;
                                if (MainApp.K1) {
                                    i2 = -8355712;
                                }
                                appCompatTextView4.setTextColor(i2);
                                return;
                            }
                            return;
                        }
                        int i3 = passActivity.r1;
                        if (i3 == 1) {
                            PrefSecret.z = 3;
                            PrefSecret.A = passActivity.w1;
                            PrefSecret.v(passActivity.f1);
                        } else if (i3 == 2) {
                            PrefSecret.B = 3;
                            PrefSecret.C = passActivity.w1;
                            PrefSecret.t(passActivity.f1);
                        } else if (i3 == 3) {
                            PrefSecret.D = 3;
                            PrefSecret.E = passActivity.w1;
                            PrefSecret.w(passActivity.f1);
                        } else {
                            PrefSecret.s = 3;
                            PrefSecret.t = passActivity.w1;
                            PrefSecret.u(passActivity.f1);
                        }
                        passActivity.setResult(-1);
                        passActivity.finish();
                        return;
                    }
                    return;
                }
                int i4 = passActivity.r1;
                if (i4 == 1) {
                    str = PrefSecret.A;
                } else if (i4 == 2) {
                    str = PrefSecret.C;
                } else if (i4 == 3) {
                    str = PrefSecret.E;
                } else {
                    str = PrefSecret.t;
                }
                if (!Q0.equals(str)) {
                    passActivity.m1.selectAll();
                    passActivity.k1.setText(R.string.wrong_input);
                } else {
                    if (passActivity.s1 == 4) {
                        passActivity.x0();
                        return;
                    }
                    if (!TextUtils.isEmpty(passActivity.t1)) {
                        Intent o4 = MainUtil.o4(passActivity.getApplicationContext());
                        o4.putExtra("EXTRA_PATH", passActivity.t1);
                        passActivity.startActivity(o4);
                    } else {
                        passActivity.setResult(-1);
                        passActivity.finish();
                    }
                }
            }
        }
    }

    public static void v0(PassActivity passActivity) {
        if (passActivity.x1 != null) {
            return;
        }
        passActivity.y0();
        DialogLockReset dialogLockReset = new DialogLockReset(passActivity, passActivity.r1, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.lock.PassActivity.13
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                int i = PassActivity.y1;
                PassActivity passActivity2 = PassActivity.this;
                passActivity2.y0();
                int i2 = passActivity2.s1;
                if (i2 == 4) {
                    passActivity2.x0();
                    return;
                }
                if (i2 == 0) {
                    passActivity2.finishAffinity();
                    Intent o4 = MainUtil.o4(passActivity2.getApplicationContext());
                    if (!TextUtils.isEmpty(passActivity2.t1)) {
                        o4.putExtra("EXTRA_PATH", passActivity2.t1);
                    }
                    passActivity2.startActivity(o4);
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("EXTRA_LOAD", true);
                passActivity2.setResult(-1, intent);
                passActivity2.finish();
            }
        });
        passActivity.x1 = dialogLockReset;
        dialogLockReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.lock.PassActivity.14
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = PassActivity.y1;
                PassActivity.this.y0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.s1 == 0) {
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
        MyButtonImage myButtonImage;
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
        if (this.s1 == 3 && getWindow() != null) {
            r0();
            if (Build.VERSION.SDK_INT < 30) {
                View a0 = a0();
                this.g1 = a0;
                if (a0 != null) {
                    this.h1 = new SystemRunnable();
                    a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.lock.PassActivity.1
                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i2) {
                            PassActivity passActivity;
                            View view;
                            SystemRunnable systemRunnable;
                            if ((i2 & 4) != 4 && (view = (passActivity = PassActivity.this).g1) != null && (systemRunnable = passActivity.h1) != null) {
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
        int G2 = (int) MainUtil.G(this, 24.0f);
        MyButtonRelative myButtonRelative = new MyButtonRelative(this);
        int i3 = MainApp.F1;
        myButtonRelative.setPadding(i3, 0, i3, 0);
        myButtonRelative.e(G2, true);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, MainApp.g1);
        layoutParams6.setMarginStart(G2);
        layoutParams6.setMarginEnd(G2);
        linearLayout.addView(myButtonRelative, layoutParams6);
        if (this.s1 != 1) {
            myButtonImage = new MyButtonImage(this);
            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i4 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i4, i4);
            layoutParams7.addRule(21);
            myButtonRelative.addView(myButtonImage, layoutParams7);
        } else {
            myButtonImage = null;
        }
        MyEditPure myEditPure = new MyEditPure(this);
        myEditPure.setGravity(17);
        myEditPure.setSingleLine(true);
        myEditPure.setTextDirection(3);
        myEditPure.setTextSize(1, 16.0f);
        if (Build.VERSION.SDK_INT >= 29) {
            myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditPure.setHintTextColor(-8289919);
        myEditPure.setImeOptions(268435456);
        myEditPure.setSelectAllOnFocus(true);
        myEditPure.setBackground(null);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -1);
        if (this.s1 != 1) {
            layoutParams8.setMarginStart(MainApp.g1);
            layoutParams8.setMarginEnd(MainApp.g1);
        }
        myButtonRelative.addView(myEditPure, layoutParams8);
        View view4 = new View(this);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams9.weight = 1.0f;
        linearLayout.addView(view4, layoutParams9);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(i2);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12);
        myMainRelative.addView(linearLayout2, layoutParams10);
        if (this.s1 == 1) {
            myLineText = new MyLineText(this);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.retry);
            myLineText.s(this);
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams11.weight = 1.0f;
            linearLayout2.addView(myLineText, layoutParams11);
            appCompatTextView = new AppCompatTextView(this, null);
            appCompatTextView.setGravity(17);
            appCompatTextView.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams12.weight = 1.0f;
            linearLayout2.addView(appCompatTextView, layoutParams12);
            myButtonText = null;
        } else {
            MyButtonText myButtonText2 = new MyButtonText(this);
            myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText2.setGravity(17);
            myButtonText2.setMinHeight(MainApp.f1);
            myButtonText2.setTextSize(1, 16.0f);
            myButtonText2.setBgNorFixed(true);
            myButtonText2.setRoundRect(true);
            myButtonText2.setRoundRadius(MainApp.F1);
            LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams13.bottomMargin = MainApp.f1;
            layoutParams13.setMarginStart(G2);
            layoutParams13.setMarginEnd(G2);
            linearLayout2.addView(myButtonText2, layoutParams13);
            myButtonText = myButtonText2;
            myLineText = null;
            appCompatTextView = null;
        }
        this.i1 = myMainRelative;
        this.j1 = imageView;
        this.k1 = appCompatTextView2;
        this.l1 = myButtonRelative;
        this.m1 = myEditPure;
        this.n1 = myButtonImage;
        this.o1 = myButtonText;
        this.p1 = myLineText;
        this.q1 = appCompatTextView;
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
        this.v1 = false;
        this.w1 = null;
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
        MyButtonRelative myButtonRelative = this.l1;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.l1 = null;
        }
        MyButtonImage myButtonImage = this.n1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.n1 = null;
        }
        MyButtonText myButtonText = this.o1;
        if (myButtonText != null) {
            myButtonText.t();
            this.o1 = null;
        }
        MyLineText myLineText = this.p1;
        if (myLineText != null) {
            myLineText.u();
            this.p1 = null;
        }
        this.i1 = null;
        this.j1 = null;
        this.k1 = null;
        this.m1 = null;
        this.q1 = null;
        this.w1 = null;
        this.t1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        w0(intent);
        this.v1 = false;
        this.w1 = null;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass3());
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        y0();
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.lock.PassActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                PassActivity passActivity = PassActivity.this;
                if (passActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(passActivity.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.s1 == 3 && Build.VERSION.SDK_INT < 30) {
            r0();
        }
    }

    public final void w0(Intent intent) {
        if (intent == null) {
            return;
        }
        this.r1 = intent.getIntExtra("EXTRA_PASS", 0);
        int intExtra = intent.getIntExtra("EXTRA_TYPE", 0);
        this.s1 = intExtra;
        if (intExtra == 0) {
            this.t1 = intent.getStringExtra("EXTRA_PATH");
        } else {
            this.t1 = null;
        }
        if (this.s1 == 4) {
            this.u1 = intent.getBooleanExtra("EXTRA_VOICE", false);
        } else {
            this.u1 = false;
        }
    }

    public final void x0() {
        finishAffinity();
        Intent intent = new Intent(getApplicationContext(), (Class<?>) WidgetSearchActivity.class);
        intent.putExtra("EXTRA_LOCK", true);
        intent.putExtra("EXTRA_VOICE", this.u1);
        startActivity(intent);
    }

    public final void y0() {
        DialogLockReset dialogLockReset = this.x1;
        if (dialogLockReset != null) {
            dialogLockReset.dismiss();
            this.x1 = null;
        }
    }
}
