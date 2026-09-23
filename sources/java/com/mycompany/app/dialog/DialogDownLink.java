package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.dialog.DialogDownSize;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogDownLink extends MyDialogBottom {
    public static final /* synthetic */ int r0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogPreview.PreviewListener c0;
    public String d0;
    public String e0;
    public long f0;
    public MyDialogLinear g0;
    public AppCompatTextView h0;
    public MyButtonImage i0;
    public MyButtonImage j0;
    public MyButtonImage k0;
    public MyButtonImage l0;
    public MyLineText m0;
    public MyLineText n0;
    public DialogDownSize o0;
    public String p0;
    public SpannableString q0;

    public DialogDownLink(MainActivity mainActivity, String str, String str2, long j, DialogPreview.PreviewListener previewListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = previewListener;
        this.d0 = str;
        this.e0 = str2;
        this.f0 = j;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownLink.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogDownLink dialogDownLink = DialogDownLink.this;
                Context context = dialogDownLink.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 14.0f);
                    C.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(C, layoutParams);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    myButtonImage.setVisibility(8);
                    int i = MainApp.g1;
                    myLineFrame.addView(myButtonImage, i, i);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    int i2 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams2.gravity = 8388613;
                    layoutParams2.setMarginEnd((int) MainUtil.G(context, 104.0f));
                    myLineFrame.addView(myButtonImage2, layoutParams2);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams3.gravity = 8388613;
                    layoutParams3.setMarginEnd(MainApp.h1);
                    myLineFrame.addView(p, layoutParams3);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams4.gravity = 8388613;
                    layoutParams4.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(p2, layoutParams4);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams5.weight = 1.0f;
                    q.addView(m, layoutParams5);
                    MyLineText myLineText = new MyLineText(context);
                    int i5 = MainApp.E1;
                    myLineText.setPadding(i5, i5, i5, i5);
                    myLineText.setGravity(16);
                    myLineText.setLineSpacing(MainApp.F1, 1.0f);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setMinHeight((int) MainUtil.G(context, 128.0f));
                    m.addView(myLineText, -1, -2);
                    MyLineText myLineText2 = new MyLineText(context);
                    myLineText2.setGravity(17);
                    myLineText2.setTextSize(1, 16.0f);
                    myLineText2.setText(R.string.ok);
                    myLineText2.setLinePad(MainApp.E1);
                    myLineText2.setLineUp(true);
                    q.addView(myLineText2, -1, MainApp.g1);
                    dialogDownLink.g0 = q;
                    dialogDownLink.h0 = C;
                    dialogDownLink.i0 = myButtonImage;
                    dialogDownLink.j0 = myButtonImage2;
                    dialogDownLink.k0 = p;
                    dialogDownLink.l0 = p2;
                    dialogDownLink.m0 = myLineText;
                    dialogDownLink.n0 = myLineText2;
                    Handler handler2 = dialogDownLink.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownLink.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogDownLink dialogDownLink2 = DialogDownLink.this;
                            if (dialogDownLink2.g0 != null && dialogDownLink2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogDownLink2.i0.setImageResource(R.drawable.outline_contact_support_dark_20);
                                    dialogDownLink2.j0.setImageResource(R.drawable.outline_open_with_dark_24);
                                    dialogDownLink2.k0.setImageResource(R.drawable.outline_share_dark_24);
                                    dialogDownLink2.l0.setImageResource(R.drawable.outline_link_dark_24);
                                    dialogDownLink2.i0.setBgPreColor(-12632257);
                                    dialogDownLink2.j0.setBgPreColor(-12632257);
                                    dialogDownLink2.k0.setBgPreColor(-12632257);
                                    dialogDownLink2.l0.setBgPreColor(-12632257);
                                    dialogDownLink2.h0.setTextColor(-328966);
                                    dialogDownLink2.m0.setTextColor(-328966);
                                    dialogDownLink2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogDownLink2.n0.setTextColor(-328966);
                                } else {
                                    dialogDownLink2.i0.setImageResource(R.drawable.outline_contact_support_black_20);
                                    dialogDownLink2.j0.setImageResource(R.drawable.outline_open_with_black_24);
                                    dialogDownLink2.k0.setImageResource(R.drawable.outline_share_black_24);
                                    dialogDownLink2.l0.setImageResource(R.drawable.outline_link_black_24);
                                    dialogDownLink2.i0.setBgPreColor(553648128);
                                    dialogDownLink2.j0.setBgPreColor(553648128);
                                    dialogDownLink2.k0.setBgPreColor(553648128);
                                    dialogDownLink2.l0.setBgPreColor(553648128);
                                    dialogDownLink2.h0.setTextColor(-16777216);
                                    dialogDownLink2.m0.setTextColor(-16777216);
                                    dialogDownLink2.n0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogDownLink2.n0.setTextColor(-14784824);
                                }
                                if (dialogDownLink2.m0 != null) {
                                    dialogDownLink2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownLink.9
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i6;
                                            SpannableString s6;
                                            DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                            String str3 = dialogDownLink3.d0;
                                            if (str3 != null) {
                                                if (str3.startsWith("data:image/")) {
                                                    if (str3.length() > 256) {
                                                        try {
                                                            str3 = str3.substring(0, 256) + "...";
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                    s6 = null;
                                                } else {
                                                    String U3 = MainUtil.U3(str3, false);
                                                    int i7 = -1;
                                                    if (!TextUtils.isEmpty(U3) && !TextUtils.isEmpty(str3)) {
                                                        int lastIndexOf = str3.lastIndexOf("." + U3);
                                                        if (lastIndexOf == -1) {
                                                            lastIndexOf = str3.lastIndexOf("=" + U3);
                                                            if (lastIndexOf == -1) {
                                                                i7 = str3.lastIndexOf(U3);
                                                            }
                                                        }
                                                        i7 = lastIndexOf + 1;
                                                    }
                                                    if (MainApp.K1) {
                                                        i6 = -15108398;
                                                    } else {
                                                        i6 = -4987396;
                                                    }
                                                    s6 = MainUtil.s6(str3, i6, i7, U3, MainApp.E1);
                                                }
                                                dialogDownLink3.p0 = str3;
                                                dialogDownLink3.q0 = s6;
                                                Handler handler3 = dialogDownLink3.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownLink.9.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MyLineText myLineText3;
                                                        DialogDownLink dialogDownLink4 = DialogDownLink.this;
                                                        String str4 = dialogDownLink4.p0;
                                                        SpannableString spannableString = dialogDownLink4.q0;
                                                        dialogDownLink4.p0 = null;
                                                        dialogDownLink4.q0 = null;
                                                        if (TextUtils.isEmpty(str4) || (myLineText3 = dialogDownLink4.m0) == null) {
                                                            return;
                                                        }
                                                        if (spannableString != null) {
                                                            myLineText3.setText(spannableString, TextView.BufferType.SPANNABLE);
                                                        } else {
                                                            myLineText3.setText(str4);
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                    });
                                }
                                dialogDownLink2.B();
                                if (dialogDownLink2.f0 <= 0) {
                                    dialogDownLink2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownLink.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownSize dialogDownSize;
                                            final DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                            if (dialogDownLink3.a0 == null || (dialogDownSize = dialogDownLink3.o0) != null) {
                                                return;
                                            }
                                            if (dialogDownSize != null) {
                                                dialogDownSize.dismiss();
                                                dialogDownLink3.o0 = null;
                                            }
                                            DialogDownSize dialogDownSize2 = new DialogDownSize(dialogDownLink3.a0, dialogDownLink3.d0, dialogDownLink3.e0, dialogDownLink3.f0, new DialogDownSize.DownSizeListener() { // from class: com.mycompany.app.dialog.DialogDownLink.10
                                                @Override // com.mycompany.app.dialog.DialogDownSize.DownSizeListener
                                                public final void a(long j2) {
                                                    DialogDownLink dialogDownLink4 = DialogDownLink.this;
                                                    dialogDownLink4.f0 = j2;
                                                    dialogDownLink4.B();
                                                    Handler handler3 = dialogDownLink4.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownLink.10.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogDownLink dialogDownLink5 = DialogDownLink.this;
                                                            DialogPreview.PreviewListener previewListener2 = dialogDownLink5.c0;
                                                            if (previewListener2 != null) {
                                                                previewListener2.b(null, dialogDownLink5.f0, false);
                                                            }
                                                        }
                                                    });
                                                }
                                            });
                                            dialogDownLink3.o0 = dialogDownSize2;
                                            dialogDownSize2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogDownLink.11
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i6 = DialogDownLink.r0;
                                                    DialogDownLink dialogDownLink4 = DialogDownLink.this;
                                                    DialogDownSize dialogDownSize3 = dialogDownLink4.o0;
                                                    if (dialogDownSize3 != null) {
                                                        dialogDownSize3.dismiss();
                                                        dialogDownLink4.o0 = null;
                                                    }
                                                }
                                            });
                                        }
                                    });
                                }
                                dialogDownLink2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownLink.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                        DialogPreview.PreviewListener previewListener2 = dialogDownLink3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.c(dialogDownLink3.d0, null);
                                        }
                                    }
                                });
                                dialogDownLink2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownLink.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                        DialogPreview.PreviewListener previewListener2 = dialogDownLink3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.d(dialogDownLink3.d0);
                                        }
                                    }
                                });
                                dialogDownLink2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownLink.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                        MainUtil.s(R.string.copied_clipboard, dialogDownLink3.b0, "Copied URL", dialogDownLink3.d0);
                                    }
                                });
                                dialogDownLink2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownLink.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDownLink.this.dismiss();
                                    }
                                });
                                dialogDownLink2.g(dialogDownLink2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownLink.8
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogDownLink dialogDownLink3 = DialogDownLink.this;
                                        if (dialogDownLink3.g0 == null) {
                                            return;
                                        }
                                        dialogDownLink3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        AppCompatTextView appCompatTextView = this.h0;
        if (appCompatTextView == null) {
            return;
        }
        long j = this.f0;
        if (j > 0) {
            appCompatTextView.setText(MainUtil.h1(j));
            this.h0.setVisibility(0);
            this.i0.setVisibility(8);
        } else {
            appCompatTextView.setVisibility(8);
            this.i0.setVisibility(0);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogDownSize dialogDownSize = this.o0;
        if (dialogDownSize != null) {
            dialogDownSize.dismiss();
            this.o0 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyButtonImage myButtonImage = this.i0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i0 = null;
        }
        MyButtonImage myButtonImage2 = this.j0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.j0 = null;
        }
        MyButtonImage myButtonImage3 = this.k0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.k0 = null;
        }
        MyButtonImage myButtonImage4 = this.l0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.l0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.h0 = null;
        this.m0 = null;
        super.dismiss();
    }
}
