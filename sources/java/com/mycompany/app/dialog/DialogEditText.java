package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.CompressUtilZip2;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DialogEditText extends MyDialogBottom {
    public Context a0;
    public EditTextListener b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyButtonCheck f0;
    public AppCompatTextView g0;
    public MyEditText h0;
    public MyLineText i0;
    public DialogTask j0;
    public boolean k0;
    public final boolean l0;
    public final boolean m0;
    public final int n0;
    public String o0;
    public String p0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public boolean h;

        public DialogTask(DialogEditText dialogEditText, String str, String str2) {
            WeakReference weakReference = new WeakReference(dialogEditText);
            this.e = weakReference;
            if (((DialogEditText) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = str2;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            WeakReference weakReference = this.e;
            if (weakReference != null && ((DialogEditText) weakReference.get()) != null && !this.f12839c) {
                this.h = CompressUtilZip2.c(this.f, this.g);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogEditText dialogEditText;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditText = (DialogEditText) weakReference.get()) != null) {
                dialogEditText.j0 = null;
                if (!this.h) {
                    MainUtil.e8(dialogEditText.a0, R.string.invalid_password);
                    if (dialogEditText.c0 != null) {
                        dialogEditText.setCanceledOnTouchOutside(true);
                        dialogEditText.c0.e(0, 0, false, false);
                        dialogEditText.h0.setEnabled(true);
                        dialogEditText.i0.setEnabled(true);
                        dialogEditText.i0.setActivated(false);
                        dialogEditText.i0.setText(R.string.apply);
                        MyLineText myLineText = dialogEditText.i0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -14784824;
                        }
                        myLineText.setTextColor(i);
                        return;
                    }
                    return;
                }
                EditTextListener editTextListener = dialogEditText.b0;
                if (editTextListener != null) {
                    editTextListener.a(this.g);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface EditTextListener {
        void a(String str);

        void b();
    }

    public DialogEditText(Activity activity, int i, String str, String str2, boolean z, EditTextListener editTextListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = editTextListener;
        this.n0 = i;
        this.o0 = str;
        this.p0 = str2;
        if (z) {
            this.l0 = true;
        } else if (i == R.string.news_info_1 || i == R.string.url) {
            this.m0 = true;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditText.B(DialogEditText.this);
            }
        });
    }

    public static void B(DialogEditText dialogEditText) {
        MyButtonCheck myButtonCheck;
        boolean z = dialogEditText.l0;
        Context context = dialogEditText.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 12.0f);
            int G2 = (int) MainUtil.G(context, 10.0f);
            int G3 = (int) MainUtil.G(context, 88.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setPaddingRelative(MainApp.E1, G, G2, G);
            q.addView(frameLayout, -1, G3);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams.gravity = 8388691;
            if (z) {
                myEditText.setInputType(129);
                myEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                layoutParams.setMarginEnd(MainApp.g1 + MainApp.F1);
            } else {
                myEditText.setInputType(161);
            }
            layoutParams.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout.addView(myEditText, layoutParams);
            if (z) {
                myButtonCheck = new MyButtonCheck(context);
                int i = MainApp.g1;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
                layoutParams2.gravity = 8388693;
                layoutParams2.setMarginStart(MainApp.E1);
                frameLayout.addView(myButtonCheck, layoutParams2);
            } else {
                myButtonCheck = null;
            }
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogEditText.c0 = q;
            dialogEditText.d0 = null;
            dialogEditText.e0 = null;
            dialogEditText.f0 = myButtonCheck;
            dialogEditText.g0 = j;
            dialogEditText.h0 = myEditText;
            dialogEditText.i0 = r;
            Handler handler = dialogEditText.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditText dialogEditText2 = DialogEditText.this;
                    if (dialogEditText2.c0 != null && dialogEditText2.a0 != null) {
                        if (MainApp.K1) {
                            dialogEditText2.g0.setTextColor(-4079167);
                            dialogEditText2.h0.setTextColor(-328966);
                            dialogEditText2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditText2.i0.setTextColor(-328966);
                        } else {
                            dialogEditText2.g0.setTextColor(-10395295);
                            dialogEditText2.h0.setTextColor(-16777216);
                            dialogEditText2.i0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditText2.i0.setTextColor(-14784824);
                        }
                        AppCompatTextView appCompatTextView = dialogEditText2.e0;
                        if (appCompatTextView != null) {
                            if (MainApp.K1) {
                                appCompatTextView.setTextColor(-328966);
                            } else {
                                appCompatTextView.setTextColor(-16777216);
                            }
                            dialogEditText2.e0.setText(dialogEditText2.p0);
                            dialogEditText2.d0.o(-460552, R.drawable.outline_folder_zip_black_24);
                        }
                        int i2 = dialogEditText2.n0;
                        if (i2 == R.string.news_info_1) {
                            dialogEditText2.g0.setText("RSS Feed URL");
                        } else {
                            AppCompatTextView appCompatTextView2 = dialogEditText2.g0;
                            if (i2 <= 0) {
                                i2 = R.string.name;
                            }
                            appCompatTextView2.setText(i2);
                        }
                        MyButtonCheck myButtonCheck2 = dialogEditText2.f0;
                        if (myButtonCheck2 != null) {
                            if (MainApp.K1) {
                                myButtonCheck2.p(R.drawable.outline_visibility_off_dark_24, R.drawable.outline_visibility_dark_24);
                                dialogEditText2.f0.setBgPreColor(-12632257);
                            } else {
                                myButtonCheck2.p(R.drawable.outline_visibility_off_black_24, R.drawable.outline_visibility_black_24);
                                dialogEditText2.f0.setBgPreColor(-2039584);
                            }
                            dialogEditText2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditText.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogEditText dialogEditText3 = DialogEditText.this;
                                    MyButtonCheck myButtonCheck3 = dialogEditText3.f0;
                                    if (myButtonCheck3 != null) {
                                        if (myButtonCheck3.D) {
                                            myButtonCheck3.q(false, true);
                                            dialogEditText3.h0.setInputType(129);
                                            dialogEditText3.h0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                                        } else {
                                            myButtonCheck3.q(true, true);
                                            dialogEditText3.h0.setInputType(161);
                                            dialogEditText3.h0.setTransformationMethod(null);
                                        }
                                        String Q0 = MainUtil.Q0(dialogEditText3.h0, false);
                                        if (TextUtils.isEmpty(Q0)) {
                                            return;
                                        }
                                        dialogEditText3.h0.setSelection(Q0.length());
                                    }
                                }
                            });
                        }
                        if (dialogEditText2.m0) {
                            if (!TextUtils.isEmpty(dialogEditText2.o0)) {
                                dialogEditText2.h0.setText(dialogEditText2.o0);
                            }
                            dialogEditText2.h0.setHint("https://...");
                            dialogEditText2.h0.setHintTextColor(-8289919);
                        }
                        dialogEditText2.h0.setSelectAllOnFocus(true);
                        dialogEditText2.h0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditText dialogEditText3 = DialogEditText.this;
                                MyEditText myEditText2 = dialogEditText3.h0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.requestFocus();
                                dialogEditText3.h0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditText myEditText3;
                                        DialogEditText dialogEditText4 = DialogEditText.this;
                                        Context context2 = dialogEditText4.a0;
                                        if (context2 != null && (myEditText3 = dialogEditText4.h0) != null) {
                                            MainUtil.c8(context2, myEditText3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        dialogEditText2.h0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditText.5
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                                DialogEditText dialogEditText3 = DialogEditText.this;
                                MyEditText myEditText2 = dialogEditText3.h0;
                                if (myEditText2 == null || dialogEditText3.k0) {
                                    return true;
                                }
                                dialogEditText3.k0 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        DialogEditText.C(DialogEditText.this);
                                        DialogEditText.this.k0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogEditText2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditText.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditText dialogEditText3 = DialogEditText.this;
                                MyLineText myLineText = dialogEditText3.i0;
                                if (myLineText == null || myLineText.isActivated() || dialogEditText3.k0) {
                                    return;
                                }
                                dialogEditText3.k0 = true;
                                dialogEditText3.i0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditText.6.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        DialogEditText.C(DialogEditText.this);
                                        DialogEditText.this.k0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditText2.g(dialogEditText2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditText.7
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditText dialogEditText3 = DialogEditText.this;
                                if (dialogEditText3.c0 == null) {
                                    return;
                                }
                                dialogEditText3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogEditText dialogEditText) {
        int i;
        MyEditText myEditText = dialogEditText.h0;
        if (myEditText != null && dialogEditText.b0 != null) {
            if (dialogEditText.m0) {
                String Q0 = MainUtil.Q0(myEditText, true);
                if (TextUtils.isEmpty(Q0)) {
                    MainUtil.e8(dialogEditText.a0, R.string.empty);
                    return;
                }
                String S6 = MainUtil.S6(Q0);
                if (!URLUtil.isNetworkUrl(S6)) {
                    MainUtil.e8(dialogEditText.a0, R.string.invalid_url);
                    return;
                } else {
                    dialogEditText.b0.a(S6);
                    return;
                }
            }
            if (!dialogEditText.l0) {
                dialogEditText.b0.a(MainUtil.Q0(myEditText, true));
                return;
            }
            String T6 = MainUtil.T6(MainUtil.Q0(myEditText, false));
            if (TextUtils.isEmpty(T6)) {
                MainUtil.e8(dialogEditText.a0, R.string.input_password);
                return;
            }
            if (TextUtils.isEmpty(dialogEditText.o0)) {
                dialogEditText.b0.a(T6);
                return;
            }
            dialogEditText.setCanceledOnTouchOutside(false);
            dialogEditText.c0.e(0, 0, true, false);
            dialogEditText.h0.setEnabled(false);
            dialogEditText.i0.setEnabled(false);
            dialogEditText.i0.setActivated(true);
            dialogEditText.i0.setText(R.string.checking);
            MyLineText myLineText = dialogEditText.i0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            String str = dialogEditText.o0;
            DialogTask dialogTask = dialogEditText.j0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogEditText.j0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogEditText, str, T6);
            dialogEditText.j0 = dialogTask2;
            dialogTask2.b(dialogEditText.a0);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        EditTextListener editTextListener = this.b0;
        if (editTextListener != null) {
            editTextListener.b();
        }
        dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.j0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.j0 = null;
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
        }
        MyButtonCheck myButtonCheck = this.f0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.f0 = null;
        }
        MyEditText myEditText = this.h0;
        if (myEditText != null) {
            myEditText.c();
            this.h0 = null;
        }
        MyLineText myLineText = this.i0;
        if (myLineText != null) {
            myLineText.u();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.g0 = null;
        this.o0 = null;
        this.p0 = null;
        super.dismiss();
    }
}
