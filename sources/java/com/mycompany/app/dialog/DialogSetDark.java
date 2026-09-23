package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingDisplay;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetDark extends MyDialogBottom {
    public static final /* synthetic */ int y0 = 0;
    public MainActivity a0;
    public Context b0;
    public SetDarkListener c0;
    public MyDialogLinear d0;
    public MyLineFrame e0;
    public MyButtonImage f0;
    public MyButtonImage g0;
    public MyButtonImage h0;
    public MyRecyclerView i0;
    public MyLineLinear j0;
    public AppCompatTextView k0;
    public MyLineText l0;
    public SettingListAdapter m0;
    public MyPopupMenu n0;
    public DialogConfirm o0;
    public DialogSeekSimple p0;
    public DialogSetMsg q0;
    public boolean r0;
    public boolean s0;
    public int t0;
    public int u0;
    public boolean v0;
    public int w0;
    public boolean x0;

    /* loaded from: classes3.dex */
    public interface SetDarkListener {
        void a(boolean z);
    }

    public DialogSetDark(MainActivity mainActivity, SetDarkListener setDarkListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = setDarkListener;
        if (PrefWeb.K == 2) {
            PrefWeb.K = 0;
        }
        if (PrefWeb.L == 2) {
            PrefWeb.L = 0;
        }
        this.s0 = PrefWeb.J;
        this.t0 = PrefWeb.K;
        this.u0 = PrefWeb.L;
        this.v0 = PrefWeb.M;
        this.w0 = PrefWeb.N;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDark.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                final DialogSetDark dialogSetDark = DialogSetDark.this;
                Context context = dialogSetDark.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    if (MainApp.M1 == 1) {
                        myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        int i = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                        layoutParams.setMarginStart(MainApp.F1);
                        myLineFrame.addView(myButtonImage, layoutParams);
                    } else {
                        myButtonImage = null;
                    }
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    int i2 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams2.gravity = 8388613;
                    layoutParams2.setMarginEnd(MainApp.h1);
                    myLineFrame.addView(myButtonImage2, layoutParams2);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams3.gravity = 8388613;
                    layoutParams3.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(p, layoutParams3);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams4.weight = 1.0f;
                    q.addView(u, layoutParams4);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetDark.d0 = q;
                    dialogSetDark.e0 = myLineFrame;
                    dialogSetDark.f0 = myButtonImage;
                    dialogSetDark.g0 = myButtonImage2;
                    dialogSetDark.h0 = p;
                    dialogSetDark.i0 = u;
                    dialogSetDark.j0 = myLineLinear;
                    dialogSetDark.k0 = l;
                    dialogSetDark.l0 = s;
                    Handler handler2 = dialogSetDark.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDark.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetDark dialogSetDark2 = DialogSetDark.this;
                            if (dialogSetDark2.d0 != null && dialogSetDark2.b0 != null) {
                                MyButtonImage myButtonImage3 = dialogSetDark2.f0;
                                if (myButtonImage3 != null) {
                                    myButtonImage3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDark.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                            if (dialogSetDark3.a0 == null || dialogSetDark3.o0 != null || dialogSetDark3.p0 != null || dialogSetDark3.q0 != null) {
                                                return;
                                            }
                                            dialogSetDark3.D();
                                            DialogConfirm dialogConfirm = new DialogConfirm((Activity) dialogSetDark3.a0, false, new DialogConfirm.DialogConfBtnListener() { // from class: com.mycompany.app.dialog.DialogSetDark.11
                                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                public final void a(boolean z) {
                                                    int i4 = DialogSetDark.y0;
                                                    DialogSetDark.this.D();
                                                }

                                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                public final void b() {
                                                    int i4 = DialogSetDark.y0;
                                                    DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                    dialogSetDark4.D();
                                                    MainUtil.Q4(dialogSetDark4.a0, "com.google.android.webview");
                                                }

                                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                public final void onCancel() {
                                                    int i4 = DialogSetDark.y0;
                                                    DialogSetDark.this.D();
                                                }
                                            });
                                            dialogSetDark3.o0 = dialogConfirm;
                                            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetDark.12
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i4 = DialogSetDark.y0;
                                                    DialogSetDark.this.D();
                                                }
                                            });
                                        }
                                    });
                                }
                                dialogSetDark2.G(false);
                                dialogSetDark2.i0.u0(true, false);
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetDark2.m0 = new SettingListAdapter(dialogSetDark2.C(), true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetDark.4
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z, int i5) {
                                        DialogSeekSimple dialogSeekSimple;
                                        int i6 = DialogSetDark.y0;
                                        final DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        if (i4 != 0) {
                                            if (i4 != 1) {
                                                if (i4 != 2) {
                                                    if (i4 != 4) {
                                                        if (i4 == 5 && dialogSetDark3.a0 != null && dialogSetDark3.o0 == null && (dialogSeekSimple = dialogSetDark3.p0) == null && dialogSetDark3.q0 == null) {
                                                            if (dialogSeekSimple != null) {
                                                                dialogSeekSimple.dismiss();
                                                                dialogSetDark3.p0 = null;
                                                            }
                                                            DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(dialogSetDark3.a0, 3, dialogSetDark3.w0, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogSetDark.13
                                                                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                public final void a(int i7) {
                                                                    DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                                    if (dialogSetDark4.w0 != i7) {
                                                                        dialogSetDark4.w0 = i7;
                                                                        SettingListAdapter settingListAdapter = dialogSetDark4.m0;
                                                                        if (settingListAdapter != null) {
                                                                            settingListAdapter.G(5, DialogSetDark.B(i7));
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                            dialogSetDark3.p0 = dialogSeekSimple2;
                                                            dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetDark.14
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i7 = DialogSetDark.y0;
                                                                    DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                                    DialogSeekSimple dialogSeekSimple3 = dialogSetDark4.p0;
                                                                    if (dialogSeekSimple3 != null) {
                                                                        dialogSeekSimple3.dismiss();
                                                                        dialogSetDark4.p0 = null;
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    dialogSetDark3.v0 = z;
                                                    SettingListAdapter settingListAdapter = dialogSetDark3.m0;
                                                    if (settingListAdapter != null) {
                                                        settingListAdapter.D(new SettingListAdapter.SettingItem(dialogSetDark3.b0.getString(R.string.img_bright), 5, 0, DialogSetDark.B(dialogSetDark3.w0), !z, (String) null));
                                                        return;
                                                    }
                                                    return;
                                                }
                                                dialogSetDark3.s0 = z;
                                                if (dialogSetDark3.m0 == null) {
                                                    return;
                                                }
                                                Context context2 = dialogSetDark3.b0;
                                                int[] iArr = SettingDisplay.q2;
                                                dialogSetDark3.m0.D(new SettingListAdapter.SettingItem("UI", 0, 0, context2.getString(iArr[dialogSetDark3.t0]), z, (String) null));
                                                dialogSetDark3.m0.D(new SettingListAdapter.SettingItem(1, R.string.web_page, iArr[dialogSetDark3.u0], z));
                                                return;
                                            }
                                            dialogSetDark3.H(viewHolder, i4);
                                            return;
                                        }
                                        dialogSetDark3.H(viewHolder, i4);
                                    }
                                });
                                dialogSetDark2.i0.setLayoutManager(linearLayoutManager);
                                dialogSetDark2.i0.setAdapter(dialogSetDark2.m0);
                                dialogSetDark2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDark.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        MyButtonImage myButtonImage4 = dialogSetDark3.g0;
                                        if (myButtonImage4 == null || dialogSetDark3.x0) {
                                            return;
                                        }
                                        dialogSetDark3.x0 = true;
                                        myButtonImage4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDark.5.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                dialogSetDark4.s0 = false;
                                                dialogSetDark4.t0 = 0;
                                                dialogSetDark4.u0 = 0;
                                                dialogSetDark4.F(true);
                                                DialogSetDark.this.x0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogSetDark2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDark.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        MyButtonImage myButtonImage4 = dialogSetDark3.h0;
                                        if (myButtonImage4 == null || dialogSetDark3.x0) {
                                            return;
                                        }
                                        dialogSetDark3.x0 = true;
                                        myButtonImage4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDark.6.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                                DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                dialogSetDark4.s0 = false;
                                                dialogSetDark4.t0 = 1;
                                                dialogSetDark4.u0 = 1;
                                                dialogSetDark4.F(true);
                                                DialogSetDark.this.x0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogSetDark2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDark.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        AppCompatTextView appCompatTextView = dialogSetDark3.k0;
                                        if (appCompatTextView == null || dialogSetDark3.x0) {
                                            return;
                                        }
                                        dialogSetDark3.x0 = true;
                                        appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDark.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                int i4 = DialogSetDark.y0;
                                                dialogSetDark4.F(true);
                                                DialogSetDark.this.x0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogSetDark2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDark.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        if (dialogSetDark3.a0 == null || dialogSetDark3.o0 != null || dialogSetDark3.p0 != null || dialogSetDark3.q0 != null) {
                                            return;
                                        }
                                        dialogSetDark3.E();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetDark3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetDark.15
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i4 = DialogSetDark.y0;
                                                DialogSetDark dialogSetDark4 = DialogSetDark.this;
                                                dialogSetDark4.E();
                                                dialogSetDark4.r0 = false;
                                                if (dialogSetDark4.s0 || dialogSetDark4.t0 != 0 || dialogSetDark4.u0 != 0 || !dialogSetDark4.v0 || dialogSetDark4.w0 != 70) {
                                                    dialogSetDark4.s0 = false;
                                                    dialogSetDark4.t0 = 0;
                                                    dialogSetDark4.u0 = 0;
                                                    dialogSetDark4.v0 = true;
                                                    dialogSetDark4.w0 = 70;
                                                    dialogSetDark4.r0 = true;
                                                }
                                                dialogSetDark4.F(false);
                                            }
                                        });
                                        dialogSetDark3.q0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetDark.16
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i4 = DialogSetDark.y0;
                                                DialogSetDark.this.E();
                                            }
                                        });
                                    }
                                });
                                dialogSetDark2.g(dialogSetDark2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetDark.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetDark dialogSetDark3 = DialogSetDark.this;
                                        if (dialogSetDark3.d0 == null) {
                                            return;
                                        }
                                        dialogSetDark3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static String B(int i) {
        return i + "%";
    }

    public final ArrayList C() {
        Context context = this.b0;
        if (context == null) {
            return null;
        }
        boolean z = this.s0;
        int[] iArr = SettingDisplay.q2;
        String string = context.getString(iArr[this.t0]);
        boolean z2 = !this.v0;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem("UI", 0, 0, string, z, (String) null));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.web_page, iArr[this.u0], z));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.screen_info_system, 0, 2, this.s0, true));
        arrayList.add(new SettingListAdapter.SettingItem(3, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.dark_image, R.string.img_brt_info, 1, this.v0, true));
        arrayList.add(new SettingListAdapter.SettingItem(this.b0.getString(R.string.img_bright), 5, 0, B(this.w0), z2, (String) null));
        return arrayList;
    }

    public final void D() {
        DialogConfirm dialogConfirm = this.o0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.o0 = null;
        }
    }

    public final void E() {
        DialogSetMsg dialogSetMsg = this.q0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.q0 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(boolean r5) {
        /*
            r4 = this;
            boolean r0 = com.mycompany.app.pref.PrefWeb.J
            boolean r1 = r4.s0
            r2 = 0
            if (r0 != r1) goto L23
            int r0 = com.mycompany.app.pref.PrefWeb.K
            int r3 = r4.t0
            if (r0 != r3) goto L23
            int r0 = com.mycompany.app.pref.PrefWeb.L
            int r3 = r4.u0
            if (r0 != r3) goto L23
            boolean r0 = com.mycompany.app.pref.PrefWeb.M
            boolean r3 = r4.v0
            if (r0 != r3) goto L23
            int r0 = com.mycompany.app.pref.PrefWeb.N
            int r3 = r4.w0
            if (r0 == r3) goto L20
            goto L23
        L20:
            r0 = r2
        L21:
            r1 = r0
            goto L69
        L23:
            com.mycompany.app.pref.PrefWeb.J = r1
            int r0 = r4.t0
            com.mycompany.app.pref.PrefWeb.K = r0
            int r0 = r4.u0
            com.mycompany.app.pref.PrefWeb.L = r0
            boolean r0 = r4.v0
            com.mycompany.app.pref.PrefWeb.M = r0
            int r0 = r4.w0
            com.mycompany.app.pref.PrefWeb.N = r0
            android.content.Context r0 = r4.b0
            com.mycompany.app.pref.PrefWeb r0 = com.mycompany.app.pref.PrefWeb.r(r0, r2)
            java.lang.String r1 = "mThemeSys"
            boolean r3 = com.mycompany.app.pref.PrefWeb.J
            r0.l(r1, r3)
            java.lang.String r1 = "mThemeUi"
            int r3 = com.mycompany.app.pref.PrefWeb.K
            r0.n(r3, r1)
            java.lang.String r1 = "mThemeWeb"
            int r3 = com.mycompany.app.pref.PrefWeb.L
            r0.n(r3, r1)
            java.lang.String r1 = "mThemeImg"
            boolean r3 = com.mycompany.app.pref.PrefWeb.M
            r0.l(r1, r3)
            java.lang.String r1 = "mImgBright"
            int r3 = com.mycompany.app.pref.PrefWeb.N
            r0.n(r3, r1)
            r0.a()
            r0 = 1
            if (r5 == 0) goto L65
            goto L21
        L65:
            com.mycompany.app.main.MainUtil.f7()
            r1 = r2
        L69:
            if (r5 == 0) goto L7a
            if (r0 == 0) goto L74
            com.mycompany.app.dialog.DialogSetDark$SetDarkListener r5 = r4.c0
            if (r5 == 0) goto L74
            r5.a(r1)
        L74:
            r4.dismiss()
            r4.r0 = r2
            return
        L7a:
            if (r0 != 0) goto L8e
            boolean r5 = r4.r0
            if (r5 == 0) goto L92
            r4.r0 = r2
            com.mycompany.app.setting.SettingListAdapter r5 = r4.m0
            if (r5 == 0) goto L92
            java.util.ArrayList r0 = r4.C()
            r5.E(r0)
            return
        L8e:
            android.os.Handler r5 = r4.i
            if (r5 != 0) goto L93
        L92:
            return
        L93:
            com.mycompany.app.dialog.DialogSetDark$17 r0 = new com.mycompany.app.dialog.DialogSetDark$17
            r0.<init>()
            r5.post(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetDark.F(boolean):void");
    }

    public final void G(boolean z) {
        if (this.d0 != null) {
            if (MainApp.K1) {
                this.i0.setBackgroundColor(-16777216);
                if (z) {
                    this.d0.setBackgroundColor(-14606047);
                    this.e0.h();
                }
                this.g0.setImageResource(R.drawable.outline_sunny_dark_20);
                this.h0.setImageResource(R.drawable.outline_dark_mode_dark_20);
                this.g0.setBgPreColor(-12632257);
                this.h0.setBgPreColor(-12632257);
                this.k0.setBackgroundResource(R.drawable.selector_list_back_dark);
                this.l0.setBackgroundResource(R.drawable.selector_list_back_dark);
                this.k0.setTextColor(-328966);
                this.l0.setTextColor(-328966);
                MyButtonImage myButtonImage = this.f0;
                if (myButtonImage != null) {
                    myButtonImage.setImageResource(R.drawable.outline_help_dark_20);
                    this.f0.setBgPreColor(-12632257);
                    return;
                }
                return;
            }
            this.i0.setBackgroundColor(-460552);
            if (z) {
                this.d0.setBackgroundColor(-1);
                this.e0.h();
            }
            this.g0.setImageResource(R.drawable.outline_sunny_black_20);
            this.h0.setImageResource(R.drawable.outline_dark_mode_black_20);
            this.g0.setBgPreColor(553648128);
            this.h0.setBgPreColor(553648128);
            this.k0.setBackgroundResource(R.drawable.selector_list_back);
            this.l0.setBackgroundResource(R.drawable.selector_list_back);
            this.k0.setTextColor(-14784824);
            this.l0.setTextColor(-16777216);
            MyButtonImage myButtonImage2 = this.f0;
            if (myButtonImage2 != null) {
                myButtonImage2.setImageResource(R.drawable.outline_help_black_20);
                this.f0.setBgPreColor(553648128);
            }
        }
    }

    public final void H(SettingListAdapter.ViewHolder viewHolder, final int i) {
        MyPopupMenu myPopupMenu;
        final int i2;
        boolean z;
        if (this.a0 != null && (myPopupMenu = this.n0) == null) {
            if (myPopupMenu != null) {
                this.Y = null;
                myPopupMenu.a();
                this.n0 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 0) {
                    i2 = this.t0;
                } else {
                    i2 = this.u0;
                }
                ArrayList arrayList = new ArrayList();
                int[] iArr = SettingDisplay.p2;
                for (int i3 = 0; i3 < 2; i3++) {
                    int i4 = SettingDisplay.p2[i3];
                    int i5 = SettingDisplay.q2[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this.a0, this.d0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetDark.10
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i6 = DialogSetDark.y0;
                        DialogSetDark dialogSetDark = DialogSetDark.this;
                        MyPopupMenu myPopupMenu3 = dialogSetDark.n0;
                        if (myPopupMenu3 != null) {
                            dialogSetDark.Y = null;
                            myPopupMenu3.a();
                            dialogSetDark.n0 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view, int i6) {
                        int i7 = SettingDisplay.p2[i6 % 2];
                        if (i2 != i7) {
                            DialogSetDark dialogSetDark = DialogSetDark.this;
                            int i8 = i;
                            if (i8 == 0) {
                                dialogSetDark.t0 = i7;
                            } else {
                                dialogSetDark.u0 = i7;
                            }
                            SettingListAdapter settingListAdapter = dialogSetDark.m0;
                            if (settingListAdapter != null) {
                                settingListAdapter.F(i8, SettingDisplay.q2[i7]);
                            }
                        }
                        return true;
                    }
                });
                this.n0 = myPopupMenu2;
                this.Y = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        D();
        DialogSeekSimple dialogSeekSimple = this.p0;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.p0 = null;
        }
        E();
        MyPopupMenu myPopupMenu = this.n0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.n0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineFrame myLineFrame = this.e0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.f0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.f0 = null;
        }
        MyButtonImage myButtonImage2 = this.g0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.g0 = null;
        }
        MyButtonImage myButtonImage3 = this.h0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.h0 = null;
        }
        MyRecyclerView myRecyclerView = this.i0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.i0 = null;
        }
        MyLineLinear myLineLinear = this.j0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.j0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        SettingListAdapter settingListAdapter = this.m0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.m0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.k0 = null;
        super.dismiss();
    }
}
