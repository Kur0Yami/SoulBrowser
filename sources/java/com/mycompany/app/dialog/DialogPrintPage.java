package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;

/* loaded from: classes3.dex */
public class DialogPrintPage extends MyDialogBottom {
    public Context a0;
    public PathChangeListener b0;
    public String c0;
    public Bitmap d0;
    public String e0;
    public MyDialogLinear f0;
    public MyRoundImage g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyEditText j0;
    public MyLineText k0;
    public boolean l0;

    /* loaded from: classes3.dex */
    public interface PathChangeListener {
        void a(String str);
    }

    public DialogPrintPage(Activity activity, String str, Bitmap bitmap, PathChangeListener pathChangeListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = pathChangeListener;
        this.c0 = str;
        this.d0 = bitmap;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrintPage.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogPrintPage dialogPrintPage = DialogPrintPage.this;
                if (dialogPrintPage.a0 != null) {
                    if (!TextUtils.isEmpty(dialogPrintPage.c0)) {
                        dialogPrintPage.e0 = MainUtil.l3(186, dialogPrintPage.c0, "Printpage");
                    }
                    Handler handler = dialogPrintPage.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrintPage.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPrintPage.B(DialogPrintPage.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogPrintPage dialogPrintPage) {
        Context context = dialogPrintPage.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
            AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            i2.setEllipsize(TextUtils.TruncateAt.END);
            i2.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 16;
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(MainApp.E1);
            myLineFrame.addView(i2, layoutParams2);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams3.weight = 1.0f;
            q.addView(m, layoutParams3);
            FrameLayout frameLayout = new FrameLayout(context);
            m.addView(frameLayout, -1, -2);
            int G2 = (int) MainUtil.G(context, 88.0f);
            int G3 = (int) MainUtil.G(context, 12.0f);
            FrameLayout frameLayout2 = new FrameLayout(context);
            int i3 = MainApp.E1;
            frameLayout2.setPadding(i3, G3, i3, G3);
            frameLayout.addView(frameLayout2, -1, G2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            frameLayout2.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 8388691;
            frameLayout2.addView(myEditText, layoutParams4);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.apply);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogPrintPage.f0 = q;
            dialogPrintPage.g0 = myRoundImage;
            dialogPrintPage.h0 = i2;
            dialogPrintPage.i0 = j;
            dialogPrintPage.j0 = myEditText;
            dialogPrintPage.k0 = myLineText;
            Handler handler = dialogPrintPage.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrintPage.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPrintPage dialogPrintPage2 = DialogPrintPage.this;
                    Bitmap bitmap = dialogPrintPage2.d0;
                    dialogPrintPage2.d0 = null;
                    if (dialogPrintPage2.f0 != null && dialogPrintPage2.a0 != null) {
                        if (MainApp.K1) {
                            dialogPrintPage2.h0.setTextColor(-328966);
                            dialogPrintPage2.i0.setTextColor(-4079167);
                            dialogPrintPage2.j0.setTextColor(-328966);
                            dialogPrintPage2.k0.setTextColor(-328966);
                            dialogPrintPage2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogPrintPage2.h0.setTextColor(-16777216);
                            dialogPrintPage2.i0.setTextColor(-10395295);
                            dialogPrintPage2.j0.setTextColor(-16777216);
                            dialogPrintPage2.k0.setTextColor(-14784824);
                            dialogPrintPage2.k0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        if (MainUtil.f6(bitmap)) {
                            if (dialogPrintPage2.g0 != null && MainUtil.f6(bitmap)) {
                                dialogPrintPage2.g0.setIconSmall(true);
                                dialogPrintPage2.g0.setImageBitmap(bitmap);
                            }
                        } else if (MainApp.K1) {
                            dialogPrintPage2.g0.o(-460552, R.drawable.outline_picture_as_pdf_dark_24);
                        } else {
                            dialogPrintPage2.g0.o(-460552, R.drawable.outline_picture_as_pdf_black_24);
                        }
                        if (!TextUtils.isEmpty(dialogPrintPage2.c0)) {
                            dialogPrintPage2.h0.setText(dialogPrintPage2.c0);
                            if (!TextUtils.isEmpty(dialogPrintPage2.e0)) {
                                dialogPrintPage2.j0.setText(dialogPrintPage2.e0);
                            }
                        }
                        dialogPrintPage2.j0.setSelectAllOnFocus(true);
                        dialogPrintPage2.j0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPrintPage.3
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                DialogPrintPage dialogPrintPage3 = DialogPrintPage.this;
                                MyEditText myEditText2 = dialogPrintPage3.j0;
                                if (myEditText2 == null || dialogPrintPage3.l0) {
                                    return true;
                                }
                                dialogPrintPage3.l0 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrintPage.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                        DialogPrintPage.C(DialogPrintPage.this);
                                        DialogPrintPage.this.l0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogPrintPage2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPrintPage.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogPrintPage dialogPrintPage3 = DialogPrintPage.this;
                                MyLineText myLineText2 = dialogPrintPage3.k0;
                                if (myLineText2 == null || dialogPrintPage3.l0) {
                                    return;
                                }
                                dialogPrintPage3.l0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrintPage.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogPrintPage.C(DialogPrintPage.this);
                                        DialogPrintPage.this.l0 = false;
                                    }
                                });
                            }
                        });
                        dialogPrintPage2.g(dialogPrintPage2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPrintPage.5
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogPrintPage dialogPrintPage3 = DialogPrintPage.this;
                                if (dialogPrintPage3.f0 == null) {
                                    return;
                                }
                                dialogPrintPage3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogPrintPage dialogPrintPage) {
        MyEditText myEditText;
        if (dialogPrintPage.a0 != null && (myEditText = dialogPrintPage.j0) != null) {
            String Q0 = MainUtil.Q0(myEditText, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogPrintPage.a0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogPrintPage.a0, R.string.long_name);
                return;
            }
            MainUtil.X4(dialogPrintPage.a0, dialogPrintPage.j0);
            PathChangeListener pathChangeListener = dialogPrintPage.b0;
            if (pathChangeListener != null) {
                pathChangeListener.a(Q0);
            }
            dialogPrintPage.dismiss();
        }
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
        MyRoundImage myRoundImage = this.g0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.g0 = null;
        }
        MyEditText myEditText = this.j0;
        if (myEditText != null) {
            myEditText.c();
            this.j0 = null;
        }
        MyLineText myLineText = this.k0;
        if (myLineText != null) {
            myLineText.u();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.h0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
