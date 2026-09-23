package com.mycompany.app.main.image;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Executors;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogDownBlob;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.editor.EditorActivity;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.ocr.OcrDetector;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyGlideTarget;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MySizeImage;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.view.MyTextView;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransOcrCtrl;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class MainImagePreview extends MainActivity {
    public static boolean E2;
    public String A1;
    public Bitmap A2;
    public ZoomImageAttacher B1;
    public String B2;
    public MyPopupMenu C1;
    public MainUri.UriItem C2;
    public DialogDownUrl D1;
    public int D2;
    public DialogSetDown E1;
    public DialogDownBlob F1;
    public DialogPreview G1;
    public ShareTask H1;
    public boolean I1;
    public DisplayImageOptions J1;
    public GestureDetector K1;
    public long L1;
    public GlideRequests M1;
    public boolean N1;
    public int O1;
    public int P1;
    public long Q1;
    public HttpURLConnection R1;
    public boolean S1;
    public boolean T1;
    public boolean U1;
    public FrameLayout V1;
    public WebTransOcrCtrl W1;
    public DialogTransLang X1;
    public DialogConfirm Y1;
    public DialogConfirm Z1;
    public DialogConfirm a2;
    public DialogConfirm b2;
    public DialogSeekSimple c2;
    public MyPopupMenu d2;
    public MyPopupMenu e2;
    public Context f1;
    public OcrDetector f2;
    public FrameLayout g1;
    public Drawable g2;
    public MyFadeFrame h1;
    public Bitmap h2;
    public MyButtonImage i1;
    public String i2;
    public MyButtonImage j1;
    public MyButtonImage k1;
    public MyButtonImage l1;
    public boolean l2;
    public MyButtonImage m1;
    public String m2;
    public MyButtonImage n1;
    public String n2;
    public View o1;
    public String o2;
    public MyTextView p1;
    public String p2;
    public MySizeImage q1;
    public String q2;
    public MyCoverView r1;
    public boolean r2;
    public MyWebSafe s1;
    public boolean t1;
    public MySnackbar t2;
    public boolean u1;
    public WebTransOcrCtrl u2;
    public boolean v1;
    public View v2;
    public boolean w1;
    public Bitmap w2;
    public String x1;
    public boolean x2;
    public String y1;
    public Bitmap y2;
    public String z1;
    public String z2;
    public final RequestListener j2 = new RequestListener<Drawable>() { // from class: com.mycompany.app.main.image.MainImagePreview.15
        @Override // com.bumptech.glide.request.RequestListener
        public final boolean b(GlideException glideException) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.q1 == null) {
                return true;
            }
            if (glideException != null) {
                String obj = glideException.toString();
                if (!TextUtils.isEmpty(obj) && obj.contains("Mark has been invalidated")) {
                    MainImagePreview.C0(mainImagePreview, mainImagePreview.x1);
                    return true;
                }
            }
            if (mainImagePreview.w1 && !mainImagePreview.I1) {
                mainImagePreview.I1 = true;
                String a3 = MainUtil.a3(mainImagePreview.x1);
                if (!TextUtils.isEmpty(a3) && !a3.equals(mainImagePreview.x1)) {
                    mainImagePreview.x1 = a3;
                    mainImagePreview.q1.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.15.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImagePreview.B0(MainImagePreview.this);
                        }
                    });
                    return true;
                }
            }
            if (mainImagePreview.w1 && !TextUtils.isEmpty(mainImagePreview.z1)) {
                boolean z = MainConst.f16452a;
                mainImagePreview.z1 = null;
                mainImagePreview.q1.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.15.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview.B0(MainImagePreview.this);
                    }
                });
                return true;
            }
            mainImagePreview.r1.f(true);
            if (!TextUtils.isEmpty(mainImagePreview.A1)) {
                Intent o4 = MainUtil.o4(mainImagePreview.getApplicationContext());
                o4.putExtra("EXTRA_PATH", mainImagePreview.A1);
                o4.addFlags(67108864);
                mainImagePreview.startActivity(o4);
                mainImagePreview.finish();
                return true;
            }
            mainImagePreview.Z0();
            return true;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public final void d(Object obj) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.q1 != null) {
                mainImagePreview.r1.f(true);
                mainImagePreview.q1.setScaleType(ImageView.ScaleType.FIT_CENTER);
                mainImagePreview.Y0();
                mainImagePreview.G0();
            }
        }
    };
    public final RequestListener k2 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.main.image.MainImagePreview.17
        @Override // com.bumptech.glide.request.RequestListener
        public final boolean b(GlideException glideException) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            MySizeImage mySizeImage = mainImagePreview.q1;
            if (mySizeImage == null) {
                return true;
            }
            mySizeImage.setLayerType(0, null);
            if (glideException != null) {
                String obj = glideException.toString();
                if (!TextUtils.isEmpty(obj) && obj.contains("Mark has been invalidated")) {
                    MainImagePreview.C0(mainImagePreview, mainImagePreview.x1);
                    return true;
                }
            }
            if (mainImagePreview.w1 && !mainImagePreview.I1) {
                mainImagePreview.I1 = true;
                String a3 = MainUtil.a3(mainImagePreview.x1);
                if (!TextUtils.isEmpty(a3) && !a3.equals(mainImagePreview.x1)) {
                    mainImagePreview.x1 = a3;
                    mainImagePreview.q1.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.17.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImagePreview.B0(MainImagePreview.this);
                        }
                    });
                    return true;
                }
            }
            if (mainImagePreview.w1 && !TextUtils.isEmpty(mainImagePreview.z1)) {
                boolean z = MainConst.f16452a;
                mainImagePreview.z1 = null;
                mainImagePreview.q1.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.17.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview mainImagePreview2 = MainImagePreview.this;
                        boolean z2 = MainImagePreview.E2;
                        mainImagePreview2.m0(new AnonymousClass16());
                    }
                });
                return true;
            }
            mainImagePreview.r1.f(true);
            if (!TextUtils.isEmpty(mainImagePreview.A1)) {
                Intent o4 = MainUtil.o4(mainImagePreview.getApplicationContext());
                o4.putExtra("EXTRA_PATH", mainImagePreview.A1);
                o4.addFlags(67108864);
                mainImagePreview.startActivity(o4);
                mainImagePreview.finish();
                return true;
            }
            mainImagePreview.Z0();
            return true;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public final void d(Object obj) {
            PictureDrawable pictureDrawable = (PictureDrawable) obj;
            final MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.q1 != null) {
                mainImagePreview.r1.f(true);
                mainImagePreview.q1.setLayerType(1, null);
                mainImagePreview.q1.setScaleType(ImageView.ScaleType.FIT_CENTER);
                mainImagePreview.Y0();
                if (!mainImagePreview.N1 && mainImagePreview.p1 != null && !TextUtils.isEmpty(mainImagePreview.x1)) {
                    mainImagePreview.O1 = pictureDrawable.getIntrinsicWidth();
                    mainImagePreview.P1 = pictureDrawable.getIntrinsicHeight();
                    mainImagePreview.Q1 = 0L;
                    mainImagePreview.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.30
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImagePreview mainImagePreview2 = MainImagePreview.this;
                            if (mainImagePreview2.w1) {
                                MainImagePreview.y0(mainImagePreview2);
                            } else {
                                if (TextUtils.isEmpty(mainImagePreview2.x1)) {
                                    return;
                                }
                                try {
                                    mainImagePreview2.Q1 = MainUtil.g1(mainImagePreview2.f1, mainImagePreview2.x1);
                                } catch (Exception unused) {
                                }
                                mainImagePreview2.a1();
                            }
                        }
                    });
                }
            }
        }
    };
    public final MyGlideTarget s2 = new MyGlideTarget<PictureDrawable>() { // from class: com.mycompany.app.main.image.MainImagePreview.44
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            PictureDrawable pictureDrawable = (PictureDrawable) obj;
            MainImagePreview mainImagePreview = MainImagePreview.this;
            String str = mainImagePreview.q2;
            boolean z = mainImagePreview.r2;
            mainImagePreview.q2 = null;
            if (z) {
                String str2 = mainImagePreview.x1;
                ShareTask shareTask = mainImagePreview.H1;
                if (shareTask != null) {
                    shareTask.f12839c = true;
                }
                mainImagePreview.H1 = null;
                MyButtonImage myButtonImage = mainImagePreview.j1;
                if (myButtonImage == null) {
                    return;
                }
                myButtonImage.post(new AnonymousClass46(str2, null, null, pictureDrawable));
                return;
            }
            mainImagePreview.X0(str, null, null, pictureDrawable);
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            boolean z = mainImagePreview.r2;
            mainImagePreview.q2 = null;
            MyCoverView myCoverView = mainImagePreview.r1;
            if (myCoverView == null) {
                return;
            }
            myCoverView.f(true);
            if (z) {
                MainUtil.e8(mainImagePreview, R.string.image_fail);
            } else {
                mainImagePreview.c1(0, null);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImagePreview$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.M1 == null) {
                mainImagePreview.M1 = GlideApp.a(mainImagePreview);
            }
            MySizeImage mySizeImage = mainImagePreview.q1;
            if (mySizeImage == null) {
                return;
            }
            mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.16.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    GlideRequests glideRequests = mainImagePreview2.M1;
                    if (glideRequests == null) {
                        return;
                    }
                    if (mainImagePreview2.w1) {
                        ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(MainUtil.A1(mainImagePreview2.f1, mainImagePreview2.x1, mainImagePreview2.z1))).I(mainImagePreview2.k2).E(mainImagePreview2.q1);
                    } else {
                        ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(mainImagePreview2.x1)).I(mainImagePreview2.k2).E(mainImagePreview2.q1);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImagePreview$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass22 implements Runnable {

        /* renamed from: com.mycompany.app.main.image.MainImagePreview$22$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainImagePreview mainImagePreview = MainImagePreview.this;
                MyWebSafe myWebSafe = mainImagePreview.s1;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    Handler handler = mainImagePreview.O0;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.22.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                            MainImagePreview mainImagePreview2 = MainImagePreview.this;
                            MyWebSafe myWebSafe2 = mainImagePreview2.s1;
                            if (myWebSafe2 != null) {
                                mainImagePreview2.u1 = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = MainImagePreview.this.O0;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.22.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                        MyWebSafe myWebSafe3 = mainImagePreview3.s1;
                                        if (myWebSafe3 == null) {
                                            return;
                                        }
                                        myWebSafe3.loadUrl(mainImagePreview3.x1);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            MyWebSafe myWebSafe = mainImagePreview.s1;
            if (myWebSafe != null) {
                MainUtil.W7(myWebSafe, true);
                Handler handler = mainImagePreview.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImagePreview$42, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass42 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f17098c;
        public final /* synthetic */ String f;

        public AnonymousClass42(String str, boolean z) {
            this.f17098c = z;
            this.f = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.M1 == null) {
                mainImagePreview.M1 = GlideApp.a(mainImagePreview);
            }
            MySizeImage mySizeImage = mainImagePreview.q1;
            if (mySizeImage == null) {
                return;
            }
            mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.42.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    GlideRequests glideRequests = mainImagePreview2.M1;
                    if (glideRequests == null) {
                        return;
                    }
                    boolean z = mainImagePreview2.w1;
                    Executor executor = Executors.f2488a;
                    if (z) {
                        GlideRequest glideRequest = (GlideRequest) ((GlideRequest) glideRequests.n()).O(MainUtil.A1(mainImagePreview2.f1, mainImagePreview2.x1, mainImagePreview2.z1));
                        glideRequest.H(new MyGlideTarget<File>() { // from class: com.mycompany.app.main.image.MainImagePreview.42.1.1
                            @Override // com.bumptech.glide.request.target.Target
                            public final void a(Object obj, Transition transition) {
                                File file = (File) obj;
                                AnonymousClass42 anonymousClass42 = AnonymousClass42.this;
                                MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                if (anonymousClass42.f17098c) {
                                    MainImagePreview mainImagePreview4 = MainImagePreview.this;
                                    String str = mainImagePreview4.x1;
                                    ShareTask shareTask = mainImagePreview4.H1;
                                    if (shareTask != null) {
                                        shareTask.f12839c = true;
                                    }
                                    mainImagePreview4.H1 = null;
                                    MyButtonImage myButtonImage = mainImagePreview4.j1;
                                    if (myButtonImage == null) {
                                        return;
                                    }
                                    myButtonImage.post(new AnonymousClass46(str, file, null, null));
                                    return;
                                }
                                if (file.length() > 0) {
                                    String str2 = anonymousClass42.f;
                                    String path = file.getPath();
                                    boolean z2 = MainImagePreview.E2;
                                    mainImagePreview3.X0(str2, path, null, null);
                                    return;
                                }
                                boolean z3 = MainImagePreview.E2;
                                mainImagePreview3.c1(0, null);
                            }

                            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
                            public final void g(Drawable drawable) {
                                AnonymousClass42 anonymousClass42 = AnonymousClass42.this;
                                MyCoverView myCoverView = MainImagePreview.this.r1;
                                if (myCoverView == null) {
                                    return;
                                }
                                myCoverView.f(true);
                                MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                if (anonymousClass42.f17098c) {
                                    MainUtil.e8(mainImagePreview3, R.string.image_fail);
                                } else {
                                    mainImagePreview3.c1(0, null);
                                }
                            }
                        }, null, glideRequest, executor);
                        return;
                    }
                    GlideRequest glideRequest2 = (GlideRequest) ((GlideRequest) glideRequests.d()).O(mainImagePreview2.x1);
                    glideRequest2.H(new MyGlideTarget<Bitmap>() { // from class: com.mycompany.app.main.image.MainImagePreview.42.1.2
                        @Override // com.bumptech.glide.request.target.Target
                        public final void a(Object obj, Transition transition) {
                            Bitmap bitmap = (Bitmap) obj;
                            AnonymousClass42 anonymousClass42 = AnonymousClass42.this;
                            boolean z2 = anonymousClass42.f17098c;
                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                            if (z2) {
                                String str = mainImagePreview3.x1;
                                ShareTask shareTask = mainImagePreview3.H1;
                                if (shareTask != null) {
                                    shareTask.f12839c = true;
                                }
                                mainImagePreview3.H1 = null;
                                MyButtonImage myButtonImage = mainImagePreview3.j1;
                                if (myButtonImage == null) {
                                    return;
                                }
                                myButtonImage.post(new AnonymousClass46(str, null, bitmap, null));
                                return;
                            }
                            String str2 = anonymousClass42.f;
                            boolean z3 = MainImagePreview.E2;
                            mainImagePreview3.X0(str2, null, bitmap, null);
                        }

                        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
                        public final void g(Drawable drawable) {
                            AnonymousClass42 anonymousClass42 = AnonymousClass42.this;
                            MyCoverView myCoverView = MainImagePreview.this.r1;
                            if (myCoverView == null) {
                                return;
                            }
                            myCoverView.f(true);
                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                            if (anonymousClass42.f17098c) {
                                MainUtil.e8(mainImagePreview3, R.string.image_fail);
                            } else {
                                mainImagePreview3.c1(0, null);
                            }
                        }
                    }, null, glideRequest2, executor);
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.main.image.MainImagePreview$46, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass46 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f17103c;
        public final /* synthetic */ File f;
        public final /* synthetic */ Bitmap g;
        public final /* synthetic */ PictureDrawable h;

        public AnonymousClass46(String str, File file, Bitmap bitmap, PictureDrawable pictureDrawable) {
            this.f17103c = str;
            this.f = file;
            this.g = bitmap;
            this.h = pictureDrawable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Bitmap bitmap = this.g;
            PictureDrawable pictureDrawable = this.h;
            MainImagePreview mainImagePreview = MainImagePreview.this;
            mainImagePreview.H1 = new ShareTask(mainImagePreview, this.f17103c, this.f, bitmap, pictureDrawable);
            mainImagePreview.H1.b(mainImagePreview.f1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImagePreview$53, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass53 implements Runnable {
        public AnonymousClass53() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            boolean isEmpty = TextUtils.isEmpty(mainImagePreview.i2);
            boolean z = !isEmpty;
            MyCoverView myCoverView = mainImagePreview.r1;
            if (myCoverView != null) {
                myCoverView.f(true);
            }
            WebTransOcrCtrl webTransOcrCtrl = mainImagePreview.W1;
            if (webTransOcrCtrl != null) {
                webTransOcrCtrl.h(PrefAlbum.y, z);
            }
            if (isEmpty) {
                MySizeImage mySizeImage = mainImagePreview.q1;
                if (mySizeImage != null) {
                    Drawable drawable = mainImagePreview.g2;
                    if (drawable != null) {
                        mySizeImage.setImageDrawable(drawable);
                        mainImagePreview.Y0();
                        return;
                    }
                    Bitmap bitmap = mainImagePreview.h2;
                    if (MainUtil.f6(bitmap)) {
                        mainImagePreview.q1.setImageBitmap(bitmap);
                        mainImagePreview.Y0();
                        return;
                    }
                    return;
                }
                return;
            }
            mainImagePreview.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.53.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    Bitmap q = Compress.q(mainImagePreview2.i2);
                    if (MainUtil.f6(q)) {
                        mainImagePreview2.w2 = q;
                        FrameLayout frameLayout = mainImagePreview2.g1;
                        if (frameLayout == null) {
                            return;
                        }
                        frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.53.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                Bitmap bitmap2 = mainImagePreview3.w2;
                                mainImagePreview3.w2 = null;
                                if (TextUtils.isEmpty(mainImagePreview3.i2) || MainImagePreview.this.q1 == null || !MainUtil.f6(bitmap2)) {
                                    return;
                                }
                                MainImagePreview.this.q1.setScaleType(ImageView.ScaleType.FIT_CENTER);
                                MainImagePreview.this.q1.setImageBitmap(bitmap2);
                                MainImagePreview.this.Y0();
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImagePreview$68, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass68 implements Runnable {

        /* renamed from: com.mycompany.app.main.image.MainImagePreview$68$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.main.image.MainImagePreview$68$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01761 implements Runnable {
                public RunnableC01761() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass68 anonymousClass68 = AnonymousClass68.this;
                    MainImagePreview mainImagePreview = MainImagePreview.this;
                    MySizeImage mySizeImage = mainImagePreview.q1;
                    if (mySizeImage == null) {
                        return;
                    }
                    if (mainImagePreview.g2 == null) {
                        mainImagePreview.g2 = mySizeImage.getDrawable();
                    }
                    Bitmap g4 = MainUtil.g4(MainImagePreview.this.q1, PrefImage.B, 1.0f, 0L, Bitmap.Config.ARGB_8888);
                    if (!MainUtil.f6(g4)) {
                        MainImagePreview.A0(MainImagePreview.this);
                        return;
                    }
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    mainImagePreview2.y2 = g4;
                    mainImagePreview2.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.68.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MySizeImage mySizeImage2;
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                            Bitmap bitmap = mainImagePreview3.y2;
                            mainImagePreview3.y2 = null;
                            ZoomImageAttacher zoomImageAttacher = mainImagePreview3.B1;
                            if (zoomImageAttacher != null) {
                                zoomImageAttacher.d();
                                zoomImageAttacher.h();
                                RectF j = zoomImageAttacher.j(zoomImageAttacher.i());
                                if (j != null) {
                                    int round = Math.round(j.left);
                                    int round2 = Math.round(j.top);
                                    if ((round != 0 || round2 != 0) && (mySizeImage2 = mainImagePreview3.q1) != null) {
                                        try {
                                            Bitmap createBitmap = Bitmap.createBitmap(bitmap, round, round2, mySizeImage2.getWidth() - (round * 2), mainImagePreview3.q1.getHeight() - (round2 * 2));
                                            if (MainUtil.f6(createBitmap)) {
                                                bitmap = createBitmap;
                                            }
                                        } catch (Exception | OutOfMemoryError unused) {
                                        }
                                    }
                                }
                            }
                            mainImagePreview3.h2 = bitmap;
                            FrameLayout frameLayout = MainImagePreview.this.g1;
                            if (frameLayout == null) {
                                return;
                            }
                            frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.68.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainImagePreview.A0(MainImagePreview.this);
                                }
                            });
                        }
                    });
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainImagePreview mainImagePreview = MainImagePreview.this;
                if (MainUtil.f6(mainImagePreview.h2)) {
                    MainImagePreview.A0(mainImagePreview);
                    return;
                }
                ZoomImageAttacher zoomImageAttacher = mainImagePreview.B1;
                if (zoomImageAttacher != null) {
                    zoomImageAttacher.u();
                }
                FrameLayout frameLayout = mainImagePreview.g1;
                if (frameLayout == null) {
                    return;
                }
                frameLayout.post(new RunnableC01761());
            }
        }

        public AnonymousClass68() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Bitmap bitmap;
            MainImagePreview mainImagePreview = MainImagePreview.this;
            boolean z = mainImagePreview.x2;
            if (mainImagePreview.g1 != null) {
                String D = OcrDetector.D(mainImagePreview.x1);
                if (!z) {
                    bitmap = Compress.q(D);
                } else {
                    bitmap = null;
                }
                mainImagePreview.z2 = D;
                mainImagePreview.A2 = bitmap;
                FrameLayout frameLayout = mainImagePreview.g1;
                if (frameLayout == null) {
                    return;
                }
                frameLayout.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ShareTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final File g;
        public Bitmap h;
        public final PictureDrawable i;
        public String j;
        public String k;
        public boolean l;

        public ShareTask(MainImagePreview mainImagePreview, String str, File file, Bitmap bitmap, PictureDrawable pictureDrawable) {
            WeakReference weakReference = new WeakReference(mainImagePreview);
            this.e = weakReference;
            if (((MainImagePreview) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = file;
            this.h = bitmap;
            this.i = pictureDrawable;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MainImagePreview mainImagePreview;
            String str;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainImagePreview = (MainImagePreview) weakReference.get()) != null && !this.f12839c) {
                String str2 = this.f;
                if (!TextUtils.isEmpty(str2)) {
                    this.k = MainUtil.V3(str2, null, null, true);
                    PictureDrawable pictureDrawable = this.i;
                    if (pictureDrawable != null) {
                        this.h = MainUtil.H(pictureDrawable, 0);
                    }
                    if (MainUtil.f6(this.h)) {
                        if (!Compress.C(this.k, true, true)) {
                            if (this.h.hasAlpha()) {
                                str = "image/png";
                            } else {
                                str = "image/jpg";
                            }
                            this.k = MainUtil.V3(str2, null, str, true);
                        }
                        String k0 = MainUtil.k0(mainImagePreview.f1, this.k);
                        this.j = k0;
                        this.l = MainUtil.p(mainImagePreview.f1, this.h, k0);
                        return;
                    }
                    File file = this.g;
                    if (file != null && file.length() > 0) {
                        String path = file.getPath();
                        if (!Compress.C(this.k, true, true)) {
                            this.k = MainUtil.V3(str2, null, "image/".concat(MainUtil.S0(path)), true);
                        }
                        String k02 = MainUtil.k0(mainImagePreview.f1, this.k);
                        this.j = k02;
                        this.l = MainUtil.u(path, k02);
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainImagePreview mainImagePreview;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainImagePreview = (MainImagePreview) weakReference.get()) != null) {
                mainImagePreview.H1 = null;
                MyCoverView myCoverView = mainImagePreview.r1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            MainImagePreview mainImagePreview;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainImagePreview = (MainImagePreview) weakReference.get()) != null) {
                mainImagePreview.H1 = null;
                if (!this.l) {
                    MyCoverView myCoverView = mainImagePreview.r1;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    MainUtil.e8(mainImagePreview, R.string.image_fail);
                    return;
                }
                if (MainUtil.Z7(4, mainImagePreview, this.j, this.k, "image/*")) {
                    mainImagePreview.d1(true);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onBlobRead(String str, int i, int i2, int i3) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.F1 != null) {
                if (!TextUtils.isEmpty(str)) {
                    mainImagePreview.F1.D(i, i2, i3, str);
                    return;
                }
                FrameLayout frameLayout = mainImagePreview.g1;
                if (frameLayout == null) {
                    return;
                }
                frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.WebAppInterface.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAppInterface webAppInterface = WebAppInterface.this;
                        MainImagePreview mainImagePreview2 = MainImagePreview.this;
                        boolean z = MainImagePreview.E2;
                        mainImagePreview2.I0();
                        MainImagePreview.this.c1(0, null);
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector] */
    public static void A0(MainImagePreview mainImagePreview) {
        String str = mainImagePreview.x1;
        String str2 = mainImagePreview.z2;
        Bitmap bitmap = mainImagePreview.A2;
        mainImagePreview.z2 = null;
        mainImagePreview.A2 = null;
        if (mainImagePreview.g1 != null) {
            if (MainUtil.f6(bitmap)) {
                mainImagePreview.b1(str2, true);
                return;
            }
            Bitmap bitmap2 = mainImagePreview.h2;
            if (!MainUtil.f6(bitmap2)) {
                MyCoverView myCoverView = mainImagePreview.r1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    return;
                }
                return;
            }
            OcrDetector ocrDetector = mainImagePreview.f2;
            if (ocrDetector != null) {
                ocrDetector.M(str, str2, bitmap2);
                return;
            }
            ?? obj = new Object();
            mainImagePreview.f2 = obj;
            FrameLayout frameLayout = mainImagePreview.g1;
            OcrDetector.OcrListener ocrListener = new OcrDetector.OcrListener() { // from class: com.mycompany.app.main.image.MainImagePreview.69
                @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                public final void b(boolean z) {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    if (z) {
                        MyCoverView myCoverView2 = mainImagePreview2.r1;
                        if (myCoverView2 != null) {
                            myCoverView2.m(true);
                            return;
                        }
                        return;
                    }
                    MyCoverView myCoverView3 = mainImagePreview2.r1;
                    if (myCoverView3 != null) {
                        myCoverView3.f(true);
                    }
                }

                @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                public final void c(int i, String str3, String str4) {
                    final MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    if (mainImagePreview2.f1 != null) {
                        MyCoverView myCoverView2 = mainImagePreview2.r1;
                        if (myCoverView2 != null) {
                            myCoverView2.f(true);
                        }
                        if (i != 2) {
                            if (i == 0) {
                                mainImagePreview2.b1(str4, true);
                                return;
                            }
                            if (i == 1) {
                                if (PrefAlbum.D && PrefAlbum.A != 5) {
                                    if (mainImagePreview2.Z1 != null) {
                                        return;
                                    }
                                    mainImagePreview2.L0();
                                    mainImagePreview2.S1 = true;
                                    MainApp.K1 = true;
                                    DialogConfirm dialogConfirm = new DialogConfirm((Activity) mainImagePreview2, mainImagePreview2.getString(R.string.ocr_fail) + "\n\n" + mainImagePreview2.getString(R.string.ocr_guide_2) + "\n" + mainImagePreview2.getString(R.string.ocr_guide_3), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.main.image.MainImagePreview.58
                                        @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                        public final void a(boolean z) {
                                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                            if (z) {
                                                PrefAlbum.D = false;
                                                PrefSet.d(0, mainImagePreview3.f1, "mOcrNoti", false);
                                            }
                                            boolean z2 = MainImagePreview.E2;
                                            mainImagePreview3.L0();
                                        }
                                    });
                                    mainImagePreview2.Z1 = dialogConfirm;
                                    dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImagePreview.59
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            boolean z = MainImagePreview.E2;
                                            MainImagePreview.this.L0();
                                        }
                                    });
                                    return;
                                }
                                MainUtil.e8(mainImagePreview2.f1, R.string.ocr_fail);
                                return;
                            }
                            MainUtil.e8(mainImagePreview2.f1, R.string.fail);
                        }
                    }
                }
            };
            obj.m = mainImagePreview;
            obj.n = frameLayout;
            obj.o = ocrListener;
            obj.J();
            mainImagePreview.f2.M(str, str2, bitmap2);
        }
    }

    public static void B0(MainImagePreview mainImagePreview) {
        boolean I;
        int lastIndexOf;
        if (mainImagePreview.q1 != null) {
            if (TextUtils.isEmpty(mainImagePreview.x1)) {
                mainImagePreview.Z0();
                return;
            }
            boolean z = false;
            mainImagePreview.d1(false);
            if (!mainImagePreview.w1) {
                if (!TextUtils.isEmpty(mainImagePreview.x1) && mainImagePreview.x1.startsWith("blob:")) {
                    if (mainImagePreview.s1 == null && mainImagePreview.g1 != null) {
                        MyWebSafe myWebSafe = new MyWebSafe(mainImagePreview);
                        mainImagePreview.s1 = myWebSafe;
                        MainApp.I(mainImagePreview.f1, myWebSafe);
                        mainImagePreview.g1.addView(mainImagePreview.s1, 0, new ViewGroup.LayoutParams(-1, -1));
                        mainImagePreview.L1 = System.currentTimeMillis();
                        mainImagePreview.r1.postDelayed(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.20
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                if (mainImagePreview2.f1 != null && mainImagePreview2.L1 != 0 && System.currentTimeMillis() - mainImagePreview2.L1 >= 5000) {
                                    mainImagePreview2.L1 = 0L;
                                    MainUtil.e8(mainImagePreview2, R.string.server_delay);
                                }
                            }
                        }, 5000L);
                        mainImagePreview.s1.setBackgroundColor(-16777216);
                        mainImagePreview.q1.setVisibility(8);
                        mainImagePreview.K1 = new GestureDetector(mainImagePreview, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.main.image.MainImagePreview.21
                            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                                MainImagePreview.F0(MainImagePreview.this);
                                return true;
                            }
                        });
                        Handler handler = mainImagePreview.O0;
                        if (handler != null) {
                            handler.post(new AnonymousClass22());
                            return;
                        }
                        return;
                    }
                    return;
                }
                String str = mainImagePreview.x1;
                if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(46)) != -1) {
                    String lowerCase = str.substring(lastIndexOf + 1).toLowerCase(Locale.US);
                    if (!TextUtils.isEmpty(lowerCase)) {
                        z = lowerCase.equals("gif");
                    }
                }
                if (z && MainUtil.q6(mainImagePreview.q1, mainImagePreview.x1)) {
                    mainImagePreview.r1.f(true);
                    mainImagePreview.q1.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    mainImagePreview.Y0();
                    mainImagePreview.G0();
                    return;
                }
            }
            if (!TextUtils.isEmpty(mainImagePreview.y1)) {
                I = mainImagePreview.y1.startsWith("image/svg");
            } else {
                I = Compress.I(MainUtil.V3(mainImagePreview.x1, null, null, true));
            }
            if (I) {
                mainImagePreview.m0(new AnonymousClass16());
            } else {
                mainImagePreview.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview mainImagePreview2 = MainImagePreview.this;
                        if (mainImagePreview2.M1 == null) {
                            mainImagePreview2.M1 = GlideApp.a(mainImagePreview2);
                        }
                        MySizeImage mySizeImage = mainImagePreview2.q1;
                        if (mySizeImage == null) {
                            return;
                        }
                        mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.14.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                GlideRequests glideRequests = mainImagePreview3.M1;
                                if (glideRequests == null) {
                                    return;
                                }
                                boolean z2 = mainImagePreview3.w1;
                                DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                if (z2) {
                                    ((RequestBuilder) glideRequests.t(MainUtil.A1(mainImagePreview3.f1, mainImagePreview3.x1, mainImagePreview3.z1)).e(diskCacheStrategy)).I(mainImagePreview3.j2).E(mainImagePreview3.q1);
                                } else {
                                    ((RequestBuilder) glideRequests.u(mainImagePreview3.x1).e(diskCacheStrategy)).I(mainImagePreview3.j2).E(mainImagePreview3.q1);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    public static void C0(MainImagePreview mainImagePreview, String str) {
        if (mainImagePreview.J1 != null) {
            return;
        }
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.f20960a = true;
        builder.b = true;
        Bitmap.Config config = Bitmap.Config.RGB_565;
        builder.a();
        builder.f = new Object();
        mainImagePreview.J1 = new DisplayImageOptions(builder);
        ?? obj = new Object();
        obj.f16554a = 1;
        obj.q = str;
        obj.t = 0;
        obj.u = true;
        ImageLoader.f().c(obj, mainImagePreview.q1, mainImagePreview.J1, new SimpleImageLoadingListener() { // from class: com.mycompany.app.main.image.MainImagePreview.18
            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                MyCoverView myCoverView = mainImagePreview2.r1;
                if (myCoverView == null) {
                    return;
                }
                myCoverView.f(true);
                mainImagePreview2.Z0();
            }

            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                if (mainImagePreview2.q1 == null) {
                    return;
                }
                mainImagePreview2.r1.f(true);
                mainImagePreview2.q1.setScaleType(ImageView.ScaleType.FIT_CENTER);
                mainImagePreview2.q1.setImageBitmap(bitmap);
                mainImagePreview2.Y0();
                mainImagePreview2.G0();
            }
        });
    }

    public static void D0(MainImagePreview mainImagePreview, String str, String str2, String str3) {
        if (mainImagePreview.V0()) {
            return;
        }
        mainImagePreview.Q0();
        mainImagePreview.S1 = true;
        MainApp.K1 = true;
        mainImagePreview.n2 = str;
        mainImagePreview.o2 = str2;
        mainImagePreview.p2 = str3;
        DialogSetDown dialogSetDown = new DialogSetDown(mainImagePreview, str, str3, mainImagePreview.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.main.image.MainImagePreview.35
            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
            public final void a(String str4, String str5, String str6) {
                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                String str7 = mainImagePreview2.n2;
                String str8 = mainImagePreview2.o2;
                String str9 = mainImagePreview2.p2;
                mainImagePreview2.n2 = null;
                mainImagePreview2.o2 = null;
                mainImagePreview2.p2 = null;
                MainUtil.G4(mainImagePreview2, str5, str6, str7, mainImagePreview2.z1, str8, str9);
            }
        });
        mainImagePreview.E1 = dialogSetDown;
        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImagePreview.36
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                boolean z = MainImagePreview.E2;
                MainImagePreview.this.Q0();
            }
        });
    }

    public static void E0(MainImagePreview mainImagePreview, boolean z) {
        if (mainImagePreview.g1 == null) {
            return;
        }
        MyCoverView myCoverView = mainImagePreview.r1;
        if (myCoverView != null) {
            myCoverView.m(true);
        }
        mainImagePreview.x2 = z;
        mainImagePreview.m0(new AnonymousClass68());
    }

    public static void F0(MainImagePreview mainImagePreview) {
        MyFadeFrame myFadeFrame = mainImagePreview.h1;
        if (myFadeFrame == null) {
            return;
        }
        boolean e = myFadeFrame.e();
        boolean z = !e;
        if (!e) {
            boolean isEmpty = TextUtils.isEmpty(mainImagePreview.i2);
            View view = mainImagePreview.o1;
            if (view != null) {
                if (!isEmpty) {
                    view.setBackgroundResource(R.drawable.trans_logo_short_back_white_2);
                    mainImagePreview.o1.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
        }
        mainImagePreview.h1.i(z);
    }

    public static void u0(MainImagePreview mainImagePreview, String str) {
        if (mainImagePreview.s1 != null) {
            if (MainUtil.D5(str)) {
                if (mainImagePreview.u1) {
                    mainImagePreview.u1 = false;
                    MyWebSafe myWebSafe = mainImagePreview.s1;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.23
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                MyWebSafe myWebSafe2 = mainImagePreview2.s1;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                mainImagePreview2.u1 = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!mainImagePreview.u1) {
                mainImagePreview.u1 = true;
                MyWebSafe myWebSafe2 = mainImagePreview.s1;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.24
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview mainImagePreview2 = MainImagePreview.this;
                        MyWebSafe myWebSafe3 = mainImagePreview2.s1;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        mainImagePreview2.u1 = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void v0(MainImagePreview mainImagePreview) {
        if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
            MainUtil.G4(mainImagePreview, PrefAlbum.H, PrefAlbum.I, mainImagePreview.x1, mainImagePreview.z1, null, "image/*");
        } else {
            mainImagePreview.d1(false);
            mainImagePreview.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.41
                @Override // java.lang.Runnable
                public final void run() {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    final String str = null;
                    if (!Compress.C(MainUtil.V3(mainImagePreview2.x1, null, null, true), true, true)) {
                        str = "image/" + MainUtil.T0(mainImagePreview2.x1);
                    }
                    MyButtonImage myButtonImage = mainImagePreview2.i1;
                    if (myButtonImage == null) {
                        return;
                    }
                    myButtonImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.41.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            final MainImagePreview mainImagePreview3 = MainImagePreview.this;
                            MyCoverView myCoverView = mainImagePreview3.r1;
                            if (myCoverView != null) {
                                myCoverView.f(true);
                                if (!mainImagePreview3.V0()) {
                                    mainImagePreview3.J0();
                                    mainImagePreview3.S1 = true;
                                    MainApp.K1 = true;
                                    DialogDownUrl dialogDownUrl = new DialogDownUrl(mainImagePreview3, mainImagePreview3.x1, mainImagePreview3.z1, null, null, str, mainImagePreview3.Q1, 4, 0, null, 0, null, false, 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.main.image.MainImagePreview.33
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final WebNestView a() {
                                            return null;
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void b(String str2, String str3) {
                                            boolean z = MainImagePreview.E2;
                                            MainImagePreview mainImagePreview4 = MainImagePreview.this;
                                            mainImagePreview4.J0();
                                            MainUtil.a8(mainImagePreview4, str2, str3);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void c(String str2, String str3, String str4) {
                                            boolean z = MainImagePreview.E2;
                                            MainImagePreview mainImagePreview4 = MainImagePreview.this;
                                            mainImagePreview4.J0();
                                            MainImagePreview.D0(mainImagePreview4, str2, str3, str4);
                                        }

                                        /* JADX WARN: Type inference failed for: r3v5, types: [com.mycompany.app.main.MainDownSvc$DownItem, java.lang.Object] */
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void d(String str2, MainUri.UriItem uriItem, int i, boolean z, String str3, String str4) {
                                            boolean z2 = MainImagePreview.E2;
                                            final MainImagePreview mainImagePreview4 = MainImagePreview.this;
                                            mainImagePreview4.J0();
                                            if (uriItem != null) {
                                                if (TextUtils.isEmpty(mainImagePreview4.i2)) {
                                                    if (!TextUtils.isEmpty(str2) && str2.startsWith("blob:")) {
                                                        if (mainImagePreview4.F1 != null) {
                                                            return;
                                                        }
                                                        mainImagePreview4.I0();
                                                        ?? obj = new Object();
                                                        obj.f = str2;
                                                        obj.g = mainImagePreview4.z1;
                                                        obj.n = uriItem;
                                                        obj.l = uriItem.e;
                                                        mainImagePreview4.S1 = true;
                                                        MainApp.K1 = true;
                                                        DialogDownBlob dialogDownBlob = new DialogDownBlob(mainImagePreview4, mainImagePreview4.s1, obj, new DialogDownBlob.DialogBlobListener() { // from class: com.mycompany.app.main.image.MainImagePreview.37
                                                            @Override // com.mycompany.app.dialog.DialogDownBlob.DialogBlobListener
                                                            public final void a(long j, String str5, String str6) {
                                                                boolean z3 = PrefZone.l0;
                                                                MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                                if (z3) {
                                                                    boolean z4 = MainImagePreview.E2;
                                                                    mainImagePreview5.c1(0, str5);
                                                                } else {
                                                                    MainUtil.e8(mainImagePreview5, R.string.down_complete);
                                                                }
                                                            }
                                                        });
                                                        mainImagePreview4.F1 = dialogDownBlob;
                                                        dialogDownBlob.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImagePreview.38
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                boolean z3 = MainImagePreview.E2;
                                                                MainImagePreview.this.I0();
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    MainImagePreview.w0(mainImagePreview4, uriItem.e, false);
                                                    return;
                                                }
                                                mainImagePreview4.B2 = str2;
                                                mainImagePreview4.C2 = uriItem;
                                                mainImagePreview4.D2 = i;
                                                mainImagePreview4.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.70
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                        String str5 = mainImagePreview5.B2;
                                                        MainUri.UriItem uriItem2 = mainImagePreview5.C2;
                                                        int i2 = mainImagePreview5.D2;
                                                        mainImagePreview5.B2 = null;
                                                        mainImagePreview5.C2 = null;
                                                        File file = ImageLoader.f().e().get(mainImagePreview5.i2);
                                                        if (file != null) {
                                                            long length = file.length();
                                                            if (length != 0) {
                                                                MainUtil.t(mainImagePreview5.f1, file.getPath(), uriItem2.e);
                                                                DbBookDown.u(mainImagePreview5.f1, 3, i2, str5, mainImagePreview5.z1, uriItem2, length, length, false, PrefSync.k, PrefSecret.m, false);
                                                                FrameLayout frameLayout = mainImagePreview5.g1;
                                                                if (frameLayout == null) {
                                                                    return;
                                                                }
                                                                frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.70.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        MainUtil.e8(MainImagePreview.this.f1, R.string.down_complete);
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    }
                                                });
                                            }
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void f(String str2, String str3, String str4, boolean z) {
                                            final MainImagePreview mainImagePreview4 = MainImagePreview.this;
                                            if (mainImagePreview4.G1 != null) {
                                                return;
                                            }
                                            mainImagePreview4.O0();
                                            if (TextUtils.isEmpty(str2)) {
                                                MainUtil.e8(mainImagePreview4, R.string.invalid_url);
                                                return;
                                            }
                                            DialogPreview dialogPreview = new DialogPreview(mainImagePreview4, str2, mainImagePreview4.z1, null, "image/*", new DialogPreview.PreviewListener() { // from class: com.mycompany.app.main.image.MainImagePreview.39
                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void a(String str5) {
                                                    MainUtil.s(R.string.copied_clipboard, MainImagePreview.this, "Copied URL", str5);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void b(String str5, long j, boolean z2) {
                                                    boolean z3 = MainImagePreview.E2;
                                                    MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                    mainImagePreview5.O0();
                                                    mainImagePreview5.H0();
                                                    MyFadeFrame myFadeFrame = mainImagePreview5.h1;
                                                    if (myFadeFrame == null) {
                                                        return;
                                                    }
                                                    myFadeFrame.d(true);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void c(String str5, String str6) {
                                                    boolean z2 = MainImagePreview.E2;
                                                    MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                    mainImagePreview5.O0();
                                                    mainImagePreview5.H0();
                                                    MainImagePreview.D0(mainImagePreview5, str5, null, str6);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void d(String str5) {
                                                    boolean z2 = MainImagePreview.E2;
                                                    MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                    mainImagePreview5.O0();
                                                    mainImagePreview5.H0();
                                                    MainImagePreview.w0(mainImagePreview5, null, true);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void e(String str5, String str6) {
                                                    boolean z2 = MainImagePreview.E2;
                                                    MainImagePreview mainImagePreview5 = MainImagePreview.this;
                                                    mainImagePreview5.O0();
                                                    MyFadeFrame myFadeFrame = mainImagePreview5.h1;
                                                    if (myFadeFrame == null) {
                                                        return;
                                                    }
                                                    myFadeFrame.d(true);
                                                    MainImagePreview.v0(mainImagePreview5);
                                                }
                                            });
                                            mainImagePreview4.G1 = dialogPreview;
                                            dialogPreview.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImagePreview.40
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    boolean z2 = MainImagePreview.E2;
                                                    MainImagePreview.this.O0();
                                                }
                                            });
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void g(String str2, String str3, String str4) {
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void e(int i, String str2) {
                                        }
                                    });
                                    mainImagePreview3.D1 = dialogDownUrl;
                                    dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImagePreview.34
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            boolean z = MainImagePreview.E2;
                                            MainImagePreview.this.J0();
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public static void w0(MainImagePreview mainImagePreview, String str, boolean z) {
        boolean I;
        if (TextUtils.isEmpty(mainImagePreview.x1)) {
            return;
        }
        if (z) {
            mainImagePreview.d1(false);
        } else {
            MainUtil.e8(mainImagePreview, R.string.down_start);
        }
        if (mainImagePreview.v1) {
            if (z) {
                if (MainUtil.Z7(4, mainImagePreview, mainImagePreview.x1, null, "image/*")) {
                    mainImagePreview.d1(true);
                    return;
                }
                MyCoverView myCoverView = mainImagePreview.r1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                MainUtil.e8(mainImagePreview, R.string.image_fail);
                return;
            }
            mainImagePreview.X0(str, mainImagePreview.x1, null, null);
            return;
        }
        if (!TextUtils.isEmpty(mainImagePreview.y1)) {
            I = mainImagePreview.y1.startsWith("image/svg");
        } else {
            I = Compress.I(MainUtil.V3(mainImagePreview.x1, null, null, true));
        }
        if (I) {
            mainImagePreview.q2 = str;
            mainImagePreview.r2 = z;
            mainImagePreview.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.43
                @Override // java.lang.Runnable
                public final void run() {
                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                    if (mainImagePreview2.M1 == null) {
                        mainImagePreview2.M1 = GlideApp.a(mainImagePreview2);
                    }
                    MySizeImage mySizeImage = mainImagePreview2.q1;
                    if (mySizeImage == null) {
                        return;
                    }
                    mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.43.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                            GlideRequests glideRequests = mainImagePreview3.M1;
                            if (glideRequests == null) {
                                return;
                            }
                            if (mainImagePreview3.w1) {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(MainUtil.A1(mainImagePreview3.f1, mainImagePreview3.x1, mainImagePreview3.z1))).F(mainImagePreview3.s2);
                            } else {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(mainImagePreview3.x1)).F(mainImagePreview3.s2);
                            }
                        }
                    });
                }
            });
            return;
        }
        mainImagePreview.m0(new AnonymousClass42(str, z));
    }

    public static String x0(MainImagePreview mainImagePreview) {
        File file;
        String str = mainImagePreview.x1;
        if (!TextUtils.isEmpty(mainImagePreview.i2)) {
            String str2 = mainImagePreview.i2;
            String str3 = null;
            if (!TextUtils.isEmpty(str2) && (file = ImageLoader.f().e().get(str2)) != null) {
                str3 = file.getPath();
            }
            if (!TextUtils.isEmpty(str3)) {
                return str3;
            }
        }
        return str;
    }

    public static void y0(MainImagePreview mainImagePreview) {
        if (!TextUtils.isEmpty(mainImagePreview.x1)) {
            HttpURLConnection httpURLConnection = mainImagePreview.R1;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                mainImagePreview.R1 = null;
            }
            HttpURLConnection S3 = MainUtil.S3(0, 0, mainImagePreview.f1, mainImagePreview.x1, mainImagePreview.z1, false);
            mainImagePreview.R1 = S3;
            if (S3 == null) {
                return;
            }
            try {
                S3.setDoInput(true);
                mainImagePreview.R1.connect();
                if (Build.VERSION.SDK_INT >= 24) {
                    mainImagePreview.Q1 = mainImagePreview.R1.getContentLengthLong();
                } else {
                    mainImagePreview.Q1 = mainImagePreview.R1.getContentLength();
                }
            } catch (Exception unused) {
            }
            HttpURLConnection httpURLConnection2 = mainImagePreview.R1;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
                mainImagePreview.R1 = null;
            }
            mainImagePreview.a1();
        }
    }

    public static void z0(MainImagePreview mainImagePreview) {
        InputStream inputStream;
        if (!TextUtils.isEmpty(mainImagePreview.x1)) {
            HttpURLConnection httpURLConnection = mainImagePreview.R1;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                mainImagePreview.R1 = null;
            }
            HttpURLConnection S3 = MainUtil.S3(0, 0, mainImagePreview.f1, mainImagePreview.x1, mainImagePreview.z1, false);
            mainImagePreview.R1 = S3;
            if (S3 == null) {
                return;
            }
            try {
                S3.setDoInput(true);
                mainImagePreview.R1.connect();
                if (Build.VERSION.SDK_INT >= 24) {
                    mainImagePreview.Q1 = mainImagePreview.R1.getContentLengthLong();
                } else {
                    mainImagePreview.Q1 = mainImagePreview.R1.getContentLength();
                }
                inputStream = mainImagePreview.R1.getInputStream();
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapUtil.e(inputStream, options);
                    mainImagePreview.O1 = options.outWidth;
                    mainImagePreview.P1 = options.outHeight;
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                inputStream = null;
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused3) {
                }
            }
            HttpURLConnection httpURLConnection2 = mainImagePreview.R1;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
                mainImagePreview.R1 = null;
            }
            mainImagePreview.a1();
        }
    }

    public final void G0() {
        if (!this.N1 && this.p1 != null && !TextUtils.isEmpty(this.x1)) {
            this.O1 = 0;
            this.P1 = 0;
            this.Q1 = 0L;
            m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.28
                @Override // java.lang.Runnable
                public final void run() {
                    MainUtil.SizeItem V1;
                    MainImagePreview mainImagePreview = MainImagePreview.this;
                    if (mainImagePreview.w1) {
                        MainImagePreview.z0(mainImagePreview);
                        return;
                    }
                    if (!TextUtils.isEmpty(mainImagePreview.x1)) {
                        try {
                            V1 = MainUtil.V1(mainImagePreview.f1, mainImagePreview.x1);
                        } catch (Exception unused) {
                        }
                        if (V1 != null) {
                            int i = V1.f17015a;
                            mainImagePreview.O1 = i;
                            int i2 = V1.b;
                            mainImagePreview.P1 = i2;
                            if (i != 0 && i2 != 0) {
                                mainImagePreview.Q1 = MainUtil.g1(mainImagePreview.f1, mainImagePreview.x1);
                                mainImagePreview.a1();
                            }
                        }
                    }
                }
            });
        }
    }

    public final void H0() {
        J0();
        Q0();
        I0();
        O0();
        R0();
        N0();
        L0();
        K0();
        M0();
        P0();
    }

    public final void I0() {
        DialogDownBlob dialogDownBlob = this.F1;
        if (dialogDownBlob != null) {
            dialogDownBlob.dismiss();
            this.F1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void J0() {
        DialogDownUrl dialogDownUrl = this.D1;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.D1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
        MyFadeFrame myFadeFrame = this.h1;
        if (myFadeFrame != null) {
            myFadeFrame.d(true);
        }
    }

    public final void K0() {
        DialogConfirm dialogConfirm = this.a2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.a2 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void L0() {
        DialogConfirm dialogConfirm = this.Z1;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Z1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void M0() {
        DialogConfirm dialogConfirm = this.b2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.b2 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void N0() {
        DialogConfirm dialogConfirm = this.Y1;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Y1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void O0() {
        DialogPreview dialogPreview = this.G1;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.G1 = null;
        }
    }

    public final void P0() {
        DialogSeekSimple dialogSeekSimple = this.c2;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.c2 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void Q0() {
        DialogSetDown dialogSetDown = this.E1;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.E1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
        this.n2 = null;
        this.o2 = null;
        this.p2 = null;
    }

    public final void R0() {
        DialogTransLang dialogTransLang = this.X1;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.X1 = null;
            this.S1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void S0() {
        WebTransOcrCtrl webTransOcrCtrl = this.W1;
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.i(false);
        }
        MyFadeFrame myFadeFrame = this.h1;
        if (myFadeFrame != null) {
            myFadeFrame.setAutoHide(true);
        }
    }

    public final void T0() {
        MyPopupMenu myPopupMenu = this.C1;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.C1 = null;
        }
        MyFadeFrame myFadeFrame = this.h1;
        if (myFadeFrame != null) {
            myFadeFrame.setAutoHide(true);
        }
    }

    public final boolean U0() {
        MyFadeFrame myFadeFrame = this.h1;
        if (myFadeFrame == null) {
            return false;
        }
        return myFadeFrame.e();
    }

    public final boolean V0() {
        if (this.D1 != null || this.E1 != null || this.F1 != null || this.G1 != null || this.X1 != null || this.Y1 != null || this.Z1 != null || this.a2 != null || this.b2 != null || this.c2 != null) {
            return true;
        }
        OcrDetector ocrDetector = this.f2;
        if (ocrDetector != null && ocrDetector.P != null) {
            return true;
        }
        return false;
    }

    public final void W0() {
        R0();
        N0();
        L0();
        K0();
        M0();
        P0();
        MyPopupMenu myPopupMenu = this.d2;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.d2 = null;
        }
        MyPopupMenu myPopupMenu2 = this.e2;
        if (myPopupMenu2 != null) {
            this.Z0 = null;
            myPopupMenu2.a();
            this.e2 = null;
        }
        FrameLayout frameLayout = this.V1;
        WebTransOcrCtrl webTransOcrCtrl = this.W1;
        this.V1 = null;
        this.W1 = null;
        if (frameLayout != null) {
            try {
                FrameLayout frameLayout2 = this.g1;
                if (frameLayout2 != null) {
                    frameLayout2.removeView(frameLayout);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.d();
        }
    }

    public final void X0(final String str, final String str2, final Bitmap bitmap, final PictureDrawable pictureDrawable) {
        if (this.f1 == null) {
            return;
        }
        m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.45
            @Override // java.lang.Runnable
            public final void run() {
                Bitmap bitmap2;
                boolean z;
                PictureDrawable pictureDrawable2 = pictureDrawable;
                if (pictureDrawable2 != null) {
                    bitmap2 = MainUtil.H(pictureDrawable2, 0);
                } else {
                    bitmap2 = bitmap;
                }
                boolean f6 = MainUtil.f6(bitmap2);
                String str3 = str;
                MainImagePreview mainImagePreview = MainImagePreview.this;
                if (f6) {
                    z = MainUtil.p(mainImagePreview.f1, bitmap2, str3);
                } else {
                    String str4 = str2;
                    if (!TextUtils.isEmpty(str4)) {
                        z = MainUtil.t(mainImagePreview.f1, str4, str3);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    MainUri.UriItem j = MainUri.j(mainImagePreview.f1, str3, MainUri.e());
                    if (j != null) {
                        DbBookDown.i(mainImagePreview.f1, str3, null, j);
                    }
                    mainImagePreview.c1(0, str3);
                    return;
                }
                boolean z2 = MainImagePreview.E2;
                mainImagePreview.c1(0, null);
            }
        });
    }

    public final void Y0() {
        if (this.q1 == null) {
            return;
        }
        ZoomImageAttacher zoomImageAttacher = this.B1;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
        }
        this.B1 = new ZoomImageAttacher(this.q1, new ZoomImageAttacher.AttacherListener() { // from class: com.mycompany.app.main.image.MainImagePreview.19
            @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
            public final void C(RectF rectF, boolean z) {
            }

            @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
            public final boolean k() {
                MainImagePreview.F0(MainImagePreview.this);
                return true;
            }

            @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
            public final boolean m() {
                return false;
            }

            @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
            public final void t() {
            }

            @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
            public final void D(MotionEvent motionEvent, boolean z) {
            }
        });
    }

    public final void Z0() {
        if (this.q1 == null) {
            return;
        }
        this.i1.setVisibility(8);
        this.j1.setVisibility(8);
        this.k1.setVisibility(8);
        this.l1.setVisibility(8);
        this.m1.setVisibility(8);
        this.n1.setVisibility(8);
        this.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.q1.setImageResource(R.drawable.outline_error_dark_web_48);
        this.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainImagePreview.F0(MainImagePreview.this);
            }
        });
    }

    public final void a1() {
        MySizeImage mySizeImage;
        if (!this.N1 && this.p1 != null && this.O1 != 0 && this.P1 != 0 && (mySizeImage = this.q1) != null) {
            mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.31
                @Override // java.lang.Runnable
                public final void run() {
                    MyTextView myTextView;
                    MainImagePreview mainImagePreview = MainImagePreview.this;
                    if (!mainImagePreview.N1 && (myTextView = mainImagePreview.p1) != null) {
                        mainImagePreview.N1 = true;
                        StringBuilder sb = new StringBuilder();
                        sb.append(mainImagePreview.O1);
                        sb.append(" x ");
                        sb.append(mainImagePreview.P1);
                        if (mainImagePreview.Q1 > 0) {
                            sb.append(" (");
                            sb.append(MainUtil.h1(mainImagePreview.Q1));
                            sb.append(")");
                        }
                        myTextView.setText(sb.toString());
                        mainImagePreview.p1.setVisibility(0);
                    }
                }
            });
        }
    }

    public final void b1(String str, boolean z) {
        if (z) {
            this.i2 = str;
        } else {
            this.i2 = null;
        }
        FrameLayout frameLayout = this.g1;
        if (frameLayout == null) {
            return;
        }
        frameLayout.post(new AnonymousClass53());
    }

    public final void c1(final int i, final String str) {
        FrameLayout frameLayout = this.g1;
        if (frameLayout == null) {
            return;
        }
        frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.47
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                int i3;
                MainImagePreview mainImagePreview = MainImagePreview.this;
                if (mainImagePreview.g1 == null) {
                    return;
                }
                MainUtil.c();
                MySnackbar mySnackbar = mainImagePreview.t2;
                if (mySnackbar != null) {
                    mySnackbar.i(false);
                    mainImagePreview.t2 = null;
                }
                mainImagePreview.t2 = new MySnackbar(mainImagePreview);
                boolean isEmpty = TextUtils.isEmpty(str);
                int i4 = i;
                if (isEmpty) {
                    if (i4 == 1) {
                        i3 = R.string.save_fail;
                    } else {
                        i3 = R.string.down_fail;
                    }
                    MainApp.K1 = true;
                    mainImagePreview.t2.v(mainImagePreview.g1, i3, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.image.MainImagePreview.47.1
                        @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                        public final void a() {
                        }

                        @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                        public final void b() {
                        }

                        @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                        public final void c() {
                        }

                        @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                        public final void onDismiss() {
                            MainImagePreview.this.t2 = null;
                        }
                    });
                    MainUtil.K7(mainImagePreview, false);
                    return;
                }
                if (i4 == 1) {
                    i2 = R.string.save_success;
                } else {
                    i2 = R.string.down_complete;
                }
                MainApp.K1 = true;
                mainImagePreview.t2.w(mainImagePreview.g1, i2, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.image.MainImagePreview.47.2
                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                    public final void a() {
                    }

                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                    public final void b() {
                    }

                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                    public final void c() {
                        AnonymousClass47 anonymousClass47 = AnonymousClass47.this;
                        MainUtil.d(MainImagePreview.this, str, "image/*", true, false);
                    }

                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                    public final void onDismiss() {
                        MainImagePreview.this.t2 = null;
                    }
                });
                MainUtil.K7(mainImagePreview, false);
            }
        });
    }

    public final void d1(boolean z) {
        MyCoverView myCoverView = this.r1;
        if (myCoverView != null) {
            myCoverView.setActivated(z);
            this.r1.l();
            if (z) {
                this.r1.postDelayed(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.48
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview mainImagePreview = MainImagePreview.this;
                        MyCoverView myCoverView2 = mainImagePreview.r1;
                        if (myCoverView2 != null && myCoverView2.isActivated()) {
                            mainImagePreview.r1.setActivated(false);
                            mainImagePreview.r1.f(false);
                        }
                    }
                }, 1500L);
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MyFadeFrame myFadeFrame;
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked == 1 || actionMasked == 3) && (myFadeFrame = this.h1) != null) {
            myFadeFrame.g();
        }
        GestureDetector gestureDetector = this.K1;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogDownUrl dialogDownUrl = this.D1;
        if (dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) {
            if (i != 1) {
                if (i == 13 && i2 == -1) {
                    c1(1, intent.getStringExtra("EXTRA_PATH"));
                    return;
                }
                return;
            }
            if (i2 != -1) {
                return;
            }
            E2 = true;
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.W1 != null) {
            S0();
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (U0()) {
            r0();
        }
        DialogDownUrl dialogDownUrl = this.D1;
        if (dialogDownUrl != null) {
            dialogDownUrl.S(h0());
        }
        DialogPreview dialogPreview = this.G1;
        if (dialogPreview != null) {
            dialogPreview.D(h0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [android.widget.ImageView, android.view.View, com.mycompany.app.view.MySizeImage] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        View a0;
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        E2 = false;
        MainUtil.u7(this);
        Uri data = getIntent().getData();
        if (data != null) {
            this.x1 = data.toString();
            this.y1 = getIntent().getType();
            this.v1 = true;
        } else {
            this.x1 = getIntent().getStringExtra("EXTRA_PATH");
            this.z1 = getIntent().getStringExtra("EXTRA_REFERER");
            this.v1 = getIntent().getBooleanExtra("EXTRA_FILE", false);
        }
        if (TextUtils.isEmpty(this.x1)) {
            MainUtil.e8(this, R.string.invalid_path);
            finish();
            return;
        }
        if (!this.v1) {
            boolean isNetworkUrl = URLUtil.isNetworkUrl(this.x1);
            this.w1 = isNetworkUrl;
            if (isNetworkUrl && getIntent().getBooleanExtra("EXTRA_POPUP", false)) {
                this.I1 = true;
                String str = this.x1;
                this.A1 = str;
                this.x1 = MainUtil.a3(str);
            }
        }
        this.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.main.image.MainImagePreview.71
            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean a() {
                return false;
            }

            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean b() {
                boolean z = MainImagePreview.E2;
                MainImagePreview mainImagePreview = MainImagePreview.this;
                if (mainImagePreview.U0() && !mainImagePreview.h0()) {
                    return true;
                }
                return false;
            }

            @Override // com.mycompany.app.main.MainActivity.SystemBarListener
            public final boolean c() {
                return true;
            }
        };
        r0();
        if (Build.VERSION.SDK_INT < 30 && (a0 = a0()) != null) {
            a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.main.image.MainImagePreview.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    int i2 = i & 4;
                    MainImagePreview mainImagePreview = MainImagePreview.this;
                    if (i2 == 4) {
                        boolean z = MainImagePreview.E2;
                        if (mainImagePreview.U0()) {
                            mainImagePreview.r0();
                            return;
                        }
                        return;
                    }
                    boolean z2 = MainImagePreview.E2;
                    if (!mainImagePreview.U0()) {
                        mainImagePreview.r0();
                    }
                }
            });
        }
        o0(null, 19);
        o0(null, 1);
        o0(null, 13);
        int i = MainApp.G1;
        if (MainConst.e) {
            i += (int) MainUtil.G(this, 28.0f);
        }
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ?? imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        frameLayout.addView((View) imageView, -1, -1);
        MyFadeFrame myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.setTouchable(true);
        myFadeFrame.setAutoHide(true);
        myFadeFrame.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = i;
        layoutParams.setMarginEnd(MainApp.G1);
        frameLayout.addView(myFadeFrame, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setImageResource(R.drawable.outline_download_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        int i2 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams2.gravity = 8388613;
        layoutParams2.setMarginEnd(MainApp.g1 * 4);
        myFadeFrame.addView(myButtonImage, layoutParams2);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setImageResource(R.drawable.outline_share_white_24);
        myButtonImage2.n(MainApp.j1, MainApp.k1);
        myButtonImage2.k(-1593835520, -1586137739);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams3.gravity = 8388613;
        layoutParams3.setMarginEnd(MainApp.g1 * 3);
        myFadeFrame.addView(myButtonImage2, layoutParams3);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setImageResource(R.drawable.outline_wallpaper_white_24);
        myButtonImage3.n(MainApp.j1, MainApp.k1);
        myButtonImage3.k(-1593835520, -1586137739);
        int i4 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams4.gravity = 8388613;
        layoutParams4.setMarginEnd(MainApp.g1 * 2);
        myFadeFrame.addView(myButtonImage3, layoutParams4);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setImageResource(R.drawable.outline_crop_white_24);
        myButtonImage4.n(MainApp.j1, MainApp.k1);
        myButtonImage4.k(-1593835520, -1586137739);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams5.gravity = 8388613;
        layoutParams5.setMarginEnd(MainApp.g1);
        myFadeFrame.addView(myButtonImage4, layoutParams5);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setImageResource(R.drawable.outline_edit_white_24);
        myButtonImage5.n(MainApp.j1, MainApp.k1);
        myButtonImage5.k(-1593835520, -1586137739);
        int i6 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams6.gravity = 8388613;
        myFadeFrame.addView(myButtonImage5, layoutParams6);
        MyButtonImage myButtonImage6 = new MyButtonImage(this);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setImageResource(R.drawable.outline_g_translate_white_24);
        myButtonImage6.n(MainApp.j1, MainApp.k1);
        myButtonImage6.k(-1593835520, -1586137739);
        int i7 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams7.gravity = 8388693;
        layoutParams7.bottomMargin = (int) MainUtil.G(this, 60.0f);
        myFadeFrame.addView(myButtonImage6, layoutParams7);
        View view = new View(this);
        view.setVisibility(8);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams((int) MainUtil.G(this, 135.0f), (int) MainUtil.G(this, 24.0f));
        layoutParams8.gravity = 80;
        layoutParams8.setMarginStart(MainApp.F1);
        layoutParams8.bottomMargin = (int) MainUtil.G(this, 68.0f);
        myFadeFrame.addView(view, layoutParams8);
        MyTextView myTextView = new MyTextView(this);
        myTextView.setGravity(16);
        myTextView.setSingleLine(true);
        myTextView.setEllipsize(TextUtils.TruncateAt.END);
        myTextView.setTextDirection(3);
        myTextView.setTextSize(1, 16.0f);
        myTextView.setTextColor(-1);
        myTextView.setOutlineColor(-16777216);
        myTextView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams9.topMargin = MainApp.g1;
        layoutParams9.setMarginStart(MainApp.E1);
        myFadeFrame.addView(myTextView, layoutParams9);
        MyCoverView myCoverView = new MyCoverView(this, -1, MainApp.y1, MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setBlockTouch(true);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        this.g1 = frameLayout;
        this.h1 = myFadeFrame;
        this.i1 = myButtonImage;
        this.j1 = myButtonImage2;
        this.k1 = myButtonImage3;
        this.l1 = myButtonImage4;
        this.m1 = myButtonImage5;
        this.n1 = myButtonImage6;
        this.o1 = view;
        this.p1 = myTextView;
        this.q1 = imageView;
        this.r1 = myCoverView;
        Handler handler = this.O0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.4
                @Override // java.lang.Runnable
                public final void run() {
                    final MainImagePreview mainImagePreview = MainImagePreview.this;
                    if (mainImagePreview.g1 != null) {
                        mainImagePreview.h1.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.image.MainImagePreview.5
                            @Override // com.mycompany.app.view.MyFadeListener
                            public final void a(boolean z) {
                            }

                            @Override // com.mycompany.app.view.MyFadeListener
                            public final void b(boolean z, boolean z2) {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                if (mainImagePreview2.g1 != null) {
                                    if (z) {
                                        if (mainImagePreview2.U0()) {
                                            mainImagePreview2.r0();
                                        }
                                    } else if (!mainImagePreview2.V0()) {
                                        mainImagePreview2.r0();
                                    }
                                }
                            }
                        });
                        if (!mainImagePreview.v1) {
                            mainImagePreview.i1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                    MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                    if (myFadeFrame2 == null) {
                                        return;
                                    }
                                    myFadeFrame2.d(true);
                                    MainImagePreview.v0(mainImagePreview2);
                                }
                            });
                        } else {
                            mainImagePreview.i1.setVisibility(8);
                        }
                        mainImagePreview.j1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                if (myFadeFrame2 == null) {
                                    return;
                                }
                                myFadeFrame2.d(true);
                                MainImagePreview.w0(mainImagePreview2, null, true);
                            }
                        });
                        mainImagePreview.k1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                final MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                if (mainImagePreview2.C1 == null) {
                                    mainImagePreview2.T0();
                                    if (view2 == null) {
                                        return;
                                    }
                                    MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                    if (myFadeFrame2 != null) {
                                        myFadeFrame2.setAutoHide(false);
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.soul_home));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.phone_home));
                                    MyPopupMenu myPopupMenu = new MyPopupMenu(mainImagePreview2, mainImagePreview2.g1, view2, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.image.MainImagePreview.32
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            boolean z = MainImagePreview.E2;
                                            MainImagePreview.this.T0();
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view3, int i8) {
                                            boolean z;
                                            MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                            MyFadeFrame myFadeFrame3 = mainImagePreview3.h1;
                                            if (myFadeFrame3 == null) {
                                                return true;
                                            }
                                            myFadeFrame3.d(true);
                                            if (i8 == 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            String x0 = MainImagePreview.x0(mainImagePreview3);
                                            if (z) {
                                                Intent intent = new Intent(mainImagePreview3.f1, (Class<?>) MainImageQuick.class);
                                                intent.putExtra("EXTRA_PATH", x0);
                                                intent.putExtra("EXTRA_TYPE", mainImagePreview3.y1);
                                                intent.putExtra("EXTRA_REFERER", mainImagePreview3.z1);
                                                mainImagePreview3.o0(intent, 1);
                                                return true;
                                            }
                                            Intent intent2 = new Intent(mainImagePreview3.f1, (Class<?>) MainImageWallpaper.class);
                                            intent2.putExtra("EXTRA_PATH", x0);
                                            intent2.putExtra("EXTRA_TYPE", mainImagePreview3.y1);
                                            intent2.putExtra("EXTRA_REFERER", mainImagePreview3.z1);
                                            mainImagePreview3.startActivity(intent2);
                                            return true;
                                        }
                                    });
                                    mainImagePreview2.C1 = myPopupMenu;
                                    mainImagePreview2.Z0 = myPopupMenu;
                                }
                            }
                        });
                        mainImagePreview.l1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                if (myFadeFrame2 == null) {
                                    return;
                                }
                                myFadeFrame2.d(true);
                                String x0 = MainImagePreview.x0(mainImagePreview2);
                                Intent intent = new Intent(mainImagePreview2.f1, (Class<?>) MainImageCropper.class);
                                intent.putExtra("EXTRA_PATH", x0);
                                intent.putExtra("EXTRA_TYPE", mainImagePreview2.y1);
                                intent.putExtra("EXTRA_REFERER", mainImagePreview2.z1);
                                mainImagePreview2.startActivity(intent);
                            }
                        });
                        mainImagePreview.m1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                if (myFadeFrame2 == null) {
                                    return;
                                }
                                myFadeFrame2.d(true);
                                String x0 = MainImagePreview.x0(mainImagePreview2);
                                Intent intent = new Intent(mainImagePreview2.f1, (Class<?>) EditorActivity.class);
                                intent.putExtra("EXTRA_PATH", x0);
                                intent.putExtra("EXTRA_TYPE", mainImagePreview2.y1);
                                intent.putExtra("EXTRA_REFERER", mainImagePreview2.z1);
                                mainImagePreview2.o0(intent, 13);
                            }
                        });
                        mainImagePreview.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImagePreview.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                boolean z = MainImagePreview.E2;
                                final MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                if (!mainImagePreview2.V0() && view2 != null && mainImagePreview2.g1 != null) {
                                    mainImagePreview2.W0();
                                    if (mainImagePreview2.u2 == null) {
                                        mainImagePreview2.u2 = new WebTransOcrCtrl(mainImagePreview2);
                                        mainImagePreview2.v2 = view2;
                                        Handler handler2 = mainImagePreview2.O0;
                                        if (handler2 != null) {
                                            handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.49
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainImagePreview mainImagePreview3 = MainImagePreview.this;
                                                    WebTransOcrCtrl webTransOcrCtrl = mainImagePreview3.u2;
                                                    if (webTransOcrCtrl != null) {
                                                        webTransOcrCtrl.c();
                                                    }
                                                    Handler handler3 = mainImagePreview3.O0;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.49.1
                                                        /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
                                                        /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[Catch: Exception -> 0x00f9, TryCatch #0 {Exception -> 0x00f9, blocks: (B:10:0x0029, B:18:0x0080, B:22:0x0095, B:30:0x00a5, B:32:0x00c5, B:34:0x00c9, B:35:0x00ce, B:36:0x00d0, B:43:0x0066, B:46:0x006b, B:51:0x0077), top: B:9:0x0029 }] */
                                                        /* JADX WARN: Removed duplicated region for block: B:32:0x00c5 A[Catch: Exception -> 0x00f9, TryCatch #0 {Exception -> 0x00f9, blocks: (B:10:0x0029, B:18:0x0080, B:22:0x0095, B:30:0x00a5, B:32:0x00c5, B:34:0x00c9, B:35:0x00ce, B:36:0x00d0, B:43:0x0066, B:46:0x006b, B:51:0x0077), top: B:9:0x0029 }] */
                                                        /* JADX WARN: Removed duplicated region for block: B:42:0x00a4  */
                                                        @Override // java.lang.Runnable
                                                        /*
                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                            To view partially-correct add '--show-bad-code' argument
                                                        */
                                                        public final void run() {
                                                            /*
                                                                Method dump skipped, instructions count: 250
                                                                To view this dump add '--comments-level debug' option
                                                            */
                                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.image.MainImagePreview.AnonymousClass49.AnonymousClass1.run():void");
                                                        }
                                                    });
                                                }
                                            });
                                            MyFadeFrame myFadeFrame2 = mainImagePreview2.h1;
                                            if (myFadeFrame2 != null) {
                                                myFadeFrame2.setAutoHide(false);
                                            }
                                        }
                                    }
                                }
                            }
                        });
                        mainImagePreview.q1.setListener(new ImageSizeListener() { // from class: com.mycompany.app.main.image.MainImagePreview.12
                            @Override // com.mycompany.app.image.ImageSizeListener
                            public final void a(View view2, int i8, int i9) {
                                ZoomImageAttacher zoomImageAttacher = MainImagePreview.this.B1;
                                if (zoomImageAttacher != null) {
                                    zoomImageAttacher.u();
                                }
                            }
                        });
                        MySizeImage mySizeImage = mainImagePreview.q1;
                        if (mySizeImage == null) {
                            return;
                        }
                        mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.13
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImagePreview.B0(MainImagePreview.this);
                            }
                        });
                    }
                }
            });
        }
        setContentView(this.g1);
        initMainScreenOn(this.g1);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        GlideRequests glideRequests = this.M1;
        if (glideRequests != null) {
            MySizeImage mySizeImage = this.q1;
            if (mySizeImage != null) {
                glideRequests.o(mySizeImage);
            }
            this.M1 = null;
        }
        MyFadeFrame myFadeFrame = this.h1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.h1 = null;
        }
        MyButtonImage myButtonImage = this.i1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i1 = null;
        }
        MyButtonImage myButtonImage2 = this.j1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.j1 = null;
        }
        MyButtonImage myButtonImage3 = this.k1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.k1 = null;
        }
        MyButtonImage myButtonImage4 = this.l1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.l1 = null;
        }
        MyButtonImage myButtonImage5 = this.m1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.m1 = null;
        }
        MyButtonImage myButtonImage6 = this.n1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.n1 = null;
        }
        MySizeImage mySizeImage2 = this.q1;
        if (mySizeImage2 != null) {
            mySizeImage2.f18962c = null;
            this.q1 = null;
        }
        MyCoverView myCoverView = this.r1;
        if (myCoverView != null) {
            myCoverView.i();
            this.r1 = null;
        }
        MyWebSafe myWebSafe = this.s1;
        if (myWebSafe != null) {
            if (this.t1) {
                this.t1 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.s1);
            this.s1 = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.B1;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.B1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.o1 = null;
        this.p1 = null;
        this.x1 = null;
        this.y1 = null;
        this.z1 = null;
        this.A1 = null;
        this.J1 = null;
        this.K1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        String stringExtra;
        super.onNewIntent(intent);
        this.f1 = getApplicationContext();
        Uri data = intent.getData();
        if (data != null) {
            stringExtra = data.toString();
        } else {
            stringExtra = intent.getStringExtra("EXTRA_PATH");
        }
        if (TextUtils.isEmpty(stringExtra)) {
            MainUtil.e8(this, R.string.invalid_path);
            return;
        }
        this.x1 = stringExtra;
        if (data != null) {
            this.y1 = intent.getType();
            this.z1 = null;
            this.v1 = true;
        } else {
            this.y1 = null;
            this.z1 = intent.getStringExtra("EXTRA_REFERER");
            this.v1 = intent.getBooleanExtra("EXTRA_FILE", false);
        }
        this.w1 = false;
        this.I1 = false;
        this.A1 = null;
        if (!this.v1) {
            boolean isNetworkUrl = URLUtil.isNetworkUrl(this.x1);
            this.w1 = isNetworkUrl;
            if (isNetworkUrl && intent.getBooleanExtra("EXTRA_POPUP", false)) {
                this.I1 = true;
                String str = this.x1;
                this.A1 = str;
                this.x1 = MainUtil.a3(str);
            }
        }
        MySizeImage mySizeImage = this.q1;
        if (mySizeImage == null) {
            return;
        }
        mySizeImage.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.2
            @Override // java.lang.Runnable
            public final void run() {
                MainImagePreview.B0(MainImagePreview.this);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.S1) {
            MainUtil.K7(this, false);
        }
        MyWebSafe myWebSafe = this.s1;
        if (myWebSafe != null) {
            myWebSafe.onPause();
        }
        DialogPreview dialogPreview = this.G1;
        if (dialogPreview != null) {
            dialogPreview.E();
        }
        W0();
        if (isFinishing()) {
            T0();
            H0();
            if (this.R1 != null) {
                m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.29
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview mainImagePreview = MainImagePreview.this;
                        HttpURLConnection httpURLConnection = mainImagePreview.R1;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            mainImagePreview.R1 = null;
                        }
                    }
                });
            }
            ShareTask shareTask = this.H1;
            if (shareTask != null) {
                shareTask.f12839c = true;
            }
            this.H1 = null;
            OcrDetector ocrDetector = this.f2;
            if (ocrDetector != null) {
                ocrDetector.E();
                this.f2 = null;
            }
            this.g2 = null;
            this.h2 = null;
            this.i2 = null;
            MainApp.T1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        MyWebSafe myWebSafe = this.s1;
        if (myWebSafe != null) {
            myWebSafe.onResume();
        }
        DialogPreview dialogPreview = this.G1;
        if (dialogPreview != null) {
            dialogPreview.H();
        }
        MyCoverView myCoverView = this.r1;
        if (myCoverView != null && myCoverView.isActivated()) {
            this.r1.setActivated(false);
            this.r1.f(false);
        }
        if (this.S1) {
            MainUtil.K7(this, true);
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.3
            @Override // java.lang.Runnable
            public final void run() {
                MainImagePreview mainImagePreview = MainImagePreview.this;
                if (mainImagePreview.O0 == null) {
                    return;
                }
                MainUtil.g7(mainImagePreview.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        r0();
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.s1 != null) {
                mainImagePreview.t1 = false;
                MainImagePreview.u0(mainImagePreview, str);
                if (!mainImagePreview.l2 && !TextUtils.isEmpty(str) && !str.equals(mainImagePreview.m2)) {
                    mainImagePreview.l2 = true;
                    mainImagePreview.m2 = str;
                    Handler handler = mainImagePreview.O0;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.25
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImagePreview mainImagePreview2 = MainImagePreview.this;
                                MainUtil.l(mainImagePreview2.s1);
                                mainImagePreview2.l2 = false;
                            }
                        });
                    }
                }
                mainImagePreview.L1 = 0L;
                MyCoverView myCoverView = mainImagePreview.r1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.s1 != null) {
                mainImagePreview.t1 = true;
                MainImagePreview.u0(mainImagePreview, str);
                mainImagePreview.L1 = 0L;
                MyCoverView myCoverView = mainImagePreview.r1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final MainImagePreview mainImagePreview = MainImagePreview.this;
            mainImagePreview.s1 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = mainImagePreview.O0;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImagePreview.26
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImagePreview.this.finish();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.s1 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                MainImagePreview.u0(mainImagePreview, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.s1 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            MainImagePreview.u0(mainImagePreview, str);
            mainImagePreview.s1.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            MainImagePreview mainImagePreview = MainImagePreview.this;
            if (mainImagePreview.s1 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    MainImagePreview.u0(mainImagePreview, uri);
                }
            }
            return false;
        }
    }
}
