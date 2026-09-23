package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogSetMsg extends MyDialogBottom {
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public DialogMsgListener c0;
    public final boolean d0;
    public final int e0;
    public String f0;
    public final int g0;
    public final int h0;
    public MyDialogLinear i0;
    public MyButtonImage j0;
    public MyLineText k0;
    public AppCompatTextView l0;
    public MyLineText m0;
    public MyLineText n0;
    public int o0;

    /* loaded from: classes3.dex */
    public interface DialogMsgListener {
        void a();

        void b();
    }

    public DialogSetMsg(Activity activity, int i, int i2, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.e0 = i;
        this.g0 = i2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetMsg.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetMsg.B(DialogSetMsg.this);
            }
        });
    }

    public static void B(DialogSetMsg dialogSetMsg) {
        MyButtonImage myButtonImage;
        AppCompatTextView appCompatTextView;
        int i;
        MyLineText myLineText;
        MyLineText myLineText2;
        int i2 = dialogSetMsg.e0;
        int i3 = dialogSetMsg.h0;
        int i4 = dialogSetMsg.g0;
        Context context = dialogSetMsg.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            if (dialogSetMsg.d0) {
                MyLineFrame myLineFrame = new MyLineFrame(context);
                myLineFrame.setLinePad(MainApp.E1);
                myLineFrame.setLineDn(true);
                q.addView(myLineFrame, -1, MainApp.g1);
                myButtonImage = new MyButtonImage(context);
                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int i5 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
                layoutParams.gravity = 8388613;
                layoutParams.setMarginEnd(MainApp.F1);
                myLineFrame.addView(myButtonImage, layoutParams);
            } else {
                myButtonImage = null;
            }
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2.weight = 1.0f;
            q.addView(m, layoutParams2);
            if (i2 == 0 && TextUtils.isEmpty(dialogSetMsg.f0)) {
                appCompatTextView = null;
            } else {
                appCompatTextView = new AppCompatTextView(context, null);
                int i6 = MainApp.E1;
                appCompatTextView.setPadding(i6, i6, i6, i6);
                appCompatTextView.setGravity(17);
                appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                appCompatTextView.setTextSize(1, 16.0f);
                if (i2 != 0) {
                    appCompatTextView.setText(i2);
                } else {
                    appCompatTextView.setText(dialogSetMsg.f0);
                }
                if (dialogSetMsg.c0 != null) {
                    i = 88;
                } else {
                    i = 72;
                }
                appCompatTextView.setMinHeight((int) MainUtil.G(context, i));
                m.addView(appCompatTextView, -1, -2);
            }
            if (i3 != 0) {
                MyLineLinear myLineLinear = new MyLineLinear(context);
                myLineLinear.setBaselineAligned(false);
                myLineLinear.setOrientation(0);
                myLineLinear.setLinePad(MainApp.E1);
                myLineLinear.setLineUp(true);
                q.addView(myLineLinear, -1, MainApp.g1);
                if (i3 != 0) {
                    myLineText2 = new MyLineText(context);
                    myLineText2.setGravity(17);
                    myLineText2.setTextSize(1, 16.0f);
                    myLineText2.setText(i3);
                    myLineText2.s(context);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams3.weight = 1.0f;
                    myLineLinear.addView(myLineText2, layoutParams3);
                } else {
                    myLineText2 = null;
                }
                if (i4 != 0) {
                    myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(i4);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams4.weight = 1.0f;
                    myLineLinear.addView(myLineText, layoutParams4);
                } else {
                    myLineText = null;
                }
            } else {
                if (i4 != 0) {
                    myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(i4);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                } else {
                    myLineText = null;
                }
                myLineText2 = null;
            }
            dialogSetMsg.i0 = q;
            dialogSetMsg.j0 = myButtonImage;
            dialogSetMsg.k0 = null;
            dialogSetMsg.l0 = appCompatTextView;
            dialogSetMsg.m0 = myLineText;
            dialogSetMsg.n0 = myLineText2;
            Handler handler = dialogSetMsg.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetMsg.4
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogSetMsg dialogSetMsg2 = DialogSetMsg.this;
                    MyDialogLinear myDialogLinear = dialogSetMsg2.i0;
                    if (myDialogLinear != null && dialogSetMsg2.a0 != null) {
                        int i7 = dialogSetMsg2.o0;
                        if (i7 != 0) {
                            myDialogLinear.setFilterColor(i7);
                        }
                        if (MainApp.K1) {
                            MyButtonImage myButtonImage2 = dialogSetMsg2.j0;
                            if (myButtonImage2 != null) {
                                myButtonImage2.setImageResource(R.drawable.outline_settings_dark_20);
                                dialogSetMsg2.j0.setBgPreColor(-12632257);
                            }
                            MyLineText myLineText3 = dialogSetMsg2.k0;
                            if (myLineText3 != null) {
                                myLineText3.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView2 = dialogSetMsg2.l0;
                            if (appCompatTextView2 != null) {
                                appCompatTextView2.setTextColor(-328966);
                            }
                            MyLineText myLineText4 = dialogSetMsg2.m0;
                            if (myLineText4 != null) {
                                myLineText4.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogSetMsg2.m0.setTextColor(-328966);
                            }
                            MyLineText myLineText5 = dialogSetMsg2.n0;
                            if (myLineText5 != null) {
                                myLineText5.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogSetMsg2.n0.setTextColor(-328966);
                            }
                        } else {
                            MyButtonImage myButtonImage3 = dialogSetMsg2.j0;
                            if (myButtonImage3 != null) {
                                myButtonImage3.setImageResource(R.drawable.outline_settings_black_20);
                                dialogSetMsg2.j0.setBgPreColor(553648128);
                            }
                            MyLineText myLineText6 = dialogSetMsg2.k0;
                            if (myLineText6 != null) {
                                myLineText6.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView3 = dialogSetMsg2.l0;
                            if (appCompatTextView3 != null) {
                                appCompatTextView3.setTextColor(-16777216);
                            }
                            MyLineText myLineText7 = dialogSetMsg2.m0;
                            if (myLineText7 != null) {
                                myLineText7.setBackgroundResource(R.drawable.selector_normal);
                                dialogSetMsg2.m0.setTextColor(-14784824);
                            }
                            MyLineText myLineText8 = dialogSetMsg2.n0;
                            if (myLineText8 != null) {
                                myLineText8.setBackgroundResource(R.drawable.selector_normal);
                                dialogSetMsg2.n0.setTextColor(-16777216);
                            }
                        }
                        MyButtonImage myButtonImage4 = dialogSetMsg2.j0;
                        if (myButtonImage4 != null) {
                            myButtonImage4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetMsg.5
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogMsgListener dialogMsgListener = DialogSetMsg.this.c0;
                                    if (dialogMsgListener != null) {
                                        dialogMsgListener.b();
                                    }
                                }
                            });
                        }
                        MyLineText myLineText9 = dialogSetMsg2.m0;
                        if (myLineText9 != null) {
                            myLineText9.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetMsg.6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogSetMsg dialogSetMsg3 = DialogSetMsg.this;
                                    DialogSetFull.DialogApplyListener dialogApplyListener = dialogSetMsg3.b0;
                                    if (dialogApplyListener != null) {
                                        dialogApplyListener.a();
                                        return;
                                    }
                                    DialogMsgListener dialogMsgListener = dialogSetMsg3.c0;
                                    if (dialogMsgListener != null) {
                                        dialogMsgListener.a();
                                    }
                                }
                            });
                        }
                        MyLineText myLineText10 = dialogSetMsg2.n0;
                        if (myLineText10 != null) {
                            myLineText10.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetMsg.7
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogSetMsg.this.dismiss();
                                }
                            });
                        }
                        dialogSetMsg2.g(dialogSetMsg2.i0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetMsg.8
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogSetMsg dialogSetMsg3 = DialogSetMsg.this;
                                if (dialogSetMsg3.i0 == null) {
                                    return;
                                }
                                dialogSetMsg3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        int i;
        if (this.i0 != null) {
            setCanceledOnTouchOutside(false);
            this.i0.e(0, 0, true, false);
            MyLineText myLineText = this.m0;
            if (myLineText != null) {
                myLineText.setEnabled(false);
                MyLineText myLineText2 = this.m0;
                if (MainApp.K1) {
                    i = -8355712;
                } else {
                    i = -2434342;
                }
                myLineText2.setTextColor(i);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.i0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.i0 = null;
        }
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j0 = null;
        }
        MyLineText myLineText = this.m0;
        if (myLineText != null) {
            myLineText.u();
            this.m0 = null;
        }
        MyLineText myLineText2 = this.n0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.k0 = null;
        this.l0 = null;
        super.dismiss();
    }

    public DialogSetMsg(Activity activity, String str, int i, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.f0 = str;
        this.g0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetMsg.2
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetMsg.B(DialogSetMsg.this);
            }
        });
    }

    public DialogSetMsg(Activity activity, boolean z, int i, int i2, int i3, DialogMsgListener dialogMsgListener) {
        super(activity);
        this.a0 = getContext();
        this.c0 = dialogMsgListener;
        this.d0 = z;
        this.e0 = i;
        this.g0 = i2;
        this.h0 = i3;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetMsg.3
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetMsg.B(DialogSetMsg.this);
            }
        });
    }
}
