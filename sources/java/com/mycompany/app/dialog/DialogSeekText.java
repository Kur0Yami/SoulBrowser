package com.mycompany.app.dialog;

import android.app.Activity;
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
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogSeekText extends MyDialogBottom {
    public static final /* synthetic */ int t0 = 0;
    public final int a0;
    public final int b0;
    public Activity c0;
    public Context d0;
    public DialogSeekAudio.DialogSeekListener e0;
    public MyDialogLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public SeekBar i0;
    public MyButtonImage j0;
    public MyButtonImage k0;
    public AppCompatTextView l0;
    public MyLineText m0;
    public DialogSetMsg n0;
    public int o0;
    public int p0;
    public boolean q0;
    public boolean r0;
    public final Runnable s0;

    public DialogSeekText(Activity activity, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(activity);
        this.s0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekText.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekText dialogSeekText = DialogSeekText.this;
                SeekBar seekBar = dialogSeekText.i0;
                if (seekBar != null) {
                    dialogSeekText.r0 = false;
                    int progress = seekBar.getProgress() + dialogSeekText.a0;
                    if (dialogSeekText.p0 != progress) {
                        DialogSeekText.B(dialogSeekText, progress);
                    }
                }
            }
        };
        this.c0 = activity;
        this.d0 = getContext();
        this.e0 = dialogSeekListener;
        int i = PrefRead.m;
        this.p0 = i;
        this.o0 = i;
        this.a0 = 50;
        this.b0 = 500;
        if (i < 50) {
            this.p0 = 50;
        } else if (i > 500) {
            this.p0 = 500;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekText.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSeekText dialogSeekText = DialogSeekText.this;
                Context context = dialogSeekText.d0;
                if (context != null) {
                    int i2 = R.id.item_seek_text;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    q.addView(relativeLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 12.0f);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.topMargin = G;
                    layoutParams.setMarginStart(MainApp.E1);
                    relativeLayout.addView(j, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i2);
                    appCompatTextView.setGravity(1);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setMinWidth(MainApp.E1);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(21);
                    layoutParams2.topMargin = G;
                    layoutParams2.setMarginEnd(MainApp.E1);
                    relativeLayout.addView(appCompatTextView, layoutParams2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams3.addRule(3, i2);
                    relativeLayout.addView(frameLayout, layoutParams3);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i3 = MainApp.g1;
                    frameLayout.addView(myButtonImage, i3, i3);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    layoutParams4.setMarginStart(MainApp.g1);
                    layoutParams4.setMarginEnd(MainApp.g1);
                    frameLayout.addView(seekBar, layoutParams4);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams5.gravity = 8388613;
                    frameLayout.addView(p, layoutParams5);
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
                    dialogSeekText.f0 = q;
                    dialogSeekText.g0 = j;
                    dialogSeekText.h0 = appCompatTextView;
                    dialogSeekText.i0 = seekBar;
                    dialogSeekText.j0 = myButtonImage;
                    dialogSeekText.k0 = p;
                    dialogSeekText.l0 = l;
                    dialogSeekText.m0 = s;
                    Handler handler2 = dialogSeekText.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekText.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekText dialogSeekText2 = DialogSeekText.this;
                            int i5 = dialogSeekText2.a0;
                            MyDialogLinear myDialogLinear = dialogSeekText2.f0;
                            if (myDialogLinear != null && dialogSeekText2.d0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.c(-5197648, MainApp.n1);
                                    dialogSeekText2.g0.setTextColor(-328966);
                                    dialogSeekText2.h0.setTextColor(-328966);
                                    dialogSeekText2.j0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSeekText2.k0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSeekText2.i0.setProgressDrawable(MainUtil.S(dialogSeekText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekText2.i0.setThumb(MainUtil.S(dialogSeekText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekText2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekText2.m0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekText2.l0.setTextColor(-328966);
                                    dialogSeekText2.m0.setTextColor(-328966);
                                    dialogSeekText2.j0.setBgPreColor(-12632257);
                                    dialogSeekText2.k0.setBgPreColor(-12632257);
                                } else {
                                    myDialogLinear.c(-16777216, MainApp.n1);
                                    dialogSeekText2.g0.setTextColor(-16777216);
                                    dialogSeekText2.h0.setTextColor(-16777216);
                                    dialogSeekText2.j0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSeekText2.k0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSeekText2.i0.setProgressDrawable(MainUtil.S(dialogSeekText2.d0, R.drawable.seek_progress_a));
                                    dialogSeekText2.i0.setThumb(MainUtil.S(dialogSeekText2.d0, R.drawable.seek_thumb_a));
                                    dialogSeekText2.l0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekText2.m0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekText2.l0.setTextColor(-14784824);
                                    dialogSeekText2.m0.setTextColor(-16777216);
                                    dialogSeekText2.j0.setBgPreColor(-2039584);
                                    dialogSeekText2.k0.setBgPreColor(-2039584);
                                }
                                dialogSeekText2.g0.setText(R.string.text_size);
                                a.t(new StringBuilder(), dialogSeekText2.p0, "%", dialogSeekText2.h0);
                                dialogSeekText2.i0.setSplitTrack(false);
                                dialogSeekText2.i0.setMax(dialogSeekText2.b0 - i5);
                                dialogSeekText2.i0.setProgress(dialogSeekText2.p0 - i5);
                                dialogSeekText2.i0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekText.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i6, boolean z) {
                                        int progress = seekBar2.getProgress();
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        DialogSeekText.B(dialogSeekText3, progress + dialogSeekText3.a0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        int progress = seekBar2.getProgress();
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        DialogSeekText.B(dialogSeekText3, progress + dialogSeekText3.a0);
                                        dialogSeekText3.q0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        int progress = seekBar2.getProgress();
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        DialogSeekText.B(dialogSeekText3, progress + dialogSeekText3.a0);
                                        dialogSeekText3.q0 = false;
                                    }
                                });
                                dialogSeekText2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekText.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        if (dialogSeekText3.i0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSeekText3.i0.setProgress(progress);
                                    }
                                });
                                dialogSeekText2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekText.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        SeekBar seekBar2 = dialogSeekText3.i0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogSeekText3.i0.getMax()) {
                                            return;
                                        }
                                        dialogSeekText3.i0.setProgress(progress);
                                    }
                                });
                                dialogSeekText2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekText.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i6 = DialogSeekText.t0;
                                        DialogSeekText.this.D(true);
                                    }
                                });
                                dialogSeekText2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekText.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        if (dialogSeekText3.c0 == null || dialogSeekText3.n0 != null) {
                                            return;
                                        }
                                        dialogSeekText3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekText3.c0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekText.10
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i6 = DialogSeekText.t0;
                                                DialogSeekText dialogSeekText4 = DialogSeekText.this;
                                                dialogSeekText4.C();
                                                AppCompatTextView appCompatTextView2 = dialogSeekText4.h0;
                                                if (appCompatTextView2 == null) {
                                                    return;
                                                }
                                                if (dialogSeekText4.p0 != 100) {
                                                    dialogSeekText4.p0 = 100;
                                                    a.t(new StringBuilder(), dialogSeekText4.p0, "%", appCompatTextView2);
                                                    dialogSeekText4.i0.setProgress(dialogSeekText4.p0 - dialogSeekText4.a0);
                                                    DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSeekText4.e0;
                                                    if (dialogSeekListener2 != null) {
                                                        dialogSeekListener2.a(dialogSeekText4.p0);
                                                    }
                                                }
                                                dialogSeekText4.D(false);
                                            }
                                        });
                                        dialogSeekText3.n0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekText.11
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i6 = DialogSeekText.t0;
                                                DialogSeekText.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSeekText2.g(dialogSeekText2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekText.8
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSeekText dialogSeekText3 = DialogSeekText.this;
                                        if (dialogSeekText3.f0 == null) {
                                            return;
                                        }
                                        dialogSeekText3.getWindow().clearFlags(2);
                                        dialogSeekText3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSeekText dialogSeekText, int i) {
        Runnable runnable = dialogSeekText.s0;
        AppCompatTextView appCompatTextView = dialogSeekText.h0;
        if (appCompatTextView != null) {
            int i2 = dialogSeekText.a0;
            if (i < i2 || i > (i2 = dialogSeekText.b0)) {
                i = i2;
            }
            if (!dialogSeekText.r0 && dialogSeekText.p0 != i) {
                dialogSeekText.r0 = true;
                dialogSeekText.p0 = i;
                a.t(new StringBuilder(), dialogSeekText.p0, "%", appCompatTextView);
                DialogSeekAudio.DialogSeekListener dialogSeekListener = dialogSeekText.e0;
                if (dialogSeekListener != null) {
                    dialogSeekListener.a(dialogSeekText.p0);
                }
                if (dialogSeekText.q0) {
                    dialogSeekText.q0 = false;
                    dialogSeekText.r0 = false;
                } else {
                    dialogSeekText.h0.removeCallbacks(runnable);
                    dialogSeekText.h0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.n0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.n0 = null;
        }
    }

    public final void D(boolean z) {
        int i = PrefRead.m;
        int i2 = this.p0;
        if (i != i2) {
            PrefRead.m = i2;
            if (z) {
                PrefSet.f(this.d0, 8, i2, "mTextSize");
            } else {
                PrefSet.i(this.d0, 8, "mTextSize");
            }
        }
        this.o0 = this.p0;
        if (z) {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.d0 == null) {
            return;
        }
        int i = this.p0;
        int i2 = this.o0;
        if (i != i2) {
            this.p0 = i2;
            DialogSeekAudio.DialogSeekListener dialogSeekListener = this.e0;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(i2);
            }
        }
        C();
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j0 = null;
        }
        MyButtonImage myButtonImage2 = this.k0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.k0 = null;
        }
        MyLineText myLineText = this.m0;
        if (myLineText != null) {
            myLineText.u();
            this.m0 = null;
        }
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.l0 = null;
        super.dismiss();
    }
}
