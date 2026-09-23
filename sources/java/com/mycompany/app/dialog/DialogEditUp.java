package com.mycompany.app.dialog;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMoveFrame;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogEditUp extends MyDialogBottom {
    public static final /* synthetic */ int D0 = 0;
    public GlideRequests A0;
    public Drawable B0;
    public float C0;
    public final int a0;
    public MainActivity b0;
    public Context c0;
    public MyDialogLinear d0;
    public MyMoveFrame e0;
    public MyRoundImage f0;
    public MyButtonImage g0;
    public MyLineRelative h0;
    public View i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public SeekBar o0;
    public MyButtonImage p0;
    public MyButtonImage q0;
    public AppCompatTextView r0;
    public MyLineText s0;
    public DialogSetMsg t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public boolean y0;
    public MyPopupMenu z0;

    /* renamed from: com.mycompany.app.dialog.DialogEditUp$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogEditUp(MainActivity mainActivity) {
        super(mainActivity);
        int i;
        this.b0 = mainActivity;
        this.c0 = getContext();
        this.u0 = PrefZone.y;
        int i2 = PrefEditor.J;
        this.v0 = i2;
        if (MainApp.K1) {
            i = -16777216;
        } else {
            i = -1;
        }
        this.w0 = i;
        this.a0 = 90;
        if (i2 < 0 || i2 > 90) {
            this.v0 = 25;
        }
        this.x0 = PrefEditor.r(i, this.v0);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUp.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogEditUp dialogEditUp = DialogEditUp.this;
                Context context = dialogEditUp.c0;
                if (context != null) {
                    int i3 = R.id.item_title_view;
                    int i4 = R.id.item_value_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyMoveFrame myMoveFrame = new MyMoveFrame(context);
                    q.addView(myMoveFrame, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.FIT_XY);
                    myMoveFrame.addView(myRoundImage, -1, -2);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    int i5 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
                    layoutParams.gravity = 17;
                    myMoveFrame.addView(myButtonImage, layoutParams);
                    NestedScrollView nestedScrollView = new NestedScrollView(context, null);
                    nestedScrollView.setOverScrollMode(2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(nestedScrollView, layoutParams2);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setPadding(0, 0, 0, MainApp.G1);
                    linearLayout.setOrientation(1);
                    nestedScrollView.addView(linearLayout, -1, -2);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    int i6 = MainApp.E1;
                    myLineRelative.setPadding(i6, i6, i6, i6);
                    myLineRelative.setMinimumHeight(MainApp.h1);
                    myLineRelative.setGravity(16);
                    myLineRelative.b(MainApp.E1);
                    linearLayout.addView(myLineRelative, -1, -2);
                    View view = new View(context);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(1, 1);
                    layoutParams3.addRule(21);
                    myLineRelative.addView(view, layoutParams3);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i3, 1, 16.0f);
                    myLineRelative.addView(k, -1, -2);
                    AppCompatTextView k2 = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i4, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i3);
                    h.topMargin = MainApp.G1;
                    myLineRelative.addView(k2, h);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 14.0f, -1, -2);
                    h2.addRule(3, i4);
                    h2.topMargin = MainApp.G1;
                    myLineRelative.addView(appCompatTextView, h2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setPadding(0, MainApp.E1, 0, 0);
                    linearLayout.addView(frameLayout, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j, R.string.color_alpha, -2, -2);
                    d.setMarginStart(MainApp.E1);
                    frameLayout.addView(j, d);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams4.gravity = 8388613;
                    layoutParams4.setMarginEnd(MainApp.E1);
                    frameLayout.addView(C, layoutParams4);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    linearLayout.addView(frameLayout2, -1, MainApp.g1);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setImageResource(R.drawable.outline_remove_white_24);
                    int i7 = MainApp.g1;
                    frameLayout2.addView(myButtonImage2, i7, i7);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams5.gravity = 8388627;
                    layoutParams5.setMarginStart(MainApp.g1);
                    layoutParams5.setMarginEnd(MainApp.g1);
                    frameLayout2.addView(seekBar, layoutParams5);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.setImageResource(R.drawable.outline_add_white_24);
                    int i8 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams6.gravity = 8388613;
                    frameLayout2.addView(p, layoutParams6);
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
                    dialogEditUp.d0 = q;
                    dialogEditUp.g0 = myButtonImage;
                    dialogEditUp.e0 = myMoveFrame;
                    dialogEditUp.f0 = myRoundImage;
                    dialogEditUp.h0 = myLineRelative;
                    dialogEditUp.i0 = view;
                    dialogEditUp.j0 = k;
                    dialogEditUp.k0 = k2;
                    dialogEditUp.l0 = appCompatTextView;
                    dialogEditUp.m0 = j;
                    dialogEditUp.n0 = C;
                    dialogEditUp.o0 = seekBar;
                    dialogEditUp.p0 = myButtonImage2;
                    dialogEditUp.q0 = p;
                    dialogEditUp.r0 = l;
                    dialogEditUp.s0 = s;
                    Handler handler2 = dialogEditUp.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUp.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i9;
                            int i10;
                            final DialogEditUp dialogEditUp2 = DialogEditUp.this;
                            if (dialogEditUp2.d0 != null && dialogEditUp2.c0 != null) {
                                if (MainApp.K1) {
                                    dialogEditUp2.m0.setTextColor(-328966);
                                    dialogEditUp2.n0.setTextColor(-328966);
                                    dialogEditUp2.p0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogEditUp2.q0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogEditUp2.o0.setProgressDrawable(MainUtil.S(dialogEditUp2.c0, R.drawable.seek_progress_a));
                                    dialogEditUp2.o0.setThumb(MainUtil.S(dialogEditUp2.c0, R.drawable.seek_thumb_a));
                                    dialogEditUp2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogEditUp2.s0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogEditUp2.r0.setTextColor(-328966);
                                    dialogEditUp2.s0.setTextColor(-328966);
                                    dialogEditUp2.p0.setBgPreColor(-12632257);
                                    dialogEditUp2.q0.setBgPreColor(-12632257);
                                    dialogEditUp2.h0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogEditUp2.j0.setTextColor(-328966);
                                    dialogEditUp2.k0.setTextColor(-5126668);
                                    dialogEditUp2.l0.setTextColor(-4079167);
                                } else {
                                    dialogEditUp2.m0.setTextColor(-16777216);
                                    dialogEditUp2.n0.setTextColor(-16777216);
                                    dialogEditUp2.p0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogEditUp2.q0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogEditUp2.o0.setProgressDrawable(MainUtil.S(dialogEditUp2.c0, R.drawable.seek_progress_a));
                                    dialogEditUp2.o0.setThumb(MainUtil.S(dialogEditUp2.c0, R.drawable.seek_thumb_a));
                                    dialogEditUp2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogEditUp2.s0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogEditUp2.r0.setTextColor(-14784824);
                                    dialogEditUp2.s0.setTextColor(-16777216);
                                    dialogEditUp2.p0.setBgPreColor(-2039584);
                                    dialogEditUp2.q0.setBgPreColor(-2039584);
                                    dialogEditUp2.h0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogEditUp2.j0.setTextColor(-16777216);
                                    dialogEditUp2.k0.setTextColor(-12627531);
                                    dialogEditUp2.l0.setTextColor(-10395295);
                                }
                                int i11 = 0;
                                dialogEditUp2.o0.setSplitTrack(false);
                                MyButtonImage myButtonImage3 = dialogEditUp2.g0;
                                if (myButtonImage3 != null) {
                                    myButtonImage3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                    dialogEditUp2.g0.n(MainApp.j1, MainApp.k1);
                                    if (MainApp.K1) {
                                        Drawable S = MainUtil.S(dialogEditUp2.c0, R.drawable.outline_arrow_upward_dark_24);
                                        S.setTint(-1973791);
                                        dialogEditUp2.g0.k(dialogEditUp2.x0, -12632257);
                                        dialogEditUp2.g0.m(-1066044043, MainApp.n1);
                                        dialogEditUp2.g0.setImageDrawable(S);
                                    } else {
                                        dialogEditUp2.g0.k(dialogEditUp2.x0, -2039584);
                                        dialogEditUp2.g0.m(-2139785867, MainApp.n1);
                                        dialogEditUp2.g0.setImageResource(R.drawable.outline_arrow_upward_black_24);
                                    }
                                    MyButtonImage myButtonImage4 = dialogEditUp2.g0;
                                    if (dialogEditUp2.u0 == 0) {
                                        i10 = 8;
                                    } else {
                                        i10 = 0;
                                    }
                                    myButtonImage4.setVisibility(i10);
                                }
                                a.t(new StringBuilder(), dialogEditUp2.v0, "%", dialogEditUp2.n0);
                                dialogEditUp2.o0.setMax(dialogEditUp2.a0);
                                dialogEditUp2.o0.setProgress(dialogEditUp2.v0);
                                dialogEditUp2.o0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogEditUp.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i12, boolean z) {
                                        DialogEditUp.B(DialogEditUp.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        DialogEditUp.B(DialogEditUp.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        DialogEditUp.B(DialogEditUp.this, seekBar2.getProgress());
                                    }
                                });
                                dialogEditUp2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        if (dialogEditUp3.o0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogEditUp3.o0.setProgress(progress);
                                    }
                                });
                                dialogEditUp2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        SeekBar seekBar2 = dialogEditUp3.o0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogEditUp3.o0.getMax()) {
                                            return;
                                        }
                                        dialogEditUp3.o0.setProgress(progress);
                                    }
                                });
                                MyMoveFrame myMoveFrame2 = dialogEditUp2.e0;
                                if (dialogEditUp2.p()) {
                                    i9 = 8;
                                } else {
                                    i9 = 0;
                                }
                                myMoveFrame2.setVisibility(i9);
                                MyRoundImage myRoundImage2 = dialogEditUp2.f0;
                                if (myRoundImage2 != null) {
                                    myRoundImage2.setListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogEditUp.13
                                        @Override // com.mycompany.app.image.ImageSizeListener
                                        public final void a(View view2, int i12, int i13) {
                                            DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                            if (dialogEditUp3.f0 != null) {
                                                int round = Math.round(i12 * dialogEditUp3.C0);
                                                ViewGroup.LayoutParams layoutParams7 = dialogEditUp3.f0.getLayoutParams();
                                                if (layoutParams7 != null && layoutParams7.height != round) {
                                                    layoutParams7.height = round;
                                                    dialogEditUp3.f0.j();
                                                }
                                            }
                                        }
                                    });
                                    dialogEditUp2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUp.14
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                            Drawable S2 = MainUtil.S(dialogEditUp3.c0, R.drawable.dev_cat);
                                            if (S2 != null) {
                                                dialogEditUp3.B0 = S2;
                                                dialogEditUp3.C0 = S2.getIntrinsicHeight() / S2.getIntrinsicWidth();
                                                MainActivity mainActivity2 = dialogEditUp3.b0;
                                                if (mainActivity2 != null) {
                                                    if (dialogEditUp3.A0 == null) {
                                                        dialogEditUp3.A0 = GlideApp.a(mainActivity2);
                                                    }
                                                    Handler handler3 = dialogEditUp3.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUp.14.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogEditUp dialogEditUp4 = DialogEditUp.this;
                                                            Drawable drawable = dialogEditUp4.B0;
                                                            dialogEditUp4.B0 = null;
                                                            GlideRequests glideRequests = dialogEditUp4.A0;
                                                            if (glideRequests == null) {
                                                                return;
                                                            }
                                                            ((RequestBuilder) glideRequests.r(drawable).e(DiskCacheStrategy.f2204a)).E(dialogEditUp4.f0);
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    });
                                }
                                dialogEditUp2.g0.setOnClickListener(new Object());
                                dialogEditUp2.g0.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.7
                                    @Override // android.view.View.OnLongClickListener
                                    public final boolean onLongClick(View view2) {
                                        MyButtonImage myButtonImage5;
                                        int i12;
                                        DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        if (dialogEditUp3.e0 != null && (myButtonImage5 = dialogEditUp3.g0) != null) {
                                            myButtonImage5.setVisibility(8);
                                            MyMoveFrame myMoveFrame3 = dialogEditUp3.e0;
                                            int i13 = dialogEditUp3.u0;
                                            int i14 = dialogEditUp3.w0;
                                            int i15 = dialogEditUp3.v0;
                                            myMoveFrame3.getClass();
                                            int r = PrefEditor.r(i14, i15);
                                            if (MainApp.K1) {
                                                Drawable S2 = MainUtil.S(myMoveFrame3.getContext(), R.drawable.outline_arrow_upward_dark_24);
                                                myMoveFrame3.f = S2;
                                                S2.setTint(-1973791);
                                                i12 = -1066044043;
                                            } else {
                                                myMoveFrame3.f = MainUtil.S(myMoveFrame3.getContext(), R.drawable.outline_arrow_upward_black_24);
                                                i12 = -2139785867;
                                            }
                                            if (myMoveFrame3.f != null) {
                                                myMoveFrame3.g = MainApp.k1;
                                                Paint paint = new Paint();
                                                myMoveFrame3.h = paint;
                                                paint.setAntiAlias(true);
                                                myMoveFrame3.h.setStyle(Paint.Style.FILL);
                                                myMoveFrame3.h.setColor(r);
                                                Paint paint2 = new Paint();
                                                myMoveFrame3.i = paint2;
                                                paint2.setAntiAlias(true);
                                                myMoveFrame3.i.setStyle(Paint.Style.STROKE);
                                                myMoveFrame3.i.setStrokeWidth(MainApp.n1);
                                                myMoveFrame3.i.setColor(i12);
                                                myMoveFrame3.n = myMoveFrame3.getWidth();
                                                myMoveFrame3.o = myMoveFrame3.getHeight();
                                                int i16 = MainApp.g1;
                                                myMoveFrame3.p = i16;
                                                myMoveFrame3.q = i16;
                                                if (i13 == 1) {
                                                    myMoveFrame3.r = MainApp.G1;
                                                } else if (i13 == 3) {
                                                    myMoveFrame3.r = (myMoveFrame3.n - i16) - MainApp.G1;
                                                } else {
                                                    myMoveFrame3.r = Math.round((myMoveFrame3.n - i16) / 2.0f);
                                                }
                                                int round = Math.round((myMoveFrame3.o - myMoveFrame3.q) / 2.0f);
                                                myMoveFrame3.s = round;
                                                int i17 = myMoveFrame3.r;
                                                myMoveFrame3.l = i17 - myMoveFrame3.j;
                                                myMoveFrame3.m = round - myMoveFrame3.k;
                                                myMoveFrame3.c(i17, round);
                                                MainUtil.l7(myMoveFrame3);
                                                dialogEditUp3.y(false);
                                            }
                                        }
                                        return true;
                                    }
                                });
                                dialogEditUp2.e0.setMoveListener(new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogEditUp.8
                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                    public final void a(int i12) {
                                        DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        if (dialogEditUp3.g0 == null) {
                                            return;
                                        }
                                        dialogEditUp3.E(i12, true);
                                        dialogEditUp3.g0.setVisibility(0);
                                        dialogEditUp3.y(true);
                                    }
                                });
                                dialogEditUp2.j0.setText(R.string.location);
                                dialogEditUp2.l0.setText(R.string.long_move_guide);
                                dialogEditUp2.E(dialogEditUp2.u0, false);
                                dialogEditUp2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z;
                                        final DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        View view3 = dialogEditUp3.i0;
                                        if (dialogEditUp3.b0 != null && (myPopupMenu = dialogEditUp3.z0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogEditUp3.Y = null;
                                                myPopupMenu.a();
                                                dialogEditUp3.z0 = null;
                                            }
                                            if (view3 == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            final int length = MainConst.O.length;
                                            for (int i12 = 0; i12 < length; i12++) {
                                                int i13 = MainConst.O[i12];
                                                int i14 = MainConst.N[i13];
                                                if (dialogEditUp3.u0 == i13) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i12, i14, z));
                                            }
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogEditUp3.b0, dialogEditUp3.d0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogEditUp.16
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i15 = DialogEditUp.D0;
                                                    DialogEditUp dialogEditUp4 = DialogEditUp.this;
                                                    MyPopupMenu myPopupMenu3 = dialogEditUp4.z0;
                                                    if (myPopupMenu3 != null) {
                                                        dialogEditUp4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogEditUp4.z0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i15) {
                                                    DialogEditUp dialogEditUp4 = DialogEditUp.this;
                                                    if (dialogEditUp4.k0 == null) {
                                                        return true;
                                                    }
                                                    dialogEditUp4.E(MainConst.O[i15 % length], true);
                                                    return true;
                                                }
                                            });
                                            dialogEditUp3.z0 = myPopupMenu2;
                                            dialogEditUp3.Y = myPopupMenu2;
                                        }
                                    }
                                });
                                dialogEditUp2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i12 = DialogEditUp.D0;
                                        DialogEditUp.this.D(true);
                                    }
                                });
                                dialogEditUp2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditUp.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        final DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        if (dialogEditUp3.b0 == null || dialogEditUp3.t0 != null) {
                                            return;
                                        }
                                        dialogEditUp3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogEditUp3.b0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogEditUp.17
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i12;
                                                boolean z;
                                                int i13 = DialogEditUp.D0;
                                                DialogEditUp dialogEditUp4 = DialogEditUp.this;
                                                dialogEditUp4.C();
                                                if (dialogEditUp4.n0 == null) {
                                                    return;
                                                }
                                                if (MainApp.K1) {
                                                    i12 = -16777216;
                                                } else {
                                                    i12 = -1;
                                                }
                                                if (dialogEditUp4.u0 != 2) {
                                                    dialogEditUp4.u0 = 2;
                                                    dialogEditUp4.E(2, false);
                                                }
                                                boolean z2 = true;
                                                if (dialogEditUp4.v0 != 25) {
                                                    dialogEditUp4.v0 = 25;
                                                    a.t(new StringBuilder(), dialogEditUp4.v0, "%", dialogEditUp4.n0);
                                                    dialogEditUp4.o0.setProgress(dialogEditUp4.v0);
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                if (dialogEditUp4.w0 == i12) {
                                                    z2 = z;
                                                } else {
                                                    dialogEditUp4.w0 = i12;
                                                }
                                                if (z2) {
                                                    int r = PrefEditor.r(dialogEditUp4.w0, dialogEditUp4.v0);
                                                    dialogEditUp4.x0 = r;
                                                    MyButtonImage myButtonImage5 = dialogEditUp4.g0;
                                                    if (myButtonImage5 != null) {
                                                        myButtonImage5.setBgNorColor(r);
                                                    }
                                                }
                                                dialogEditUp4.D(false);
                                            }
                                        });
                                        dialogEditUp3.t0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditUp.18
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i12 = DialogEditUp.D0;
                                                DialogEditUp.this.C();
                                            }
                                        });
                                    }
                                });
                                int r = PrefEditor.r(dialogEditUp2.w0, dialogEditUp2.v0);
                                dialogEditUp2.x0 = r;
                                MyButtonImage myButtonImage5 = dialogEditUp2.g0;
                                if (myButtonImage5 != null) {
                                    myButtonImage5.setBgNorColor(r);
                                }
                                if (dialogEditUp2.p() && dialogEditUp2.e0 != null) {
                                    boolean q2 = dialogEditUp2.q();
                                    MyMoveFrame myMoveFrame3 = dialogEditUp2.e0;
                                    if (q2) {
                                        i11 = 8;
                                    }
                                    myMoveFrame3.setVisibility(i11);
                                }
                                dialogEditUp2.g(dialogEditUp2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditUp.12
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogEditUp dialogEditUp3 = DialogEditUp.this;
                                        if (dialogEditUp3.d0 == null) {
                                            return;
                                        }
                                        dialogEditUp3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogEditUp dialogEditUp, final int i) {
        if (dialogEditUp.n0 == null || dialogEditUp.v0 == i || dialogEditUp.y0) {
            return;
        }
        dialogEditUp.y0 = true;
        dialogEditUp.v0 = i;
        int r = PrefEditor.r(dialogEditUp.w0, i);
        dialogEditUp.x0 = r;
        MyButtonImage myButtonImage = dialogEditUp.g0;
        if (myButtonImage != null) {
            myButtonImage.setBgNorColor(r);
        }
        a.t(new StringBuilder(), dialogEditUp.v0, "%", dialogEditUp.n0);
        dialogEditUp.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditUp.15
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditUp dialogEditUp2 = DialogEditUp.this;
                dialogEditUp2.y0 = false;
                DialogEditUp.B(dialogEditUp2, i);
            }
        });
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.t0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.t0 = null;
        }
    }

    public final void D(boolean z) {
        int i = PrefZone.y;
        int i2 = this.u0;
        if (i != i2) {
            PrefZone.y = i2;
            if (z) {
                PrefSet.f(this.c0, 15, i2, "mShowUpPos");
            } else {
                PrefSet.i(this.c0, 15, "mShowUpPos");
            }
        }
        int i3 = PrefEditor.J;
        int i4 = this.v0;
        if (i3 != i4) {
            PrefEditor.J = i4;
            if (z) {
                PrefSet.f(this.c0, 1, i4, "mUpAlpha");
            } else {
                PrefSet.i(this.c0, 1, "mUpAlpha");
            }
        }
        if (z) {
            dismiss();
        }
    }

    public final void E(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        AppCompatTextView appCompatTextView = this.k0;
        if (appCompatTextView != null) {
            if (!z || this.u0 != i) {
                this.u0 = i;
                appCompatTextView.setText(MainConst.N[i]);
                int i5 = this.u0;
                if (i5 == 1) {
                    i4 = MainApp.G1;
                    i2 = 19;
                    i3 = 0;
                } else if (i5 == 2) {
                    i2 = 17;
                    i4 = 0;
                    i3 = 0;
                } else if (i5 == 3) {
                    i2 = 21;
                    i3 = MainApp.G1;
                    i4 = 0;
                } else {
                    this.g0.setVisibility(8);
                    return;
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.g0.getLayoutParams();
                if (layoutParams == null) {
                    return;
                }
                layoutParams.gravity = i2;
                layoutParams.leftMargin = i4;
                layoutParams.rightMargin = i3;
                this.g0.requestLayout();
                this.g0.setVisibility(0);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        C();
        MyPopupMenu myPopupMenu = this.z0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.z0 = null;
        }
        GlideRequests glideRequests = this.A0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.f0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.A0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyMoveFrame myMoveFrame = this.e0;
        if (myMoveFrame != null) {
            ValueAnimator valueAnimator = myMoveFrame.A;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                myMoveFrame.A = null;
            }
            myMoveFrame.f18859c = null;
            myMoveFrame.f = null;
            myMoveFrame.h = null;
            myMoveFrame.i = null;
            this.e0 = null;
        }
        MyRoundImage myRoundImage2 = this.f0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.f0 = null;
        }
        MyButtonImage myButtonImage = this.g0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.g0 = null;
        }
        MyLineRelative myLineRelative = this.h0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.h0 = null;
        }
        MyButtonImage myButtonImage2 = this.p0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.p0 = null;
        }
        MyButtonImage myButtonImage3 = this.q0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.q0 = null;
        }
        MyLineText myLineText = this.s0;
        if (myLineText != null) {
            myLineText.u();
            this.s0 = null;
        }
        this.b0 = null;
        this.c0 = null;
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
