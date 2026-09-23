package com.mycompany.app.dialog;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.wview.WebFltView;

/* loaded from: classes3.dex */
public class DialogSeekWebText extends MyDialogBottom {
    public static final /* synthetic */ int T0 = 0;
    public MyButtonImage A0;
    public MyButtonImage B0;
    public AppCompatTextView C0;
    public MyLineText D0;
    public FrameLayout E0;
    public WebFltView F0;
    public boolean G0;
    public int H0;
    public int I0;
    public boolean J0;
    public boolean K0;
    public DialogEditIcon L0;
    public DialogSetMsg M0;
    public int N0;
    public int O0;
    public float P0;
    public int Q0;
    public boolean R0;
    public final Runnable S0;
    public final int a0;
    public final int b0;
    public MainActivity c0;
    public Context d0;
    public DialogSetImage.ChangedListener e0;
    public WebNestView f0;
    public RelativeLayout g0;
    public MyDialogLinear h0;
    public RelativeLayout i0;
    public MySwitchView j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyLineRelative m0;
    public AppCompatTextView n0;
    public MyButtonView o0;
    public MyRoundItem p0;
    public AppCompatTextView q0;
    public AppCompatTextView r0;
    public FrameLayout s0;
    public SeekBar t0;
    public MyButtonImage u0;
    public MyButtonImage v0;
    public MyRoundItem w0;
    public AppCompatTextView x0;
    public AppCompatTextView y0;
    public SeekBar z0;

    public DialogSeekWebText(MainActivity mainActivity, WebNestView webNestView, DialogSetImage.ChangedListener changedListener) {
        super(mainActivity);
        this.S0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWebText.17
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWebText dialogSeekWebText = DialogSeekWebText.this;
                SeekBar seekBar = dialogSeekWebText.z0;
                if (seekBar != null) {
                    dialogSeekWebText.K0 = false;
                    int progress = seekBar.getProgress() + dialogSeekWebText.a0;
                    if (dialogSeekWebText.I0 != progress) {
                        DialogSeekWebText.B(dialogSeekWebText, progress);
                    }
                }
            }
        };
        this.c0 = mainActivity;
        this.d0 = getContext();
        this.e0 = changedListener;
        this.f0 = webNestView;
        this.a0 = 50;
        this.b0 = 500;
        int i = PrefZtri.p;
        if (i < 50 || i > 500) {
            PrefZtri.p = 100;
        }
        int i2 = PrefZone.w;
        if (i2 < 50 || i2 > 500) {
            PrefZone.w = 100;
        }
        this.G0 = PrefZtri.k;
        this.H0 = PrefZtri.p;
        this.I0 = PrefZone.w;
        this.N0 = PrefEditor.r;
        this.O0 = PrefEditor.s;
        this.P0 = PrefEditor.t;
        this.Q0 = webNestView.getSettings().getTextZoom();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWebText.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSeekWebText dialogSeekWebText = DialogSeekWebText.this;
                Context context = dialogSeekWebText.d0;
                if (context != null) {
                    int i3 = R.id.item_frame_view;
                    int i4 = R.id.item_title_view;
                    int i5 = R.id.item_seek_text;
                    int i6 = R.id.item_zoom_text;
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    MyDialogLinear myDialogLinear = new MyDialogLinear(context);
                    myDialogLinear.setId(i3);
                    myDialogLinear.setOrientation(1);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(12);
                    relativeLayout.addView(myDialogLinear, layoutParams);
                    RelativeLayout relativeLayout2 = new RelativeLayout(context);
                    relativeLayout2.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    relativeLayout2.setMinimumHeight(MainApp.h1);
                    myDialogLinear.addView(relativeLayout2, -1, -2);
                    MySwitchView mySwitchView = new MySwitchView(context);
                    int i7 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i7, i7);
                    layoutParams2.addRule(21);
                    layoutParams2.addRule(15);
                    relativeLayout2.addView(mySwitchView, layoutParams2);
                    RelativeLayout relativeLayout3 = new RelativeLayout(context);
                    int i8 = MainApp.E1;
                    relativeLayout3.setPadding(0, i8, 0, i8);
                    RelativeLayout.LayoutParams g = androidx.work.impl.workers.a.g(-1, -2, 15);
                    g.setMarginEnd(MainApp.g1 + MainApp.F1);
                    relativeLayout2.addView(relativeLayout3, g);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i4, 1, 16.0f);
                    relativeLayout3.addView(k, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i4);
                    h.topMargin = MainApp.G1;
                    relativeLayout3.addView(j, h);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    myLineRelative.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineRelative.setMinimumHeight(MainApp.h1);
                    myLineRelative.d(MainApp.E1);
                    myDialogLinear.addView(myLineRelative, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i9 = MainApp.E1;
                    appCompatTextView.setPadding(0, i9, 0, i9);
                    RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 16.0f, -1, -2);
                    h2.addRule(15);
                    myLineRelative.addView(appCompatTextView, h2);
                    int G = (int) MainUtil.G(context, 12.0f);
                    MyButtonView myButtonView = new MyButtonView(context);
                    myButtonView.setBgNorRadius(G);
                    int i10 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i10, i10);
                    layoutParams3.addRule(15);
                    layoutParams3.addRule(21);
                    myLineRelative.addView(myButtonView, layoutParams3);
                    MyRoundItem myRoundItem = new MyRoundItem(context);
                    myDialogLinear.addView(myRoundItem, -1, -2);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams4.topMargin = G;
                    layoutParams4.setMarginStart(MainApp.E1);
                    myRoundItem.addView(j2, layoutParams4);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setId(i6);
                    appCompatTextView2.setGravity(1);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setMinWidth(MainApp.E1);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams5.addRule(21);
                    layoutParams5.topMargin = G;
                    layoutParams5.setMarginEnd(MainApp.E1);
                    myRoundItem.addView(appCompatTextView2, layoutParams5);
                    FrameLayout frameLayout = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams6.addRule(3, i6);
                    myRoundItem.addView(frameLayout, layoutParams6);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i11 = MainApp.g1;
                    frameLayout.addView(myButtonImage, i11, i11);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams7.gravity = 16;
                    layoutParams7.setMarginStart(MainApp.g1);
                    layoutParams7.setMarginEnd(MainApp.g1);
                    frameLayout.addView(seekBar, layoutParams7);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i12 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i12, i12);
                    layoutParams8.gravity = 8388613;
                    frameLayout.addView(p, layoutParams8);
                    MyRoundItem myRoundItem2 = new MyRoundItem(context);
                    RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams9.topMargin = MainApp.F1;
                    myDialogLinear.addView(myRoundItem2, layoutParams9);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    RelativeLayout.LayoutParams h3 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView3, 1, 16.0f, -2, -2);
                    h3.topMargin = G;
                    h3.setMarginStart(MainApp.E1);
                    myRoundItem2.addView(appCompatTextView3, h3);
                    AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                    appCompatTextView4.setId(i5);
                    appCompatTextView4.setGravity(1);
                    appCompatTextView4.setTextSize(1, 16.0f);
                    appCompatTextView4.setMinWidth(MainApp.E1);
                    RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams10.addRule(21);
                    layoutParams10.topMargin = G;
                    layoutParams10.setMarginEnd(MainApp.E1);
                    myRoundItem2.addView(appCompatTextView4, layoutParams10);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams11.addRule(3, i5);
                    myRoundItem2.addView(frameLayout2, layoutParams11);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    int i13 = MainApp.g1;
                    frameLayout2.addView(myButtonImage2, i13, i13);
                    SeekBar seekBar2 = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams12.gravity = 16;
                    layoutParams12.setMarginStart(MainApp.g1);
                    layoutParams12.setMarginEnd(MainApp.g1);
                    frameLayout2.addView(seekBar2, layoutParams12);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i14 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i14, i14);
                    layoutParams13.gravity = 8388613;
                    frameLayout2.addView(p2, layoutParams13);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(myDialogLinear, myLineLinear, -1, MainApp.g1, context);
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
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    relativeLayout.addView(frameLayout3, androidx.work.impl.workers.a.h(-1, -1, 2, i3));
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    frameLayout3.addView(myRecyclerView, -1, -1);
                    dialogSeekWebText.g0 = relativeLayout;
                    dialogSeekWebText.h0 = myDialogLinear;
                    dialogSeekWebText.i0 = relativeLayout2;
                    dialogSeekWebText.j0 = mySwitchView;
                    dialogSeekWebText.k0 = k;
                    dialogSeekWebText.l0 = j;
                    dialogSeekWebText.m0 = myLineRelative;
                    dialogSeekWebText.n0 = appCompatTextView;
                    dialogSeekWebText.o0 = myButtonView;
                    dialogSeekWebText.p0 = myRoundItem;
                    dialogSeekWebText.q0 = j2;
                    dialogSeekWebText.r0 = appCompatTextView2;
                    dialogSeekWebText.s0 = frameLayout;
                    dialogSeekWebText.t0 = seekBar;
                    dialogSeekWebText.u0 = myButtonImage;
                    dialogSeekWebText.v0 = p;
                    dialogSeekWebText.w0 = myRoundItem2;
                    dialogSeekWebText.x0 = appCompatTextView3;
                    dialogSeekWebText.y0 = appCompatTextView4;
                    dialogSeekWebText.z0 = seekBar2;
                    dialogSeekWebText.A0 = myButtonImage2;
                    dialogSeekWebText.B0 = p2;
                    dialogSeekWebText.C0 = l;
                    dialogSeekWebText.D0 = s;
                    dialogSeekWebText.E0 = frameLayout3;
                    Handler handler2 = dialogSeekWebText.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWebText.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekWebText dialogSeekWebText2 = DialogSeekWebText.this;
                            int i15 = dialogSeekWebText2.b0;
                            int i16 = dialogSeekWebText2.a0;
                            if (dialogSeekWebText2.g0 != null && dialogSeekWebText2.d0 != null) {
                                if (MainApp.K1) {
                                    dialogSeekWebText2.h0.c(-5197648, MainApp.n1);
                                    dialogSeekWebText2.h0.setBackgroundColor(-16777216);
                                    dialogSeekWebText2.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSeekWebText2.m0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSeekWebText2.p0.setBackgroundColor(-14606047);
                                    dialogSeekWebText2.w0.setBackgroundColor(-14606047);
                                    dialogSeekWebText2.k0.setTextColor(-328966);
                                    dialogSeekWebText2.l0.setTextColor(-4079167);
                                    dialogSeekWebText2.n0.setTextColor(-328966);
                                    dialogSeekWebText2.q0.setTextColor(-328966);
                                    dialogSeekWebText2.r0.setTextColor(-328966);
                                    dialogSeekWebText2.u0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSeekWebText2.v0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSeekWebText2.t0.setProgressDrawable(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekWebText2.t0.setThumb(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekWebText2.x0.setTextColor(-328966);
                                    dialogSeekWebText2.y0.setTextColor(-328966);
                                    dialogSeekWebText2.A0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSeekWebText2.B0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSeekWebText2.z0.setProgressDrawable(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekWebText2.z0.setThumb(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekWebText2.C0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSeekWebText2.D0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSeekWebText2.C0.setTextColor(-328966);
                                    dialogSeekWebText2.D0.setTextColor(-328966);
                                    dialogSeekWebText2.u0.setBgPreColor(-12632257);
                                    dialogSeekWebText2.v0.setBgPreColor(-12632257);
                                    dialogSeekWebText2.A0.setBgPreColor(-12632257);
                                    dialogSeekWebText2.B0.setBgPreColor(-12632257);
                                } else {
                                    dialogSeekWebText2.h0.c(-16777216, MainApp.n1);
                                    dialogSeekWebText2.h0.setBackgroundColor(-460552);
                                    dialogSeekWebText2.i0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSeekWebText2.m0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSeekWebText2.p0.setBackgroundColor(-1);
                                    dialogSeekWebText2.w0.setBackgroundColor(-1);
                                    dialogSeekWebText2.k0.setTextColor(-16777216);
                                    dialogSeekWebText2.l0.setTextColor(-10395295);
                                    dialogSeekWebText2.n0.setTextColor(-16777216);
                                    dialogSeekWebText2.q0.setTextColor(-16777216);
                                    dialogSeekWebText2.r0.setTextColor(-16777216);
                                    dialogSeekWebText2.u0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSeekWebText2.v0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSeekWebText2.t0.setProgressDrawable(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekWebText2.t0.setThumb(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekWebText2.x0.setTextColor(-16777216);
                                    dialogSeekWebText2.y0.setTextColor(-16777216);
                                    dialogSeekWebText2.A0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSeekWebText2.B0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSeekWebText2.z0.setProgressDrawable(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekWebText2.z0.setThumb(MainUtil.S(dialogSeekWebText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekWebText2.C0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSeekWebText2.D0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSeekWebText2.C0.setTextColor(-14784824);
                                    dialogSeekWebText2.D0.setTextColor(-16777216);
                                    dialogSeekWebText2.u0.setBgPreColor(-2039584);
                                    dialogSeekWebText2.v0.setBgPreColor(-2039584);
                                    dialogSeekWebText2.A0.setBgPreColor(-2039584);
                                    dialogSeekWebText2.B0.setBgPreColor(-2039584);
                                }
                                int i17 = 0;
                                dialogSeekWebText2.p0.d(false, true);
                                dialogSeekWebText2.w0.d(true, false);
                                dialogSeekWebText2.k0.setText(R.string.zoom_icon);
                                dialogSeekWebText2.l0.setText(R.string.drag_move_guide);
                                dialogSeekWebText2.n0.setText(R.string.icon_color);
                                dialogSeekWebText2.q0.setText(R.string.zoom_size);
                                dialogSeekWebText2.H(dialogSeekWebText2.G0);
                                dialogSeekWebText2.j0.b(dialogSeekWebText2.G0, false);
                                dialogSeekWebText2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        MySwitchView mySwitchView2 = dialogSeekWebText3.j0;
                                        if (mySwitchView2 == null) {
                                            return;
                                        }
                                        boolean z = !dialogSeekWebText3.G0;
                                        dialogSeekWebText3.G0 = z;
                                        mySwitchView2.b(z, true);
                                        dialogSeekWebText3.I(dialogSeekWebText3.G0);
                                    }
                                });
                                dialogSeekWebText2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        MySwitchView mySwitchView2 = dialogSeekWebText3.j0;
                                        if (mySwitchView2 == null) {
                                            return;
                                        }
                                        boolean z = !dialogSeekWebText3.G0;
                                        dialogSeekWebText3.G0 = z;
                                        mySwitchView2.b(z, true);
                                        dialogSeekWebText3.I(dialogSeekWebText3.G0);
                                    }
                                });
                                dialogSeekWebText2.o0.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                                dialogSeekWebText2.o0.d(MainApp.n1);
                                dialogSeekWebText2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogEditIcon dialogEditIcon;
                                        final DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        if (dialogSeekWebText3.c0 == null || (dialogEditIcon = dialogSeekWebText3.L0) != null || dialogSeekWebText3.M0 != null) {
                                            return;
                                        }
                                        if (dialogEditIcon != null) {
                                            dialogEditIcon.dismiss();
                                            dialogSeekWebText3.L0 = null;
                                        }
                                        DialogEditIcon dialogEditIcon2 = new DialogEditIcon(dialogSeekWebText3.c0, 2, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.20
                                            @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                            public final void a(int i18, String str) {
                                                DialogSeekWebText dialogSeekWebText4 = DialogSeekWebText.this;
                                                MyButtonView myButtonView2 = dialogSeekWebText4.o0;
                                                if (myButtonView2 != null) {
                                                    myButtonView2.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                                                    WebFltView webFltView = dialogSeekWebText4.F0;
                                                    if (webFltView != null) {
                                                        webFltView.q();
                                                    }
                                                }
                                            }
                                        });
                                        dialogSeekWebText3.L0 = dialogEditIcon2;
                                        dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.21
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i18 = DialogSeekWebText.T0;
                                                DialogSeekWebText dialogSeekWebText4 = DialogSeekWebText.this;
                                                DialogEditIcon dialogEditIcon3 = dialogSeekWebText4.L0;
                                                if (dialogEditIcon3 != null) {
                                                    dialogEditIcon3.dismiss();
                                                    dialogSeekWebText4.L0 = null;
                                                }
                                            }
                                        });
                                    }
                                });
                                a.t(new StringBuilder(), dialogSeekWebText2.H0, "%", dialogSeekWebText2.r0);
                                dialogSeekWebText2.t0.setSplitTrack(false);
                                int i18 = i15 - i16;
                                dialogSeekWebText2.t0.setMax(i18);
                                dialogSeekWebText2.t0.setProgress(dialogSeekWebText2.H0 - i16);
                                dialogSeekWebText2.t0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.6
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i19, boolean z) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.C(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.C(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.C(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                    }
                                });
                                dialogSeekWebText2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        if (dialogSeekWebText3.t0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSeekWebText3.t0.setProgress(progress);
                                    }
                                });
                                dialogSeekWebText2.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        SeekBar seekBar3 = dialogSeekWebText3.t0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSeekWebText3.t0.getMax()) {
                                            return;
                                        }
                                        dialogSeekWebText3.t0.setProgress(progress);
                                    }
                                });
                                dialogSeekWebText2.x0.setText(R.string.default_size);
                                a.t(new StringBuilder(), dialogSeekWebText2.I0, "%", dialogSeekWebText2.y0);
                                dialogSeekWebText2.z0.setSplitTrack(false);
                                dialogSeekWebText2.z0.setMax(i18);
                                dialogSeekWebText2.z0.setProgress(dialogSeekWebText2.I0 - i16);
                                dialogSeekWebText2.z0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.9
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i19, boolean z) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.B(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.B(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                        dialogSeekWebText3.J0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        DialogSeekWebText.B(dialogSeekWebText3, progress + dialogSeekWebText3.a0);
                                        dialogSeekWebText3.J0 = false;
                                    }
                                });
                                dialogSeekWebText2.A0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        if (dialogSeekWebText3.z0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSeekWebText3.z0.setProgress(progress);
                                    }
                                });
                                dialogSeekWebText2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        SeekBar seekBar3 = dialogSeekWebText3.z0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSeekWebText3.z0.getMax()) {
                                            return;
                                        }
                                        dialogSeekWebText3.z0.setProgress(progress);
                                    }
                                });
                                dialogSeekWebText2.E0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.12
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSeekWebText.this.dismiss();
                                    }
                                });
                                dialogSeekWebText2.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i19 = DialogSeekWebText.T0;
                                        DialogSeekWebText.this.F(true);
                                    }
                                });
                                dialogSeekWebText2.D0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        if (dialogSeekWebText3.c0 == null || dialogSeekWebText3.L0 != null || dialogSeekWebText3.M0 != null) {
                                            return;
                                        }
                                        dialogSeekWebText3.D();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekWebText3.c0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.22
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i19 = DialogSeekWebText.T0;
                                                DialogSeekWebText dialogSeekWebText4 = DialogSeekWebText.this;
                                                dialogSeekWebText4.D();
                                                int i20 = dialogSeekWebText4.a0;
                                                if (dialogSeekWebText4.f0 == null) {
                                                    return;
                                                }
                                                if (dialogSeekWebText4.G0) {
                                                    dialogSeekWebText4.G0 = false;
                                                    dialogSeekWebText4.j0.b(false, false);
                                                    dialogSeekWebText4.I(dialogSeekWebText4.G0);
                                                }
                                                if (dialogSeekWebText4.H0 != 200) {
                                                    dialogSeekWebText4.H0 = HttpStatusCodes.STATUS_CODE_OK;
                                                    a.t(new StringBuilder(), dialogSeekWebText4.H0, "%", dialogSeekWebText4.r0);
                                                    dialogSeekWebText4.t0.setProgress(dialogSeekWebText4.H0 - i20);
                                                }
                                                if (dialogSeekWebText4.I0 != 100) {
                                                    dialogSeekWebText4.I0 = 100;
                                                    a.t(new StringBuilder(), dialogSeekWebText4.I0, "%", dialogSeekWebText4.y0);
                                                    dialogSeekWebText4.z0.setProgress(dialogSeekWebText4.I0 - i20);
                                                }
                                                dialogSeekWebText4.Q0 = dialogSeekWebText4.I0;
                                                dialogSeekWebText4.f0.getSettings().setTextZoom(dialogSeekWebText4.I0);
                                                dialogSeekWebText4.N0 = 0;
                                                int i21 = MainConst.q[5];
                                                dialogSeekWebText4.O0 = i21;
                                                float f2 = MainConst.p[5];
                                                dialogSeekWebText4.P0 = f2;
                                                if (DialogSeekWebText.E(f2, 0, i21)) {
                                                    dialogSeekWebText4.G(dialogSeekWebText4.P0, dialogSeekWebText4.N0, dialogSeekWebText4.O0);
                                                    dialogSeekWebText4.o0.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                                                    WebFltView webFltView = dialogSeekWebText4.F0;
                                                    if (webFltView != null) {
                                                        webFltView.q();
                                                    }
                                                }
                                                dialogSeekWebText4.F(false);
                                            }
                                        });
                                        dialogSeekWebText3.M0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.23
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i19 = DialogSeekWebText.T0;
                                                DialogSeekWebText.this.D();
                                            }
                                        });
                                    }
                                });
                                boolean p3 = dialogSeekWebText2.p();
                                if (dialogSeekWebText2.E0 != null) {
                                    if (p3) {
                                        p3 = dialogSeekWebText2.q();
                                    }
                                    FrameLayout frameLayout4 = dialogSeekWebText2.E0;
                                    if (p3) {
                                        i17 = 8;
                                    }
                                    frameLayout4.setVisibility(i17);
                                }
                                dialogSeekWebText2.g(dialogSeekWebText2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.15
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        final DialogSeekWebText dialogSeekWebText3 = DialogSeekWebText.this;
                                        if (dialogSeekWebText3.g0 != null) {
                                            dialogSeekWebText3.getWindow().clearFlags(2);
                                            dialogSeekWebText3.show();
                                            Handler handler3 = dialogSeekWebText3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWebText.16
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final DialogSeekWebText dialogSeekWebText4 = DialogSeekWebText.this;
                                                    if (dialogSeekWebText4.F0 == null && dialogSeekWebText4.E0 != null) {
                                                        try {
                                                            WebFltView webFltView = new WebFltView(dialogSeekWebText4.d0, 4);
                                                            dialogSeekWebText4.F0 = webFltView;
                                                            webFltView.setPreview(true);
                                                            dialogSeekWebText4.F0.q();
                                                            if (PrefZtri.p0) {
                                                                dialogSeekWebText4.F0.setNoti(true);
                                                            }
                                                            if (!dialogSeekWebText4.G0) {
                                                                dialogSeekWebText4.F0.setVisibility(8);
                                                            }
                                                            dialogSeekWebText4.F0.setFltListener(new WebFltView.FltViewListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.18
                                                                @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                                public final void a(View view2, int i19) {
                                                                    DialogSeekWebText dialogSeekWebText5 = DialogSeekWebText.this;
                                                                    if (dialogSeekWebText5.f0 == null) {
                                                                        return;
                                                                    }
                                                                    if (PrefZtri.p0) {
                                                                        PrefZtri.p0 = false;
                                                                        PrefSet.d(17, dialogSeekWebText5.d0, "mNotiZoom", false);
                                                                        dialogSeekWebText5.F0.setNoti(false);
                                                                    }
                                                                    int textZoom = dialogSeekWebText5.f0.getSettings().getTextZoom();
                                                                    if (textZoom != dialogSeekWebText5.H0) {
                                                                        dialogSeekWebText5.f0.getSettings().setTextZoom(dialogSeekWebText5.H0);
                                                                    } else if (textZoom != dialogSeekWebText5.I0) {
                                                                        dialogSeekWebText5.f0.getSettings().setTextZoom(dialogSeekWebText5.I0);
                                                                    }
                                                                    dialogSeekWebText5.R0 = true;
                                                                }

                                                                @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                                public final void b() {
                                                                }

                                                                @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                                public final void c(View view2) {
                                                                }
                                                            });
                                                            dialogSeekWebText4.F0.setTouchListener(new WebFltView.FltTouchListener() { // from class: com.mycompany.app.dialog.DialogSeekWebText.19
                                                                @Override // com.mycompany.app.wview.WebFltView.FltTouchListener
                                                                public final void a(boolean z) {
                                                                    DialogSeekWebText.this.y(!z);
                                                                }
                                                            });
                                                            FrameLayout frameLayout5 = dialogSeekWebText4.E0;
                                                            WebFltView webFltView2 = dialogSeekWebText4.F0;
                                                            int i19 = MainApp.g1;
                                                            frameLayout5.addView(webFltView2, i19, i19);
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSeekWebText dialogSeekWebText, int i) {
        Runnable runnable = dialogSeekWebText.S0;
        if (dialogSeekWebText.y0 != null) {
            int i2 = dialogSeekWebText.a0;
            if (i < i2 || i > (i2 = dialogSeekWebText.b0)) {
                i = i2;
            }
            if (!dialogSeekWebText.K0 && dialogSeekWebText.I0 != i) {
                dialogSeekWebText.K0 = true;
                dialogSeekWebText.I0 = i;
                WebNestView webNestView = dialogSeekWebText.f0;
                if (webNestView != null) {
                    webNestView.getSettings().setTextZoom(dialogSeekWebText.I0);
                    dialogSeekWebText.R0 = true;
                    a.t(new StringBuilder(), dialogSeekWebText.I0, "%", dialogSeekWebText.y0);
                    if (dialogSeekWebText.J0) {
                        dialogSeekWebText.J0 = false;
                        dialogSeekWebText.K0 = false;
                    } else {
                        dialogSeekWebText.y0.removeCallbacks(runnable);
                        dialogSeekWebText.y0.postDelayed(runnable, 100L);
                    }
                }
            }
        }
    }

    public static void C(DialogSeekWebText dialogSeekWebText, int i) {
        AppCompatTextView appCompatTextView = dialogSeekWebText.r0;
        if (appCompatTextView != null) {
            int i2 = dialogSeekWebText.a0;
            if (i < i2 || i > (i2 = dialogSeekWebText.b0)) {
                i = i2;
            }
            if (dialogSeekWebText.H0 == i) {
                return;
            }
            int oldH0 = dialogSeekWebText.H0;
            dialogSeekWebText.H0 = i;
            WebNestView webNestView = dialogSeekWebText.f0;
            if (webNestView != null && webNestView.getSettings().getTextZoom() == oldH0) {
                webNestView.getSettings().setTextZoom(dialogSeekWebText.H0);
                dialogSeekWebText.R0 = true;
            }
            a.t(new StringBuilder(), dialogSeekWebText.H0, "%", appCompatTextView);
        }
    }

    public static boolean E(float f, int i, int i2) {
        if (PrefEditor.r == i && PrefEditor.s == i2 && Float.compare(PrefEditor.t, f) == 0) {
            return false;
        }
        return true;
    }

    public final void D() {
        DialogSetMsg dialogSetMsg = this.M0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.M0 = null;
        }
    }

    public final void F(boolean z) {
        boolean z2;
        DialogSetImage.ChangedListener changedListener;
        boolean z3 = PrefZtri.k;
        boolean z4 = this.G0;
        boolean z5 = true;
        if (z3 == z4 && PrefZtri.p == this.H0) {
            z2 = false;
        } else {
            PrefZtri.k = z4;
            PrefZtri.p = this.H0;
            PrefZtri r = PrefZtri.r(this.d0);
            if (z) {
                r.l("mZoomIcon", PrefZtri.k);
                r.n(PrefZtri.p, "mZoomSize");
            } else {
                r.q("mZoomIcon");
                r.q("mZoomSize");
            }
            r.a();
            z2 = true;
        }
        int i = PrefZone.w;
        int i2 = this.I0;
        if (i != i2) {
            PrefZone.w = i2;
            if (z) {
                PrefSet.f(this.d0, 15, i2, "mTextSize");
            } else {
                PrefSet.i(this.d0, 15, "mTextSize");
            }
            z2 = true;
        }
        if (E(this.P0, this.N0, this.O0)) {
            this.N0 = PrefEditor.r;
            this.O0 = PrefEditor.s;
            this.P0 = PrefEditor.t;
        } else {
            z5 = z2;
        }
        if (z5 && (changedListener = this.e0) != null) {
            changedListener.a();
        }
        this.R0 = false;
        if (z) {
            dismiss();
        }
    }

    public final void G(float f, int i, int i2) {
        PrefEditor.r = i;
        PrefEditor.s = i2;
        PrefEditor.t = f;
        PrefEditor.u = PrefEditor.r(i2, i);
        PrefEditor s = PrefEditor.s(this.d0);
        s.n(PrefEditor.r, "mZoomAlpha");
        s.n(PrefEditor.s, "mZoomColor");
        s.m("mZoomPos", PrefEditor.t);
        s.a();
    }

    public final void H(boolean z) {
        MyLineRelative myLineRelative = this.m0;
        if (myLineRelative == null) {
            return;
        }
        myLineRelative.setEnabled(z);
        this.t0.setEnabled(z);
        this.u0.setEnabled(z);
        this.v0.setEnabled(z);
        if (z) {
            this.n0.setAlpha(1.0f);
            this.o0.setAlpha(1.0f);
            this.q0.setAlpha(1.0f);
            this.r0.setAlpha(1.0f);
            this.s0.setAlpha(1.0f);
            return;
        }
        this.n0.setAlpha(0.2f);
        this.o0.setAlpha(0.2f);
        this.q0.setAlpha(0.2f);
        this.r0.setAlpha(0.2f);
        this.s0.setAlpha(0.2f);
    }

    public final void I(boolean z) {
        WebFltView webFltView = this.F0;
        if (webFltView == null) {
            return;
        }
        if (z) {
            webFltView.w(true);
        } else {
            webFltView.m(true);
            y(true);
        }
        H(z);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.d0 == null) {
            return;
        }
        if (this.R0) {
            this.R0 = false;
            WebNestView webNestView = this.f0;
            if (webNestView != null) {
                webNestView.getSettings().setTextZoom(this.Q0);
            }
        }
        if (E(this.P0, this.N0, this.O0)) {
            G(this.P0, this.N0, this.O0);
        }
        DialogEditIcon dialogEditIcon = this.L0;
        if (dialogEditIcon != null) {
            dialogEditIcon.dismiss();
            this.L0 = null;
        }
        D();
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MySwitchView mySwitchView = this.j0;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.j0 = null;
        }
        MyLineRelative myLineRelative = this.m0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.m0 = null;
        }
        MyButtonView myButtonView = this.o0;
        if (myButtonView != null) {
            myButtonView.f18599c = false;
            ValueAnimator valueAnimator = myButtonView.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                myButtonView.o = null;
            }
            ValueAnimator valueAnimator2 = myButtonView.p;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                myButtonView.p = null;
            }
            myButtonView.j = null;
            myButtonView.n = null;
            myButtonView.t = null;
            myButtonView.u = null;
            myButtonView.v = null;
            myButtonView.z = null;
            myButtonView.A = null;
            this.o0 = null;
        }
        MyRoundItem myRoundItem = this.p0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.p0 = null;
        }
        MyButtonImage myButtonImage = this.u0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.u0 = null;
        }
        MyButtonImage myButtonImage2 = this.v0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.v0 = null;
        }
        MyRoundItem myRoundItem2 = this.w0;
        if (myRoundItem2 != null) {
            myRoundItem2.b();
            this.w0 = null;
        }
        MyButtonImage myButtonImage3 = this.A0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.A0 = null;
        }
        MyButtonImage myButtonImage4 = this.B0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.B0 = null;
        }
        MyLineText myLineText = this.D0;
        if (myLineText != null) {
            myLineText.u();
            this.D0 = null;
        }
        WebFltView webFltView = this.F0;
        if (webFltView != null) {
            webFltView.o();
            this.F0 = null;
        }
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        this.f0 = null;
        this.i0 = null;
        this.k0 = null;
        this.l0 = null;
        this.n0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.C0 = null;
        this.E0 = null;
        super.dismiss();
    }
}
