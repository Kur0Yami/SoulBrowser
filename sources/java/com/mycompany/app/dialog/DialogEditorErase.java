package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCircleView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogEditorErase extends MyDialogBottom {
    public Context a0;
    public DialogEditorText.EditorSetListener b0;
    public MyDialogLinear c0;
    public MyLineFrame d0;
    public MyCircleView e0;
    public AppCompatTextView f0;
    public AppCompatTextView g0;
    public SeekBar h0;
    public MyButtonImage i0;
    public MyButtonImage j0;
    public MyLineText k0;
    public int l0;
    public boolean m0;

    public DialogEditorErase(Activity activity, DialogEditorText.EditorSetListener editorSetListener) {
        super(activity);
        this.w = 0;
        this.a0 = getContext();
        this.b0 = editorSetListener;
        int i = PrefRead.T;
        if (i < 1 || i > 40) {
            PrefRead.T = 10;
        }
        this.l0 = PrefRead.T;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorErase.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogEditorErase dialogEditorErase = DialogEditorErase.this;
                Context context = dialogEditorErase.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, G);
                    MyCircleView myCircleView = new MyCircleView(context);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
                    layoutParams.gravity = 1;
                    myLineFrame.addView(myCircleView, layoutParams);
                    int G2 = (int) MainUtil.G(context, 12.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setPadding(0, G2, 0, 0);
                    q.addView(frameLayout, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams2.setMarginStart(MainApp.E1);
                    frameLayout.addView(j, layoutParams2);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388613;
                    layoutParams3.setMarginEnd(MainApp.E1);
                    frameLayout.addView(C, layoutParams3);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    q.addView(frameLayout2, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i2 = MainApp.g1;
                    frameLayout2.addView(myButtonImage, i2, i2);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    layoutParams4.setMarginStart(MainApp.g1);
                    layoutParams4.setMarginEnd(MainApp.g1);
                    frameLayout2.addView(seekBar, layoutParams4);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams5.gravity = 8388613;
                    frameLayout2.addView(p, layoutParams5);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogEditorErase.c0 = q;
                    dialogEditorErase.d0 = myLineFrame;
                    dialogEditorErase.e0 = myCircleView;
                    dialogEditorErase.f0 = j;
                    dialogEditorErase.g0 = C;
                    dialogEditorErase.h0 = seekBar;
                    dialogEditorErase.i0 = myButtonImage;
                    dialogEditorErase.j0 = p;
                    dialogEditorErase.k0 = myLineText;
                    Handler handler2 = dialogEditorErase.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorErase.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogEditorErase dialogEditorErase2 = DialogEditorErase.this;
                            MyDialogLinear myDialogLinear = dialogEditorErase2.c0;
                            if (myDialogLinear != null && dialogEditorErase2.a0 != null) {
                                myDialogLinear.setBackgroundColor(-1593835520);
                                dialogEditorErase2.f0.setTextColor(-1);
                                dialogEditorErase2.g0.setTextColor(-1);
                                dialogEditorErase2.i0.setImageResource(R.drawable.outline_remove_white_24);
                                dialogEditorErase2.j0.setImageResource(R.drawable.outline_add_white_24);
                                dialogEditorErase2.i0.setBgPreColor(-1586137739);
                                dialogEditorErase2.j0.setBgPreColor(-1586137739);
                                dialogEditorErase2.h0.setProgressDrawable(MainUtil.S(dialogEditorErase2.a0, R.drawable.seek_progress_w));
                                dialogEditorErase2.h0.setThumb(MainUtil.S(dialogEditorErase2.a0, R.drawable.seek_thumb_w));
                                dialogEditorErase2.k0.setBackgroundResource(R.drawable.selector_view);
                                dialogEditorErase2.k0.setTextColor(-1);
                                dialogEditorErase2.h0.setSplitTrack(false);
                                dialogEditorErase2.f0.setText(R.string.color_size);
                                dialogEditorErase2.e0.a(0, 0, dialogEditorErase2.l0, false);
                                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogEditorErase2.l0, dialogEditorErase2.g0);
                                dialogEditorErase2.h0.setMax(39);
                                dialogEditorErase2.h0.setProgress(dialogEditorErase2.l0 - 1);
                                dialogEditorErase2.h0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogEditorErase.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i4, boolean z) {
                                        DialogEditorErase.B(DialogEditorErase.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        DialogEditorErase.B(DialogEditorErase.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        DialogEditorErase.B(DialogEditorErase.this, seekBar2.getProgress());
                                    }
                                });
                                dialogEditorErase2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorErase.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorErase dialogEditorErase3 = DialogEditorErase.this;
                                        if (dialogEditorErase3.h0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogEditorErase3.h0.setProgress(progress);
                                    }
                                });
                                dialogEditorErase2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorErase.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorErase dialogEditorErase3 = DialogEditorErase.this;
                                        SeekBar seekBar2 = dialogEditorErase3.h0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogEditorErase3.h0.getMax()) {
                                            return;
                                        }
                                        dialogEditorErase3.h0.setProgress(progress);
                                    }
                                });
                                dialogEditorErase2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorErase.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i4 = PrefRead.T;
                                        DialogEditorErase dialogEditorErase3 = DialogEditorErase.this;
                                        int i5 = dialogEditorErase3.l0;
                                        if (i4 != i5) {
                                            PrefRead.T = i5;
                                            PrefSet.f(dialogEditorErase3.a0, 8, i5, "mEraseSize");
                                        }
                                        DialogEditorText.EditorSetListener editorSetListener2 = dialogEditorErase3.b0;
                                        if (editorSetListener2 != null) {
                                            editorSetListener2.a(0, null);
                                        }
                                        dialogEditorErase3.dismiss();
                                    }
                                });
                                dialogEditorErase2.g(dialogEditorErase2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditorErase.7
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogEditorErase dialogEditorErase3 = DialogEditorErase.this;
                                        if (dialogEditorErase3.c0 == null) {
                                            return;
                                        }
                                        dialogEditorErase3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogEditorErase dialogEditorErase, final int i) {
        int i2;
        if (dialogEditorErase.g0 == null || dialogEditorErase.l0 == (i2 = i + 1) || dialogEditorErase.m0) {
            return;
        }
        dialogEditorErase.m0 = true;
        dialogEditorErase.l0 = i2;
        dialogEditorErase.e0.setSize(i2);
        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogEditorErase.l0, dialogEditorErase.g0);
        dialogEditorErase.g0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorErase.8
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditorErase dialogEditorErase2 = DialogEditorErase.this;
                dialogEditorErase2.m0 = false;
                DialogEditorErase.B(dialogEditorErase2, i);
            }
        });
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
        MyLineFrame myLineFrame = this.d0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.d0 = null;
        }
        MyCircleView myCircleView = this.e0;
        if (myCircleView != null) {
            myCircleView.f18610c = false;
            myCircleView.f = null;
            myCircleView.k = null;
            myCircleView.l = null;
            myCircleView.m = null;
            myCircleView.n = null;
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.i0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i0 = null;
        }
        MyButtonImage myButtonImage2 = this.j0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.j0 = null;
        }
        MyLineText myLineText = this.k0;
        if (myLineText != null) {
            myLineText.u();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        super.dismiss();
    }
}
