package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownSize;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogDownSize extends MyDialogBottom {
    public Context a0;
    public DownSizeListener b0;
    public String c0;
    public String d0;
    public MyDialogLinear e0;
    public AppCompatTextView f0;
    public MyCoverView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public long k0;
    public MainDownSize l0;
    public boolean m0;

    /* renamed from: com.mycompany.app.dialog.DialogDownSize$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements Runnable {
        public AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownSize dialogDownSize = DialogDownSize.this;
            MyCoverView myCoverView = dialogDownSize.g0;
            if (myCoverView != null) {
                dialogDownSize.m0 = false;
                myCoverView.setVisibility(8);
                dialogDownSize.h0.setVisibility(0);
                long j = dialogDownSize.k0;
                if (j > 0) {
                    dialogDownSize.h0.setText(MainUtil.h1(j));
                    dialogDownSize.j0.setText(R.string.ok);
                    DownSizeListener downSizeListener = dialogDownSize.b0;
                    if (downSizeListener != null) {
                        downSizeListener.a(dialogDownSize.k0);
                        return;
                    }
                    return;
                }
                dialogDownSize.h0.setText(R.string.unknown);
                dialogDownSize.j0.setText(R.string.retry);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface DownSizeListener {
        void a(long j);
    }

    public DialogDownSize(Activity activity, String str, String str2, long j, DownSizeListener downSizeListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = downSizeListener;
        this.c0 = str;
        this.d0 = str2;
        this.k0 = j;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownSize.1
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                final DialogDownSize dialogDownSize = DialogDownSize.this;
                Context context = dialogDownSize.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(1);
                    int i2 = MainApp.E1;
                    appCompatTextView.setPadding(i2, 0, i2, 0);
                    appCompatTextView.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(appCompatTextView, R.string.estimated_size, -1, -2);
                    e.topMargin = MainApp.E1;
                    q.addView(appCompatTextView, e);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, MainApp.g1);
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -13022805;
                    }
                    MyCoverView myCoverView = new MyCoverView(context, i, (int) MainUtil.G(context, 2.0f), MainApp.z1);
                    myCoverView.setVisibility(8);
                    frameLayout.addView(myCoverView, -1, -1);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 17, 1, 16.0f);
                    C.setVisibility(8);
                    frameLayout.addView(C, -1, -1);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setGravity(1);
                    int i3 = MainApp.E1;
                    appCompatTextView2.setPadding(i3, 0, i3, 0);
                    appCompatTextView2.setTextSize(1, 14.0f);
                    appCompatTextView2.setText(R.string.estimated_info);
                    q.addView(appCompatTextView2, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.t(MainApp.E1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams.topMargin = MainApp.E1;
                    q.addView(myLineText, layoutParams);
                    dialogDownSize.e0 = q;
                    dialogDownSize.f0 = appCompatTextView;
                    dialogDownSize.g0 = myCoverView;
                    dialogDownSize.h0 = C;
                    dialogDownSize.i0 = appCompatTextView2;
                    dialogDownSize.j0 = myLineText;
                    Handler handler2 = dialogDownSize.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownSize.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogDownSize dialogDownSize2 = DialogDownSize.this;
                            if (dialogDownSize2.e0 != null && dialogDownSize2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogDownSize2.f0.setTextColor(-4079167);
                                    dialogDownSize2.h0.setTextColor(-328966);
                                    dialogDownSize2.i0.setTextColor(-4079167);
                                    dialogDownSize2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogDownSize2.j0.setTextColor(-328966);
                                } else {
                                    dialogDownSize2.f0.setTextColor(-10395295);
                                    dialogDownSize2.h0.setTextColor(-16777216);
                                    dialogDownSize2.i0.setTextColor(-10395295);
                                    dialogDownSize2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogDownSize2.j0.setTextColor(-14784824);
                                }
                                dialogDownSize2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownSize.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDownSize dialogDownSize3 = DialogDownSize.this;
                                        if (dialogDownSize3.j0 == null) {
                                            return;
                                        }
                                        if (dialogDownSize3.m0) {
                                            dialogDownSize3.dismiss();
                                        } else if (dialogDownSize3.k0 > 0) {
                                            dialogDownSize3.dismiss();
                                        } else {
                                            dialogDownSize3.B();
                                        }
                                    }
                                });
                                if (dialogDownSize2.k0 > 0) {
                                    dialogDownSize2.h0.setVisibility(0);
                                    dialogDownSize2.h0.setText(MainUtil.h1(dialogDownSize2.k0));
                                    dialogDownSize2.j0.setText(R.string.ok);
                                } else {
                                    dialogDownSize2.B();
                                }
                                dialogDownSize2.g(dialogDownSize2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownSize.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogDownSize dialogDownSize3 = DialogDownSize.this;
                                        if (dialogDownSize3.e0 == null) {
                                            return;
                                        }
                                        dialogDownSize3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.mycompany.app.main.MainDownSize] */
    public final void B() {
        MyCoverView myCoverView = this.g0;
        if (myCoverView == null || this.m0) {
            return;
        }
        this.m0 = true;
        myCoverView.setVisibility(0);
        this.h0.setVisibility(8);
        this.j0.setText(R.string.cancel);
        this.l0 = new Object();
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownSize.5
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownSize dialogDownSize = DialogDownSize.this;
                Context context = dialogDownSize.a0;
                if (context != null) {
                    MainDownSize mainDownSize = dialogDownSize.l0;
                    if (mainDownSize == null) {
                        Handler handler = dialogDownSize.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new AnonymousClass6());
                        return;
                    }
                    mainDownSize.a(context, dialogDownSize.c0, dialogDownSize.d0, new DownSizeListener() { // from class: com.mycompany.app.dialog.DialogDownSize.5.1
                        @Override // com.mycompany.app.dialog.DialogDownSize.DownSizeListener
                        public final void a(long j) {
                            DialogDownSize dialogDownSize2 = DialogDownSize.this;
                            dialogDownSize2.k0 = j;
                            dialogDownSize2.l0 = null;
                            Handler handler2 = dialogDownSize2.i;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new AnonymousClass6());
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
        MainDownSize mainDownSize = this.l0;
        if (mainDownSize != null) {
            try {
                mainDownSize.e();
            } catch (Exception unused) {
            }
            this.l0 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyCoverView myCoverView = this.g0;
        if (myCoverView != null) {
            myCoverView.i();
            this.g0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.f0 = null;
        this.h0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
