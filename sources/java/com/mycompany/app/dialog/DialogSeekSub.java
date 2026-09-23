package com.mycompany.app.dialog;

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
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogSeekSub extends MyDialogBottom {
    public static final /* synthetic */ int p0 = 0;
    public VideoActivity a0;
    public Context b0;
    public DialogSeekAudio.DialogSeekListener c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public AppCompatTextView f0;
    public SeekBar g0;
    public MyButtonImage h0;
    public MyButtonImage i0;
    public AppCompatTextView j0;
    public MyLineText k0;
    public DialogSetMsg l0;
    public final int m0;
    public int n0;
    public String o0;

    public DialogSeekSub(VideoActivity videoActivity, int i, int i2, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(videoActivity);
        this.a0 = videoActivity;
        Context context = getContext();
        this.b0 = context;
        this.c0 = dialogSeekListener;
        this.m0 = i;
        int i3 = (i2 / 1000) + 100;
        if (i3 < 0) {
            i3 = 0;
        } else if (i3 > 200) {
            i3 = 200;
        }
        this.n0 = i3;
        this.o0 = context.getString(R.string.time_s);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekSub.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSeekSub dialogSeekSub = DialogSeekSub.this;
                Context context2 = dialogSeekSub.b0;
                if (context2 != null) {
                    int i4 = R.id.item_seek_text;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context2, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context2);
                    q.addView(relativeLayout, -1, -2);
                    int G = (int) MainUtil.G(context2, 12.0f);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context2, null, 1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.topMargin = G;
                    layoutParams.setMarginStart(MainApp.E1);
                    relativeLayout.addView(j, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
                    appCompatTextView.setId(i4);
                    appCompatTextView.setGravity(1);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setMinWidth(MainApp.E1);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(21);
                    layoutParams2.topMargin = G;
                    layoutParams2.setMarginEnd(MainApp.E1);
                    relativeLayout.addView(appCompatTextView, layoutParams2);
                    FrameLayout frameLayout = new FrameLayout(context2);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams3.addRule(3, i4);
                    relativeLayout.addView(frameLayout, layoutParams3);
                    MyButtonImage myButtonImage = new MyButtonImage(context2);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i5 = MainApp.g1;
                    frameLayout.addView(myButtonImage, i5, i5);
                    SeekBar seekBar = new SeekBar(context2);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    layoutParams4.setMarginStart(MainApp.g1);
                    layoutParams4.setMarginEnd(MainApp.g1);
                    frameLayout.addView(seekBar, layoutParams4);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context2, scaleType);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams5.gravity = 8388613;
                    frameLayout.addView(p, layoutParams5);
                    MyLineLinear myLineLinear = new MyLineLinear(context2);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context2);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context2, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context2, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSeekSub.d0 = q;
                    dialogSeekSub.e0 = j;
                    dialogSeekSub.f0 = appCompatTextView;
                    dialogSeekSub.g0 = seekBar;
                    dialogSeekSub.h0 = myButtonImage;
                    dialogSeekSub.i0 = p;
                    dialogSeekSub.j0 = l;
                    dialogSeekSub.k0 = s;
                    Handler handler2 = dialogSeekSub.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekSub.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekSub dialogSeekSub2 = DialogSeekSub.this;
                            if (dialogSeekSub2.d0 != null && dialogSeekSub2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSeekSub2.e0.setTextColor(-328966);
                                    dialogSeekSub2.f0.setTextColor(-328966);
                                    dialogSeekSub2.h0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSeekSub2.i0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSeekSub2.g0.setProgressDrawable(MainUtil.S(dialogSeekSub2.b0, R.drawable.seek_progress_a));
                                    dialogSeekSub2.g0.setThumb(MainUtil.S(dialogSeekSub2.b0, R.drawable.seek_thumb_a));
                                    dialogSeekSub2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekSub2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekSub2.j0.setTextColor(-328966);
                                    dialogSeekSub2.k0.setTextColor(-328966);
                                    dialogSeekSub2.h0.setBgPreColor(-12632257);
                                    dialogSeekSub2.i0.setBgPreColor(-12632257);
                                } else {
                                    dialogSeekSub2.e0.setTextColor(-16777216);
                                    dialogSeekSub2.f0.setTextColor(-16777216);
                                    dialogSeekSub2.h0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSeekSub2.i0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSeekSub2.g0.setProgressDrawable(MainUtil.S(dialogSeekSub2.b0, R.drawable.seek_progress_a));
                                    dialogSeekSub2.g0.setThumb(MainUtil.S(dialogSeekSub2.b0, R.drawable.seek_thumb_a));
                                    dialogSeekSub2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekSub2.k0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekSub2.j0.setTextColor(-14784824);
                                    dialogSeekSub2.k0.setTextColor(-16777216);
                                    dialogSeekSub2.h0.setBgPreColor(-2039584);
                                    dialogSeekSub2.i0.setBgPreColor(-2039584);
                                }
                                int i7 = dialogSeekSub2.m0;
                                if (i7 != 0) {
                                    dialogSeekSub2.e0.setText(i7);
                                } else {
                                    dialogSeekSub2.e0.setText(R.string.sub_sync);
                                }
                                dialogSeekSub2.D();
                                dialogSeekSub2.g0.setSplitTrack(false);
                                dialogSeekSub2.g0.setMax(HttpStatusCodes.STATUS_CODE_OK);
                                dialogSeekSub2.g0.setProgress(dialogSeekSub2.n0);
                                dialogSeekSub2.g0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i8, boolean z) {
                                        DialogSeekSub.B(DialogSeekSub.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        DialogSeekSub.B(DialogSeekSub.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        DialogSeekSub.B(DialogSeekSub.this, seekBar2.getProgress());
                                    }
                                });
                                dialogSeekSub2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekSub dialogSeekSub3 = DialogSeekSub.this;
                                        if (dialogSeekSub3.g0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSeekSub3.g0.setProgress(progress);
                                    }
                                });
                                dialogSeekSub2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSeekSub dialogSeekSub3 = DialogSeekSub.this;
                                        SeekBar seekBar2 = dialogSeekSub3.g0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogSeekSub3.g0.getMax()) {
                                            return;
                                        }
                                        dialogSeekSub3.g0.setProgress(progress);
                                    }
                                });
                                dialogSeekSub2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i8 = DialogSeekSub.p0;
                                        DialogSeekSub dialogSeekSub3 = DialogSeekSub.this;
                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSeekSub3.c0;
                                        if (dialogSeekListener2 != null) {
                                            dialogSeekListener2.a((dialogSeekSub3.n0 - 100) * 1000);
                                        }
                                        dialogSeekSub3.dismiss();
                                    }
                                });
                                dialogSeekSub2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSeekSub dialogSeekSub3 = DialogSeekSub.this;
                                        if (dialogSeekSub3.a0 == null || dialogSeekSub3.l0 != null) {
                                            return;
                                        }
                                        dialogSeekSub3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekSub3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.9
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i8 = DialogSeekSub.p0;
                                                DialogSeekSub dialogSeekSub4 = DialogSeekSub.this;
                                                dialogSeekSub4.C();
                                                if (dialogSeekSub4.g0 != null) {
                                                    if (dialogSeekSub4.n0 != 100) {
                                                        dialogSeekSub4.n0 = 100;
                                                        dialogSeekSub4.D();
                                                        dialogSeekSub4.g0.setProgress(dialogSeekSub4.n0);
                                                    }
                                                    DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSeekSub4.c0;
                                                    if (dialogSeekListener2 != null) {
                                                        dialogSeekListener2.a((dialogSeekSub4.n0 - 100) * 1000);
                                                    }
                                                }
                                            }
                                        });
                                        dialogSeekSub3.l0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.10
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i8 = DialogSeekSub.p0;
                                                DialogSeekSub.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSeekSub2.g(dialogSeekSub2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekSub.8
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSeekSub dialogSeekSub3 = DialogSeekSub.this;
                                        if (dialogSeekSub3.d0 == null) {
                                            return;
                                        }
                                        dialogSeekSub3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSeekSub dialogSeekSub, int i) {
        if (dialogSeekSub.f0 != null) {
            if (i < 0) {
                i = 0;
            } else if (i > 200) {
                i = 200;
            }
            if (dialogSeekSub.n0 == i) {
                return;
            }
            dialogSeekSub.n0 = i;
            dialogSeekSub.D();
        }
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.l0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.l0 = null;
        }
    }

    public final void D() {
        String str;
        if (this.f0 == null) {
            return;
        }
        int i = this.n0 - 100;
        if (i > 0) {
            str = "+";
        } else if (i < 0) {
            str = "-";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        this.f0.setText(str + i + this.o0);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        C();
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyButtonImage myButtonImage = this.h0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h0 = null;
        }
        MyButtonImage myButtonImage2 = this.i0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.i0 = null;
        }
        MyLineText myLineText = this.k0;
        if (myLineText != null) {
            myLineText.u();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.o0 = null;
        this.j0 = null;
        super.dismiss();
    }
}
