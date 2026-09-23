package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSeekBright extends MyDialogBottom {
    public static final /* synthetic */ int D0 = 0;
    public boolean A0;
    public int B0;
    public final Runnable C0;
    public MainActivity a0;
    public Context b0;
    public DialogSeekAudio.DialogSeekListener c0;
    public final int d0;
    public final Window e0;
    public MyDialogLinear f0;
    public MyLineRelative g0;
    public View h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public RelativeLayout l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public SeekBar o0;
    public MyButtonImage p0;
    public MyButtonImage q0;
    public AppCompatTextView r0;
    public MyLineText s0;
    public DialogSetMsg t0;
    public boolean u0;
    public int v0;
    public MyPopupMenu w0;
    public boolean x0;
    public int y0;
    public boolean z0;

    public DialogSeekBright(MainActivity mainActivity, Window window, int i, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(mainActivity);
        this.C0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekBright.11
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekBright dialogSeekBright = DialogSeekBright.this;
                SeekBar seekBar = dialogSeekBright.o0;
                if (seekBar != null) {
                    dialogSeekBright.A0 = false;
                    int progress = seekBar.getProgress();
                    if (dialogSeekBright.y0 != progress) {
                        DialogSeekBright.B(dialogSeekBright, progress);
                    }
                }
            }
        };
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogSeekListener;
        this.d0 = i;
        this.e0 = window;
        if (i == 1) {
            this.x0 = PrefVideo.u;
            this.y0 = PrefVideo.v;
            this.B0 = -123456;
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekBright.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogSeekBright dialogSeekBright = DialogSeekBright.this;
                    Context context = dialogSeekBright.b0;
                    if (context != null && dialogSeekBright.B0 == -123456) {
                        dialogSeekBright.B0 = MainUtil.D3(context);
                    }
                }
            });
        } else if (i == 2) {
            this.x0 = PrefImage.q;
            this.y0 = PrefImage.r;
        } else {
            this.x0 = PrefPdf.n;
            this.y0 = PrefPdf.o;
        }
        this.u0 = this.x0;
        this.v0 = this.y0;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekBright.2
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSeekBright dialogSeekBright = DialogSeekBright.this;
                Context context = dialogSeekBright.b0;
                if (context != null) {
                    int i2 = R.id.item_title_view;
                    int i3 = R.id.item_value_view;
                    int i4 = R.id.item_seek_text;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    int i5 = MainApp.E1;
                    myLineRelative.setPadding(i5, i5, i5, i5);
                    myLineRelative.setMinimumHeight(MainApp.h1);
                    myLineRelative.b(MainApp.E1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 16;
                    q.addView(myLineRelative, layoutParams);
                    View view = new View(context);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(1, 1);
                    layoutParams2.addRule(21);
                    myLineRelative.addView(view, layoutParams2);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i2, 1, 16.0f);
                    k.setText(R.string.type);
                    myLineRelative.addView(k, -1, -2);
                    AppCompatTextView k2 = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i3, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i2);
                    h.topMargin = MainApp.G1;
                    myLineRelative.addView(k2, h);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 14.0f, -1, -2);
                    h2.addRule(3, i3);
                    h2.topMargin = MainApp.G1;
                    myLineRelative.addView(appCompatTextView, h2);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    q.addView(relativeLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 12.0f);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    j.setText(R.string.brightness);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams3.topMargin = G;
                    layoutParams3.setMarginStart(MainApp.E1);
                    relativeLayout.addView(j, layoutParams3);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setId(i4);
                    appCompatTextView2.setMinWidth(MainApp.E1);
                    appCompatTextView2.setGravity(1);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    RelativeLayout.LayoutParams g = androidx.work.impl.workers.a.g(-2, -2, 21);
                    g.topMargin = G;
                    g.setMarginEnd(MainApp.E1);
                    relativeLayout.addView(appCompatTextView2, g);
                    FrameLayout frameLayout = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams4.addRule(3, i4);
                    relativeLayout.addView(frameLayout, layoutParams4);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i6 = MainApp.g1;
                    frameLayout.addView(myButtonImage, i6, i6);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams5.gravity = 16;
                    layoutParams5.setMarginStart(MainApp.g1);
                    layoutParams5.setMarginEnd(MainApp.g1);
                    frameLayout.addView(seekBar, layoutParams5);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams6.gravity = 8388613;
                    frameLayout.addView(p, layoutParams6);
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
                    dialogSeekBright.f0 = q;
                    dialogSeekBright.g0 = myLineRelative;
                    dialogSeekBright.h0 = view;
                    dialogSeekBright.i0 = k;
                    dialogSeekBright.j0 = k2;
                    dialogSeekBright.k0 = appCompatTextView;
                    dialogSeekBright.l0 = relativeLayout;
                    dialogSeekBright.m0 = j;
                    dialogSeekBright.n0 = appCompatTextView2;
                    dialogSeekBright.o0 = seekBar;
                    dialogSeekBright.p0 = myButtonImage;
                    dialogSeekBright.q0 = p;
                    dialogSeekBright.r0 = l;
                    dialogSeekBright.s0 = s;
                    Handler handler2 = dialogSeekBright.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekBright.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekBright dialogSeekBright2 = DialogSeekBright.this;
                            MyDialogLinear myDialogLinear = dialogSeekBright2.f0;
                            if (myDialogLinear != null && dialogSeekBright2.b0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.c(-5197648, MainApp.n1);
                                    dialogSeekBright2.g0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekBright2.i0.setTextColor(-328966);
                                    dialogSeekBright2.j0.setTextColor(-5126668);
                                    dialogSeekBright2.k0.setTextColor(-4079167);
                                    dialogSeekBright2.m0.setTextColor(-328966);
                                    dialogSeekBright2.n0.setTextColor(-328966);
                                    dialogSeekBright2.p0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSeekBright2.q0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSeekBright2.o0.setProgressDrawable(MainUtil.S(dialogSeekBright2.b0, R.drawable.seek_progress_a));
                                    dialogSeekBright2.o0.setThumb(MainUtil.S(dialogSeekBright2.b0, R.drawable.seek_thumb_a));
                                    dialogSeekBright2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekBright2.s0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekBright2.r0.setTextColor(-328966);
                                    dialogSeekBright2.s0.setTextColor(-328966);
                                    dialogSeekBright2.p0.setBgPreColor(-12632257);
                                    dialogSeekBright2.q0.setBgPreColor(-12632257);
                                } else {
                                    myDialogLinear.c(-16777216, MainApp.n1);
                                    dialogSeekBright2.g0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekBright2.i0.setTextColor(-16777216);
                                    dialogSeekBright2.j0.setTextColor(-12627531);
                                    dialogSeekBright2.k0.setTextColor(-10395295);
                                    dialogSeekBright2.m0.setTextColor(-16777216);
                                    dialogSeekBright2.n0.setTextColor(-16777216);
                                    dialogSeekBright2.p0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSeekBright2.q0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSeekBright2.o0.setProgressDrawable(MainUtil.S(dialogSeekBright2.b0, R.drawable.seek_progress_a));
                                    dialogSeekBright2.o0.setThumb(MainUtil.S(dialogSeekBright2.b0, R.drawable.seek_thumb_a));
                                    dialogSeekBright2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekBright2.s0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekBright2.r0.setTextColor(-14784824);
                                    dialogSeekBright2.s0.setTextColor(-16777216);
                                    dialogSeekBright2.p0.setBgPreColor(-2039584);
                                    dialogSeekBright2.q0.setBgPreColor(-2039584);
                                }
                                dialogSeekBright2.E();
                                dialogSeekBright2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        final DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        View view3 = dialogSeekBright3.h0;
                                        MyPopupMenu myPopupMenu = dialogSeekBright3.w0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogSeekBright3.Y = null;
                                                myPopupMenu.a();
                                                dialogSeekBright3.w0 = null;
                                            }
                                            if (view3 == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.system_name, !dialogSeekBright3.x0));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.user_defined, dialogSeekBright3.x0));
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSeekBright3.a0, dialogSeekBright3.f0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.12
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i8 = DialogSeekBright.D0;
                                                    DialogSeekBright dialogSeekBright4 = DialogSeekBright.this;
                                                    MyPopupMenu myPopupMenu3 = dialogSeekBright4.w0;
                                                    if (myPopupMenu3 != null) {
                                                        dialogSeekBright4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogSeekBright4.w0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i8) {
                                                    boolean z;
                                                    DialogSeekBright dialogSeekBright4 = DialogSeekBright.this;
                                                    if (dialogSeekBright4.j0 != null) {
                                                        if (i8 == 1) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                        if (dialogSeekBright4.x0 != z) {
                                                            dialogSeekBright4.x0 = z;
                                                            MainUtil.g7(dialogSeekBright4.e0, dialogSeekBright4.y0, z);
                                                            dialogSeekBright4.E();
                                                            return true;
                                                        }
                                                    }
                                                    return true;
                                                }
                                            });
                                            dialogSeekBright3.w0 = myPopupMenu2;
                                            dialogSeekBright3.Y = myPopupMenu2;
                                        }
                                    }
                                });
                                a.t(new StringBuilder(), dialogSeekBright2.y0, "%", dialogSeekBright2.n0);
                                dialogSeekBright2.o0.setSplitTrack(false);
                                dialogSeekBright2.o0.setMax(100);
                                dialogSeekBright2.o0.setProgress(dialogSeekBright2.y0);
                                dialogSeekBright2.o0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.5
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i8, boolean z) {
                                        DialogSeekBright.B(DialogSeekBright.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        int progress = seekBar2.getProgress();
                                        DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        DialogSeekBright.B(dialogSeekBright3, progress);
                                        dialogSeekBright3.z0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        int progress = seekBar2.getProgress();
                                        DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        DialogSeekBright.B(dialogSeekBright3, progress);
                                        dialogSeekBright3.z0 = false;
                                    }
                                });
                                dialogSeekBright2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        if (dialogSeekBright3.o0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSeekBright3.o0.setProgress(progress);
                                    }
                                });
                                dialogSeekBright2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        SeekBar seekBar2 = dialogSeekBright3.o0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogSeekBright3.o0.getMax()) {
                                            return;
                                        }
                                        dialogSeekBright3.o0.setProgress(progress);
                                    }
                                });
                                dialogSeekBright2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i8 = DialogSeekBright.D0;
                                        DialogSeekBright.this.D(true);
                                    }
                                });
                                dialogSeekBright2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        final DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        if (dialogSeekBright3.a0 == null || dialogSeekBright3.t0 != null) {
                                            return;
                                        }
                                        dialogSeekBright3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekBright3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.13
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                boolean z;
                                                int i8 = DialogSeekBright.D0;
                                                DialogSeekBright dialogSeekBright4 = DialogSeekBright.this;
                                                dialogSeekBright4.C();
                                                if (dialogSeekBright4.n0 == null) {
                                                    return;
                                                }
                                                boolean z2 = true;
                                                if (dialogSeekBright4.x0) {
                                                    dialogSeekBright4.x0 = false;
                                                    dialogSeekBright4.E();
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                if (dialogSeekBright4.y0 != 90) {
                                                    dialogSeekBright4.y0 = 90;
                                                    a.t(new StringBuilder(), dialogSeekBright4.y0, "%", dialogSeekBright4.n0);
                                                    dialogSeekBright4.o0.setProgress(dialogSeekBright4.y0);
                                                } else {
                                                    z2 = z;
                                                }
                                                if (z2) {
                                                    MainUtil.g7(dialogSeekBright4.e0, dialogSeekBright4.y0, dialogSeekBright4.x0);
                                                }
                                                dialogSeekBright4.D(false);
                                            }
                                        });
                                        dialogSeekBright3.t0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.14
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i8 = DialogSeekBright.D0;
                                                DialogSeekBright.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSeekBright2.g(dialogSeekBright2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekBright.10
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogSeekBright dialogSeekBright3 = DialogSeekBright.this;
                                        if (dialogSeekBright3.f0 == null) {
                                            return;
                                        }
                                        dialogSeekBright3.getWindow().clearFlags(2);
                                        dialogSeekBright3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSeekBright dialogSeekBright, int i) {
        Runnable runnable = dialogSeekBright.C0;
        if (dialogSeekBright.n0 != null) {
            if (i < 0) {
                i = 0;
            } else if (i > 100) {
                i = 100;
            }
            if (!dialogSeekBright.A0 && dialogSeekBright.y0 != i) {
                dialogSeekBright.A0 = true;
                dialogSeekBright.y0 = i;
                MainUtil.g7(dialogSeekBright.e0, i, dialogSeekBright.x0);
                a.t(new StringBuilder(), dialogSeekBright.y0, "%", dialogSeekBright.n0);
                if (dialogSeekBright.z0) {
                    dialogSeekBright.z0 = false;
                    dialogSeekBright.A0 = false;
                } else {
                    dialogSeekBright.n0.removeCallbacks(runnable);
                    dialogSeekBright.n0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.t0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.t0 = null;
        }
    }

    public final void D(boolean z) {
        DialogSeekAudio.DialogSeekListener dialogSeekListener;
        int i;
        int i2 = this.d0;
        if (i2 == 1) {
            boolean z2 = PrefVideo.u;
            boolean z3 = this.x0;
            if (z2 != z3 || PrefVideo.v != this.y0) {
                PrefVideo.u = z3;
                PrefVideo.v = this.y0;
                PrefVideo r = PrefVideo.r(this.b0);
                if (z) {
                    r.l("mUserBright3", PrefVideo.u);
                    r.n(PrefVideo.v, "mBright3");
                } else {
                    r.q("mUserBright3");
                    r.q("mBright3");
                }
                r.a();
                if (PrefVideo.u) {
                    i = PrefVideo.v;
                } else {
                    if (this.B0 == -123456) {
                        this.B0 = MainUtil.D3(this.b0);
                    }
                    i = this.B0;
                }
                DialogSeekAudio.DialogSeekListener dialogSeekListener2 = this.c0;
                if (dialogSeekListener2 != null) {
                    dialogSeekListener2.a(i);
                }
            }
        } else if (i2 == 2) {
            boolean z4 = PrefImage.q;
            boolean z5 = this.x0;
            if (z4 != z5 || PrefImage.r != this.y0) {
                PrefImage.q = z5;
                PrefImage.r = this.y0;
                PrefImage r2 = PrefImage.r(this.b0, false);
                if (z) {
                    r2.l("mUserBright3", PrefImage.q);
                    r2.n(PrefImage.r, "mBright3");
                } else {
                    r2.q("mUserBright3");
                    r2.q("mBright3");
                }
                r2.a();
            }
        } else {
            boolean z6 = PrefPdf.n;
            boolean z7 = this.x0;
            if (z6 != z7 || PrefPdf.o != this.y0) {
                PrefPdf.n = z7;
                PrefPdf.o = this.y0;
                PrefPdf r3 = PrefPdf.r(this.b0, false);
                if (z) {
                    r3.l("mUserBright", PrefPdf.n);
                    r3.n(PrefPdf.o, "mBright");
                } else {
                    r3.q("mUserBright");
                    r3.q("mBright");
                }
                r3.a();
                if (!z && (dialogSeekListener = this.c0) != null) {
                    dialogSeekListener.a(0);
                }
            }
        }
        this.u0 = this.x0;
        this.v0 = this.y0;
        if (z) {
            dismiss();
        }
    }

    public final void E() {
        AppCompatTextView appCompatTextView = this.j0;
        if (appCompatTextView == null) {
            return;
        }
        if (this.x0) {
            appCompatTextView.setText(R.string.user_defined);
            this.k0.setText(R.string.bright_info);
            this.l0.setAlpha(1.0f);
        } else {
            appCompatTextView.setText(R.string.system_name);
            this.k0.setText(R.string.screen_info_system);
            this.l0.setAlpha(0.1f);
        }
        this.o0.setEnabled(this.x0);
        this.p0.setEnabled(this.x0);
        this.q0.setEnabled(this.x0);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        boolean z = this.x0;
        boolean z2 = this.u0;
        if (z != z2 || this.y0 != this.v0) {
            this.x0 = z2;
            int i = this.v0;
            this.y0 = i;
            MainUtil.g7(this.e0, i, z2);
        }
        C();
        MyPopupMenu myPopupMenu = this.w0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.w0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyLineRelative myLineRelative = this.g0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.g0 = null;
        }
        MyButtonImage myButtonImage = this.p0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.p0 = null;
        }
        MyButtonImage myButtonImage2 = this.q0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.q0 = null;
        }
        MyLineText myLineText = this.s0;
        if (myLineText != null) {
            myLineText.u();
            this.s0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.r0 = null;
        super.dismiss();
    }
}
