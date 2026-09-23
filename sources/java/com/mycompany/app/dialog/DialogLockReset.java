package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.book.DataBookLink;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.db.book.DbBookHistory;
import com.mycompany.app.db.book.DbBookIcon;
import com.mycompany.app.db.book.DbBookLink;
import com.mycompany.app.db.book.DbBookPass;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.setting.SettingClean;
import com.mycompany.app.setting.SettingPassword;
import com.mycompany.app.setting.SettingSecure;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogLockReset extends MyDialogBottom {
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public final int c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public MyLineText f0;
    public boolean g0;

    /* renamed from: com.mycompany.app.dialog.DialogLockReset$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler = DialogLockReset.this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogLockReset dialogLockReset = DialogLockReset.this;
                    Context context = dialogLockReset.a0;
                    if (context != null) {
                        try {
                            WebViewDatabase.getInstance(context).clearHttpAuthUsernamePassword();
                        } catch (Exception | NoSuchMethodError unused) {
                        }
                        Handler handler2 = dialogLockReset.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.8.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                Context context2 = DialogLockReset.this.a0;
                                if (context2 == null) {
                                    return;
                                }
                                MainUtil.Q6(context2);
                                DialogLockReset.this.B();
                            }
                        });
                    }
                }
            });
        }
    }

    public DialogLockReset(Activity activity, int i, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.c0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogLockReset dialogLockReset = DialogLockReset.this;
                Context context = dialogLockReset.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(m, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i2 = MainApp.E1;
                    appCompatTextView.setPadding(i2, i2, i2, i2);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setMinHeight((int) MainUtil.G(context, 72.0f));
                    m.addView(appCompatTextView, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.reset);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogLockReset.d0 = q;
                    dialogLockReset.e0 = appCompatTextView;
                    dialogLockReset.f0 = myLineText;
                    Handler handler2 = dialogLockReset.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogLockReset dialogLockReset2 = DialogLockReset.this;
                            if (dialogLockReset2.d0 != null && dialogLockReset2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogLockReset2.e0.setTextColor(-328966);
                                    dialogLockReset2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogLockReset2.f0.setTextColor(-328966);
                                } else {
                                    dialogLockReset2.e0.setTextColor(-16777216);
                                    dialogLockReset2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogLockReset2.f0.setTextColor(-14784824);
                                }
                                int i3 = dialogLockReset2.c0;
                                if (i3 == 0) {
                                    if (PrefSecret.u) {
                                        StringBuilder sb = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogLockReset2.a0, R.string.lock_reset_guide, sb, "\n");
                                        sb.append(dialogLockReset2.a0.getString(R.string.lock_secret_guide));
                                        dialogLockReset2.e0.setText(sb.toString());
                                    } else {
                                        dialogLockReset2.e0.setText(R.string.lock_reset_guide);
                                    }
                                } else if (i3 == 2) {
                                    dialogLockReset2.e0.setText(R.string.link_reset_guide);
                                } else {
                                    dialogLockReset2.e0.setText(R.string.password_reset_guide);
                                }
                                dialogLockReset2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogLockReset.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogLockReset dialogLockReset3 = DialogLockReset.this;
                                        MyLineText myLineText2 = dialogLockReset3.f0;
                                        if (myLineText2 == null || dialogLockReset3.g0) {
                                            return;
                                        }
                                        dialogLockReset3.g0 = true;
                                        myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i4;
                                                final DialogLockReset dialogLockReset4 = DialogLockReset.this;
                                                if (dialogLockReset4.d0 == null) {
                                                    return;
                                                }
                                                dialogLockReset4.setCanceledOnTouchOutside(false);
                                                dialogLockReset4.d0.e(0, 0, true, false);
                                                dialogLockReset4.f0.setEnabled(false);
                                                MyLineText myLineText3 = dialogLockReset4.f0;
                                                if (MainApp.K1) {
                                                    i4 = -8355712;
                                                } else {
                                                    i4 = -2434342;
                                                }
                                                myLineText3.setTextColor(i4);
                                                dialogLockReset4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.5
                                                    /* JADX WARN: Type inference failed for: r5v16 */
                                                    /* JADX WARN: Type inference failed for: r5v17, types: [java.lang.String, java.lang.String[]] */
                                                    /* JADX WARN: Type inference failed for: r5v24 */
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        ?? r5;
                                                        boolean z;
                                                        final DialogLockReset dialogLockReset5 = DialogLockReset.this;
                                                        int i5 = dialogLockReset5.c0;
                                                        boolean z2 = true;
                                                        if (i5 == 0) {
                                                            Context context2 = dialogLockReset5.a0;
                                                            if (context2 != null) {
                                                                int i6 = SettingSecure.d2;
                                                                PrefSecret.s = 0;
                                                                PrefSecret.t = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                PrefSecret r = PrefSecret.r(context2, false);
                                                                r.q("mLockType2");
                                                                r.q("mLockCode2");
                                                                r.c();
                                                                int i7 = PrefSecret.v;
                                                                if (i7 != 0) {
                                                                    if (PrefSecret.u) {
                                                                        if ((i7 & 2) == 2) {
                                                                            DbUtil.a(DbBookQuick.i(context2).getWritableDatabase(), "DbBookQuick_table", "_secret=?", new String[]{"1"});
                                                                        }
                                                                        if ((PrefSecret.v & 4) == 4) {
                                                                            DbUtil.a(DbBookWeb.f(context2).getWritableDatabase(), "DbBookWeb_table", "_secret=?", new String[]{"1"});
                                                                        }
                                                                        if ((PrefSecret.v & 8) == 8) {
                                                                            DbBookDown.m(context2);
                                                                        }
                                                                        if ((PrefSecret.v & 16) == 16) {
                                                                            DbBookRecent.j(context2, true);
                                                                        }
                                                                        if ((PrefSecret.v & 32) == 32) {
                                                                            DbBookHistory.e(context2, true);
                                                                        }
                                                                        if ((PrefSecret.v & 64) == 64) {
                                                                            if (PrefSync.m != 0) {
                                                                                PrefSync.m = 0;
                                                                                PrefSync.o = 0;
                                                                                PrefSync r2 = PrefSync.r(context2, false);
                                                                                r2.q("mSecretIndex");
                                                                                r2.c();
                                                                            }
                                                                            DbBookTab.n(context2, true);
                                                                        }
                                                                    } else {
                                                                        if ((i7 & 2) == 2) {
                                                                            r5 = 0;
                                                                            DbUtil.a(DbBookQuick.i(context2).getWritableDatabase(), "DbBookQuick_table", null, null);
                                                                        } else {
                                                                            r5 = 0;
                                                                        }
                                                                        if ((PrefSecret.v & 4) == 4) {
                                                                            DbUtil.a(DbBookWeb.f(context2).getWritableDatabase(), "DbBookWeb_table", r5, r5);
                                                                        }
                                                                        if ((PrefSecret.v & 8) == 8) {
                                                                            DbUtil.a(DbBookDown.b(context2).getWritableDatabase(), "DbBookDown_table", r5, r5);
                                                                        }
                                                                        if ((PrefSecret.v & 16) == 16) {
                                                                            DbBookRecent.i(context2);
                                                                        }
                                                                        if ((PrefSecret.v & 32) == 32) {
                                                                            DbBookHistory.d(context2);
                                                                            z = true;
                                                                        } else {
                                                                            z = false;
                                                                        }
                                                                        if ((PrefSecret.v & 64) == 64) {
                                                                            if (PrefSync.l != 0 || PrefSync.m != 0) {
                                                                                PrefSync.l = 0;
                                                                                PrefSync.m = 0;
                                                                                PrefSync.n = 0;
                                                                                PrefSync.o = 0;
                                                                                PrefSync r3 = PrefSync.r(context2, false);
                                                                                r3.q("mNormalIndex");
                                                                                r3.q("mSecretIndex");
                                                                                r3.c();
                                                                            }
                                                                            DbBookTab.m(context2);
                                                                        } else {
                                                                            z2 = false;
                                                                        }
                                                                        if (z && z2) {
                                                                            DbUtil.a(DbBookIcon.d(context2).getWritableDatabase(), "DbBookIcon_table", null, null);
                                                                        }
                                                                    }
                                                                }
                                                                int i8 = PrefSecret.v;
                                                                if (i8 == 0) {
                                                                    dialogLockReset5.B();
                                                                    return;
                                                                }
                                                                if (PrefSecret.u) {
                                                                    dialogLockReset5.B();
                                                                    return;
                                                                }
                                                                if ((i8 & 32) != 32) {
                                                                    dialogLockReset5.B();
                                                                    return;
                                                                }
                                                                Handler handler3 = dialogLockReset5.i;
                                                                if (handler3 == null) {
                                                                    return;
                                                                }
                                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.7
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        DialogLockReset dialogLockReset6 = DialogLockReset.this;
                                                                        Context context3 = dialogLockReset6.a0;
                                                                        if (context3 == null) {
                                                                            return;
                                                                        }
                                                                        MainUtil.k(context3);
                                                                        MainUtil.B(dialogLockReset6.i, new AnonymousClass8());
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        if (i5 == 2) {
                                                            Context context3 = dialogLockReset5.a0;
                                                            int[] iArr = SettingClean.v2;
                                                            if (context3 != null) {
                                                                if (PrefSecret.B != 0 || !MainUtil.q5(PrefSecret.C, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                                                                    PrefSecret.B = 0;
                                                                    PrefSecret.C = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefSecret r4 = PrefSecret.r(context3, false);
                                                                    r4.q("mLinkLockType");
                                                                    r4.q("mLinkLockCode");
                                                                    r4.c();
                                                                }
                                                                DataBookLink.m(context3).f12908c = null;
                                                                DataBookLink.m(context3).f();
                                                                DbUtil.a(DbBookLink.a(context3).getWritableDatabase(), "DbBookLink_table", null, null);
                                                            }
                                                            dialogLockReset5.B();
                                                            return;
                                                        }
                                                        Context context4 = dialogLockReset5.a0;
                                                        int i9 = SettingPassword.b2;
                                                        if (context4 != null) {
                                                            if (PrefSecret.x || PrefSecret.y || PrefSecret.z != 0 || !MainUtil.q5(PrefSecret.A, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                                                                PrefSecret.x = false;
                                                                PrefSecret.y = false;
                                                                PrefSecret.z = 0;
                                                                PrefSecret.A = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                PrefSecret r6 = PrefSecret.r(context4, false);
                                                                r6.q("mSavePass2");
                                                                r6.q("mLoginLock");
                                                                r6.q("mPassLockType2");
                                                                r6.q("mPassLockCode2");
                                                                r6.c();
                                                            }
                                                            if (!PrefZtri.M || Float.compare(-1.0f, PrefZtri.N) != 0 || Float.compare(-1.0f, PrefZtri.O) != 0 || Float.compare(-1.0f, PrefZtri.P) != 0 || Float.compare(-1.0f, PrefZtri.Q) != 0) {
                                                                PrefZtri.M = true;
                                                                PrefZtri.N = -1.0f;
                                                                PrefZtri.O = -1.0f;
                                                                PrefZtri.P = -1.0f;
                                                                PrefZtri.Q = -1.0f;
                                                                PrefZtri r7 = PrefZtri.r(context4);
                                                                r7.q("mPassIcon");
                                                                r7.q("mPassLtX");
                                                                r7.q("mPassRtX");
                                                                r7.q("mPassUpY");
                                                                r7.q("mPassDnY");
                                                                r7.c();
                                                            }
                                                            int i10 = MainConst.q[5];
                                                            float f = MainConst.p[5];
                                                            if (PrefEditor.S != 0 || PrefEditor.T != i10 || Float.compare(PrefEditor.U, f) != 0) {
                                                                PrefEditor.S = 0;
                                                                PrefEditor.T = i10;
                                                                PrefEditor.U = f;
                                                                PrefEditor.V = PrefEditor.r(i10, 0);
                                                                PrefEditor s = PrefEditor.s(context4);
                                                                s.q("mPassAlpha");
                                                                s.q("mPassColor");
                                                                s.q("mPassPos");
                                                                s.c();
                                                            }
                                                            DbUtil.a(DbBookPass.d(context4).getWritableDatabase(), "DbBookPass_table", null, null);
                                                        }
                                                        dialogLockReset5.B();
                                                    }
                                                });
                                            }
                                        });
                                    }
                                });
                                dialogLockReset2.g(dialogLockReset2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogLockReset.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogLockReset dialogLockReset3 = DialogLockReset.this;
                                        if (dialogLockReset3.d0 == null) {
                                            return;
                                        }
                                        dialogLockReset3.show();
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
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLockReset.6
            @Override // java.lang.Runnable
            public final void run() {
                DialogLockReset dialogLockReset = DialogLockReset.this;
                MainUtil.e8(dialogLockReset.a0, R.string.reset_noti);
                DialogSetFull.DialogApplyListener dialogApplyListener = dialogLockReset.b0;
                if (dialogApplyListener != null) {
                    dialogApplyListener.a();
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
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        super.dismiss();
    }
}
