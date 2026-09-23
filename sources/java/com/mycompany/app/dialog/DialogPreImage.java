package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.web.WebViewActivity;
import com.mycompany.app.zoom.ZoomImageAttacher;

/* loaded from: classes3.dex */
public class DialogPreImage extends MyDialogBottom {
    public static final /* synthetic */ int w0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public DialogPreview.PreviewListener c0;
    public String d0;
    public String e0;
    public FrameLayout f0;
    public MyDialogRelative g0;
    public FrameLayout h0;
    public ImageView i0;
    public MyCoverView j0;
    public MyFadeFrame k0;
    public MyButtonImage l0;
    public MyButtonImage m0;
    public MyButtonImage n0;
    public MyButtonImage o0;
    public MyButtonImage p0;
    public MyFadeFrame q0;
    public ZoomImageAttacher r0;
    public GlideRequests s0;
    public boolean t0;
    public final RequestListener u0;
    public final RequestListener v0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogPreImage$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass18 implements Runnable {
        public AnonymousClass18() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogPreImage dialogPreImage = DialogPreImage.this;
            WebViewActivity webViewActivity = dialogPreImage.a0;
            if (webViewActivity != null) {
                if (dialogPreImage.s0 == null) {
                    dialogPreImage.s0 = GlideApp.a(webViewActivity);
                }
                Handler handler = dialogPreImage.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.18.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogPreImage dialogPreImage2 = DialogPreImage.this;
                        if (dialogPreImage2.s0 == null) {
                            return;
                        }
                        if (URLUtil.isNetworkUrl(dialogPreImage2.d0)) {
                            dialogPreImage2.t0 = true;
                            ((GlideRequest) ((GlideRequest) dialogPreImage2.s0.b(PictureDrawable.class)).O(MainUtil.A1(dialogPreImage2.b0, dialogPreImage2.d0, dialogPreImage2.e0))).I(dialogPreImage2.v0).E(dialogPreImage2.i0);
                            return;
                        }
                        dialogPreImage2.t0 = false;
                        ((GlideRequest) ((GlideRequest) dialogPreImage2.s0.b(PictureDrawable.class)).O(dialogPreImage2.d0)).I(dialogPreImage2.v0).E(dialogPreImage2.i0);
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogPreImage$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements ZoomImageAttacher.AttacherListener {
        public AnonymousClass20() {
        }

        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
        public final void C(RectF rectF, boolean z) {
        }

        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
        public final void D(MotionEvent motionEvent, boolean z) {
            boolean z2;
            float f;
            DialogPreImage dialogPreImage = DialogPreImage.this;
            ZoomImageAttacher zoomImageAttacher = dialogPreImage.r0;
            if (zoomImageAttacher != null) {
                RectF rectF = zoomImageAttacher.u;
                if (rectF == null) {
                    f = 0.0f;
                } else {
                    f = rectF.top;
                }
                if (f <= -1.0f) {
                    z2 = false;
                    dialogPreImage.y(z2);
                }
            }
            z2 = true;
            dialogPreImage.y(z2);
        }

        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
        public final boolean k() {
            MyFadeFrame myFadeFrame = DialogPreImage.this.k0;
            if (myFadeFrame != null) {
                myFadeFrame.i(!myFadeFrame.e());
            }
            return true;
        }

        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
        public final boolean m() {
            return false;
        }

        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
        public final void t() {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogPreImage$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogPreImage(WebViewActivity webViewActivity, String str, String str2, DialogPreview.PreviewListener previewListener) {
        super(webViewActivity);
        this.u0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogPreImage.17
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogPreImage dialogPreImage = DialogPreImage.this;
                if (dialogPreImage.i0 != null) {
                    if (dialogPreImage.t0 && !TextUtils.isEmpty(dialogPreImage.e0)) {
                        boolean z = MainConst.f16452a;
                        dialogPreImage.e0 = null;
                        dialogPreImage.i0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.17.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPreImage.B(DialogPreImage.this);
                            }
                        });
                        return true;
                    }
                    MyCoverView myCoverView = dialogPreImage.j0;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                        dialogPreImage.D();
                        return true;
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                ImageView imageView;
                DialogPreImage dialogPreImage = DialogPreImage.this;
                MyCoverView myCoverView = dialogPreImage.j0;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    dialogPreImage.i0.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    if (dialogPreImage.r0 == null && (imageView = dialogPreImage.i0) != null) {
                        dialogPreImage.r0 = new ZoomImageAttacher(imageView, new AnonymousClass20());
                    }
                }
            }
        };
        this.v0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogPreImage.19
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogPreImage dialogPreImage = DialogPreImage.this;
                if (dialogPreImage.i0 != null) {
                    if (dialogPreImage.t0 && !TextUtils.isEmpty(dialogPreImage.e0)) {
                        boolean z = MainConst.f16452a;
                        dialogPreImage.e0 = null;
                        dialogPreImage.i0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.19.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPreImage dialogPreImage2 = DialogPreImage.this;
                                int i = DialogPreImage.w0;
                                dialogPreImage2.s(new AnonymousClass18());
                            }
                        });
                        return true;
                    }
                    MyCoverView myCoverView = dialogPreImage.j0;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                        dialogPreImage.i0.setLayerType(0, null);
                        dialogPreImage.D();
                        return true;
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                ImageView imageView;
                DialogPreImage dialogPreImage = DialogPreImage.this;
                MyCoverView myCoverView = dialogPreImage.j0;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    dialogPreImage.i0.setLayerType(1, null);
                    dialogPreImage.i0.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    if (dialogPreImage.r0 == null && (imageView = dialogPreImage.i0) != null) {
                        dialogPreImage.r0 = new ZoomImageAttacher(imageView, new AnonymousClass20());
                    }
                }
            }
        };
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.d0 = str;
        this.e0 = str2;
        this.c0 = previewListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogPreImage dialogPreImage = DialogPreImage.this;
                Context context = dialogPreImage.b0;
                if (context != null) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    int G = (int) MainUtil.G(context, 2.0f);
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context);
                    int i = MainApp.E1;
                    myDialogRelative.setPadding(G, i, G, i);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 16;
                    frameLayout.addView(myDialogRelative, layoutParams);
                    int G2 = (int) MainUtil.G(context, 320.0f);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    myDialogRelative.addView(frameLayout2, -1, G2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i2 = MainApp.E1;
                    appCompatTextView.setPadding(i2, 0, i2, i2);
                    appCompatTextView.setGravity(81);
                    appCompatTextView.setTextSize(1, 14.0f);
                    appCompatTextView.setTextColor(-328966);
                    appCompatTextView.setText(R.string.server_delay);
                    appCompatTextView.setVisibility(8);
                    frameLayout2.addView(appCompatTextView, -1, -1);
                    MyCoverView myCoverView = new MyCoverView(context, -328966, (int) MainUtil.G(context, 2.0f), MainApp.z1);
                    myCoverView.setVisibility(8);
                    frameLayout2.addView(myCoverView, -1, -1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    frameLayout2.addView(imageView, -1, -1);
                    MyFadeFrame myFadeFrame = new MyFadeFrame(context);
                    myFadeFrame.setTouchable(true);
                    myFadeFrame.setAutoHide(true);
                    myFadeFrame.setVisibility(8);
                    myDialogRelative.addView(myFadeFrame, -1, G2);
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 8388613;
                    int i3 = MainApp.G1;
                    layoutParams2.topMargin = i3;
                    layoutParams2.setMarginEnd(i3);
                    myFadeFrame.addView(frameLayout3, layoutParams2);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    myButtonImage.setImageResource(R.drawable.outline_download_white_24);
                    myButtonImage.n(MainApp.j1, MainApp.k1);
                    myButtonImage.k(-1593835520, -1586137739);
                    int i4 = MainApp.g1;
                    frameLayout3.addView(myButtonImage, i4, i4);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setImageResource(R.drawable.outline_open_with_white_24);
                    myButtonImage2.n(MainApp.j1, MainApp.k1);
                    myButtonImage2.k(-1593835520, -1586137739);
                    int i5 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i5, i5);
                    layoutParams3.setMarginStart(MainApp.g1);
                    frameLayout3.addView(myButtonImage2, layoutParams3);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.setImageResource(R.drawable.outline_share_white_24);
                    p.n(MainApp.j1, MainApp.k1);
                    p.k(-1593835520, -1586137739);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams4.setMarginStart(MainApp.g1 * 2);
                    frameLayout3.addView(p, layoutParams4);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p2.setImageResource(R.drawable.outline_link_white_24);
                    p2.n(MainApp.j1, MainApp.k1);
                    p2.k(-1593835520, -1586137739);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams5.setMarginStart(MainApp.g1 * 3);
                    frameLayout3.addView(p2, layoutParams5);
                    MyButtonImage p3 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p3.setImageResource(R.drawable.outline_open_in_new_white_24);
                    p3.n(MainApp.j1, MainApp.k1);
                    p3.k(-1593835520, -1586137739);
                    int i8 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams6.setMarginStart(MainApp.g1 * 4);
                    frameLayout3.addView(p3, layoutParams6);
                    dialogPreImage.f0 = frameLayout;
                    dialogPreImage.g0 = myDialogRelative;
                    dialogPreImage.h0 = frameLayout2;
                    dialogPreImage.j0 = myCoverView;
                    dialogPreImage.i0 = imageView;
                    dialogPreImage.k0 = myFadeFrame;
                    dialogPreImage.l0 = myButtonImage;
                    dialogPreImage.m0 = myButtonImage2;
                    dialogPreImage.n0 = p;
                    dialogPreImage.o0 = p2;
                    dialogPreImage.p0 = p3;
                    Handler handler2 = dialogPreImage.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v6, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogPreImage dialogPreImage2 = DialogPreImage.this;
                            if (dialogPreImage2.f0 != null && dialogPreImage2.b0 != null) {
                                dialogPreImage2.g0.setBackgroundColor(-16777216);
                                dialogPreImage2.g0.d(-5197648, Math.round(MainApp.E1 / 8.0f));
                                dialogPreImage2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage.this.dismiss();
                                    }
                                });
                                dialogPreImage2.g0.setOnClickListener(new Object());
                                dialogPreImage2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        MyFadeFrame myFadeFrame2 = dialogPreImage3.k0;
                                        if (myFadeFrame2 != null) {
                                            myFadeFrame2.d(true);
                                        }
                                        DialogPreview.PreviewListener previewListener2 = dialogPreImage3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.e(dialogPreImage3.d0, null);
                                        }
                                    }
                                });
                                dialogPreImage2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        MyFadeFrame myFadeFrame2 = dialogPreImage3.k0;
                                        if (myFadeFrame2 != null) {
                                            myFadeFrame2.d(true);
                                        }
                                        DialogPreview.PreviewListener previewListener2 = dialogPreImage3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.c(dialogPreImage3.d0, "image/*");
                                        }
                                    }
                                });
                                dialogPreImage2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        MyFadeFrame myFadeFrame2 = dialogPreImage3.k0;
                                        if (myFadeFrame2 != null) {
                                            myFadeFrame2.d(true);
                                        }
                                        DialogPreview.PreviewListener previewListener2 = dialogPreImage3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.d(dialogPreImage3.d0);
                                        }
                                    }
                                });
                                dialogPreImage2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        MyFadeFrame myFadeFrame2 = dialogPreImage3.k0;
                                        if (myFadeFrame2 != null) {
                                            myFadeFrame2.h(true);
                                        }
                                        DialogPreview.PreviewListener previewListener2 = dialogPreImage3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.a(dialogPreImage3.d0);
                                        }
                                    }
                                });
                                dialogPreImage2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        MyFadeFrame myFadeFrame2 = dialogPreImage3.k0;
                                        if (myFadeFrame2 != null) {
                                            myFadeFrame2.d(true);
                                        }
                                        DialogPreview.PreviewListener previewListener2 = dialogPreImage3.c0;
                                        if (previewListener2 != null) {
                                            previewListener2.b(dialogPreImage3.d0, 0L, true);
                                        }
                                    }
                                });
                                if (PrefRead.r) {
                                    dialogPreImage2.h0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.10
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Handler handler3;
                                            if (PrefRead.r) {
                                                final DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                                if (dialogPreImage3.q0 == null && dialogPreImage3.h0 != null && (handler3 = dialogPreImage3.i) != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.13
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            MyFadeFrame Z0;
                                                            if (PrefRead.r) {
                                                                final DialogPreImage dialogPreImage4 = DialogPreImage.this;
                                                                if (dialogPreImage4.q0 == null && dialogPreImage4.h0 != null && (Z0 = VideoActivity.Z0(dialogPreImage4.a0)) != null) {
                                                                    dialogPreImage4.q0 = Z0;
                                                                    Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogPreImage.14
                                                                        @Override // com.mycompany.app.view.MyFadeListener
                                                                        public final void a(boolean z) {
                                                                            DialogPreImage dialogPreImage5;
                                                                            MyFadeFrame myFadeFrame2;
                                                                            if (!z && (myFadeFrame2 = (dialogPreImage5 = DialogPreImage.this).q0) != null && dialogPreImage5.h0 != null) {
                                                                                myFadeFrame2.f();
                                                                                dialogPreImage5.h0.removeView(dialogPreImage5.q0);
                                                                                dialogPreImage5.q0 = null;
                                                                            }
                                                                        }

                                                                        @Override // com.mycompany.app.view.MyFadeListener
                                                                        public final void b(boolean z, boolean z2) {
                                                                        }
                                                                    });
                                                                    dialogPreImage4.q0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogPreImage.15
                                                                        @Override // android.view.View.OnTouchListener
                                                                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                            boolean z = PrefRead.r;
                                                                            DialogPreImage dialogPreImage5 = DialogPreImage.this;
                                                                            if (z) {
                                                                                PrefRead.r = false;
                                                                                PrefSet.d(8, dialogPreImage5.b0, "mGuidePrev", false);
                                                                            }
                                                                            MyFadeFrame myFadeFrame2 = dialogPreImage5.q0;
                                                                            if (myFadeFrame2 != null) {
                                                                                myFadeFrame2.d(true);
                                                                            }
                                                                            return false;
                                                                        }
                                                                    });
                                                                    dialogPreImage4.h0.addView(dialogPreImage4.q0, -1, -1);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            int i9 = DialogPreImage.w0;
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            int i9 = DialogPreImage.w0;
                                        }
                                    });
                                }
                                dialogPreImage2.C(dialogPreImage2.p());
                                dialogPreImage2.f(dialogPreImage2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPreImage.11
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        final DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                        if (dialogPreImage3.f0 != null) {
                                            dialogPreImage3.show();
                                            Handler handler3 = dialogPreImage3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.12
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogPreImage.B(DialogPreImage.this);
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

    public static void B(DialogPreImage dialogPreImage) {
        if (dialogPreImage.i0 == null) {
            return;
        }
        if (TextUtils.isEmpty(dialogPreImage.d0)) {
            dialogPreImage.D();
            return;
        }
        MyFadeFrame myFadeFrame = dialogPreImage.k0;
        if (myFadeFrame != null) {
            myFadeFrame.h(false);
        }
        dialogPreImage.j0.l();
        if (Compress.I(MainUtil.V3(dialogPreImage.d0, null, null, true))) {
            dialogPreImage.s(new AnonymousClass18());
        } else {
            dialogPreImage.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.16
                @Override // java.lang.Runnable
                public final void run() {
                    DialogPreImage dialogPreImage2 = DialogPreImage.this;
                    WebViewActivity webViewActivity = dialogPreImage2.a0;
                    if (webViewActivity != null) {
                        if (dialogPreImage2.s0 == null) {
                            dialogPreImage2.s0 = GlideApp.a(webViewActivity);
                        }
                        Handler handler = dialogPreImage2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreImage.16.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPreImage dialogPreImage3 = DialogPreImage.this;
                                if (dialogPreImage3.s0 == null) {
                                    return;
                                }
                                boolean isNetworkUrl = URLUtil.isNetworkUrl(dialogPreImage3.d0);
                                DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                if (isNetworkUrl) {
                                    dialogPreImage3.t0 = true;
                                    ((RequestBuilder) dialogPreImage3.s0.t(MainUtil.A1(dialogPreImage3.b0, dialogPreImage3.d0, dialogPreImage3.e0)).e(diskCacheStrategy)).I(dialogPreImage3.u0).E(dialogPreImage3.i0);
                                } else {
                                    dialogPreImage3.t0 = false;
                                    ((RequestBuilder) dialogPreImage3.s0.u(dialogPreImage3.d0).e(diskCacheStrategy)).I(dialogPreImage3.u0).E(dialogPreImage3.i0);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C(boolean z) {
        if (this.h0 != null) {
            if (z) {
                z = q();
            }
            ViewGroup.LayoutParams layoutParams = this.h0.getLayoutParams();
            if (z) {
                layoutParams.height = (int) MainUtil.G(this.b0, 280.0f);
                ZoomImageAttacher zoomImageAttacher = this.r0;
                if (zoomImageAttacher != null) {
                    zoomImageAttacher.u();
                    return;
                }
                return;
            }
            layoutParams.height = (int) MainUtil.G(this.b0, 320.0f);
            ZoomImageAttacher zoomImageAttacher2 = this.r0;
            if (zoomImageAttacher2 != null) {
                zoomImageAttacher2.u();
            }
        }
    }

    public final void D() {
        ImageView imageView = this.i0;
        if (imageView == null) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.i0.setImageResource(R.drawable.outline_error_dark_web_48);
        this.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreImage.21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyFadeFrame myFadeFrame = DialogPreImage.this.k0;
                if (myFadeFrame != null) {
                    myFadeFrame.i(!myFadeFrame.e());
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        GlideRequests glideRequests = this.s0;
        if (glideRequests != null) {
            ImageView imageView = this.i0;
            if (imageView != null) {
                glideRequests.o(imageView);
            }
            this.s0 = null;
        }
        MyDialogRelative myDialogRelative = this.g0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.g0 = null;
        }
        MyCoverView myCoverView = this.j0;
        if (myCoverView != null) {
            myCoverView.i();
            this.j0 = null;
        }
        MyFadeFrame myFadeFrame = this.k0;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.k0 = null;
        }
        MyButtonImage myButtonImage = this.l0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.l0 = null;
        }
        MyButtonImage myButtonImage2 = this.m0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.m0 = null;
        }
        MyButtonImage myButtonImage3 = this.n0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.n0 = null;
        }
        MyButtonImage myButtonImage4 = this.o0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.o0 = null;
        }
        MyButtonImage myButtonImage5 = this.p0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.p0 = null;
        }
        MyFadeFrame myFadeFrame2 = this.q0;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.q0 = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.r0;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.r0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.h0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
