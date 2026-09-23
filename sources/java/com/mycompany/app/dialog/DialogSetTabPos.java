package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.transition.ChangeBounds;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineImage;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MySelectView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetTabPos extends MyDialogBottom {
    public static final int[] C0 = {1, 2, 3, 4, 0};
    public static final int[] D0 = {R.string.not_show, R.string.above_top, R.string.below_top, R.string.above_bot, R.string.below_bot};
    public GlideRequests A0;
    public boolean B0;
    public MainActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public MyDialogLinear d0;
    public FrameLayout e0;
    public MyButtonImage f0;
    public MyButtonImage g0;
    public MyButtonImage h0;
    public MyButtonRelative i0;
    public MyLineFrame j0;
    public ImageView k0;
    public MyLineImage l0;
    public MyLineImage m0;
    public MyLineImage n0;
    public MyLineImage o0;
    public MyLineImage p0;
    public MySelectView q0;
    public MyLineRelative r0;
    public View s0;
    public AppCompatTextView t0;
    public AppCompatTextView u0;
    public MyLineText v0;
    public final int w0;
    public int x0;
    public MyPopupMenu y0;
    public DialogCastGuide z0;

    public DialogSetTabPos(MainActivity mainActivity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        Context context = getContext();
        this.b0 = context;
        this.c0 = dialogApplyListener;
        this.x0 = PrefWeb.x;
        this.w0 = (int) MainUtil.G(context, 20.0f);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabPos.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTabPos dialogSetTabPos = DialogSetTabPos.this;
                Context context2 = dialogSetTabPos.b0;
                if (context2 != null) {
                    int i = R.id.item_frame_view;
                    int i2 = R.id.item_title_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context2, 1);
                    FrameLayout frameLayout = new FrameLayout(context2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(frameLayout, layoutParams);
                    int G = (int) MainUtil.G(context2, 24.0f);
                    ConstraintLayout constraintLayout = new ConstraintLayout(context2);
                    constraintLayout.setId(i);
                    constraintLayout.setPadding(0, G, 0, G);
                    frameLayout.addView(constraintLayout, -1, -2);
                    int G2 = (int) MainUtil.G(context2, 160.0f);
                    MyButtonRelative myButtonRelative = new MyButtonRelative(context2);
                    myButtonRelative.setPadding(MainApp.F1, MainApp.E1, MainApp.F1, MainApp.E1);
                    myButtonRelative.e(MainApp.E1, false);
                    ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(G2, -1);
                    layoutParams2.d = i;
                    layoutParams2.g = i;
                    layoutParams2.W = true;
                    layoutParams2.P = (int) MainUtil.G(context2, 300.0f);
                    constraintLayout.addView(myButtonRelative, layoutParams2);
                    MyLineFrame myLineFrame = new MyLineFrame(context2);
                    myLineFrame.f(1.0f);
                    myButtonRelative.addView(myLineFrame, -1, -1);
                    ImageView imageView = new ImageView(context2);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myLineFrame.addView(imageView, -1, -1);
                    int i3 = dialogSetTabPos.w0;
                    MyLineImage myLineImage = new MyLineImage(context2);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                    myLineImage.setScaleType(scaleType);
                    myLineImage.a();
                    myLineFrame.addView(myLineImage, -1, i3);
                    MyLineImage myLineImage2 = new MyLineImage(context2);
                    myLineImage2.setScaleType(scaleType);
                    myLineImage2.b();
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, i3);
                    layoutParams3.gravity = 80;
                    myLineFrame.addView(myLineImage2, layoutParams3);
                    MyLineImage myLineImage3 = new MyLineImage(context2);
                    myLineImage3.setScaleType(scaleType);
                    myLineImage3.a();
                    myLineFrame.addView(myLineImage3, new FrameLayout.LayoutParams(-1, i3));
                    MyLineImage myLineImage4 = new MyLineImage(context2);
                    myLineImage4.setScaleType(scaleType);
                    myLineImage4.b();
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, i3);
                    layoutParams4.gravity = 80;
                    myLineFrame.addView(myLineImage4, layoutParams4);
                    MyLineImage myLineImage5 = new MyLineImage(context2);
                    myLineImage5.setScaleType(scaleType);
                    myLineImage5.setVisibility(4);
                    myLineFrame.addView(myLineImage5, -1, i3);
                    MySelectView mySelectView = new MySelectView(context2);
                    mySelectView.setVisibility(8);
                    myLineFrame.addView(mySelectView, -1, i3);
                    int G3 = (int) MainUtil.G(context2, 14.0f);
                    MyButtonImage myButtonImage = new MyButtonImage(context2);
                    myButtonImage.setPadding(G3, G3, G3, G3);
                    ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType2);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams5.gravity = 8388613;
                    int i5 = MainApp.F1;
                    layoutParams5.topMargin = i5;
                    layoutParams5.setMarginEnd(i5);
                    frameLayout.addView(myButtonImage, layoutParams5);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context2, scaleType2);
                    p.l(MainApp.j1, true);
                    p.setBgPreRadius(MainApp.k1);
                    p.setVisibility(8);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams6.gravity = 8388693;
                    layoutParams6.bottomMargin = MainApp.E1 + MainApp.g1 + MainApp.F1;
                    layoutParams6.setMarginEnd(MainApp.E1);
                    frameLayout.addView(p, layoutParams6);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context2, scaleType2);
                    p2.l(MainApp.j1, true);
                    p2.setBgPreRadius(MainApp.k1);
                    p2.setVisibility(8);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams7.gravity = 8388693;
                    int i8 = MainApp.E1;
                    layoutParams7.bottomMargin = i8;
                    layoutParams7.setMarginEnd(i8);
                    frameLayout.addView(p2, layoutParams7);
                    MyLineRelative myLineRelative = new MyLineRelative(context2);
                    int i9 = MainApp.E1;
                    myLineRelative.setPadding(i9, i9, i9, i9);
                    myLineRelative.setGravity(16);
                    myLineRelative.setMinimumHeight(MainApp.h1);
                    myLineRelative.c(MainApp.E1);
                    q.addView(myLineRelative, -1, -2);
                    View view = new View(context2);
                    RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(1, 1);
                    layoutParams8.addRule(21);
                    myLineRelative.addView(view, layoutParams8);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i2, 1, 16.0f);
                    k.setText(R.string.show_tab_bar);
                    myLineRelative.addView(k, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context2, null, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i2);
                    h.topMargin = MainApp.G1;
                    myLineRelative.addView(j, h);
                    MyLineText myLineText = new MyLineText(context2);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetTabPos.d0 = q;
                    dialogSetTabPos.e0 = frameLayout;
                    dialogSetTabPos.f0 = myButtonImage;
                    dialogSetTabPos.g0 = p;
                    dialogSetTabPos.h0 = p2;
                    dialogSetTabPos.i0 = myButtonRelative;
                    dialogSetTabPos.j0 = myLineFrame;
                    dialogSetTabPos.k0 = imageView;
                    dialogSetTabPos.l0 = myLineImage;
                    dialogSetTabPos.m0 = myLineImage2;
                    dialogSetTabPos.n0 = myLineImage3;
                    dialogSetTabPos.o0 = myLineImage4;
                    dialogSetTabPos.p0 = myLineImage5;
                    dialogSetTabPos.q0 = mySelectView;
                    dialogSetTabPos.r0 = myLineRelative;
                    dialogSetTabPos.s0 = view;
                    dialogSetTabPos.t0 = k;
                    dialogSetTabPos.u0 = j;
                    dialogSetTabPos.v0 = myLineText;
                    Handler handler2 = dialogSetTabPos.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabPos.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i10;
                            final DialogSetTabPos dialogSetTabPos2 = DialogSetTabPos.this;
                            if (dialogSetTabPos2.d0 != null && dialogSetTabPos2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetTabPos2.f0.setImageResource(R.drawable.outline_help_dark_24);
                                    dialogSetTabPos2.f0.setBgPreColor(-12632257);
                                    dialogSetTabPos2.g0.setImageResource(R.drawable.outline_keyboard_arrow_up_dark_24);
                                    dialogSetTabPos2.h0.setImageResource(R.drawable.outline_keyboard_arrow_down_dark_24);
                                    dialogSetTabPos2.g0.k(-16777216, -12632257);
                                    dialogSetTabPos2.h0.k(-16777216, -12632257);
                                    dialogSetTabPos2.i0.h(-328966, MainApp.n1);
                                    dialogSetTabPos2.k0.setBackgroundColor(-12632257);
                                    dialogSetTabPos2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabPos2.t0.setTextColor(-328966);
                                    dialogSetTabPos2.u0.setTextColor(-5126668);
                                    dialogSetTabPos2.v0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabPos2.v0.setTextColor(-328966);
                                } else {
                                    dialogSetTabPos2.f0.setImageResource(R.drawable.outline_help_black_24);
                                    dialogSetTabPos2.f0.setBgPreColor(-2039584);
                                    dialogSetTabPos2.g0.setImageResource(R.drawable.outline_keyboard_arrow_up_black_24);
                                    dialogSetTabPos2.h0.setImageResource(R.drawable.outline_keyboard_arrow_down_black_24);
                                    dialogSetTabPos2.g0.k(-460552, -2039584);
                                    dialogSetTabPos2.h0.k(-460552, -2039584);
                                    dialogSetTabPos2.i0.h(-16777216, MainApp.n1);
                                    dialogSetTabPos2.k0.setBackgroundColor(-460552);
                                    dialogSetTabPos2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabPos2.t0.setTextColor(-16777216);
                                    dialogSetTabPos2.u0.setTextColor(-12627531);
                                    dialogSetTabPos2.v0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabPos2.v0.setTextColor(-14784824);
                                }
                                dialogSetTabPos2.q0.setMaxAlpha(0.6f);
                                dialogSetTabPos2.u0.setText(DialogSetTabPos.D0[dialogSetTabPos2.x0]);
                                boolean p3 = dialogSetTabPos2.p();
                                if (dialogSetTabPos2.e0 != null) {
                                    if (p3) {
                                        p3 = dialogSetTabPos2.q();
                                    }
                                    FrameLayout frameLayout2 = dialogSetTabPos2.e0;
                                    if (p3) {
                                        i10 = 8;
                                    } else {
                                        i10 = 0;
                                    }
                                    frameLayout2.setVisibility(i10);
                                }
                                dialogSetTabPos2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogCastGuide dialogCastGuide;
                                        final DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        if (dialogSetTabPos3.a0 == null || (dialogCastGuide = dialogSetTabPos3.z0) != null) {
                                            return;
                                        }
                                        if (dialogCastGuide != null) {
                                            dialogCastGuide.dismiss();
                                            dialogSetTabPos3.z0 = null;
                                        }
                                        DialogCastGuide dialogCastGuide2 = new DialogCastGuide(dialogSetTabPos3.a0, 5);
                                        dialogSetTabPos3.z0 = dialogCastGuide2;
                                        dialogCastGuide2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.12
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int[] iArr = DialogSetTabPos.C0;
                                                DialogSetTabPos dialogSetTabPos4 = DialogSetTabPos.this;
                                                DialogCastGuide dialogCastGuide3 = dialogSetTabPos4.z0;
                                                if (dialogCastGuide3 != null) {
                                                    dialogCastGuide3.dismiss();
                                                    dialogSetTabPos4.z0 = null;
                                                }
                                            }
                                        });
                                    }
                                });
                                dialogSetTabPos2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i11;
                                        DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        if (dialogSetTabPos3.g0 == null || dialogSetTabPos3.B0 || (i11 = dialogSetTabPos3.x0) <= 1) {
                                            return;
                                        }
                                        dialogSetTabPos3.x0 = i11 - 1;
                                        DialogSetTabPos.B(dialogSetTabPos3, true);
                                    }
                                });
                                dialogSetTabPos2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i11;
                                        DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        if (dialogSetTabPos3.h0 == null || dialogSetTabPos3.B0 || (i11 = dialogSetTabPos3.x0) >= 4) {
                                            return;
                                        }
                                        dialogSetTabPos3.x0 = i11 + 1;
                                        DialogSetTabPos.B(dialogSetTabPos3, true);
                                    }
                                });
                                dialogSetTabPos2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z;
                                        final DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        View view3 = dialogSetTabPos3.s0;
                                        if (dialogSetTabPos3.a0 != null && (myPopupMenu = dialogSetTabPos3.y0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetTabPos3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetTabPos3.y0 = null;
                                            }
                                            if (view3 == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            for (int i11 = 0; i11 < 5; i11++) {
                                                int i12 = DialogSetTabPos.C0[i11];
                                                int i13 = DialogSetTabPos.D0[i12];
                                                if (dialogSetTabPos3.x0 == i12) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i11, i13, z));
                                            }
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTabPos3.a0, dialogSetTabPos3.d0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.11
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int[] iArr = DialogSetTabPos.C0;
                                                    DialogSetTabPos dialogSetTabPos4 = DialogSetTabPos.this;
                                                    MyPopupMenu myPopupMenu3 = dialogSetTabPos4.y0;
                                                    if (myPopupMenu3 != null) {
                                                        dialogSetTabPos4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogSetTabPos4.y0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i14) {
                                                    int i15;
                                                    DialogSetTabPos dialogSetTabPos4 = DialogSetTabPos.this;
                                                    if (dialogSetTabPos4.u0 == null || dialogSetTabPos4.x0 == (i15 = DialogSetTabPos.C0[i14 % 5])) {
                                                        return true;
                                                    }
                                                    dialogSetTabPos4.x0 = i15;
                                                    DialogSetTabPos.B(dialogSetTabPos4, true);
                                                    return true;
                                                }
                                            });
                                            dialogSetTabPos3.y0 = myPopupMenu2;
                                            dialogSetTabPos3.Y = myPopupMenu2;
                                        }
                                    }
                                });
                                dialogSetTabPos2.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i11 = PrefWeb.x;
                                        DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        int i12 = dialogSetTabPos3.x0;
                                        if (i11 != i12) {
                                            PrefWeb.x = i12;
                                            PrefSet.f(dialogSetTabPos3.b0, 14, i12, "mTabBar2");
                                            DialogSetFull.DialogApplyListener dialogApplyListener2 = dialogSetTabPos3.c0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                        }
                                        dialogSetTabPos3.dismiss();
                                    }
                                });
                                dialogSetTabPos2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabPos.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        MainActivity mainActivity2 = dialogSetTabPos3.a0;
                                        if (mainActivity2 != null) {
                                            if (dialogSetTabPos3.A0 == null) {
                                                dialogSetTabPos3.A0 = GlideApp.a(mainActivity2);
                                            }
                                            Handler handler3 = dialogSetTabPos3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabPos.8.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogSetTabPos dialogSetTabPos4 = DialogSetTabPos.this;
                                                    GlideRequests glideRequests = dialogSetTabPos4.A0;
                                                    if (glideRequests == null) {
                                                        return;
                                                    }
                                                    RequestBuilder s = glideRequests.s(Integer.valueOf(R.drawable.dev_dog));
                                                    DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                                    ((RequestBuilder) s.e(diskCacheStrategy)).E(dialogSetTabPos4.k0);
                                                    if (MainApp.K1) {
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_status_bar_b)).e(diskCacheStrategy)).E(dialogSetTabPos4.l0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_navi_bar_b)).e(diskCacheStrategy)).E(dialogSetTabPos4.m0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_top_bar_b)).e(diskCacheStrategy)).E(dialogSetTabPos4.n0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_bot_bar_b)).e(diskCacheStrategy)).E(dialogSetTabPos4.o0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_tab_bar_b)).e(diskCacheStrategy)).E(dialogSetTabPos4.p0);
                                                    } else {
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_status_bar_w)).e(diskCacheStrategy)).E(dialogSetTabPos4.l0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_navi_bar_w)).e(diskCacheStrategy)).E(dialogSetTabPos4.m0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_top_bar_w)).e(diskCacheStrategy)).E(dialogSetTabPos4.n0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_bot_bar_w)).e(diskCacheStrategy)).E(dialogSetTabPos4.o0);
                                                        ((RequestBuilder) dialogSetTabPos4.A0.s(Integer.valueOf(R.drawable.sample_tab_bar_w)).e(diskCacheStrategy)).E(dialogSetTabPos4.p0);
                                                    }
                                                    DialogSetTabPos.B(dialogSetTabPos4, false);
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogSetTabPos2.g(dialogSetTabPos2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogSetTabPos dialogSetTabPos3 = DialogSetTabPos.this;
                                        if (dialogSetTabPos3.d0 == null) {
                                            return;
                                        }
                                        dialogSetTabPos3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetTabPos dialogSetTabPos, boolean z) {
        AppCompatTextView appCompatTextView = dialogSetTabPos.u0;
        if (appCompatTextView != null && dialogSetTabPos.A0 != null) {
            int i = dialogSetTabPos.w0;
            appCompatTextView.setText(D0[dialogSetTabPos.x0]);
            dialogSetTabPos.q0.b();
            if (z) {
                dialogSetTabPos.B0 = true;
                ChangeBounds changeBounds = new ChangeBounds();
                changeBounds.addListener(new Transition.TransitionListener() { // from class: com.mycompany.app.dialog.DialogSetTabPos.10
                    @Override // android.transition.Transition.TransitionListener
                    public final void onTransitionCancel(Transition transition) {
                    }

                    @Override // android.transition.Transition.TransitionListener
                    public final void onTransitionEnd(Transition transition) {
                        DialogSetTabPos dialogSetTabPos2 = DialogSetTabPos.this;
                        MySelectView mySelectView = dialogSetTabPos2.q0;
                        if (mySelectView == null) {
                            return;
                        }
                        if (dialogSetTabPos2.x0 == 0) {
                            mySelectView.b();
                        } else {
                            mySelectView.c(0);
                        }
                        dialogSetTabPos2.B0 = false;
                    }

                    @Override // android.transition.Transition.TransitionListener
                    public final void onTransitionPause(Transition transition) {
                    }

                    @Override // android.transition.Transition.TransitionListener
                    public final void onTransitionResume(Transition transition) {
                    }

                    @Override // android.transition.Transition.TransitionListener
                    public final void onTransitionStart(Transition transition) {
                    }
                });
                TransitionManager.go(new Scene(dialogSetTabPos.j0), changeBounds);
            }
            int i2 = dialogSetTabPos.x0;
            if (i2 == 1) {
                C(i * 2, 0, 48, dialogSetTabPos.n0);
                C(0, i, 80, dialogSetTabPos.o0);
                C(i, 0, 48, dialogSetTabPos.p0);
                C(i, 0, 48, dialogSetTabPos.q0);
                dialogSetTabPos.p0.d(false);
            } else if (i2 == 2) {
                C(i, 0, 48, dialogSetTabPos.n0);
                C(0, i, 80, dialogSetTabPos.o0);
                int i3 = i * 2;
                C(i3, 0, 48, dialogSetTabPos.p0);
                C(i3, 0, 48, dialogSetTabPos.q0);
                dialogSetTabPos.p0.d(false);
            } else if (i2 == 3) {
                C(i, 0, 48, dialogSetTabPos.n0);
                C(0, i, 80, dialogSetTabPos.o0);
                int i4 = i * 2;
                C(0, i4, 80, dialogSetTabPos.p0);
                C(0, i4, 80, dialogSetTabPos.q0);
                dialogSetTabPos.p0.d(true);
            } else if (i2 == 4) {
                C(i, 0, 48, dialogSetTabPos.n0);
                C(0, i * 2, 80, dialogSetTabPos.o0);
                C(0, i, 80, dialogSetTabPos.p0);
                C(0, i, 80, dialogSetTabPos.q0);
                dialogSetTabPos.p0.d(true);
            } else {
                C(i, 0, 48, dialogSetTabPos.n0);
                C(0, i, 80, dialogSetTabPos.o0);
            }
            if (dialogSetTabPos.x0 == 0) {
                dialogSetTabPos.g0.setVisibility(8);
                dialogSetTabPos.h0.setVisibility(8);
                dialogSetTabPos.p0.setVisibility(4);
            } else {
                dialogSetTabPos.g0.setVisibility(0);
                dialogSetTabPos.h0.setVisibility(0);
                dialogSetTabPos.p0.setVisibility(0);
            }
        }
    }

    public static void C(int i, int i2, int i3, View view) {
        FrameLayout.LayoutParams layoutParams;
        if (view == null || (layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.gravity = i3;
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i2;
        view.requestLayout();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogCastGuide dialogCastGuide = this.z0;
        if (dialogCastGuide != null) {
            dialogCastGuide.dismiss();
            this.z0 = null;
        }
        MyPopupMenu myPopupMenu = this.y0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.y0 = null;
        }
        if (this.A0 != null) {
            this.A0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
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
        MyButtonRelative myButtonRelative = this.i0;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.i0 = null;
        }
        MyLineImage myLineImage = this.l0;
        if (myLineImage != null) {
            myLineImage.c();
            this.l0 = null;
        }
        MyLineImage myLineImage2 = this.m0;
        if (myLineImage2 != null) {
            myLineImage2.c();
            this.m0 = null;
        }
        MyLineImage myLineImage3 = this.n0;
        if (myLineImage3 != null) {
            myLineImage3.c();
            this.n0 = null;
        }
        MyLineImage myLineImage4 = this.o0;
        if (myLineImage4 != null) {
            myLineImage4.c();
            this.o0 = null;
        }
        MyLineImage myLineImage5 = this.p0;
        if (myLineImage5 != null) {
            myLineImage5.c();
            this.p0 = null;
        }
        MyLineRelative myLineRelative = this.r0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.r0 = null;
        }
        MyLineText myLineText = this.v0;
        if (myLineText != null) {
            myLineText.u();
            this.v0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.j0 = null;
        this.k0 = null;
        this.q0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        super.dismiss();
    }
}
