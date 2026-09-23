package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.video.VideoSeekControl;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyPlayerView;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.mycompany.app.zoom.ZoomVideoAttacher;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class DialogPreview extends MyDialogBottom {
    public static final /* synthetic */ int j1 = 0;
    public MyButtonImage A0;
    public MyButtonImage B0;
    public MyButtonImage C0;
    public MyFadeFrame D0;
    public ZoomImageAttacher E0;
    public ZoomVideoAttacher F0;
    public GestureDetector G0;
    public boolean H0;
    public long I0;
    public GlideRequests J0;
    public boolean K0;
    public String L0;
    public String M0;
    public boolean N0;
    public boolean O0;
    public String P0;
    public final RequestListener Q0;
    public String R0;
    public final RequestListener S0;
    public String T0;
    public String U0;
    public String V0;
    public String W0;
    public String X0;
    public String Y0;
    public String Z0;
    public MainActivity a0;
    public String a1;
    public Context b0;
    public String b1;
    public PreviewListener c0;
    public String c1;
    public String d0;
    public String d1;
    public String e0;
    public boolean e1;
    public String f0;
    public String f1;
    public Bitmap g0;
    public final Runnable g1;
    public String h0;
    public int h1;
    public int i0;
    public int i1;
    public final boolean j0;
    public FrameLayout k0;
    public MyDialogRelative l0;
    public FrameLayout m0;
    public MyPlayerView n0;
    public VideoSeekControl o0;
    public boolean p0;
    public int q0;
    public ImageView r0;
    public MyWebSafe s0;
    public boolean t0;
    public View u0;
    public AppCompatTextView v0;
    public MyCoverView w0;
    public MyFadeFrame x0;
    public MyButtonImage y0;
    public MyButtonImage z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogPreview$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass18 implements Runnable {
        public AnonymousClass18() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogPreview dialogPreview = DialogPreview.this;
            MainActivity mainActivity = dialogPreview.a0;
            if (mainActivity != null) {
                if (dialogPreview.J0 == null) {
                    dialogPreview.J0 = GlideApp.a(mainActivity);
                }
                Handler handler = dialogPreview.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.18.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogPreview dialogPreview2 = DialogPreview.this;
                        String str = dialogPreview2.R0;
                        dialogPreview2.R0 = null;
                        if (dialogPreview2.J0 == null) {
                            return;
                        }
                        if (URLUtil.isNetworkUrl(str)) {
                            dialogPreview2.K0 = true;
                            ((GlideRequest) ((GlideRequest) dialogPreview2.J0.b(PictureDrawable.class)).O(MainUtil.A1(dialogPreview2.b0, str, dialogPreview2.f0))).I(dialogPreview2.S0).E(dialogPreview2.r0);
                            return;
                        }
                        dialogPreview2.K0 = false;
                        ((GlideRequest) ((GlideRequest) dialogPreview2.J0.b(PictureDrawable.class)).O(str)).I(dialogPreview2.S0).E(dialogPreview2.r0);
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogPreview$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            MyWebSafe myWebSafe;
            final DialogPreview dialogPreview = DialogPreview.this;
            if (dialogPreview.s0 == null) {
                return;
            }
            dialogPreview.t0 = false;
            if (!dialogPreview.e1 && !TextUtils.isEmpty(str) && !str.equals(dialogPreview.f1)) {
                dialogPreview.e1 = true;
                dialogPreview.f1 = str;
                Handler handler = dialogPreview.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.36
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPreview dialogPreview2 = DialogPreview.this;
                            MainUtil.l(dialogPreview2.s0);
                            dialogPreview2.e1 = false;
                        }
                    });
                }
            }
            if (dialogPreview.i0 == 5 && (myWebSafe = dialogPreview.s0) != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.muted=true;ele.loop=true;ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();", false);
            }
            dialogPreview.C();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogPreview dialogPreview = DialogPreview.this;
            MyWebSafe myWebSafe = dialogPreview.s0;
            if (myWebSafe == null) {
                return;
            }
            dialogPreview.t0 = true;
            if (dialogPreview.i0 == 5 && myWebSafe != null) {
                MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.muted=true;ele.loop=true;ele.style.width='100%';ele.setAttribute('controlsList','nodownload');if(ele.paused){ele.play();}}})();", false);
            }
            dialogPreview.C();
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogPreview dialogPreview = DialogPreview.this;
            dialogPreview.s0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogPreview.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.37
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogPreview.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return false;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogPreview dialogPreview = DialogPreview.this;
            if (dialogPreview.s0 != null && !TextUtils.isEmpty(str)) {
                dialogPreview.d0 = str;
                if (dialogPreview.s0 != null) {
                    HashMap v0 = MainUtil.v0(dialogPreview.b0, str, null);
                    if (v0 != null) {
                        dialogPreview.s0.loadUrl(str, v0);
                        return true;
                    }
                    dialogPreview.s0.loadUrl(str);
                    return true;
                }
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface PreviewListener {
        void a(String str);

        void b(String str, long j, boolean z);

        void c(String str, String str2);

        void d(String str);

        void e(String str, String str2);
    }

    public DialogPreview(MainActivity mainActivity, String str, String str2, Bitmap bitmap, String str3, PreviewListener previewListener) {
        super(mainActivity);
        this.Q0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogPreview.17
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogPreview dialogPreview = DialogPreview.this;
                if (dialogPreview.r0 == null) {
                    return true;
                }
                if (dialogPreview.K0 && !TextUtils.isEmpty(dialogPreview.f0)) {
                    boolean z = MainConst.f16452a;
                    dialogPreview.f0 = null;
                    dialogPreview.r0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.17.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPreview dialogPreview2 = DialogPreview.this;
                            dialogPreview2.J(dialogPreview2.e0, dialogPreview2.L0);
                        }
                    });
                    return true;
                }
                dialogPreview.C();
                dialogPreview.r0.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                dialogPreview.r0.setImageResource(R.drawable.outline_error_dark_web_48);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                DialogPreview dialogPreview = DialogPreview.this;
                if (dialogPreview.r0 != null) {
                    dialogPreview.C();
                    dialogPreview.r0.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    dialogPreview.I();
                }
            }
        };
        this.S0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogPreview.19
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogPreview dialogPreview = DialogPreview.this;
                if (dialogPreview.r0 == null) {
                    return true;
                }
                if (dialogPreview.K0 && !TextUtils.isEmpty(dialogPreview.f0)) {
                    boolean z = MainConst.f16452a;
                    dialogPreview.f0 = null;
                    dialogPreview.r0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.19.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPreview dialogPreview2 = DialogPreview.this;
                            dialogPreview2.R0 = dialogPreview2.e0;
                            dialogPreview2.s(new AnonymousClass18());
                        }
                    });
                    return true;
                }
                dialogPreview.C();
                dialogPreview.r0.setLayerType(0, null);
                dialogPreview.r0.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                dialogPreview.r0.setImageResource(R.drawable.outline_error_dark_web_48);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                DialogPreview dialogPreview = DialogPreview.this;
                if (dialogPreview.r0 != null) {
                    dialogPreview.C();
                    dialogPreview.r0.setLayerType(1, null);
                    dialogPreview.r0.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    dialogPreview.I();
                }
            }
        };
        this.g1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.38
            @Override // java.lang.Runnable
            public final void run() {
                final DialogPreview dialogPreview = DialogPreview.this;
                int i = dialogPreview.h1;
                MyFadeFrame myFadeFrame = dialogPreview.x0;
                if (myFadeFrame != null) {
                    myFadeFrame.g();
                    if (i >= 0) {
                        dialogPreview.i1 = i;
                        FrameLayout frameLayout = dialogPreview.k0;
                        if (frameLayout == null) {
                            return;
                        }
                        frameLayout.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.39
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPreview dialogPreview2 = DialogPreview.this;
                                DialogPreview.B(dialogPreview2, dialogPreview2.i1);
                            }
                        }, 100L);
                    }
                }
            }
        };
        if (MainUtil.r5(str)) {
            this.j0 = true;
            str3 = "video/*";
        }
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.d0 = str;
        this.f0 = str2;
        this.g0 = bitmap;
        this.h0 = str3;
        this.c0 = previewListener;
        if ("blob:".equals(str3)) {
            this.e0 = str;
        } else {
            this.e0 = MainUtil.O0(str);
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogPreview dialogPreview = DialogPreview.this;
                Context context = dialogPreview.b0;
                if (context != null) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context);
                    int G = (int) MainUtil.G(context, 2.0f);
                    int i = MainApp.E1;
                    myDialogRelative.setPadding(G, i, G, i);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 16;
                    frameLayout.addView(myDialogRelative, layoutParams);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    int G2 = (int) MainUtil.G(context, 320.0f);
                    myDialogRelative.addView(frameLayout2, -1, G2);
                    if (MainUtil.f6(dialogPreview.g0)) {
                        ImageView imageView = new ImageView(context);
                        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        frameLayout2.addView(imageView, -1, -1);
                        dialogPreview.r0 = imageView;
                    } else {
                        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                        int i2 = MainApp.E1;
                        appCompatTextView.setPadding(i2, 0, i2, i2);
                        appCompatTextView.setGravity(81);
                        appCompatTextView.setTextSize(1, 14.0f);
                        appCompatTextView.setTextColor(-328966);
                        appCompatTextView.setText(R.string.server_delay);
                        appCompatTextView.setVisibility(8);
                        frameLayout2.addView(appCompatTextView, -1, -1);
                        MyCoverView myCoverView = new MyCoverView(context, -328966, G, MainApp.z1);
                        myCoverView.setVisibility(8);
                        frameLayout2.addView(myCoverView, -1, -1);
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
                        dialogPreview.v0 = appCompatTextView;
                        dialogPreview.w0 = myCoverView;
                        dialogPreview.x0 = myFadeFrame;
                        dialogPreview.y0 = myButtonImage;
                        dialogPreview.z0 = myButtonImage2;
                        dialogPreview.A0 = p;
                        dialogPreview.B0 = p2;
                        dialogPreview.C0 = p3;
                    }
                    dialogPreview.k0 = frameLayout;
                    dialogPreview.l0 = myDialogRelative;
                    dialogPreview.m0 = frameLayout2;
                    Handler handler2 = dialogPreview.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r3v6, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogPreview dialogPreview2 = DialogPreview.this;
                            Bitmap bitmap2 = dialogPreview2.g0;
                            dialogPreview2.g0 = null;
                            if (dialogPreview2.k0 != null && dialogPreview2.b0 != null) {
                                dialogPreview2.l0.setBackgroundColor(-16777216);
                                dialogPreview2.l0.d(-5197648, Math.round(MainApp.E1 / 8.0f));
                                dialogPreview2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPreview.this.dismiss();
                                    }
                                });
                                dialogPreview2.l0.setOnClickListener(new Object());
                                if (dialogPreview2.r0 != null) {
                                    if (MainUtil.f6(bitmap2)) {
                                        dialogPreview2.r0.setImageBitmap(bitmap2);
                                        dialogPreview2.I();
                                    }
                                } else {
                                    MyButtonImage myButtonImage3 = dialogPreview2.y0;
                                    if (myButtonImage3 != null) {
                                        myButtonImage3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.5
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                MyFadeFrame myFadeFrame2;
                                                DialogPreview dialogPreview3 = DialogPreview.this;
                                                if (dialogPreview3.i0 != 6 && (myFadeFrame2 = dialogPreview3.x0) != null) {
                                                    myFadeFrame2.d(true);
                                                }
                                                PreviewListener previewListener2 = dialogPreview3.c0;
                                                if (previewListener2 != null) {
                                                    previewListener2.e(dialogPreview3.d0, dialogPreview3.h0);
                                                }
                                            }
                                        });
                                        dialogPreview2.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.6
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                MyFadeFrame myFadeFrame2;
                                                DialogPreview dialogPreview3 = DialogPreview.this;
                                                if (dialogPreview3.i0 != 6 && (myFadeFrame2 = dialogPreview3.x0) != null) {
                                                    myFadeFrame2.d(true);
                                                }
                                                PreviewListener previewListener2 = dialogPreview3.c0;
                                                if (previewListener2 != null) {
                                                    previewListener2.c(dialogPreview3.e0, dialogPreview3.h0);
                                                }
                                            }
                                        });
                                        dialogPreview2.A0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.7
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                MyFadeFrame myFadeFrame2;
                                                DialogPreview dialogPreview3 = DialogPreview.this;
                                                if (dialogPreview3.i0 != 6 && (myFadeFrame2 = dialogPreview3.x0) != null) {
                                                    myFadeFrame2.d(true);
                                                }
                                                PreviewListener previewListener2 = dialogPreview3.c0;
                                                if (previewListener2 != null) {
                                                    previewListener2.d(dialogPreview3.e0);
                                                }
                                            }
                                        });
                                        dialogPreview2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.8
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                MyFadeFrame myFadeFrame2;
                                                DialogPreview dialogPreview3 = DialogPreview.this;
                                                if (dialogPreview3.i0 != 6 && (myFadeFrame2 = dialogPreview3.x0) != null) {
                                                    myFadeFrame2.h(true);
                                                }
                                                PreviewListener previewListener2 = dialogPreview3.c0;
                                                if (previewListener2 != null) {
                                                    previewListener2.a(dialogPreview3.e0);
                                                }
                                            }
                                        });
                                        dialogPreview2.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPreview.9
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogPreview dialogPreview3 = DialogPreview.this;
                                                if (dialogPreview3.i0 != 6) {
                                                    MyFadeFrame myFadeFrame2 = dialogPreview3.x0;
                                                    boolean z = true;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                    PreviewListener previewListener2 = dialogPreview3.c0;
                                                    if (previewListener2 == null) {
                                                        return;
                                                    }
                                                    String str4 = dialogPreview3.e0;
                                                    if (dialogPreview3.i0 != 4) {
                                                        z = false;
                                                    }
                                                    previewListener2.b(str4, 0L, z);
                                                }
                                            }
                                        });
                                    }
                                }
                                dialogPreview2.D(dialogPreview2.p());
                                dialogPreview2.f(dialogPreview2.k0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPreview.10
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        final DialogPreview dialogPreview3 = DialogPreview.this;
                                        if (dialogPreview3.k0 != null) {
                                            Window window = dialogPreview3.getWindow();
                                            if (window != null) {
                                                window.setDimAmount(0.6f);
                                            }
                                            dialogPreview3.show();
                                            if (dialogPreview3.r0 != null) {
                                                return;
                                            }
                                            dialogPreview3.k0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.11
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    String str4;
                                                    final DialogPreview dialogPreview4 = DialogPreview.this;
                                                    if (dialogPreview4.k0 != null) {
                                                        if (TextUtils.isEmpty(dialogPreview4.h0)) {
                                                            str4 = MainUtil.U3(dialogPreview4.e0, false);
                                                            dialogPreview4.h0 = MainUtil.t2(str4);
                                                        } else {
                                                            str4 = null;
                                                        }
                                                        if (!TextUtils.isEmpty(dialogPreview4.h0)) {
                                                            if (dialogPreview4.h0.startsWith("audio")) {
                                                                String str5 = dialogPreview4.e0;
                                                                if (dialogPreview4.k0 != null) {
                                                                    dialogPreview4.i0 = 6;
                                                                    dialogPreview4.F();
                                                                    ImageView imageView2 = dialogPreview4.r0;
                                                                    if (imageView2 != null) {
                                                                        FrameLayout frameLayout4 = dialogPreview4.m0;
                                                                        if (frameLayout4 != null) {
                                                                            frameLayout4.removeView(imageView2);
                                                                        }
                                                                        dialogPreview4.r0 = null;
                                                                    }
                                                                    if (dialogPreview4.s0 == null) {
                                                                        MyWebSafe myWebSafe = new MyWebSafe(dialogPreview4.a0);
                                                                        dialogPreview4.s0 = myWebSafe;
                                                                        MainApp.I(dialogPreview4.b0, myWebSafe);
                                                                        dialogPreview4.s0.setBackgroundColor(-16777216);
                                                                        dialogPreview4.m0.addView(dialogPreview4.s0, 0, new FrameLayout.LayoutParams(-1, -1));
                                                                    }
                                                                    dialogPreview4.b1 = str5;
                                                                    Handler handler3 = dialogPreview4.i;
                                                                    if (handler3 != null) {
                                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.25
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                final DialogPreview dialogPreview5 = DialogPreview.this;
                                                                                String str6 = dialogPreview5.b1;
                                                                                dialogPreview5.b1 = null;
                                                                                if (dialogPreview5.s0 != null) {
                                                                                    MyFadeFrame myFadeFrame2 = dialogPreview5.x0;
                                                                                    if (myFadeFrame2 != null) {
                                                                                        myFadeFrame2.setAutoHide(false);
                                                                                        dialogPreview5.x0.setVisibility(0);
                                                                                    }
                                                                                    MyButtonImage myButtonImage4 = dialogPreview5.C0;
                                                                                    if (myButtonImage4 != null) {
                                                                                        myButtonImage4.setVisibility(8);
                                                                                    }
                                                                                    FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) dialogPreview5.s0.getLayoutParams();
                                                                                    layoutParams7.height = -2;
                                                                                    layoutParams7.gravity = 80;
                                                                                    if (dialogPreview5.u0 == null) {
                                                                                        View view2 = new View(dialogPreview5.a0);
                                                                                        dialogPreview5.u0 = view2;
                                                                                        view2.setAlpha(0.4f);
                                                                                        dialogPreview5.u0.setBackgroundResource(R.drawable.baseline_music_note_dark_24);
                                                                                        int i9 = MainApp.i1;
                                                                                        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i9, i9);
                                                                                        layoutParams8.gravity = 17;
                                                                                        dialogPreview5.m0.addView(dialogPreview5.u0, layoutParams8);
                                                                                    }
                                                                                    dialogPreview5.c1 = str6;
                                                                                    Handler handler4 = dialogPreview5.i;
                                                                                    if (handler4 == null) {
                                                                                        return;
                                                                                    }
                                                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.26
                                                                                        @Override // java.lang.Runnable
                                                                                        public final void run() {
                                                                                            final DialogPreview dialogPreview6 = DialogPreview.this;
                                                                                            String str7 = dialogPreview6.c1;
                                                                                            dialogPreview6.c1 = null;
                                                                                            MyWebSafe myWebSafe2 = dialogPreview6.s0;
                                                                                            if (myWebSafe2 != null) {
                                                                                                MainUtil.W7(myWebSafe2, true);
                                                                                                dialogPreview6.s0.setWebViewClient(new LocalWebViewClient());
                                                                                                dialogPreview6.d1 = str7;
                                                                                                Handler handler5 = dialogPreview6.i;
                                                                                                if (handler5 == null) {
                                                                                                    return;
                                                                                                }
                                                                                                handler5.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.27
                                                                                                    @Override // java.lang.Runnable
                                                                                                    public final void run() {
                                                                                                        DialogPreview dialogPreview7 = DialogPreview.this;
                                                                                                        String str8 = dialogPreview7.d1;
                                                                                                        dialogPreview7.d1 = null;
                                                                                                        MyWebSafe myWebSafe3 = dialogPreview7.s0;
                                                                                                        if (myWebSafe3 == null) {
                                                                                                            return;
                                                                                                        }
                                                                                                        myWebSafe3.loadUrl(MainUtil.f3(str8, false));
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
                                                            } else if (dialogPreview4.h0.startsWith("image")) {
                                                                if (TextUtils.isEmpty(str4)) {
                                                                    str4 = MainUtil.U3(dialogPreview4.e0, false);
                                                                }
                                                                dialogPreview4.J(dialogPreview4.e0, str4);
                                                            }
                                                        }
                                                        if (dialogPreview4.i0 == 0) {
                                                            dialogPreview4.K(dialogPreview4.e0);
                                                        }
                                                        if (PrefRead.r && dialogPreview4.i0 != 6) {
                                                            dialogPreview4.k0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.11.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    Handler handler4;
                                                                    final DialogPreview dialogPreview5 = DialogPreview.this;
                                                                    if (PrefRead.r) {
                                                                        if (dialogPreview5.D0 == null && dialogPreview5.m0 != null && (handler4 = dialogPreview5.i) != null) {
                                                                            handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.12
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MyFadeFrame Z0;
                                                                                    if (PrefRead.r) {
                                                                                        final DialogPreview dialogPreview6 = DialogPreview.this;
                                                                                        if (dialogPreview6.D0 == null && dialogPreview6.m0 != null && (Z0 = VideoActivity.Z0(dialogPreview6.a0)) != null) {
                                                                                            dialogPreview6.D0 = Z0;
                                                                                            Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogPreview.13
                                                                                                @Override // com.mycompany.app.view.MyFadeListener
                                                                                                public final void a(boolean z) {
                                                                                                    DialogPreview dialogPreview7;
                                                                                                    MyFadeFrame myFadeFrame2;
                                                                                                    if (!z && (myFadeFrame2 = (dialogPreview7 = DialogPreview.this).D0) != null && dialogPreview7.m0 != null) {
                                                                                                        myFadeFrame2.f();
                                                                                                        dialogPreview7.m0.removeView(dialogPreview7.D0);
                                                                                                        dialogPreview7.D0 = null;
                                                                                                    }
                                                                                                }

                                                                                                @Override // com.mycompany.app.view.MyFadeListener
                                                                                                public final void b(boolean z, boolean z2) {
                                                                                                }
                                                                                            });
                                                                                            dialogPreview6.D0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogPreview.14
                                                                                                @Override // android.view.View.OnTouchListener
                                                                                                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                                                                                                    boolean z = PrefRead.r;
                                                                                                    DialogPreview dialogPreview7 = DialogPreview.this;
                                                                                                    if (z) {
                                                                                                        PrefRead.r = false;
                                                                                                        PrefSet.d(8, dialogPreview7.b0, "mGuidePrev", false);
                                                                                                    }
                                                                                                    MyFadeFrame myFadeFrame2 = dialogPreview7.D0;
                                                                                                    if (myFadeFrame2 != null) {
                                                                                                        myFadeFrame2.d(true);
                                                                                                    }
                                                                                                    return false;
                                                                                                }
                                                                                            });
                                                                                            dialogPreview6.m0.addView(dialogPreview6.D0, -1, -1);
                                                                                            return;
                                                                                        }
                                                                                        return;
                                                                                    }
                                                                                    int i9 = DialogPreview.j1;
                                                                                }
                                                                            });
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    int i9 = DialogPreview.j1;
                                                                }
                                                            });
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

    public static void B(DialogPreview dialogPreview, int i) {
        MyPlayerView myPlayerView;
        if (i >= 0 && (myPlayerView = dialogPreview.n0) != null) {
            dialogPreview.q0 = -1;
            if (myPlayerView.getDuration() != 0) {
                myPlayerView.r = i;
                myPlayerView.m.seekTo(i);
            }
            MyCoverView myCoverView = dialogPreview.w0;
            if (myCoverView != null) {
                dialogPreview.H0 = true;
                myCoverView.setBackground(null);
                dialogPreview.w0.m(true);
            }
        }
    }

    public final void C() {
        if (this.H0) {
            this.H0 = false;
            this.I0 = 0L;
            AppCompatTextView appCompatTextView = this.v0;
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            MyCoverView myCoverView = this.w0;
            if (myCoverView != null) {
                myCoverView.setBackground(null);
                this.w0.f(true);
            }
        }
    }

    public final void D(boolean z) {
        if (this.m0 != null && this.i0 != 6) {
            if (z) {
                z = q();
            }
            ViewGroup.LayoutParams layoutParams = this.m0.getLayoutParams();
            if (z) {
                layoutParams.height = (int) MainUtil.G(this.b0, 280.0f);
                ZoomImageAttacher zoomImageAttacher = this.E0;
                if (zoomImageAttacher != null) {
                    zoomImageAttacher.u();
                    return;
                }
                return;
            }
            layoutParams.height = (int) MainUtil.G(this.b0, 320.0f);
            ZoomImageAttacher zoomImageAttacher2 = this.E0;
            if (zoomImageAttacher2 != null) {
                zoomImageAttacher2.u();
            }
        }
    }

    public final void E() {
        MyWebSafe myWebSafe = this.s0;
        if (myWebSafe != null) {
            myWebSafe.onPause();
        }
        MyPlayerView myPlayerView = this.n0;
        if (myPlayerView != null) {
            myPlayerView.e();
        }
    }

    public final void F() {
        MyPlayerView myPlayerView = this.n0;
        if (myPlayerView != null) {
            myPlayerView.e();
            MainUtil.R6(myPlayerView.f);
            myPlayerView.f = null;
            myPlayerView.f18865c = null;
            myPlayerView.g = null;
            myPlayerView.h = null;
            myPlayerView.i = null;
            myPlayerView.j = null;
            FrameLayout frameLayout = this.m0;
            if (frameLayout != null) {
                frameLayout.removeView(this.n0);
            }
            this.n0 = null;
        }
        VideoSeekControl videoSeekControl = this.o0;
        if (videoSeekControl != null) {
            videoSeekControl.g();
            MyFadeFrame myFadeFrame = this.x0;
            if (myFadeFrame != null) {
                myFadeFrame.removeView(this.o0);
            }
            this.o0 = null;
        }
    }

    public final void G() {
        MyWebSafe myWebSafe = this.s0;
        if (myWebSafe != null) {
            if (this.t0) {
                this.t0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.s0);
            this.s0 = null;
        }
        View view = this.u0;
        if (view != null) {
            FrameLayout frameLayout = this.m0;
            if (frameLayout != null) {
                frameLayout.removeView(view);
            }
            this.u0 = null;
        }
    }

    public final void H() {
        MyWebSafe myWebSafe = this.s0;
        if (myWebSafe != null) {
            myWebSafe.onResume();
        }
        MyPlayerView myPlayerView = this.n0;
        if (myPlayerView != null) {
            myPlayerView.c(myPlayerView.h, myPlayerView.i, myPlayerView.j);
        }
    }

    public final void I() {
        if (this.E0 == null && this.r0 != null) {
            ZoomVideoAttacher zoomVideoAttacher = this.F0;
            if (zoomVideoAttacher != null) {
                zoomVideoAttacher.j();
                this.F0 = null;
            }
            this.G0 = null;
            this.E0 = new ZoomImageAttacher(this.r0, new ZoomImageAttacher.AttacherListener() { // from class: com.mycompany.app.dialog.DialogPreview.33
                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final void C(RectF rectF, boolean z) {
                }

                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final void D(MotionEvent motionEvent, boolean z) {
                    boolean z2;
                    float f;
                    DialogPreview dialogPreview = DialogPreview.this;
                    ZoomImageAttacher zoomImageAttacher = dialogPreview.E0;
                    if (zoomImageAttacher != null) {
                        RectF rectF = zoomImageAttacher.u;
                        if (rectF == null) {
                            f = 0.0f;
                        } else {
                            f = rectF.top;
                        }
                        if (f <= -1.0f) {
                            z2 = false;
                            dialogPreview.y(z2);
                        }
                    }
                    z2 = true;
                    dialogPreview.y(z2);
                }

                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final boolean k() {
                    MyFadeFrame myFadeFrame;
                    DialogPreview dialogPreview = DialogPreview.this;
                    if (dialogPreview.i0 == 4 && (myFadeFrame = dialogPreview.x0) != null) {
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
            });
        }
    }

    public final void J(String str, String str2) {
        if (this.k0 == null) {
            return;
        }
        this.L0 = str2;
        this.i0 = 4;
        F();
        G();
        if (this.r0 == null) {
            ImageView imageView = new ImageView(this.a0);
            this.r0 = imageView;
            this.m0.addView(imageView, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        MyFadeFrame myFadeFrame = this.x0;
        if (myFadeFrame != null) {
            myFadeFrame.h(false);
        }
        M();
        if (Compress.I(MainUtil.V3(str, null, null, true))) {
            this.R0 = str;
            s(new AnonymousClass18());
        } else {
            this.P0 = str;
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.16
                @Override // java.lang.Runnable
                public final void run() {
                    DialogPreview dialogPreview = DialogPreview.this;
                    MainActivity mainActivity = dialogPreview.a0;
                    if (mainActivity != null) {
                        if (dialogPreview.J0 == null) {
                            dialogPreview.J0 = GlideApp.a(mainActivity);
                        }
                        Handler handler = dialogPreview.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.16.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPreview dialogPreview2 = DialogPreview.this;
                                String str3 = dialogPreview2.P0;
                                dialogPreview2.P0 = null;
                                if (dialogPreview2.J0 == null) {
                                    return;
                                }
                                boolean isNetworkUrl = URLUtil.isNetworkUrl(str3);
                                DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                if (isNetworkUrl) {
                                    dialogPreview2.K0 = true;
                                    ((RequestBuilder) dialogPreview2.J0.t(MainUtil.A1(dialogPreview2.b0, str3, dialogPreview2.f0)).e(diskCacheStrategy)).I(dialogPreview2.Q0).E(dialogPreview2.r0);
                                } else {
                                    dialogPreview2.K0 = false;
                                    ((RequestBuilder) dialogPreview2.J0.u(str3).e(diskCacheStrategy)).I(dialogPreview2.Q0).E(dialogPreview2.r0);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public final void K(String str) {
        Handler handler;
        if (this.k0 != null) {
            if (!TextUtils.isEmpty(this.M0) && this.M0.equals(str)) {
                C();
                return;
            }
            this.M0 = str;
            this.i0 = 5;
            ImageView imageView = this.r0;
            String str2 = null;
            if (imageView != null) {
                FrameLayout frameLayout = this.m0;
                if (frameLayout != null) {
                    frameLayout.removeView(imageView);
                }
                this.r0 = null;
            }
            G();
            if (this.n0 == null) {
                MyPlayerView myPlayerView = new MyPlayerView(this.a0);
                this.n0 = myPlayerView;
                this.m0.addView(myPlayerView, 0, new FrameLayout.LayoutParams(-1, -1));
            }
            this.p0 = false;
            this.q0 = -1;
            this.n0.setListener(new MyPlayerView.PlayerViewListener() { // from class: com.mycompany.app.dialog.DialogPreview.28
                @Override // com.mycompany.app.view.MyPlayerView.PlayerViewListener
                public final void a(int i, int i2) {
                    ZoomVideoAttacher zoomVideoAttacher = DialogPreview.this.F0;
                    if (zoomVideoAttacher != null) {
                        zoomVideoAttacher.k(i, i2, 0, true);
                    }
                }

                @Override // com.mycompany.app.view.MyPlayerView.PlayerViewListener
                public final void b(boolean z) {
                    DialogPreview dialogPreview = DialogPreview.this;
                    if (z) {
                        int i = DialogPreview.j1;
                        dialogPreview.M();
                        return;
                    }
                    int i2 = DialogPreview.j1;
                    dialogPreview.C();
                    if (!dialogPreview.p0) {
                        dialogPreview.p0 = true;
                        VideoSeekControl videoSeekControl = dialogPreview.o0;
                        if (videoSeekControl != null) {
                            videoSeekControl.k();
                        }
                    }
                }

                @Override // com.mycompany.app.view.MyPlayerView.PlayerViewListener
                public final void c() {
                    VideoSeekControl videoSeekControl = DialogPreview.this.o0;
                    if (videoSeekControl != null) {
                        videoSeekControl.k();
                    }
                }

                @Override // com.mycompany.app.view.MyPlayerView.PlayerViewListener
                public final void d() {
                    int i = DialogPreview.j1;
                    final DialogPreview dialogPreview = DialogPreview.this;
                    dialogPreview.C();
                    dialogPreview.F();
                    Handler handler2 = dialogPreview.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.32
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPreview dialogPreview2 = DialogPreview.this;
                            if (!dialogPreview2.N0) {
                                dialogPreview2.N0 = true;
                                dialogPreview2.M0 = null;
                                dialogPreview2.K(dialogPreview2.e0);
                            } else {
                                if (dialogPreview2.j0) {
                                    dialogPreview2.L(dialogPreview2.e0);
                                    return;
                                }
                                String U3 = MainUtil.U3(dialogPreview2.e0, false);
                                String t2 = MainUtil.t2(U3);
                                if (!TextUtils.isEmpty(t2) && t2.startsWith("image")) {
                                    dialogPreview2.h0 = t2;
                                    dialogPreview2.J(dialogPreview2.e0, U3);
                                } else {
                                    dialogPreview2.L(dialogPreview2.e0);
                                }
                            }
                        }
                    }, 400L);
                }
            });
            if (this.F0 == null && this.n0 != null) {
                ZoomImageAttacher zoomImageAttacher = this.E0;
                if (zoomImageAttacher != null) {
                    zoomImageAttacher.r();
                    this.E0 = null;
                }
                this.G0 = null;
                this.F0 = new ZoomVideoAttacher(this.n0, new ZoomVideoAttacher.VideoAttacherListener() { // from class: com.mycompany.app.dialog.DialogPreview.34
                    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
                    public final void K(RectF rectF) {
                    }

                    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
                    public final boolean k() {
                        MyFadeFrame myFadeFrame;
                        DialogPreview dialogPreview = DialogPreview.this;
                        if (dialogPreview.n0 != null && (myFadeFrame = dialogPreview.x0) != null) {
                            myFadeFrame.i(!myFadeFrame.e());
                        }
                        return true;
                    }

                    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
                    public final boolean m() {
                        return false;
                    }

                    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
                    public final void q() {
                    }

                    @Override // com.mycompany.app.zoom.ZoomVideoAttacher.VideoAttacherListener
                    public final void x(MotionEvent motionEvent) {
                        boolean z;
                        float f;
                        DialogPreview dialogPreview = DialogPreview.this;
                        ZoomVideoAttacher zoomVideoAttacher = dialogPreview.F0;
                        if (zoomVideoAttacher != null) {
                            RectF rectF = zoomVideoAttacher.v;
                            if (rectF == null) {
                                f = 0.0f;
                            } else {
                                f = rectF.top;
                            }
                            if (f <= -1.0f) {
                                z = false;
                                dialogPreview.y(z);
                            }
                        }
                        z = true;
                        dialogPreview.y(z);
                    }
                });
            }
            if (!this.N0) {
                str2 = this.f0;
            }
            MyPlayerView myPlayerView2 = this.n0;
            myPlayerView2.getClass();
            if (!TextUtils.isEmpty(str)) {
                myPlayerView2.c(Uri.parse(str), str, str2);
            }
            if (this.o0 != null || (handler = this.i) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.29
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPreview dialogPreview = DialogPreview.this;
                    if (dialogPreview.n0 != null && dialogPreview.x0 != null && dialogPreview.o0 == null) {
                        dialogPreview.o0 = new VideoSeekControl(dialogPreview.b0);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams.gravity = 80;
                        dialogPreview.x0.addView(dialogPreview.o0, layoutParams);
                        Handler handler2 = dialogPreview.i;
                        if (handler2 != null) {
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.30
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final DialogPreview dialogPreview2 = DialogPreview.this;
                                    VideoSeekControl videoSeekControl = dialogPreview2.o0;
                                    if (videoSeekControl == null) {
                                        return;
                                    }
                                    videoSeekControl.i(dialogPreview2.b0, new VideoSeekControl.SeekCtrlListener() { // from class: com.mycompany.app.dialog.DialogPreview.31
                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final boolean a() {
                                            ZoomVideoAttacher zoomVideoAttacher = DialogPreview.this.F0;
                                            if (zoomVideoAttacher == null) {
                                                return false;
                                            }
                                            return zoomVideoAttacher.n;
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final void b(int i, boolean z) {
                                            DialogPreview dialogPreview3 = DialogPreview.this;
                                            if (dialogPreview3.n0 != null) {
                                                if (!z) {
                                                    DialogPreview.B(dialogPreview3, i);
                                                    return;
                                                }
                                                dialogPreview3.q0 = i;
                                                if (!dialogPreview3.O0) {
                                                    Runnable runnable = dialogPreview3.g1;
                                                    dialogPreview3.h1 = i;
                                                    FrameLayout frameLayout2 = dialogPreview3.k0;
                                                    if (frameLayout2 != null) {
                                                        frameLayout2.removeCallbacks(runnable);
                                                        dialogPreview3.k0.post(runnable);
                                                    }
                                                    dialogPreview3.q0 = -1;
                                                }
                                            }
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final void c() {
                                            DialogPreview dialogPreview3 = DialogPreview.this;
                                            MyPlayerView myPlayerView3 = dialogPreview3.n0;
                                            if (myPlayerView3 == null) {
                                                return;
                                            }
                                            myPlayerView3.f(false, true);
                                            dialogPreview3.C();
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final int e() {
                                            MyPlayerView myPlayerView3 = DialogPreview.this.n0;
                                            if (myPlayerView3 == null) {
                                                return 0;
                                            }
                                            return myPlayerView3.getPosition();
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final int f() {
                                            MyPlayerView myPlayerView3 = DialogPreview.this.n0;
                                            if (myPlayerView3 == null) {
                                                return 0;
                                            }
                                            return myPlayerView3.getDuration();
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final boolean g() {
                                            boolean z;
                                            MyPlayerView myPlayerView3 = DialogPreview.this.n0;
                                            if (myPlayerView3 != null) {
                                                MediaPlayer mediaPlayer = myPlayerView3.m;
                                                if (mediaPlayer == null) {
                                                    z = false;
                                                } else {
                                                    z = myPlayerView3.o;
                                                }
                                                if (z) {
                                                    return mediaPlayer.isPlaying();
                                                }
                                            }
                                            return false;
                                        }

                                        @Override // com.mycompany.app.video.VideoSeekControl.SeekCtrlListener
                                        public final void j() {
                                            MyPlayerView myPlayerView3 = DialogPreview.this.n0;
                                            if (myPlayerView3 == null) {
                                                return;
                                            }
                                            myPlayerView3.f(true, true);
                                        }
                                    });
                                }
                            });
                        }
                    }
                }
            });
        }
    }

    public final void L(String str) {
        if (this.k0 != null) {
            if ("blob:".equals(this.h0)) {
                this.h0 = "image/*";
                this.i0 = 4;
            } else {
                this.i0 = 5;
            }
            F();
            ImageView imageView = this.r0;
            if (imageView != null) {
                FrameLayout frameLayout = this.m0;
                if (frameLayout != null) {
                    frameLayout.removeView(imageView);
                }
                this.r0 = null;
            }
            if (this.s0 == null) {
                MyWebSafe myWebSafe = new MyWebSafe(this.a0);
                this.s0 = myWebSafe;
                MainApp.I(this.b0, myWebSafe);
                this.s0.setBackgroundColor(-16777216);
                this.m0.addView(this.s0, 0, new FrameLayout.LayoutParams(-1, -1));
            }
            this.T0 = str;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.20
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPreview dialogPreview = DialogPreview.this;
                    String str2 = dialogPreview.T0;
                    dialogPreview.T0 = null;
                    MyWebSafe myWebSafe2 = dialogPreview.s0;
                    if (myWebSafe2 != null) {
                        MainUtil.W7(myWebSafe2, true);
                        dialogPreview.s0.setWebViewClient(new LocalWebViewClient());
                        dialogPreview.s0.setDownloadListener(new DownloadListener() { // from class: com.mycompany.app.dialog.DialogPreview.21
                            @Override // android.webkit.DownloadListener
                            public final void onDownloadStart(String str3, String str4, String str5, String str6, long j) {
                                final DialogPreview dialogPreview2 = DialogPreview.this;
                                MyWebSafe myWebSafe3 = dialogPreview2.s0;
                                if (myWebSafe3 != null) {
                                    String str7 = null;
                                    myWebSafe3.setDownloadListener(null);
                                    if (!TextUtils.isEmpty(str3)) {
                                        if (!str3.equals(dialogPreview2.d0)) {
                                            dialogPreview2.d0 = str3;
                                            if (TextUtils.isEmpty(str6)) {
                                                str7 = MainUtil.U3(str3, false);
                                                str6 = MainUtil.t2(str7);
                                            }
                                            if (!TextUtils.isEmpty(str6) && str6.startsWith("video")) {
                                                dialogPreview2.M();
                                                dialogPreview2.s0.loadUrl(MainUtil.f3(str3, true));
                                                return;
                                            }
                                        }
                                        dialogPreview2.V0 = str3;
                                        dialogPreview2.W0 = str7;
                                        dialogPreview2.X0 = str6;
                                        Handler handler2 = dialogPreview2.i;
                                        if (handler2 == null) {
                                            return;
                                        }
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.23
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final DialogPreview dialogPreview3 = DialogPreview.this;
                                                String str8 = dialogPreview3.V0;
                                                String str9 = dialogPreview3.W0;
                                                String str10 = dialogPreview3.X0;
                                                dialogPreview3.V0 = null;
                                                dialogPreview3.W0 = null;
                                                dialogPreview3.X0 = null;
                                                if (dialogPreview3.s0 != null) {
                                                    dialogPreview3.G();
                                                    dialogPreview3.Y0 = str8;
                                                    dialogPreview3.Z0 = str9;
                                                    dialogPreview3.a1 = str10;
                                                    Handler handler3 = dialogPreview3.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.24
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogPreview dialogPreview4 = DialogPreview.this;
                                                            String str11 = dialogPreview4.Y0;
                                                            String str12 = dialogPreview4.Z0;
                                                            String str13 = dialogPreview4.a1;
                                                            dialogPreview4.Y0 = null;
                                                            dialogPreview4.Z0 = null;
                                                            dialogPreview4.a1 = null;
                                                            if (dialogPreview4.k0 == null) {
                                                                return;
                                                            }
                                                            if (TextUtils.isEmpty(str13)) {
                                                                if (TextUtils.isEmpty(str12)) {
                                                                    str12 = MainUtil.U3(str11, false);
                                                                }
                                                                str13 = MainUtil.t2(str12);
                                                            }
                                                            if (!TextUtils.isEmpty(str13) && str13.startsWith("image")) {
                                                                dialogPreview4.J(str11, str12);
                                                            } else {
                                                                dialogPreview4.K(str11);
                                                            }
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogPreview.U0 = str2;
                        Handler handler2 = dialogPreview.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.22
                            /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[ORIG_RETURN, RETURN] */
                            /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void run() {
                                /*
                                    r7 = this;
                                    com.mycompany.app.dialog.DialogPreview r0 = com.mycompany.app.dialog.DialogPreview.this
                                    java.lang.String r1 = r0.U0
                                    r2 = 0
                                    r0.U0 = r2
                                    com.mycompany.app.view.MyWebSafe r3 = r0.s0
                                    if (r3 != 0) goto Ld
                                    goto L86
                                Ld:
                                    com.mycompany.app.view.MyFadeFrame r3 = r0.x0
                                    if (r3 == 0) goto L15
                                    r4 = 0
                                    r3.h(r4)
                                L15:
                                    r0.M()
                                    r3 = 1
                                    java.lang.String r4 = com.mycompany.app.main.MainUtil.J1(r1, r3)
                                    boolean r5 = android.text.TextUtils.isEmpty(r4)
                                    if (r5 == 0) goto L24
                                    goto L68
                                L24:
                                    java.lang.String r5 = "dcinside.com"
                                    boolean r5 = r4.endsWith(r5)
                                    if (r5 != 0) goto L35
                                    java.lang.String r5 = "dcinside.co.kr"
                                    boolean r5 = r4.endsWith(r5)
                                    if (r5 != 0) goto L35
                                    goto L68
                                L35:
                                    int r4 = r4.length()
                                    int r5 = r4 + 1
                                    java.lang.String r6 = "viewmovie"
                                    boolean r5 = r1.startsWith(r6, r5)
                                    if (r5 != 0) goto L44
                                    goto L68
                                L44:
                                    int r4 = r4 + 10
                                    java.lang.String r5 = ".php"
                                    int r4 = r1.indexOf(r5, r4)
                                    r5 = -1
                                    if (r4 != r5) goto L50
                                    goto L68
                                L50:
                                    int r4 = r1.length()
                                    int r4 = r4 + (-4)
                                    java.lang.String r6 = "&type=mp4"
                                    int r4 = r1.lastIndexOf(r6, r4)
                                    if (r4 == r5) goto L68
                                    com.mycompany.app.view.MyWebSafe r4 = r0.s0
                                    java.lang.String r1 = com.mycompany.app.main.MainUtil.f3(r1, r3)
                                    r4.loadUrl(r1)
                                    goto L82
                                L68:
                                    java.lang.String r3 = r0.f0
                                    com.mycompany.app.view.MyWebSafe r4 = r0.s0
                                    if (r4 != 0) goto L6f
                                    goto L82
                                L6f:
                                    android.content.Context r4 = r0.b0
                                    java.util.HashMap r3 = com.mycompany.app.main.MainUtil.v0(r4, r1, r3)
                                    if (r3 == 0) goto L7d
                                    com.mycompany.app.view.MyWebSafe r4 = r0.s0
                                    r4.loadUrl(r1, r3)
                                    goto L82
                                L7d:
                                    com.mycompany.app.view.MyWebSafe r3 = r0.s0
                                    r3.loadUrl(r1)
                                L82:
                                    android.view.GestureDetector r1 = r0.G0
                                    if (r1 == 0) goto L87
                                L86:
                                    return
                                L87:
                                    com.mycompany.app.zoom.ZoomImageAttacher r1 = r0.E0
                                    if (r1 == 0) goto L90
                                    r1.r()
                                    r0.E0 = r2
                                L90:
                                    com.mycompany.app.zoom.ZoomVideoAttacher r1 = r0.F0
                                    if (r1 == 0) goto L99
                                    r1.j()
                                    r0.F0 = r2
                                L99:
                                    android.view.GestureDetector r1 = new android.view.GestureDetector
                                    android.content.Context r2 = r0.b0
                                    com.mycompany.app.dialog.DialogPreview$35 r3 = new com.mycompany.app.dialog.DialogPreview$35
                                    r3.<init>()
                                    r1.<init>(r2, r3)
                                    r0.G0 = r1
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogPreview.AnonymousClass22.run():void");
                            }
                        });
                    }
                }
            });
        }
    }

    public final void M() {
        if (this.w0 == null) {
            return;
        }
        this.H0 = true;
        this.I0 = System.currentTimeMillis();
        this.w0.setBackgroundColor(-16777216);
        this.w0.setForeSize(MainApp.z1);
        this.w0.m(true);
        this.w0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogPreview.15
            @Override // java.lang.Runnable
            public final void run() {
                DialogPreview dialogPreview = DialogPreview.this;
                if (dialogPreview.v0 != null && dialogPreview.I0 != 0 && System.currentTimeMillis() - dialogPreview.I0 >= 5000) {
                    dialogPreview.I0 = 0L;
                    dialogPreview.v0.setVisibility(0);
                }
            }
        }, 5000L);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        GlideRequests glideRequests = this.J0;
        if (glideRequests != null) {
            ImageView imageView = this.r0;
            if (imageView != null) {
                glideRequests.o(imageView);
            }
            this.J0 = null;
        }
        MyDialogRelative myDialogRelative = this.l0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.l0 = null;
        }
        MyPlayerView myPlayerView = this.n0;
        if (myPlayerView != null) {
            myPlayerView.e();
            MainUtil.R6(myPlayerView.f);
            myPlayerView.f = null;
            myPlayerView.f18865c = null;
            myPlayerView.g = null;
            myPlayerView.h = null;
            myPlayerView.i = null;
            myPlayerView.j = null;
            this.n0 = null;
        }
        VideoSeekControl videoSeekControl = this.o0;
        if (videoSeekControl != null) {
            videoSeekControl.g();
            this.o0 = null;
        }
        MyWebSafe myWebSafe = this.s0;
        if (myWebSafe != null) {
            if (this.t0) {
                this.t0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.s0);
            this.s0 = null;
        }
        MyCoverView myCoverView = this.w0;
        if (myCoverView != null) {
            myCoverView.i();
            this.w0 = null;
        }
        MyFadeFrame myFadeFrame = this.x0;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.x0 = null;
        }
        MyButtonImage myButtonImage = this.y0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.y0 = null;
        }
        MyButtonImage myButtonImage2 = this.z0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.z0 = null;
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
        MyButtonImage myButtonImage5 = this.C0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.C0 = null;
        }
        MyFadeFrame myFadeFrame2 = this.D0;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.D0 = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.E0;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.E0 = null;
        }
        ZoomVideoAttacher zoomVideoAttacher = this.F0;
        if (zoomVideoAttacher != null) {
            zoomVideoAttacher.j();
            this.F0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.h0 = null;
        this.k0 = null;
        this.m0 = null;
        this.r0 = null;
        this.u0 = null;
        this.v0 = null;
        this.G0 = null;
        this.L0 = null;
        this.M0 = null;
        super.dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.x0 != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.O0 = false;
                    this.h1 = this.q0;
                    FrameLayout frameLayout = this.k0;
                    if (frameLayout != null) {
                        Runnable runnable = this.g1;
                        frameLayout.removeCallbacks(runnable);
                        this.k0.post(runnable);
                    }
                    this.q0 = -1;
                }
            } else {
                this.q0 = -1;
                this.O0 = true;
            }
        }
        GestureDetector gestureDetector = this.G0;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
