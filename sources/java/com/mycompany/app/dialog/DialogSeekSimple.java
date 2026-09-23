package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.ocr.OcrDetector;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyImageFilter;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogSeekSimple extends MyDialogBottom {
    public static final /* synthetic */ int x0 = 0;
    public final int a0;
    public final int b0;
    public Activity c0;
    public Context d0;
    public DialogSeekAudio.DialogSeekListener e0;
    public final int f0;
    public MyDialogLinear g0;
    public MyLineText h0;
    public MyImageFilter i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public SeekBar l0;
    public MyButtonImage m0;
    public MyButtonImage n0;
    public MyLineText o0;
    public MyLineText p0;
    public MyLineText q0;
    public DialogSetMsg r0;
    public int s0;
    public final int t0;
    public boolean u0;
    public String v0;
    public Bitmap w0;

    public DialogSeekSimple(Activity activity, int i, int i2, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(activity);
        this.c0 = activity;
        this.d0 = getContext();
        this.e0 = dialogSeekListener;
        this.f0 = i;
        this.s0 = i2;
        if (i == 0) {
            this.a0 = 10;
            this.b0 = HttpStatusCodes.STATUS_CODE_OK;
        } else if (i == 1) {
            this.a0 = 2;
            this.b0 = 30;
            this.t0 = 20;
        } else if (i == 2) {
            this.a0 = 1;
            this.b0 = 9;
            this.t0 = 5;
        } else if (i == 3) {
            this.a0 = 20;
            this.b0 = 100;
        } else if (i == 4) {
            this.a0 = 0;
            this.b0 = 100;
        } else if (i == 5) {
            this.a0 = 2;
            this.b0 = 100;
        } else if (i == 6) {
            this.a0 = 1;
            this.b0 = 5;
            StringBuilder sb = new StringBuilder(" ");
            this.v0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_hour, this.d0, sb);
        } else if (i == 7) {
            this.a0 = 1;
            this.b0 = 100;
        } else if (i == 8) {
            this.a0 = 1;
            this.b0 = 50;
        } else if (i == 9) {
            this.a0 = 3;
            this.b0 = 100;
        } else if (i == 12) {
            this.a0 = 1;
            this.b0 = 100;
            StringBuilder sb2 = new StringBuilder(" ");
            this.v0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_day, this.d0, sb2);
        } else {
            this.a0 = 3;
            this.b0 = 100;
        }
        int i3 = this.s0;
        int i4 = this.a0;
        if (i3 < i4) {
            this.s0 = i4;
        } else {
            int i5 = this.b0;
            if (i3 > i5) {
                this.s0 = i5;
            }
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekSimple.1
            /* JADX WARN: Removed duplicated region for block: B:25:0x01cd A[ORIG_RETURN, RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:27:0x01ce  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 471
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSeekSimple.AnonymousClass1.run():void");
            }
        });
    }

    public static void B(DialogSeekSimple dialogSeekSimple, int i) {
        int i2 = dialogSeekSimple.t0;
        AppCompatTextView appCompatTextView = dialogSeekSimple.k0;
        if (appCompatTextView != null) {
            int i3 = dialogSeekSimple.a0;
            if (i < i3 || i > (i3 = dialogSeekSimple.b0)) {
                i = i3;
            }
            if (dialogSeekSimple.s0 != i) {
                dialogSeekSimple.s0 = i;
                int i4 = dialogSeekSimple.f0;
                if (i4 == 0) {
                    a.t(new StringBuilder(), dialogSeekSimple.s0, "%", appCompatTextView);
                    return;
                }
                boolean z = false;
                if (i4 == 1) {
                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder("x"), dialogSeekSimple.s0, appCompatTextView);
                    boolean z2 = dialogSeekSimple.u0;
                    if (dialogSeekSimple.s0 > i2) {
                        z = true;
                    }
                    dialogSeekSimple.u0 = z;
                    if (z2 != z) {
                        dialogSeekSimple.D();
                        return;
                    }
                    return;
                }
                if (i4 == 2) {
                    appCompatTextView.setText("x" + OcrDetector.x(dialogSeekSimple.s0));
                    boolean z3 = dialogSeekSimple.u0;
                    if (dialogSeekSimple.s0 > i2) {
                        z = true;
                    }
                    dialogSeekSimple.u0 = z;
                    if (z3 != z) {
                        dialogSeekSimple.D();
                        return;
                    }
                    return;
                }
                if (i4 == 3) {
                    a.t(new StringBuilder(), dialogSeekSimple.s0, "%", appCompatTextView);
                    MyImageFilter myImageFilter = dialogSeekSimple.i0;
                    if (myImageFilter != null) {
                        myImageFilter.setImageBright(dialogSeekSimple.s0);
                        return;
                    }
                    return;
                }
                if (i4 != 6 && i4 != 12) {
                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogSeekSimple.s0, appCompatTextView);
                    return;
                }
                appCompatTextView.setText(dialogSeekSimple.s0 + dialogSeekSimple.v0);
            }
        }
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.r0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.r0 = null;
        }
    }

    public final void D() {
        MyLineText myLineText = this.h0;
        if (myLineText == null) {
            return;
        }
        if (this.u0) {
            myLineText.setTextColor(-769226);
        } else if (MainApp.K1) {
            myLineText.setTextColor(-328966);
        } else {
            myLineText.setTextColor(-16777216);
        }
        if (this.u0) {
            this.l0.setProgressDrawable(MainUtil.S(this.d0, R.drawable.seek_progress_r));
            this.l0.setThumb(MainUtil.S(this.d0, R.drawable.seek_thumb_r));
        } else {
            this.l0.setProgressDrawable(MainUtil.S(this.d0, R.drawable.seek_progress_a));
            this.l0.setThumb(MainUtil.S(this.d0, R.drawable.seek_thumb_a));
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.d0 == null) {
            return;
        }
        C();
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyLineText myLineText = this.h0;
        if (myLineText != null) {
            myLineText.u();
            this.h0 = null;
        }
        MyImageFilter myImageFilter = this.i0;
        if (myImageFilter != null) {
            myImageFilter.f18835c = null;
            myImageFilter.f = null;
            this.i0 = null;
        }
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.m0 = null;
        }
        MyButtonImage myButtonImage2 = this.n0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.n0 = null;
        }
        MyLineText myLineText2 = this.p0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.p0 = null;
        }
        MyLineText myLineText3 = this.q0;
        if (myLineText3 != null) {
            myLineText3.u();
            this.q0 = null;
        }
        MyLineText myLineText4 = this.o0;
        if (myLineText4 != null) {
            myLineText4.u();
            this.o0 = null;
        }
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.v0 = null;
        super.dismiss();
    }
}
