package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogPermission extends MyDialogBottom {
    public Context a0;
    public DialogSetDesk.SetDeskListener b0;
    public String c0;
    public String d0;
    public String e0;
    public MyDialogLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public MyLineText l0;
    public boolean m0;

    public DialogPermission(Activity activity, String str, String str2, String str3, DialogSetDesk.SetDeskListener setDeskListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = setDeskListener;
        this.c0 = str;
        this.d0 = str2;
        this.e0 = str3;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPermission.1
            @Override // java.lang.Runnable
            public final void run() {
                AppCompatTextView appCompatTextView;
                AppCompatTextView appCompatTextView2;
                AppCompatTextView appCompatTextView3;
                AppCompatTextView appCompatTextView4;
                final DialogPermission dialogPermission = DialogPermission.this;
                Context context = dialogPermission.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(m, layoutParams);
                    int i = MainApp.g1 / 2;
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i2 = MainApp.E1;
                    linearLayout.setPadding(i2, i, i2, i);
                    linearLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                    linearLayout.setOrientation(1);
                    m.addView(linearLayout, -1, -2);
                    if (!TextUtils.isEmpty(dialogPermission.c0)) {
                        appCompatTextView = new AppCompatTextView(context, null);
                        appCompatTextView.setPadding(0, 0, 0, MainApp.E1);
                        appCompatTextView.setGravity(1);
                        appCompatTextView.setMaxLines(2);
                        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                        appCompatTextView.setTextSize(1, 14.0f);
                        linearLayout.addView(appCompatTextView, -1, -2);
                    } else {
                        appCompatTextView = null;
                    }
                    if (!TextUtils.isEmpty(dialogPermission.d0)) {
                        appCompatTextView2 = new AppCompatTextView(context, null);
                        appCompatTextView2.setGravity(1);
                        appCompatTextView2.setMaxLines(2);
                        appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
                        appCompatTextView2.setTextSize(1, 14.0f);
                        linearLayout.addView(appCompatTextView2, -1, -2);
                    } else {
                        appCompatTextView2 = null;
                    }
                    if (!TextUtils.isEmpty(dialogPermission.e0)) {
                        appCompatTextView3 = new AppCompatTextView(context, null);
                        appCompatTextView3.setGravity(1);
                        appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView3.setTextSize(1, 16.0f);
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams2.topMargin = i;
                        linearLayout.addView(appCompatTextView3, layoutParams2);
                        appCompatTextView4 = new AppCompatTextView(context, null);
                        appCompatTextView4.setGravity(1);
                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView4.setTextSize(1, 16.0f);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams3.topMargin = i;
                        linearLayout.addView(appCompatTextView4, layoutParams3);
                    } else {
                        appCompatTextView3 = null;
                        appCompatTextView4 = null;
                    }
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.deny, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.allow, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogPermission.f0 = q;
                    dialogPermission.g0 = appCompatTextView;
                    dialogPermission.h0 = appCompatTextView2;
                    dialogPermission.i0 = appCompatTextView3;
                    dialogPermission.j0 = appCompatTextView4;
                    dialogPermission.k0 = l;
                    dialogPermission.l0 = s;
                    Handler handler2 = dialogPermission.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPermission.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogPermission dialogPermission2 = DialogPermission.this;
                            if (dialogPermission2.f0 != null && dialogPermission2.a0 != null) {
                                AppCompatTextView appCompatTextView5 = dialogPermission2.g0;
                                if (appCompatTextView5 != null) {
                                    appCompatTextView5.setText(dialogPermission2.c0);
                                }
                                AppCompatTextView appCompatTextView6 = dialogPermission2.h0;
                                if (appCompatTextView6 != null) {
                                    appCompatTextView6.setText(dialogPermission2.d0);
                                }
                                AppCompatTextView appCompatTextView7 = dialogPermission2.i0;
                                if (appCompatTextView7 != null) {
                                    appCompatTextView7.setText(R.string.site_permission);
                                }
                                AppCompatTextView appCompatTextView8 = dialogPermission2.j0;
                                if (appCompatTextView8 != null) {
                                    appCompatTextView8.setText(dialogPermission2.e0);
                                }
                                if (MainApp.K1) {
                                    AppCompatTextView appCompatTextView9 = dialogPermission2.g0;
                                    if (appCompatTextView9 != null) {
                                        appCompatTextView9.setTextColor(-328966);
                                    }
                                    AppCompatTextView appCompatTextView10 = dialogPermission2.h0;
                                    if (appCompatTextView10 != null) {
                                        appCompatTextView10.setTextColor(-328966);
                                    }
                                    AppCompatTextView appCompatTextView11 = dialogPermission2.i0;
                                    if (appCompatTextView11 != null) {
                                        appCompatTextView11.setTextColor(-328966);
                                    }
                                    AppCompatTextView appCompatTextView12 = dialogPermission2.j0;
                                    if (appCompatTextView12 != null) {
                                        appCompatTextView12.setTextColor(-328966);
                                    }
                                    dialogPermission2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogPermission2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogPermission2.k0.setTextColor(-328966);
                                    dialogPermission2.l0.setTextColor(-328966);
                                } else {
                                    AppCompatTextView appCompatTextView13 = dialogPermission2.g0;
                                    if (appCompatTextView13 != null) {
                                        appCompatTextView13.setTextColor(-16777216);
                                    }
                                    AppCompatTextView appCompatTextView14 = dialogPermission2.h0;
                                    if (appCompatTextView14 != null) {
                                        appCompatTextView14.setTextColor(-16777216);
                                    }
                                    AppCompatTextView appCompatTextView15 = dialogPermission2.i0;
                                    if (appCompatTextView15 != null) {
                                        appCompatTextView15.setTextColor(-16777216);
                                    }
                                    AppCompatTextView appCompatTextView16 = dialogPermission2.j0;
                                    if (appCompatTextView16 != null) {
                                        appCompatTextView16.setTextColor(-16777216);
                                    }
                                    dialogPermission2.k0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogPermission2.l0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogPermission2.k0.setTextColor(-14784824);
                                    dialogPermission2.l0.setTextColor(-14784824);
                                }
                                dialogPermission2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPermission.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPermission dialogPermission3 = DialogPermission.this;
                                        if (!dialogPermission3.m0) {
                                            dialogPermission3.m0 = true;
                                            Handler handler3 = dialogPermission3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPermission.3.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                    DialogSetDesk.SetDeskListener setDeskListener2 = DialogPermission.this.b0;
                                                    if (setDeskListener2 != null) {
                                                        setDeskListener2.a(true);
                                                    }
                                                    DialogPermission.this.m0 = false;
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogPermission2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPermission.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPermission dialogPermission3 = DialogPermission.this;
                                        if (!dialogPermission3.m0) {
                                            dialogPermission3.m0 = true;
                                            Handler handler3 = dialogPermission3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPermission.4.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                                    DialogSetDesk.SetDeskListener setDeskListener2 = DialogPermission.this.b0;
                                                    if (setDeskListener2 != null) {
                                                        setDeskListener2.a(false);
                                                    }
                                                    DialogPermission.this.m0 = false;
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogPermission2.g(dialogPermission2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPermission.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogPermission dialogPermission3 = DialogPermission.this;
                                        if (dialogPermission3.f0 == null) {
                                            return;
                                        }
                                        dialogPermission3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }
}
