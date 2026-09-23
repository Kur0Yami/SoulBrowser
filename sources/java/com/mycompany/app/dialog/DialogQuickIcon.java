package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;

/* loaded from: classes3.dex */
public class DialogQuickIcon extends MyDialogBottom {
    public Context a0;
    public QuickLoadListener b0;
    public String c0;
    public MyDialogLinear d0;
    public MyRoundImage e0;
    public AppCompatTextView f0;
    public MyCoverView g0;
    public MyLineText h0;
    public Bitmap i0;

    /* loaded from: classes3.dex */
    public interface QuickLoadListener {
        void a(Bitmap bitmap);
    }

    public DialogQuickIcon(Activity activity, String str, QuickLoadListener quickLoadListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = quickLoadListener;
        this.c0 = str;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickIcon.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogQuickIcon dialogQuickIcon = DialogQuickIcon.this;
                Context context = dialogQuickIcon.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setMinimumHeight((int) MainUtil.G(context, 96.0f));
                    q.addView(frameLayout, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    myRoundImage.setVisibility(8);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 17;
                    frameLayout.addView(myRoundImage, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i2 = MainApp.E1;
                    appCompatTextView.setPadding(i2, i2, i2, i2);
                    appCompatTextView.setGravity(1);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    frameLayout.addView(appCompatTextView, layoutParams2);
                    MyCoverView myCoverView = new MyCoverView(context);
                    myCoverView.setVisibility(8);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams3.gravity = 17;
                    frameLayout.addView(myCoverView, layoutParams3);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogQuickIcon.d0 = q;
                    dialogQuickIcon.e0 = myRoundImage;
                    dialogQuickIcon.f0 = appCompatTextView;
                    dialogQuickIcon.g0 = myCoverView;
                    dialogQuickIcon.h0 = myLineText;
                    Handler handler2 = dialogQuickIcon.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickIcon.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogQuickIcon dialogQuickIcon2 = DialogQuickIcon.this;
                            if (dialogQuickIcon2.d0 != null && dialogQuickIcon2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogQuickIcon2.h0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogQuickIcon2.h0.setTextColor(-328966);
                                } else {
                                    dialogQuickIcon2.h0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogQuickIcon2.h0.setTextColor(-14784824);
                                }
                                dialogQuickIcon2.h0.setText(R.string.cancel);
                                dialogQuickIcon2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogQuickIcon.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogQuickIcon dialogQuickIcon3 = DialogQuickIcon.this;
                                        QuickLoadListener quickLoadListener2 = dialogQuickIcon3.b0;
                                        if (quickLoadListener2 != null) {
                                            quickLoadListener2.a(dialogQuickIcon3.i0);
                                        }
                                        dialogQuickIcon3.dismiss();
                                    }
                                });
                                MyCoverView myCoverView2 = dialogQuickIcon2.g0;
                                if (myCoverView2 != null) {
                                    myCoverView2.m(true);
                                    dialogQuickIcon2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickIcon.5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogQuickIcon dialogQuickIcon3 = DialogQuickIcon.this;
                                            dialogQuickIcon3.i0 = MainUtil.n3(dialogQuickIcon3.a0, dialogQuickIcon3.c0);
                                            MyRoundImage myRoundImage2 = dialogQuickIcon3.e0;
                                            if (myRoundImage2 == null) {
                                                return;
                                            }
                                            myRoundImage2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickIcon.5.1
                                                /* JADX WARN: Multi-variable type inference failed */
                                                /* JADX WARN: Type inference failed for: r1v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
                                                /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final DialogQuickIcon dialogQuickIcon4 = DialogQuickIcon.this;
                                                    if (MainUtil.f6(dialogQuickIcon4.i0)) {
                                                        DialogQuickIcon.B(dialogQuickIcon4);
                                                        return;
                                                    }
                                                    if (dialogQuickIcon4.g0 == null) {
                                                        return;
                                                    }
                                                    ?? obj = new Object();
                                                    obj.f16554a = 7;
                                                    obj.q = MainUtil.e7(dialogQuickIcon4.c0);
                                                    obj.t = 2;
                                                    obj.u = true;
                                                    DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                                                    builder.f20960a = true;
                                                    builder.b = true;
                                                    builder.f = new Object();
                                                    ImageLoader.f().i(obj, new DisplayImageOptions(builder), new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogQuickIcon.6
                                                        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                                        public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                                                            DialogQuickIcon.B(DialogQuickIcon.this);
                                                        }

                                                        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                                        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                                                            DialogQuickIcon dialogQuickIcon5 = DialogQuickIcon.this;
                                                            dialogQuickIcon5.i0 = bitmap;
                                                            DialogQuickIcon.B(dialogQuickIcon5);
                                                        }
                                                    });
                                                }
                                            });
                                        }
                                    });
                                }
                                dialogQuickIcon2.g(dialogQuickIcon2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogQuickIcon.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogQuickIcon dialogQuickIcon3 = DialogQuickIcon.this;
                                        if (dialogQuickIcon3.d0 == null) {
                                            return;
                                        }
                                        dialogQuickIcon3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogQuickIcon dialogQuickIcon) {
        int i;
        MyCoverView myCoverView = dialogQuickIcon.g0;
        if (myCoverView == null) {
            return;
        }
        myCoverView.f(false);
        if (MainUtil.f6(dialogQuickIcon.i0)) {
            dialogQuickIcon.e0.setVisibility(0);
            dialogQuickIcon.e0.setImageBitmap(dialogQuickIcon.i0);
            dialogQuickIcon.h0.setText(R.string.apply);
            return;
        }
        dialogQuickIcon.f0.setVisibility(0);
        AppCompatTextView appCompatTextView = dialogQuickIcon.f0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        dialogQuickIcon.f0.setText(R.string.no_icon);
        dialogQuickIcon.h0.setText(R.string.ok);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRoundImage myRoundImage = this.e0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.e0 = null;
        }
        MyCoverView myCoverView = this.g0;
        if (myCoverView != null) {
            myCoverView.i();
            this.g0 = null;
        }
        MyLineText myLineText = this.h0;
        if (myLineText != null) {
            myLineText.u();
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
