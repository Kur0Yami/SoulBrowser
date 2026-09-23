package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebClean;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DialogEditUrl extends MyDialogBottom {
    public Context a0;
    public final int b0;
    public EditUrlListener c0;
    public MainItem.ChildItem d0;
    public MyDialogLinear e0;
    public MyRoundImage f0;
    public MyEditText g0;
    public AppCompatTextView h0;
    public MyEditText i0;
    public AppCompatTextView j0;
    public MyEditText k0;
    public MyLineText l0;
    public DialogTask m0;
    public boolean n0;
    public WebClean o0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public MainItem.ChildItem f;
        public final String g;
        public final String h;
        public String i;
        public String j;

        public DialogTask(DialogEditUrl dialogEditUrl, MainItem.ChildItem childItem, String str, String str2) {
            int i;
            WeakReference weakReference = new WeakReference(dialogEditUrl);
            this.e = weakReference;
            DialogEditUrl dialogEditUrl2 = (DialogEditUrl) weakReference.get();
            if (dialogEditUrl2 != null) {
                this.f = childItem;
                this.g = str;
                this.h = str2;
                dialogEditUrl2.setCanceledOnTouchOutside(false);
                dialogEditUrl2.e0.e(0, 0, true, false);
                dialogEditUrl2.l0.setActivated(true);
                dialogEditUrl2.l0.setText(R.string.cancel);
                MyLineText myLineText = dialogEditUrl2.l0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                myLineText.setTextColor(i);
                MyEditText myEditText = dialogEditUrl2.g0;
                if (myEditText != null) {
                    myEditText.setEnabled(false);
                }
                MyEditText myEditText2 = dialogEditUrl2.i0;
                if (myEditText2 != null) {
                    myEditText2.setEnabled(false);
                }
                MyEditText myEditText3 = dialogEditUrl2.k0;
                if (myEditText3 != null) {
                    myEditText3.setEnabled(false);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x01aa  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x01b1  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x01b3  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0593  */
        /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r3v133, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1525
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditUrl.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogEditUrl dialogEditUrl;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogEditUrl = (DialogEditUrl) weakReference.get()) == null) {
                return;
            }
            dialogEditUrl.m0 = null;
            dialogEditUrl.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogEditUrl dialogEditUrl;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditUrl = (DialogEditUrl) weakReference.get()) != null) {
                dialogEditUrl.m0 = null;
                EditUrlListener editUrlListener = dialogEditUrl.c0;
                if (editUrlListener != null) {
                    MainItem.ChildItem childItem = this.f;
                    if (childItem != null) {
                        editUrlListener.a(childItem.y, this.i, this.j);
                    } else {
                        editUrlListener.a(0L, this.i, this.j);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface EditUrlListener {
        void a(long j, String str, String str2);
    }

    public DialogEditUrl(Activity activity, int i, MainItem.ChildItem childItem, EditUrlListener editUrlListener) {
        super(activity);
        Context context = getContext();
        this.a0 = context;
        this.b0 = i;
        this.c0 = editUrlListener;
        this.d0 = childItem;
        if (i == 23) {
            this.o0 = MainApp.v(context, false);
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUrl.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditUrl.B(DialogEditUrl.this);
            }
        });
    }

    public static void B(DialogEditUrl dialogEditUrl) {
        MyRoundImage myRoundImage;
        MyEditText myEditText;
        AppCompatTextView appCompatTextView;
        MyEditText myEditText2;
        int i = dialogEditUrl.b0;
        Context context = dialogEditUrl.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            if (i == 25) {
                int G = (int) MainUtil.G(context, 72.0f);
                MyLineFrame myLineFrame = new MyLineFrame(context);
                myLineFrame.a(MainApp.E1);
                q.addView(myLineFrame, -1, G);
                myRoundImage = new MyRoundImage(context);
                myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                int i2 = MainApp.f1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                layoutParams.gravity = 8388627;
                layoutParams.setMarginStart(MainApp.E1);
                myLineFrame.addView(myRoundImage, layoutParams);
                myEditText = new MyEditText(context);
                myEditText.setGravity(16);
                myEditText.setSingleLine(true);
                myEditText.setTextDirection(3);
                myEditText.setTextSize(1, 16.0f);
                if (Build.VERSION.SDK_INT >= 29) {
                    myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditText.setHint(R.string.name);
                myEditText.setHintTextColor(-8289919);
                myEditText.setImeOptions(268435456);
                myEditText.setBackground(null);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                layoutParams2.gravity = 16;
                layoutParams2.setMarginStart(G);
                layoutParams2.setMarginEnd(MainApp.E1);
                myLineFrame.addView(myEditText, layoutParams2);
            } else {
                myRoundImage = null;
                myEditText = null;
            }
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams3.weight = 1.0f;
            q.addView(m, layoutParams3);
            FrameLayout frameLayout = new FrameLayout(context);
            m.addView(frameLayout, -1, -2);
            int G2 = (int) MainUtil.G(context, 12.0f);
            int G3 = (int) MainUtil.G(context, 88.0f);
            FrameLayout frameLayout2 = new FrameLayout(context);
            int i3 = MainApp.E1;
            frameLayout2.setPadding(i3, G2, i3, G2);
            frameLayout.addView(frameLayout2, -1, G3);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout2.addView(j, -2, -2);
            MyEditText myEditText3 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText3, 16, true, 3);
            myEditText3.setTextSize(1, 16.0f);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 29) {
                myEditText3.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText3.setHintTextColor(-8289919);
            myEditText3.setInputType(16);
            myEditText3.setImeOptions(268435456);
            myEditText3.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 80;
            frameLayout2.addView(myEditText3, layoutParams4);
            if (i == 23) {
                MyLineFrame myLineFrame2 = new MyLineFrame(context);
                int i5 = MainApp.E1;
                myLineFrame2.setPadding(i5, G2, i5, G2);
                myLineFrame2.d(MainApp.E1);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, G3);
                layoutParams5.topMargin = G3;
                frameLayout.addView(myLineFrame2, layoutParams5);
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                appCompatTextView2.setTextSize(1, 14.0f);
                myLineFrame2.addView(appCompatTextView2, -2, -2);
                myEditText2 = new MyEditText(context);
                com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
                myEditText2.setTextSize(1, 16.0f);
                if (i4 >= 29) {
                    myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditText2.setHintTextColor(-8289919);
                myEditText2.setInputType(16);
                myEditText2.setImeOptions(268435456);
                myEditText2.setBackground(null);
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                layoutParams6.gravity = 80;
                myLineFrame2.addView(myEditText2, layoutParams6);
                appCompatTextView = appCompatTextView2;
            } else {
                appCompatTextView = null;
                myEditText2 = null;
            }
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogEditUrl.e0 = q;
            dialogEditUrl.h0 = j;
            dialogEditUrl.i0 = myEditText3;
            dialogEditUrl.l0 = r;
            if (i == 23) {
                dialogEditUrl.j0 = appCompatTextView;
                dialogEditUrl.k0 = myEditText2;
            } else if (i == 25) {
                dialogEditUrl.f0 = myRoundImage;
                dialogEditUrl.g0 = myEditText;
            }
            Handler handler = dialogEditUrl.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUrl.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditUrl dialogEditUrl2 = DialogEditUrl.this;
                    int i6 = dialogEditUrl2.b0;
                    MainItem.ChildItem childItem = dialogEditUrl2.d0;
                    if (childItem != null && dialogEditUrl2.e0 != null && dialogEditUrl2.a0 != null) {
                        if (MainApp.K1) {
                            dialogEditUrl2.h0.setTextColor(-4079167);
                            dialogEditUrl2.i0.setTextColor(-328966);
                            dialogEditUrl2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditUrl2.l0.setTextColor(-328966);
                        } else {
                            dialogEditUrl2.h0.setTextColor(-10395295);
                            dialogEditUrl2.i0.setTextColor(-16777216);
                            dialogEditUrl2.l0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditUrl2.l0.setTextColor(-14784824);
                        }
                        if (i6 != 25 && i6 != 27) {
                            dialogEditUrl2.h0.setText(R.string.domain_url);
                        } else {
                            dialogEditUrl2.h0.setText(R.string.url);
                            dialogEditUrl2.i0.setHint("https://...");
                        }
                        dialogEditUrl2.i0.setText(childItem.g);
                        if (i6 == 23) {
                            AppCompatTextView appCompatTextView3 = dialogEditUrl2.j0;
                            if (appCompatTextView3 != null) {
                                if (MainApp.K1) {
                                    appCompatTextView3.setTextColor(-4079167);
                                    dialogEditUrl2.k0.setTextColor(-328966);
                                } else {
                                    appCompatTextView3.setTextColor(-10395295);
                                    dialogEditUrl2.k0.setTextColor(-16777216);
                                }
                                dialogEditUrl2.j0.setText(R.string.image);
                                dialogEditUrl2.k0.setHint("https://...");
                                dialogEditUrl2.k0.setText(childItem.h);
                                dialogEditUrl2.i0.setElineColor(-14784824);
                                dialogEditUrl2.k0.setElineColor(-2434342);
                                dialogEditUrl2.k0.setSelectAllOnFocus(true);
                                dialogEditUrl2.k0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.3
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view, boolean z) {
                                        if (z) {
                                            DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                            MyEditText myEditText4 = dialogEditUrl3.g0;
                                            if (myEditText4 != null) {
                                                myEditText4.setElineColor(-2434342);
                                            }
                                            MyEditText myEditText5 = dialogEditUrl3.i0;
                                            if (myEditText5 != null) {
                                                myEditText5.setElineColor(-2434342);
                                            }
                                            MyEditText myEditText6 = dialogEditUrl3.k0;
                                            if (myEditText6 != null) {
                                                myEditText6.setElineColor(-14784824);
                                            }
                                        }
                                    }
                                });
                                dialogEditUrl2.k0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.4
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                                        DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                        MyEditText myEditText4 = dialogEditUrl3.k0;
                                        if (myEditText4 == null || dialogEditUrl3.n0) {
                                            return true;
                                        }
                                        dialogEditUrl3.n0 = true;
                                        myEditText4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUrl.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                                DialogEditUrl dialogEditUrl4 = DialogEditUrl.this;
                                                DialogEditUrl.C(dialogEditUrl4, dialogEditUrl4.d0);
                                                DialogEditUrl.this.n0 = false;
                                            }
                                        });
                                        return true;
                                    }
                                });
                            } else {
                                return;
                            }
                        } else if (i6 == 25) {
                            MyRoundImage myRoundImage2 = dialogEditUrl2.f0;
                            if (myRoundImage2 != null) {
                                int i7 = childItem.w;
                                if (i7 != 0) {
                                    myRoundImage2.o(childItem.v, i7);
                                } else {
                                    myRoundImage2.o(-460552, R.drawable.outline_public_black_24);
                                }
                                if (MainApp.K1) {
                                    dialogEditUrl2.g0.setTextColor(-328966);
                                } else {
                                    dialogEditUrl2.g0.setTextColor(-16777216);
                                }
                                dialogEditUrl2.g0.setText(childItem.h);
                                dialogEditUrl2.g0.setElineColor(-14784824);
                                dialogEditUrl2.i0.setElineColor(-2434342);
                                dialogEditUrl2.g0.setSelectAllOnFocus(true);
                                dialogEditUrl2.g0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.5
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view, boolean z) {
                                        if (z) {
                                            DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                            MyEditText myEditText4 = dialogEditUrl3.g0;
                                            if (myEditText4 != null) {
                                                myEditText4.setElineColor(-14784824);
                                            }
                                            MyEditText myEditText5 = dialogEditUrl3.i0;
                                            if (myEditText5 != null) {
                                                myEditText5.setElineColor(-2434342);
                                            }
                                            MyEditText myEditText6 = dialogEditUrl3.k0;
                                            if (myEditText6 != null) {
                                                myEditText6.setElineColor(-2434342);
                                            }
                                        }
                                    }
                                });
                            } else {
                                return;
                            }
                        } else {
                            dialogEditUrl2.i0.setElineColor(-14784824);
                        }
                        dialogEditUrl2.i0.setSelectAllOnFocus(true);
                        dialogEditUrl2.i0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.6
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                if (z) {
                                    DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                    MyEditText myEditText4 = dialogEditUrl3.g0;
                                    if (myEditText4 != null) {
                                        myEditText4.setElineColor(-2434342);
                                    }
                                    MyEditText myEditText5 = dialogEditUrl3.i0;
                                    if (myEditText5 != null) {
                                        myEditText5.setElineColor(-14784824);
                                    }
                                    MyEditText myEditText6 = dialogEditUrl3.k0;
                                    if (myEditText6 != null) {
                                        myEditText6.setElineColor(-2434342);
                                    }
                                }
                            }
                        });
                        if (dialogEditUrl2.k0 == null) {
                            dialogEditUrl2.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.7
                                @Override // android.widget.TextView.OnEditorActionListener
                                public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                    DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                    MyEditText myEditText4 = dialogEditUrl3.i0;
                                    if (myEditText4 == null || dialogEditUrl3.n0) {
                                        return true;
                                    }
                                    dialogEditUrl3.n0 = true;
                                    myEditText4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUrl.7.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                            DialogEditUrl dialogEditUrl4 = DialogEditUrl.this;
                                            DialogEditUrl.C(dialogEditUrl4, dialogEditUrl4.d0);
                                            DialogEditUrl.this.n0 = false;
                                        }
                                    });
                                    return true;
                                }
                            });
                        }
                        dialogEditUrl2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                MyLineText myLineText = dialogEditUrl3.l0;
                                if (myLineText != null) {
                                    if (myLineText.isActivated()) {
                                        dialogEditUrl3.D();
                                    } else {
                                        if (dialogEditUrl3.n0) {
                                            return;
                                        }
                                        dialogEditUrl3.n0 = true;
                                        dialogEditUrl3.l0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUrl.8.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                                DialogEditUrl dialogEditUrl4 = DialogEditUrl.this;
                                                DialogEditUrl.C(dialogEditUrl4, dialogEditUrl4.d0);
                                                DialogEditUrl.this.n0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogEditUrl2.g(dialogEditUrl2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditUrl.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditUrl dialogEditUrl3 = DialogEditUrl.this;
                                if (dialogEditUrl3.e0 == null) {
                                    return;
                                }
                                dialogEditUrl3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void C(com.mycompany.app.dialog.DialogEditUrl r13, com.mycompany.app.main.MainItem.ChildItem r14) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditUrl.C(com.mycompany.app.dialog.DialogEditUrl, com.mycompany.app.main.MainItem$ChildItem):void");
    }

    public final void D() {
        int i;
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null && this.m0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.l0.setEnabled(false);
            this.l0.setActivated(true);
            this.l0.setText(R.string.canceling);
            MyLineText myLineText = this.l0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.m0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.m0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        D();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.m0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.m0 = null;
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyRoundImage myRoundImage = this.f0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.f0 = null;
        }
        MyEditText myEditText = this.g0;
        if (myEditText != null) {
            myEditText.c();
            this.g0 = null;
        }
        MyEditText myEditText2 = this.i0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.i0 = null;
        }
        MyEditText myEditText3 = this.k0;
        if (myEditText3 != null) {
            myEditText3.c();
            this.k0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.d0 = null;
        this.h0 = null;
        this.j0 = null;
        this.o0 = null;
        super.dismiss();
    }
}
