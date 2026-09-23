package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.setting.SettingMedia;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundLinear;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetVideo extends MyDialogBottom {
    public static final /* synthetic */ int v0 = 0;
    public SettingMedia a0;
    public Context b0;
    public final boolean c0;
    public MyDialogLinear d0;
    public MyRoundLinear e0;
    public MyButtonImage f0;
    public MyButtonImage g0;
    public MyButtonImage h0;
    public MyButtonImage i0;
    public MyRecyclerView j0;
    public MyLineText k0;
    public SettingListAdapter l0;
    public MyPopupMenu m0;
    public DialogSetDown n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public String s0;
    public String t0;
    public String u0;

    /* renamed from: com.mycompany.app.dialog.DialogSetVideo$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetVideo$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetVideo$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetVideo$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetVideo$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogSetVideo(SettingMedia settingMedia, boolean z) {
        super(settingMedia);
        this.a0 = settingMedia;
        this.b0 = getContext();
        this.c0 = z;
        if (z) {
            this.o0 = PrefZone.s;
            this.r0 = PrefZone.t;
        } else {
            this.o0 = PrefZone.o;
            this.p0 = PrefZone.p;
            this.q0 = PrefZone.q;
            this.s0 = PrefAlbum.J;
            this.t0 = PrefAlbum.K;
            this.u0 = PrefAlbum.L;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVideo.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                final DialogSetVideo dialogSetVideo = DialogSetVideo.this;
                boolean z2 = dialogSetVideo.c0;
                Context context = dialogSetVideo.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 120.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
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
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.l(MainApp.j1, true);
                    myButtonImage2.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams2.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(myButtonImage2, layoutParams2);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.l(MainApp.j1, true);
                    p.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams3.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(p, layoutParams3);
                    if (!z2) {
                        myButtonImage = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                        myButtonImage.l(MainApp.j1, true);
                        myButtonImage.setBgPreRadius(MainApp.k1);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                        layoutParams4.setMarginStart(MainApp.E1);
                        myRoundLinear.addView(myButtonImage, layoutParams4);
                    } else {
                        myButtonImage = null;
                    }
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams5.weight = 1.0f;
                    q.addView(u, layoutParams5);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.t(MainApp.E1);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetVideo.d0 = q;
                    dialogSetVideo.e0 = myRoundLinear;
                    dialogSetVideo.j0 = u;
                    dialogSetVideo.k0 = myLineText;
                    if (z2) {
                        dialogSetVideo.f0 = myButtonImage2;
                        dialogSetVideo.i0 = p;
                    } else {
                        dialogSetVideo.f0 = myButtonImage2;
                        dialogSetVideo.g0 = p;
                        dialogSetVideo.h0 = myButtonImage;
                    }
                    Handler handler2 = dialogSetVideo.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVideo.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r4v18, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v19, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v6, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v7, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            String string;
                            final DialogSetVideo dialogSetVideo2 = DialogSetVideo.this;
                            int i = 0;
                            if (dialogSetVideo2.c0) {
                                if (dialogSetVideo2.d0 != null && dialogSetVideo2.b0 != null) {
                                    if (MainApp.K1) {
                                        MyRoundLinear myRoundLinear2 = dialogSetVideo2.e0;
                                        int i2 = MainApp.E1;
                                        myRoundLinear2.n = -16777216;
                                        myRoundLinear2.m = i2;
                                        myRoundLinear2.setBgOutColor(-1066044043);
                                        dialogSetVideo2.f0.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                        dialogSetVideo2.i0.setImageResource(R.drawable.outline_slow_motion_video_dark_24);
                                        dialogSetVideo2.f0.setBgNorColor(-11513776);
                                        dialogSetVideo2.i0.setBgNorColor(-11513776);
                                        dialogSetVideo2.j0.setBackgroundColor(-16777216);
                                        dialogSetVideo2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogSetVideo2.f0.setBgPreColor(-12632257);
                                        dialogSetVideo2.i0.setBgPreColor(-12632257);
                                    } else {
                                        MyRoundLinear myRoundLinear3 = dialogSetVideo2.e0;
                                        int i3 = MainApp.E1;
                                        myRoundLinear3.n = -1;
                                        myRoundLinear3.m = i3;
                                        myRoundLinear3.setBgOutColor(-2139785867);
                                        dialogSetVideo2.f0.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                        dialogSetVideo2.i0.setImageResource(R.drawable.outline_slow_motion_video_black_24);
                                        dialogSetVideo2.f0.setBgNorColor(-460552);
                                        dialogSetVideo2.i0.setBgNorColor(-460552);
                                        dialogSetVideo2.j0.setBackgroundColor(-460552);
                                        dialogSetVideo2.k0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogSetVideo2.f0.setBgPreColor(-2039584);
                                        dialogSetVideo2.i0.setBgPreColor(-2039584);
                                    }
                                    dialogSetVideo2.f0.setOnClickListener(new Object());
                                    dialogSetVideo2.i0.setOnClickListener(new Object());
                                    dialogSetVideo2.D();
                                    if (Build.VERSION.SDK_INT < 26) {
                                        i = R.string.pip_info;
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(new SettingListAdapter.SettingItem(0, R.string.pip_mode, i, 0, dialogSetVideo2.o0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(5, R.string.play_speed, 0, 0, dialogSetVideo2.r0, true), 1);
                                    dialogSetVideo2.l0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.11
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z3, int i5) {
                                            DialogSetVideo.B(DialogSetVideo.this, viewHolder, i4, z3);
                                        }
                                    });
                                    dialogSetVideo2.j0.setLayoutManager(t);
                                    dialogSetVideo2.j0.setAdapter(dialogSetVideo2.l0);
                                    dialogSetVideo2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.12
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetVideo.C(DialogSetVideo.this);
                                        }
                                    });
                                    dialogSetVideo2.g(dialogSetVideo2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.13
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSetVideo dialogSetVideo3 = DialogSetVideo.this;
                                            if (dialogSetVideo3.d0 == null) {
                                                return;
                                            }
                                            dialogSetVideo3.show();
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            if (dialogSetVideo2.d0 != null && dialogSetVideo2.b0 != null) {
                                if (MainApp.K1) {
                                    MyRoundLinear myRoundLinear4 = dialogSetVideo2.e0;
                                    int i4 = MainApp.E1;
                                    myRoundLinear4.n = -16777216;
                                    myRoundLinear4.m = i4;
                                    myRoundLinear4.setBgOutColor(-1066044043);
                                    dialogSetVideo2.f0.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                    dialogSetVideo2.g0.setImageResource(R.drawable.outline_fullscreen_dark_24);
                                    dialogSetVideo2.h0.setImageResource(R.drawable.outline_download_dark_24);
                                    dialogSetVideo2.f0.setBgNorColor(-11513776);
                                    dialogSetVideo2.g0.setBgNorColor(-11513776);
                                    dialogSetVideo2.h0.setBgNorColor(-11513776);
                                    dialogSetVideo2.j0.setBackgroundColor(-16777216);
                                    dialogSetVideo2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetVideo2.f0.setBgPreColor(-12632257);
                                    dialogSetVideo2.g0.setBgPreColor(-12632257);
                                    dialogSetVideo2.h0.setBgPreColor(-12632257);
                                } else {
                                    MyRoundLinear myRoundLinear5 = dialogSetVideo2.e0;
                                    int i5 = MainApp.E1;
                                    myRoundLinear5.n = -1;
                                    myRoundLinear5.m = i5;
                                    myRoundLinear5.setBgOutColor(-2139785867);
                                    dialogSetVideo2.f0.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                    dialogSetVideo2.g0.setImageResource(R.drawable.outline_fullscreen_black_24);
                                    dialogSetVideo2.h0.setImageResource(R.drawable.outline_download_black_24);
                                    dialogSetVideo2.f0.setBgNorColor(-460552);
                                    dialogSetVideo2.g0.setBgNorColor(-460552);
                                    dialogSetVideo2.h0.setBgNorColor(-460552);
                                    dialogSetVideo2.j0.setBackgroundColor(-460552);
                                    dialogSetVideo2.k0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetVideo2.f0.setBgPreColor(-2039584);
                                    dialogSetVideo2.g0.setBgPreColor(-2039584);
                                    dialogSetVideo2.h0.setBgPreColor(-2039584);
                                }
                                dialogSetVideo2.f0.setOnClickListener(new Object());
                                dialogSetVideo2.g0.setOnClickListener(new Object());
                                dialogSetVideo2.h0.setOnClickListener(new Object());
                                dialogSetVideo2.D();
                                if (Build.VERSION.SDK_INT < 26) {
                                    i = R.string.pip_info;
                                }
                                int i6 = i;
                                if (!TextUtils.isEmpty(dialogSetVideo2.s0)) {
                                    string = dialogSetVideo2.s0;
                                } else {
                                    string = dialogSetVideo2.b0.getString(R.string.default_title);
                                }
                                String str = string;
                                boolean z3 = !dialogSetVideo2.p0;
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(new SettingListAdapter.SettingItem(0, R.string.pip_mode, i6, 0, dialogSetVideo2.o0, true));
                                arrayList2.add(new SettingListAdapter.SettingItem(1, R.string.full_screen, 0, 0, dialogSetVideo2.p0, true));
                                arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.download, 0, 2, dialogSetVideo2.q0, true));
                                arrayList2.add(new SettingListAdapter.SettingItem(3, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(4, R.string.video_player, 0, 1, str, z3, z3), 1);
                                dialogSetVideo2.l0 = new SettingListAdapter(arrayList2, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.6
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i7, boolean z4, int i8) {
                                        DialogSetVideo.B(DialogSetVideo.this, viewHolder, i7, z4);
                                    }
                                });
                                dialogSetVideo2.j0.setLayoutManager(t2);
                                dialogSetVideo2.j0.setAdapter(dialogSetVideo2.l0);
                                dialogSetVideo2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetVideo.C(DialogSetVideo.this);
                                    }
                                });
                                dialogSetVideo2.g(dialogSetVideo2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.8
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetVideo dialogSetVideo3 = DialogSetVideo.this;
                                        if (dialogSetVideo3.d0 == null) {
                                            return;
                                        }
                                        dialogSetVideo3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetVideo dialogSetVideo, SettingListAdapter.ViewHolder viewHolder, int i, boolean z) {
        String string;
        MyPopupMenu myPopupMenu;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i == 5) {
                            dialogSetVideo.r0 = z;
                            dialogSetVideo.D();
                            return;
                        }
                        return;
                    }
                    if (dialogSetVideo.a0 != null && (myPopupMenu = dialogSetVideo.m0) == null) {
                        if (myPopupMenu != null) {
                            dialogSetVideo.Y = null;
                            myPopupMenu.a();
                            dialogSetVideo.m0 = null;
                        }
                        if (viewHolder != null && viewHolder.D != null) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.default_title));
                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.other_app));
                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetVideo.a0, dialogSetVideo.d0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.14
                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final void a() {
                                    int i2 = DialogSetVideo.v0;
                                    DialogSetVideo dialogSetVideo2 = DialogSetVideo.this;
                                    MyPopupMenu myPopupMenu3 = dialogSetVideo2.m0;
                                    if (myPopupMenu3 != null) {
                                        dialogSetVideo2.Y = null;
                                        myPopupMenu3.a();
                                        dialogSetVideo2.m0 = null;
                                    }
                                }

                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final boolean b(View view, int i2) {
                                    DialogSetDown dialogSetDown;
                                    final DialogSetVideo dialogSetVideo2 = DialogSetVideo.this;
                                    if (i2 != 0) {
                                        if (dialogSetVideo2.a0 != null && (dialogSetDown = dialogSetVideo2.n0) == null) {
                                            if (dialogSetDown != null) {
                                                dialogSetDown.dismiss();
                                                dialogSetVideo2.n0 = null;
                                            }
                                            DialogSetDown dialogSetDown2 = new DialogSetDown(dialogSetVideo2.a0, "video/*", dialogSetVideo2.a0.h0(), new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.15
                                                @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                                                public final void a(String str, String str2, String str3) {
                                                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                                                        DialogSetVideo dialogSetVideo3 = DialogSetVideo.this;
                                                        dialogSetVideo3.s0 = str;
                                                        dialogSetVideo3.t0 = str2;
                                                        dialogSetVideo3.u0 = str3;
                                                        SettingListAdapter settingListAdapter = dialogSetVideo3.l0;
                                                        if (settingListAdapter != null) {
                                                            settingListAdapter.G(4, str);
                                                        }
                                                    }
                                                }
                                            });
                                            dialogSetVideo2.n0 = dialogSetDown2;
                                            dialogSetDown2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetVideo.16
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i3 = DialogSetVideo.v0;
                                                    DialogSetVideo dialogSetVideo3 = DialogSetVideo.this;
                                                    DialogSetDown dialogSetDown3 = dialogSetVideo3.n0;
                                                    if (dialogSetDown3 != null) {
                                                        dialogSetDown3.dismiss();
                                                        dialogSetVideo3.n0 = null;
                                                    }
                                                }
                                            });
                                            return true;
                                        }
                                    } else {
                                        if (!TextUtils.isEmpty(dialogSetVideo2.s0) || !TextUtils.isEmpty(dialogSetVideo2.t0) || !TextUtils.isEmpty(dialogSetVideo2.u0)) {
                                            dialogSetVideo2.s0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                            dialogSetVideo2.t0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                            dialogSetVideo2.u0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                        }
                                        SettingListAdapter settingListAdapter = dialogSetVideo2.l0;
                                        if (settingListAdapter != null) {
                                            settingListAdapter.F(4, R.string.default_title);
                                        }
                                    }
                                    return true;
                                }
                            });
                            dialogSetVideo.m0 = myPopupMenu2;
                            dialogSetVideo.Y = myPopupMenu2;
                            return;
                        }
                        return;
                    }
                    return;
                }
                dialogSetVideo.q0 = z;
                dialogSetVideo.D();
                return;
            }
            dialogSetVideo.p0 = z;
            if (dialogSetVideo.l0 != null) {
                if (!TextUtils.isEmpty(dialogSetVideo.s0)) {
                    string = dialogSetVideo.s0;
                } else {
                    string = dialogSetVideo.b0.getString(R.string.default_title);
                }
                String str = string;
                boolean z2 = !dialogSetVideo.p0;
                dialogSetVideo.l0.D(new SettingListAdapter.SettingItem(4, R.string.video_player, 0, 1, str, z2, z2));
            }
            dialogSetVideo.D();
            return;
        }
        dialogSetVideo.o0 = z;
        dialogSetVideo.D();
    }

    public static void C(DialogSetVideo dialogSetVideo) {
        PrefAlbum r;
        if (dialogSetVideo.c0) {
            boolean z = PrefZone.s;
            boolean z2 = dialogSetVideo.o0;
            if (z != z2) {
                PrefZone.s = z2;
                PrefSet.d(15, dialogSetVideo.b0, "mYouPip", z2);
            }
            boolean z3 = PrefZone.t;
            boolean z4 = dialogSetVideo.r0;
            if (z3 != z4) {
                PrefZone.t = z4;
                PrefSet.d(15, dialogSetVideo.b0, "mYouRate", z4);
            }
        } else {
            boolean z5 = PrefZone.o;
            boolean z6 = dialogSetVideo.o0;
            if (z5 != z6) {
                PrefZone.o = z6;
                PrefSet.d(15, dialogSetVideo.b0, "mShowPip", z6);
            }
            boolean z7 = PrefZone.p;
            boolean z8 = dialogSetVideo.p0;
            if (z7 != z8) {
                PrefZone.p = z8;
                PrefSet.d(15, dialogSetVideo.b0, "mShowFull", z8);
            }
            boolean z9 = PrefZone.q;
            boolean z10 = dialogSetVideo.q0;
            if (z9 != z10) {
                PrefZone.q = z10;
                PrefSet.d(15, dialogSetVideo.b0, "mShowDown", z10);
            }
            if (!MainUtil.q5(PrefAlbum.J, dialogSetVideo.s0) || !MainUtil.q5(PrefAlbum.K, dialogSetVideo.t0) || !MainUtil.q5(PrefAlbum.L, dialogSetVideo.u0)) {
                PrefAlbum.J = dialogSetVideo.s0;
                PrefAlbum.K = dialogSetVideo.t0;
                PrefAlbum.L = dialogSetVideo.u0;
                Context context = dialogSetVideo.b0;
                if (context != null && (r = PrefAlbum.r(context, false)) != null) {
                    r.p("mPlayName2", PrefAlbum.J);
                    r.p("mPlayPkg2", PrefAlbum.K);
                    r.p("mPlayCls2", PrefAlbum.L);
                    r.a();
                }
            }
        }
        dialogSetVideo.dismiss();
    }

    public final void D() {
        int i;
        int i2;
        int i3;
        if (this.k0 == null) {
            return;
        }
        int i4 = -14784824;
        int i5 = -2434342;
        int i6 = 8;
        if (this.c0) {
            MyButtonImage myButtonImage = this.f0;
            if (this.o0) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            myButtonImage.setVisibility(i3);
            MyButtonImage myButtonImage2 = this.i0;
            if (this.r0) {
                i6 = 0;
            }
            myButtonImage2.setVisibility(i6);
            if (!this.o0 && !this.r0) {
                MyLineText myLineText = this.k0;
                if (MainApp.K1) {
                    i5 = -8355712;
                }
                myLineText.setTextColor(i5);
                this.k0.setEnabled(false);
                return;
            }
            MyLineText myLineText2 = this.k0;
            if (MainApp.K1) {
                i4 = -328966;
            }
            myLineText2.setTextColor(i4);
            this.k0.setEnabled(true);
            return;
        }
        MyButtonImage myButtonImage3 = this.f0;
        if (this.o0) {
            i = 0;
        } else {
            i = 8;
        }
        myButtonImage3.setVisibility(i);
        MyButtonImage myButtonImage4 = this.g0;
        if (this.p0) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        myButtonImage4.setVisibility(i2);
        MyButtonImage myButtonImage5 = this.h0;
        if (this.q0) {
            i6 = 0;
        }
        myButtonImage5.setVisibility(i6);
        if (!this.o0 && !this.p0 && !this.q0) {
            MyLineText myLineText3 = this.k0;
            if (MainApp.K1) {
                i5 = -8355712;
            }
            myLineText3.setTextColor(i5);
            this.k0.setEnabled(false);
            return;
        }
        MyLineText myLineText4 = this.k0;
        if (MainApp.K1) {
            i4 = -328966;
        }
        myLineText4.setTextColor(i4);
        this.k0.setEnabled(true);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogSetDown dialogSetDown = this.n0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.n0 = null;
        }
        MyPopupMenu myPopupMenu = this.m0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.m0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRoundLinear myRoundLinear = this.e0;
        if (myRoundLinear != null) {
            myRoundLinear.a();
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
        MyRecyclerView myRecyclerView = this.j0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.j0 = null;
        }
        MyLineText myLineText = this.k0;
        if (myLineText != null) {
            myLineText.u();
            this.k0 = null;
        }
        SettingListAdapter settingListAdapter = this.l0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.l0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
