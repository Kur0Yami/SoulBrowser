package com.mycompany.app.image;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.data.book.DataBookAlbum;
import com.mycompany.app.data.book.DataBookCmp;
import com.mycompany.app.data.book.DataBookPdf;
import com.mycompany.app.db.DbAlbum;
import com.mycompany.app.db.DbCmp;
import com.mycompany.app.db.DbPdf;
import com.mycompany.app.db.book.DbBookAlbum;
import com.mycompany.app.db.book.DbBookCmp;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.db.book.DbBookPdf;
import com.mycompany.app.dialog.DialogCapture;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.dialog.DialogEditText;
import com.mycompany.app.dialog.DialogImageBack;
import com.mycompany.app.dialog.DialogImageType;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekBright;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.dialog.DialogSetImgTrans;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.image.ImageGifView;
import com.mycompany.app.image.ImageListAdapter;
import com.mycompany.app.image.ImageTransView;
import com.mycompany.app.image.ImageViewActivity;
import com.mycompany.app.image.ImageViewControl;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.list.MainListImage;
import com.mycompany.app.ocr.OcrDetector;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeLinear;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyImageView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MySizeFrame;
import com.mycompany.app.web.WebLoadWrap;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransOcrCtrl;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ImageViewListVert extends ImageViewWrapper implements ImageViewControl.ControlListener, ZoomImageAttacher.AttacherListener {
    public boolean A;
    public float A0;
    public int B;
    public float B0;
    public Compress C;
    public boolean C0;
    public Compress D;
    public boolean D0;
    public DialogEditText E;
    public boolean E0;
    public String F;
    public boolean F0;
    public boolean G;
    public MyFadeFrame G0;
    public MySizeFrame H;
    public boolean H0;
    public ImageListVert I;
    public Handler I0;
    public ImageListAdapter J;
    public boolean J0;
    public int K;
    public boolean K0;
    public boolean L;
    public FrameLayout L0;
    public ImageView M;
    public WebTransOcrCtrl M0;
    public boolean N;
    public ImageTransView N0;
    public int O;
    public DialogTransLang O0;
    public MyButtonImage P;
    public DialogConfirm P0;
    public ImageGifView Q;
    public DialogConfirm Q0;
    public boolean R;
    public DialogConfirm R0;
    public MyCoverView S;
    public DialogConfirm S0;
    public ImageCoverView T;
    public DialogSeekSimple T0;
    public ImageViewControl U;
    public DialogSetImgTrans U0;
    public int V;
    public MyPopupMenu V0;
    public int W;
    public MyPopupMenu W0;
    public MyFadeLinear X;
    public OcrDetector X0;
    public View Y;
    public String Y0;
    public AppCompatTextView Z;
    public int Z0;

    /* renamed from: a, reason: collision with root package name */
    public Context f15915a;
    public AppCompatTextView a0;
    public String a1;
    public ImageViewActivity b;
    public DisplayImageOptions b0;
    public int b1;

    /* renamed from: c, reason: collision with root package name */
    public Window f15916c;
    public ListTask c0;
    public Bitmap c1;
    public int d;
    public boolean d0;
    public String d1;
    public boolean e;
    public boolean e0;
    public String e1;
    public ImageViewActivity.SavedItem f;
    public LoadTask f0;
    public String f1;
    public boolean g;
    public BookTask g0;
    public WebTransOcrCtrl g1;
    public boolean h;
    public ZoomImageAttacher h0;
    public View h1;
    public boolean i;
    public boolean i0;
    public boolean i1;
    public boolean j;
    public DialogImageType j0;
    public boolean j1;
    public boolean k;
    public DialogSeekBright k0;
    public String k1;
    public String l;
    public DialogImageBack l0;
    public Bitmap l1;
    public boolean m;
    public DialogListBook m0;
    public String m1;
    public int n;
    public DialogCapture n0;
    public String n1;
    public WebLoadWrap o;
    public DialogDownUrl o0;
    public String o1;
    public WebLoadWrap p;
    public DialogSetDown p0;
    public MainUri.UriItem p1;
    public boolean q;
    public DialogPreview q0;
    public int q1;
    public int r;
    public DialogSetImage r0;
    public String s;
    public MyPopupMenu s0;
    public int t;
    public MyPopupMenu t0;
    public String u;
    public boolean u0;
    public int v;
    public boolean v0;
    public int w;
    public int w0;
    public int x;
    public boolean x0;
    public int y;
    public boolean y0;
    public EventHandler z;
    public boolean z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewListVert$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass11 implements Runnable {
        public AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            MySizeFrame mySizeFrame = imageViewListVert.H;
            if (mySizeFrame == null || mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewListVert.H.setKeepScreenOn(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewListVert$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            MySizeFrame mySizeFrame = imageViewListVert.H;
            if (mySizeFrame == null || !mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewListVert.H.setKeepScreenOn(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewListVert$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass22 implements Runnable {
        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            if (imageViewListVert.U != null) {
                if (!TextUtils.isEmpty(imageViewListVert.s)) {
                    ImageViewListVert.S(imageViewListVert);
                    return;
                }
                ImageViewActivity imageViewActivity = imageViewListVert.b;
                if (imageViewActivity == null) {
                    return;
                }
                imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.22.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                        if (imageViewListVert2.U != null) {
                            if (imageViewListVert2.t == 1) {
                                imageViewListVert2.s = MainUtil.j1(imageViewListVert2.f15915a, imageViewListVert2.u);
                            } else {
                                imageViewListVert2.s = MainUtil.b1(imageViewListVert2.f15915a, imageViewListVert2.u);
                            }
                            MySizeFrame mySizeFrame = imageViewListVert2.H;
                            if (mySizeFrame == null) {
                                return;
                            }
                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.22.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewListVert.S(ImageViewListVert.this);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewListVert$23, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass23 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f15935c;

        public AnonymousClass23(boolean z) {
            this.f15935c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            ImageGifView imageGifView = imageViewListVert.Q;
            if (imageGifView != null && imageViewListVert.H != null) {
                imageGifView.j();
                imageViewListVert.H.addView(imageViewListVert.Q, -1, -1);
                imageViewListVert.H.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.23.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                        if (imageViewListVert2.Q != null && imageViewListVert2.C != null) {
                            boolean z = true;
                            imageViewListVert2.h0(true);
                            final String n = imageViewListVert2.C.n(imageViewListVert2.w);
                            Compress compress = imageViewListVert2.C;
                            ImageViewActivity imageViewActivity = imageViewListVert2.b;
                            boolean G0 = imageViewListVert2.G0();
                            if (imageViewListVert2.t != 2) {
                                z = false;
                            }
                            imageViewListVert2.Q.k(imageViewListVert2.b, n, imageViewListVert2.l, compress.f(n, MainUtil.l0(imageViewActivity, G0, z), false), anonymousClass23.f15935c, new ImageGifView.GifListener() { // from class: com.mycompany.app.image.ImageViewListVert.23.1.1
                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void a() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    ImageGifView imageGifView2 = ImageViewListVert.this.Q;
                                    if (imageGifView2 == null) {
                                        return;
                                    }
                                    imageGifView2.f();
                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                    MySizeFrame mySizeFrame = imageViewListVert3.H;
                                    if (mySizeFrame != null) {
                                        mySizeFrame.removeView(imageViewListVert3.Q);
                                    }
                                    ImageViewListVert.this.Q = null;
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void b(boolean z2) {
                                    AnonymousClass23 anonymousClass232 = AnonymousClass23.this;
                                    if (z2) {
                                        ImageViewListVert.this.h0(false);
                                    } else {
                                        ImageViewListVert.this.c1();
                                    }
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void c(MyImageView myImageView) {
                                    boolean z2;
                                    if (myImageView != null) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                        Compress compress2 = imageViewListVert3.C;
                                        if (compress2 != null) {
                                            ImageViewActivity imageViewActivity2 = imageViewListVert3.b;
                                            boolean G02 = imageViewListVert3.G0();
                                            if (ImageViewListVert.this.t == 2) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            Bitmap f = compress2.f(n, MainUtil.l0(imageViewActivity2, G02, z2), true);
                                            if (MainUtil.f6(f)) {
                                                myImageView.setImageBitmap(f);
                                            }
                                        }
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewListVert$27, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass27 implements Runnable {
        public AnonymousClass27() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Compress compress;
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            if (imageViewListVert.q || (compress = imageViewListVert.C) == null) {
                return;
            }
            compress.S();
            imageViewListVert.q = true;
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewListVert$45, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass45 implements Runnable {
        public AnonymousClass45() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            Bitmap e0 = imageViewListVert.e0();
            if (MainUtil.f6(e0)) {
                imageViewListVert.c1 = e0;
                MySizeFrame mySizeFrame = imageViewListVert.H;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.45.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                        Bitmap bitmap = imageViewListVert2.c1;
                        imageViewListVert2.c1 = null;
                        if (!MainUtil.f6(bitmap)) {
                            MainUtil.e8(imageViewListVert2.f15915a, R.string.image_fail);
                            return;
                        }
                        imageViewListVert2.h0(true);
                        imageViewListVert2.n0 = new DialogCapture(imageViewListVert2.b, bitmap, false, imageViewListVert2.s);
                        imageViewListVert2.n0.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.45.1.1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                AnonymousClass45 anonymousClass45 = AnonymousClass45.this;
                                ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                DialogCapture dialogCapture = imageViewListVert3.n0;
                                if (dialogCapture != null) {
                                    dialogCapture.dismiss();
                                    imageViewListVert3.n0 = null;
                                }
                                ImageViewListVert.this.Y0(false);
                                ImageViewListVert.this.W0();
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewListVert$60, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass60 implements Runnable {
        public AnonymousClass60() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Compress compress;
            ImageViewListVert imageViewListVert = ImageViewListVert.this;
            if (imageViewListVert.N0 != null && (compress = imageViewListVert.C) != null) {
                imageViewListVert.N0.setIconTrans(imageViewListVert.C.u(compress.n(imageViewListVert.w)));
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class BookTask extends MyAsyncTask {
        public final WeakReference e;
        public final Compress f;
        public final int g;
        public final String h;
        public final boolean i;
        public MainItem.ChildItem j;

        public BookTask(ImageViewListVert imageViewListVert) {
            WeakReference weakReference = new WeakReference(imageViewListVert);
            this.e = weakReference;
            ImageViewListVert imageViewListVert2 = (ImageViewListVert) weakReference.get();
            if (imageViewListVert2 != null) {
                Compress compress = imageViewListVert2.C;
                this.f = compress;
                int i = imageViewListVert2.w;
                this.g = i;
                DialogListBook dialogListBook = imageViewListVert2.m0;
                if (dialogListBook != null) {
                    dialogListBook.t(true);
                    if (compress == null) {
                        return;
                    }
                    this.h = compress.n(i);
                    this.i = imageViewListVert2.t == 12;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v5, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ImageViewListVert imageViewListVert;
            Compress compress;
            Bitmap f;
            int i;
            Bitmap bitmap;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewListVert = (ImageViewListVert) weakReference.get()) != null && (compress = this.f) != null) {
                int i2 = imageViewListVert.t;
                String str = this.h;
                boolean z = this.i;
                if (i2 == 2 && PrefPdf.k) {
                    i = MainUtil.l0(imageViewListVert.b, imageViewListVert.G0(), true);
                    f = compress.f(str, i, z);
                } else {
                    Bitmap f2 = compress.f(str, 2, z);
                    if (f2 != null && !f2.isRecycled()) {
                        f = f2;
                    } else {
                        f = compress.f(str, MainUtil.l0(imageViewListVert.b, imageViewListVert.G0(), false), z);
                    }
                    i = 2;
                }
                if ((f == null || f.isRecycled()) && !z) {
                    ?? obj = new Object();
                    obj.f16554a = 8;
                    obj.b = compress;
                    obj.r = imageViewListVert.l;
                    obj.f = this.g;
                    obj.t = i;
                    f = ImageLoader.f().j(obj, imageViewListVert.b0);
                }
                if (f != null && !f.isRecycled()) {
                    float min = Math.min(f.getWidth(), f.getHeight()) / MainApp.g1;
                    bitmap = MainUtil.k3(Math.round(f.getWidth() / min), Math.round(f.getHeight() / min), f);
                } else {
                    bitmap = null;
                }
                Bitmap bitmap2 = bitmap;
                int i3 = imageViewListVert.t;
                if (i3 == 1) {
                    this.j = DbBookAlbum.b(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.s, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x, bitmap2);
                    DataBookAlbum.k(imageViewListVert.f15915a).j(this.j);
                } else if (i3 == 2) {
                    this.j = DbBookPdf.b(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.s, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x, bitmap2);
                    DataBookPdf.k(imageViewListVert.f15915a).j(this.j);
                } else if (i3 == 3) {
                    this.j = DbBookCmp.b(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.s, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x, bitmap2);
                    DataBookCmp.k(imageViewListVert.f15915a).j(this.j);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewListVert imageViewListVert;
            WeakReference weakReference = this.e;
            if (weakReference == null || (imageViewListVert = (ImageViewListVert) weakReference.get()) == null) {
                return;
            }
            imageViewListVert.g0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ImageViewListVert imageViewListVert;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewListVert = (ImageViewListVert) weakReference.get()) != null) {
                imageViewListVert.g0 = null;
                DialogListBook dialogListBook = imageViewListVert.m0;
                if (dialogListBook != null) {
                    MainItem.ChildItem childItem = this.j;
                    if (childItem != null) {
                        long j = childItem.y;
                        MainListView mainListView = dialogListBook.D;
                        if (mainListView != null) {
                            mainListView.L(j, false);
                            return;
                        }
                        return;
                    }
                    dialogListBook.t(false);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f16016a;

        public EventHandler(ImageViewListVert imageViewListVert) {
            super(Looper.getMainLooper());
            this.f16016a = new WeakReference(imageViewListVert);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ImageViewListVert imageViewListVert = (ImageViewListVert) this.f16016a.get();
            if (imageViewListVert != null && message.what == 0) {
                imageViewListVert.V0(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public final boolean f;
        public boolean g;

        public LoadTask(ImageViewListVert imageViewListVert, boolean z) {
            WeakReference weakReference = new WeakReference(imageViewListVert);
            this.e = weakReference;
            final ImageViewListVert imageViewListVert2 = (ImageViewListVert) weakReference.get();
            if (imageViewListVert2 == null) {
                return;
            }
            this.f = z;
            imageViewListVert2.d0 = false;
            ImageListVert imageListVert = imageViewListVert2.I;
            if (imageListVert != null) {
                imageListVert.setLoading(true);
            }
            ImageViewControl imageViewControl = imageViewListVert2.U;
            if (imageViewControl != null) {
                imageViewControl.A();
            }
            MyCoverView myCoverView = imageViewListVert2.S;
            if (myCoverView != null) {
                myCoverView.m(false);
                if (imageViewListVert2.t == 12) {
                    imageViewListVert2.S.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                            if (imageViewListVert3.f0 == null) {
                                return;
                            }
                            MainUtil.e8(imageViewListVert3.f15915a, R.string.server_delay);
                        }
                    }, 5000L);
                }
            }
            MainUtil.c();
            imageViewListVert2.R0(-1, -1, true);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:7|(1:61)(2:13|(7:15|16|17|(1:19)(8:37|(1:39)|40|(1:42)(1:58)|43|(2:45|(1:47)(2:48|(3:50|21|(1:36)(3:(2:24|(1:32))|33|34))))|51|(1:53)(2:54|(1:56)(1:57)))|20|21|(0)(0)))|60|16|17|(0)(0)|20|21|(0)(0)) */
        /* JADX WARN: Removed duplicated region for block: B:19:0x003c A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:17:0x0035, B:19:0x003c, B:37:0x0042, B:39:0x0048, B:40:0x004d, B:42:0x0064, B:45:0x0070, B:47:0x0078, B:48:0x007d, B:51:0x0088, B:54:0x008d, B:57:0x0095, B:58:0x0069), top: B:16:0x0035 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0042 A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:17:0x0035, B:19:0x003c, B:37:0x0042, B:39:0x0048, B:40:0x004d, B:42:0x0064, B:45:0x0070, B:47:0x0078, B:48:0x007d, B:51:0x0088, B:54:0x008d, B:57:0x0095, B:58:0x0069), top: B:16:0x0035 }] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r10 = this;
                java.lang.ref.WeakReference r0 = r10.e
                if (r0 != 0) goto L6
                goto Lbf
            L6:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.image.ImageViewListVert r0 = (com.mycompany.app.image.ImageViewListVert) r0
                if (r0 == 0) goto Lbf
                boolean r1 = r10.f12839c
                if (r1 == 0) goto L14
                goto Lbf
            L14:
                boolean r1 = r10.f
                r2 = 0
                r3 = 0
                if (r1 == 0) goto L33
                com.mycompany.app.compress.Compress r4 = r0.C
                if (r4 == 0) goto L33
                int r5 = r0.v
                if (r5 <= 0) goto L33
                int r5 = r0.w
                java.lang.String r4 = r4.n(r5)
                boolean r5 = android.text.TextUtils.isEmpty(r4)
                if (r5 != 0) goto L31
                int r5 = r0.x
                goto L35
            L31:
                r5 = r3
                goto L35
            L33:
                r4 = r2
                goto L31
            L35:
                com.mycompany.app.compress.Compress r6 = r0.D     // Catch: java.lang.Exception -> L40
                r0.D = r2     // Catch: java.lang.Exception -> L40
                r7 = 1
                if (r6 == 0) goto L42
                r0.C = r6     // Catch: java.lang.Exception -> L40
                r0.G = r7     // Catch: java.lang.Exception -> L40
            L40:
                r7 = r3
                goto L98
            L42:
                r0.G = r3     // Catch: java.lang.Exception -> L40
                com.mycompany.app.compress.Compress r6 = r0.C     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L4d
                r6.a()     // Catch: java.lang.Exception -> L40
                r0.C = r2     // Catch: java.lang.Exception -> L40
            L4d:
                android.content.Context r2 = r0.f15915a     // Catch: java.lang.Exception -> L40
                int r6 = r0.t     // Catch: java.lang.Exception -> L40
                java.lang.String r8 = r0.u     // Catch: java.lang.Exception -> L40
                java.lang.String r9 = r0.l     // Catch: java.lang.Exception -> L40
                com.mycompany.app.compress.Compress r2 = com.mycompany.app.compress.Compress.b(r6, r2, r8, r9)     // Catch: java.lang.Exception -> L40
                int r6 = r0.n     // Catch: java.lang.Exception -> L40
                r2.e = r6     // Catch: java.lang.Exception -> L40
                int r6 = r2.s()     // Catch: java.lang.Exception -> L40
                r8 = 3
                if (r6 != r8) goto L69
                java.lang.String r8 = com.mycompany.app.main.MainConst.J     // Catch: java.lang.Exception -> L40
                r2.f = r8     // Catch: java.lang.Exception -> L40
                goto L6d
            L69:
                java.lang.String r8 = "UTF-8"
                r2.f = r8     // Catch: java.lang.Exception -> L40
            L6d:
                r8 = 2
                if (r6 != r8) goto L88
                java.lang.String r6 = r0.F     // Catch: java.lang.Exception -> L40
                boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L40
                if (r6 != 0) goto L7d
                java.lang.String r6 = r0.F     // Catch: java.lang.Exception -> L40
                r2.g = r6     // Catch: java.lang.Exception -> L40
                goto L88
            L7d:
                java.lang.String r6 = r2.t()     // Catch: java.lang.Exception -> L40
                boolean r6 = com.mycompany.app.compress.CompressUtilZip2.a(r6)     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L88
                goto L98
            L88:
                boolean r6 = r0.i     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L8d
                goto L40
            L8d:
                r2.M()     // Catch: java.lang.Exception -> L40
                boolean r6 = r0.i     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L95
                goto L40
            L95:
                r0.C = r2     // Catch: java.lang.Exception -> L40
                goto L40
            L98:
                r10.g = r7
                if (r7 == 0) goto L9d
                goto Lbf
            L9d:
                if (r1 == 0) goto Lbc
                r0.w = r3
                r0.x = r3
                boolean r1 = android.text.TextUtils.isEmpty(r4)
                if (r1 != 0) goto Lbc
                com.mycompany.app.compress.Compress r1 = r0.C
                if (r1 == 0) goto Lbc
                int r2 = r0.v
                if (r2 <= 0) goto Lbc
                int r1 = r1.m(r4)
                r2 = -1
                if (r1 == r2) goto Lbc
                r0.w = r1
                r0.x = r5
            Lbc:
                com.mycompany.app.image.ImageViewListVert.P(r0)
            Lbf:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewListVert.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewListVert imageViewListVert;
            int i;
            boolean z;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewListVert = (ImageViewListVert) weakReference.get()) != null) {
                imageViewListVert.f0 = null;
                imageViewListVert.D = null;
                imageViewListVert.e0 = false;
                if (imageViewListVert.G0()) {
                    i = PrefImage.u;
                } else {
                    i = PrefImage.t;
                }
                if (i != 3) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    imageViewListVert.b0(true);
                    return;
                }
                ImageListVert imageListVert = imageViewListVert.I;
                if (imageListVert != null) {
                    imageListVert.setLoading(false);
                }
                MyCoverView myCoverView = imageViewListVert.S;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final ImageViewListVert imageViewListVert;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewListVert = (ImageViewListVert) weakReference.get()) != null) {
                imageViewListVert.f0 = null;
                imageViewListVert.D = null;
                if (this.g) {
                    MyCoverView myCoverView = imageViewListVert.S;
                    if (myCoverView != null && !myCoverView.t) {
                        myCoverView.t = true;
                        myCoverView.invalidate();
                    }
                    if (imageViewListVert.b != null && !imageViewListVert.J0()) {
                        imageViewListVert.k0();
                        imageViewListVert.h0(true);
                        if (imageViewListVert.C == null) {
                            return;
                        }
                        imageViewListVert.H0 = true;
                        MainApp.K1 = true;
                        DialogEditText dialogEditText = new DialogEditText(imageViewListVert.b, R.string.password, imageViewListVert.C.t(), imageViewListVert.s, true, new DialogEditText.EditTextListener() { // from class: com.mycompany.app.image.ImageViewListVert.17
                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void a(String str) {
                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                imageViewListVert2.F = str;
                                imageViewListVert2.k0();
                                imageViewListVert2.c0(false);
                            }

                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void b() {
                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                ImageViewListVert.P(imageViewListVert2);
                                ImageViewListVert.Q(imageViewListVert2, false, true);
                            }
                        });
                        imageViewListVert.E = dialogEditText;
                        dialogEditText.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.18
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ImageViewListVert.this.k0();
                            }
                        });
                        return;
                    }
                    return;
                }
                ImageViewListVert.Q(imageViewListVert, this.f, false);
            }
        }
    }

    public static void N(ImageViewListVert imageViewListVert) {
        MySizeFrame mySizeFrame = imageViewListVert.H;
        if (mySizeFrame != null) {
            try {
                ImageTransView imageTransView = imageViewListVert.N0;
                if (imageTransView != null) {
                    imageTransView.g();
                    return;
                }
                ImageViewControl imageViewControl = imageViewListVert.U;
                if (imageViewControl != null) {
                    int indexOfChild = mySizeFrame.indexOfChild(imageViewControl);
                    Compress compress = imageViewListVert.C;
                    if (compress != null) {
                        boolean u = imageViewListVert.C.u(compress.n(imageViewListVert.w));
                        ImageTransView imageTransView2 = new ImageTransView(imageViewListVert.b);
                        imageViewListVert.N0 = imageTransView2;
                        MySizeFrame mySizeFrame2 = imageViewListVert.H;
                        ImageTransView.ImageTransListener imageTransListener = new ImageTransView.ImageTransListener() { // from class: com.mycompany.app.image.ImageViewListVert.59
                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void b() {
                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                if (imageViewListVert2.d0) {
                                    if (imageViewListVert2.F0()) {
                                        MainUtil.e8(imageViewListVert2.f15915a, R.string.wait_retry);
                                        return;
                                    }
                                    imageViewListVert2.D0();
                                    imageViewListVert2.h0(true);
                                    Compress compress2 = imageViewListVert2.C;
                                    if (compress2 == null) {
                                        return;
                                    }
                                    ImageViewListVert.T(imageViewListVert2, compress2.n(imageViewListVert2.w), null, false);
                                }
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void c(boolean z) {
                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                if (!imageViewListVert2.d0) {
                                    return;
                                }
                                if (imageViewListVert2.F0()) {
                                    MainUtil.e8(imageViewListVert2.f15915a, R.string.wait_retry);
                                    return;
                                }
                                if (z && PrefAlbum.F) {
                                    ImageViewListVert.U(imageViewListVert2);
                                    return;
                                }
                                imageViewListVert2.D0();
                                imageViewListVert2.h0(true);
                                ImageViewListVert.Z(imageViewListVert2, z);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void d() {
                                ImageViewListVert.V(ImageViewListVert.this);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void e(View view) {
                                ImageViewListVert.X(ImageViewListVert.this, view);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void f(View view) {
                                ImageViewListVert.Y(ImageViewListVert.this, view);
                            }
                        };
                        imageTransView2.h = mySizeFrame2;
                        imageTransView2.g = imageTransListener;
                        imageTransView2.o = indexOfChild;
                        imageTransView2.p = u;
                        imageTransView2.c();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void O(ImageViewListVert imageViewListVert) {
        List list;
        Context context = imageViewListVert.f15915a;
        if (context != null && (list = DataUrl.b(context).b) != null && !list.isEmpty()) {
            int size = list.size();
            String str = null;
            String str2 = null;
            int i = -1;
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 != imageViewListVert.w) {
                    String str3 = (String) list.get(i2);
                    if (URLUtil.isNetworkUrl(str3) && (i == -1 || Math.abs(imageViewListVert.w - i2) < Math.abs(imageViewListVert.w - i))) {
                        i = i2;
                        str2 = str3;
                    }
                }
            }
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 != imageViewListVert.w && i4 != i) {
                    String str4 = (String) list.get(i4);
                    if (URLUtil.isNetworkUrl(str4) && (i3 == -1 || Math.abs(imageViewListVert.w - i4) < Math.abs(imageViewListVert.w - i3))) {
                        i3 = i4;
                        str = str4;
                    }
                }
            }
            imageViewListVert.Y0 = str2;
            imageViewListVert.Z0 = i;
            imageViewListVert.a1 = str;
            imageViewListVert.b1 = i3;
            MySizeFrame mySizeFrame = imageViewListVert.H;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.24
                    @Override // java.lang.Runnable
                    public final void run() {
                        final ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                        String str5 = imageViewListVert2.Y0;
                        int i5 = imageViewListVert2.Z0;
                        String str6 = imageViewListVert2.a1;
                        int i6 = imageViewListVert2.b1;
                        imageViewListVert2.Y0 = null;
                        imageViewListVert2.a1 = null;
                        if (!TextUtils.isEmpty(str5)) {
                            WebLoadWrap webLoadWrap = imageViewListVert2.o;
                            if (webLoadWrap == null) {
                                imageViewListVert2.o = WebLoadWrap.a(imageViewListVert2.n, imageViewListVert2.b, imageViewListVert2.H, str5, i5, true, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewListVert.25
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewListVert.R(ImageViewListVert.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                        if (imageViewListVert3.q || (imageViewActivity = imageViewListVert3.b) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass27());
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void a() {
                                    }
                                });
                            } else {
                                webLoadWrap.d(i5, str5);
                            }
                        }
                        if (!TextUtils.isEmpty(str6)) {
                            WebLoadWrap webLoadWrap2 = imageViewListVert2.p;
                            if (webLoadWrap2 == null) {
                                imageViewListVert2.p = WebLoadWrap.a(imageViewListVert2.n, imageViewListVert2.b, imageViewListVert2.H, str6, i6, false, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewListVert.26
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewListVert.R(ImageViewListVert.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                        if (imageViewListVert3.q || (imageViewActivity = imageViewListVert3.b) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass27());
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void a() {
                                    }
                                });
                            } else {
                                webLoadWrap2.d(i6, str6);
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public static void P(ImageViewListVert imageViewListVert) {
        boolean z;
        int i;
        boolean z2;
        Compress compress = imageViewListVert.C;
        boolean z3 = false;
        if (compress != null && compress.R() != 0) {
            ZoomImageAttacher zoomImageAttacher = imageViewListVert.h0;
            if (zoomImageAttacher != null) {
                zoomImageAttacher.x = false;
            }
            int R = compress.R();
            imageViewListVert.v = R;
            int i2 = imageViewListVert.w;
            if (i2 >= 0 && i2 <= R - 1 && imageViewListVert.x != 0) {
                z = false;
            } else {
                if (i2 == -1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i = R - 1;
                } else {
                    i = 0;
                }
                imageViewListVert.w = i;
                imageViewListVert.x = 0;
            }
            if (imageViewListVert.t != 12 && R > 0) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = compress;
                obj.r = imageViewListVert.l;
                ImageViewActivity imageViewActivity = imageViewListVert.b;
                boolean G0 = imageViewListVert.G0();
                if (imageViewListVert.t == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.t = MainUtil.l0(imageViewActivity, G0, z2);
                if (imageViewListVert.t == 12) {
                    z3 = true;
                }
                obj.u = z3;
                int i3 = imageViewListVert.w;
                obj.f = i3;
                if (compress.g(i3) == null) {
                    ImageLoader.f().k(obj, imageViewListVert.b0);
                }
            }
            if (!MainUtil.H5(imageViewListVert.b)) {
                imageViewListVert.x = 1;
                return;
            }
            int i4 = imageViewListVert.x;
            if (i4 == 0 || i4 == 1) {
                int g0 = imageViewListVert.g0(imageViewListVert.w, true);
                imageViewListVert.x = g0;
                if (z) {
                    if (g0 == 3) {
                        imageViewListVert.x = 4;
                        return;
                    } else {
                        if (g0 == 4) {
                            imageViewListVert.x = 3;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        imageViewListVert.v = 0;
        imageViewListVert.w = 0;
        imageViewListVert.x = 2;
        ZoomImageAttacher zoomImageAttacher2 = imageViewListVert.h0;
        if (zoomImageAttacher2 != null) {
            zoomImageAttacher2.x = true;
        }
    }

    public static void Q(ImageViewListVert imageViewListVert, boolean z, boolean z2) {
        int i;
        boolean z3;
        MySizeFrame mySizeFrame;
        imageViewListVert.e0 = false;
        if (imageViewListVert.G0()) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 3) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            imageViewListVert.b0(true);
            return;
        }
        if (imageViewListVert.I != null) {
            ImageListAdapter imageListAdapter = imageViewListVert.J;
            if (imageListAdapter == null) {
                ImageViewActivity imageViewActivity = imageViewListVert.b;
                ImageListAdapter imageListAdapter2 = new ImageListAdapter(imageViewActivity, imageViewListVert.f15915a, imageViewListVert.H, imageViewListVert.C, imageViewListVert.t, imageViewListVert.b0, MainUtil.E5(imageViewActivity), MainUtil.H5(imageViewListVert.b), MainUtil.S1(imageViewListVert.b), true);
                imageViewListVert.J = imageListAdapter2;
                imageListAdapter2.v = new ImageListAdapter.ImageListListener() { // from class: com.mycompany.app.image.ImageViewListVert.20
                    @Override // com.mycompany.app.image.ImageListAdapter.ImageListListener
                    public final void a(int i2) {
                        WebLoadWrap webLoadWrap;
                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                        if (imageViewListVert2.n != 0 && (webLoadWrap = imageViewListVert2.o) != null) {
                            webLoadWrap.c(i2);
                        }
                    }

                    @Override // com.mycompany.app.image.ImageListAdapter.ImageListListener
                    public final RecyclerView b() {
                        return ImageViewListVert.this.I;
                    }

                    @Override // com.mycompany.app.image.ImageListAdapter.ImageListListener
                    public final int c() {
                        return ImageViewListVert.this.r;
                    }

                    @Override // com.mycompany.app.image.ImageListAdapter.ImageListListener
                    public final String d() {
                        return ImageViewListVert.this.u;
                    }
                };
                imageViewListVert.I.setAdapter(imageListAdapter2);
            } else {
                imageListAdapter.h = imageViewListVert.C;
                imageListAdapter.g();
            }
            boolean H0 = imageViewListVert.H0();
            imageViewListVert.I.setNextOpenable(H0);
            ImageListAdapter imageListAdapter3 = imageViewListVert.J;
            imageListAdapter3.p = H0;
            boolean z4 = imageViewListVert.m;
            boolean z5 = imageViewListVert.G;
            int i2 = imageViewListVert.n;
            imageListAdapter3.q = z4;
            if (!z5) {
                imageListAdapter3.r = null;
            }
            imageListAdapter3.s = i2;
        }
        if (z) {
            if (imageViewListVert.t == 12 && DataUrl.b(imageViewListVert.f15915a).a() > imageViewListVert.v) {
                MainUtil.f8(imageViewListVert.f15915a, String.format(Locale.US, imageViewListVert.f15915a.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewListVert.f15915a).a() - imageViewListVert.v)));
            }
        } else if (z2) {
            MainUtil.e8(imageViewListVert.f15915a, R.string.invalid_password);
        } else if (!imageViewListVert.G) {
            if (imageViewListVert.t == 12 && DataUrl.b(imageViewListVert.f15915a).a() > imageViewListVert.v) {
                MainUtil.f8(imageViewListVert.f15915a, String.format(Locale.US, imageViewListVert.f15915a.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewListVert.f15915a).a() - imageViewListVert.v)));
            } else if (imageViewListVert.v == 0) {
                MainUtil.e8(imageViewListVert.f15915a, R.string.no_image);
            }
        }
        ImageViewControl imageViewControl = imageViewListVert.U;
        if (imageViewControl != null) {
            imageViewControl.t(imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
            imageViewListVert.U.p(imageViewListVert.t, imageViewListVert.n, imageViewListVert.C);
        }
        imageViewListVert.M0();
        ImageListVert imageListVert = imageViewListVert.I;
        if (imageListVert != null) {
            imageListVert.setLoading(false);
        }
        MyCoverView myCoverView = imageViewListVert.S;
        if (myCoverView != null) {
            myCoverView.f(true);
        }
        imageViewListVert.d0 = true;
        if (!PrefZone.n0 || (mySizeFrame = imageViewListVert.H) == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.21
            @Override // java.lang.Runnable
            public final void run() {
                boolean z6 = PrefZone.n0;
                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                if (z6) {
                    ImageViewListVert.N(imageViewListVert2);
                    return;
                }
                ImageTransView imageTransView = imageViewListVert2.N0;
                if (imageTransView != null) {
                    imageTransView.e();
                    imageViewListVert2.N0 = null;
                }
            }
        });
    }

    public static void R(ImageViewListVert imageViewListVert, int i, String str) {
        MainItem.ViewItem viewItem;
        Compress compress = imageViewListVert.C;
        if (compress != null) {
            compress.T(i, str);
        }
        ImageListVert imageListVert = imageViewListVert.I;
        if (imageListVert != null && imageViewListVert.J != null) {
            try {
                int childCount = imageListVert.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = imageViewListVert.I.getChildAt(i2);
                    if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && i == viewItem.f) {
                        imageViewListVert.J.C(viewItem);
                        ImageViewControl imageViewControl = imageViewListVert.U;
                        if (imageViewControl != null) {
                            imageViewControl.setPathChanged(i);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception unused) {
            }
            ImageViewControl imageViewControl2 = imageViewListVert.U;
            if (imageViewControl2 != null) {
                imageViewControl2.setPathChanged(i);
            }
            imageViewListVert.J.y(i);
        }
    }

    public static void S(ImageViewListVert imageViewListVert) {
        ImageViewControl imageViewControl = imageViewListVert.U;
        if (imageViewControl != null) {
            imageViewControl.setTitle(imageViewListVert.s);
            imageViewListVert.U.t(imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
            Compress compress = imageViewListVert.C;
            if (compress != null) {
                boolean u = imageViewListVert.C.u(compress.n(imageViewListVert.w));
                ImageTransView imageTransView = imageViewListVert.N0;
                if (imageTransView != null) {
                    imageTransView.setIconTrans(u);
                }
                imageViewListVert.U.y(u);
            }
            if (imageViewListVert.V > -1 && imageViewListVert.W > -1) {
                int width = imageViewListVert.I.getWidth();
                int height = imageViewListVert.I.getHeight();
                imageViewListVert.U.n(false, width, height, width, height);
                imageViewListVert.U.w();
            }
        }
    }

    public static void T(ImageViewListVert imageViewListVert, String str, String str2, boolean z) {
        Compress compress = imageViewListVert.C;
        if (compress != null) {
            compress.Q(str, str2, z);
            imageViewListVert.i1 = z;
            MySizeFrame mySizeFrame = imageViewListVert.H;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.61
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                    boolean z2 = imageViewListVert2.i1;
                    MyCoverView myCoverView = imageViewListVert2.S;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    WebTransOcrCtrl webTransOcrCtrl = imageViewListVert2.M0;
                    if (webTransOcrCtrl != null) {
                        webTransOcrCtrl.h(PrefAlbum.y, z2);
                    }
                    MySizeFrame mySizeFrame2 = imageViewListVert2.H;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.61.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListVert.this.M0();
                        }
                    });
                }
            });
        }
    }

    public static void U(ImageViewListVert imageViewListVert) {
        if (imageViewListVert.b == null || imageViewListVert.S0 != null) {
            return;
        }
        imageViewListVert.n0();
        imageViewListVert.H0 = true;
        MainApp.K1 = true;
        StringBuilder sb = new StringBuilder();
        a.x(imageViewListVert.f15915a, R.string.ocr_trans_reload_1, sb, "\n");
        sb.append(imageViewListVert.f15915a.getString(R.string.ocr_trans_reload_2));
        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewListVert.b, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewListVert.70
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                if (z) {
                    PrefAlbum.F = false;
                    PrefSet.d(0, imageViewListVert2.f15915a, "mOcrReload", false);
                }
                imageViewListVert2.n0();
            }
        });
        imageViewListVert.S0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.71
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                imageViewListVert2.n0();
                imageViewListVert2.D0();
                imageViewListVert2.h0(true);
                ImageViewListVert.Z(imageViewListVert2, true);
            }
        });
    }

    public static void V(ImageViewListVert imageViewListVert) {
        if (imageViewListVert.b == null || imageViewListVert.T0 != null) {
            return;
        }
        imageViewListVert.u0();
        imageViewListVert.H0 = true;
        MainApp.K1 = true;
        DialogSeekSimple dialogSeekSimple = new DialogSeekSimple(imageViewListVert.b, 2, PrefAlbum.B, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.image.ImageViewListVert.72
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                if (PrefAlbum.B == i) {
                    return;
                }
                PrefAlbum.B = i;
                PrefSet.f(ImageViewListVert.this.f15915a, 0, i, "mOcrZoom");
            }
        });
        imageViewListVert.T0 = dialogSeekSimple;
        dialogSeekSimple.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.73
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert.this.u0();
            }
        });
    }

    public static void W(ImageViewListVert imageViewListVert, String str, String str2, String str3) {
        if (imageViewListVert.b == null || imageViewListVert.J0()) {
            return;
        }
        imageViewListVert.v0();
        imageViewListVert.h0(true);
        imageViewListVert.H0 = true;
        MainApp.K1 = true;
        imageViewListVert.d1 = str;
        imageViewListVert.e1 = str2;
        imageViewListVert.f1 = str3;
        DialogSetDown dialogSetDown = new DialogSetDown(imageViewListVert.b, str, str3, imageViewListVert.G0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.image.ImageViewListVert.49
            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
            public final void a(String str4, String str5, String str6) {
                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                String str7 = imageViewListVert2.d1;
                String str8 = imageViewListVert2.e1;
                String str9 = imageViewListVert2.f1;
                imageViewListVert2.d1 = null;
                imageViewListVert2.e1 = null;
                imageViewListVert2.f1 = null;
                MainUtil.G4(imageViewListVert2.b, str5, str6, str7, imageViewListVert2.l, str8, str9);
            }
        });
        imageViewListVert.p0 = dialogSetDown;
        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.50
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert.this.v0();
            }
        });
    }

    public static void X(ImageViewListVert imageViewListVert, View view) {
        boolean z;
        boolean z2;
        if (imageViewListVert.b != null && imageViewListVert.W0 == null) {
            imageViewListVert.z0();
            if (view != null) {
                ArrayList arrayList = new ArrayList();
                int i = R.string.color_white;
                boolean z3 = false;
                if (PrefAlbum.C == 0) {
                    z = true;
                } else {
                    z = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, i, z));
                int i2 = R.string.color_black;
                if (PrefAlbum.C == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, i2, z2));
                int i3 = R.string.automatic;
                if (PrefAlbum.C == 2) {
                    z3 = true;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(2, i3, z3));
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewListVert.b, imageViewListVert.H, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewListVert.77
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewListVert.this.z0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefAlbum.C != i4) {
                            PrefAlbum.C = i4;
                            ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                            PrefSet.f(imageViewListVert2.f15915a, 0, i4, "mOcrBack");
                            OcrDetector ocrDetector = imageViewListVert2.X0;
                            if (ocrDetector != null) {
                                ocrDetector.J();
                            }
                        }
                        return true;
                    }
                });
                imageViewListVert.W0 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewListVert.b;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void Y(ImageViewListVert imageViewListVert, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (imageViewListVert.b != null && imageViewListVert.V0 == null) {
            imageViewListVert.A0();
            if (view != null) {
                ArrayList arrayList = new ArrayList();
                boolean z6 = false;
                if (PrefAlbum.A == 0) {
                    z = true;
                } else {
                    z = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem("Alphabet", 0, z));
                if (PrefAlbum.A == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem("Chinese", 1, z2));
                if (PrefAlbum.A == 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem("Devanagari", 2, z3));
                if (PrefAlbum.A == 3) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem("Japanese", 3, z4));
                if (PrefAlbum.A == 4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem("Korean", 4, z5));
                int i = R.string.automatic;
                if (PrefAlbum.A == 5) {
                    z6 = true;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(5, i, z6));
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewListVert.b, imageViewListVert.H, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewListVert.76
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewListVert.this.A0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i2) {
                        if (PrefAlbum.A != i2) {
                            PrefAlbum.A = i2;
                            final ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                            PrefSet.f(imageViewListVert2.f15915a, 0, i2, "mOcrLang");
                            WebTransOcrCtrl webTransOcrCtrl = imageViewListVert2.M0;
                            if (webTransOcrCtrl != null) {
                                webTransOcrCtrl.g();
                            }
                            ImageTransView imageTransView = imageViewListVert2.N0;
                            if (imageTransView != null) {
                                imageTransView.o();
                            }
                            if (PrefAlbum.E && PrefAlbum.A == 5 && imageViewListVert2.b != null && imageViewListVert2.R0 == null) {
                                imageViewListVert2.l0();
                                imageViewListVert2.H0 = true;
                                MainApp.K1 = true;
                                StringBuilder sb = new StringBuilder();
                                a.x(imageViewListVert2.f15915a, R.string.fast_down_guide, sb, "\n");
                                sb.append(imageViewListVert2.f15915a.getString(R.string.dark_mode_info_2));
                                DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewListVert2.b, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewListVert.68
                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                    public final void a(boolean z7) {
                                        ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                        if (z7) {
                                            PrefAlbum.E = false;
                                            PrefSet.d(0, imageViewListVert3.f15915a, "mOcrAuto", false);
                                        }
                                        imageViewListVert3.l0();
                                    }
                                });
                                imageViewListVert2.R0 = dialogConfirm;
                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.69
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        ImageViewListVert.this.l0();
                                    }
                                });
                            }
                        }
                        return true;
                    }
                });
                imageViewListVert.V0 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewListVert.b;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void Z(ImageViewListVert imageViewListVert, boolean z) {
        if (imageViewListVert.b == null) {
            return;
        }
        MyCoverView myCoverView = imageViewListVert.S;
        if (myCoverView != null) {
            myCoverView.m(true);
        }
        imageViewListVert.j1 = z;
        imageViewListVert.b.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.78
            @Override // java.lang.Runnable
            public final void run() {
                Bitmap bitmap;
                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                boolean z2 = imageViewListVert2.j1;
                Compress compress = imageViewListVert2.C;
                if (compress != null) {
                    String n = compress.n(imageViewListVert2.w);
                    Compress compress2 = imageViewListVert2.C;
                    if (compress2 == null) {
                        bitmap = null;
                    } else {
                        String n2 = compress2.n(imageViewListVert2.w);
                        String r = imageViewListVert2.C.r(n2);
                        boolean isEmpty = TextUtils.isEmpty(r);
                        if (!isEmpty) {
                            imageViewListVert2.C.Q(n2, r, false);
                        }
                        Bitmap e0 = imageViewListVert2.e0();
                        if (!isEmpty) {
                            imageViewListVert2.C.Q(n2, r, true);
                        }
                        bitmap = e0;
                    }
                    String D = OcrDetector.D(n);
                    if (!z2 && MainUtil.f6(Compress.q(D))) {
                        ImageViewListVert.T(imageViewListVert2, n, D, true);
                        return;
                    }
                    imageViewListVert2.k1 = n;
                    imageViewListVert2.l1 = bitmap;
                    imageViewListVert2.m1 = D;
                    MySizeFrame mySizeFrame = imageViewListVert2.H;
                    if (mySizeFrame == null) {
                        return;
                    }
                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.78.1
                        /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                            String str = imageViewListVert3.k1;
                            Bitmap bitmap2 = imageViewListVert3.l1;
                            String str2 = imageViewListVert3.m1;
                            imageViewListVert3.k1 = null;
                            imageViewListVert3.l1 = null;
                            imageViewListVert3.m1 = null;
                            if (imageViewListVert3.b != null) {
                                if (!MainUtil.f6(bitmap2)) {
                                    MyCoverView myCoverView2 = imageViewListVert3.S;
                                    if (myCoverView2 != null) {
                                        myCoverView2.f(true);
                                        return;
                                    }
                                    return;
                                }
                                OcrDetector ocrDetector = imageViewListVert3.X0;
                                if (ocrDetector != null) {
                                    ocrDetector.M(str, str2, bitmap2);
                                    return;
                                }
                                ?? obj = new Object();
                                imageViewListVert3.X0 = obj;
                                ImageViewActivity imageViewActivity = imageViewListVert3.b;
                                MySizeFrame mySizeFrame2 = imageViewListVert3.H;
                                OcrDetector.OcrListener ocrListener = new OcrDetector.OcrListener() { // from class: com.mycompany.app.image.ImageViewListVert.81
                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void b(boolean z3) {
                                        ImageViewListVert imageViewListVert4 = ImageViewListVert.this;
                                        if (z3) {
                                            MyCoverView myCoverView3 = imageViewListVert4.S;
                                            if (myCoverView3 != null) {
                                                myCoverView3.m(true);
                                                return;
                                            }
                                            return;
                                        }
                                        MyCoverView myCoverView4 = imageViewListVert4.S;
                                        if (myCoverView4 != null) {
                                            myCoverView4.f(true);
                                        }
                                    }

                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void c(int i, String str3, String str4) {
                                        final ImageViewListVert imageViewListVert4 = ImageViewListVert.this;
                                        if (imageViewListVert4.f15915a != null) {
                                            MyCoverView myCoverView3 = imageViewListVert4.S;
                                            if (myCoverView3 != null) {
                                                myCoverView3.f(true);
                                            }
                                            if (i != 2) {
                                                if (i == 0) {
                                                    ImageViewListVert.T(imageViewListVert4, str3, str4, true);
                                                    return;
                                                }
                                                if (i == 1) {
                                                    if (PrefAlbum.D && PrefAlbum.A != 5) {
                                                        if (imageViewListVert4.b == null || imageViewListVert4.Q0 != null) {
                                                            return;
                                                        }
                                                        imageViewListVert4.m0();
                                                        imageViewListVert4.H0 = true;
                                                        MainApp.K1 = true;
                                                        StringBuilder sb = new StringBuilder();
                                                        a.x(imageViewListVert4.f15915a, R.string.ocr_fail, sb, "\n\n");
                                                        a.x(imageViewListVert4.f15915a, R.string.ocr_guide_2, sb, "\n");
                                                        sb.append(imageViewListVert4.f15915a.getString(R.string.ocr_guide_3));
                                                        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewListVert4.b, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewListVert.66
                                                            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                                            public final void a(boolean z3) {
                                                                ImageViewListVert imageViewListVert5 = ImageViewListVert.this;
                                                                if (z3) {
                                                                    PrefAlbum.D = false;
                                                                    PrefSet.d(0, imageViewListVert5.f15915a, "mOcrNoti", false);
                                                                }
                                                                imageViewListVert5.m0();
                                                            }
                                                        });
                                                        imageViewListVert4.Q0 = dialogConfirm;
                                                        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.67
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                ImageViewListVert.this.m0();
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    MainUtil.e8(imageViewListVert4.f15915a, R.string.ocr_fail);
                                                    return;
                                                }
                                                MainUtil.e8(imageViewListVert4.f15915a, R.string.fail);
                                            }
                                        }
                                    }
                                };
                                obj.m = imageViewActivity;
                                obj.n = mySizeFrame2;
                                obj.o = ocrListener;
                                obj.J();
                                imageViewListVert3.X0.M(str, str2, bitmap2);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void A() {
        ImageCoverView imageCoverView;
        int i;
        if (this.C != null && this.I != null && (imageCoverView = this.T) != null && !imageCoverView.d()) {
            int i2 = this.v;
            if (i2 == 0) {
                if (H0()) {
                    if (PrefImage.s) {
                        Q0(this.v, this.w, this.x, 2, this.u, false, false);
                        return;
                    } else {
                        Q0(this.v, this.w, this.x, 1, this.u, true, false);
                        return;
                    }
                }
                return;
            }
            if (PrefImage.s) {
                if (this.w == 0 && H0()) {
                    Q0(this.v, this.w, this.x, 2, this.u, false, false);
                    return;
                } else {
                    int i3 = this.w;
                    int i4 = this.v;
                    i = android.support.v4.media.a.B(i3, i4, 1, i4);
                }
            } else {
                if (this.w == i2 - 1 && H0()) {
                    Q0(this.v, this.w, this.x, 1, this.u, true, false);
                    return;
                }
                i = (this.w + 1) % this.v;
            }
            h(i);
        }
    }

    public final void A0() {
        MyPopupMenu myPopupMenu = this.V0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.V0 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void B() {
        if (this.U == null || this.b == null || J0()) {
            return;
        }
        q0();
        h0(true);
        this.H0 = true;
        MainApp.K1 = true;
        DataUrl.ImgCntItem imgCntItem = DataUrl.b(this.f15915a).f12902c;
        this.i0 = false;
        DialogImageType dialogImageType = new DialogImageType(this.b, imgCntItem, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewListVert.34
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.i0 = true;
                imageViewListVert.c0(true);
            }
        });
        this.j0 = dialogImageType;
        dialogImageType.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.35
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.q0();
                if (imageViewListVert.i0) {
                    imageViewListVert.i0 = false;
                } else {
                    imageViewListVert.Y0(true);
                }
            }
        });
    }

    public final void B0() {
        MyPopupMenu myPopupMenu = this.t0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.t0 = null;
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void C(RectF rectF, boolean z) {
        if (!I0()) {
            if (z) {
                X0(true);
            }
            ImageViewControl imageViewControl = this.U;
            if (imageViewControl != null) {
                imageViewControl.j(rectF);
            }
        }
    }

    public final void C0() {
        MyPopupMenu myPopupMenu = this.s0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.s0 = null;
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void D(MotionEvent motionEvent, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        int i2;
        ImageListVert imageListVert;
        ImageListVert imageListVert2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z4 = false;
        if (PrefImage.D == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (PrefImage.E == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && z3 && !z) {
            if (actionMasked == 0) {
                this.C0 = false;
                this.D0 = false;
                this.E0 = false;
                this.F0 = false;
            }
            if (!z && !this.z0 && (imageListVert2 = this.I) != null) {
                imageListVert2.dispatchTouchEvent(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3 || actionMasked == 5) {
                        this.C0 = false;
                        this.D0 = false;
                        this.E0 = false;
                        this.F0 = false;
                    }
                } else if ((this.C0 || this.D0 || z) && !this.E0) {
                    if (MainUtil.I0(this.A0, motionEvent.getX(), this.B0, motionEvent.getY()) > MainApp.r1) {
                        z4 = true;
                    }
                    this.E0 = z4;
                }
            } else {
                this.F0 = false;
                if (!this.E0 && !this.L) {
                    if (!this.C0 && !this.D0) {
                        if (z) {
                            c1();
                        }
                    } else if (z) {
                        k();
                    }
                } else {
                    this.C0 = false;
                    this.D0 = false;
                    this.E0 = false;
                }
            }
        } else {
            this.A0 = motionEvent.getX();
            this.B0 = motionEvent.getY();
            this.C0 = false;
            this.D0 = false;
            this.E0 = false;
            this.F0 = false;
            if (G0()) {
                i = PrefImage.H;
                i2 = PrefImage.I;
            } else {
                i = PrefImage.F;
                i2 = PrefImage.G;
            }
            float f = this.A0;
            if (f < i) {
                if (PrefImage.D == 0) {
                    z4 = true;
                }
                this.C0 = z4;
            } else if (f > this.H.getWidth() - i2) {
                if (PrefImage.E == 0) {
                    z4 = true;
                }
                this.D0 = z4;
            }
        }
        if (!z && !this.z0 && (imageListVert = this.I) != null) {
            imageListVert.dispatchTouchEvent(motionEvent);
        }
    }

    public final void D0() {
        WebTransOcrCtrl webTransOcrCtrl = this.M0;
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.i(false);
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void E() {
        if (H0()) {
            if (PrefImage.s) {
                Q0(this.v, this.w, this.x, 1, this.u, true, true);
                return;
            } else {
                Q0(this.v, this.w, this.x, 2, this.u, false, true);
                return;
            }
        }
        int i = 0;
        if (PrefImage.s) {
            int i2 = this.w;
            int i3 = this.v - 1;
            if (i2 != i3) {
                i = i3;
            }
            h(i);
            return;
        }
        if (this.w == 0) {
            i = this.v - 1;
        }
        h(i);
    }

    public final boolean E0() {
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl == null) {
            return false;
        }
        return imageViewControl.f();
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void F(Configuration configuration) {
        if (!this.e0) {
            b0(true);
            DialogListBook dialogListBook = this.m0;
            if (dialogListBook != null) {
                dialogListBook.q(configuration);
            }
            DialogCapture dialogCapture = this.n0;
            if (dialogCapture != null) {
                dialogCapture.q(G0());
            }
            DialogDownUrl dialogDownUrl = this.o0;
            if (dialogDownUrl != null) {
                dialogDownUrl.S(G0());
            }
            DialogPreview dialogPreview = this.q0;
            if (dialogPreview != null) {
                dialogPreview.D(G0());
            }
            if (E0()) {
                W0();
            }
        }
    }

    public final boolean F0() {
        MyCoverView myCoverView = this.S;
        if (myCoverView != null && myCoverView.h()) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void G() {
        ImageViewActivity imageViewActivity;
        this.i = true;
        EventHandler eventHandler = this.z;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.z = null;
        }
        Compress compress = this.C;
        this.C = null;
        if (compress != null) {
            try {
                if (!this.x0 && this.t == 12) {
                    compress.a();
                }
            } catch (Exception unused) {
            }
        }
        ImageListVert imageListVert = this.I;
        if (imageListVert != null) {
            ValueAnimator valueAnimator = imageListVert.h1;
            imageListVert.h1 = null;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            imageListVert.i1 = 0;
            imageListVert.R0 = null;
            imageListVert.S0 = null;
            imageListVert.T0 = null;
            imageListVert.U0 = null;
            imageListVert.Y0 = null;
            this.I = null;
        }
        ImageListAdapter imageListAdapter = this.J;
        if (imageListAdapter != null) {
            imageListAdapter.e = null;
            imageListAdapter.f = null;
            imageListAdapter.g = null;
            imageListAdapter.h = null;
            imageListAdapter.j = null;
            imageListAdapter.r = null;
            imageListAdapter.v = null;
            this.J = null;
        }
        MyButtonImage myButtonImage = this.P;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.P = null;
        }
        MyCoverView myCoverView = this.S;
        if (myCoverView != null) {
            myCoverView.i();
            this.S = null;
        }
        ImageCoverView imageCoverView = this.T;
        if (imageCoverView != null) {
            ValueAnimator valueAnimator2 = imageCoverView.l;
            imageCoverView.l = null;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            imageCoverView.g = null;
            imageCoverView.h = null;
            imageCoverView.k = null;
            this.T = null;
        }
        MyFadeLinear myFadeLinear = this.X;
        if (myFadeLinear != null) {
            myFadeLinear.f();
            this.X = null;
        }
        MyFadeFrame myFadeFrame = this.G0;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.G0 = null;
        }
        MainUtil.R6(this.I0);
        this.I0 = null;
        this.f15915a = null;
        this.f15916c = null;
        this.s = null;
        this.H = null;
        this.M = null;
        this.Y = null;
        this.Z = null;
        this.a0 = null;
        this.b0 = null;
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.g();
            this.U = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.h0;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.h0 = null;
        }
        ImageViewActivity.SavedItem savedItem = this.f;
        if (savedItem != null && (imageViewActivity = this.b) != null) {
            imageViewActivity.v0(savedItem);
        }
        this.b = null;
        this.f = null;
    }

    public final boolean G0() {
        ImageViewActivity imageViewActivity = this.b;
        if (imageViewActivity == null) {
            return MainUtil.N5(this.f15915a);
        }
        return imageViewActivity.h0();
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean H(int i) {
        V0(true);
        if (PrefImage.o) {
            if (i != 24) {
                if (i != 25) {
                    return false;
                }
                if (!this.y0 && !F0() && !I0() && this.Q == null) {
                    T0();
                    return true;
                }
            } else if (!this.y0 && !F0() && !I0() && this.Q == null) {
                O0();
            }
            return true;
        }
        return false;
    }

    public final boolean H0() {
        Compress compress = this.C;
        if (compress != null && this.t != 12 && !this.j && compress.i() > 1) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void I(boolean z) {
        if (z) {
            this.i = true;
        }
        this.h = true;
        if (this.H0) {
            MainUtil.K7(this.b, false);
        } else {
            DialogCapture dialogCapture = this.n0;
            if (dialogCapture != null && dialogCapture.U) {
                MainUtil.K7(this.b, false);
            }
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.A();
        }
        DialogListBook dialogListBook = this.m0;
        if (dialogListBook != null) {
            dialogListBook.r(z);
        }
        DialogPreview dialogPreview = this.q0;
        if (dialogPreview != null) {
            dialogPreview.E();
        }
        C0();
        B0();
        L0();
        h0(true);
        S0();
        V0(false);
        ImageListAdapter imageListAdapter = this.J;
        if (imageListAdapter != null) {
            imageListAdapter.A(true);
        }
        ListTask listTask = this.c0;
        if (listTask != null) {
            listTask.a();
            this.c0 = null;
        }
        if (!this.d0) {
            LoadTask loadTask = this.f0;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.f0 = null;
        }
        int i = this.t;
        if (i == 1) {
            String str = this.u;
            PrefPath.j = str;
            PrefSet.c(6, this.f15915a, "mAlbumPath", str);
            DbAlbum.e(this.f15915a, this.u, this.v, this.w, this.x);
        } else if (i == 2) {
            String str2 = this.u;
            PrefPath.l = str2;
            PrefSet.c(6, this.f15915a, "mPdfPath", str2);
            DbPdf.f(this.f15915a, this.u, this.v, this.w, this.x);
        } else if (i == 3) {
            String str3 = this.u;
            PrefPath.k = str3;
            PrefSet.c(6, this.f15915a, "mCmpPath", str3);
            DbCmp.f(this.f15915a, this.u, this.v, this.w, this.x);
        }
        if (z) {
            i0();
            BookTask bookTask = this.g0;
            if (bookTask != null) {
                bookTask.f12839c = true;
            }
            this.g0 = null;
            K0();
            OcrDetector ocrDetector = this.X0;
            if (ocrDetector != null) {
                ocrDetector.E();
                this.X0 = null;
            }
            MainApp.T1 = null;
        }
    }

    public final boolean I0() {
        if (this.K != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00db, code lost:
    
        if (r7.r != (-1)) goto L60;
     */
    @Override // com.mycompany.app.image.ImageViewWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J() {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewListVert.J():void");
    }

    public final boolean J0() {
        if (this.E != null || this.j0 != null || this.k0 != null || this.l0 != null || this.m0 != null || this.n0 != null || this.o0 != null || this.p0 != null || this.q0 != null || this.r0 != null || this.O0 != null || this.P0 != null || this.Q0 != null || this.R0 != null || this.S0 != null || this.T0 != null || this.U0 != null) {
            return true;
        }
        OcrDetector ocrDetector = this.X0;
        if (ocrDetector != null && ocrDetector.P != null) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void K() {
        MySizeFrame mySizeFrame = this.H;
        if (mySizeFrame == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.28
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                if (imageViewListVert.H == null) {
                    return;
                }
                DialogCapture dialogCapture = imageViewListVert.n0;
                if (dialogCapture != null) {
                    dialogCapture.r();
                } else {
                    imageViewListVert.W0();
                }
            }
        });
    }

    public final void K0() {
        WebLoadWrap webLoadWrap = this.o;
        if (webLoadWrap != null) {
            webLoadWrap.b();
            this.o = null;
        }
        WebLoadWrap webLoadWrap2 = this.p;
        if (webLoadWrap2 != null) {
            webLoadWrap2.b();
            this.p = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean L() {
        if (this.M0 != null) {
            D0();
            return true;
        }
        ImageGifView imageGifView = this.Q;
        if (imageGifView != null) {
            imageGifView.d(true);
            return true;
        }
        return false;
    }

    public final void L0() {
        y0();
        o0();
        m0();
        l0();
        n0();
        u0();
        x0();
        A0();
        z0();
        FrameLayout frameLayout = this.L0;
        WebTransOcrCtrl webTransOcrCtrl = this.M0;
        this.L0 = null;
        this.M0 = null;
        if (frameLayout != null) {
            try {
                MySizeFrame mySizeFrame = this.H;
                if (mySizeFrame != null) {
                    mySizeFrame.removeView(frameLayout);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.d();
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void M(int i) {
        this.d = i;
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl == null) {
            return;
        }
        imageViewControl.setNaviHeight(i);
        this.U.v();
    }

    public final void M0() {
        ImageCoverView imageCoverView;
        View view;
        if (this.I == null) {
            return;
        }
        this.U.z(true);
        if (this.v == 0) {
            this.I.w0(50000, this.x);
            return;
        }
        if (!F0() && (imageCoverView = this.T) != null) {
            if (this.N) {
                view = this.M;
            } else {
                view = this.I;
            }
            imageCoverView.e(view, 2);
        }
        this.I.w0((50000 - (50000 % this.v)) + this.w, this.x);
    }

    public final void N0() {
        Compress compress;
        if (this.P == null) {
            return;
        }
        boolean z = false;
        if (this.t == 12 && !I0() && (compress = this.C) != null && this.v != 0) {
            String n = compress.n(this.w);
            if ("gif".equals(MainUtil.W3(n, MainUtil.Y5(n)))) {
                z = true;
            }
        }
        this.P.r(z, true);
    }

    public final void O0() {
        ImageCoverView imageCoverView;
        if (this.C != null && this.I != null && !F0() && (imageCoverView = this.T) != null && !imageCoverView.d()) {
            this.F0 = true;
            X0(false);
            this.I.v0();
        }
    }

    public final void P0() {
        if (this.f15915a == null) {
            return;
        }
        if (this.O == 1) {
            Z0();
        } else {
            b1(false);
        }
        c0(false);
    }

    public final void Q0(int i, int i2, int i3, int i4, String str, boolean z, boolean z2) {
        List l;
        View view;
        boolean z3;
        String str2;
        int j;
        ImageListVert imageListVert;
        MainItem.ChildItem childItem;
        View view2;
        if (this.C != null) {
            int i5 = this.t;
            if ((i5 == 1 || i5 == 2 || i5 == 3) && !TextUtils.isEmpty(str) && (l = this.C.l()) != null && l.size() >= 2) {
                if (i4 == 1) {
                    ImageCoverView imageCoverView = this.T;
                    if (imageCoverView != null && !imageCoverView.d()) {
                        ImageCoverView imageCoverView2 = this.T;
                        if (this.N) {
                            view2 = this.M;
                        } else {
                            view2 = this.I;
                        }
                        imageCoverView2.b(2, view2, true);
                    } else {
                        return;
                    }
                } else if (i4 == 2) {
                    ImageCoverView imageCoverView3 = this.T;
                    if (imageCoverView3 != null && !imageCoverView3.d()) {
                        ImageCoverView imageCoverView4 = this.T;
                        if (this.N) {
                            view = this.M;
                        } else {
                            view = this.I;
                        }
                        imageCoverView4.b(2, view, false);
                    } else {
                        return;
                    }
                }
                ImageViewControl imageViewControl = this.U;
                if (imageViewControl != null) {
                    imageViewControl.A();
                }
                MyCoverView myCoverView = this.S;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
                int i6 = this.t;
                if (i6 == 1) {
                    DbAlbum.e(this.f15915a, str, i, i2, i3);
                } else if (i6 == 2) {
                    DbPdf.f(this.f15915a, str, i, i2, i3);
                } else if (i6 == 3) {
                    DbCmp.f(this.f15915a, str, i, i2, i3);
                }
                int i7 = this.r;
                if (i7 >= 0 && i7 < l.size()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && (childItem = (MainItem.ChildItem) l.get(this.r)) != null) {
                    str2 = childItem.g;
                } else {
                    str2 = null;
                }
                if (z3 && str.equals(str2)) {
                    j = 0;
                } else {
                    j = this.C.j(str);
                    if (j != -1) {
                        this.r = j;
                    }
                    int i8 = this.r;
                    if (i8 == -1 || i8 >= l.size()) {
                        this.r = 0;
                    }
                }
                if (j != -1) {
                    if (z) {
                        this.r = (this.r + 1) % l.size();
                        this.w = 0;
                    } else {
                        this.r = ((l.size() + this.r) - 1) % l.size();
                        this.w = -1;
                    }
                } else if (z) {
                    this.w = 0;
                } else {
                    this.w = -1;
                }
                this.x = 0;
                MainItem.ChildItem childItem2 = (MainItem.ChildItem) l.get(this.r);
                if (childItem2 == null) {
                    MyCoverView myCoverView2 = this.S;
                    if (myCoverView2 != null) {
                        myCoverView2.f(true);
                        return;
                    }
                    return;
                }
                f0(childItem2, z2);
                if (this.w == -1 && (imageListVert = this.I) != null) {
                    imageListVert.setNextChanged(true);
                }
                MyCoverView myCoverView3 = this.S;
                if (myCoverView3 != null) {
                    myCoverView3.j(PrefImage.B, this.s);
                }
                c0(false);
            }
        }
    }

    public final void R0(int i, int i2, boolean z) {
        MySizeFrame mySizeFrame;
        if (this.U != null) {
            this.V = i;
            this.W = i2;
            N0();
            if (this.U.e()) {
                if (this.N0 != null && (mySizeFrame = this.H) != null) {
                    mySizeFrame.post(new AnonymousClass60());
                    return;
                }
                return;
            }
            this.U.z(z);
            this.U.post(new AnonymousClass22());
        }
    }

    public final void S0() {
        this.u0 = MainUtil.E5(this.b);
        this.v0 = MainUtil.H5(this.b);
        this.w0 = MainUtil.S1(this.b);
    }

    public final void T0() {
        ImageCoverView imageCoverView;
        if (this.C != null && this.I != null && !F0() && (imageCoverView = this.T) != null && !imageCoverView.d()) {
            this.F0 = true;
            X0(false);
            this.I.x0();
        }
    }

    public final void U0() {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        MySizeFrame mySizeFrame3;
        EventHandler eventHandler = this.z;
        if (eventHandler != null && (mySizeFrame = this.H) != null) {
            int i = 3600000 - this.B;
            if (i <= 0) {
                if (mySizeFrame != null && mySizeFrame.getKeepScreenOn() && (mySizeFrame3 = this.H) != null) {
                    mySizeFrame3.post(new AnonymousClass12());
                    return;
                }
                return;
            }
            eventHandler.sendEmptyMessageDelayed(0, i);
            MySizeFrame mySizeFrame4 = this.H;
            if (mySizeFrame4 != null && !mySizeFrame4.getKeepScreenOn() && (mySizeFrame2 = this.H) != null) {
                mySizeFrame2.post(new AnonymousClass11());
            }
        }
    }

    public final void V0(boolean z) {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        EventHandler eventHandler = this.z;
        if (eventHandler != null && this.H != null) {
            eventHandler.removeMessages(0);
            int i = PrefImage.p;
            if (i == 2) {
                MySizeFrame mySizeFrame3 = this.H;
                if (mySizeFrame3 != null && !mySizeFrame3.getKeepScreenOn() && (mySizeFrame2 = this.H) != null) {
                    mySizeFrame2.post(new AnonymousClass11());
                    return;
                }
                return;
            }
            if (z && i != 0) {
                if (!this.A) {
                    U0();
                    return;
                }
                this.A = false;
                ImageViewActivity imageViewActivity = this.b;
                if (imageViewActivity != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListVert imageViewListVert = ImageViewListVert.this;
                            imageViewListVert.B = MainUtil.E3(imageViewListVert.f15915a);
                            MySizeFrame mySizeFrame4 = imageViewListVert.H;
                            if (mySizeFrame4 == null) {
                                return;
                            }
                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.10.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewListVert.this.U0();
                                }
                            });
                        }
                    });
                    return;
                }
                return;
            }
            MySizeFrame mySizeFrame4 = this.H;
            if (mySizeFrame4 != null && mySizeFrame4.getKeepScreenOn() && (mySizeFrame = this.H) != null) {
                mySizeFrame.post(new AnonymousClass12());
            }
        }
    }

    public final void W0() {
        ImageViewActivity imageViewActivity = this.b;
        if (imageViewActivity == null) {
            return;
        }
        imageViewActivity.r0();
    }

    public final void X0(boolean z) {
        ImageListVert imageListVert;
        ImageViewControl imageViewControl;
        if (this.v != 0 && (imageListVert = this.I) != null && this.M != null && this.h0 != null && (imageViewControl = this.U) != null && this.N != z) {
            this.N = z;
            if (z) {
                Bitmap g4 = MainUtil.g4(imageListVert, PrefImage.B, 1.0f, 0L, Bitmap.Config.RGB_565);
                this.I.setVisibility(4);
                if (MainUtil.f6(g4)) {
                    this.M.setImageBitmap(g4);
                }
                this.h0.s(this.M);
                return;
            }
            imageViewControl.j(null);
            this.h0.s(this.M);
            this.M.setImageDrawable(null);
            this.I.setVisibility(0);
        }
    }

    public final void Y0(boolean z) {
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.x(z);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
    public final void Z0() {
        if (this.b == null || J0()) {
            return;
        }
        r0();
        h0(true);
        ?? obj = new Object();
        int i = this.t;
        if (i == 12) {
            obj.f16734a = 14;
        } else {
            if (i == 1) {
                obj.f16734a = 14;
            } else if (i == 2) {
                obj.f16734a = 15;
            } else if (i == 3) {
                obj.f16734a = 16;
            }
            obj.i = true;
        }
        this.i0 = false;
        DialogListBook dialogListBook = new DialogListBook(this.b, obj, this.u, new DialogListBook.ListBookListener() { // from class: com.mycompany.app.image.ImageViewListVert.43
            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void a(int i2, MainItem.ChildItem childItem, int i3) {
                int i4;
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.i0 = true;
                imageViewListVert.r0();
                if (TextUtils.isEmpty(childItem.g)) {
                    MainUtil.e8(imageViewListVert.f15915a, R.string.invalid_path);
                    return;
                }
                if (childItem.g.equals(imageViewListVert.u)) {
                    if (imageViewListVert.C != null && (i4 = imageViewListVert.v) != 0) {
                        int i5 = childItem.t;
                        if (i5 == imageViewListVert.w) {
                            return;
                        }
                        if (i5 >= 0 && i5 < i4) {
                            imageViewListVert.w = i5;
                            imageViewListVert.x = childItem.u;
                            imageViewListVert.M0();
                            return;
                        }
                        MainUtil.e8(imageViewListVert.f15915a, R.string.invalid_path);
                        return;
                    }
                    MainUtil.e8(imageViewListVert.f15915a, R.string.no_image);
                    return;
                }
                imageViewListVert.h0(false);
                int i6 = imageViewListVert.t;
                if (i6 == 1) {
                    DbAlbum.e(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
                } else if (i6 == 2) {
                    DbPdf.f(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
                } else if (i6 == 3) {
                    DbCmp.f(imageViewListVert.f15915a, imageViewListVert.u, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
                } else if (i6 == 12) {
                    imageViewListVert.t = 1;
                    ImageViewControl imageViewControl = imageViewListVert.U;
                    if (imageViewControl != null) {
                        imageViewControl.setIconType(1);
                    }
                }
                imageViewListVert.j = false;
                imageViewListVert.l = null;
                imageViewListVert.m = false;
                imageViewListVert.n = 0;
                imageViewListVert.K0();
                imageViewListVert.s = childItem.h;
                imageViewListVert.r = childItem.J;
                imageViewListVert.u = childItem.g;
                imageViewListVert.w = childItem.t;
                imageViewListVert.x = childItem.u;
                imageViewListVert.v = 0;
                imageViewListVert.c0(false);
            }

            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void b() {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                if (imageViewListVert.C != null && imageViewListVert.v != 0) {
                    BookTask bookTask = imageViewListVert.g0;
                    if (bookTask != null) {
                        bookTask.f12839c = true;
                    }
                    imageViewListVert.g0 = null;
                    BookTask bookTask2 = new BookTask(imageViewListVert);
                    imageViewListVert.g0 = bookTask2;
                    bookTask2.b(imageViewListVert.f15915a);
                    return;
                }
                MainUtil.e8(imageViewListVert.f15915a, R.string.no_image);
            }
        });
        this.m0 = dialogListBook;
        dialogListBook.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.44
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                if (imageViewListVert.h) {
                    return;
                }
                imageViewListVert.r0();
                BookTask bookTask = imageViewListVert.g0;
                if (bookTask != null) {
                    bookTask.f12839c = true;
                }
                imageViewListVert.g0 = null;
                if (imageViewListVert.i0) {
                    imageViewListVert.i0 = false;
                } else {
                    imageViewListVert.Y0(false);
                }
            }
        });
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean a() {
        ZoomImageAttacher zoomImageAttacher;
        if (this.U != null) {
            if (this.K == 1 || ((zoomImageAttacher = this.h0) != null && zoomImageAttacher.l)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void a0() {
        MainItem.ViewItem viewItem;
        ImageListVert imageListVert = this.I;
        if (imageListVert != null) {
            int childCount = imageListVert.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.I.getChildAt(i);
                if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.d != null) {
                    ImageLoader.f().a(viewItem.d);
                }
            }
        }
        ImageListAdapter imageListAdapter = this.J;
        if (imageListAdapter != null) {
            imageListAdapter.A(true);
        }
    }

    public final void a1(boolean z) {
        if (this.Q == null && this.H != null) {
            ImageGifView imageGifView = new ImageGifView(this.b);
            this.Q = imageGifView;
            imageGifView.setVisibility(8);
            this.H.post(new AnonymousClass23(z));
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void b(boolean z) {
        if (z) {
            if (E0()) {
                W0();
            }
        } else if (!J0()) {
            W0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.mycompany.app.image.ImageViewActivity$SavedItem, java.lang.Object] */
    public final boolean b0(boolean z) {
        int i;
        boolean z2;
        int i2;
        ImageListAdapter imageListAdapter;
        if (this.x0) {
            return true;
        }
        boolean z3 = false;
        if (this.I == null) {
            return false;
        }
        boolean G0 = G0();
        if (this.f != null) {
            if (z && this.m0 == null) {
                i0();
                h0(false);
                b1(true);
            }
            S0();
            return false;
        }
        if (this.v0 != MainUtil.I5(G0)) {
            int i3 = this.y;
            if (i3 != 3 && i3 != 4) {
                this.x = g0(this.w, false);
            } else {
                this.x = i3;
            }
        }
        if (G0) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            this.x0 = true;
            this.I.setListener(null);
            if (z && this.m0 != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (this.x == 0) {
                int i4 = this.y;
                if (i4 != 3 && i4 != 4) {
                    this.x = g0(this.w, false);
                } else {
                    this.x = i4;
                }
            }
            ?? obj = new Object();
            this.f = obj;
            obj.f15781a = this.j;
            obj.b = this.l;
            obj.f15782c = this.m;
            obj.e = this.n;
            obj.m = this.r;
            obj.i = this.s;
            obj.f = this.t;
            obj.g = this.C;
            obj.h = this.u;
            obj.j = this.v;
            obj.k = this.w;
            obj.l = this.x;
            ImageGifView imageGifView = this.Q;
            if (imageGifView != null && imageGifView.e()) {
                z3 = true;
            }
            obj.n = z3;
            ImageViewActivity.SavedItem savedItem = this.f;
            savedItem.o = i2;
            if (this.m && (imageListAdapter = this.J) != null) {
                savedItem.d = imageListAdapter.r;
            }
            I(true);
            G();
            return true;
        }
        if (this.w0 != MainUtil.T1(G0)) {
            this.I.setPageMargin(MainUtil.T1(G0));
        }
        ImageListAdapter imageListAdapter2 = this.J;
        if (imageListAdapter2 != null) {
            boolean F5 = MainUtil.F5(G0);
            boolean I5 = MainUtil.I5(G0);
            int T1 = MainUtil.T1(G0);
            imageListAdapter2.l = F5;
            imageListAdapter2.m = I5;
            imageListAdapter2.n = T1;
        }
        if (z && this.m0 == null) {
            i0();
            h0(false);
            b1(true);
        }
        if (this.v0 != MainUtil.I5(G0)) {
            M0();
            S0();
            return false;
        }
        if (this.u0 == MainUtil.F5(G0) && this.w0 == MainUtil.T1(G0)) {
            S0();
            return false;
        }
        M0();
        S0();
        return false;
    }

    public final void b1(boolean z) {
        int i;
        int i2;
        if (PrefImage.n && this.Q == null && this.X != null) {
            if (G0()) {
                i = PrefImage.u;
            } else {
                i = PrefImage.t;
            }
            if (i == 3) {
                this.Y.setBackgroundResource(R.drawable.outline_swipe_up);
            } else {
                View view = this.Y;
                if (this.e) {
                    i2 = R.drawable.outline_swipe_l2r;
                } else {
                    i2 = R.drawable.outline_swipe_r2l;
                }
                view.setBackgroundResource(i2);
            }
            this.Z.setText(MainConst.e0[i]);
            this.a0.setVisibility(8);
            this.X.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewListVert.13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ImageViewListVert imageViewListVert = ImageViewListVert.this;
                    MyFadeLinear myFadeLinear = imageViewListVert.X;
                    if (myFadeLinear == null) {
                        return;
                    }
                    if (myFadeLinear.e()) {
                        MyFadeLinear myFadeLinear2 = imageViewListVert.X;
                        if (myFadeLinear2 != null) {
                            myFadeLinear2.d(true, true);
                        }
                        imageViewListVert.h0(true);
                        return;
                    }
                    imageViewListVert.c1();
                }
            });
            if (z) {
                this.X.d(false, false);
            }
            this.X.g();
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean c(MotionEvent motionEvent) {
        Point point;
        boolean J5;
        boolean dispatchTouchEvent;
        boolean J52;
        boolean z;
        boolean z2 = false;
        if (this.Q != null) {
            this.y0 = false;
            this.z0 = false;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity != null && this.H != null && imageViewActivity.i0()) {
                float x = motionEvent.getX();
                if (x < MainApp.D1 || x > this.H.getWidth() - MainApp.D1) {
                    z = true;
                    this.z0 = z;
                }
            }
            z = false;
            this.z0 = z;
        } else if (actionMasked != 1 && actionMasked != 3) {
            this.y0 = true;
            if (actionMasked == 0) {
                this.L = I0();
            }
        } else {
            this.y0 = false;
            this.z0 = false;
            V0(true);
            ImageViewControl imageViewControl = this.U;
            if (imageViewControl != null) {
                imageViewControl.h();
            }
        }
        if (this.d0 && !F0()) {
            if (this.F0 && this.L) {
                if (this.N0 == null || E0()) {
                    J52 = false;
                } else {
                    J52 = MainUtil.J5((int) motionEvent.getRawX(), (int) motionEvent.getRawY(), MainApp.C1, this.N0);
                }
                if (J52) {
                    z2 = true;
                } else {
                    ImageViewControl imageViewControl2 = this.U;
                    if (imageViewControl2 != null) {
                        z2 = imageViewControl2.dispatchTouchEvent(motionEvent);
                    }
                }
                if (!z2) {
                    D(motionEvent, true);
                    return true;
                }
            } else {
                ImageViewActivity imageViewActivity2 = this.b;
                if (imageViewActivity2 == null) {
                    point = MainUtil.s4(this.f15915a);
                } else {
                    point = imageViewActivity2.z0;
                }
                if (MainUtil.g(point, motionEvent, E0())) {
                    if (this.N0 == null || E0()) {
                        J5 = false;
                    } else {
                        J5 = MainUtil.J5((int) motionEvent.getRawX(), (int) motionEvent.getRawY(), MainApp.C1, this.N0);
                    }
                    if (J5) {
                        dispatchTouchEvent = true;
                    } else {
                        ImageViewControl imageViewControl3 = this.U;
                        if (imageViewControl3 == null) {
                            dispatchTouchEvent = false;
                        } else {
                            dispatchTouchEvent = imageViewControl3.dispatchTouchEvent(motionEvent);
                        }
                    }
                    if (!dispatchTouchEvent) {
                        D(motionEvent, true);
                        return true;
                    }
                }
                ImageViewControl imageViewControl4 = this.U;
                if (imageViewControl4 != null) {
                    imageViewControl4.C();
                }
                return false;
            }
        } else {
            if (this.N0 != null && !E0()) {
                z2 = MainUtil.J5((int) motionEvent.getRawX(), (int) motionEvent.getRawY(), MainApp.C1, this.N0);
            }
            if (z2) {
                if (this.d0 && !this.y0) {
                    MainUtil.e8(this.f15915a, R.string.wait_retry);
                }
            } else {
                D(motionEvent, true);
                return true;
            }
        }
        return true;
    }

    public final void c0(boolean z) {
        a0();
        LoadTask loadTask = this.f0;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.f0 = null;
        if (this.t != 12 && TextUtils.isEmpty(this.u)) {
            MainUtil.e8(this.f15915a, R.string.invalid_path);
            d0();
        } else {
            this.e0 = true;
            LoadTask loadTask2 = new LoadTask(this, z);
            this.f0 = loadTask2;
            loadTask2.b(this.f15915a);
        }
    }

    public final void c1() {
        ImageViewControl imageViewControl;
        if (this.d0 && (imageViewControl = this.U) != null && imageViewControl.B()) {
            MyFadeLinear myFadeLinear = this.X;
            if (myFadeLinear != null) {
                myFadeLinear.d(true, false);
            }
            R0(this.V, this.W, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void controlRotate(View view) {
        boolean z;
        boolean z2;
        if (this.U != null && this.s0 == null) {
            C0();
            if (view != null) {
                ImageViewControl imageViewControl = this.U;
                boolean z3 = false;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
                ArrayList arrayList = new ArrayList();
                int i = R.string.rotation;
                if (PrefImage.l == 0) {
                    z = true;
                } else {
                    z = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, i, z));
                int i2 = R.string.view_port;
                if (PrefImage.l == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, i2, z2));
                int i3 = R.string.view_land;
                if (PrefImage.l == 2) {
                    z3 = true;
                }
                arrayList.add(new MyPopupAdapter.PopMenuItem(2, i3, z3));
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.b, this.H, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewListVert.31
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewListVert.this.C0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefImage.l != i4) {
                            PrefImage.l = i4;
                            ImageViewListVert imageViewListVert = ImageViewListVert.this;
                            PrefSet.f(imageViewListVert.f15915a, 3, i4, "mRotate");
                            MainUtil.o7(imageViewListVert.b);
                            ImageViewControl imageViewControl2 = imageViewListVert.U;
                            if (imageViewControl2 != null) {
                                imageViewControl2.o();
                            }
                        }
                        return true;
                    }
                });
                this.s0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.b;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void d() {
        if (this.U == null) {
            return;
        }
        d0();
    }

    public final void d0() {
        ImageViewActivity imageViewActivity = this.b;
        if (imageViewActivity != null) {
            imageViewActivity.finish();
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final int e() {
        int i = this.t;
        if (i != 1 && i != 2 && i != 3) {
            return -1;
        }
        return this.r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final Bitmap e0() {
        boolean z;
        boolean z2;
        Compress compress = this.C;
        if (compress != null && this.v != 0) {
            String n = compress.n(this.w);
            boolean z3 = false;
            if (this.t == 12) {
                z = true;
            } else {
                z = false;
            }
            ImageViewActivity imageViewActivity = this.b;
            boolean G0 = G0();
            if (this.t == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            Bitmap f = this.C.f(n, MainUtil.l0(imageViewActivity, G0, z2), z);
            if (MainUtil.f6(f)) {
                return f;
            }
            ?? obj = new Object();
            obj.f16554a = 8;
            obj.b = this.C;
            obj.r = this.l;
            obj.f = this.w;
            ImageViewActivity imageViewActivity2 = this.b;
            boolean G02 = G0();
            if (this.t == 2) {
                z3 = true;
            }
            obj.t = MainUtil.l0(imageViewActivity2, G02, z3);
            Bitmap j = ImageLoader.f().j(obj, this.b0);
            if (MainUtil.f6(j)) {
                return j;
            }
            MySizeFrame mySizeFrame = this.H;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.80
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewListVert.this.f15915a, R.string.image_fail);
                    }
                });
                return null;
            }
        } else {
            MySizeFrame mySizeFrame2 = this.H;
            if (mySizeFrame2 != null) {
                mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.79
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewListVert.this.f15915a, R.string.no_image);
                    }
                });
                return null;
            }
        }
        return null;
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final int f() {
        return this.t;
    }

    public final void f0(MainItem.ChildItem childItem, boolean z) {
        int i = this.t;
        if (i == 1 || i == 2 || i == 3) {
            this.s = childItem.h;
            this.u = childItem.g;
            int i2 = childItem.s;
            this.v = i2;
            this.F = null;
            if (z) {
                if (i == 1) {
                    if (!PrefList.q) {
                        return;
                    }
                } else if (i == 2) {
                    if (!PrefList.q) {
                        return;
                    }
                } else if (i == 3 && !PrefList.q) {
                    return;
                }
                this.v = i2;
                this.w = childItem.t;
                this.x = childItem.u;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final int g0(int i, boolean z) {
        boolean z2;
        boolean z3;
        Bitmap bitmap;
        Compress compress = this.C;
        if (compress != null && this.v != 0) {
            if (!MainUtil.H5(this.b)) {
                return 1;
            }
            CompressCache.BitmapInfo g = compress.g(i);
            if (g == null && z) {
                if (this.n == 0 || URLUtil.isNetworkUrl(compress.n(i))) {
                    ?? obj = new Object();
                    obj.f16554a = 8;
                    obj.b = compress;
                    obj.r = this.l;
                    obj.f = this.w;
                    ImageViewActivity imageViewActivity = this.b;
                    boolean G0 = G0();
                    if (this.t == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    obj.t = MainUtil.l0(imageViewActivity, G0, z2);
                    if (this.t == 12) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    obj.u = z3;
                    ImageLoader.ImageLoadItem k = ImageLoader.f().k(obj, this.b0);
                    if (this.n == 0 && this.t == 12) {
                        String str = k.f20964a;
                        if (k.f20965c == 1 && !TextUtils.isEmpty(str)) {
                            String a3 = MainUtil.a3(str);
                            if (!TextUtils.isEmpty(a3) && !a3.equals(str)) {
                                compress.U(obj.f, str, a3);
                            } else {
                                compress.U(obj.f, str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            }
                        }
                    }
                    CompressCache.BitmapInfo g2 = compress.g(i);
                    if (g2 == null && (bitmap = k.b) != null && !bitmap.isRecycled()) {
                        g2 = new CompressCache.BitmapInfo(bitmap.getWidth(), bitmap.getHeight(), 0);
                        Compress.P(compress.n(i), g2);
                    }
                    g = g2;
                }
            }
            if (g != null) {
                if (g.f12872a <= g.b) {
                    return 2;
                }
                if (PrefImage.s) {
                    return 4;
                }
                return 3;
            }
        }
        return 0;
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void h(int i) {
        View view;
        View view2;
        Compress compress;
        ImageViewActivity imageViewActivity;
        View view3;
        View view4;
        if (this.U != null && !F0()) {
            int i2 = this.v;
            int i3 = i2 - 1;
            if (i > i3) {
                i = i3;
            }
            if (i < 0) {
                i = 0;
            }
            int i4 = this.w;
            if (i4 == i) {
                this.U.t(i2, i4, this.x);
                return;
            }
            ImageCoverView imageCoverView = this.T;
            if (imageCoverView != null && !imageCoverView.d()) {
                if (PrefImage.s) {
                    if (i < this.w) {
                        ImageCoverView imageCoverView2 = this.T;
                        if (this.N) {
                            view4 = this.M;
                        } else {
                            view4 = this.I;
                        }
                        imageCoverView2.b(2, view4, false);
                    } else {
                        ImageCoverView imageCoverView3 = this.T;
                        if (this.N) {
                            view3 = this.M;
                        } else {
                            view3 = this.I;
                        }
                        imageCoverView3.b(2, view3, true);
                    }
                } else if (i > this.w) {
                    ImageCoverView imageCoverView4 = this.T;
                    if (this.N) {
                        view2 = this.M;
                    } else {
                        view2 = this.I;
                    }
                    imageCoverView4.b(2, view2, true);
                } else {
                    ImageCoverView imageCoverView5 = this.T;
                    if (this.N) {
                        view = this.M;
                    } else {
                        view = this.I;
                    }
                    imageCoverView5.b(2, view, false);
                }
                a0();
                this.w = i;
                this.U.t(this.v, i, this.x);
                this.x = g0(this.w, false);
                M0();
                if (this.n == 2 && (compress = this.C) != null && !URLUtil.isNetworkUrl(compress.n(this.w)) && (imageViewActivity = this.b) != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.33
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListVert.O(ImageViewListVert.this);
                        }
                    });
                }
            }
        }
    }

    public final void h0(boolean z) {
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.d(z);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void i() {
        Compress compress;
        if (this.U != null && (compress = this.C) != null) {
            final String n = compress.n(this.w);
            if (!URLUtil.isNetworkUrl(n)) {
                MainUtil.e8(this.f15915a, R.string.invalid_path);
                return;
            }
            if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
                MainUtil.G4(this.b, PrefAlbum.H, PrefAlbum.I, n, this.l, null, "image/*");
                return;
            }
            MyCoverView myCoverView = this.S;
            if (myCoverView != null) {
                myCoverView.l();
            }
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity == null) {
                return;
            }
            imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.46
                @Override // java.lang.Runnable
                public final void run() {
                    String str = n;
                    final String str2 = null;
                    if (!Compress.C(MainUtil.V3(str, null, null, true), true, true)) {
                        str2 = "image/" + MainUtil.T0(str);
                    }
                    ImageViewControl imageViewControl = ImageViewListVert.this.U;
                    if (imageViewControl == null) {
                        return;
                    }
                    imageViewControl.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.46.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass46 anonymousClass46 = AnonymousClass46.this;
                            final ImageViewListVert imageViewListVert = ImageViewListVert.this;
                            MyCoverView myCoverView2 = imageViewListVert.S;
                            if (myCoverView2 != null) {
                                myCoverView2.f(true);
                                String str3 = n;
                                if (imageViewListVert.b != null && !imageViewListVert.J0()) {
                                    imageViewListVert.j0();
                                    imageViewListVert.h0(true);
                                    if (!URLUtil.isNetworkUrl(str3)) {
                                        MainUtil.e8(imageViewListVert.f15915a, R.string.invalid_path);
                                        return;
                                    }
                                    imageViewListVert.H0 = true;
                                    MainApp.K1 = true;
                                    DialogDownUrl dialogDownUrl = new DialogDownUrl(imageViewListVert.b, str3, imageViewListVert.l, null, null, str2, 0L, 4, 0, null, 0, null, false, 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.image.ImageViewListVert.47
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final WebNestView a() {
                                            return null;
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void b(String str4, String str5) {
                                            ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                            imageViewListVert2.j0();
                                            MainUtil.a8(imageViewListVert2.b, str4, str5);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void c(String str4, String str5, String str6) {
                                            ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                            imageViewListVert2.j0();
                                            ImageViewListVert.W(imageViewListVert2, str4, str5, str6);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void d(String str4, MainUri.UriItem uriItem, int i, boolean z, String str5, String str6) {
                                            final ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                            imageViewListVert2.j0();
                                            if (uriItem != null) {
                                                Compress compress2 = imageViewListVert2.C;
                                                if (compress2 != null) {
                                                    String r = imageViewListVert2.C.r(compress2.n(imageViewListVert2.w));
                                                    if (!TextUtils.isEmpty(r)) {
                                                        imageViewListVert2.n1 = r;
                                                        imageViewListVert2.o1 = str4;
                                                        imageViewListVert2.p1 = uriItem;
                                                        imageViewListVert2.q1 = i;
                                                        ImageViewActivity imageViewActivity2 = imageViewListVert2.b;
                                                        if (imageViewActivity2 != null) {
                                                            imageViewActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.82
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                                    String str7 = imageViewListVert3.n1;
                                                                    String str8 = imageViewListVert3.o1;
                                                                    MainUri.UriItem uriItem2 = imageViewListVert3.p1;
                                                                    int i2 = imageViewListVert3.q1;
                                                                    imageViewListVert3.n1 = null;
                                                                    imageViewListVert3.o1 = null;
                                                                    imageViewListVert3.p1 = null;
                                                                    File file = ImageLoader.f().e().get(str7);
                                                                    if (file != null) {
                                                                        long length = file.length();
                                                                        if (length != 0) {
                                                                            MainUtil.t(imageViewListVert3.f15915a, file.getPath(), uriItem2.e);
                                                                            DbBookDown.u(imageViewListVert3.f15915a, 3, i2, str8, imageViewListVert3.l, uriItem2, length, length, false, PrefSync.k, PrefSecret.m, false);
                                                                            MySizeFrame mySizeFrame = imageViewListVert3.H;
                                                                            if (mySizeFrame == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.82.1
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MainUtil.e8(ImageViewListVert.this.f15915a, R.string.down_complete);
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        }
                                                    }
                                                }
                                                MainApp p = MainApp.p(imageViewListVert2.f15915a);
                                                if (p == null) {
                                                    MainUtil.e8(imageViewListVert2.f15915a, R.string.down_fail);
                                                    return;
                                                }
                                                ImageViewActivity imageViewActivity3 = imageViewListVert2.b;
                                                if (imageViewActivity3 == null) {
                                                    return;
                                                }
                                                imageViewActivity3.u0();
                                                p.R(str4, imageViewListVert2.l, uriItem, false);
                                            }
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void f(String str4, String str5, String str6, boolean z) {
                                            final ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                            if (imageViewListVert2.b == null || imageViewListVert2.q0 != null) {
                                                return;
                                            }
                                            imageViewListVert2.s0();
                                            imageViewListVert2.h0(true);
                                            DialogPreview dialogPreview = new DialogPreview(imageViewListVert2.b, str4, imageViewListVert2.l, null, "image/*", new DialogPreview.PreviewListener() { // from class: com.mycompany.app.image.ImageViewListVert.51
                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void a(String str7) {
                                                    MainUtil.s(R.string.copied_clipboard, ImageViewListVert.this.b, "Copied URL", str7);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void b(String str7, long j, boolean z2) {
                                                    ImageViewListVert.this.i0();
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void c(String str7, String str8) {
                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                    imageViewListVert3.i0();
                                                    ImageViewListVert.W(imageViewListVert3, str7, null, str8);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void d(String str7) {
                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                    imageViewListVert3.i0();
                                                    MainUtil.a8(imageViewListVert3.b, str7, imageViewListVert3.s);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void e(String str7, String str8) {
                                                    ImageViewListVert.this.s0();
                                                }
                                            });
                                            imageViewListVert2.q0 = dialogPreview;
                                            dialogPreview.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.52
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    ImageViewListVert.this.s0();
                                                }
                                            });
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void g(String str4, String str5, String str6) {
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void e(int i, String str4) {
                                        }
                                    });
                                    imageViewListVert.o0 = dialogDownUrl;
                                    dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.48
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            ImageViewListVert.this.j0();
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

    public final void i0() {
        k0();
        q0();
        t0();
        p0();
        r0();
        DialogCapture dialogCapture = this.n0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.n0 = null;
        }
        j0();
        v0();
        s0();
        w0();
        y0();
        o0();
        m0();
        l0();
        n0();
        u0();
        x0();
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void j(int i, int i2, Intent intent) {
        MainItem.ChildItem k;
        DialogCapture dialogCapture = this.n0;
        if (dialogCapture == null || !dialogCapture.o(i, i2, intent)) {
            DialogDownUrl dialogDownUrl = this.o0;
            if (dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) {
                Y0(false);
                if (i != 1) {
                    if (i == 7 && i2 == -1 && intent != null && this.C != null) {
                        String stringExtra = intent.getStringExtra("EXTRA_PATH");
                        if (!TextUtils.isEmpty(stringExtra) && !stringExtra.equals(this.u)) {
                            int intExtra = intent.getIntExtra("EXTRA_INDEX", this.r);
                            if (this.t == 12) {
                                k = DataAlbum.m(this.f15915a).f(intExtra);
                            } else {
                                k = this.C.k(intExtra);
                            }
                            if (k == null) {
                                MainUtil.e8(this.f15915a, R.string.invalid_path);
                                return;
                            }
                            h0(false);
                            int i3 = this.t;
                            if (i3 == 1) {
                                DbAlbum.e(this.f15915a, this.u, this.v, this.w, this.x);
                            } else if (i3 == 2) {
                                DbPdf.f(this.f15915a, this.u, this.v, this.w, this.x);
                            } else if (i3 == 3) {
                                DbCmp.f(this.f15915a, this.u, this.v, this.w, this.x);
                            } else if (i3 == 12) {
                                this.t = 1;
                                ImageViewControl imageViewControl = this.U;
                                if (imageViewControl != null) {
                                    imageViewControl.setIconType(1);
                                }
                            }
                            this.j = false;
                            this.l = null;
                            this.m = false;
                            this.n = 0;
                            K0();
                            this.s = null;
                            this.r = intExtra;
                            this.u = stringExtra;
                            this.v = 0;
                            this.w = 0;
                            this.x = 0;
                            f0(k, true);
                            c0(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == -1 && intent != null && this.C != null && this.U != null && intent.getBooleanExtra("EXTRA_THUMB", false)) {
                    this.U.p(this.t, this.n, this.C);
                }
            }
        }
    }

    public final void j0() {
        DialogDownUrl dialogDownUrl = this.o0;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.o0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.d(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean k() {
        this.F0 = false;
        if (this.C0) {
            if (PrefImage.s) {
                T0();
            } else {
                O0();
            }
        } else if (this.D0) {
            if (PrefImage.s) {
                O0();
            } else {
                T0();
            }
        } else {
            c1();
        }
        this.C0 = false;
        this.D0 = false;
        return true;
    }

    public final void k0() {
        DialogEditText dialogEditText = this.E;
        if (dialogEditText != null) {
            dialogEditText.dismiss();
            this.E = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void l() {
        MySizeFrame mySizeFrame;
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null) {
            imageViewControl.setIconCrop(true);
            M0();
            if (PrefPdf.j && PrefPdf.k && (mySizeFrame = this.H) != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.30
                    @Override // java.lang.Runnable
                    public final void run() {
                        MySizeFrame mySizeFrame2;
                        final ImageViewListVert imageViewListVert = ImageViewListVert.this;
                        imageViewListVert.h0(true);
                        if (PrefPdf.j && imageViewListVert.G0 == null && (mySizeFrame2 = imageViewListVert.H) != null) {
                            mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.36
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewActivity imageViewActivity;
                                    if (PrefPdf.j) {
                                        final ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.G0 == null && imageViewListVert2.H != null && (imageViewActivity = imageViewListVert2.b) != null) {
                                            MyFadeFrame myFadeFrame = new MyFadeFrame(imageViewActivity);
                                            int i = MainApp.F1;
                                            myFadeFrame.setPadding(i, i, i, i);
                                            FrameLayout frameLayout = new FrameLayout(imageViewActivity);
                                            frameLayout.setBackgroundResource(R.drawable.round_guide_8);
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                            layoutParams.gravity = 8388691;
                                            myFadeFrame.addView(frameLayout, layoutParams);
                                            LinearLayout linearLayout = new LinearLayout(imageViewActivity);
                                            int i2 = MainApp.E1;
                                            linearLayout.setPadding(i2, i2, i2, i2);
                                            linearLayout.setOrientation(1);
                                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams2.gravity = 1;
                                            frameLayout.addView(linearLayout, layoutParams2);
                                            AppCompatTextView appCompatTextView = new AppCompatTextView(imageViewActivity, null);
                                            appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                                            appCompatTextView.setTextSize(1, 16.0f);
                                            appCompatTextView.setTextColor(-1);
                                            linearLayout.addView(appCompatTextView, -2, -2);
                                            imageViewListVert2.G0 = myFadeFrame;
                                            appCompatTextView.setText(R.string.pdf_crop_guide);
                                            imageViewListVert2.G0.setListener(new MyFadeListener() { // from class: com.mycompany.app.image.ImageViewListVert.37
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z) {
                                                    ImageViewListVert imageViewListVert3;
                                                    MyFadeFrame myFadeFrame2;
                                                    if (!z && (myFadeFrame2 = (imageViewListVert3 = ImageViewListVert.this).G0) != null && imageViewListVert3.H != null) {
                                                        myFadeFrame2.f();
                                                        imageViewListVert3.H.removeView(imageViewListVert3.G0);
                                                        imageViewListVert3.G0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z, boolean z2) {
                                                }
                                            });
                                            imageViewListVert2.G0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.image.ImageViewListVert.38
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewListVert3.f15915a, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewListVert3.G0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewListVert.39
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewListVert3.f15915a, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewListVert3.G0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                }
                                            });
                                            imageViewListVert2.H.addView(imageViewListVert2.G0, -1, -1);
                                        }
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public final void l0() {
        DialogConfirm dialogConfirm = this.R0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.R0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean m() {
        if (I0()) {
            return true;
        }
        ImageViewControl imageViewControl = this.U;
        if (imageViewControl != null && imageViewControl.l()) {
            return true;
        }
        return false;
    }

    public final void m0() {
        DialogConfirm dialogConfirm = this.Q0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Q0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void n() {
        if (this.b == null) {
            return;
        }
        Intent intent = new Intent(this.f15915a, (Class<?>) MainListImage.class);
        intent.putExtra("EXTRA_TYPE", this.t);
        if (this.t == 12) {
            intent.putExtra("EXTRA_PATH", PrefPath.j);
        } else {
            intent.putExtra("EXTRA_PATH", this.u);
        }
        this.b.o0(intent, 7);
    }

    public final void n0() {
        DialogConfirm dialogConfirm = this.S0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.S0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void o() {
        if (this.U == null || this.b == null || J0()) {
            return;
        }
        t0();
        h0(true);
        this.H0 = true;
        MainApp.K1 = true;
        this.i0 = false;
        ImageViewActivity imageViewActivity = this.b;
        DialogSeekBright dialogSeekBright = new DialogSeekBright(imageViewActivity, imageViewActivity.getWindow(), 2, null);
        this.k0 = dialogSeekBright;
        dialogSeekBright.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.40
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert.this.t0();
            }
        });
    }

    public final void o0() {
        DialogConfirm dialogConfirm = this.P0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.P0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void p() {
        if (this.U == null || this.b == null || J0()) {
            return;
        }
        DialogCapture dialogCapture = this.n0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.n0 = null;
        }
        this.b.m0(new AnonymousClass45());
    }

    public final void p0() {
        DialogImageBack dialogImageBack = this.l0;
        if (dialogImageBack != null) {
            dialogImageBack.dismiss();
            this.l0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void q() {
        ImageCoverView imageCoverView;
        int B;
        if (this.C != null && this.I != null && (imageCoverView = this.T) != null && !imageCoverView.d()) {
            int i = this.v;
            if (i == 0) {
                if (H0()) {
                    if (PrefImage.s) {
                        Q0(this.v, this.w, this.x, 1, this.u, true, false);
                        return;
                    } else {
                        Q0(this.v, this.w, this.x, 2, this.u, false, false);
                        return;
                    }
                }
                return;
            }
            if (PrefImage.s) {
                if (this.w == i - 1 && H0()) {
                    Q0(this.v, this.w, this.x, 1, this.u, true, false);
                    return;
                }
                B = (this.w + 1) % this.v;
            } else if (this.w == 0 && H0()) {
                Q0(this.v, this.w, this.x, 2, this.u, false, false);
                return;
            } else {
                int i2 = this.w;
                int i3 = this.v;
                B = android.support.v4.media.a.B(i2, i3, 1, i3);
            }
            h(B);
        }
    }

    public final void q0() {
        DialogImageType dialogImageType = this.j0;
        if (dialogImageType != null) {
            dialogImageType.dismiss();
            this.j0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void r(View view) {
        if (this.U != null && this.t0 == null) {
            B0();
            if (view != null) {
                ImageViewControl imageViewControl = this.U;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.forward, !PrefImage.s));
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.reverse, PrefImage.s));
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.b, this.H, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewListVert.32
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewListVert.this.B0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i) {
                        boolean z;
                        if (i != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z == PrefImage.s) {
                            return true;
                        }
                        PrefImage.s = z;
                        ImageViewListVert imageViewListVert = ImageViewListVert.this;
                        PrefSet.d(3, imageViewListVert.f15915a, "mReverse", z);
                        if (MainUtil.O5(imageViewListVert.f15915a)) {
                            imageViewListVert.e = !PrefImage.s;
                        } else {
                            imageViewListVert.e = PrefImage.s;
                        }
                        imageViewListVert.b1(true);
                        ImageViewControl imageViewControl2 = imageViewListVert.U;
                        if (imageViewControl2 != null) {
                            imageViewControl2.u(imageViewListVert.e, imageViewListVert.t, imageViewListVert.n, imageViewListVert.C, imageViewListVert.v, imageViewListVert.w, imageViewListVert.x);
                        }
                        imageViewListVert.M0();
                        return true;
                    }
                });
                this.t0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.b;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public final void r0() {
        DialogListBook dialogListBook = this.m0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.m0 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void s() {
        if (H0()) {
            if (PrefImage.s) {
                Q0(this.v, this.w, this.x, 2, this.u, false, true);
                return;
            } else {
                Q0(this.v, this.w, this.x, 1, this.u, true, true);
                return;
            }
        }
        int i = 0;
        if (PrefImage.s) {
            if (this.w == 0) {
                i = this.v - 1;
            }
            h(i);
        } else {
            int i2 = this.w;
            int i3 = this.v - 1;
            if (i2 != i3) {
                i = i3;
            }
            h(i);
        }
    }

    public final void s0() {
        DialogPreview dialogPreview = this.q0;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.q0 = null;
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void t() {
        X0(true);
    }

    public final void t0() {
        DialogSeekBright dialogSeekBright = this.k0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.k0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void u() {
        Z0();
    }

    public final void u0() {
        DialogSeekSimple dialogSeekSimple = this.T0;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.T0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean v() {
        ImageCoverView imageCoverView = this.T;
        if (imageCoverView != null && !imageCoverView.d()) {
            return false;
        }
        return true;
    }

    public final void v0() {
        DialogSetDown dialogSetDown = this.p0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.p0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
        this.d1 = null;
        this.e1 = null;
        this.f1 = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void w() {
        Bitmap bitmap;
        boolean z;
        if (this.U == null || this.b == null || J0()) {
            return;
        }
        p0();
        h0(true);
        this.H0 = true;
        MainApp.K1 = true;
        Compress compress = this.C;
        if (compress != null && this.v > 0) {
            String n = compress.n(this.w);
            int i = this.t;
            if (i == 12) {
                z = true;
            } else {
                z = false;
            }
            int i2 = 2;
            if (i == 2 && PrefPdf.k) {
                i2 = MainUtil.l0(this.b, G0(), true);
                bitmap = this.C.f(n, i2, z);
            } else {
                bitmap = this.C.f(n, 2, z);
                if (bitmap == null || bitmap.isRecycled()) {
                    bitmap = this.C.f(n, MainUtil.l0(this.b, G0(), false), z);
                }
            }
            if ((bitmap == null || bitmap.isRecycled()) && !z) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = this.C;
                obj.r = this.l;
                obj.f = this.w;
                obj.t = i2;
                bitmap = ImageLoader.f().j(obj, this.b0);
            }
        } else {
            bitmap = null;
        }
        this.i0 = false;
        DialogImageBack dialogImageBack = new DialogImageBack(this.b, bitmap, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewListVert.41
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.i0 = true;
                MySizeFrame mySizeFrame = imageViewListVert.H;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.setBackgroundColor(PrefImage.B);
                imageViewListVert.X0(false);
            }
        });
        this.l0 = dialogImageBack;
        dialogImageBack.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.42
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.p0();
                if (imageViewListVert.i0) {
                    imageViewListVert.i0 = false;
                } else {
                    imageViewListVert.Y0(true);
                }
            }
        });
    }

    public final void w0() {
        DialogSetImage dialogSetImage = this.r0;
        if (dialogSetImage != null) {
            dialogSetImage.dismiss();
            this.r0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void x() {
        if (this.U == null || this.b == null || J0()) {
            return;
        }
        w0();
        h0(true);
        this.H0 = true;
        MainApp.K1 = true;
        this.i0 = false;
        DialogSetImage dialogSetImage = new DialogSetImage(this.b, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewListVert.53
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.i0 = true;
                imageViewListVert.b0(false);
            }
        });
        this.r0 = dialogSetImage;
        dialogSetImage.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewListVert.54
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewListVert imageViewListVert = ImageViewListVert.this;
                imageViewListVert.w0();
                if (imageViewListVert.i0) {
                    imageViewListVert.i0 = false;
                } else {
                    imageViewListVert.Y0(true);
                }
            }
        });
    }

    public final void x0() {
        DialogSetImgTrans dialogSetImgTrans = this.U0;
        if (dialogSetImgTrans != null) {
            dialogSetImgTrans.dismiss();
            this.U0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void y() {
        if (this.b == null) {
            return;
        }
        this.b.o0(new Intent(this.f15915a, (Class<?>) SettingImage.class), 1);
    }

    public final void y0() {
        DialogTransLang dialogTransLang = this.O0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.O0 = null;
            this.H0 = false;
            MainUtil.K7(this.b, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void z(View view) {
        if (this.U != null && !J0() && view != null && this.H != null) {
            L0();
            if (this.g1 == null) {
                this.g1 = new WebTransOcrCtrl(this.b);
                this.h1 = view;
                this.H.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.55
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewListVert imageViewListVert = ImageViewListVert.this;
                        WebTransOcrCtrl webTransOcrCtrl = imageViewListVert.g1;
                        if (webTransOcrCtrl != null) {
                            webTransOcrCtrl.c();
                        }
                        MySizeFrame mySizeFrame = imageViewListVert.H;
                        if (mySizeFrame == null) {
                            return;
                        }
                        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.55.1
                            /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
                            /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[Catch: Exception -> 0x00f6, TryCatch #0 {Exception -> 0x00f6, blocks: (B:10:0x0029, B:18:0x0080, B:22:0x0095, B:30:0x00a5, B:32:0x00c0, B:34:0x00c4, B:35:0x00c9, B:36:0x00cb, B:43:0x0066, B:46:0x006b, B:51:0x0077), top: B:9:0x0029 }] */
                            /* JADX WARN: Removed duplicated region for block: B:32:0x00c0 A[Catch: Exception -> 0x00f6, TryCatch #0 {Exception -> 0x00f6, blocks: (B:10:0x0029, B:18:0x0080, B:22:0x0095, B:30:0x00a5, B:32:0x00c0, B:34:0x00c4, B:35:0x00c9, B:36:0x00cb, B:43:0x0066, B:46:0x006b, B:51:0x0077), top: B:9:0x0029 }] */
                            /* JADX WARN: Removed duplicated region for block: B:42:0x00a4  */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void run() {
                                /*
                                    Method dump skipped, instructions count: 247
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewListVert.AnonymousClass55.AnonymousClass1.run():void");
                            }
                        });
                    }
                });
                ImageViewControl imageViewControl = this.U;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
            }
        }
    }

    public final void z0() {
        MyPopupMenu myPopupMenu = this.W0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.b;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.W0 = null;
        }
    }
}
