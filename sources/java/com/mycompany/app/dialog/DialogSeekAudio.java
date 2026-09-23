package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;

/* loaded from: classes3.dex */
public class DialogSeekAudio extends MyDialogBottom {
    public int a0;
    public Context b0;
    public DialogSeekListener c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public AppCompatTextView f0;
    public SeekBar g0;
    public MyButtonImage h0;
    public MyButtonImage i0;
    public int j0;
    public int k0;
    public AudioManager l0;
    public EventReceiver m0;

    /* loaded from: classes3.dex */
    public interface DialogSeekListener {
        void a(int i);
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            DialogSeekAudio dialogSeekAudio = DialogSeekAudio.this;
            AudioManager audioManager = dialogSeekAudio.l0;
            if (audioManager != null && dialogSeekAudio.g0 != null) {
                int streamVolume = audioManager.getStreamVolume(3);
                if (streamVolume < 0) {
                    streamVolume = 0;
                } else {
                    int i = dialogSeekAudio.a0;
                    if (streamVolume > i) {
                        streamVolume = i;
                    }
                }
                dialogSeekAudio.g0.setProgress(streamVolume);
            }
        }
    }

    public DialogSeekAudio(Activity activity, DialogSeekListener dialogSeekListener) {
        super(activity);
        this.b0 = getContext();
        this.c0 = dialogSeekListener;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekAudio.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekAudio dialogSeekAudio = DialogSeekAudio.this;
                Context context = dialogSeekAudio.b0;
                if (context != null) {
                    AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                    dialogSeekAudio.l0 = audioManager;
                    if (audioManager != null) {
                        dialogSeekAudio.a0 = audioManager.getStreamMaxVolume(3);
                        int streamVolume = audioManager.getStreamVolume(3);
                        dialogSeekAudio.k0 = streamVolume;
                        dialogSeekAudio.j0 = streamVolume;
                    }
                    Handler handler = dialogSeekAudio.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekAudio.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekAudio dialogSeekAudio2 = DialogSeekAudio.this;
                            Context context2 = dialogSeekAudio2.b0;
                            if (context2 != null) {
                                int i = R.id.item_seek_text;
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
                                appCompatTextView.setId(i);
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
                                layoutParams3.addRule(3, i);
                                relativeLayout.addView(frameLayout, layoutParams3);
                                MyButtonImage myButtonImage = new MyButtonImage(context2);
                                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                                myButtonImage.setScaleType(scaleType);
                                int i2 = MainApp.g1;
                                frameLayout.addView(myButtonImage, i2, i2);
                                SeekBar seekBar = new SeekBar(context2);
                                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                                layoutParams4.gravity = 8388627;
                                layoutParams4.setMarginStart(MainApp.g1);
                                layoutParams4.setMarginEnd(MainApp.g1);
                                frameLayout.addView(seekBar, layoutParams4);
                                MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context2, scaleType);
                                int i3 = MainApp.g1;
                                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i3, i3);
                                layoutParams5.gravity = 8388613;
                                frameLayout.addView(p, layoutParams5);
                                dialogSeekAudio2.d0 = q;
                                dialogSeekAudio2.e0 = j;
                                dialogSeekAudio2.f0 = appCompatTextView;
                                dialogSeekAudio2.g0 = seekBar;
                                dialogSeekAudio2.h0 = myButtonImage;
                                dialogSeekAudio2.i0 = p;
                                Handler handler2 = dialogSeekAudio2.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekAudio.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogSeekAudio dialogSeekAudio3 = DialogSeekAudio.this;
                                        MyDialogLinear myDialogLinear = dialogSeekAudio3.d0;
                                        if (myDialogLinear != null && dialogSeekAudio3.b0 != null) {
                                            if (MainApp.K1) {
                                                myDialogLinear.c(-5197648, MainApp.n1);
                                                dialogSeekAudio3.e0.setTextColor(-328966);
                                                dialogSeekAudio3.f0.setTextColor(-328966);
                                                dialogSeekAudio3.h0.setImageResource(R.drawable.outline_remove_dark_24);
                                                dialogSeekAudio3.i0.setImageResource(R.drawable.outline_add_dark_24);
                                                dialogSeekAudio3.g0.setProgressDrawable(MainUtil.S(dialogSeekAudio3.b0, R.drawable.seek_progress_a));
                                                dialogSeekAudio3.g0.setThumb(MainUtil.S(dialogSeekAudio3.b0, R.drawable.seek_thumb_a));
                                                dialogSeekAudio3.h0.setBgPreColor(-12632257);
                                                dialogSeekAudio3.i0.setBgPreColor(-12632257);
                                            } else {
                                                myDialogLinear.c(-16777216, MainApp.n1);
                                                dialogSeekAudio3.e0.setTextColor(-16777216);
                                                dialogSeekAudio3.f0.setTextColor(-16777216);
                                                dialogSeekAudio3.h0.setImageResource(R.drawable.outline_remove_black_24);
                                                dialogSeekAudio3.i0.setImageResource(R.drawable.outline_add_black_24);
                                                dialogSeekAudio3.g0.setProgressDrawable(MainUtil.S(dialogSeekAudio3.b0, R.drawable.seek_progress_a));
                                                dialogSeekAudio3.g0.setThumb(MainUtil.S(dialogSeekAudio3.b0, R.drawable.seek_thumb_a));
                                                dialogSeekAudio3.h0.setBgPreColor(-2039584);
                                                dialogSeekAudio3.i0.setBgPreColor(-2039584);
                                            }
                                            dialogSeekAudio3.e0.setText(R.string.volume);
                                            com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogSeekAudio3.j0, dialogSeekAudio3.f0);
                                            dialogSeekAudio3.g0.setSplitTrack(false);
                                            dialogSeekAudio3.g0.setMax(dialogSeekAudio3.a0);
                                            dialogSeekAudio3.g0.setProgress(dialogSeekAudio3.j0);
                                            dialogSeekAudio3.g0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekAudio.3
                                                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                public final void onProgressChanged(SeekBar seekBar2, int i4, boolean z) {
                                                    DialogSeekAudio.B(DialogSeekAudio.this, seekBar2.getProgress());
                                                }

                                                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                public final void onStartTrackingTouch(SeekBar seekBar2) {
                                                    DialogSeekAudio.B(DialogSeekAudio.this, seekBar2.getProgress());
                                                }

                                                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                public final void onStopTrackingTouch(SeekBar seekBar2) {
                                                    DialogSeekAudio.B(DialogSeekAudio.this, seekBar2.getProgress());
                                                }
                                            });
                                            dialogSeekAudio3.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekAudio.4
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int progress;
                                                    DialogSeekAudio dialogSeekAudio4 = DialogSeekAudio.this;
                                                    if (dialogSeekAudio4.g0 == null || r0.getProgress() - 1 < 0) {
                                                        return;
                                                    }
                                                    dialogSeekAudio4.g0.setProgress(progress);
                                                }
                                            });
                                            dialogSeekAudio3.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekAudio.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int progress;
                                                    DialogSeekAudio dialogSeekAudio4 = DialogSeekAudio.this;
                                                    SeekBar seekBar2 = dialogSeekAudio4.g0;
                                                    if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogSeekAudio4.g0.getMax()) {
                                                        return;
                                                    }
                                                    dialogSeekAudio4.g0.setProgress(progress);
                                                }
                                            });
                                            if (dialogSeekAudio3.b0 != null && dialogSeekAudio3.m0 == null) {
                                                dialogSeekAudio3.m0 = new EventReceiver();
                                                IntentFilter intentFilter = new IntentFilter();
                                                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                                                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                                                ContextCompat.f(dialogSeekAudio3.b0, dialogSeekAudio3.m0, intentFilter, null, 4);
                                            }
                                            dialogSeekAudio3.g(dialogSeekAudio3.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekAudio.6
                                                @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                public final void a(View view) {
                                                    DialogSeekAudio dialogSeekAudio4 = DialogSeekAudio.this;
                                                    if (dialogSeekAudio4.d0 == null) {
                                                        return;
                                                    }
                                                    dialogSeekAudio4.getWindow().clearFlags(2);
                                                    dialogSeekAudio4.show();
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

    public static void B(DialogSeekAudio dialogSeekAudio, int i) {
        AppCompatTextView appCompatTextView = dialogSeekAudio.f0;
        if (appCompatTextView != null) {
            if (i < 0) {
                i = 0;
            } else {
                int i2 = dialogSeekAudio.a0;
                if (i > i2) {
                    i = i2;
                }
            }
            if (dialogSeekAudio.j0 != i) {
                dialogSeekAudio.j0 = i;
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogSeekAudio.j0, appCompatTextView);
                AudioManager audioManager = dialogSeekAudio.l0;
                if (audioManager != null) {
                    audioManager.setStreamVolume(3, dialogSeekAudio.j0, 0);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        EventReceiver eventReceiver;
        DialogSeekListener dialogSeekListener;
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        int i = this.k0;
        int i2 = this.j0;
        if (i != i2 && (dialogSeekListener = this.c0) != null) {
            dialogSeekListener.a(i2);
        }
        Context context = this.b0;
        if (context != null && (eventReceiver = this.m0) != null) {
            context.unregisterReceiver(eventReceiver);
            this.m0 = null;
        }
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
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.l0 = null;
        super.dismiss();
    }
}
