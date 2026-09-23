package com.mycompany.app.lock;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogLockReset;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.lock.PinLock;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.widget.WidgetSearchActivity;

/* loaded from: classes3.dex */
public class PinActivity extends MainActivity {
    public static final /* synthetic */ int A1 = 0;
    public Context f1;
    public View g1;
    public SystemRunnable h1;
    public MyMainRelative i1;
    public ImageView j1;
    public AppCompatTextView k1;
    public MyButtonText l1;
    public MyButtonText m1;
    public MyButtonText n1;
    public MyButtonText o1;
    public PinLock p1;
    public MyButtonText q1;
    public MyLineText r1;
    public AppCompatTextView s1;
    public int t1;
    public int u1;
    public String v1;
    public boolean w1;
    public boolean x1;
    public String y1;
    public DialogLockReset z1;

    /* renamed from: com.mycompany.app.lock.PinActivity$15, reason: invalid class name */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.lock.PinActivity$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context;
            PinActivity pinActivity = PinActivity.this;
            PinLock pinLock = pinActivity.p1;
            if (pinLock != null) {
                if (pinLock.g == null && (context = pinLock.getContext()) != null) {
                    int G = (int) MainUtil.G(context, 22.0f);
                    pinLock.setOrientation(1);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setBaselineAligned(false);
                    linearLayout.setOrientation(0);
                    pinLock.addView(linearLayout, -1, MainApp.i1);
                    MyButtonText myButtonText = new MyButtonText(context);
                    myButtonText.setGravity(17);
                    myButtonText.setTextSize(1, 18.0f);
                    myButtonText.setText("1");
                    int i = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
                    layoutParams.setMarginStart(G);
                    linearLayout.addView(myButtonText, layoutParams);
                    MyButtonText myButtonText2 = new MyButtonText(context);
                    myButtonText2.setGravity(17);
                    myButtonText2.setTextSize(1, 18.0f);
                    myButtonText2.setText("2");
                    int i2 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i2, i2);
                    layoutParams2.setMarginStart(G);
                    linearLayout.addView(myButtonText2, layoutParams2);
                    MyButtonText myButtonText3 = new MyButtonText(context);
                    myButtonText3.setGravity(17);
                    myButtonText3.setTextSize(1, 18.0f);
                    myButtonText3.setText("3");
                    int i3 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i3, i3);
                    layoutParams3.setMarginStart(G);
                    linearLayout.addView(myButtonText3, layoutParams3);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setBaselineAligned(false);
                    linearLayout2.setOrientation(0);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, MainApp.i1);
                    layoutParams4.topMargin = MainApp.F1;
                    pinLock.addView(linearLayout2, layoutParams4);
                    MyButtonText myButtonText4 = new MyButtonText(context);
                    myButtonText4.setGravity(17);
                    myButtonText4.setTextSize(1, 18.0f);
                    myButtonText4.setText("4");
                    int i4 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(i4, i4);
                    layoutParams5.setMarginStart(G);
                    linearLayout2.addView(myButtonText4, layoutParams5);
                    MyButtonText myButtonText5 = new MyButtonText(context);
                    myButtonText5.setGravity(17);
                    myButtonText5.setTextSize(1, 18.0f);
                    myButtonText5.setText("5");
                    int i5 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(i5, i5);
                    layoutParams6.setMarginStart(G);
                    linearLayout2.addView(myButtonText5, layoutParams6);
                    MyButtonText myButtonText6 = new MyButtonText(context);
                    myButtonText6.setGravity(17);
                    myButtonText6.setTextSize(1, 18.0f);
                    myButtonText6.setText("6");
                    int i6 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(i6, i6);
                    layoutParams7.setMarginStart(G);
                    linearLayout2.addView(myButtonText6, layoutParams7);
                    LinearLayout linearLayout3 = new LinearLayout(context);
                    linearLayout3.setBaselineAligned(false);
                    linearLayout3.setOrientation(0);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, MainApp.i1);
                    layoutParams8.topMargin = MainApp.F1;
                    pinLock.addView(linearLayout3, layoutParams8);
                    MyButtonText myButtonText7 = new MyButtonText(context);
                    myButtonText7.setGravity(17);
                    myButtonText7.setTextSize(1, 18.0f);
                    myButtonText7.setText("7");
                    int i7 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(i7, i7);
                    layoutParams9.setMarginStart(G);
                    linearLayout3.addView(myButtonText7, layoutParams9);
                    MyButtonText myButtonText8 = new MyButtonText(context);
                    myButtonText8.setGravity(17);
                    myButtonText8.setTextSize(1, 18.0f);
                    myButtonText8.setText("8");
                    int i8 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(i8, i8);
                    layoutParams10.setMarginStart(G);
                    linearLayout3.addView(myButtonText8, layoutParams10);
                    MyButtonText myButtonText9 = new MyButtonText(context);
                    myButtonText9.setGravity(17);
                    myButtonText9.setTextSize(1, 18.0f);
                    myButtonText9.setText("9");
                    int i9 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(i9, i9);
                    layoutParams11.setMarginStart(G);
                    linearLayout3.addView(myButtonText9, layoutParams11);
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setBaselineAligned(false);
                    linearLayout4.setOrientation(0);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, MainApp.i1);
                    layoutParams12.topMargin = MainApp.F1;
                    pinLock.addView(linearLayout4, layoutParams12);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i10 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i10, i10);
                    layoutParams13.setMarginStart(G);
                    linearLayout4.addView(myButtonImage, layoutParams13);
                    MyButtonText myButtonText10 = new MyButtonText(context);
                    myButtonText10.setGravity(17);
                    myButtonText10.setTextSize(1, 18.0f);
                    myButtonText10.setText("0");
                    int i11 = MainApp.i1;
                    LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(i11, i11);
                    layoutParams14.setMarginStart(G);
                    linearLayout4.addView(myButtonText10, layoutParams14);
                    pinLock.f = r3;
                    MyButtonText[] myButtonTextArr = {myButtonText10, myButtonText, myButtonText2, myButtonText3, myButtonText4, myButtonText5, myButtonText6, myButtonText7, myButtonText8, myButtonText9};
                    pinLock.g = myButtonImage;
                }
                Handler handler = pinActivity.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PinActivity pinActivity2 = PinActivity.this;
                        PinLock pinLock2 = pinActivity2.p1;
                        if (pinLock2 != null) {
                            MyButtonImage myButtonImage2 = pinLock2.g;
                            if (myButtonImage2 != null) {
                                if (MainApp.K1) {
                                    myButtonImage2.setImageResource(R.drawable.outline_backspace_dark_24);
                                    pinLock2.g.setBgPreColor(-12632257);
                                } else {
                                    myButtonImage2.setImageResource(R.drawable.outline_backspace_black_24);
                                    pinLock2.g.setBgPreColor(553648128);
                                }
                                for (int i12 = 0; i12 < 10; i12++) {
                                    if (MainApp.K1) {
                                        pinLock2.f[i12].setTextColor(-328966);
                                        pinLock2.f[i12].setBgPreColor(-12632257);
                                    } else {
                                        pinLock2.f[i12].setTextColor(-16777216);
                                        pinLock2.f[i12].setBgPreColor(553648128);
                                    }
                                    pinLock2.f[i12].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinLock.1

                                        /* renamed from: c */
                                        public final /* synthetic */ int f16368c;

                                        public AnonymousClass1(int i122) {
                                            r2 = i122;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            PinLock pinLock3 = PinLock.this;
                                            if (pinLock3.f16367c != null) {
                                                if (pinLock3.h == null) {
                                                    pinLock3.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                }
                                                String str = pinLock3.h + r2;
                                                if (str.length() > 4) {
                                                    return;
                                                }
                                                pinLock3.h = str;
                                                pinLock3.f16367c.a(str);
                                            }
                                        }
                                    });
                                }
                                pinLock2.g.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinLock.2
                                    public AnonymousClass2() {
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        PinLock pinLock3 = PinLock.this;
                                        if (pinLock3.f16367c == null || TextUtils.isEmpty(pinLock3.h)) {
                                            return;
                                        }
                                        pinLock3.h = a.d(1, 0, pinLock3.h);
                                        pinLock3.f16367c.a(pinLock3.h);
                                    }
                                });
                                pinLock2.g.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.lock.PinLock.3
                                    public AnonymousClass3() {
                                    }

                                    @Override // android.view.View.OnLongClickListener
                                    public final boolean onLongClick(View view) {
                                        PinLock pinLock3 = PinLock.this;
                                        if (pinLock3.f16367c == null || TextUtils.isEmpty(pinLock3.h)) {
                                            return true;
                                        }
                                        pinLock3.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                        pinLock3.f16367c.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                        return true;
                                    }
                                });
                            }
                            Handler handler2 = pinActivity2.O0;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.4.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PinActivity.v0(PinActivity.this);
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
            PinActivity pinActivity = PinActivity.this;
            View view = pinActivity.g1;
            if (view == null || (view.getSystemUiVisibility() & 4) == 4) {
                return;
            }
            pinActivity.r0();
        }
    }

    public static void u0(PinActivity pinActivity) {
        pinActivity.finishAffinity();
        Intent intent = new Intent(pinActivity.getApplicationContext(), (Class<?>) WidgetSearchActivity.class);
        intent.putExtra("EXTRA_LOCK", true);
        intent.putExtra("EXTRA_VOICE", pinActivity.w1);
        pinActivity.startActivity(intent);
    }

    public static void v0(PinActivity pinActivity) {
        int i;
        if (pinActivity.i1 != null) {
            pinActivity.p1.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            pinActivity.C0(null);
            if (MainApp.K1) {
                pinActivity.j1.setBackgroundResource(R.drawable.outline_lock_dark_84);
                pinActivity.k1.setTextColor(-328966);
                pinActivity.l1.setTextColor(-328966);
                pinActivity.m1.setTextColor(-328966);
                pinActivity.n1.setTextColor(-328966);
                pinActivity.o1.setTextColor(-328966);
                pinActivity.l1.setBgNorColor(-16777216);
                pinActivity.m1.setBgNorColor(-16777216);
                pinActivity.n1.setBgNorColor(-16777216);
                pinActivity.o1.setBgNorColor(-16777216);
                MyButtonText myButtonText = pinActivity.q1;
                if (myButtonText != null) {
                    myButtonText.setTextColor(-328966);
                    pinActivity.q1.u(-16777216, -14211289);
                }
                MyLineText myLineText = pinActivity.r1;
                if (myLineText != null) {
                    myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
                }
                AppCompatTextView appCompatTextView = pinActivity.s1;
                if (appCompatTextView != null) {
                    appCompatTextView.setBackgroundResource(R.drawable.selector_normal_dark);
                }
            } else {
                pinActivity.j1.setBackgroundResource(R.drawable.outline_lock_black_84);
                pinActivity.k1.setTextColor(-16777216);
                pinActivity.l1.setTextColor(-16777216);
                pinActivity.m1.setTextColor(-16777216);
                pinActivity.n1.setTextColor(-16777216);
                pinActivity.o1.setTextColor(-16777216);
                pinActivity.l1.setBgNorColor(-2039584);
                pinActivity.m1.setBgNorColor(-2039584);
                pinActivity.n1.setBgNorColor(-2039584);
                pinActivity.o1.setBgNorColor(-2039584);
                MyButtonText myButtonText2 = pinActivity.q1;
                if (myButtonText2 != null) {
                    myButtonText2.setTextColor(-16777216);
                    pinActivity.q1.u(-2039584, -3092272);
                }
                MyLineText myLineText2 = pinActivity.r1;
                if (myLineText2 != null) {
                    myLineText2.setBackgroundResource(R.drawable.selector_normal_gray);
                }
                AppCompatTextView appCompatTextView2 = pinActivity.s1;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setBackgroundResource(R.drawable.selector_normal_gray);
                }
            }
            pinActivity.p1.setListener(new PinLock.PinLockListener() { // from class: com.mycompany.app.lock.PinActivity.5
                @Override // com.mycompany.app.lock.PinLock.PinLockListener
                public final void a(String str) {
                    String str2;
                    int length;
                    int i2;
                    int i3;
                    int i4;
                    PinActivity pinActivity2 = PinActivity.this;
                    if (pinActivity2.k1 != null) {
                        pinActivity2.C0(str);
                        int i5 = 0;
                        if (pinActivity2.u1 == 1) {
                            if (TextUtils.isEmpty(str)) {
                                length = 0;
                            } else {
                                length = str.length();
                            }
                            int i6 = -2434342;
                            int i7 = -14784824;
                            if (length == 0) {
                                if (pinActivity2.x1) {
                                    pinActivity2.k1.setText(R.string.reinput);
                                    MyLineText myLineText3 = pinActivity2.r1;
                                    if (myLineText3 != null) {
                                        myLineText3.setEnabled(true);
                                        MyLineText myLineText4 = pinActivity2.r1;
                                        if (MainApp.K1) {
                                            i4 = -328966;
                                        } else {
                                            i4 = -14784824;
                                        }
                                        myLineText4.setTextColor(i4);
                                    }
                                } else {
                                    pinActivity2.k1.setText(R.string.input);
                                    MyLineText myLineText5 = pinActivity2.r1;
                                    if (myLineText5 != null) {
                                        myLineText5.setEnabled(false);
                                        MyLineText myLineText6 = pinActivity2.r1;
                                        if (MainApp.K1) {
                                            i3 = -8355712;
                                        } else {
                                            i3 = -2434342;
                                        }
                                        myLineText6.setTextColor(i3);
                                    }
                                }
                            } else {
                                pinActivity2.k1.setText((CharSequence) null);
                                MyLineText myLineText7 = pinActivity2.r1;
                                if (myLineText7 != null) {
                                    myLineText7.setEnabled(true);
                                    MyLineText myLineText8 = pinActivity2.r1;
                                    if (MainApp.K1) {
                                        i2 = -328966;
                                    } else {
                                        i2 = -14784824;
                                    }
                                    myLineText8.setTextColor(i2);
                                }
                            }
                            if (length == 4) {
                                if (pinActivity2.x1 && !str.equals(pinActivity2.y1)) {
                                    PinActivity.w0(pinActivity2, str);
                                    return;
                                }
                                AppCompatTextView appCompatTextView3 = pinActivity2.s1;
                                if (appCompatTextView3 != null) {
                                    appCompatTextView3.setEnabled(true);
                                    AppCompatTextView appCompatTextView4 = pinActivity2.s1;
                                    if (MainApp.K1) {
                                        i7 = -328966;
                                    }
                                    appCompatTextView4.setTextColor(i7);
                                    return;
                                }
                                return;
                            }
                            AppCompatTextView appCompatTextView5 = pinActivity2.s1;
                            if (appCompatTextView5 != null) {
                                appCompatTextView5.setEnabled(false);
                                AppCompatTextView appCompatTextView6 = pinActivity2.s1;
                                if (MainApp.K1) {
                                    i6 = -8355712;
                                }
                                appCompatTextView6.setTextColor(i6);
                                return;
                            }
                            return;
                        }
                        pinActivity2.k1.setText((CharSequence) null);
                        if (!TextUtils.isEmpty(str)) {
                            i5 = str.length();
                        }
                        if (i5 != 4) {
                            return;
                        }
                        int i8 = pinActivity2.t1;
                        if (i8 == 1) {
                            str2 = PrefSecret.A;
                        } else if (i8 == 2) {
                            str2 = PrefSecret.C;
                        } else if (i8 == 3) {
                            str2 = PrefSecret.E;
                        } else {
                            str2 = PrefSecret.t;
                        }
                        if (!str.equals(str2)) {
                            PinActivity.w0(pinActivity2, str);
                            return;
                        }
                        if (pinActivity2.u1 == 4) {
                            PinActivity.u0(pinActivity2);
                            return;
                        }
                        if (!TextUtils.isEmpty(pinActivity2.v1)) {
                            Intent o4 = MainUtil.o4(pinActivity2.getApplicationContext());
                            o4.putExtra("EXTRA_PATH", pinActivity2.v1);
                            pinActivity2.startActivity(o4);
                        } else {
                            pinActivity2.setResult(-1);
                            pinActivity2.finish();
                        }
                    }
                }
            });
            int i2 = pinActivity.u1;
            if (i2 == 1) {
                if (pinActivity.r1 != null && pinActivity.s1 != null) {
                    pinActivity.k1.setText(R.string.input);
                    pinActivity.r1.setEnabled(false);
                    MyLineText myLineText3 = pinActivity.r1;
                    int i3 = -2434342;
                    if (MainApp.K1) {
                        i = -8355712;
                    } else {
                        i = -2434342;
                    }
                    myLineText3.setTextColor(i);
                    pinActivity.s1.setText(R.string.continue_input);
                    pinActivity.s1.setEnabled(false);
                    AppCompatTextView appCompatTextView3 = pinActivity.s1;
                    if (MainApp.K1) {
                        i3 = -8355712;
                    }
                    appCompatTextView3.setTextColor(i3);
                    pinActivity.r1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinActivity.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i4;
                            PinActivity pinActivity2 = PinActivity.this;
                            PinLock pinLock = pinActivity2.p1;
                            if (pinLock == null) {
                                return;
                            }
                            pinActivity2.x1 = false;
                            pinActivity2.y1 = null;
                            pinLock.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            pinActivity2.C0(null);
                            pinActivity2.k1.setText(R.string.input);
                            pinActivity2.r1.setEnabled(false);
                            MyLineText myLineText4 = pinActivity2.r1;
                            int i5 = -2434342;
                            if (MainApp.K1) {
                                i4 = -8355712;
                            } else {
                                i4 = -2434342;
                            }
                            myLineText4.setTextColor(i4);
                            pinActivity2.s1.setText(R.string.continue_input);
                            pinActivity2.s1.setEnabled(false);
                            AppCompatTextView appCompatTextView4 = pinActivity2.s1;
                            if (MainApp.K1) {
                                i5 = -8355712;
                            }
                            appCompatTextView4.setTextColor(i5);
                        }
                    });
                    pinActivity.s1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinActivity.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i4;
                            PinActivity pinActivity2 = PinActivity.this;
                            PinLock pinLock = pinActivity2.p1;
                            if (pinLock == null) {
                                return;
                            }
                            String input = pinLock.getInput();
                            pinActivity2.r1.setEnabled(true);
                            MyLineText myLineText4 = pinActivity2.r1;
                            if (MainApp.K1) {
                                i4 = -328966;
                            } else {
                                i4 = -14784824;
                            }
                            myLineText4.setTextColor(i4);
                            int i5 = -2434342;
                            if (!pinActivity2.x1) {
                                pinActivity2.x1 = true;
                                pinActivity2.y1 = input;
                                pinActivity2.p1.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                pinActivity2.C0(null);
                                pinActivity2.k1.setText(R.string.reinput);
                                pinActivity2.s1.setText(R.string.apply);
                                pinActivity2.s1.setEnabled(false);
                                AppCompatTextView appCompatTextView4 = pinActivity2.s1;
                                if (MainApp.K1) {
                                    i5 = -8355712;
                                }
                                appCompatTextView4.setTextColor(i5);
                                return;
                            }
                            if (!input.equals(pinActivity2.y1)) {
                                pinActivity2.p1.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                pinActivity2.C0(null);
                                pinActivity2.k1.setText(R.string.wrong_input);
                                pinActivity2.s1.setEnabled(false);
                                AppCompatTextView appCompatTextView5 = pinActivity2.s1;
                                if (MainApp.K1) {
                                    i5 = -8355712;
                                }
                                appCompatTextView5.setTextColor(i5);
                                return;
                            }
                            int i6 = pinActivity2.t1;
                            if (i6 == 1) {
                                PrefSecret.z = 2;
                                PrefSecret.A = pinActivity2.y1;
                                PrefSecret.v(pinActivity2.f1);
                            } else if (i6 == 2) {
                                PrefSecret.B = 2;
                                PrefSecret.C = pinActivity2.y1;
                                PrefSecret.t(pinActivity2.f1);
                            } else if (i6 == 3) {
                                PrefSecret.D = 2;
                                PrefSecret.E = pinActivity2.y1;
                                PrefSecret.w(pinActivity2.f1);
                            } else {
                                PrefSecret.s = 2;
                                PrefSecret.t = pinActivity2.y1;
                                PrefSecret.u(pinActivity2.f1);
                            }
                            pinActivity2.setResult(-1);
                            pinActivity2.finish();
                        }
                    });
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (pinActivity.q1 != null) {
                    pinActivity.k1.setText((CharSequence) null);
                    pinActivity.q1.setText(R.string.secret_reset);
                    pinActivity.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinActivity.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PinActivity.x0(PinActivity.this);
                        }
                    });
                    return;
                }
                return;
            }
            if (i2 == 3) {
                if (pinActivity.q1 != null) {
                    pinActivity.k1.setText((CharSequence) null);
                    pinActivity.q1.setText(R.string.cancel);
                    pinActivity.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinActivity.9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            PinActivity.this.finish();
                        }
                    });
                    return;
                }
                return;
            }
            if (pinActivity.q1 == null) {
                return;
            }
            pinActivity.k1.setText((CharSequence) null);
            if (PrefSecret.u) {
                pinActivity.q1.setText(R.string.normal_start);
            } else {
                pinActivity.q1.setText(R.string.secret_reset);
            }
            pinActivity.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.PinActivity.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z = PrefSecret.u;
                    PinActivity pinActivity2 = PinActivity.this;
                    if (!z) {
                        PinActivity.x0(pinActivity2);
                    } else {
                        pinActivity2.m0(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.10.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                PrefSync.k = false;
                                PinActivity pinActivity3 = PinActivity.this;
                                PrefSync.u(pinActivity3.f1);
                                MainUtil.Y4(pinActivity3.f1);
                                if (pinActivity3.u1 == 4) {
                                    PinActivity.u0(pinActivity3);
                                } else {
                                    MainUtil.d7(pinActivity3, pinActivity3.v1, false);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void w0(PinActivity pinActivity, String str) {
        if (pinActivity.l1 == null) {
            return;
        }
        if (str != null && str.length() == 4) {
            pinActivity.l1.setText("*");
            pinActivity.m1.setText("*");
            pinActivity.n1.setText("*");
            pinActivity.o1.setText(str.substring(3));
            pinActivity.o1.postDelayed(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.11
                @Override // java.lang.Runnable
                public final void run() {
                    PinActivity.w0(PinActivity.this, null);
                }
            }, 200L);
            return;
        }
        pinActivity.p1.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        pinActivity.l1.setText((CharSequence) null);
        pinActivity.m1.setText((CharSequence) null);
        pinActivity.n1.setText((CharSequence) null);
        pinActivity.o1.setText((CharSequence) null);
        pinActivity.k1.setText(R.string.wrong_input);
    }

    public static void x0(PinActivity pinActivity) {
        if (pinActivity.z1 != null) {
            return;
        }
        pinActivity.z0();
        DialogLockReset dialogLockReset = new DialogLockReset(pinActivity, pinActivity.t1, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.lock.PinActivity.13
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                int i = PinActivity.A1;
                PinActivity pinActivity2 = PinActivity.this;
                pinActivity2.z0();
                int i2 = pinActivity2.u1;
                if (i2 == 4) {
                    PinActivity.u0(pinActivity2);
                    return;
                }
                if (i2 == 0) {
                    pinActivity2.finishAffinity();
                    Intent o4 = MainUtil.o4(pinActivity2.getApplicationContext());
                    if (!TextUtils.isEmpty(pinActivity2.v1)) {
                        o4.putExtra("EXTRA_PATH", pinActivity2.v1);
                    }
                    pinActivity2.startActivity(o4);
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("EXTRA_LOAD", true);
                pinActivity2.setResult(-1, intent);
                pinActivity2.finish();
            }
        });
        pinActivity.z1 = dialogLockReset;
        dialogLockReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.lock.PinActivity.14
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = PinActivity.A1;
                PinActivity.this.z0();
            }
        });
    }

    public final void A0() {
        this.x1 = false;
        this.y1 = null;
        PinLock pinLock = this.p1;
        if (pinLock != null) {
            if (pinLock.g != null) {
                Handler handler = this.O0;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            PinActivity.v0(PinActivity.this);
                        }
                    });
                    return;
                }
                return;
            }
            Handler handler2 = this.O0;
            if (handler2 == null) {
                return;
            }
            handler2.post(new AnonymousClass4());
        }
    }

    public final void B0(final TextView textView, String str) {
        CharSequence text;
        if (textView == null || (text = textView.getText()) == null || "*".equals(text.toString())) {
            return;
        }
        textView.setText(str);
        textView.postDelayed(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.12
            @Override // java.lang.Runnable
            public final void run() {
                CharSequence text2;
                int i = PinActivity.A1;
                PinActivity.this.getClass();
                TextView textView2 = textView;
                if (textView2 == null || (text2 = textView2.getText()) == null || TextUtils.isEmpty(text2.toString())) {
                    return;
                }
                textView2.setText("*");
            }
        }, 200L);
    }

    public final void C0(String str) {
        if (this.l1 != null) {
            if (TextUtils.isEmpty(str)) {
                this.l1.setText((CharSequence) null);
                this.m1.setText((CharSequence) null);
                this.n1.setText((CharSequence) null);
                this.o1.setText((CharSequence) null);
                return;
            }
            int length = str.length();
            if (length == 1) {
                B0(this.l1, str);
                this.m1.setText((CharSequence) null);
                this.n1.setText((CharSequence) null);
                this.o1.setText((CharSequence) null);
                return;
            }
            if (length == 2) {
                this.l1.setText("*");
                B0(this.m1, str.substring(1));
                this.n1.setText((CharSequence) null);
                this.o1.setText((CharSequence) null);
                return;
            }
            if (length == 3) {
                this.l1.setText("*");
                this.m1.setText("*");
                B0(this.n1, str.substring(2));
                this.o1.setText((CharSequence) null);
                return;
            }
            if (length == 4) {
                this.l1.setText("*");
                this.m1.setText("*");
                this.n1.setText("*");
                B0(this.o1, str.substring(3));
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.u1 == 0) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.lock.PinLock] */
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
        y0(getIntent());
        this.V0 = new Object();
        if (this.u1 == 3 && getWindow() != null) {
            r0();
            if (Build.VERSION.SDK_INT < 30) {
                View a0 = a0();
                this.g1 = a0;
                if (a0 != null) {
                    this.h1 = new SystemRunnable();
                    a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.lock.PinActivity.1
                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i2) {
                            PinActivity pinActivity;
                            View view;
                            SystemRunnable systemRunnable;
                            if ((i2 & 4) != 4 && (view = (pinActivity = PinActivity.this).g1) != null && (systemRunnable = pinActivity.h1) != null) {
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
        myMainRelative.addView(linearLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i2));
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
        layoutParams3.weight = 1.0f;
        linearLayout.addView(view2, layoutParams3);
        FrameLayout frameLayout = new FrameLayout(this);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        linearLayout.addView(frameLayout, layoutParams4);
        int G2 = (int) MainUtil.G(this, 36.0f);
        int G3 = (int) MainUtil.G(this, 18.0f);
        MyButtonText myButtonText2 = new MyButtonText(this);
        myButtonText2.setGravity(17);
        myButtonText2.setTextSize(1, 20.0f);
        myButtonText2.setRoundRect(true);
        myButtonText2.setRoundRadius(G3);
        frameLayout.addView(myButtonText2, G2, G2);
        MyButtonText myButtonText3 = new MyButtonText(this);
        myButtonText3.setGravity(17);
        myButtonText3.setTextSize(1, 20.0f);
        myButtonText3.setRoundRect(true);
        myButtonText3.setRoundRadius(G3);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(G2, G2);
        layoutParams5.setMarginStart(MainApp.i1);
        frameLayout.addView(myButtonText3, layoutParams5);
        MyButtonText myButtonText4 = new MyButtonText(this);
        myButtonText4.setGravity(17);
        myButtonText4.setTextSize(1, 20.0f);
        myButtonText4.setRoundRect(true);
        myButtonText4.setRoundRadius(G3);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(G2, G2);
        layoutParams6.setMarginStart(MainApp.i1 * 2);
        frameLayout.addView(myButtonText4, layoutParams6);
        MyButtonText myButtonText5 = new MyButtonText(this);
        myButtonText5.setGravity(17);
        myButtonText5.setTextSize(1, 20.0f);
        myButtonText5.setRoundRect(true);
        myButtonText5.setRoundRadius(G3);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(G2, G2);
        layoutParams7.setMarginStart(MainApp.i1 * 3);
        frameLayout.addView(myButtonText5, layoutParams7);
        View view3 = new View(this);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams8.weight = 0.5f;
        linearLayout.addView(view3, layoutParams8);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 1;
        linearLayout.addView(appCompatTextView2, layoutParams9);
        View view4 = new View(this);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams10.weight = 0.5f;
        linearLayout.addView(view4, layoutParams10);
        int G4 = (int) MainUtil.G(this, 280.0f);
        ?? linearLayout2 = new LinearLayout(this);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(G4, G4);
        layoutParams11.gravity = 1;
        linearLayout.addView((View) linearLayout2, layoutParams11);
        View view5 = new View(this);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams12.weight = 1.0f;
        linearLayout.addView(view5, layoutParams12);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setId(i2);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams13.addRule(12);
        myMainRelative.addView(linearLayout3, layoutParams13);
        if (this.u1 == 1) {
            myLineText = new MyLineText(this);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.retry);
            myLineText.s(this);
            LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams14.weight = 1.0f;
            linearLayout3.addView(myLineText, layoutParams14);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
            appCompatTextView3.setGravity(17);
            appCompatTextView3.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(0, MainApp.g1);
            layoutParams15.weight = 1.0f;
            linearLayout3.addView(appCompatTextView3, layoutParams15);
            appCompatTextView = appCompatTextView3;
            myButtonText = null;
        } else {
            int G5 = (int) MainUtil.G(this, 24.0f);
            myButtonText = new MyButtonText(this);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setGravity(17);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setTextSize(1, 16.0f);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams16.bottomMargin = MainApp.f1;
            layoutParams16.setMarginStart(G5);
            layoutParams16.setMarginEnd(G5);
            linearLayout3.addView(myButtonText, layoutParams16);
            myLineText = null;
            appCompatTextView = null;
        }
        this.i1 = myMainRelative;
        this.j1 = imageView;
        this.k1 = appCompatTextView2;
        this.l1 = myButtonText2;
        this.m1 = myButtonText3;
        this.n1 = myButtonText4;
        this.o1 = myButtonText5;
        this.p1 = linearLayout2;
        this.q1 = myButtonText;
        this.r1 = myLineText;
        this.s1 = appCompatTextView;
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
        A0();
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
        MyButtonText myButtonText = this.l1;
        if (myButtonText != null) {
            myButtonText.t();
            this.l1 = null;
        }
        MyButtonText myButtonText2 = this.m1;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.m1 = null;
        }
        MyButtonText myButtonText3 = this.n1;
        if (myButtonText3 != null) {
            myButtonText3.t();
            this.n1 = null;
        }
        MyButtonText myButtonText4 = this.o1;
        if (myButtonText4 != null) {
            myButtonText4.t();
            this.o1 = null;
        }
        PinLock pinLock = this.p1;
        if (pinLock != null) {
            MyButtonText[] myButtonTextArr = pinLock.f;
            if (myButtonTextArr != null) {
                int length = myButtonTextArr.length;
                for (int i = 0; i < length; i++) {
                    MyButtonText myButtonText5 = pinLock.f[i];
                    if (myButtonText5 != null) {
                        myButtonText5.t();
                        pinLock.f[i] = null;
                    }
                }
                pinLock.f = null;
            }
            MyButtonImage myButtonImage = pinLock.g;
            if (myButtonImage != null) {
                myButtonImage.j();
                pinLock.g = null;
            }
            pinLock.f16367c = null;
            pinLock.h = null;
            this.p1 = null;
        }
        MyButtonText myButtonText6 = this.q1;
        if (myButtonText6 != null) {
            myButtonText6.t();
            this.q1 = null;
        }
        MyLineText myLineText = this.r1;
        if (myLineText != null) {
            myLineText.u();
            this.r1 = null;
        }
        this.i1 = null;
        this.j1 = null;
        this.k1 = null;
        this.s1 = null;
        this.y1 = null;
        this.v1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        y0(intent);
        A0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        z0();
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.lock.PinActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                PinActivity pinActivity = PinActivity.this;
                if (pinActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(pinActivity.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.u1 == 3 && Build.VERSION.SDK_INT < 30) {
            r0();
        }
    }

    public final void y0(Intent intent) {
        if (intent == null) {
            return;
        }
        this.t1 = intent.getIntExtra("EXTRA_PASS", 0);
        int intExtra = intent.getIntExtra("EXTRA_TYPE", 0);
        this.u1 = intExtra;
        if (intExtra == 0) {
            this.v1 = intent.getStringExtra("EXTRA_PATH");
        } else {
            this.v1 = null;
        }
        if (this.u1 == 4) {
            this.w1 = intent.getBooleanExtra("EXTRA_VOICE", false);
        } else {
            this.w1 = false;
        }
    }

    public final void z0() {
        DialogLockReset dialogLockReset = this.z1;
        if (dialogLockReset != null) {
            dialogLockReset.dismiss();
            this.z1 = null;
        }
    }
}
