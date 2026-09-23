package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyRoundFrame;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebViewActivity;
import java.util.Scanner;

/* loaded from: classes3.dex */
public class DialogViewIp extends MyDialogBottom {
    public static final /* synthetic */ int O0 = 0;
    public boolean A0;
    public boolean B0;
    public int C0;
    public boolean D0;
    public String E0;
    public String F0;
    public String G0;
    public String H0;
    public DialogSetMsg I0;
    public boolean J0;
    public String K0;
    public boolean L0;
    public String M0;
    public int N0;
    public MainActivity a0;
    public Context b0;
    public String c0;
    public String d0;
    public boolean e0;
    public boolean f0;
    public MyDialogLinear g0;
    public final boolean h0;
    public MyAdFrame i0;
    public MyAdNative j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public MyRoundLinear n0;
    public FrameLayout o0;
    public MyRoundFrame p0;
    public MyEditPure q0;
    public MyButtonImage r0;
    public MyButtonImage s0;
    public MyButtonText[] t0;
    public LinearLayout[] u0;
    public TextView[] v0;
    public TextView[] w0;
    public MyCoverView x0;
    public MyWebSafe y0;
    public boolean z0;

    /* renamed from: com.mycompany.app.dialog.DialogViewIp$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewIp$18$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewIp dialogViewIp = DialogViewIp.this;
                MyWebSafe myWebSafe = dialogViewIp.y0;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    Handler handler = dialogViewIp.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.18.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass18 anonymousClass18 = AnonymousClass18.this;
                            DialogViewIp dialogViewIp2 = DialogViewIp.this;
                            MyWebSafe myWebSafe2 = dialogViewIp2.y0;
                            if (myWebSafe2 != null) {
                                dialogViewIp2.A0 = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = DialogViewIp.this.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.18.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        MyWebSafe myWebSafe3 = DialogViewIp.this.y0;
                                        if (myWebSafe3 != null) {
                                            myWebSafe3.loadUrl("https://ipdata.co/");
                                            DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                            if (!dialogViewIp3.l0) {
                                                dialogViewIp3.l0 = true;
                                                DialogViewIp.D(dialogViewIp3);
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

        public AnonymousClass18() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            MyWebSafe myWebSafe = dialogViewIp.y0;
            if (myWebSafe != null) {
                MainUtil.W7(myWebSafe, true);
                Handler handler = dialogViewIp.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onIpDet(String str, String str2) {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            if (!dialogViewIp.e0) {
                dialogViewIp.e0 = true;
                dialogViewIp.O(dialogViewIp.d0);
            } else {
                if (!MainUtil.q5(str, dialogViewIp.d0) || dialogViewIp.f0) {
                    return;
                }
                dialogViewIp.K0 = str2;
                dialogViewIp.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.WebAppInterface.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str3;
                        String str4;
                        String str5;
                        String str6;
                        Handler handler;
                        int length;
                        DialogViewIp dialogViewIp2 = DialogViewIp.this;
                        String str7 = dialogViewIp2.K0;
                        String str8 = null;
                        dialogViewIp2.K0 = null;
                        if (!dialogViewIp2.f0) {
                            dialogViewIp2.E0 = null;
                            dialogViewIp2.F0 = null;
                            dialogViewIp2.G0 = null;
                            dialogViewIp2.H0 = null;
                            try {
                                Scanner scanner = new Scanner(str7);
                                int i = 0;
                                boolean z = false;
                                str3 = null;
                                str4 = null;
                                str5 = null;
                                str6 = null;
                                boolean z2 = true;
                                while (scanner.hasNextLine()) {
                                    try {
                                        String nextLine = scanner.nextLine();
                                        if (!TextUtils.isEmpty(nextLine)) {
                                            String trim = nextLine.trim();
                                            if (!TextUtils.isEmpty(trim)) {
                                                if (trim.startsWith("ip:")) {
                                                    if (!MainUtil.q5(DialogViewIp.J(trim), dialogViewIp2.d0)) {
                                                        break;
                                                    } else {
                                                        dialogViewIp2.f0 = true;
                                                    }
                                                } else {
                                                    if (trim.startsWith("city:")) {
                                                        str6 = DialogViewIp.J(trim);
                                                    } else if (trim.startsWith("region:")) {
                                                        String J = DialogViewIp.J(trim);
                                                        if (J != null && (length = J.length()) >= 14) {
                                                            if (J.endsWith(" Special City")) {
                                                                J = J.substring(0, length - 13);
                                                            } else if (J.endsWith(" Metropolitan City")) {
                                                                J = J.substring(0, length - 18);
                                                            }
                                                        }
                                                        i++;
                                                        str5 = J;
                                                    } else if (trim.startsWith("country_name:")) {
                                                        str3 = DialogViewIp.J(trim);
                                                    } else if (trim.startsWith("emoji_flag:")) {
                                                        str4 = DialogViewIp.J(trim);
                                                    } else if (z2) {
                                                        if (!z) {
                                                            if (trim.startsWith("asn:") || trim.startsWith("company:")) {
                                                                z = true;
                                                            }
                                                        } else if (trim.startsWith("name:")) {
                                                            str8 = DialogViewIp.I(trim);
                                                            i++;
                                                            z2 = false;
                                                        }
                                                    }
                                                    i++;
                                                }
                                                if (i >= 5) {
                                                    break;
                                                }
                                            }
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                                scanner.close();
                            } catch (Exception unused2) {
                                str3 = null;
                                str4 = null;
                                str5 = null;
                                str6 = null;
                            }
                            if (dialogViewIp2.f0) {
                                if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                                    str3 = android.support.v4.media.a.D(str3, "  ", str4);
                                }
                                dialogViewIp2.E0 = str8;
                                dialogViewIp2.F0 = str3;
                                dialogViewIp2.G0 = str5;
                                dialogViewIp2.H0 = str6;
                            }
                            if (!dialogViewIp2.f0 || (handler = dialogViewIp2.i) == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.WebAppInterface.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                    LinearLayout[] linearLayoutArr = dialogViewIp3.u0;
                                    if (linearLayoutArr == null) {
                                        return;
                                    }
                                    linearLayoutArr[0].setVisibility(0);
                                    dialogViewIp3.u0[1].setVisibility(0);
                                    dialogViewIp3.u0[2].setVisibility(0);
                                    dialogViewIp3.u0[3].setVisibility(0);
                                    if (!TextUtils.isEmpty(dialogViewIp3.E0)) {
                                        dialogViewIp3.w0[0].setText(dialogViewIp3.E0);
                                    } else {
                                        dialogViewIp3.w0[0].setText("Unknown");
                                    }
                                    if (!TextUtils.isEmpty(dialogViewIp3.F0)) {
                                        dialogViewIp3.w0[1].setText(dialogViewIp3.F0);
                                    } else {
                                        dialogViewIp3.w0[1].setText("Unknown");
                                    }
                                    if (!TextUtils.isEmpty(dialogViewIp3.G0)) {
                                        dialogViewIp3.w0[2].setText(dialogViewIp3.G0);
                                    } else {
                                        dialogViewIp3.w0[2].setText("Unknown");
                                    }
                                    if (!TextUtils.isEmpty(dialogViewIp3.H0)) {
                                        dialogViewIp3.w0[3].setText(dialogViewIp3.H0);
                                    } else {
                                        dialogViewIp3.w0[3].setText("Unknown");
                                    }
                                    dialogViewIp3.N(false);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public DialogViewIp(WebViewActivity webViewActivity, String str, boolean z) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.h0 = z;
        this.c0 = str;
        this.d0 = H();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewIp.C(DialogViewIp.this);
            }
        });
    }

    public static void B(DialogViewIp dialogViewIp, String str) {
        if (dialogViewIp.y0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogViewIp.A0) {
                    dialogViewIp.A0 = false;
                    MyWebSafe myWebSafe = dialogViewIp.y0;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.21
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewIp dialogViewIp2 = DialogViewIp.this;
                                MyWebSafe myWebSafe2 = dialogViewIp2.y0;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                dialogViewIp2.A0 = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogViewIp.A0) {
                dialogViewIp.A0 = true;
                MyWebSafe myWebSafe2 = dialogViewIp.y0;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.22
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewIp dialogViewIp2 = DialogViewIp.this;
                        MyWebSafe myWebSafe3 = dialogViewIp2.y0;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        dialogViewIp2.A0 = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [androidx.core.widget.NestedScrollView, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r12v1, types: [android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.mycompany.app.view.MyDialogLinear, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.view.MyRoundLinear, android.view.ViewGroup] */
    public static void C(DialogViewIp dialogViewIp) {
        MyAdFrame myAdFrame;
        int i;
        int i2;
        Context context = dialogViewIp.b0;
        if (context != null) {
            dialogViewIp.C0 = (int) MainUtil.G(context, 400.0f);
            ?? q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            if (dialogViewIp.h0) {
                ?? frameLayout = new FrameLayout(context);
                frameLayout.setMinimumHeight((int) MainUtil.G(context, 340.0f));
                frameLayout.setVisibility(8);
                q.addView(frameLayout, -1, -2);
                myAdFrame = frameLayout;
            } else {
                myAdFrame = null;
            }
            ?? myRoundLinear = new MyRoundLinear(context);
            myRoundLinear.setOrientation(1);
            q.addView(myRoundLinear, -1, -2);
            ?? m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            myRoundLinear.addView(m, layoutParams);
            ?? frameLayout2 = new FrameLayout(context);
            frameLayout2.setMinimumHeight(dialogViewIp.C0);
            m.addView(frameLayout2, -1, -2);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            frameLayout2.addView(linearLayout, -1, -2);
            MyRoundFrame myRoundFrame = new MyRoundFrame(context);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = (int) MainUtil.G(context, 12.0f);
            linearLayout.addView(myRoundFrame, layoutParams2);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setGravity(16);
            myEditPure.setSingleLine(true);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setHintTextColor(-8289919);
            myEditPure.setInputType(2);
            myEditPure.setKeyListener(DigitsKeyListener.getInstance("0123456789."));
            myEditPure.setImeOptions(268435456);
            myEditPure.setBackground(null);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams3.setMarginStart(MainApp.E1);
            layoutParams3.setMarginEnd(MainApp.i1 + MainApp.g1);
            myRoundFrame.addView(myEditPure, layoutParams3);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            int i3 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams4.gravity = 8388613;
            layoutParams4.setMarginEnd(MainApp.F1 + MainApp.g1);
            myRoundFrame.addView(myButtonImage, layoutParams4);
            int G = (int) MainUtil.G(context, 14.0f);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setPadding(G, G, G, G);
            myButtonImage2.setScaleType(scaleType);
            int i4 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
            layoutParams5.gravity = 8388613;
            layoutParams5.setMarginEnd(MainApp.F1);
            myRoundFrame.addView(myButtonImage2, layoutParams5);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            int i5 = MainApp.E1;
            linearLayout2.setPadding(0, i5, 0, i5);
            linearLayout.addView(linearLayout2, -1, -2);
            MyButtonText[] myButtonTextArr = new MyButtonText[5];
            int i6 = 0;
            for (int i7 = 5; i6 < i7; i7 = 5) {
                if (i6 != 0) {
                    i2 = i6;
                    linearLayout2.addView(new View(context), MainApp.E1, MainApp.f1);
                } else {
                    i2 = i6;
                }
                MyButtonText myButtonText = new MyButtonText(context);
                myButtonText.setGravity(17);
                myButtonText.setTextSize(1, 14.0f);
                myButtonText.setBgNorFixed(true);
                myButtonText.setRoundRect(true);
                myButtonText.setRoundRadius(MainApp.v1);
                MyButtonText[] myButtonTextArr2 = myButtonTextArr;
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, MainApp.f1);
                layoutParams6.weight = 1.0f;
                linearLayout2.addView(myButtonText, layoutParams6);
                myButtonTextArr2[i2] = myButtonText;
                i6 = i2 + 1;
                myButtonTextArr = myButtonTextArr2;
            }
            MyButtonText[] myButtonTextArr3 = myButtonTextArr;
            LinearLayout[] linearLayoutArr = new LinearLayout[4];
            TextView[] textViewArr = new TextView[4];
            TextView[] textViewArr2 = new TextView[4];
            int i8 = 0;
            for (int i9 = 4; i8 < i9; i9 = 4) {
                LinearLayout linearLayout3 = new LinearLayout(context);
                int i10 = i8;
                linearLayout3.setOrientation(1);
                int i11 = MainApp.F1;
                TextView[] textViewArr3 = textViewArr2;
                linearLayout3.setPadding(0, i11, 0, i11);
                linearLayout3.setVisibility(8);
                linearLayout.addView(linearLayout3, -1, -2);
                ?? r18 = linearLayoutArr;
                TextView[] textViewArr4 = textViewArr;
                AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                linearLayout3.addView(j, -2, -2);
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                appCompatTextView.setPadding(0, MainApp.G1, 0, 0);
                appCompatTextView.setTextSize(1, 16.0f);
                linearLayout3.addView(appCompatTextView, -2, -2);
                r18[i10] = linearLayout3;
                textViewArr4[i10] = j;
                textViewArr3[i10] = appCompatTextView;
                i8 = i10 + 1;
                linearLayout = linearLayout;
                textViewArr = textViewArr4;
                linearLayoutArr = r18;
                textViewArr2 = textViewArr3;
            }
            LinearLayout[] linearLayoutArr2 = linearLayoutArr;
            TextView[] textViewArr5 = textViewArr;
            TextView[] textViewArr6 = textViewArr2;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -13022805;
            }
            MyCoverView myCoverView = new MyCoverView(context, i, (int) MainUtil.G(context, 2.0f), MainApp.z1);
            int i12 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i12, i12);
            layoutParams7.gravity = 17;
            layoutParams7.topMargin = (int) MainUtil.G(context, 56.0f);
            frameLayout2.addView(myCoverView, layoutParams7);
            dialogViewIp.g0 = q;
            dialogViewIp.n0 = myRoundLinear;
            dialogViewIp.i0 = myAdFrame;
            dialogViewIp.o0 = frameLayout2;
            dialogViewIp.p0 = myRoundFrame;
            dialogViewIp.q0 = myEditPure;
            dialogViewIp.r0 = myButtonImage;
            dialogViewIp.s0 = myButtonImage2;
            dialogViewIp.t0 = myButtonTextArr3;
            dialogViewIp.u0 = linearLayoutArr2;
            dialogViewIp.v0 = textViewArr5;
            dialogViewIp.w0 = textViewArr6;
            dialogViewIp.x0 = myCoverView;
            dialogViewIp.N(true);
            Handler handler = dialogViewIp.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i13;
                    final DialogViewIp dialogViewIp2 = DialogViewIp.this;
                    if (dialogViewIp2.g0 != null && dialogViewIp2.b0 != null) {
                        if (MainApp.K1) {
                            dialogViewIp2.p0.setBgColor(-13816531);
                            dialogViewIp2.q0.setTextColor(-328966);
                            dialogViewIp2.r0.setImageResource(R.drawable.outline_search_dark_24);
                            dialogViewIp2.r0.setBgPreColor(-12632257);
                            dialogViewIp2.s0.setImageResource(R.drawable.outline_help_dark_24);
                            dialogViewIp2.s0.setBgPreColor(-12632257);
                            for (int i14 = 0; i14 < 5; i14++) {
                                dialogViewIp2.t0[i14].u(-13816531, -12632257);
                            }
                            for (int i15 = 0; i15 < 4; i15++) {
                                dialogViewIp2.v0[i15].setTextColor(-4079167);
                                dialogViewIp2.w0[i15].setTextColor(-328966);
                            }
                        } else {
                            dialogViewIp2.p0.setBgColor(-460552);
                            dialogViewIp2.q0.setTextColor(-16777216);
                            dialogViewIp2.r0.setImageResource(R.drawable.outline_search_black_24);
                            dialogViewIp2.r0.setBgPreColor(-2039584);
                            dialogViewIp2.s0.setImageResource(R.drawable.outline_help_black_24);
                            dialogViewIp2.s0.setBgPreColor(-2039584);
                            for (int i16 = 0; i16 < 5; i16++) {
                                dialogViewIp2.t0[i16].u(-460552, -2039584);
                            }
                            for (int i17 = 0; i17 < 4; i17++) {
                                dialogViewIp2.v0[i17].setTextColor(-10395295);
                                dialogViewIp2.w0[i17].setTextColor(-16777216);
                            }
                        }
                        dialogViewIp2.P();
                        dialogViewIp2.q0.setHint("x.x.x.x");
                        dialogViewIp2.q0.setText(dialogViewIp2.d0);
                        dialogViewIp2.q0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogViewIp.3
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i18, KeyEvent keyEvent) {
                                DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                if (dialogViewIp3.q0 != null && !dialogViewIp3.B0) {
                                    dialogViewIp3.B0 = true;
                                    Handler handler2 = dialogViewIp3.i;
                                    if (handler2 != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                DialogViewIp.E(DialogViewIp.this);
                                                DialogViewIp.this.B0 = false;
                                            }
                                        });
                                        return true;
                                    }
                                }
                                return true;
                            }
                        });
                        dialogViewIp2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                if (dialogViewIp3.r0 != null && !dialogViewIp3.B0) {
                                    dialogViewIp3.B0 = true;
                                    Handler handler2 = dialogViewIp3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.4.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                            DialogViewIp.E(DialogViewIp.this);
                                            DialogViewIp.this.B0 = false;
                                        }
                                    });
                                }
                            }
                        });
                        dialogViewIp2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                if (dialogViewIp3.a0 == null || dialogViewIp3.I0 != null) {
                                    return;
                                }
                                dialogViewIp3.K();
                                DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogViewIp3.a0, "실제 위치와 다를 수 있습니다.\n정확한 위치를 알려면, 전체 IP가 필요합니다.", R.string.ok, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogViewIp.25
                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                    public final void a() {
                                        int i18 = DialogViewIp.O0;
                                        DialogViewIp.this.K();
                                    }
                                });
                                dialogViewIp3.I0 = dialogSetMsg;
                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewIp.26
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i18 = DialogViewIp.O0;
                                        DialogViewIp.this.K();
                                    }
                                });
                            }
                        });
                        dialogViewIp2.t0[0].setText("0");
                        dialogViewIp2.t0[1].setText("64");
                        dialogViewIp2.t0[2].setText("128");
                        dialogViewIp2.t0[3].setText("192");
                        dialogViewIp2.t0[4].setText("255");
                        dialogViewIp2.v0[0].setText("인터넷 서비스 제공업체");
                        dialogViewIp2.v0[1].setText("국가");
                        dialogViewIp2.v0[2].setText("지역/도");
                        dialogViewIp2.v0[3].setText("도시");
                        dialogViewIp2.t0[0].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp.F(DialogViewIp.this, 0);
                            }
                        });
                        dialogViewIp2.t0[1].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp.F(DialogViewIp.this, 1);
                            }
                        });
                        dialogViewIp2.t0[2].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp.F(DialogViewIp.this, 2);
                            }
                        });
                        dialogViewIp2.t0[3].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp.F(DialogViewIp.this, 3);
                            }
                        });
                        dialogViewIp2.t0[4].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogViewIp.F(DialogViewIp.this, 4);
                            }
                        });
                        if (dialogViewIp2.i0 != null) {
                            dialogViewIp2.q = new MyDialogBottom.ShowAdListener() { // from class: com.mycompany.app.dialog.DialogViewIp.14
                                @Override // com.mycompany.app.view.MyDialogBottom.ShowAdListener
                                public final void a() {
                                    DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                    if (!dialogViewIp3.k0) {
                                        dialogViewIp3.k0 = true;
                                        DialogViewIp.D(dialogViewIp3);
                                    }
                                }
                            };
                            dialogViewIp2.g0.setBackground(null);
                            dialogViewIp2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewIp.11
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogViewIp.this.dismiss();
                                }
                            });
                            MyRoundLinear myRoundLinear2 = dialogViewIp2.n0;
                            if (MainApp.K1) {
                                i13 = -14606047;
                            } else {
                                i13 = -1;
                            }
                            int i18 = MainApp.l1;
                            myRoundLinear2.n = i13;
                            myRoundLinear2.m = i18;
                            myRoundLinear2.c(true, false);
                        }
                        dialogViewIp2.L(dialogViewIp2.p());
                        dialogViewIp2.g(dialogViewIp2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogViewIp.12
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                final DialogViewIp dialogViewIp3 = DialogViewIp.this;
                                if (dialogViewIp3.g0 != null) {
                                    dialogViewIp3.show();
                                    Handler handler2 = dialogViewIp3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.13
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogViewIp dialogViewIp4 = DialogViewIp.this;
                                            if (dialogViewIp4.o0 != null) {
                                                MyWebSafe myWebSafe = new MyWebSafe(dialogViewIp4.a0);
                                                dialogViewIp4.y0 = myWebSafe;
                                                MainApp.I(dialogViewIp4.b0, myWebSafe);
                                                dialogViewIp4.y0.setVisibility(4);
                                                dialogViewIp4.o0.addView(dialogViewIp4.y0, 0, new ViewGroup.LayoutParams(-1, dialogViewIp4.C0));
                                                Handler handler3 = dialogViewIp4.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new AnonymousClass18());
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void D(DialogViewIp dialogViewIp) {
        MyAdFrame myAdFrame;
        if (dialogViewIp.k0 && dialogViewIp.l0 && (myAdFrame = dialogViewIp.i0) != null && dialogViewIp.j0 == null && !dialogViewIp.m0) {
            dialogViewIp.m0 = true;
            myAdFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.15
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity mainActivity;
                    final DialogViewIp dialogViewIp2 = DialogViewIp.this;
                    if (dialogViewIp2.i0 != null && dialogViewIp2.j0 == null && MainApp.A(dialogViewIp2.b0) && (mainActivity = dialogViewIp2.a0) != null) {
                        dialogViewIp2.j0 = MainApp.d(mainActivity, 0, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogViewIp.16
                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void b(MyAdNative myAdNative) {
                                int i = DialogViewIp.O0;
                                DialogViewIp.this.M();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void c(MyAdNative myAdNative) {
                                int i = DialogViewIp.O0;
                                DialogViewIp.this.M();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void e() {
                                DialogViewIp.this.dismiss();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void f(MyAdNative myAdNative) {
                                int i = DialogViewIp.O0;
                                DialogViewIp.this.M();
                            }
                        });
                        dialogViewIp2.M();
                        dialogViewIp2.i0.a(dialogViewIp2.j0, true, dialogViewIp2.i);
                    }
                    dialogViewIp2.m0 = false;
                }
            });
        }
    }

    public static void E(DialogViewIp dialogViewIp) {
        if (dialogViewIp.x0 == null) {
            return;
        }
        String Q0 = MainUtil.Q0(dialogViewIp.q0, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.e8(dialogViewIp.b0, R.string.empty);
        } else if (!MainUtil.i6(Q0)) {
            MainUtil.e8(dialogViewIp.b0, R.string.noti_invalid);
        } else {
            dialogViewIp.N(true);
            dialogViewIp.O(Q0);
        }
    }

    public static void F(DialogViewIp dialogViewIp, int i) {
        if (dialogViewIp.t0 != null && !dialogViewIp.B0) {
            dialogViewIp.B0 = true;
            dialogViewIp.N0 = i;
            Handler handler = dialogViewIp.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.24
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewIp dialogViewIp2 = DialogViewIp.this;
                    int i2 = dialogViewIp2.N0;
                    if (dialogViewIp2.t0 != null) {
                        if (PrefZone.u0 != i2) {
                            PrefZone.u0 = i2;
                            PrefSet.f(dialogViewIp2.b0, 15, i2, "mTailIp");
                        }
                        dialogViewIp2.P();
                        String H = dialogViewIp2.H();
                        dialogViewIp2.q0.setText(H);
                        dialogViewIp2.N(true);
                        dialogViewIp2.O(H);
                    }
                    dialogViewIp2.B0 = false;
                }
            });
        }
    }

    public static String I(String str) {
        String J = J(str);
        if (J == null) {
            return J;
        }
        if (J.length() >= 9) {
            if ("Korea Telecom".equals(J)) {
                return "KT";
            }
            if (J.startsWith("Lg")) {
                if ("Lgtelecom".equals(J)) {
                    return "LG Telecom";
                }
                if (J.startsWith(" ", 2)) {
                    return "LG " + J.substring(3);
                }
            }
        }
        return J;
    }

    public static String J(String str) {
        int lastIndexOf;
        try {
            int lastIndexOf2 = str.lastIndexOf("\"<");
            if (lastIndexOf2 > 0 && (lastIndexOf = str.lastIndexOf(">\"", lastIndexOf2 - 1)) > 0) {
                String substring = str.substring(lastIndexOf + 2, lastIndexOf2);
                if (!TextUtils.isEmpty(substring)) {
                    return substring.replace("amp;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void G() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        K();
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyWebSafe myWebSafe = this.y0;
        if (myWebSafe != null) {
            if (this.z0) {
                this.z0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.y0);
            this.y0 = null;
        }
        MyRoundLinear myRoundLinear = this.n0;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.n0 = null;
        }
        MyRoundFrame myRoundFrame = this.p0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.p0 = null;
        }
        MyButtonImage myButtonImage = this.r0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.r0 = null;
        }
        MyButtonImage myButtonImage2 = this.s0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.s0 = null;
        }
        MyCoverView myCoverView = this.x0;
        if (myCoverView != null) {
            myCoverView.i();
            this.x0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.o0 = null;
        this.q0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.E0 = null;
        this.F0 = null;
        this.G0 = null;
        this.H0 = null;
        super.dismiss();
    }

    public final String H() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c0);
        int i = PrefZone.u0;
        if (i == 0) {
            sb.append(".0.0");
        } else if (i == 1) {
            sb.append(".64.64");
        } else if (i == 2) {
            sb.append(".128.128");
        } else if (i == 3) {
            sb.append(".192.192");
        } else {
            sb.append(".255.255");
        }
        return sb.toString();
    }

    public final void K() {
        DialogSetMsg dialogSetMsg = this.I0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.I0 = null;
        }
    }

    public final void L(boolean z) {
        if (this.i0 == null) {
            return;
        }
        if (z) {
            z = q();
        }
        if (z) {
            MyAdNative myAdNative = this.j0;
            if (myAdNative != null) {
                myAdNative.setVisibility(8);
            }
            this.i0.setVisibility(8);
            return;
        }
        MyAdNative myAdNative2 = this.j0;
        if (myAdNative2 != null) {
            if (myAdNative2.p()) {
                this.j0.setVisibility(0);
            } else {
                this.j0.setVisibility(8);
            }
        }
        this.i0.setVisibility(0);
    }

    public final void M() {
        MyAdNative myAdNative;
        int i;
        if (this.i0 != null && (myAdNative = this.j0) != null) {
            if (!myAdNative.p()) {
                L(p());
                return;
            }
            MyDialogLinear myDialogLinear = this.g0;
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            myDialogLinear.setBackgroundColor(i);
            this.i0.setOnClickListener(null);
            this.j0.setDarkMode(true);
            L(p());
        }
    }

    public final void N(boolean z) {
        if (this.t0 == null) {
            return;
        }
        if (z) {
            for (int i = 0; i < 5; i++) {
                this.t0[i].setClickable(false);
            }
            this.q0.setEnabled(false);
            this.r0.setClickable(false);
            this.s0.setClickable(false);
            this.x0.setVisibility(0);
            return;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            this.t0[i2].setClickable(true);
        }
        this.q0.setEnabled(true);
        this.r0.setClickable(true);
        this.s0.setClickable(true);
        this.x0.setVisibility(8);
    }

    public final void O(String str) {
        if (this.y0 != null) {
            this.d0 = str;
            this.f0 = false;
            MainUtil.I(this.y0, android.support.v4.media.a.w("(function(){var ele=document.querySelector(\"input[type='text']\");if(ele){ele.value='", str, "';var el2=document.querySelector(\"button[type='submit']\");if(el2){el2.onclick='';el2.click();}}})();").toString(), true);
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.23
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewIp dialogViewIp = DialogViewIp.this;
                    if (dialogViewIp.f0) {
                        return;
                    }
                    MainUtil.I(dialogViewIp.y0, "myIp(document);", true);
                }
            }, 1000L);
        }
    }

    public final void P() {
        if (this.t0 != null) {
            int i = 0;
            if (MainApp.K1) {
                while (i < 5) {
                    if (i == PrefZone.u0) {
                        this.t0[i].setTextColor(-328966);
                        this.t0[i].setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                    } else {
                        this.t0[i].setTextColor(-4079167);
                        this.t0[i].setTypeface(null);
                    }
                    i++;
                }
                return;
            }
            while (i < 5) {
                if (i == PrefZone.u0) {
                    this.t0[i].setTextColor(-16777216);
                    this.t0[i].setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                } else {
                    this.t0[i].setTextColor(-10395295);
                    this.t0[i].setTypeface(null);
                }
                i++;
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.J0) {
            this.J0 = true;
            if (this.i0 == null) {
                G();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.17
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewIp dialogViewIp = DialogViewIp.this;
                    MyAdFrame myAdFrame = dialogViewIp.i0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogViewIp.i0 = null;
                        MainApp.f(dialogViewIp.b0, 0);
                    }
                    dialogViewIp.j0 = null;
                    Handler handler2 = dialogViewIp.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.17.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogViewIp dialogViewIp2 = DialogViewIp.this;
                            int i = DialogViewIp.O0;
                            dialogViewIp2.G();
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogViewIp dialogViewIp = DialogViewIp.this;
            if (dialogViewIp.y0 != null) {
                dialogViewIp.z0 = false;
                DialogViewIp.B(dialogViewIp, str);
                if (!dialogViewIp.L0 && !TextUtils.isEmpty(str) && !str.equals(dialogViewIp.M0)) {
                    dialogViewIp.L0 = true;
                    dialogViewIp.M0 = str;
                    Handler handler = dialogViewIp.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.19
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewIp dialogViewIp2 = DialogViewIp.this;
                                MainUtil.l(dialogViewIp2.y0);
                                dialogViewIp2.L0 = false;
                            }
                        });
                    }
                }
                if (!dialogViewIp.D0) {
                    dialogViewIp.D0 = true;
                    Handler handler2 = dialogViewIp.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.LocalWebViewClient.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyWebSafe myWebSafe = DialogViewIp.this.y0;
                            if (myWebSafe == null) {
                                return;
                            }
                            MainUtil.I(myWebSafe, "function myIp(doc){if(!doc)return false;var ele=doc.querySelector(\"input[type='text']\");if(!ele)return false;var el2=doc.querySelector(\"code[class*='raw-data']\");if(!el2)return false;var val=null;var dat=null;if(window.ipload==0){window.ipload=1;}else{val=ele.value;dat=el2.innerHTML;}android.onIpDet(val,dat);return true;}(function(){window.ipload=0;myIp(document);if(!document.documentElement||window.sb_ip_osv)return;window.sb_ip_osv=new MutationObserver(e=>{for(var i=0;i<e.length;i++){var tgt=e[i].target;if(myIp(tgt)){break;}if(tgt.tagName=='BODY')break;}}),window.sb_ip_osv.observe(document.documentElement,{childList:!0,subtree:!0});})();", true);
                        }
                    });
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            if (dialogViewIp.y0 == null) {
                return;
            }
            dialogViewIp.z0 = true;
            DialogViewIp.B(dialogViewIp, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogViewIp dialogViewIp = DialogViewIp.this;
            dialogViewIp.y0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogViewIp.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewIp.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewIp.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            if (dialogViewIp.y0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogViewIp.B(dialogViewIp, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            if (dialogViewIp.y0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogViewIp.B(dialogViewIp, str);
            dialogViewIp.y0.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogViewIp dialogViewIp = DialogViewIp.this;
            if (dialogViewIp.y0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    DialogViewIp.B(dialogViewIp, uri);
                }
            }
            return false;
        }
    }
}
