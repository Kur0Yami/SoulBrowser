package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.ocr.OcrRuntimeInstaller;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;

/* loaded from: classes3.dex */
public class DialogOcrLoad extends MyDialogBottom {
    public Context a0;
    public OcrLoadListener b0;
    public MyDialogLinear c0;
    public AppCompatTextView d0;
    public MyProgressBar e0;
    public MyLineText f0;
    public int g0;
    public final int h0;
    public boolean i0;
    public boolean j0;
    /** Unused legacy retry counter (Play ModuleInstall wait loop removed). */
    public int k0;
    /** True while a Maven OCR dependency download is running. */
    public boolean l0;

    /* loaded from: classes3.dex */
    public interface OcrLoadListener {
        void a();

        void b();

        void c();
    }

    public DialogOcrLoad(Activity activity, int i, int i2, OcrLoadListener ocrLoadListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = ocrLoadListener;
        this.g0 = i;
        this.h0 = i2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOcrLoad.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogOcrLoad dialogOcrLoad = DialogOcrLoad.this;
                Context context = dialogOcrLoad.a0;
                if (context != null) {
                    int i3 = R.id.item_msg_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    int i4 = MainApp.E1;
                    relativeLayout.setPadding(i4, 0, i4, 0);
                    relativeLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                    q.addView(relativeLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 24.0f);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i3);
                    appCompatTextView.setPadding(0, G, 0, G);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView.setTextSize(1, 14.0f);
                    relativeLayout.addView(appCompatTextView, -1, -2);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    myProgressBar.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, MainApp.G1);
                    layoutParams.addRule(3, i3);
                    layoutParams.bottomMargin = G;
                    relativeLayout.addView(myProgressBar, layoutParams);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogOcrLoad.c0 = q;
                    dialogOcrLoad.d0 = appCompatTextView;
                    dialogOcrLoad.f0 = myLineText;
                    dialogOcrLoad.e0 = myProgressBar;
                    Handler handler2 = dialogOcrLoad.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOcrLoad.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogOcrLoad dialogOcrLoad2 = DialogOcrLoad.this;
                            MyDialogLinear myDialogLinear = dialogOcrLoad2.c0;
                            if (myDialogLinear != null && dialogOcrLoad2.a0 != null) {
                                myDialogLinear.setBackgroundColor(-14606047);
                                dialogOcrLoad2.d0.setTextColor(-328966);
                                MyProgressBar myProgressBar2 = dialogOcrLoad2.e0;
                                Paint paint = myProgressBar2.m;
                                if (paint != null && myProgressBar2.n != null) {
                                    myProgressBar2.j = -328966;
                                    myProgressBar2.k = -12632257;
                                    paint.setColor(-328966);
                                    myProgressBar2.m.setAlpha(HttpStatusCodes.STATUS_CODE_OK);
                                    myProgressBar2.n.setColor(myProgressBar2.k);
                                }
                                dialogOcrLoad2.e0.setMax(dialogOcrLoad2.h0);
                                dialogOcrLoad2.f0.setTextColor(-328966);
                                Paint paint2 = dialogOcrLoad2.f0.t;
                                if (paint2 != null) {
                                    paint2.setColor(-12632257);
                                }
                                dialogOcrLoad2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogOcrLoad2.a0, R.string.ocr_load_1, sb, "\n");
                                sb.append(dialogOcrLoad2.a0.getString(R.string.ocr_load_2));
                                dialogOcrLoad2.d0.setText(sb.toString());
                                dialogOcrLoad2.f0.setText(R.string.cancel);
                                dialogOcrLoad2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogOcrLoad.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogOcrLoad dialogOcrLoad3 = DialogOcrLoad.this;
                                        MyLineText myLineText2 = dialogOcrLoad3.f0;
                                        if (myLineText2 == null || dialogOcrLoad3.j0) {
                                            return;
                                        }
                                        dialogOcrLoad3.j0 = true;
                                        myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOcrLoad.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogOcrLoad dialogOcrLoad4 = DialogOcrLoad.this;
                                                OcrLoadListener ocrLoadListener2 = dialogOcrLoad4.b0;
                                                dialogOcrLoad4.b0 = null;
                                                if (ocrLoadListener2 != null) {
                                                    if (dialogOcrLoad4.i0) {
                                                        ocrLoadListener2.b();
                                                    } else {
                                                        ocrLoadListener2.a();
                                                    }
                                                    dialogOcrLoad4.dismiss();
                                                }
                                                dialogOcrLoad4.j0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogOcrLoad2.g(dialogOcrLoad2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogOcrLoad.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogOcrLoad dialogOcrLoad3 = DialogOcrLoad.this;
                                        if (dialogOcrLoad3.c0 == null) {
                                            return;
                                        }
                                        dialogOcrLoad3.show();
                                        if (!dialogOcrLoad3.i0) {
                                            dialogOcrLoad3.B(true);
                                        }
                                        dialogOcrLoad3.D();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B(boolean z) {
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.e(0, MainApp.g1, z, true);
            if (!z) {
                this.e0.setVisibility(8);
            } else {
                if (this.h0 == 0) {
                    return;
                }
                this.e0.setProgress(this.g0);
                this.e0.setVisibility(0);
            }
        }
    }

    public final void C() {
        if (!this.i0) {
            this.i0 = true;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOcrLoad.6
                @Override // java.lang.Runnable
                public final void run() {
                    DialogOcrLoad dialogOcrLoad = DialogOcrLoad.this;
                    if (dialogOcrLoad.d0 == null) {
                        return;
                    }
                    dialogOcrLoad.B(false);
                    dialogOcrLoad.f0.setTextColor(-328966);
                    dialogOcrLoad.d0.setTextSize(1, 16.0f);
                    dialogOcrLoad.d0.setText(R.string.ocr_load_3);
                    dialogOcrLoad.f0.setText(R.string.translate);
                }
            });
        }
    }

    /**
     * Download OCR models + native lib from Google Maven (not Play Services),
     * then notify the listener to retry recognition.
     */
    public final void D() {
        if (this.i0 || this.l0 || this.a0 == null) {
            return;
        }
        if (OcrRuntimeInstaller.isReady(this.a0) && OcrRuntimeInstaller.tryActivate(this.a0)) {
            C();
            OcrLoadListener ocrLoadListener = this.b0;
            if (ocrLoadListener != null) {
                ocrLoadListener.c();
            }
            return;
        }
        this.l0 = true;
        B(true);
        new Thread(new Runnable() { // from class: com.mycompany.app.dialog.DialogOcrLoad.InstallTask
            @Override // java.lang.Runnable
            public final void run() {
                final DialogOcrLoad dialog = DialogOcrLoad.this;
                Context context = dialog.a0;
                if (context == null) {
                    return;
                }
                final boolean ok = OcrRuntimeInstaller.ensureInstalled(context, new OcrRuntimeInstaller.ProgressListener() {
                    @Override
                    public void onProgress(final int current, final int total, final String message) {
                        Handler handler = dialog.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                MyProgressBar bar = dialog.e0;
                                if (bar != null && total > 0) {
                                    bar.setMax(total);
                                    bar.setProgress(current);
                                    bar.setVisibility(0);
                                }
                                if (message != null && dialog.d0 != null) {
                                    dialog.d0.setText(message);
                                }
                            }
                        });
                    }
                });
                Handler handler = dialog.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        dialog.l0 = false;
                        if (ok) {
                            dialog.C();
                            OcrLoadListener listener = dialog.b0;
                            if (listener != null) {
                                listener.c();
                            }
                        } else if (dialog.d0 != null) {
                            dialog.d0.setText("Failed to download OCR modules. Check your network and try again.");
                        }
                    }
                });
            }
        }, "ocr-maven-install").start();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        this.a0 = null;
        OcrLoadListener ocrLoadListener = this.b0;
        this.b0 = null;
        if (ocrLoadListener != null) {
            ocrLoadListener.a();
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyProgressBar myProgressBar = this.e0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.e0 = null;
        }
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        this.d0 = null;
        super.dismiss();
    }
}
