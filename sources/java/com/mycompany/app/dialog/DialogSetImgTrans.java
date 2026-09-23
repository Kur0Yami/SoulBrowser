package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.web.WebTransOcrCtrl;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetImgTrans extends MyDialogBottom {
    public static final /* synthetic */ int t0 = 0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public MyDialogLinear c0;
    public MyRoundLinear d0;
    public MyButtonText e0;
    public MyButtonImage f0;
    public MyButtonImage g0;
    public MyButtonImage h0;
    public MyButtonImage i0;
    public MyButtonImage j0;
    public MyRecyclerView k0;
    public MyLineText l0;
    public SettingListAdapter m0;
    public boolean n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetImgTrans$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogSetImgTrans(MainActivity mainActivity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.n0 = PrefZone.n0;
        this.o0 = PrefZone.o0;
        this.p0 = PrefZone.p0;
        this.q0 = PrefZone.q0;
        this.r0 = PrefZone.r0;
        this.s0 = PrefZone.s0;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetImgTrans.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetImgTrans dialogSetImgTrans = DialogSetImgTrans.this;
                Context context = dialogSetImgTrans.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 120.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, G);
                    MyRoundLinear myRoundLinear = new MyRoundLinear(context);
                    myRoundLinear.c(true, true);
                    myRoundLinear.setPaddingRelative(0, 0, MainApp.E1, 0);
                    myRoundLinear.setBaselineAligned(false);
                    myRoundLinear.setOrientation(0);
                    myRoundLinear.setMinimumWidth((int) MainUtil.G(context, 80.0f));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, MainApp.i1);
                    layoutParams.gravity = 17;
                    myLineFrame.addView(myRoundLinear, layoutParams);
                    MyButtonText myButtonText = new MyButtonText(context);
                    myButtonText.setGravity(17);
                    myButtonText.setTextSize(1, 18.0f);
                    myButtonText.setBgNorFixed(true);
                    float f = MainApp.j1;
                    float f2 = MainApp.k1;
                    myButtonText.q = f;
                    myButtonText.o = true;
                    myButtonText.x = f2;
                    myButtonText.w = true;
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams2.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(myButtonText, layoutParams2);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    myButtonImage.l(MainApp.j1, true);
                    myButtonImage.setBgPreRadius(MainApp.k1);
                    myButtonImage.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams3.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(myButtonImage, layoutParams3);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.l(MainApp.j1, true);
                    p.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams4.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(p, layoutParams4);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p2.l(MainApp.j1, true);
                    p2.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams5.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(p2, layoutParams5);
                    MyButtonImage p3 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p3.l(MainApp.j1, true);
                    p3.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams6.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(p3, layoutParams6);
                    MyButtonImage p4 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p4.l(MainApp.j1, true);
                    p4.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams7.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(p4, layoutParams7);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams8.weight = 1.0f;
                    q.addView(u, layoutParams8);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetImgTrans.c0 = q;
                    dialogSetImgTrans.d0 = myRoundLinear;
                    dialogSetImgTrans.e0 = myButtonText;
                    dialogSetImgTrans.f0 = myButtonImage;
                    dialogSetImgTrans.g0 = p;
                    dialogSetImgTrans.h0 = p2;
                    dialogSetImgTrans.i0 = p3;
                    dialogSetImgTrans.j0 = p4;
                    dialogSetImgTrans.k0 = u;
                    dialogSetImgTrans.l0 = myLineText;
                    Handler handler2 = dialogSetImgTrans.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetImgTrans.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v11, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v12, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v7, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v8, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v9, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetImgTrans dialogSetImgTrans2 = DialogSetImgTrans.this;
                            if (dialogSetImgTrans2.c0 != null && dialogSetImgTrans2.a0 != null) {
                                MyRoundLinear myRoundLinear2 = dialogSetImgTrans2.d0;
                                int i = MainApp.E1;
                                myRoundLinear2.n = -16777216;
                                myRoundLinear2.m = i;
                                myRoundLinear2.setBgOutColor(-1066044043);
                                dialogSetImgTrans2.e0.setTextColor(-328966);
                                dialogSetImgTrans2.e0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.f0.setImageResource(R.drawable.outline_search_dark_24);
                                dialogSetImgTrans2.g0.setImageResource(R.drawable.outline_refresh_dark_24);
                                dialogSetImgTrans2.h0.setImageResource(R.drawable.outline_g_translate_dark_24);
                                dialogSetImgTrans2.i0.setImageResource(R.drawable.outline_format_color_fill_dark_24);
                                dialogSetImgTrans2.j0.setImageResource(R.drawable.outline_center_focus_strong_dark_24);
                                dialogSetImgTrans2.f0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.g0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.h0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.i0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.j0.setBgNorColor(-11513776);
                                dialogSetImgTrans2.k0.setBackgroundColor(-16777216);
                                dialogSetImgTrans2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogSetImgTrans2.e0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.f0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.g0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.h0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.i0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.j0.setBgPreColor(-2039584);
                                dialogSetImgTrans2.e0.setText(WebTransOcrCtrl.getTransCap());
                                dialogSetImgTrans2.e0.setOnClickListener(new Object());
                                dialogSetImgTrans2.f0.setOnClickListener(new Object());
                                dialogSetImgTrans2.g0.setOnClickListener(new Object());
                                dialogSetImgTrans2.h0.setOnClickListener(new Object());
                                dialogSetImgTrans2.i0.setOnClickListener(new Object());
                                dialogSetImgTrans2.j0.setOnClickListener(new Object());
                                dialogSetImgTrans2.B();
                                boolean z = !dialogSetImgTrans2.n0;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.locale, 0, dialogSetImgTrans2.o0, z, z, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.refresh, 0, dialogSetImgTrans2.p0, z, z, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.translate, 0, dialogSetImgTrans2.q0, z, z, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(3, R.string.background, 0, dialogSetImgTrans2.r0, z, z, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(4, R.string.zoom_title, 0, dialogSetImgTrans2.s0, z, z, 2));
                                arrayList.add(new SettingListAdapter.SettingItem(5, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(6, R.string.float_button, R.string.long_move_guide, 1, dialogSetImgTrans2.n0, true), 1);
                                dialogSetImgTrans2.m0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetImgTrans.9
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z2, int i3) {
                                        DialogSetImgTrans dialogSetImgTrans3 = DialogSetImgTrans.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            if (i2 != 6) {
                                                                int i4 = DialogSetImgTrans.t0;
                                                                return;
                                                            }
                                                            dialogSetImgTrans3.n0 = z2;
                                                            SettingListAdapter settingListAdapter = dialogSetImgTrans3.m0;
                                                            if (settingListAdapter != null) {
                                                                boolean z3 = !z2;
                                                                settingListAdapter.D(new SettingListAdapter.SettingItem(0, R.string.locale, 0, dialogSetImgTrans3.o0, z3, z3, 0));
                                                                dialogSetImgTrans3.m0.D(new SettingListAdapter.SettingItem(1, R.string.refresh, 0, dialogSetImgTrans3.p0, z3, z3, 0));
                                                                dialogSetImgTrans3.m0.D(new SettingListAdapter.SettingItem(2, R.string.translate, 0, dialogSetImgTrans3.q0, z3, z3, 0));
                                                                dialogSetImgTrans3.m0.D(new SettingListAdapter.SettingItem(3, R.string.background, 0, dialogSetImgTrans3.r0, z3, z3, 0));
                                                                dialogSetImgTrans3.m0.D(new SettingListAdapter.SettingItem(4, R.string.zoom_title, 0, dialogSetImgTrans3.s0, z3, z3, 2));
                                                            }
                                                            dialogSetImgTrans3.B();
                                                            return;
                                                        }
                                                        dialogSetImgTrans3.s0 = z2;
                                                        dialogSetImgTrans3.B();
                                                        return;
                                                    }
                                                    dialogSetImgTrans3.r0 = z2;
                                                    dialogSetImgTrans3.B();
                                                    return;
                                                }
                                                dialogSetImgTrans3.q0 = z2;
                                                dialogSetImgTrans3.B();
                                                return;
                                            }
                                            dialogSetImgTrans3.p0 = z2;
                                            dialogSetImgTrans3.B();
                                            return;
                                        }
                                        dialogSetImgTrans3.o0 = z2;
                                        dialogSetImgTrans3.B();
                                    }
                                });
                                dialogSetImgTrans2.k0.setLayoutManager(t);
                                dialogSetImgTrans2.k0.setAdapter(dialogSetImgTrans2.m0);
                                dialogSetImgTrans2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetImgTrans.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z2;
                                        DialogSetFull.DialogApplyListener dialogApplyListener2;
                                        boolean z3 = PrefZone.n0;
                                        DialogSetImgTrans dialogSetImgTrans3 = DialogSetImgTrans.this;
                                        boolean z4 = dialogSetImgTrans3.n0;
                                        boolean z5 = true;
                                        if (z3 != z4) {
                                            PrefZone.n0 = z4;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUseIcon", z4);
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        boolean z6 = PrefZone.o0;
                                        boolean z7 = dialogSetImgTrans3.o0;
                                        if (z6 != z7) {
                                            PrefZone.o0 = z7;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUsePack", z7);
                                            z2 = true;
                                        }
                                        boolean z8 = PrefZone.p0;
                                        boolean z9 = dialogSetImgTrans3.p0;
                                        if (z8 != z9) {
                                            PrefZone.p0 = z9;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUseLoad", z9);
                                            z2 = true;
                                        }
                                        boolean z10 = PrefZone.q0;
                                        boolean z11 = dialogSetImgTrans3.q0;
                                        if (z10 != z11) {
                                            PrefZone.q0 = z11;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUseTrns", z11);
                                            z2 = true;
                                        }
                                        boolean z12 = PrefZone.r0;
                                        boolean z13 = dialogSetImgTrans3.r0;
                                        if (z12 != z13) {
                                            PrefZone.r0 = z13;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUseBack", z13);
                                            z2 = true;
                                        }
                                        boolean z14 = PrefZone.s0;
                                        boolean z15 = dialogSetImgTrans3.s0;
                                        if (z14 != z15) {
                                            PrefZone.s0 = z15;
                                            PrefSet.d(15, dialogSetImgTrans3.a0, "mOcrUseZoom", z15);
                                        } else {
                                            z5 = z2;
                                        }
                                        if (z5 && (dialogApplyListener2 = dialogSetImgTrans3.b0) != null) {
                                            dialogApplyListener2.a();
                                        }
                                        dialogSetImgTrans3.dismiss();
                                    }
                                });
                                dialogSetImgTrans2.g(dialogSetImgTrans2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetImgTrans.11
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetImgTrans dialogSetImgTrans3 = DialogSetImgTrans.this;
                                        if (dialogSetImgTrans3.c0 == null) {
                                            return;
                                        }
                                        dialogSetImgTrans3.show();
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
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.l0 == null) {
            return;
        }
        int i8 = 8;
        if (PrefAlbum.A == 5) {
            MyButtonImage myButtonImage = this.f0;
            if (this.o0) {
                i7 = 0;
            } else {
                i7 = 8;
            }
            myButtonImage.setVisibility(i7);
            this.e0.setVisibility(8);
        } else {
            MyButtonText myButtonText = this.e0;
            if (this.o0) {
                i = 0;
            } else {
                i = 8;
            }
            myButtonText.setVisibility(i);
            this.f0.setVisibility(8);
        }
        MyButtonImage myButtonImage2 = this.g0;
        if (this.p0) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        myButtonImage2.setVisibility(i2);
        MyButtonImage myButtonImage3 = this.h0;
        if (this.q0) {
            i3 = 0;
        } else {
            i3 = 8;
        }
        myButtonImage3.setVisibility(i3);
        MyButtonImage myButtonImage4 = this.i0;
        if (this.r0) {
            i4 = 0;
        } else {
            i4 = 8;
        }
        myButtonImage4.setVisibility(i4);
        MyButtonImage myButtonImage5 = this.j0;
        if (this.s0) {
            i8 = 0;
        }
        myButtonImage5.setVisibility(i8);
        if (this.n0 && !this.o0 && !this.p0 && !this.q0 && !this.r0 && !this.s0) {
            MyLineText myLineText = this.l0;
            if (MainApp.K1) {
                i6 = -8355712;
            } else {
                i6 = -2434342;
            }
            myLineText.setTextColor(i6);
            this.l0.setEnabled(false);
            return;
        }
        MyLineText myLineText2 = this.l0;
        if (MainApp.K1) {
            i5 = -328966;
        } else {
            i5 = -14784824;
        }
        myLineText2.setTextColor(i5);
        this.l0.setEnabled(true);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundLinear myRoundLinear = this.d0;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.d0 = null;
        }
        MyButtonText myButtonText = this.e0;
        if (myButtonText != null) {
            myButtonText.t();
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
        MyButtonImage myButtonImage4 = this.i0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.i0 = null;
        }
        MyButtonImage myButtonImage5 = this.j0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.j0 = null;
        }
        MyRecyclerView myRecyclerView = this.k0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k0 = null;
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
        super.dismiss();
    }
}
