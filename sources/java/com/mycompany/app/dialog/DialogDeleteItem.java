package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;

/* loaded from: classes3.dex */
public class DialogDeleteItem extends MyDialogBottom {
    public Context a0;
    public DelItemListener b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyLineText f0;

    /* loaded from: classes3.dex */
    public interface DelItemListener {
        void a();

        void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView);
    }

    public DialogDeleteItem(Activity activity, DelItemListener delItemListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = delItemListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDeleteItem.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogDeleteItem dialogDeleteItem = DialogDeleteItem.this;
                Context context = dialogDeleteItem.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, G);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    frameLayout.addView(myRoundImage, layoutParams);
                    AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i2.setEllipsize(TextUtils.TruncateAt.END);
                    i2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    frameLayout.addView(i2, layoutParams2);
                    MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
                    r.setText(R.string.delete);
                    r.setLinePad(MainApp.E1);
                    r.setLineUp(true);
                    q.addView(r, -1, MainApp.g1);
                    dialogDeleteItem.c0 = q;
                    dialogDeleteItem.d0 = myRoundImage;
                    dialogDeleteItem.e0 = i2;
                    dialogDeleteItem.f0 = r;
                    Handler handler2 = dialogDeleteItem.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDeleteItem.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogDeleteItem dialogDeleteItem2 = DialogDeleteItem.this;
                            if (dialogDeleteItem2.c0 != null && dialogDeleteItem2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogDeleteItem2.e0.setTextColor(-328966);
                                    dialogDeleteItem2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogDeleteItem2.f0.setTextColor(-328966);
                                } else {
                                    dialogDeleteItem2.e0.setTextColor(-16777216);
                                    dialogDeleteItem2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogDeleteItem2.f0.setTextColor(-14784824);
                                }
                                DelItemListener delItemListener2 = dialogDeleteItem2.b0;
                                if (delItemListener2 != null) {
                                    delItemListener2.b(dialogDeleteItem2.d0, dialogDeleteItem2.e0);
                                }
                                dialogDeleteItem2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDeleteItem.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogDeleteItem dialogDeleteItem3 = DialogDeleteItem.this;
                                        dialogDeleteItem3.B(true);
                                        Handler handler3 = dialogDeleteItem3.i;
                                        if (handler3 == null) {
                                            return;
                                        }
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDeleteItem.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DelItemListener delItemListener3 = DialogDeleteItem.this.b0;
                                                if (delItemListener3 != null) {
                                                    delItemListener3.a();
                                                }
                                            }
                                        });
                                    }
                                });
                                dialogDeleteItem2.g(dialogDeleteItem2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDeleteItem.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogDeleteItem dialogDeleteItem3 = DialogDeleteItem.this;
                                        if (dialogDeleteItem3.c0 == null) {
                                            return;
                                        }
                                        dialogDeleteItem3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B(boolean z) {
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear == null) {
            return;
        }
        myDialogLinear.e(0, 0, z, false);
        this.f0.setClickable(!z);
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
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
        }
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
