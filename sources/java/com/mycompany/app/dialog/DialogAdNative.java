package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class DialogAdNative extends MyDialogBottom {
    public static final /* synthetic */ int p0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public final boolean c0;
    public DialogAdListener d0;
    public FrameLayout e0;
    public MyDialogRelative f0;
    public MyAdFrame g0;
    public MyAdNative h0;
    public boolean i0;
    public RelativeLayout j0;
    public ImageView k0;
    public MyCoverView l0;
    public AppCompatTextView m0;
    public int n0;
    public boolean o0;

    /* renamed from: com.mycompany.app.dialog.DialogAdNative$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface DialogAdListener {
        boolean a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogAdNative(com.mycompany.app.web.WebViewActivity r2, boolean r3, com.mycompany.app.dialog.DialogAdNative.DialogAdListener r4) {
        /*
            r1 = this;
            if (r3 == 0) goto L5
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogNoaniTheme
            goto L6
        L5:
            r0 = 0
        L6:
            r1.<init>(r2, r0)
            r1.a0 = r2
            android.content.Context r2 = r1.getContext()
            r1.b0 = r2
            r1.c0 = r3
            r1.d0 = r4
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L1a
            return
        L1a:
            com.mycompany.app.dialog.DialogAdNative$1 r3 = new com.mycompany.app.dialog.DialogAdNative$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogAdNative.<init>(com.mycompany.app.web.WebViewActivity, boolean, com.mycompany.app.dialog.DialogAdNative$DialogAdListener):void");
    }

    public final void B() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyCoverView myCoverView = this.l0;
        if (myCoverView != null) {
            myCoverView.i();
            this.l0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        this.j0 = null;
        this.k0 = null;
        this.m0 = null;
        super.dismiss();
    }

    public final void C() {
        if (this.l0 == null) {
            return;
        }
        if (this.c0) {
            dismiss();
            return;
        }
        this.k0.setImageResource(R.drawable.ads_empty);
        this.m0.setText(R.string.ads_retry);
        MyAdNative myAdNative = this.h0;
        if (myAdNative != null) {
            myAdNative.setVisibility(8);
        }
        this.j0.setVisibility(0);
        this.k0.setVisibility(0);
        this.l0.setVisibility(8);
        this.m0.setVisibility(0);
    }

    public final void D(boolean z) {
        if (this.l0 == null) {
            return;
        }
        if (this.c0 && z) {
            dismiss();
            return;
        }
        this.m0.setText(R.string.waiting);
        MyAdNative myAdNative = this.h0;
        if (myAdNative != null) {
            myAdNative.setVisibility(8);
        }
        this.j0.setVisibility(0);
        this.k0.setVisibility(8);
        this.l0.setVisibility(0);
        this.m0.setVisibility(0);
        F(10);
    }

    public final void E() {
        boolean A;
        if (this.g0 == null) {
            return;
        }
        MyAdNative myAdNative = this.h0;
        if (myAdNative == null) {
            C();
            return;
        }
        int i = myAdNative.t;
        if (i == 0) {
            D(true);
            return;
        }
        if (i != 1) {
            A = false;
        } else {
            A = MainApp.A(myAdNative.g);
        }
        if (!A) {
            C();
            return;
        }
        if (!this.h0.p()) {
            D(false);
            return;
        }
        this.h0.setDarkMode(true);
        this.h0.setVisibility(0);
        this.j0.setVisibility(8);
        this.k0.setVisibility(8);
        this.l0.setVisibility(8);
        this.m0.setVisibility(8);
    }

    public final void F(int i) {
        int i2;
        MyCoverView myCoverView = this.l0;
        if (myCoverView == null || myCoverView.getVisibility() != 0) {
            return;
        }
        this.n0 = i;
        if (i <= 0) {
            C();
            return;
        }
        MyCoverView myCoverView2 = this.l0;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + this.n0;
        if (MainApp.K1) {
            i2 = -328966;
        } else {
            i2 = -16777216;
        }
        myCoverView2.k(i2, MainApp.g1, str);
        this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogAdNative.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogAdNative.this.F(r0.n0 - 1);
            }
        }, 1400L);
    }

    public final void G() {
        MyAdFrame myAdFrame;
        DialogAdListener dialogAdListener = this.d0;
        if ((dialogAdListener == null || dialogAdListener.a()) && (myAdFrame = this.g0) != null && this.h0 == null && !this.i0) {
            this.i0 = true;
            myAdFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogAdNative.6
                /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r10 = this;
                        com.mycompany.app.dialog.DialogAdNative r0 = com.mycompany.app.dialog.DialogAdNative.this
                        com.mycompany.app.view.MyAdFrame r1 = r0.g0
                        r2 = 0
                        if (r1 == 0) goto L79
                        com.mycompany.app.view.MyAdNative r1 = r0.h0
                        if (r1 == 0) goto Ld
                        goto L79
                    Ld:
                        boolean r1 = r0.c0
                        r3 = 1
                        if (r1 == 0) goto L51
                        android.content.Context r1 = r0.b0
                        com.mycompany.app.main.MainApp r1 = com.mycompany.app.main.MainApp.p(r1)
                        if (r1 != 0) goto L1b
                        goto L1f
                    L1b:
                        com.mycompany.app.view.MyAdNative r1 = r1.N0
                        if (r1 != 0) goto L21
                    L1f:
                        r1 = r2
                        goto L4b
                    L21:
                        int r4 = r1.t
                        if (r4 == r3) goto L27
                        r4 = r2
                        goto L2d
                    L27:
                        android.content.Context r4 = r1.g
                        boolean r4 = com.mycompany.app.main.MainApp.A(r4)
                    L2d:
                        if (r4 == 0) goto L1f
                        long r4 = r1.u
                        r6 = 0
                        int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                        if (r4 != 0) goto L39
                    L37:
                        r1 = r2
                        goto L48
                    L39:
                        long r4 = java.lang.System.currentTimeMillis()
                        long r6 = r1.u
                        r8 = 3000000(0x2dc6c0, double:1.482197E-317)
                        long r6 = r6 + r8
                        int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                        if (r1 <= 0) goto L37
                        r1 = r3
                    L48:
                        if (r1 != 0) goto L1f
                        r1 = r3
                    L4b:
                        if (r1 != 0) goto L5d
                        r0.dismiss()
                        goto L79
                    L51:
                        android.content.Context r1 = r0.b0
                        boolean r1 = com.mycompany.app.main.MainApp.A(r1)
                        if (r1 != 0) goto L5d
                        r0.C()
                        goto L79
                    L5d:
                        com.mycompany.app.web.WebViewActivity r1 = r0.a0
                        if (r1 != 0) goto L62
                        goto L79
                    L62:
                        com.mycompany.app.dialog.DialogAdNative$7 r4 = new com.mycompany.app.dialog.DialogAdNative$7
                        r4.<init>()
                        com.mycompany.app.view.MyAdNative r1 = com.mycompany.app.main.MainApp.d(r1, r2, r4)
                        r0.h0 = r1
                        r0.E()
                        com.mycompany.app.view.MyAdFrame r1 = r0.g0
                        com.mycompany.app.view.MyAdNative r4 = r0.h0
                        android.os.Handler r5 = r0.i
                        r1.a(r4, r3, r5)
                    L79:
                        r0.i0 = r2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogAdNative.AnonymousClass6.run():void");
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.o0) {
            this.o0 = true;
            if (this.g0 == null) {
                B();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogAdNative.8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogAdNative dialogAdNative = DialogAdNative.this;
                    MyDialogRelative myDialogRelative = dialogAdNative.f0;
                    if (myDialogRelative != null) {
                        myDialogRelative.c();
                        dialogAdNative.f0 = null;
                    }
                    MyAdFrame myAdFrame = dialogAdNative.g0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogAdNative.g0 = null;
                        MainApp.f(dialogAdNative.b0, 0);
                    }
                    dialogAdNative.h0 = null;
                    Handler handler2 = dialogAdNative.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogAdNative.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogAdNative dialogAdNative2 = DialogAdNative.this;
                            int i = DialogAdNative.p0;
                            dialogAdNative2.B();
                        }
                    });
                }
            });
        }
    }
}
