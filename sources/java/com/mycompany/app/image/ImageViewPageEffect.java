package com.mycompany.app.image;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.curl.CurlMesh;
import com.mycompany.app.curl.CurlRenderer;
import com.mycompany.app.curl.CurlView;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataPdf;
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
import com.mycompany.app.image.ImageTransView;
import com.mycompany.app.image.ImageViewActivity;
import com.mycompany.app.image.ImageViewControl;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainActivity;
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
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ImageViewPageEffect extends ImageViewWrapper implements ImageViewControl.ControlListener, ZoomImageAttacher.AttacherListener {
    public int A;
    public boolean A0;
    public EventHandler B;
    public boolean B0;
    public boolean C;
    public boolean C0;
    public int D;
    public boolean D0;
    public Compress E;
    public boolean E0;
    public Compress F;
    public float F0;
    public DialogEditText G;
    public float G0;
    public String H;
    public boolean H0;
    public boolean I;
    public boolean I0;
    public MySizeFrame J;
    public boolean J0;
    public CurlView K;
    public boolean K0;
    public int L;
    public GestureDetector L0;
    public MyCoverView M;
    public MyFadeFrame M0;
    public FrameLayout N;
    public boolean N0;
    public MyImageView O;
    public Handler O0;
    public final int P;
    public boolean P0;
    public MyButtonImage Q;
    public boolean Q0;
    public ImageGifView R;
    public FrameLayout R0;
    public boolean S;
    public WebTransOcrCtrl S0;
    public MyCoverView T;
    public ImageTransView T0;
    public ImageCoverView U;
    public DialogTransLang U0;
    public ImageViewControl V;
    public DialogConfirm V0;
    public int W;
    public DialogConfirm W0;
    public int X;
    public DialogConfirm X0;
    public MyFadeLinear Y;
    public DialogConfirm Y0;
    public View Z;
    public DialogSeekSimple Z0;
    public AppCompatTextView a0;
    public DialogSetImgTrans a1;
    public Context b;
    public AppCompatTextView b0;
    public MyPopupMenu b1;

    /* renamed from: c, reason: collision with root package name */
    public ImageViewActivity f16018c;
    public DisplayImageOptions c0;
    public MyPopupMenu c1;
    public Window d;
    public ListTask d0;
    public OcrDetector d1;
    public int e;
    public boolean e0;
    public String e1;
    public boolean f;
    public boolean f0;
    public int f1;
    public ImageViewActivity.SavedItem g;
    public LoadTask g0;
    public String g1;
    public BookTask h0;
    public int h1;
    public boolean i;
    public ArrayList i0;
    public Bitmap i1;
    public boolean j;
    public ArrayList j0;
    public String j1;
    public boolean k;
    public int k0;
    public String k1;
    public boolean l;
    public ZoomImageAttacher l0;
    public String l1;
    public String m;
    public RectF m0;
    public WebTransOcrCtrl m1;
    public boolean n;
    public boolean n0;
    public View n1;
    public ArrayList o;
    public boolean o0;
    public boolean o1;
    public int p;
    public DialogImageType p0;
    public boolean p1;
    public WebLoadWrap q;
    public DialogSeekBright q0;
    public String q1;
    public WebLoadWrap r;
    public DialogImageBack r0;
    public Bitmap r1;
    public boolean s;
    public DialogListBook s0;
    public String s1;
    public int t;
    public DialogCapture t0;
    public String t1;
    public String u;
    public DialogDownUrl u0;
    public String u1;
    public int v;
    public DialogSetDown v0;
    public MainUri.UriItem v1;
    public String w;
    public DialogPreview w0;
    public int w1;
    public int x;
    public DialogSetImage x0;
    public int y;
    public MyPopupMenu y0;
    public int z;
    public MyPopupMenu z0;

    /* renamed from: a, reason: collision with root package name */
    public final Object f16017a = new Object();
    public boolean h = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass11 implements Runnable {
        public AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null || mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewPageEffect.J.setKeepScreenOn(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null || !mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewPageEffect.J.setKeepScreenOn(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass21 implements Runnable {
        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            if (imageViewPageEffect.V != null) {
                if (!TextUtils.isEmpty(imageViewPageEffect.u)) {
                    ImageViewPageEffect.T(imageViewPageEffect);
                    return;
                }
                ImageViewActivity imageViewActivity = imageViewPageEffect.f16018c;
                if (imageViewActivity == null) {
                    return;
                }
                imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.21.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                        if (imageViewPageEffect2.V != null) {
                            if (imageViewPageEffect2.v == 1) {
                                imageViewPageEffect2.u = MainUtil.j1(imageViewPageEffect2.b, imageViewPageEffect2.w);
                            } else {
                                imageViewPageEffect2.u = MainUtil.b1(imageViewPageEffect2.b, imageViewPageEffect2.w);
                            }
                            MySizeFrame mySizeFrame = imageViewPageEffect2.J;
                            if (mySizeFrame == null) {
                                return;
                            }
                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.21.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageEffect.T(ImageViewPageEffect.this);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass22 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f16036c;

        public AnonymousClass22(boolean z) {
            this.f16036c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            ImageGifView imageGifView = imageViewPageEffect.R;
            if (imageGifView != null && imageViewPageEffect.J != null) {
                imageGifView.j();
                imageViewPageEffect.J.addView(imageViewPageEffect.R, -1, -1);
                imageViewPageEffect.J.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.22.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                        ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                        if (imageViewPageEffect2.R != null && imageViewPageEffect2.E != null) {
                            boolean z = true;
                            imageViewPageEffect2.q0(true);
                            final String n = imageViewPageEffect2.E.n(imageViewPageEffect2.y);
                            Compress compress = imageViewPageEffect2.E;
                            ImageViewActivity imageViewActivity = imageViewPageEffect2.f16018c;
                            boolean Q0 = imageViewPageEffect2.Q0();
                            if (imageViewPageEffect2.v != 2) {
                                z = false;
                            }
                            imageViewPageEffect2.R.k(imageViewPageEffect2.f16018c, n, imageViewPageEffect2.m, compress.f(n, MainUtil.l0(imageViewActivity, Q0, z), false), anonymousClass22.f16036c, new ImageGifView.GifListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.22.1.1
                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void a() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    ImageGifView imageGifView2 = ImageViewPageEffect.this.R;
                                    if (imageGifView2 == null) {
                                        return;
                                    }
                                    imageGifView2.f();
                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                    MySizeFrame mySizeFrame = imageViewPageEffect3.J;
                                    if (mySizeFrame != null) {
                                        mySizeFrame.removeView(imageViewPageEffect3.R);
                                    }
                                    ImageViewPageEffect.this.R = null;
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void b(boolean z2) {
                                    AnonymousClass22 anonymousClass222 = AnonymousClass22.this;
                                    if (z2) {
                                        ImageViewPageEffect.this.q0(false);
                                    } else {
                                        ImageViewPageEffect.this.p1();
                                    }
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void c(MyImageView myImageView) {
                                    boolean z2;
                                    if (myImageView != null) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                        Compress compress2 = imageViewPageEffect3.E;
                                        if (compress2 != null) {
                                            ImageViewActivity imageViewActivity2 = imageViewPageEffect3.f16018c;
                                            boolean Q02 = imageViewPageEffect3.Q0();
                                            if (ImageViewPageEffect.this.v == 2) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            Bitmap f = compress2.f(n, MainUtil.l0(imageViewActivity2, Q02, z2), true);
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

    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$30, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass30 implements Runnable {
        public AnonymousClass30() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Compress compress;
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            if (imageViewPageEffect.s || (compress = imageViewPageEffect.E) == null) {
                return;
            }
            compress.S();
            imageViewPageEffect.s = true;
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewPageEffect$48, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass48 implements Runnable {
        public AnonymousClass48() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            Bitmap m0 = imageViewPageEffect.m0();
            if (MainUtil.f6(m0)) {
                imageViewPageEffect.i1 = m0;
                MySizeFrame mySizeFrame = imageViewPageEffect.J;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.48.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                        Bitmap bitmap = imageViewPageEffect2.i1;
                        imageViewPageEffect2.i1 = null;
                        if (!MainUtil.f6(bitmap)) {
                            MainUtil.e8(imageViewPageEffect2.b, R.string.image_fail);
                            return;
                        }
                        imageViewPageEffect2.q0(true);
                        imageViewPageEffect2.t0 = new DialogCapture(imageViewPageEffect2.f16018c, bitmap, false, imageViewPageEffect2.u);
                        imageViewPageEffect2.t0.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.48.1.1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                AnonymousClass48 anonymousClass48 = AnonymousClass48.this;
                                ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                DialogCapture dialogCapture = imageViewPageEffect3.t0;
                                if (dialogCapture != null) {
                                    dialogCapture.dismiss();
                                    imageViewPageEffect3.t0 = null;
                                }
                                ImageViewPageEffect.this.l1(false);
                                ImageViewPageEffect.this.j1();
                            }
                        });
                    }
                });
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

        public BookTask(ImageViewPageEffect imageViewPageEffect) {
            WeakReference weakReference = new WeakReference(imageViewPageEffect);
            this.e = weakReference;
            ImageViewPageEffect imageViewPageEffect2 = (ImageViewPageEffect) weakReference.get();
            if (imageViewPageEffect2 != null) {
                Compress compress = imageViewPageEffect2.E;
                this.f = compress;
                int i = imageViewPageEffect2.y;
                this.g = i;
                DialogListBook dialogListBook = imageViewPageEffect2.s0;
                if (dialogListBook != null) {
                    dialogListBook.t(true);
                    if (compress == null) {
                        return;
                    }
                    this.h = compress.n(i);
                    this.i = imageViewPageEffect2.v == 12;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v5, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ImageViewPageEffect imageViewPageEffect;
            Compress compress;
            Bitmap f;
            int i;
            Bitmap bitmap;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null && (compress = this.f) != null) {
                int i2 = imageViewPageEffect.v;
                String str = this.h;
                boolean z = this.i;
                if (i2 == 2 && PrefPdf.k) {
                    i = MainUtil.l0(imageViewPageEffect.f16018c, imageViewPageEffect.Q0(), true);
                    f = compress.f(str, i, z);
                } else {
                    Bitmap f2 = compress.f(str, 2, z);
                    if (f2 != null && !f2.isRecycled()) {
                        f = f2;
                    } else {
                        f = compress.f(str, MainUtil.l0(imageViewPageEffect.f16018c, imageViewPageEffect.Q0(), false), z);
                    }
                    i = 2;
                }
                if ((f == null || f.isRecycled()) && !z) {
                    ?? obj = new Object();
                    obj.f16554a = 8;
                    obj.b = compress;
                    obj.r = imageViewPageEffect.m;
                    obj.f = this.g;
                    obj.t = i;
                    f = ImageLoader.f().j(obj, imageViewPageEffect.c0);
                }
                if (f != null && !f.isRecycled()) {
                    float min = Math.min(f.getWidth(), f.getHeight()) / MainApp.g1;
                    bitmap = MainUtil.k3(Math.round(f.getWidth() / min), Math.round(f.getHeight() / min), f);
                } else {
                    bitmap = null;
                }
                Bitmap bitmap2 = bitmap;
                int i3 = imageViewPageEffect.v;
                if (i3 == 1) {
                    this.j = DbBookAlbum.b(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.u, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z, bitmap2);
                    DataBookAlbum.k(imageViewPageEffect.b).j(this.j);
                } else if (i3 == 2) {
                    this.j = DbBookPdf.b(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.u, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z, bitmap2);
                    DataBookPdf.k(imageViewPageEffect.b).j(this.j);
                } else if (i3 == 3) {
                    this.j = DbBookCmp.b(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.u, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z, bitmap2);
                    DataBookCmp.k(imageViewPageEffect.b).j(this.j);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewPageEffect imageViewPageEffect;
            WeakReference weakReference = this.e;
            if (weakReference == null || (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) == null) {
                return;
            }
            imageViewPageEffect.h0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ImageViewPageEffect imageViewPageEffect;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null) {
                imageViewPageEffect.h0 = null;
                DialogListBook dialogListBook = imageViewPageEffect.s0;
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
        public final WeakReference f16121a;

        public EventHandler(ImageViewPageEffect imageViewPageEffect) {
            super(Looper.getMainLooper());
            this.f16121a = new WeakReference(imageViewPageEffect);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ImageViewPageEffect imageViewPageEffect = (ImageViewPageEffect) this.f16121a.get();
            if (imageViewPageEffect != null && message.what == 0) {
                imageViewPageEffect.i1(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ImageTask extends MyAsyncTask {
        public final WeakReference e;
        public final MainItem.ViewItem f;
        public Bitmap g;
        public final boolean h;
        public boolean i;

        public ImageTask(ImageViewPageEffect imageViewPageEffect, MainItem.ViewItem viewItem, Bitmap bitmap) {
            WeakReference weakReference = new WeakReference(imageViewPageEffect);
            this.e = weakReference;
            if (((ImageViewPageEffect) weakReference.get()) == null) {
                return;
            }
            this.f = viewItem;
            this.g = bitmap;
            this.h = viewItem.o;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:114:0x037b  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x03ad  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x0594  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x05d7  */
        /* JADX WARN: Removed duplicated region for block: B:194:0x05da  */
        /* JADX WARN: Removed duplicated region for block: B:198:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:269:0x034e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1561
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.ImageTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WeakReference weakReference;
            ImageViewPageEffect imageViewPageEffect;
            CurlView curlView;
            if (this.i && (weakReference = this.e) != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null && (curlView = imageViewPageEffect.K) != null) {
                curlView.requestRender();
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ImageViewPageEffect imageViewPageEffect;
            CurlView curlView;
            int indexOf;
            MainItem.ViewItem viewItem;
            MainItem.ViewItem viewItem2;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null && (curlView = imageViewPageEffect.K) != null) {
                if (this.i) {
                    curlView.requestRender();
                }
                MainItem.ViewItem viewItem3 = this.f;
                if (viewItem3.e == imageViewPageEffect.k0 && viewItem3.f == imageViewPageEffect.y && viewItem3.g == imageViewPageEffect.z) {
                    if (TextUtils.isEmpty(viewItem3.v) || viewItem3.v.equals(imageViewPageEffect.w)) {
                        if (this.h) {
                            imageViewPageEffect.K.setPrepared(true);
                        }
                        ArrayList arrayList = imageViewPageEffect.K.h.g;
                        if (arrayList != null && arrayList.size() >= 3) {
                            for (int i = 0; i < 3; i++) {
                                CurlMesh curlMesh = (CurlMesh) arrayList.get(i);
                                if (curlMesh != null && (viewItem2 = curlMesh.C) != null && viewItem2.m) {
                                }
                            }
                            return;
                        }
                        List<CurlMesh> pageList = imageViewPageEffect.K.getPageList();
                        if (pageList != null && (indexOf = pageList.indexOf(viewItem3.f16555c)) != -1) {
                            try {
                                int size = pageList.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    if (i2 != indexOf) {
                                        CurlMesh curlMesh2 = pageList.get(i2);
                                        if (curlMesh2 != null && ((viewItem = curlMesh2.C) == null || !viewItem.m || viewItem.o || viewItem.p)) {
                                            ImageViewPageEffect.Q(imageViewPageEffect, curlMesh2, (i2 - indexOf) + viewItem3.e);
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void g() {
            final ImageViewPageEffect imageViewPageEffect;
            MainItem.ViewItem viewItem;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null) {
                Bitmap bitmap = this.g;
                if (imageViewPageEffect.O != null && imageViewPageEffect.E != null && (viewItem = this.f) != null && viewItem.e == imageViewPageEffect.k0) {
                    if (imageViewPageEffect.n0 || viewItem.f != imageViewPageEffect.y || viewItem.g != imageViewPageEffect.z) {
                        if (TextUtils.isEmpty(viewItem.v) || viewItem.v.equals(imageViewPageEffect.w)) {
                            imageViewPageEffect.n0 = false;
                            if (viewItem.j) {
                                i = 2;
                            } else if (viewItem.l) {
                                i = 1;
                            } else {
                                i = 0;
                            }
                            imageViewPageEffect.O.setFit(MainUtil.E5(imageViewPageEffect.f16018c));
                            imageViewPageEffect.O.f(i, viewItem.k);
                            imageViewPageEffect.O.setImageBitmap(bitmap);
                            MyImageView myImageView = imageViewPageEffect.O;
                            boolean z = viewItem.l;
                            if (myImageView != null) {
                                ZoomImageAttacher zoomImageAttacher = new ZoomImageAttacher(myImageView, imageViewPageEffect);
                                imageViewPageEffect.l0 = zoomImageAttacher;
                                zoomImageAttacher.f20930c = imageViewPageEffect.J;
                                zoomImageAttacher.x = z;
                                zoomImageAttacher.z = true;
                                zoomImageAttacher.onGlobalLayout();
                                myImageView.setAttacher(imageViewPageEffect.l0);
                            }
                            ZoomImageAttacher zoomImageAttacher2 = imageViewPageEffect.l0;
                            if (zoomImageAttacher2 != null) {
                                RectF rectF = zoomImageAttacher2.u;
                                RectF rectF2 = null;
                                if (rectF == null) {
                                    rectF = null;
                                }
                                if (rectF != null) {
                                    rectF2 = new RectF(rectF);
                                }
                                imageViewPageEffect.m0 = rectF2;
                            }
                            if (imageViewPageEffect.L == 0) {
                                imageViewPageEffect.O.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.24
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect2.L == 0) {
                                            MyCoverView myCoverView = imageViewPageEffect2.M;
                                            if (myCoverView != null) {
                                                myCoverView.f(true);
                                            }
                                            MyImageView myImageView2 = imageViewPageEffect2.O;
                                            if (myImageView2 != null) {
                                                myImageView2.setVisibility(0);
                                            }
                                            imageViewPageEffect2.Z0();
                                            imageViewPageEffect2.k1();
                                        }
                                    }
                                });
                            }
                            imageViewPageEffect.y = viewItem.f;
                            imageViewPageEffect.z = viewItem.g;
                            if (i == 0 && MainUtil.f6(bitmap)) {
                                int i2 = imageViewPageEffect.z;
                                if ((i2 == 3 || i2 == 4) && MainUtil.H5(imageViewPageEffect.f16018c)) {
                                    imageViewPageEffect.d1(bitmap.getWidth() * 2, bitmap.getHeight());
                                } else {
                                    imageViewPageEffect.d1(bitmap.getWidth(), bitmap.getHeight());
                                }
                                if (imageViewPageEffect.E.g(imageViewPageEffect.y) == null) {
                                    Compress.P(imageViewPageEffect.E.n(imageViewPageEffect.y), new CompressCache.BitmapInfo(imageViewPageEffect.W, imageViewPageEffect.X, 0));
                                    return;
                                }
                                return;
                            }
                            imageViewPageEffect.d1(0, 0);
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public final boolean f;
        public boolean g;

        public LoadTask(ImageViewPageEffect imageViewPageEffect, boolean z) {
            WeakReference weakReference = new WeakReference(imageViewPageEffect);
            this.e = weakReference;
            final ImageViewPageEffect imageViewPageEffect2 = (ImageViewPageEffect) weakReference.get();
            if (imageViewPageEffect2 == null) {
                return;
            }
            this.f = z;
            imageViewPageEffect2.e0 = false;
            ImageViewControl imageViewControl = imageViewPageEffect2.V;
            if (imageViewControl != null) {
                imageViewControl.A();
            }
            MyCoverView myCoverView = imageViewPageEffect2.T;
            if (myCoverView != null) {
                myCoverView.m(false);
                if (imageViewPageEffect2.v == 12) {
                    imageViewPageEffect2.T.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                            if (imageViewPageEffect3.g0 == null) {
                                return;
                            }
                            MainUtil.e8(imageViewPageEffect3.b, R.string.server_delay);
                        }
                    }, 5000L);
                }
            }
            MainUtil.c();
            imageViewPageEffect2.d1(-1, -1);
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
                com.mycompany.app.image.ImageViewPageEffect r0 = (com.mycompany.app.image.ImageViewPageEffect) r0
                if (r0 == 0) goto Lbf
                boolean r1 = r10.f12839c
                if (r1 == 0) goto L14
                goto Lbf
            L14:
                boolean r1 = r10.f
                r2 = 0
                r3 = 0
                if (r1 == 0) goto L33
                com.mycompany.app.compress.Compress r4 = r0.E
                if (r4 == 0) goto L33
                int r5 = r0.x
                if (r5 <= 0) goto L33
                int r5 = r0.y
                java.lang.String r4 = r4.n(r5)
                boolean r5 = android.text.TextUtils.isEmpty(r4)
                if (r5 != 0) goto L31
                int r5 = r0.z
                goto L35
            L31:
                r5 = r3
                goto L35
            L33:
                r4 = r2
                goto L31
            L35:
                com.mycompany.app.compress.Compress r6 = r0.F     // Catch: java.lang.Exception -> L40
                r0.F = r2     // Catch: java.lang.Exception -> L40
                r7 = 1
                if (r6 == 0) goto L42
                r0.E = r6     // Catch: java.lang.Exception -> L40
                r0.I = r7     // Catch: java.lang.Exception -> L40
            L40:
                r7 = r3
                goto L98
            L42:
                r0.I = r3     // Catch: java.lang.Exception -> L40
                com.mycompany.app.compress.Compress r6 = r0.E     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L4d
                r6.a()     // Catch: java.lang.Exception -> L40
                r0.E = r2     // Catch: java.lang.Exception -> L40
            L4d:
                android.content.Context r2 = r0.b     // Catch: java.lang.Exception -> L40
                int r6 = r0.v     // Catch: java.lang.Exception -> L40
                java.lang.String r8 = r0.w     // Catch: java.lang.Exception -> L40
                java.lang.String r9 = r0.m     // Catch: java.lang.Exception -> L40
                com.mycompany.app.compress.Compress r2 = com.mycompany.app.compress.Compress.b(r6, r2, r8, r9)     // Catch: java.lang.Exception -> L40
                int r6 = r0.p     // Catch: java.lang.Exception -> L40
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
                java.lang.String r6 = r0.H     // Catch: java.lang.Exception -> L40
                boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L40
                if (r6 != 0) goto L7d
                java.lang.String r6 = r0.H     // Catch: java.lang.Exception -> L40
                r2.g = r6     // Catch: java.lang.Exception -> L40
                goto L88
            L7d:
                java.lang.String r6 = r2.t()     // Catch: java.lang.Exception -> L40
                boolean r6 = com.mycompany.app.compress.CompressUtilZip2.a(r6)     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L88
                goto L98
            L88:
                boolean r6 = r0.j     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L8d
                goto L40
            L8d:
                r2.M()     // Catch: java.lang.Exception -> L40
                boolean r6 = r0.j     // Catch: java.lang.Exception -> L40
                if (r6 == 0) goto L95
                goto L40
            L95:
                r0.E = r2     // Catch: java.lang.Exception -> L40
                goto L40
            L98:
                r10.g = r7
                if (r7 == 0) goto L9d
                goto Lbf
            L9d:
                if (r1 == 0) goto Lbc
                r0.y = r3
                r0.z = r3
                boolean r1 = android.text.TextUtils.isEmpty(r4)
                if (r1 != 0) goto Lbc
                com.mycompany.app.compress.Compress r1 = r0.E
                if (r1 == 0) goto Lbc
                int r2 = r0.x
                if (r2 <= 0) goto Lbc
                int r1 = r1.m(r4)
                r2 = -1
                if (r1 == r2) goto Lbc
                r0.y = r1
                r0.z = r5
            Lbc:
                com.mycompany.app.image.ImageViewPageEffect.P(r0)
            Lbf:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewPageEffect imageViewPageEffect;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null) {
                imageViewPageEffect.g0 = null;
                imageViewPageEffect.F = null;
                boolean z = false;
                imageViewPageEffect.f0 = false;
                if (imageViewPageEffect.Q0()) {
                    i = PrefImage.u;
                } else {
                    i = PrefImage.t;
                }
                if (i != 0) {
                    z = true;
                }
                if (z) {
                    imageViewPageEffect.h0(true);
                    return;
                }
                MyCoverView myCoverView = imageViewPageEffect.T;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final ImageViewPageEffect imageViewPageEffect;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageEffect = (ImageViewPageEffect) weakReference.get()) != null) {
                imageViewPageEffect.g0 = null;
                imageViewPageEffect.F = null;
                if (this.g) {
                    MyCoverView myCoverView = imageViewPageEffect.T;
                    if (myCoverView != null && !myCoverView.t) {
                        myCoverView.t = true;
                        myCoverView.invalidate();
                    }
                    if (imageViewPageEffect.f16018c != null && !imageViewPageEffect.U0()) {
                        imageViewPageEffect.t0();
                        imageViewPageEffect.q0(true);
                        if (imageViewPageEffect.E == null) {
                            return;
                        }
                        imageViewPageEffect.N0 = true;
                        MainApp.K1 = true;
                        DialogEditText dialogEditText = new DialogEditText(imageViewPageEffect.f16018c, R.string.password, imageViewPageEffect.E.t(), imageViewPageEffect.u, true, new DialogEditText.EditTextListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.17
                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void a(String str) {
                                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                imageViewPageEffect2.H = str;
                                imageViewPageEffect2.t0();
                                imageViewPageEffect2.j0(false);
                            }

                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void b() {
                                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                ImageViewPageEffect.P(imageViewPageEffect2);
                                ImageViewPageEffect.R(imageViewPageEffect2, false, true);
                            }
                        });
                        imageViewPageEffect.G = dialogEditText;
                        dialogEditText.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.18
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ImageViewPageEffect.this.t0();
                            }
                        });
                        return;
                    }
                    return;
                }
                ImageViewPageEffect.R(imageViewPageEffect, this.f, false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class PageChangeListener implements CurlView.OnPageChangeListener {
        public PageChangeListener() {
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final void a(int i, int i2) {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            if (imageViewPageEffect.V != null && imageViewPageEffect.W > -1 && imageViewPageEffect.X > -1) {
                int i3 = imageViewPageEffect.z;
                if ((i3 == 3 || i3 == 4) && MainUtil.H5(imageViewPageEffect.f16018c)) {
                    imageViewPageEffect.V.n(!MainUtil.E5(imageViewPageEffect.f16018c), i, i2, imageViewPageEffect.W / 2, imageViewPageEffect.X);
                    return;
                }
                imageViewPageEffect.V.n(!MainUtil.E5(imageViewPageEffect.f16018c), i, i2, imageViewPageEffect.W, imageViewPageEffect.X);
            }
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final void b(final CurlMesh curlMesh, final int i, int i2) {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            imageViewPageEffect.L = i2;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.PageChangeListener.3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                    CurlMesh curlMesh2 = curlMesh;
                    if (curlMesh2 == null) {
                        if (!imageViewPageEffect2.n0) {
                            MyCoverView myCoverView = imageViewPageEffect2.M;
                            if (myCoverView != null) {
                                myCoverView.f(true);
                            }
                            MyImageView myImageView = imageViewPageEffect2.O;
                            if (myImageView != null) {
                                myImageView.setVisibility(0);
                            }
                            imageViewPageEffect2.Z0();
                            imageViewPageEffect2.k1();
                            return;
                        }
                        MyCoverView myCoverView2 = imageViewPageEffect2.M;
                        if (myCoverView2 != null) {
                            myCoverView2.l();
                            return;
                        }
                        return;
                    }
                    imageViewPageEffect2.n0 = true;
                    ZoomImageAttacher zoomImageAttacher = imageViewPageEffect2.l0;
                    if (zoomImageAttacher != null) {
                        zoomImageAttacher.u();
                    }
                    MyCoverView myCoverView3 = imageViewPageEffect2.M;
                    if (myCoverView3 != null) {
                        myCoverView3.l();
                    }
                    int i3 = i;
                    MainItem.ViewItem Q = ImageViewPageEffect.Q(imageViewPageEffect2, curlMesh2, i3);
                    if (Q != null) {
                        int i4 = imageViewPageEffect2.x;
                        int i5 = imageViewPageEffect2.y;
                        int i6 = imageViewPageEffect2.z;
                        int i7 = imageViewPageEffect2.k0;
                        imageViewPageEffect2.k0 = i3;
                        int i8 = Q.f;
                        imageViewPageEffect2.y = i8;
                        imageViewPageEffect2.z = Q.g;
                        if (Q.i == null) {
                            Q.i = imageViewPageEffect2.E.g(i8);
                        }
                        CompressCache.BitmapInfo bitmapInfo = Q.i;
                        if (bitmapInfo == null) {
                            imageViewPageEffect2.d1(0, 0);
                        } else {
                            imageViewPageEffect2.d1(bitmapInfo.f12872a, bitmapInfo.b);
                        }
                        if (Q.j) {
                            int i9 = imageViewPageEffect2.k0;
                            if (i9 < i7) {
                                imageViewPageEffect2.c1(i4, i5, i6, 0, imageViewPageEffect2.w, false, false);
                                return;
                            } else {
                                if (i9 > i7) {
                                    imageViewPageEffect2.c1(i4, i5, i6, 0, imageViewPageEffect2.w, true, false);
                                    return;
                                }
                                return;
                            }
                        }
                        int i10 = imageViewPageEffect2.k0;
                        if (i10 != 0 && i10 != 99999) {
                            return;
                        }
                        imageViewPageEffect2.Y0();
                    }
                }
            });
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final boolean c() {
            ZoomImageAttacher zoomImageAttacher = ImageViewPageEffect.this.l0;
            if (zoomImageAttacher == null) {
                return false;
            }
            return zoomImageAttacher.o;
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final void d(final CurlMesh curlMesh, final int i, int i2) {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            imageViewPageEffect.L = i2;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.PageChangeListener.4
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                    imageViewPageEffect2.n0 = true;
                    ZoomImageAttacher zoomImageAttacher = imageViewPageEffect2.l0;
                    if (zoomImageAttacher != null) {
                        zoomImageAttacher.u();
                    }
                    MyCoverView myCoverView = imageViewPageEffect2.M;
                    if (myCoverView != null) {
                        myCoverView.l();
                    }
                    MyImageView myImageView = imageViewPageEffect2.O;
                    if (myImageView != null) {
                        myImageView.setVisibility(8);
                    }
                    MyButtonImage myButtonImage = imageViewPageEffect2.Q;
                    if (myButtonImage != null) {
                        myButtonImage.f(false);
                    }
                    ImageViewPageEffect.Q(imageViewPageEffect2, curlMesh, i);
                }
            });
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final boolean e() {
            CurlView curlView;
            float f;
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            MyImageView myImageView = imageViewPageEffect.O;
            if (myImageView != null && myImageView.c()) {
                return true;
            }
            ZoomImageAttacher zoomImageAttacher = imageViewPageEffect.l0;
            if (zoomImageAttacher != null && (curlView = imageViewPageEffect.K) != null) {
                RectF rectF = zoomImageAttacher.u;
                if (rectF == null) {
                    f = 0.0f;
                } else {
                    f = rectF.bottom - rectF.top;
                }
                if (f > curlView.getHeight()) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final void f(int i) {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            imageViewPageEffect.L = i;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.PageChangeListener.2
                @Override // java.lang.Runnable
                public final void run() {
                    PageChangeListener pageChangeListener = PageChangeListener.this;
                    MyCoverView myCoverView = ImageViewPageEffect.this.M;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    MyImageView myImageView = ImageViewPageEffect.this.O;
                    if (myImageView != null) {
                        myImageView.setVisibility(8);
                    }
                    MyButtonImage myButtonImage = ImageViewPageEffect.this.Q;
                    if (myButtonImage != null) {
                        myButtonImage.f(false);
                    }
                }
            });
        }

        @Override // com.mycompany.app.curl.CurlView.OnPageChangeListener
        public final void g(final CurlMesh curlMesh, int i) {
            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
            imageViewPageEffect.L = i;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.PageChangeListener.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainItem.ViewItem viewItem;
                    PageChangeListener pageChangeListener;
                    ImageViewPageEffect imageViewPageEffect2;
                    ZoomImageAttacher zoomImageAttacher;
                    CurlMesh curlMesh2 = curlMesh;
                    if (curlMesh2 != null && (viewItem = curlMesh2.C) != null && (zoomImageAttacher = (imageViewPageEffect2 = ImageViewPageEffect.this).l0) != null) {
                        RectF rectF = imageViewPageEffect2.m0;
                        RectF rectF2 = zoomImageAttacher.u;
                        if (rectF != null && rectF2 != null && Math.round(rectF.top) == Math.round(rectF2.top) && Math.round(rectF.left) == Math.round(rectF2.left) && Math.round(rectF.right) == Math.round(rectF2.right) && Math.round(rectF.bottom) == Math.round(rectF2.bottom)) {
                            CurlView curlView = ImageViewPageEffect.this.K;
                            if (curlView != null) {
                                curlView.setPrepared(true);
                                return;
                            }
                            return;
                        }
                        viewItem.o = true;
                        viewItem.p = true;
                        ImageViewPageEffect.this.V0(viewItem);
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r2v19, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v28, types: [com.mycompany.app.curl.CurlView, android.opengl.GLSurfaceView, android.view.View] */
    public ImageViewPageEffect(Context context, ImageViewActivity imageViewActivity, Window window, Intent intent, ImageViewActivity.SavedItem savedItem) {
        int intExtra;
        this.b = context;
        this.f16018c = imageViewActivity;
        this.d = window;
        f1();
        e1();
        this.l = false;
        if (savedItem != null) {
            this.k = savedItem.f15781a;
            this.m = savedItem.b;
            this.n = savedItem.f15782c;
            this.o = savedItem.d;
            this.p = savedItem.e;
            this.t = savedItem.m;
            this.u = savedItem.i;
            this.v = savedItem.f;
            this.F = savedItem.g;
            this.w = savedItem.h;
            this.x = savedItem.j;
            this.y = savedItem.k;
            this.z = savedItem.l;
            this.S = savedItem.n;
            this.P = savedItem.o;
        } else if (intent != null) {
            int intExtra2 = intent.getIntExtra("EXTRA_TYPE", 0);
            this.v = intExtra2;
            if (intExtra2 != 0 && (intExtra = intent.getIntExtra("EXTRA_INDEX", -1)) != -1) {
                int i = this.v;
                if (i == 1) {
                    MainItem.ChildItem f = DataAlbum.m(this.b).f(intExtra);
                    if (f != null) {
                        boolean booleanExtra = intent.getBooleanExtra("EXTRA_BOOK", false);
                        this.t = f.J;
                        this.u = f.h;
                        this.w = f.g;
                        this.x = f.s;
                        if (booleanExtra || PrefList.q) {
                            this.y = f.t;
                            this.z = f.u;
                        }
                    }
                } else if (i == 2) {
                    String stringExtra = intent.getStringExtra("EXTRA_PATH");
                    this.w = stringExtra;
                    if (!TextUtils.isEmpty(stringExtra)) {
                        this.k = true;
                        this.l = true;
                    } else {
                        MainItem.ChildItem f2 = DataPdf.m(this.b).f(intExtra);
                        if (f2 != null) {
                            boolean booleanExtra2 = intent.getBooleanExtra("EXTRA_BOOK", false);
                            this.t = f2.J;
                            this.u = f2.h;
                            this.w = f2.g;
                            this.x = f2.s;
                            if (booleanExtra2 || PrefList.q) {
                                this.y = f2.t;
                                this.z = f2.u;
                            }
                        }
                    }
                } else if (i == 3) {
                    String stringExtra2 = intent.getStringExtra("EXTRA_PATH");
                    this.w = stringExtra2;
                    if (!TextUtils.isEmpty(stringExtra2)) {
                        this.k = true;
                        this.l = true;
                    } else {
                        MainItem.ChildItem f3 = DataCmp.m(this.b).f(intExtra);
                        if (f3 != null) {
                            boolean booleanExtra3 = intent.getBooleanExtra("EXTRA_BOOK", false);
                            this.t = f3.J;
                            this.u = f3.h;
                            this.w = f3.g;
                            this.x = f3.s;
                            if (booleanExtra3 || PrefList.q) {
                                this.y = f3.t;
                                this.z = f3.u;
                            }
                        }
                    }
                } else if (i == 12) {
                    this.u = intent.getStringExtra("EXTRA_NAME");
                    this.x = DataUrl.b(this.b).a();
                    this.y = intExtra;
                    this.z = intent.getIntExtra("EXTRA_PAGE", 0);
                    this.m = intent.getStringExtra("EXTRA_REFERER");
                    this.n = intent.getBooleanExtra("EXTRA_PRELOAD", false);
                    this.p = intent.getIntExtra("EXTRA_LOAD_TYPE", 0);
                }
            }
        }
        int i2 = this.v;
        if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 12) {
            MainUtil.e8(this.b, R.string.invalid_path);
            k0();
            return;
        }
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.f20960a = true;
        builder.b = true;
        builder.e = true;
        builder.f = new Object();
        this.c0 = new DisplayImageOptions(builder);
        this.O0 = new Handler(Looper.getMainLooper());
        ImageViewActivity imageViewActivity2 = this.f16018c;
        if (imageViewActivity2 != null) {
            imageViewActivity2.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.32
                @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                public final boolean a() {
                    return false;
                }

                @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                public final boolean b() {
                    ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                    if (imageViewPageEffect.O0() && !imageViewPageEffect.Q0()) {
                        return true;
                    }
                    return false;
                }

                @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                public final boolean c() {
                    return true;
                }
            };
        }
        j1();
        if (Build.VERSION.SDK_INT < 30) {
            ImageViewActivity imageViewActivity3 = this.f16018c;
            View a0 = imageViewActivity3 == null ? null : imageViewActivity3.a0();
            if (a0 != null) {
                a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.1
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public final void onSystemUiVisibilityChange(int i3) {
                        ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                        if (imageViewPageEffect.d != null) {
                            if ((i3 & 4) == 4) {
                                if (imageViewPageEffect.O0()) {
                                    imageViewPageEffect.j1();
                                }
                            } else if (!imageViewPageEffect.O0()) {
                                imageViewPageEffect.j1();
                            }
                        }
                    }
                });
            }
        }
        this.B = new EventHandler(this);
        ImageViewActivity imageViewActivity4 = this.f16018c;
        if (imageViewActivity4 == null) {
            return;
        }
        ?? frameLayout = new FrameLayout(imageViewActivity4);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ?? gLSurfaceView = new GLSurfaceView(imageViewActivity4);
        gLSurfaceView.g = false;
        gLSurfaceView.k = new RectF();
        gLSurfaceView.m = -1;
        gLSurfaceView.n = 0;
        gLSurfaceView.o = new PointF();
        gLSurfaceView.p = new PointF();
        gLSurfaceView.q = new PointF();
        gLSurfaceView.r = new PointF();
        gLSurfaceView.w = new PointF();
        gLSurfaceView.x = new PointF();
        gLSurfaceView.A = 0.8f;
        if (MainUtil.O5(imageViewActivity4)) {
            gLSurfaceView.f12893c = !PrefImage.s;
        } else {
            gLSurfaceView.f12893c = PrefImage.s;
        }
        gLSurfaceView.setEGLContextClientVersion(1);
        gLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        CurlRenderer curlRenderer = new CurlRenderer(gLSurfaceView.f12893c, gLSurfaceView);
        gLSurfaceView.h = curlRenderer;
        gLSurfaceView.setRenderer(curlRenderer);
        gLSurfaceView.setRenderMode(0);
        frameLayout.addView(gLSurfaceView, -1, -1);
        MyCoverView myCoverView = new MyCoverView(imageViewActivity4, -1, MainApp.y1, MainApp.z1);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(imageViewActivity4);
        frameLayout.addView(frameLayout2, -1, -1);
        MyImageView myImageView = new MyImageView(imageViewActivity4);
        frameLayout2.addView(myImageView, -1, -1);
        MyButtonImage myButtonImage = new MyButtonImage(imageViewActivity4);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage.setImageResource(R.drawable.baseline_play_arrow_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        myButtonImage.setVisibility(8);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 17;
        frameLayout.addView(myButtonImage, layoutParams);
        MyCoverView myCoverView2 = new MyCoverView(imageViewActivity4, -1, MainApp.y1, MainApp.z1);
        myCoverView2.setBackColor(-1593835520);
        myCoverView2.setVisibility(8);
        frameLayout.addView(myCoverView2, -1, -1);
        ImageCoverView imageCoverView = new ImageCoverView(imageViewActivity4);
        imageCoverView.setVisibility(8);
        frameLayout.addView(imageCoverView, -1, -1);
        ImageViewControl imageViewControl = new ImageViewControl(imageViewActivity4);
        imageViewControl.setNaviHeight(this.e);
        imageViewControl.setVisibility(4);
        frameLayout.addView(imageViewControl, -1, -1);
        MyFadeLinear myFadeLinear = new MyFadeLinear(imageViewActivity4);
        int i4 = MainApp.E1;
        myFadeLinear.setPadding(i4, i4, i4, i4);
        myFadeLinear.setBackgroundResource(R.drawable.round_guide_16);
        myFadeLinear.setShowTime(1000);
        myFadeLinear.setAnimTime(600);
        myFadeLinear.setAutoHide(true);
        myFadeLinear.setBlocking(true);
        myFadeLinear.setOrientation(1);
        myFadeLinear.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) MainUtil.G(imageViewActivity4, 132.0f), -2);
        layoutParams2.gravity = 17;
        frameLayout.addView(myFadeLinear, layoutParams2);
        View view = new View(imageViewActivity4);
        int G = (int) MainUtil.G(imageViewActivity4, 84.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(G, G);
        layoutParams3.gravity = 1;
        myFadeLinear.addView(view, layoutParams3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(imageViewActivity4, null);
        appCompatTextView.setGravity(1);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = MainApp.F1;
        layoutParams4.gravity = 1;
        myFadeLinear.addView(appCompatTextView, layoutParams4);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(imageViewActivity4, null);
        appCompatTextView2.setGravity(1);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setTextColor(-256);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = MainApp.F1;
        layoutParams5.gravity = 1;
        myFadeLinear.addView(appCompatTextView2, layoutParams5);
        this.J = frameLayout;
        this.K = gLSurfaceView;
        this.M = myCoverView;
        this.N = frameLayout2;
        this.O = myImageView;
        this.Q = myButtonImage;
        this.T = myCoverView2;
        this.U = imageCoverView;
        this.V = imageViewControl;
        this.Y = myFadeLinear;
        this.Z = view;
        this.a0 = appCompatTextView;
        this.b0 = appCompatTextView2;
        this.f16018c.setContentView((View) frameLayout);
        MySizeFrame mySizeFrame = this.J;
        if (mySizeFrame == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.2
            @Override // java.lang.Runnable
            public final void run() {
                int i5;
                final ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                if (imageViewPageEffect.J != null) {
                    if (imageViewPageEffect.p != 0) {
                        ImageViewActivity imageViewActivity5 = imageViewPageEffect.f16018c;
                        if (imageViewActivity5 != null) {
                            imageViewActivity5.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageEffect.O(ImageViewPageEffect.this);
                                }
                            });
                        } else {
                            return;
                        }
                    }
                    imageViewPageEffect.J.setBackgroundColor(PrefImage.B);
                    imageViewPageEffect.J.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.4
                        @Override // com.mycompany.app.image.ImageSizeListener
                        public final void a(View view2, int i6, int i7) {
                            MySizeFrame mySizeFrame2;
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            if (imageViewPageEffect2.T0 == null || (mySizeFrame2 = imageViewPageEffect2.J) == null) {
                                return;
                            }
                            mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageTransView imageTransView = ImageViewPageEffect.this.T0;
                                    if (imageTransView != null) {
                                        imageTransView.l();
                                    }
                                }
                            });
                        }
                    });
                    CurlView curlView = imageViewPageEffect.K;
                    boolean z = imageViewPageEffect.f;
                    PageChangeListener pageChangeListener = new PageChangeListener();
                    curlView.setReverse(z);
                    curlView.l = 100000;
                    curlView.f = pageChangeListener;
                    imageViewPageEffect.O.setParentView(imageViewPageEffect.J);
                    imageViewPageEffect.O.setBackgroundColor(PrefImage.B);
                    MyCoverView myCoverView3 = imageViewPageEffect.M;
                    if (PrefImage.C > 0.2f) {
                        i5 = -328966;
                    } else {
                        i5 = -16777216;
                    }
                    myCoverView3.setColor(i5);
                    imageViewPageEffect.Q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            if (!imageViewPageEffect2.D0 && !imageViewPageEffect2.P0() && !imageViewPageEffect2.S0()) {
                                imageViewPageEffect2.n1(true);
                            }
                        }
                    });
                    if (imageViewPageEffect.S) {
                        imageViewPageEffect.S = false;
                        imageViewPageEffect.n1(false);
                    }
                    imageViewPageEffect.L0 = new GestureDetector(imageViewPageEffect.f16018c, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.6
                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            if (imageViewPageEffect2.T0()) {
                                imageViewPageEffect2.I0(false);
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            if (Math.abs(f5) < 200.0f) {
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            float y = motionEvent2.getY() - motionEvent.getY();
                            int i6 = MainApp.s1;
                            if (y < (-i6)) {
                                ZoomImageAttacher zoomImageAttacher = imageViewPageEffect2.l0;
                                if (zoomImageAttacher != null && zoomImageAttacher.o()) {
                                    imageViewPageEffect2.o1(false);
                                } else {
                                    imageViewPageEffect2.I0(false);
                                }
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            if (y > i6) {
                                ZoomImageAttacher zoomImageAttacher2 = imageViewPageEffect2.l0;
                                if (zoomImageAttacher2 != null && zoomImageAttacher2.p()) {
                                    imageViewPageEffect2.o1(false);
                                } else {
                                    imageViewPageEffect2.I0(false);
                                }
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            imageViewPageEffect2.I0(false);
                            return super.onFling(motionEvent, motionEvent2, f4, f5);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
                            ImageViewPageEffect.this.I0(false);
                            return super.onScroll(motionEvent, motionEvent2, f4, f5);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onSingleTapUp(MotionEvent motionEvent) {
                            int i6;
                            int i7;
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            if (!imageViewPageEffect2.S0()) {
                                return super.onSingleTapUp(motionEvent);
                            }
                            ImageViewControl imageViewControl2 = imageViewPageEffect2.V;
                            if (imageViewControl2 != null && !imageViewControl2.k(motionEvent.getY())) {
                                if (imageViewPageEffect2.Q0()) {
                                    i6 = PrefImage.H;
                                    i7 = PrefImage.I;
                                } else {
                                    i6 = PrefImage.F;
                                    i7 = PrefImage.G;
                                }
                                float x = motionEvent.getX();
                                boolean z2 = true;
                                boolean z3 = false;
                                if (x < i6) {
                                    if (PrefImage.D != 0) {
                                        z2 = false;
                                    }
                                    z3 = z2;
                                    z2 = false;
                                } else if (x <= imageViewPageEffect2.J.getWidth() - i7 || PrefImage.E != 0) {
                                    z2 = false;
                                }
                                if (z3) {
                                    imageViewPageEffect2.a1();
                                } else if (z2) {
                                    imageViewPageEffect2.g1();
                                } else {
                                    imageViewPageEffect2.p1();
                                }
                                return super.onSingleTapUp(motionEvent);
                            }
                            return super.onSingleTapUp(motionEvent);
                        }
                    });
                    MySizeFrame mySizeFrame2 = imageViewPageEffect.J;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            ImageViewControl imageViewControl2 = imageViewPageEffect2.V;
                            if (imageViewControl2 != null) {
                                imageViewControl2.s(imageViewPageEffect2.f16018c, imageViewPageEffect2.d, imageViewPageEffect2.f, imageViewPageEffect2);
                                imageViewPageEffect2.V.setIconType(imageViewPageEffect2.v);
                                MySizeFrame mySizeFrame3 = imageViewPageEffect2.J;
                                if (mySizeFrame3 == null) {
                                    return;
                                }
                                mySizeFrame3.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.7.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect3.J == null) {
                                            return;
                                        }
                                        boolean z2 = imageViewPageEffect3.l;
                                        imageViewPageEffect3.l = false;
                                        if (!z2) {
                                            imageViewPageEffect3.b1();
                                        } else {
                                            int i6 = imageViewPageEffect3.v;
                                            if (i6 == 2) {
                                                ImageViewActivity imageViewActivity6 = imageViewPageEffect3.f16018c;
                                                if (imageViewActivity6 != null) {
                                                    imageViewActivity6.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.8
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            MainItem.ChildItem a2;
                                                            ImageViewPageEffect imageViewPageEffect4 = ImageViewPageEffect.this;
                                                            Context context2 = imageViewPageEffect4.b;
                                                            if (context2 != null) {
                                                                imageViewPageEffect4.u = MainUtil.b1(context2, imageViewPageEffect4.w);
                                                                if (PrefList.q && (a2 = DbPdf.a(imageViewPageEffect4.b, imageViewPageEffect4.w)) != null) {
                                                                    imageViewPageEffect4.x = a2.s;
                                                                    imageViewPageEffect4.y = a2.t;
                                                                    imageViewPageEffect4.z = a2.u;
                                                                }
                                                                MySizeFrame mySizeFrame4 = imageViewPageEffect4.J;
                                                                if (mySizeFrame4 == null) {
                                                                    return;
                                                                }
                                                                mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.8.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewPageEffect.this.b1();
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    });
                                                }
                                            } else if (i6 == 3) {
                                                ImageViewActivity imageViewActivity7 = imageViewPageEffect3.f16018c;
                                                if (imageViewActivity7 != null) {
                                                    imageViewActivity7.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.9
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            ImageViewPageEffect imageViewPageEffect4 = ImageViewPageEffect.this;
                                                            Context context2 = imageViewPageEffect4.b;
                                                            if (context2 != null) {
                                                                imageViewPageEffect4.u = MainUtil.b1(context2, imageViewPageEffect4.w);
                                                                if (PrefList.q) {
                                                                    MainItem.ChildItem a2 = DbCmp.a(imageViewPageEffect4.b, imageViewPageEffect4.w);
                                                                    if (a2 != null) {
                                                                        imageViewPageEffect4.x = a2.s;
                                                                        imageViewPageEffect4.y = a2.t;
                                                                        imageViewPageEffect4.z = a2.u;
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                                MySizeFrame mySizeFrame4 = imageViewPageEffect4.J;
                                                                if (mySizeFrame4 == null) {
                                                                    return;
                                                                }
                                                                mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.9.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewPageEffect.this.b1();
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    });
                                                }
                                            } else {
                                                imageViewPageEffect3.b1();
                                            }
                                        }
                                        MainUtil.d5(imageViewPageEffect3.b);
                                        MainUtil.s7(imageViewPageEffect3.b);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void N(ImageViewPageEffect imageViewPageEffect) {
        MySizeFrame mySizeFrame = imageViewPageEffect.J;
        if (mySizeFrame != null) {
            try {
                ImageTransView imageTransView = imageViewPageEffect.T0;
                if (imageTransView != null) {
                    imageTransView.g();
                    return;
                }
                ImageViewControl imageViewControl = imageViewPageEffect.V;
                if (imageViewControl != null) {
                    int indexOfChild = mySizeFrame.indexOfChild(imageViewControl);
                    Compress compress = imageViewPageEffect.E;
                    if (compress != null) {
                        boolean u = imageViewPageEffect.E.u(compress.n(imageViewPageEffect.y));
                        ImageTransView imageTransView2 = new ImageTransView(imageViewPageEffect.f16018c);
                        imageViewPageEffect.T0 = imageTransView2;
                        MySizeFrame mySizeFrame2 = imageViewPageEffect.J;
                        ImageTransView.ImageTransListener imageTransListener = new ImageTransView.ImageTransListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.62
                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void b() {
                                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                if (imageViewPageEffect2.e0) {
                                    if (imageViewPageEffect2.P0()) {
                                        MainUtil.e8(imageViewPageEffect2.b, R.string.wait_retry);
                                        return;
                                    }
                                    imageViewPageEffect2.N0();
                                    imageViewPageEffect2.q0(true);
                                    Compress compress2 = imageViewPageEffect2.E;
                                    if (compress2 == null) {
                                        return;
                                    }
                                    ImageViewPageEffect.U(imageViewPageEffect2, compress2.n(imageViewPageEffect2.y), null, false);
                                }
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void c(boolean z) {
                                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                if (!imageViewPageEffect2.e0) {
                                    return;
                                }
                                if (imageViewPageEffect2.P0()) {
                                    MainUtil.e8(imageViewPageEffect2.b, R.string.wait_retry);
                                    return;
                                }
                                if (z && PrefAlbum.F) {
                                    ImageViewPageEffect.W(imageViewPageEffect2);
                                    return;
                                }
                                imageViewPageEffect2.N0();
                                imageViewPageEffect2.q0(true);
                                ImageViewPageEffect.b0(imageViewPageEffect2, z);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void d() {
                                ImageViewPageEffect.X(ImageViewPageEffect.this);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void e(View view) {
                                ImageViewPageEffect.Z(ImageViewPageEffect.this, view);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void f(View view) {
                                ImageViewPageEffect.a0(ImageViewPageEffect.this, view);
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

    public static void O(ImageViewPageEffect imageViewPageEffect) {
        List list;
        Context context = imageViewPageEffect.b;
        if (context != null && (list = DataUrl.b(context).b) != null && !list.isEmpty()) {
            int size = list.size();
            String str = null;
            String str2 = null;
            int i = -1;
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 != imageViewPageEffect.y) {
                    String str3 = (String) list.get(i2);
                    if (URLUtil.isNetworkUrl(str3) && (i == -1 || Math.abs(imageViewPageEffect.y - i2) < Math.abs(imageViewPageEffect.y - i))) {
                        i = i2;
                        str2 = str3;
                    }
                }
            }
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 != imageViewPageEffect.y && i4 != i) {
                    String str4 = (String) list.get(i4);
                    if (URLUtil.isNetworkUrl(str4) && (i3 == -1 || Math.abs(imageViewPageEffect.y - i4) < Math.abs(imageViewPageEffect.y - i3))) {
                        i3 = i4;
                        str = str4;
                    }
                }
            }
            imageViewPageEffect.e1 = str2;
            imageViewPageEffect.f1 = i;
            imageViewPageEffect.g1 = str;
            imageViewPageEffect.h1 = i3;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.27
                    @Override // java.lang.Runnable
                    public final void run() {
                        final ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                        String str5 = imageViewPageEffect2.e1;
                        int i5 = imageViewPageEffect2.f1;
                        String str6 = imageViewPageEffect2.g1;
                        int i6 = imageViewPageEffect2.h1;
                        imageViewPageEffect2.e1 = null;
                        imageViewPageEffect2.g1 = null;
                        if (!TextUtils.isEmpty(str5)) {
                            WebLoadWrap webLoadWrap = imageViewPageEffect2.q;
                            if (webLoadWrap == null) {
                                imageViewPageEffect2.q = WebLoadWrap.a(imageViewPageEffect2.p, imageViewPageEffect2.f16018c, imageViewPageEffect2.J, str5, i5, true, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.28
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewPageEffect.S(ImageViewPageEffect.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect3.s || (imageViewActivity = imageViewPageEffect3.f16018c) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass30());
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
                            WebLoadWrap webLoadWrap2 = imageViewPageEffect2.r;
                            if (webLoadWrap2 == null) {
                                imageViewPageEffect2.r = WebLoadWrap.a(imageViewPageEffect2.p, imageViewPageEffect2.f16018c, imageViewPageEffect2.J, str6, i6, false, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.29
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewPageEffect.S(ImageViewPageEffect.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect3.s || (imageViewActivity = imageViewPageEffect3.f16018c) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass30());
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
    /* JADX WARN: Type inference failed for: r3v9, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public static void P(ImageViewPageEffect imageViewPageEffect) {
        boolean z;
        int i;
        boolean z2;
        Compress compress = imageViewPageEffect.E;
        boolean z3 = false;
        if (compress != null && compress.R() != 0) {
            int R = compress.R();
            imageViewPageEffect.x = R;
            int i2 = imageViewPageEffect.y;
            if (i2 >= 0 && i2 <= R - 1 && imageViewPageEffect.z != 0) {
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
                imageViewPageEffect.y = i;
                imageViewPageEffect.z = 0;
            }
            if (!MainUtil.H5(imageViewPageEffect.f16018c)) {
                imageViewPageEffect.z = 1;
                return;
            }
            if (imageViewPageEffect.v != 12 && imageViewPageEffect.x > 0) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = compress;
                obj.r = imageViewPageEffect.m;
                ImageViewActivity imageViewActivity = imageViewPageEffect.f16018c;
                boolean Q0 = imageViewPageEffect.Q0();
                if (imageViewPageEffect.v == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.t = MainUtil.l0(imageViewActivity, Q0, z2);
                if (imageViewPageEffect.v == 12) {
                    z3 = true;
                }
                obj.u = z3;
                int i3 = imageViewPageEffect.y;
                obj.f = i3;
                if (compress.g(i3) == null) {
                    ImageLoader.f().k(obj, imageViewPageEffect.c0);
                }
            }
            int i4 = imageViewPageEffect.z;
            if (i4 == 0 || i4 == 1) {
                int p0 = imageViewPageEffect.p0(imageViewPageEffect.y, true);
                imageViewPageEffect.z = p0;
                if (z) {
                    if (p0 == 3) {
                        imageViewPageEffect.z = 4;
                        return;
                    } else {
                        if (p0 == 4) {
                            imageViewPageEffect.z = 3;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        imageViewPageEffect.x = 0;
        imageViewPageEffect.y = 0;
        imageViewPageEffect.z = 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0116, code lost:
    
        if (r11.f12872a > r11.b) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0239  */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v3, types: [android.widget.ImageView, com.mycompany.app.view.MyImageView] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ViewItem Q(com.mycompany.app.image.ImageViewPageEffect r18, com.mycompany.app.curl.CurlMesh r19, int r20) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.Q(com.mycompany.app.image.ImageViewPageEffect, com.mycompany.app.curl.CurlMesh, int):com.mycompany.app.main.MainItem$ViewItem");
    }

    public static void R(ImageViewPageEffect imageViewPageEffect, boolean z, boolean z2) {
        int i;
        boolean z3;
        MySizeFrame mySizeFrame;
        imageViewPageEffect.f0 = false;
        if (imageViewPageEffect.Q0()) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            imageViewPageEffect.h0(true);
            return;
        }
        boolean z4 = imageViewPageEffect.I;
        if (!z4) {
            imageViewPageEffect.o = null;
        }
        if (z) {
            if (imageViewPageEffect.v == 12 && DataUrl.b(imageViewPageEffect.b).a() > imageViewPageEffect.x) {
                MainUtil.f8(imageViewPageEffect.b, String.format(Locale.US, imageViewPageEffect.b.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewPageEffect.b).a() - imageViewPageEffect.x)));
            }
        } else if (z2) {
            MainUtil.e8(imageViewPageEffect.b, R.string.invalid_password);
        } else if (!z4) {
            if (imageViewPageEffect.v == 12 && DataUrl.b(imageViewPageEffect.b).a() > imageViewPageEffect.x) {
                MainUtil.f8(imageViewPageEffect.b, String.format(Locale.US, imageViewPageEffect.b.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewPageEffect.b).a() - imageViewPageEffect.x)));
            } else if (imageViewPageEffect.x == 0) {
                MainUtil.e8(imageViewPageEffect.b, R.string.no_image);
            }
        }
        ImageViewControl imageViewControl = imageViewPageEffect.V;
        if (imageViewControl != null) {
            imageViewControl.t(imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
            imageViewPageEffect.V.p(imageViewPageEffect.v, imageViewPageEffect.p, imageViewPageEffect.E);
        }
        imageViewPageEffect.Y0();
        MyCoverView myCoverView = imageViewPageEffect.T;
        if (myCoverView != null) {
            myCoverView.f(true);
        }
        imageViewPageEffect.e0 = true;
        if (!PrefZone.n0 || (mySizeFrame = imageViewPageEffect.J) == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.20
            @Override // java.lang.Runnable
            public final void run() {
                boolean z5 = PrefZone.n0;
                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                if (z5) {
                    ImageViewPageEffect.N(imageViewPageEffect2);
                    return;
                }
                ImageTransView imageTransView = imageViewPageEffect2.T0;
                if (imageTransView != null) {
                    imageTransView.e();
                    imageViewPageEffect2.T0 = null;
                }
            }
        });
    }

    public static void S(ImageViewPageEffect imageViewPageEffect, int i, String str) {
        int i2;
        MainItem.ViewItem viewItem;
        Compress compress = imageViewPageEffect.E;
        if (compress != null) {
            compress.T(i, str);
        }
        CurlView curlView = imageViewPageEffect.K;
        if (curlView != null) {
            try {
                List<CurlMesh> pageList = curlView.getPageList();
                if (pageList != null) {
                    i2 = pageList.size();
                } else {
                    i2 = 0;
                }
                for (int i3 = 0; i3 < i2; i3++) {
                    CurlMesh curlMesh = pageList.get(i3);
                    if (curlMesh != null && (viewItem = curlMesh.C) != null && i == viewItem.f) {
                        imageViewPageEffect.V0(viewItem);
                        ImageViewControl imageViewControl = imageViewPageEffect.V;
                        if (imageViewControl != null) {
                            imageViewControl.setPathChanged(i);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception unused) {
            }
            ImageViewControl imageViewControl2 = imageViewPageEffect.V;
            if (imageViewControl2 != null) {
                imageViewControl2.setPathChanged(i);
            }
            imageViewPageEffect.c0(i);
        }
    }

    public static void T(ImageViewPageEffect imageViewPageEffect) {
        ImageViewControl imageViewControl = imageViewPageEffect.V;
        if (imageViewControl != null) {
            String title = imageViewPageEffect.u;
            if (imageViewPageEffect.v == 2) {
                ImageViewActivity imageViewActivity = imageViewPageEffect.f16018c;
                if (imageViewActivity != null) {
                    Intent intent = imageViewActivity.getIntent();
                    if (intent != null) {
                        String extraName = intent.getStringExtra("EXTRA_NAME");
                        if (!TextUtils.isEmpty(extraName)) {
                            title = extraName;
                        }
                    }
                }
                title = PdfPreviewToolbar.formatHeaderTitle(imageViewControl, title,
                        imageViewPageEffect.w);
                imageViewPageEffect.u = title;
            }
            imageViewControl.setTitle(title);
            imageViewPageEffect.V.t(imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
            Compress compress = imageViewPageEffect.E;
            if (compress != null) {
                boolean u = imageViewPageEffect.E.u(compress.n(imageViewPageEffect.y));
                ImageTransView imageTransView = imageViewPageEffect.T0;
                if (imageTransView != null) {
                    imageTransView.setIconTrans(u);
                }
                imageViewPageEffect.V.y(u);
            }
            if (imageViewPageEffect.W > -1 && imageViewPageEffect.X > -1) {
                int width = imageViewPageEffect.K.getWidth();
                int height = imageViewPageEffect.K.getHeight();
                int i = imageViewPageEffect.z;
                if ((i == 3 || i == 4) && MainUtil.H5(imageViewPageEffect.f16018c)) {
                    imageViewPageEffect.V.n(!MainUtil.E5(imageViewPageEffect.f16018c), width, height, imageViewPageEffect.W / 2, imageViewPageEffect.X);
                } else {
                    imageViewPageEffect.V.n(!MainUtil.E5(imageViewPageEffect.f16018c), width, height, imageViewPageEffect.W, imageViewPageEffect.X);
                }
                imageViewPageEffect.V.w();
            }
        }
    }

    public static void U(ImageViewPageEffect imageViewPageEffect, String str, String str2, boolean z) {
        Compress compress = imageViewPageEffect.E;
        if (compress != null) {
            compress.Q(str, str2, z);
            imageViewPageEffect.o1 = z;
            MySizeFrame mySizeFrame = imageViewPageEffect.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.64
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                    boolean z2 = imageViewPageEffect2.o1;
                    MyCoverView myCoverView = imageViewPageEffect2.T;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    WebTransOcrCtrl webTransOcrCtrl = imageViewPageEffect2.S0;
                    if (webTransOcrCtrl != null) {
                        webTransOcrCtrl.h(PrefAlbum.y, z2);
                    }
                    MySizeFrame mySizeFrame2 = imageViewPageEffect2.J;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.64.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageEffect.this.Y0();
                        }
                    });
                }
            });
        }
    }

    public static void V(ImageViewPageEffect imageViewPageEffect, final MainItem.ViewItem viewItem) {
        MySizeFrame mySizeFrame;
        if (imageViewPageEffect.n && viewItem != null && imageViewPageEffect.E != null) {
            imageViewPageEffect.d0(viewItem);
            if (imageViewPageEffect.o.size() != imageViewPageEffect.x) {
                ArrayList arrayList = imageViewPageEffect.j0;
                if ((arrayList == null || arrayList.isEmpty()) && (mySizeFrame = imageViewPageEffect.J) != null) {
                    mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.26
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainItem.ViewItem viewItem2;
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            if (imageViewPageEffect2.n && (viewItem2 = viewItem) != null && imageViewPageEffect2.E != null) {
                                int i = viewItem2.f + 1;
                                ArrayList arrayList2 = imageViewPageEffect2.o;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    if (imageViewPageEffect2.x != 0 && imageViewPageEffect2.E != null) {
                                        synchronized (imageViewPageEffect2.f16017a) {
                                            int i2 = 0;
                                            while (true) {
                                                try {
                                                    try {
                                                        int i3 = imageViewPageEffect2.x;
                                                        if (i2 >= i3) {
                                                            break;
                                                        }
                                                        int i4 = (i + i2) % i3;
                                                        String n = imageViewPageEffect2.E.n(i4);
                                                        if (!TextUtils.isEmpty(n) && !imageViewPageEffect2.o.contains(n)) {
                                                            i = i4;
                                                            break;
                                                        }
                                                        i2++;
                                                    } catch (Exception unused) {
                                                    }
                                                } finally {
                                                }
                                            }
                                        }
                                    }
                                    i = -1;
                                }
                                if (i != -1) {
                                    ImageViewPageEffect.this.c0(i);
                                }
                            }
                        }
                    }, 200L);
                }
            }
        }
    }

    public static void W(ImageViewPageEffect imageViewPageEffect) {
        if (imageViewPageEffect.f16018c == null || imageViewPageEffect.Y0 != null) {
            return;
        }
        imageViewPageEffect.w0();
        imageViewPageEffect.N0 = true;
        MainApp.K1 = true;
        StringBuilder sb = new StringBuilder();
        a.x(imageViewPageEffect.b, R.string.ocr_trans_reload_1, sb, "\n");
        sb.append(imageViewPageEffect.b.getString(R.string.ocr_trans_reload_2));
        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageEffect.f16018c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.73
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                if (z) {
                    PrefAlbum.F = false;
                    PrefSet.d(0, imageViewPageEffect2.b, "mOcrReload", false);
                }
                imageViewPageEffect2.w0();
            }
        });
        imageViewPageEffect.Y0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.74
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                imageViewPageEffect2.w0();
                imageViewPageEffect2.N0();
                imageViewPageEffect2.q0(true);
                ImageViewPageEffect.b0(imageViewPageEffect2, true);
            }
        });
    }

    public static void X(ImageViewPageEffect imageViewPageEffect) {
        if (imageViewPageEffect.f16018c == null || imageViewPageEffect.Z0 != null) {
            return;
        }
        imageViewPageEffect.D0();
        imageViewPageEffect.N0 = true;
        MainApp.K1 = true;
        DialogSeekSimple dialogSeekSimple = new DialogSeekSimple(imageViewPageEffect.f16018c, 2, PrefAlbum.B, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.75
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                if (PrefAlbum.B == i) {
                    return;
                }
                PrefAlbum.B = i;
                PrefSet.f(ImageViewPageEffect.this.b, 0, i, "mOcrZoom");
            }
        });
        imageViewPageEffect.Z0 = dialogSeekSimple;
        dialogSeekSimple.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.76
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect.this.D0();
            }
        });
    }

    public static void Y(ImageViewPageEffect imageViewPageEffect, String str, String str2, String str3) {
        if (imageViewPageEffect.f16018c == null || imageViewPageEffect.U0()) {
            return;
        }
        imageViewPageEffect.E0();
        imageViewPageEffect.q0(true);
        imageViewPageEffect.N0 = true;
        MainApp.K1 = true;
        imageViewPageEffect.j1 = str;
        imageViewPageEffect.k1 = str2;
        imageViewPageEffect.l1 = str3;
        DialogSetDown dialogSetDown = new DialogSetDown(imageViewPageEffect.f16018c, str, str3, imageViewPageEffect.Q0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.52
            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
            public final void a(String str4, String str5, String str6) {
                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                String str7 = imageViewPageEffect2.j1;
                String str8 = imageViewPageEffect2.k1;
                String str9 = imageViewPageEffect2.l1;
                imageViewPageEffect2.j1 = null;
                imageViewPageEffect2.k1 = null;
                imageViewPageEffect2.l1 = null;
                MainUtil.G4(imageViewPageEffect2.f16018c, str5, str6, str7, imageViewPageEffect2.m, str8, str9);
            }
        });
        imageViewPageEffect.v0 = dialogSetDown;
        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.53
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect.this.E0();
            }
        });
    }

    public static void Z(ImageViewPageEffect imageViewPageEffect, View view) {
        boolean z;
        boolean z2;
        if (imageViewPageEffect.f16018c != null && imageViewPageEffect.c1 == null) {
            imageViewPageEffect.J0();
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewPageEffect.f16018c, imageViewPageEffect.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.80
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageEffect.this.J0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefAlbum.C != i4) {
                            PrefAlbum.C = i4;
                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            PrefSet.f(imageViewPageEffect2.b, 0, i4, "mOcrBack");
                            OcrDetector ocrDetector = imageViewPageEffect2.d1;
                            if (ocrDetector != null) {
                                ocrDetector.J();
                            }
                        }
                        return true;
                    }
                });
                imageViewPageEffect.c1 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewPageEffect.f16018c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void a0(ImageViewPageEffect imageViewPageEffect, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (imageViewPageEffect.f16018c != null && imageViewPageEffect.b1 == null) {
            imageViewPageEffect.K0();
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewPageEffect.f16018c, imageViewPageEffect.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.79
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageEffect.this.K0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i2) {
                        if (PrefAlbum.A != i2) {
                            PrefAlbum.A = i2;
                            final ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                            PrefSet.f(imageViewPageEffect2.b, 0, i2, "mOcrLang");
                            WebTransOcrCtrl webTransOcrCtrl = imageViewPageEffect2.S0;
                            if (webTransOcrCtrl != null) {
                                webTransOcrCtrl.g();
                            }
                            ImageTransView imageTransView = imageViewPageEffect2.T0;
                            if (imageTransView != null) {
                                imageTransView.o();
                            }
                            if (PrefAlbum.E && PrefAlbum.A == 5 && imageViewPageEffect2.f16018c != null && imageViewPageEffect2.X0 == null) {
                                imageViewPageEffect2.u0();
                                imageViewPageEffect2.N0 = true;
                                MainApp.K1 = true;
                                StringBuilder sb = new StringBuilder();
                                a.x(imageViewPageEffect2.b, R.string.fast_down_guide, sb, "\n");
                                sb.append(imageViewPageEffect2.b.getString(R.string.dark_mode_info_2));
                                DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageEffect2.f16018c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.71
                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                    public final void a(boolean z7) {
                                        ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                        if (z7) {
                                            PrefAlbum.E = false;
                                            PrefSet.d(0, imageViewPageEffect3.b, "mOcrAuto", false);
                                        }
                                        imageViewPageEffect3.u0();
                                    }
                                });
                                imageViewPageEffect2.X0 = dialogConfirm;
                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.72
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        ImageViewPageEffect.this.u0();
                                    }
                                });
                            }
                        }
                        return true;
                    }
                });
                imageViewPageEffect.b1 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewPageEffect.f16018c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void b0(ImageViewPageEffect imageViewPageEffect, boolean z) {
        if (imageViewPageEffect.f16018c == null) {
            return;
        }
        MyCoverView myCoverView = imageViewPageEffect.T;
        if (myCoverView != null) {
            myCoverView.m(true);
        }
        imageViewPageEffect.p1 = z;
        imageViewPageEffect.f16018c.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.81
            @Override // java.lang.Runnable
            public final void run() {
                Bitmap bitmap;
                ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                boolean z2 = imageViewPageEffect2.p1;
                Compress compress = imageViewPageEffect2.E;
                if (compress != null) {
                    String n = compress.n(imageViewPageEffect2.y);
                    Compress compress2 = imageViewPageEffect2.E;
                    if (compress2 == null) {
                        bitmap = null;
                    } else {
                        String n2 = compress2.n(imageViewPageEffect2.y);
                        String r = imageViewPageEffect2.E.r(n2);
                        boolean isEmpty = TextUtils.isEmpty(r);
                        if (!isEmpty) {
                            imageViewPageEffect2.E.Q(n2, r, false);
                        }
                        Bitmap m0 = imageViewPageEffect2.m0();
                        if (!isEmpty) {
                            imageViewPageEffect2.E.Q(n2, r, true);
                        }
                        bitmap = m0;
                    }
                    String D = OcrDetector.D(n);
                    if (!z2 && MainUtil.f6(Compress.q(D))) {
                        ImageViewPageEffect.U(imageViewPageEffect2, n, D, true);
                        return;
                    }
                    imageViewPageEffect2.q1 = n;
                    imageViewPageEffect2.r1 = bitmap;
                    imageViewPageEffect2.s1 = D;
                    MySizeFrame mySizeFrame = imageViewPageEffect2.J;
                    if (mySizeFrame == null) {
                        return;
                    }
                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.81.1
                        /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                            String str = imageViewPageEffect3.q1;
                            Bitmap bitmap2 = imageViewPageEffect3.r1;
                            String str2 = imageViewPageEffect3.s1;
                            imageViewPageEffect3.q1 = null;
                            imageViewPageEffect3.r1 = null;
                            imageViewPageEffect3.s1 = null;
                            if (imageViewPageEffect3.f16018c != null) {
                                if (!MainUtil.f6(bitmap2)) {
                                    MyCoverView myCoverView2 = imageViewPageEffect3.T;
                                    if (myCoverView2 != null) {
                                        myCoverView2.f(true);
                                        return;
                                    }
                                    return;
                                }
                                OcrDetector ocrDetector = imageViewPageEffect3.d1;
                                if (ocrDetector != null) {
                                    ocrDetector.M(str, str2, bitmap2);
                                    return;
                                }
                                ?? obj = new Object();
                                imageViewPageEffect3.d1 = obj;
                                ImageViewActivity imageViewActivity = imageViewPageEffect3.f16018c;
                                MySizeFrame mySizeFrame2 = imageViewPageEffect3.J;
                                OcrDetector.OcrListener ocrListener = new OcrDetector.OcrListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.84
                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void b(boolean z3) {
                                        ImageViewPageEffect imageViewPageEffect4 = ImageViewPageEffect.this;
                                        if (z3) {
                                            MyCoverView myCoverView3 = imageViewPageEffect4.T;
                                            if (myCoverView3 != null) {
                                                myCoverView3.m(true);
                                                return;
                                            }
                                            return;
                                        }
                                        MyCoverView myCoverView4 = imageViewPageEffect4.T;
                                        if (myCoverView4 != null) {
                                            myCoverView4.f(true);
                                        }
                                    }

                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void c(int i, String str3, String str4) {
                                        final ImageViewPageEffect imageViewPageEffect4 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect4.b != null) {
                                            MyCoverView myCoverView3 = imageViewPageEffect4.T;
                                            if (myCoverView3 != null) {
                                                myCoverView3.f(true);
                                            }
                                            if (i != 2) {
                                                if (i == 0) {
                                                    ImageViewPageEffect.U(imageViewPageEffect4, str3, str4, true);
                                                    return;
                                                }
                                                if (i == 1) {
                                                    if (PrefAlbum.D && PrefAlbum.A != 5) {
                                                        if (imageViewPageEffect4.f16018c == null || imageViewPageEffect4.W0 != null) {
                                                            return;
                                                        }
                                                        imageViewPageEffect4.v0();
                                                        imageViewPageEffect4.N0 = true;
                                                        MainApp.K1 = true;
                                                        StringBuilder sb = new StringBuilder();
                                                        a.x(imageViewPageEffect4.b, R.string.ocr_fail, sb, "\n\n");
                                                        a.x(imageViewPageEffect4.b, R.string.ocr_guide_2, sb, "\n");
                                                        sb.append(imageViewPageEffect4.b.getString(R.string.ocr_guide_3));
                                                        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageEffect4.f16018c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.69
                                                            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                                            public final void a(boolean z3) {
                                                                ImageViewPageEffect imageViewPageEffect5 = ImageViewPageEffect.this;
                                                                if (z3) {
                                                                    PrefAlbum.D = false;
                                                                    PrefSet.d(0, imageViewPageEffect5.b, "mOcrNoti", false);
                                                                }
                                                                imageViewPageEffect5.v0();
                                                            }
                                                        });
                                                        imageViewPageEffect4.W0 = dialogConfirm;
                                                        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.70
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                ImageViewPageEffect.this.v0();
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    MainUtil.e8(imageViewPageEffect4.b, R.string.ocr_fail);
                                                    return;
                                                }
                                                MainUtil.e8(imageViewPageEffect4.b, R.string.fail);
                                            }
                                        }
                                    }
                                };
                                obj.m = imageViewActivity;
                                obj.n = mySizeFrame2;
                                obj.o = ocrListener;
                                obj.J();
                                imageViewPageEffect3.d1.M(str, str2, bitmap2);
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
        if (this.E != null && this.K != null && (imageCoverView = this.U) != null && !imageCoverView.d()) {
            int i2 = this.x;
            if (i2 == 0) {
                if (R0()) {
                    c1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                return;
            }
            if (PrefImage.s) {
                if (this.y == 0 && R0()) {
                    c1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                } else {
                    int i3 = this.y;
                    int i4 = this.x;
                    i = android.support.v4.media.a.B(i3, i4, 1, i4);
                }
            } else {
                if (this.y == i2 - 1 && R0()) {
                    c1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                i = (this.y + 1) % this.x;
            }
            h(i);
        }
    }

    public final void A0() {
        DialogListBook dialogListBook = this.s0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.s0 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void B() {
        if (this.V == null || this.f16018c == null || U0()) {
            return;
        }
        z0();
        q0(true);
        this.N0 = true;
        MainApp.K1 = true;
        DataUrl.ImgCntItem imgCntItem = DataUrl.b(this.b).f12902c;
        this.o0 = false;
        DialogImageType dialogImageType = new DialogImageType(this.f16018c, imgCntItem, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.37
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.o0 = true;
                imageViewPageEffect.j0(true);
            }
        });
        this.p0 = dialogImageType;
        dialogImageType.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.38
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.z0();
                if (imageViewPageEffect.o0) {
                    imageViewPageEffect.o0 = false;
                } else {
                    imageViewPageEffect.l1(true);
                }
            }
        });
    }

    public final void B0() {
        DialogPreview dialogPreview = this.w0;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.w0 = null;
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void C(RectF rectF, boolean z) {
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.j(rectF);
        }
    }

    public final void C0() {
        DialogSeekBright dialogSeekBright = this.q0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.q0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void D(MotionEvent motionEvent, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        int i2;
        CurlView curlView;
        CurlView curlView2;
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
                this.H0 = false;
                this.I0 = false;
                this.J0 = false;
                this.K0 = false;
            }
            if (!z && !this.E0 && (curlView2 = this.K) != null) {
                curlView2.dispatchTouchEvent(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3 || actionMasked == 5) {
                        this.H0 = false;
                        this.I0 = false;
                        this.J0 = false;
                        this.K0 = false;
                    }
                } else if ((this.H0 || this.I0 || z) && !this.J0) {
                    if (MainUtil.I0(this.F0, motionEvent.getX(), this.G0, motionEvent.getY()) > MainApp.r1) {
                        z4 = true;
                    }
                    this.J0 = z4;
                }
            } else {
                this.K0 = false;
                if (!this.J0 && !T0()) {
                    if (!this.H0 && !this.I0) {
                        if (z) {
                            p1();
                        }
                    } else if (z) {
                        k();
                    }
                } else {
                    this.H0 = false;
                    this.I0 = false;
                    this.J0 = false;
                }
            }
        } else {
            this.F0 = motionEvent.getX();
            this.G0 = motionEvent.getY();
            this.H0 = false;
            this.I0 = false;
            this.J0 = false;
            this.K0 = false;
            if (Q0()) {
                i = PrefImage.H;
                i2 = PrefImage.I;
            } else {
                i = PrefImage.F;
                i2 = PrefImage.G;
            }
            float f = this.F0;
            if (f < i) {
                if (PrefImage.D == 0) {
                    z4 = true;
                }
                this.H0 = z4;
            } else if (f > this.J.getWidth() - i2) {
                if (PrefImage.E == 0) {
                    z4 = true;
                }
                this.I0 = z4;
            }
        }
        if (!z && !this.E0 && (curlView = this.K) != null) {
            curlView.dispatchTouchEvent(motionEvent);
        }
    }

    public final void D0() {
        DialogSeekSimple dialogSeekSimple = this.Z0;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.Z0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void E() {
        if (R0()) {
            c1(this.x, this.y, this.z, 2, this.w, false, true);
            return;
        }
        int i = 0;
        if (PrefImage.s) {
            int i2 = this.y;
            int i3 = this.x - 1;
            if (i2 != i3) {
                i = i3;
            }
            h(i);
            return;
        }
        if (this.y == 0) {
            i = this.x - 1;
        }
        h(i);
    }

    public final void E0() {
        DialogSetDown dialogSetDown = this.v0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.v0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
        this.j1 = null;
        this.k1 = null;
        this.l1 = null;
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void F(Configuration configuration) {
        if (!this.f0) {
            h0(true);
            DialogListBook dialogListBook = this.s0;
            if (dialogListBook != null) {
                dialogListBook.q(configuration);
            }
            DialogCapture dialogCapture = this.t0;
            if (dialogCapture != null) {
                dialogCapture.q(Q0());
            }
            DialogDownUrl dialogDownUrl = this.u0;
            if (dialogDownUrl != null) {
                dialogDownUrl.S(Q0());
            }
            DialogPreview dialogPreview = this.w0;
            if (dialogPreview != null) {
                dialogPreview.D(Q0());
            }
            if (O0()) {
                j1();
            }
        }
    }

    public final void F0() {
        DialogSetImage dialogSetImage = this.x0;
        if (dialogSetImage != null) {
            dialogSetImage.dismiss();
            this.x0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void G() {
        ImageViewActivity imageViewActivity;
        this.j = true;
        EventHandler eventHandler = this.B;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.B = null;
        }
        Compress compress = this.E;
        this.E = null;
        if (compress != null) {
            try {
                if (!this.C0 && this.v == 12) {
                    compress.a();
                }
            } catch (Exception unused) {
            }
        }
        MyCoverView myCoverView = this.M;
        if (myCoverView != null) {
            myCoverView.i();
            this.M = null;
        }
        MyImageView myImageView = this.O;
        if (myImageView != null) {
            myImageView.d();
            this.O = null;
        }
        MyButtonImage myButtonImage = this.Q;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.Q = null;
        }
        MyCoverView myCoverView2 = this.T;
        if (myCoverView2 != null) {
            myCoverView2.i();
            this.T = null;
        }
        ImageCoverView imageCoverView = this.U;
        if (imageCoverView != null) {
            ValueAnimator valueAnimator = imageCoverView.l;
            imageCoverView.l = null;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            imageCoverView.g = null;
            imageCoverView.h = null;
            imageCoverView.k = null;
            this.U = null;
        }
        MyFadeLinear myFadeLinear = this.Y;
        if (myFadeLinear != null) {
            myFadeLinear.f();
            this.Y = null;
        }
        MyFadeFrame myFadeFrame = this.M0;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.M0 = null;
        }
        MainUtil.R6(this.O0);
        this.O0 = null;
        this.b = null;
        this.d = null;
        this.o = null;
        this.u = null;
        this.J = null;
        this.K = null;
        this.N = null;
        this.Z = null;
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.L0 = null;
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.g();
            this.V = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.l0;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.l0 = null;
        }
        ImageViewActivity.SavedItem savedItem = this.g;
        if (savedItem != null && (imageViewActivity = this.f16018c) != null) {
            imageViewActivity.v0(savedItem);
        }
        this.f16018c = null;
        this.g = null;
    }

    public final void G0() {
        DialogSetImgTrans dialogSetImgTrans = this.a1;
        if (dialogSetImgTrans != null) {
            dialogSetImgTrans.dismiss();
            this.a1 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean H(int i) {
        i1(true);
        if (PrefImage.o) {
            if (i != 24) {
                if (i != 25) {
                    return false;
                }
                if (!this.D0 && !P0() && !T0() && this.R == null) {
                    if (this.f) {
                        a1();
                        return true;
                    }
                    g1();
                    return true;
                }
            } else if (!this.D0 && !P0() && !T0() && this.R == null) {
                if (this.f) {
                    g1();
                    return true;
                }
                a1();
            }
            return true;
        }
        return false;
    }

    public final void H0() {
        DialogTransLang dialogTransLang = this.U0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.U0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void I(boolean z) {
        if (z) {
            this.j = true;
        }
        this.i = true;
        if (this.N0) {
            MainUtil.K7(this.f16018c, false);
        } else {
            DialogCapture dialogCapture = this.t0;
            if (dialogCapture != null && dialogCapture.U) {
                MainUtil.K7(this.f16018c, false);
            }
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.A();
        }
        DialogListBook dialogListBook = this.s0;
        if (dialogListBook != null) {
            dialogListBook.r(z);
        }
        DialogPreview dialogPreview = this.w0;
        if (dialogPreview != null) {
            dialogPreview.E();
        }
        M0();
        L0();
        X0();
        q0(true);
        e1();
        i1(false);
        g0(true);
        ListTask listTask = this.d0;
        if (listTask != null) {
            listTask.a();
            this.d0 = null;
        }
        if (!this.e0) {
            LoadTask loadTask = this.g0;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.g0 = null;
        }
        int i = this.v;
        if (i == 1) {
            String str = this.w;
            PrefPath.j = str;
            PrefSet.c(6, this.b, "mAlbumPath", str);
            DbAlbum.e(this.b, this.w, this.x, this.y, this.z);
        } else if (i == 2) {
            String str2 = this.w;
            PrefPath.l = str2;
            PrefSet.c(6, this.b, "mPdfPath", str2);
            DbPdf.f(this.b, this.w, this.x, this.y, this.z);
        } else if (i == 3) {
            String str3 = this.w;
            PrefPath.k = str3;
            PrefSet.c(6, this.b, "mCmpPath", str3);
            DbCmp.f(this.b, this.w, this.x, this.y, this.z);
        }
        if (z) {
            r0();
            BookTask bookTask = this.h0;
            if (bookTask != null) {
                bookTask.f12839c = true;
            }
            this.h0 = null;
            f0();
            W0();
            OcrDetector ocrDetector = this.d1;
            if (ocrDetector != null) {
                ocrDetector.E();
                this.d1 = null;
            }
            MainApp.T1 = null;
        }
    }

    public final void I0(boolean z) {
        MyFadeLinear myFadeLinear = this.Y;
        if (myFadeLinear != null) {
            myFadeLinear.d(true, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00db, code lost:
    
        if (r7.t != (-1)) goto L60;
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.J():void");
    }

    public final void J0() {
        MyPopupMenu myPopupMenu = this.c1;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16018c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.c1 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void K() {
        MySizeFrame mySizeFrame = this.J;
        if (mySizeFrame == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.31
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                if (imageViewPageEffect.J == null) {
                    return;
                }
                DialogCapture dialogCapture = imageViewPageEffect.t0;
                if (dialogCapture != null) {
                    dialogCapture.r();
                } else {
                    imageViewPageEffect.j1();
                }
            }
        });
    }

    public final void K0() {
        MyPopupMenu myPopupMenu = this.b1;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16018c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.b1 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean L() {
        if (this.S0 != null) {
            N0();
            return true;
        }
        ImageGifView imageGifView = this.R;
        if (imageGifView != null) {
            imageGifView.d(true);
            return true;
        }
        return false;
    }

    public final void L0() {
        MyPopupMenu myPopupMenu = this.z0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16018c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.z0 = null;
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void M(int i) {
        this.e = i;
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl == null) {
            return;
        }
        imageViewControl.setNaviHeight(i);
        this.V.v();
    }

    public final void M0() {
        MyPopupMenu myPopupMenu = this.y0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16018c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.y0 = null;
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    public final void N0() {
        WebTransOcrCtrl webTransOcrCtrl = this.S0;
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.i(false);
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    public final boolean O0() {
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl == null) {
            return false;
        }
        return imageViewControl.f();
    }

    public final boolean P0() {
        MyCoverView myCoverView = this.T;
        if (myCoverView != null && myCoverView.h()) {
            return true;
        }
        return false;
    }

    public final boolean Q0() {
        ImageViewActivity imageViewActivity = this.f16018c;
        if (imageViewActivity == null) {
            return MainUtil.N5(this.b);
        }
        return imageViewActivity.h0();
    }

    public final boolean R0() {
        Compress compress = this.E;
        if (compress != null && this.v != 12 && !this.k && compress.i() > 1) {
            return true;
        }
        return false;
    }

    public final boolean S0() {
        MyImageView myImageView = this.O;
        if (myImageView == null || myImageView.getVisibility() == 0) {
            return false;
        }
        return true;
    }

    public final boolean T0() {
        if (this.L != 0) {
            return true;
        }
        return false;
    }

    public final boolean U0() {
        if (this.G != null || this.p0 != null || this.q0 != null || this.r0 != null || this.s0 != null || this.t0 != null || this.u0 != null || this.v0 != null || this.w0 != null || this.x0 != null || this.U0 != null || this.V0 != null || this.W0 != null || this.X0 != null || this.Y0 != null || this.Z0 != null || this.a1 != null) {
            return true;
        }
        OcrDetector ocrDetector = this.d1;
        if (ocrDetector != null && ocrDetector.P != null) {
            return true;
        }
        return false;
    }

    public final void V0(MainItem.ViewItem viewItem) {
        if (this.E != null && viewItem != null && viewItem.f16555c != null) {
            if (TextUtils.isEmpty(viewItem.v) || viewItem.v.equals(this.w)) {
                if (!viewItem.m && !viewItem.j && !viewItem.l) {
                    viewItem.f16555c.f(null, null);
                    this.K.requestRender();
                    if (this.p == 0 || URLUtil.isNetworkUrl(this.E.n(viewItem.f))) {
                        ImageLoader.f().i(viewItem, this.c0, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.23
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                                WebLoadWrap webLoadWrap;
                                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                                if (imageViewPageEffect.p == 0) {
                                    if (imageViewPageEffect.v == 12 && imageViewPageEffect.E != null && viewItem2 != null && failReason != null) {
                                        String a3 = MainUtil.a3(viewItem2.q);
                                        if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                            imageViewPageEffect.E.U(viewItem2.f, viewItem2.q, a3);
                                            viewItem2.q = a3;
                                            imageViewPageEffect.V0(viewItem2);
                                            return;
                                        } else {
                                            FailReason.FailType failType = failReason.f20985a;
                                            if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                                imageViewPageEffect.E.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                            }
                                        }
                                    }
                                } else if (viewItem2 != null && (webLoadWrap = imageViewPageEffect.q) != null) {
                                    webLoadWrap.c(viewItem2.f);
                                }
                                MyCoverView myCoverView = imageViewPageEffect.T;
                                if (myCoverView != null) {
                                    myCoverView.f(true);
                                }
                                imageViewPageEffect.i0(viewItem2, null);
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                                MyCoverView myCoverView = imageViewPageEffect.T;
                                if (myCoverView != null) {
                                    myCoverView.f(true);
                                }
                                imageViewPageEffect.i0(viewItem2, bitmap);
                                imageViewPageEffect.d0(viewItem2);
                            }
                        });
                        return;
                    }
                    return;
                }
                i0(viewItem, null);
            }
        }
    }

    public final void W0() {
        WebLoadWrap webLoadWrap = this.q;
        if (webLoadWrap != null) {
            webLoadWrap.b();
            this.q = null;
        }
        WebLoadWrap webLoadWrap2 = this.r;
        if (webLoadWrap2 != null) {
            webLoadWrap2.b();
            this.r = null;
        }
    }

    public final void X0() {
        H0();
        x0();
        v0();
        u0();
        w0();
        D0();
        G0();
        K0();
        J0();
        FrameLayout frameLayout = this.R0;
        WebTransOcrCtrl webTransOcrCtrl = this.S0;
        this.R0 = null;
        this.S0 = null;
        if (frameLayout != null) {
            try {
                MySizeFrame mySizeFrame = this.J;
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

    public final void Y0() {
        if (this.K == null) {
            return;
        }
        this.V.z(true);
        this.k0 = 50000;
        CurlView curlView = this.K;
        curlView.m = Math.min(50000, curlView.l);
        curlView.d();
    }

    public final void Z0() {
        Compress compress;
        if (this.Q == null) {
            return;
        }
        boolean z = false;
        if (this.v == 12 && !T0() && (compress = this.E) != null && this.x != 0) {
            String n = compress.n(this.y);
            if ("gif".equals(MainUtil.W3(n, MainUtil.Y5(n))) && !S0()) {
                z = true;
            }
        }
        this.Q.r(z, true);
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean a() {
        ZoomImageAttacher zoomImageAttacher;
        if (this.V != null && (zoomImageAttacher = this.l0) != null && zoomImageAttacher.l) {
            return true;
        }
        return false;
    }

    public final void a1() {
        ImageCoverView imageCoverView;
        if (this.E != null && this.K != null && !P0() && (imageCoverView = this.U) != null && !imageCoverView.d()) {
            this.K0 = true;
            int i = this.y;
            int i2 = this.z;
            this.A = 0;
            if (this.x == 0) {
                if (R0()) {
                    c1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                return;
            }
            if (!MainUtil.H5(this.f16018c)) {
                if (this.f) {
                    if (this.y == this.x - 1 && R0()) {
                        c1(this.x, this.y, this.z, 2, this.w, false, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                } else if (this.y == 0 && R0()) {
                    c1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                } else {
                    int i3 = this.y;
                    int i4 = this.x;
                    this.y = android.support.v4.media.a.B(i3, i4, 1, i4);
                }
            } else if (this.z == 4) {
                this.z = 3;
            } else {
                if (this.f) {
                    if (this.y == this.x - 1 && R0()) {
                        c1(this.x, this.y, this.z, 2, this.w, false, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                } else if (this.y == 0 && R0()) {
                    c1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                } else {
                    int i5 = this.y;
                    int i6 = this.x;
                    this.y = android.support.v4.media.a.B(i5, i6, 1, i6);
                }
                CompressCache.BitmapInfo g = this.E.g(this.y);
                if (g != null) {
                    if (g.f12872a > g.b) {
                        this.z = 4;
                    } else {
                        this.z = 2;
                    }
                } else {
                    this.z = 0;
                    this.A = 4;
                }
            }
            if (i != this.y || i2 != this.z) {
                this.U.b(o0(), this.N, false);
                this.V.t(this.x, this.y, this.z);
                Y0();
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void b(boolean z) {
        if (z) {
            if (O0()) {
                j1();
            }
        } else if (!U0()) {
            j1();
        }
    }

    public final void b1() {
        if (this.b == null) {
            return;
        }
        if (this.P == 1) {
            m1();
        } else {
            o1(false);
        }
        j0(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f8, code lost:
    
        if (T0() != false) goto L92;
     */
    @Override // com.mycompany.app.image.ImageViewWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.c(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void c0(int i) {
        int i2;
        boolean z;
        MainItem.ViewItem viewItem;
        Compress compress = this.E;
        if (compress != null && this.K != null) {
            if (this.p == 0 || URLUtil.isNetworkUrl(compress.n(i))) {
                boolean z2 = true;
                if (R0()) {
                    if (i < 0 || i >= this.x) {
                        return;
                    }
                } else if (i < 0) {
                    i = this.x - 1;
                } else if (i >= this.x) {
                    i = 0;
                }
                try {
                    List<CurlMesh> pageList = this.K.getPageList();
                    if (pageList != null) {
                        i2 = pageList.size();
                    } else {
                        i2 = 0;
                    }
                    for (int i3 = 0; i3 < i2; i3++) {
                        CurlMesh curlMesh = pageList.get(i3);
                        if (curlMesh != null && (viewItem = curlMesh.C) != null && i == viewItem.f) {
                            return;
                        }
                    }
                    ArrayList arrayList = this.j0;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        synchronized (this.f16017a) {
                            try {
                                ArrayList arrayList2 = new ArrayList(this.j0);
                                int size = arrayList2.size();
                                int i4 = 0;
                                while (i4 < size) {
                                    Object obj = arrayList2.get(i4);
                                    i4++;
                                    ImageView imageView = (ImageView) obj;
                                    if (imageView != null && i == ((Integer) imageView.getTag()).intValue()) {
                                        return;
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    ?? obj2 = new Object();
                    obj2.f16554a = 8;
                    obj2.b = compress;
                    obj2.r = this.m;
                    obj2.f = i;
                    ImageViewActivity imageViewActivity = this.f16018c;
                    boolean Q0 = Q0();
                    if (this.v == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    obj2.t = MainUtil.l0(imageViewActivity, Q0, z);
                    if (this.v != 12) {
                        z2 = false;
                    }
                    obj2.u = z2;
                    if (this.f16018c != null) {
                        ImageView imageView2 = new ImageView(this.f16018c);
                        imageView2.setTag(Integer.valueOf(i));
                        if (this.j0 == null) {
                            this.j0 = new ArrayList();
                        }
                        this.j0.add(imageView2);
                        ImageLoader.f().c(obj2, imageView2, this.c0, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.25
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                                WebLoadWrap webLoadWrap;
                                ArrayList arrayList3;
                                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                                if (view != null && (arrayList3 = imageViewPageEffect.j0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageViewPageEffect.V(imageViewPageEffect, viewItem2);
                                if (imageViewPageEffect.p == 0) {
                                    if (imageViewPageEffect.v == 12 && imageViewPageEffect.E != null && viewItem2 != null && failReason != null) {
                                        String a3 = MainUtil.a3(viewItem2.q);
                                        if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                            imageViewPageEffect.E.U(viewItem2.f, viewItem2.q, a3);
                                            return;
                                        }
                                        FailReason.FailType failType = failReason.f20985a;
                                        if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                            imageViewPageEffect.E.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (viewItem2 != null && (webLoadWrap = imageViewPageEffect.q) != null) {
                                    webLoadWrap.c(viewItem2.f);
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void b(View view) {
                                ArrayList arrayList3;
                                if (view != null && (arrayList3 = ImageViewPageEffect.this.j0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                                int i5;
                                MainItem.ViewItem viewItem3;
                                ArrayList arrayList3;
                                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                                if (view != null && (arrayList3 = imageViewPageEffect.j0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageViewPageEffect.V(imageViewPageEffect, viewItem2);
                                try {
                                    CurlView curlView = imageViewPageEffect.K;
                                    if (curlView != null) {
                                        List<CurlMesh> pageList2 = curlView.getPageList();
                                        if (pageList2 != null) {
                                            i5 = pageList2.size();
                                        } else {
                                            i5 = 0;
                                        }
                                        for (int i6 = 0; i6 < i5; i6++) {
                                            CurlMesh curlMesh2 = pageList2.get(i6);
                                            if (curlMesh2 != null && (viewItem3 = curlMesh2.C) != null && viewItem3.e == imageViewPageEffect.k0 && viewItem3.f == imageViewPageEffect.y && viewItem3.g == imageViewPageEffect.z && !viewItem3.m) {
                                                imageViewPageEffect.V0(viewItem3);
                                                return;
                                            }
                                        }
                                    }
                                } catch (Exception unused2) {
                                }
                            }
                        });
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final void c1(int i, int i2, int i3, int i4, String str, boolean z, boolean z2) {
        List l;
        boolean z3;
        String str2;
        int j;
        MainItem.ChildItem childItem;
        if (this.E != null) {
            int i5 = this.v;
            if ((i5 == 1 || i5 == 2 || i5 == 3) && !TextUtils.isEmpty(str) && (l = this.E.l()) != null && l.size() >= 2) {
                if (i4 == 1) {
                    ImageCoverView imageCoverView = this.U;
                    if (imageCoverView != null && !imageCoverView.d()) {
                        this.U.b(o0(), this.N, true);
                    } else {
                        return;
                    }
                } else if (i4 == 2) {
                    ImageCoverView imageCoverView2 = this.U;
                    if (imageCoverView2 != null && !imageCoverView2.d()) {
                        this.U.b(o0(), this.N, false);
                    } else {
                        return;
                    }
                }
                ImageViewControl imageViewControl = this.V;
                if (imageViewControl != null) {
                    imageViewControl.A();
                }
                MyCoverView myCoverView = this.T;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
                int i6 = this.v;
                if (i6 == 1) {
                    DbAlbum.e(this.b, str, i, i2, i3);
                } else if (i6 == 2) {
                    DbPdf.f(this.b, str, i, i2, i3);
                } else if (i6 == 3) {
                    DbCmp.f(this.b, str, i, i2, i3);
                }
                int i7 = this.t;
                if (i7 >= 0 && i7 < l.size()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && (childItem = (MainItem.ChildItem) l.get(this.t)) != null) {
                    str2 = childItem.g;
                } else {
                    str2 = null;
                }
                if (z3 && str.equals(str2)) {
                    j = 0;
                } else {
                    j = this.E.j(str);
                    if (j != -1) {
                        this.t = j;
                    }
                    int i8 = this.t;
                    if (i8 == -1 || i8 >= l.size()) {
                        this.t = 0;
                    }
                }
                if (j != -1) {
                    if (z) {
                        if (this.f) {
                            this.t = ((l.size() + this.t) - 1) % l.size();
                            this.y = -1;
                        } else {
                            this.t = (this.t + 1) % l.size();
                            this.y = 0;
                        }
                    } else if (this.f) {
                        this.t = (this.t + 1) % l.size();
                        this.y = 0;
                    } else {
                        this.t = ((l.size() + this.t) - 1) % l.size();
                        this.y = -1;
                    }
                } else if (z) {
                    if (this.f) {
                        this.y = -1;
                    } else {
                        this.y = 0;
                    }
                } else if (this.f) {
                    this.y = 0;
                } else {
                    this.y = -1;
                }
                this.z = 0;
                MainItem.ChildItem childItem2 = (MainItem.ChildItem) l.get(this.t);
                if (childItem2 == null) {
                    MyCoverView myCoverView2 = this.T;
                    if (myCoverView2 != null) {
                        myCoverView2.f(true);
                        return;
                    }
                    return;
                }
                n0(childItem2, z2);
                MyCoverView myCoverView3 = this.T;
                if (myCoverView3 != null) {
                    myCoverView3.j(PrefImage.B, this.u);
                }
                j0(false);
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void controlRotate(View view) {
        boolean z;
        boolean z2;
        if (this.V != null && this.y0 == null) {
            M0();
            if (view != null) {
                ImageViewControl imageViewControl = this.V;
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.f16018c, this.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.34
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageEffect.this.M0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefImage.l != i4) {
                            PrefImage.l = i4;
                            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                            PrefSet.f(imageViewPageEffect.b, 3, i4, "mRotate");
                            MainUtil.o7(imageViewPageEffect.f16018c);
                            ImageViewControl imageViewControl2 = imageViewPageEffect.V;
                            if (imageViewControl2 != null) {
                                imageViewControl2.o();
                            }
                        }
                        return true;
                    }
                });
                this.y0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.f16018c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void d() {
        if (this.V == null) {
            return;
        }
        k0();
    }

    public final void d0(MainItem.ViewItem viewItem) {
        String n;
        if (this.n && viewItem != null && this.E != null) {
            synchronized (this.f16017a) {
                try {
                    try {
                        ArrayList arrayList = this.o;
                        if (arrayList == null) {
                            this.o = new ArrayList();
                        } else if (arrayList.size() == this.x) {
                            return;
                        }
                        n = this.E.n(viewItem.f);
                    } catch (Exception unused) {
                    }
                    if (TextUtils.isEmpty(n)) {
                        return;
                    }
                    this.o.add(n);
                } finally {
                }
            }
        }
    }

    public final void d1(int i, int i2) {
        if (this.V == null) {
            return;
        }
        this.W = i;
        this.X = i2;
        Z0();
        if (this.V.e()) {
            k1();
        } else {
            this.V.z(true);
            this.V.post(new AnonymousClass21());
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final int e() {
        int i = this.v;
        if (i != 1 && i != 2 && i != 3) {
            return -1;
        }
        return this.t;
    }

    public final void e0() {
        int i;
        MainItem.ViewItem viewItem;
        CurlView curlView = this.K;
        if (curlView != null) {
            try {
                List<CurlMesh> pageList = curlView.getPageList();
                if (pageList != null) {
                    i = pageList.size();
                } else {
                    i = 0;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    CurlMesh curlMesh = pageList.get(i2);
                    if (curlMesh != null && (viewItem = curlMesh.C) != null && viewItem.d != null) {
                        ImageLoader.f().a(viewItem.d);
                    }
                }
            } catch (Exception unused) {
            }
        }
        f0();
        g0(true);
    }

    public final void e1() {
        this.A0 = MainUtil.E5(this.f16018c);
        this.B0 = MainUtil.H5(this.f16018c);
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final int f() {
        return this.v;
    }

    public final void f0() {
        if (this.i0 != null) {
            synchronized (this.f16017a) {
                try {
                    ArrayList arrayList = new ArrayList(this.i0);
                    this.i0 = null;
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ImageTask imageTask = (ImageTask) it.next();
                        it.remove();
                        if (imageTask != null) {
                            imageTask.f12839c = true;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final void f1() {
        if (MainUtil.O5(this.b)) {
            this.f = !PrefImage.s;
        } else {
            this.f = PrefImage.s;
        }
        CurlView curlView = this.K;
        if (curlView != null) {
            curlView.setReverse(this.f);
        }
    }

    public final void g0(boolean z) {
        CurlView curlView;
        int i;
        int intValue;
        MainItem.ViewItem viewItem;
        ImageView imageView;
        ArrayList arrayList = this.j0;
        if (arrayList != null && !arrayList.isEmpty()) {
            synchronized (this.f16017a) {
                int i2 = 0;
                if (!z) {
                    try {
                        try {
                            curlView = this.K;
                        } finally {
                        }
                    } catch (Exception unused) {
                    }
                    if (curlView != null) {
                        List<CurlMesh> pageList = curlView.getPageList();
                        if (pageList != null) {
                            i = pageList.size();
                        } else {
                            i = 0;
                        }
                        int i3 = 0;
                        int i4 = 0;
                        for (int i5 = 0; i5 < i; i5++) {
                            CurlMesh curlMesh = pageList.get(i5);
                            if (curlMesh != null && (viewItem = curlMesh.C) != null) {
                                ArrayList arrayList2 = new ArrayList(this.j0);
                                int size = arrayList2.size();
                                int i6 = 0;
                                while (true) {
                                    if (i6 < size) {
                                        Object obj = arrayList2.get(i6);
                                        i6++;
                                        imageView = (ImageView) obj;
                                        if (imageView != null && viewItem.f == ((Integer) imageView.getTag()).intValue()) {
                                            break;
                                        }
                                    } else {
                                        imageView = null;
                                        break;
                                    }
                                }
                                if (imageView != null) {
                                    this.j0.remove(imageView);
                                    ImageLoader.f().a(imageView);
                                    if (this.j0.isEmpty()) {
                                        return;
                                    }
                                }
                                i3 = Math.min(i3, viewItem.f);
                                i4 = Math.max(i4, viewItem.f);
                            }
                        }
                        int i7 = i3 - 1;
                        int i8 = i4 + 1;
                        ArrayList arrayList3 = new ArrayList(this.j0);
                        int size2 = arrayList3.size();
                        while (i2 < size2) {
                            Object obj2 = arrayList3.get(i2);
                            i2++;
                            ImageView imageView2 = (ImageView) obj2;
                            if (imageView2 != null && ((intValue = ((Integer) imageView2.getTag()).intValue()) < i7 || intValue > i8)) {
                                this.j0.remove(imageView2);
                                ImageLoader.f().a(imageView2);
                            }
                        }
                        return;
                    }
                }
                ArrayList arrayList4 = new ArrayList(this.j0);
                int size3 = arrayList4.size();
                while (i2 < size3) {
                    Object obj3 = arrayList4.get(i2);
                    i2++;
                    ImageView imageView3 = (ImageView) obj3;
                    if (imageView3 != null) {
                        ImageLoader.f().a(imageView3);
                    }
                }
                this.j0 = null;
            }
        }
    }

    public final void g1() {
        ImageCoverView imageCoverView;
        if (this.E != null && this.K != null && !P0() && (imageCoverView = this.U) != null && !imageCoverView.d()) {
            this.K0 = true;
            int i = this.y;
            int i2 = this.z;
            this.A = 0;
            if (this.x == 0) {
                if (R0()) {
                    c1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                return;
            }
            if (!MainUtil.H5(this.f16018c)) {
                if (this.f) {
                    if (this.y == 0 && R0()) {
                        c1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    } else {
                        int i3 = this.y;
                        int i4 = this.x;
                        this.y = android.support.v4.media.a.B(i3, i4, 1, i4);
                    }
                } else {
                    if (this.y == this.x - 1 && R0()) {
                        c1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                }
            } else if (this.z == 3) {
                this.z = 4;
            } else {
                if (this.f) {
                    if (this.y == 0 && R0()) {
                        c1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    } else {
                        int i5 = this.y;
                        int i6 = this.x;
                        this.y = android.support.v4.media.a.B(i5, i6, 1, i6);
                    }
                } else {
                    if (this.y == this.x - 1 && R0()) {
                        c1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                }
                CompressCache.BitmapInfo g = this.E.g(this.y);
                if (g != null) {
                    if (g.f12872a > g.b) {
                        this.z = 3;
                    } else {
                        this.z = 2;
                    }
                } else {
                    this.z = 0;
                    this.A = 3;
                }
            }
            if (i != this.y || i2 != this.z) {
                this.U.b(o0(), this.N, true);
                this.V.t(this.x, this.y, this.z);
                Y0();
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void h(int i) {
        Compress compress;
        ImageViewActivity imageViewActivity;
        if (this.V != null && !P0()) {
            int i2 = this.x;
            int i3 = i2 - 1;
            if (i > i3) {
                i = i3;
            }
            if (i < 0) {
                i = 0;
            }
            int i4 = this.y;
            if (i == i4) {
                this.V.t(i2, i4, this.z);
                return;
            }
            ImageCoverView imageCoverView = this.U;
            if (imageCoverView != null && !imageCoverView.d()) {
                if (PrefImage.s) {
                    if (i < this.y) {
                        this.U.b(o0(), this.N, true);
                    } else {
                        this.U.b(o0(), this.N, false);
                    }
                } else if (i > this.y) {
                    this.U.b(o0(), this.N, true);
                } else {
                    this.U.b(o0(), this.N, false);
                }
                e0();
                this.y = i;
                this.V.t(this.x, i, this.z);
                this.z = p0(this.y, false);
                Y0();
                if (this.p == 2 && (compress = this.E) != null && !URLUtil.isNetworkUrl(compress.n(this.y)) && (imageViewActivity = this.f16018c) != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.36
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageEffect.O(ImageViewPageEffect.this);
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.mycompany.app.image.ImageViewActivity$SavedItem, java.lang.Object] */
    public final boolean h0(boolean z) {
        int i;
        boolean z2;
        int i2;
        if (this.C0) {
            return true;
        }
        boolean z3 = false;
        if (this.K == null) {
            return false;
        }
        boolean Q0 = Q0();
        if (this.g != null) {
            if (z && this.s0 == null) {
                r0();
                q0(false);
                o1(true);
            }
            e1();
            return false;
        }
        if (this.B0 != MainUtil.I5(Q0)) {
            this.z = p0(this.y, false);
        }
        if (Q0) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            this.C0 = true;
            if (z && this.s0 != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (this.z == 0) {
                this.z = p0(this.y, false);
            }
            ?? obj = new Object();
            this.g = obj;
            obj.f15781a = this.k;
            obj.b = this.m;
            obj.f15782c = this.n;
            obj.d = this.o;
            obj.e = this.p;
            obj.m = this.t;
            obj.i = this.u;
            obj.f = this.v;
            obj.g = this.E;
            obj.h = this.w;
            obj.j = this.x;
            obj.k = this.y;
            obj.l = this.z;
            ImageGifView imageGifView = this.R;
            if (imageGifView != null && imageGifView.e()) {
                z3 = true;
            }
            obj.n = z3;
            this.g.o = i2;
            I(true);
            G();
            return true;
        }
        if (z && this.s0 == null) {
            r0();
            q0(false);
            o1(true);
        }
        if (this.B0 != MainUtil.I5(Q0)) {
            Y0();
            e1();
            return false;
        }
        if (this.A0 != MainUtil.F5(Q0)) {
            ZoomImageAttacher zoomImageAttacher = this.l0;
            if (zoomImageAttacher != null) {
                zoomImageAttacher.u();
            }
            d1(this.W, this.X);
            this.O.setFit(MainUtil.E5(this.f16018c));
            this.K.d();
            e1();
            return false;
        }
        e1();
        return false;
    }

    public final void h1() {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        MySizeFrame mySizeFrame3;
        EventHandler eventHandler = this.B;
        if (eventHandler != null && (mySizeFrame = this.J) != null) {
            int i = 3600000 - this.D;
            if (i <= 0) {
                if (mySizeFrame != null && mySizeFrame.getKeepScreenOn() && (mySizeFrame3 = this.J) != null) {
                    mySizeFrame3.post(new AnonymousClass12());
                    return;
                }
                return;
            }
            eventHandler.sendEmptyMessageDelayed(0, i);
            MySizeFrame mySizeFrame4 = this.J;
            if (mySizeFrame4 != null && !mySizeFrame4.getKeepScreenOn() && (mySizeFrame2 = this.J) != null) {
                mySizeFrame2.post(new AnonymousClass11());
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void i() {
        Compress compress;
        if (this.V != null && (compress = this.E) != null) {
            final String n = compress.n(this.y);
            if (!URLUtil.isNetworkUrl(n)) {
                MainUtil.e8(this.b, R.string.invalid_path);
                return;
            }
            if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
                MainUtil.G4(this.f16018c, PrefAlbum.H, PrefAlbum.I, n, this.m, null, "image/*");
                return;
            }
            MyCoverView myCoverView = this.T;
            if (myCoverView != null) {
                myCoverView.l();
            }
            ImageViewActivity imageViewActivity = this.f16018c;
            if (imageViewActivity == null) {
                return;
            }
            imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.49
                @Override // java.lang.Runnable
                public final void run() {
                    String str = n;
                    final String str2 = null;
                    if (!Compress.C(MainUtil.V3(str, null, null, true), true, true)) {
                        str2 = "image/" + MainUtil.T0(str);
                    }
                    ImageViewControl imageViewControl = ImageViewPageEffect.this.V;
                    if (imageViewControl == null) {
                        return;
                    }
                    imageViewControl.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.49.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass49 anonymousClass49 = AnonymousClass49.this;
                            final ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                            MyCoverView myCoverView2 = imageViewPageEffect.T;
                            if (myCoverView2 != null) {
                                myCoverView2.f(true);
                                String str3 = n;
                                if (imageViewPageEffect.f16018c != null && !imageViewPageEffect.U0()) {
                                    imageViewPageEffect.s0();
                                    imageViewPageEffect.q0(true);
                                    if (!URLUtil.isNetworkUrl(str3)) {
                                        MainUtil.e8(imageViewPageEffect.b, R.string.invalid_path);
                                        return;
                                    }
                                    imageViewPageEffect.N0 = true;
                                    MainApp.K1 = true;
                                    DialogDownUrl dialogDownUrl = new DialogDownUrl(imageViewPageEffect.f16018c, str3, imageViewPageEffect.m, null, null, str2, 0L, 4, 0, null, 0, null, false, 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.50
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final WebNestView a() {
                                            return null;
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void b(String str4, String str5) {
                                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                            imageViewPageEffect2.s0();
                                            MainUtil.a8(imageViewPageEffect2.f16018c, str4, str5);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void c(String str4, String str5, String str6) {
                                            ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                            imageViewPageEffect2.s0();
                                            ImageViewPageEffect.Y(imageViewPageEffect2, str4, str5, str6);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void d(String str4, MainUri.UriItem uriItem, int i, boolean z, String str5, String str6) {
                                            final ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                            imageViewPageEffect2.s0();
                                            if (uriItem != null) {
                                                Compress compress2 = imageViewPageEffect2.E;
                                                if (compress2 != null) {
                                                    String r = imageViewPageEffect2.E.r(compress2.n(imageViewPageEffect2.y));
                                                    if (!TextUtils.isEmpty(r)) {
                                                        imageViewPageEffect2.t1 = r;
                                                        imageViewPageEffect2.u1 = str4;
                                                        imageViewPageEffect2.v1 = uriItem;
                                                        imageViewPageEffect2.w1 = i;
                                                        ImageViewActivity imageViewActivity2 = imageViewPageEffect2.f16018c;
                                                        if (imageViewActivity2 != null) {
                                                            imageViewActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.85
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                                                    String str7 = imageViewPageEffect3.t1;
                                                                    String str8 = imageViewPageEffect3.u1;
                                                                    MainUri.UriItem uriItem2 = imageViewPageEffect3.v1;
                                                                    int i2 = imageViewPageEffect3.w1;
                                                                    imageViewPageEffect3.t1 = null;
                                                                    imageViewPageEffect3.u1 = null;
                                                                    imageViewPageEffect3.v1 = null;
                                                                    File file = ImageLoader.f().e().get(str7);
                                                                    if (file != null) {
                                                                        long length = file.length();
                                                                        if (length != 0) {
                                                                            MainUtil.t(imageViewPageEffect3.b, file.getPath(), uriItem2.e);
                                                                            DbBookDown.u(imageViewPageEffect3.b, 3, i2, str8, imageViewPageEffect3.m, uriItem2, length, length, false, PrefSync.k, PrefSecret.m, false);
                                                                            MySizeFrame mySizeFrame = imageViewPageEffect3.J;
                                                                            if (mySizeFrame == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.85.1
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MainUtil.e8(ImageViewPageEffect.this.b, R.string.down_complete);
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
                                                MainApp p = MainApp.p(imageViewPageEffect2.b);
                                                if (p == null) {
                                                    MainUtil.e8(imageViewPageEffect2.b, R.string.down_fail);
                                                    return;
                                                }
                                                ImageViewActivity imageViewActivity3 = imageViewPageEffect2.f16018c;
                                                if (imageViewActivity3 == null) {
                                                    return;
                                                }
                                                imageViewActivity3.u0();
                                                p.R(str4, imageViewPageEffect2.m, uriItem, false);
                                            }
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void f(String str4, String str5, String str6, boolean z) {
                                            final ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                            if (imageViewPageEffect2.f16018c == null || imageViewPageEffect2.w0 != null) {
                                                return;
                                            }
                                            imageViewPageEffect2.B0();
                                            imageViewPageEffect2.q0(true);
                                            DialogPreview dialogPreview = new DialogPreview(imageViewPageEffect2.f16018c, str4, imageViewPageEffect2.m, null, "image/*", new DialogPreview.PreviewListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.54
                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void a(String str7) {
                                                    MainUtil.s(R.string.copied_clipboard, ImageViewPageEffect.this.f16018c, "Copied URL", str7);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void b(String str7, long j, boolean z2) {
                                                    ImageViewPageEffect.this.r0();
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void c(String str7, String str8) {
                                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                                    imageViewPageEffect3.r0();
                                                    ImageViewPageEffect.Y(imageViewPageEffect3, str7, null, str8);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void d(String str7) {
                                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                                    imageViewPageEffect3.r0();
                                                    MainUtil.a8(imageViewPageEffect3.f16018c, str7, imageViewPageEffect3.u);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void e(String str7, String str8) {
                                                    ImageViewPageEffect.this.B0();
                                                }
                                            });
                                            imageViewPageEffect2.w0 = dialogPreview;
                                            dialogPreview.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.55
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    ImageViewPageEffect.this.B0();
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
                                    imageViewPageEffect.u0 = dialogDownUrl;
                                    dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.51
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            ImageViewPageEffect.this.s0();
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

    public final void i0(MainItem.ViewItem viewItem, Bitmap bitmap) {
        CurlMesh curlMesh;
        ArrayList arrayList = this.i0;
        if (arrayList != null && arrayList.size() >= 3) {
            ImageTask imageTask = (ImageTask) this.i0.get(0);
            this.i0.remove(0);
            if (imageTask != null) {
                imageTask.f12839c = true;
            }
        }
        if (this.K != null && viewItem != null && (curlMesh = viewItem.f16555c) != null) {
            MainItem.ViewItem viewItem2 = curlMesh.C;
            if (viewItem2 == null || (viewItem2.e == viewItem.e && viewItem2.f == viewItem.f && viewItem2.g == viewItem.g && viewItem2.h == viewItem.h)) {
                if (TextUtils.isEmpty(viewItem.v) || viewItem.v.equals(this.w)) {
                    ImageTask imageTask2 = new ImageTask(this, viewItem, bitmap);
                    imageTask2.b(this.b);
                    if (this.i0 == null) {
                        this.i0 = new ArrayList();
                    }
                    this.i0.add(imageTask2);
                }
            }
        }
    }

    public final void i1(boolean z) {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        EventHandler eventHandler = this.B;
        if (eventHandler != null && this.J != null) {
            eventHandler.removeMessages(0);
            int i = PrefImage.p;
            if (i == 2) {
                MySizeFrame mySizeFrame3 = this.J;
                if (mySizeFrame3 != null && !mySizeFrame3.getKeepScreenOn() && (mySizeFrame2 = this.J) != null) {
                    mySizeFrame2.post(new AnonymousClass11());
                    return;
                }
                return;
            }
            if (z && i != 0) {
                if (!this.C) {
                    h1();
                    return;
                }
                this.C = false;
                ImageViewActivity imageViewActivity = this.f16018c;
                if (imageViewActivity != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                            imageViewPageEffect.D = MainUtil.E3(imageViewPageEffect.b);
                            MySizeFrame mySizeFrame4 = imageViewPageEffect.J;
                            if (mySizeFrame4 == null) {
                                return;
                            }
                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.10.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageEffect.this.h1();
                                }
                            });
                        }
                    });
                    return;
                }
                return;
            }
            MySizeFrame mySizeFrame4 = this.J;
            if (mySizeFrame4 != null && mySizeFrame4.getKeepScreenOn() && (mySizeFrame = this.J) != null) {
                mySizeFrame.post(new AnonymousClass12());
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void j(int i, int i2, Intent intent) {
        MainItem.ChildItem k;
        DialogCapture dialogCapture = this.t0;
        if (dialogCapture == null || !dialogCapture.o(i, i2, intent)) {
            DialogDownUrl dialogDownUrl = this.u0;
            if (dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) {
                l1(false);
                if (i != 1) {
                    if (i == 7 && i2 == -1 && intent != null && this.E != null) {
                        String stringExtra = intent.getStringExtra("EXTRA_PATH");
                        if (!TextUtils.isEmpty(stringExtra) && !stringExtra.equals(this.w)) {
                            int intExtra = intent.getIntExtra("EXTRA_INDEX", this.t);
                            if (this.v == 12) {
                                k = DataAlbum.m(this.b).f(intExtra);
                            } else {
                                k = this.E.k(intExtra);
                            }
                            if (k == null) {
                                MainUtil.e8(this.b, R.string.invalid_path);
                                return;
                            }
                            q0(false);
                            int i3 = this.v;
                            if (i3 == 1) {
                                DbAlbum.e(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 2) {
                                DbPdf.f(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 3) {
                                DbCmp.f(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 12) {
                                this.v = 1;
                                ImageViewControl imageViewControl = this.V;
                                if (imageViewControl != null) {
                                    imageViewControl.setIconType(1);
                                }
                            }
                            this.k = false;
                            this.m = null;
                            this.n = false;
                            this.p = 0;
                            W0();
                            this.u = null;
                            this.t = intExtra;
                            this.w = stringExtra;
                            this.x = 0;
                            this.y = 0;
                            this.z = 0;
                            n0(k, true);
                            j0(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == -1 && intent != null && this.E != null && this.V != null) {
                    if (intent.getBooleanExtra("EXTRA_THUMB", false)) {
                        this.V.p(this.v, this.p, this.E);
                    }
                    if (this.v == 2) {
                        PrefImage.s(this.b, true);
                        PdfPreviewToolbar.applyControlTimeout(this.V);
                    }
                }
            }
        }
    }

    public final void j0(boolean z) {
        e0();
        LoadTask loadTask = this.g0;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.g0 = null;
        if (this.v != 12 && TextUtils.isEmpty(this.w)) {
            MainUtil.e8(this.b, R.string.invalid_path);
            k0();
        } else {
            this.f0 = true;
            LoadTask loadTask2 = new LoadTask(this, z);
            this.g0 = loadTask2;
            loadTask2.b(this.b);
        }
    }

    public final void j1() {
        ImageViewActivity imageViewActivity = this.f16018c;
        if (imageViewActivity == null) {
            return;
        }
        imageViewActivity.r0();
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean k() {
        this.K0 = false;
        if (this.H0) {
            a1();
        } else if (this.I0) {
            g1();
        } else {
            p1();
        }
        this.H0 = false;
        this.I0 = false;
        return true;
    }

    public final void k0() {
        ImageViewActivity imageViewActivity = this.f16018c;
        if (imageViewActivity != null) {
            imageViewActivity.finish();
        }
    }

    public final void k1() {
        MySizeFrame mySizeFrame;
        if (this.T0 != null && (mySizeFrame = this.J) != null) {
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.63
                @Override // java.lang.Runnable
                public final void run() {
                    Compress compress;
                    ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                    if (imageViewPageEffect.T0 != null && (compress = imageViewPageEffect.E) != null) {
                        imageViewPageEffect.T0.setIconTrans(imageViewPageEffect.E.u(compress.n(imageViewPageEffect.y)));
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void l() {
        MySizeFrame mySizeFrame;
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.setIconCrop(true);
            this.K.d();
            if (PrefPdf.j && PrefPdf.k && (mySizeFrame = this.J) != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.33
                    @Override // java.lang.Runnable
                    public final void run() {
                        MySizeFrame mySizeFrame2;
                        final ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                        imageViewPageEffect.q0(true);
                        if (PrefPdf.j && imageViewPageEffect.M0 == null && (mySizeFrame2 = imageViewPageEffect.J) != null) {
                            mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.39
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewActivity imageViewActivity;
                                    if (PrefPdf.j) {
                                        final ImageViewPageEffect imageViewPageEffect2 = ImageViewPageEffect.this;
                                        if (imageViewPageEffect2.M0 == null && imageViewPageEffect2.J != null && (imageViewActivity = imageViewPageEffect2.f16018c) != null) {
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
                                            imageViewPageEffect2.M0 = myFadeFrame;
                                            appCompatTextView.setText(R.string.pdf_crop_guide);
                                            imageViewPageEffect2.M0.setListener(new MyFadeListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.40
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z) {
                                                    ImageViewPageEffect imageViewPageEffect3;
                                                    MyFadeFrame myFadeFrame2;
                                                    if (!z && (myFadeFrame2 = (imageViewPageEffect3 = ImageViewPageEffect.this).M0) != null && imageViewPageEffect3.J != null) {
                                                        myFadeFrame2.f();
                                                        imageViewPageEffect3.J.removeView(imageViewPageEffect3.M0);
                                                        imageViewPageEffect3.M0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z, boolean z2) {
                                                }
                                            });
                                            imageViewPageEffect2.M0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.41
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewPageEffect3.b, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewPageEffect3.M0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.42
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewPageEffect imageViewPageEffect3 = ImageViewPageEffect.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewPageEffect3.b, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewPageEffect3.M0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                }
                                            });
                                            imageViewPageEffect2.J.addView(imageViewPageEffect2.M0, -1, -1);
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

    public final String l0(String str, boolean z) {
        List list;
        int size;
        MainItem.ChildItem childItem = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = this.v;
        if (i == 1) {
            list = DataAlbum.m(this.b).b;
        } else if (i == 2) {
            list = DataPdf.m(this.b).b;
        } else if (i == 3) {
            list = DataCmp.m(this.b).b;
        } else {
            list = null;
        }
        if (list == null || list.size() < 2) {
            return null;
        }
        int i2 = this.t;
        if ((i2 == -1 || i2 >= list.size() || !str.equals(list.get(i2))) && (i2 = list.indexOf(str)) == -1) {
            return null;
        }
        if (z) {
            if (this.f) {
                size = ((list.size() + i2) - 1) % list.size();
            } else {
                size = (i2 + 1) % list.size();
            }
        } else if (this.f) {
            size = (i2 + 1) % list.size();
        } else {
            size = ((list.size() + i2) - 1) % list.size();
        }
        int i3 = this.v;
        if (i3 == 1) {
            childItem = DataAlbum.m(this.b).f(size);
        } else if (i3 == 2) {
            childItem = DataPdf.m(this.b).f(size);
        } else if (i3 == 3) {
            childItem = DataCmp.m(this.b).f(size);
        }
        if (childItem != null) {
            return childItem.h;
        }
        if (this.v == 1) {
            return MainUtil.j1(this.b, (String) list.get(size));
        }
        return MainUtil.b1(this.b, (String) list.get(size));
    }

    public final void l1(boolean z) {
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.x(z);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean m() {
        if (T0()) {
            return true;
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null && imageViewControl.l()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final Bitmap m0() {
        boolean z;
        boolean z2;
        Compress compress = this.E;
        if (compress != null && this.x != 0) {
            String n = compress.n(this.y);
            boolean z3 = false;
            if (this.v == 12) {
                z = true;
            } else {
                z = false;
            }
            ImageViewActivity imageViewActivity = this.f16018c;
            boolean Q0 = Q0();
            if (this.v == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            Bitmap f = this.E.f(n, MainUtil.l0(imageViewActivity, Q0, z2), z);
            if (MainUtil.f6(f)) {
                return f;
            }
            ?? obj = new Object();
            obj.f16554a = 8;
            obj.b = this.E;
            obj.r = this.m;
            obj.f = this.y;
            ImageViewActivity imageViewActivity2 = this.f16018c;
            boolean Q02 = Q0();
            if (this.v == 2) {
                z3 = true;
            }
            obj.t = MainUtil.l0(imageViewActivity2, Q02, z3);
            Bitmap j = ImageLoader.f().j(obj, this.c0);
            if (MainUtil.f6(j)) {
                return j;
            }
            MySizeFrame mySizeFrame = this.J;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.83
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewPageEffect.this.b, R.string.image_fail);
                    }
                });
                return null;
            }
        } else {
            MySizeFrame mySizeFrame2 = this.J;
            if (mySizeFrame2 != null) {
                mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.82
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewPageEffect.this.b, R.string.no_image);
                    }
                });
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
    public final void m1() {
        if (this.f16018c == null || U0()) {
            return;
        }
        A0();
        q0(true);
        ?? obj = new Object();
        int i = this.v;
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
        this.o0 = false;
        DialogListBook dialogListBook = new DialogListBook(this.f16018c, obj, this.w, new DialogListBook.ListBookListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.46
            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void a(int i2, MainItem.ChildItem childItem, int i3) {
                int i4;
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.o0 = true;
                imageViewPageEffect.A0();
                if (TextUtils.isEmpty(childItem.g)) {
                    MainUtil.e8(imageViewPageEffect.b, R.string.invalid_path);
                    return;
                }
                if (childItem.g.equals(imageViewPageEffect.w)) {
                    if (imageViewPageEffect.E != null && (i4 = imageViewPageEffect.x) != 0) {
                        int i5 = childItem.t;
                        if (i5 == imageViewPageEffect.y) {
                            return;
                        }
                        if (i5 >= 0 && i5 < i4) {
                            imageViewPageEffect.y = i5;
                            imageViewPageEffect.z = childItem.u;
                            imageViewPageEffect.Y0();
                            return;
                        }
                        MainUtil.e8(imageViewPageEffect.b, R.string.invalid_path);
                        return;
                    }
                    MainUtil.e8(imageViewPageEffect.b, R.string.no_image);
                    return;
                }
                imageViewPageEffect.q0(false);
                int i6 = imageViewPageEffect.v;
                if (i6 == 1) {
                    DbAlbum.e(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
                } else if (i6 == 2) {
                    DbPdf.f(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
                } else if (i6 == 3) {
                    DbCmp.f(imageViewPageEffect.b, imageViewPageEffect.w, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
                } else if (i6 == 12) {
                    imageViewPageEffect.v = 1;
                    ImageViewControl imageViewControl = imageViewPageEffect.V;
                    if (imageViewControl != null) {
                        imageViewControl.setIconType(1);
                    }
                }
                imageViewPageEffect.k = false;
                imageViewPageEffect.m = null;
                imageViewPageEffect.n = false;
                imageViewPageEffect.p = 0;
                imageViewPageEffect.W0();
                imageViewPageEffect.u = childItem.h;
                imageViewPageEffect.t = childItem.J;
                imageViewPageEffect.w = childItem.g;
                imageViewPageEffect.y = childItem.t;
                imageViewPageEffect.z = childItem.u;
                imageViewPageEffect.x = 0;
                imageViewPageEffect.j0(false);
            }

            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void b() {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                if (imageViewPageEffect.E != null && imageViewPageEffect.x != 0) {
                    BookTask bookTask = imageViewPageEffect.h0;
                    if (bookTask != null) {
                        bookTask.f12839c = true;
                    }
                    imageViewPageEffect.h0 = null;
                    BookTask bookTask2 = new BookTask(imageViewPageEffect);
                    imageViewPageEffect.h0 = bookTask2;
                    bookTask2.b(imageViewPageEffect.b);
                    return;
                }
                MainUtil.e8(imageViewPageEffect.b, R.string.no_image);
            }
        });
        this.s0 = dialogListBook;
        dialogListBook.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.47
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                if (imageViewPageEffect.i) {
                    return;
                }
                imageViewPageEffect.A0();
                BookTask bookTask = imageViewPageEffect.h0;
                if (bookTask != null) {
                    bookTask.f12839c = true;
                }
                imageViewPageEffect.h0 = null;
                if (imageViewPageEffect.o0) {
                    imageViewPageEffect.o0 = false;
                } else {
                    imageViewPageEffect.l1(false);
                }
            }
        });
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void n() {
        if (this.f16018c == null) {
            return;
        }
        Intent intent = new Intent(this.b, (Class<?>) MainListImage.class);
        intent.putExtra("EXTRA_TYPE", this.v);
        if (this.v == 12) {
            intent.putExtra("EXTRA_PATH", PrefPath.j);
        } else {
            intent.putExtra("EXTRA_PATH", this.w);
        }
        this.f16018c.o0(intent, 7);
    }

    public final void n0(MainItem.ChildItem childItem, boolean z) {
        int i = this.v;
        if (i == 1 || i == 2 || i == 3) {
            this.u = childItem.h;
            this.w = childItem.g;
            int i2 = childItem.s;
            this.x = i2;
            this.H = null;
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
                this.x = i2;
                this.y = childItem.t;
                this.z = childItem.u;
            }
        }
    }

    public final void n1(boolean z) {
        if (this.R == null && this.J != null) {
            ImageGifView imageGifView = new ImageGifView(this.f16018c);
            this.R = imageGifView;
            imageGifView.setVisibility(8);
            this.J.post(new AnonymousClass22(z));
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void o() {
        if (this.V == null || this.f16018c == null || U0()) {
            return;
        }
        C0();
        q0(true);
        this.N0 = true;
        MainApp.K1 = true;
        this.o0 = false;
        ImageViewActivity imageViewActivity = this.f16018c;
        DialogSeekBright dialogSeekBright = new DialogSeekBright(imageViewActivity, imageViewActivity.getWindow(), 2, null);
        this.q0 = dialogSeekBright;
        dialogSeekBright.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.43
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect.this.C0();
            }
        });
    }

    public final int o0() {
        MyImageView myImageView = this.O;
        if (myImageView == null) {
            return 0;
        }
        if (myImageView.getVisibility() != 0) {
            return 1;
        }
        if (this.O.getDraw() == 1) {
            return 3;
        }
        return 2;
    }

    public final void o1(boolean z) {
        int i;
        int i2;
        int i3;
        if (PrefImage.n && this.R == null && this.Y != null) {
            if (Q0()) {
                i = PrefImage.u;
            } else {
                i = PrefImage.t;
            }
            if (i == 3) {
                this.Z.setBackgroundResource(R.drawable.outline_swipe_up);
            } else {
                View view = this.Z;
                if (this.f) {
                    i2 = R.drawable.outline_swipe_l2r;
                } else {
                    i2 = R.drawable.outline_swipe_r2l;
                }
                view.setBackgroundResource(i2);
            }
            this.a0.setText(MainConst.e0[i]);
            AppCompatTextView appCompatTextView = this.b0;
            if (PrefImage.s) {
                i3 = R.string.reverse;
            } else {
                i3 = R.string.forward;
            }
            appCompatTextView.setText(i3);
            this.Y.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                    MyFadeLinear myFadeLinear = imageViewPageEffect.Y;
                    if (myFadeLinear == null) {
                        return;
                    }
                    if (myFadeLinear.e()) {
                        imageViewPageEffect.I0(true);
                        imageViewPageEffect.q0(true);
                    } else {
                        imageViewPageEffect.p1();
                    }
                }
            });
            if (z) {
                this.Y.d(false, false);
            }
            this.Y.g();
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void p() {
        if (this.V == null || this.f16018c == null || U0()) {
            return;
        }
        DialogCapture dialogCapture = this.t0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.t0 = null;
        }
        this.f16018c.m0(new AnonymousClass48());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final int p0(int i, boolean z) {
        boolean z2;
        boolean z3;
        Bitmap bitmap;
        Compress compress = this.E;
        if (compress != null && this.x != 0) {
            if (!MainUtil.H5(this.f16018c)) {
                return 1;
            }
            CompressCache.BitmapInfo g = compress.g(i);
            if (g == null && z) {
                if (this.p == 0 || URLUtil.isNetworkUrl(compress.n(i))) {
                    ?? obj = new Object();
                    obj.f16554a = 8;
                    obj.b = compress;
                    obj.r = this.m;
                    obj.f = this.y;
                    ImageViewActivity imageViewActivity = this.f16018c;
                    boolean Q0 = Q0();
                    if (this.v == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    obj.t = MainUtil.l0(imageViewActivity, Q0, z2);
                    if (this.v == 12) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    obj.u = z3;
                    ImageLoader.ImageLoadItem k = ImageLoader.f().k(obj, this.c0);
                    if (this.p == 0 && this.v == 12) {
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
                if (this.f) {
                    return 4;
                }
                return 3;
            }
        }
        return 0;
    }

    public final void p1() {
        ImageViewControl imageViewControl;
        if (this.e0 && (imageViewControl = this.V) != null && imageViewControl.B()) {
            I0(false);
            d1(this.W, this.X);
            this.V.z(false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void q() {
        ImageCoverView imageCoverView;
        int B;
        if (this.E != null && this.K != null && (imageCoverView = this.U) != null && !imageCoverView.d()) {
            int i = this.x;
            if (i == 0) {
                if (R0()) {
                    c1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                return;
            }
            if (PrefImage.s) {
                if (this.y == i - 1 && R0()) {
                    c1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                B = (this.y + 1) % this.x;
            } else if (this.y == 0 && R0()) {
                c1(this.x, this.y, this.z, 2, this.w, false, false);
                return;
            } else {
                int i2 = this.y;
                int i3 = this.x;
                B = android.support.v4.media.a.B(i2, i3, 1, i3);
            }
            h(B);
        }
    }

    public final void q0(boolean z) {
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.d(z);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void r(View view) {
        if (this.V != null && this.z0 == null) {
            L0();
            if (view != null) {
                ImageViewControl imageViewControl = this.V;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.forward, !PrefImage.s));
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.reverse, PrefImage.s));
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.f16018c, this.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.35
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageEffect.this.L0();
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
                        ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                        PrefSet.d(3, imageViewPageEffect.b, "mReverse", z);
                        imageViewPageEffect.f1();
                        imageViewPageEffect.o1(true);
                        ImageViewControl imageViewControl2 = imageViewPageEffect.V;
                        if (imageViewControl2 != null) {
                            imageViewControl2.u(imageViewPageEffect.f, imageViewPageEffect.v, imageViewPageEffect.p, imageViewPageEffect.E, imageViewPageEffect.x, imageViewPageEffect.y, imageViewPageEffect.z);
                        }
                        imageViewPageEffect.Y0();
                        return true;
                    }
                });
                this.z0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.f16018c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public final void r0() {
        t0();
        z0();
        C0();
        y0();
        A0();
        DialogCapture dialogCapture = this.t0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.t0 = null;
        }
        s0();
        E0();
        B0();
        F0();
        H0();
        x0();
        v0();
        u0();
        w0();
        D0();
        G0();
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void s() {
        if (R0()) {
            c1(this.x, this.y, this.z, 1, this.w, true, true);
            return;
        }
        int i = 0;
        if (PrefImage.s) {
            if (this.y == 0) {
                i = this.x - 1;
            }
            h(i);
        } else {
            int i2 = this.y;
            int i3 = this.x - 1;
            if (i2 != i3) {
                i = i3;
            }
            h(i);
        }
    }

    public final void s0() {
        DialogDownUrl dialogDownUrl = this.u0;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.u0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
        ImageViewControl imageViewControl = this.V;
        if (imageViewControl != null) {
            imageViewControl.d(true);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void t() {
    }

    public final void t0() {
        DialogEditText dialogEditText = this.G;
        if (dialogEditText != null) {
            dialogEditText.dismiss();
            this.G = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void u() {
        m1();
    }

    public final void u0() {
        DialogConfirm dialogConfirm = this.X0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.X0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean v() {
        ImageCoverView imageCoverView = this.U;
        if (imageCoverView != null && !imageCoverView.d()) {
            return false;
        }
        return true;
    }

    public final void v0() {
        DialogConfirm dialogConfirm = this.W0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.W0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void w() {
        Bitmap bitmap;
        boolean z;
        if (this.V == null || this.f16018c == null || U0()) {
            return;
        }
        y0();
        q0(true);
        this.N0 = true;
        MainApp.K1 = true;
        Compress compress = this.E;
        if (compress != null && this.x > 0) {
            String n = compress.n(this.y);
            int i = this.v;
            if (i == 12) {
                z = true;
            } else {
                z = false;
            }
            int i2 = 2;
            if (i == 2 && PrefPdf.k) {
                i2 = MainUtil.l0(this.f16018c, Q0(), true);
                bitmap = this.E.f(n, i2, z);
            } else {
                bitmap = this.E.f(n, 2, z);
                if (bitmap == null || bitmap.isRecycled()) {
                    bitmap = this.E.f(n, MainUtil.l0(this.f16018c, Q0(), false), z);
                }
            }
            if ((bitmap == null || bitmap.isRecycled()) && !z) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = this.E;
                obj.r = this.m;
                obj.f = this.y;
                obj.t = i2;
                bitmap = ImageLoader.f().j(obj, this.c0);
            }
        } else {
            bitmap = null;
        }
        this.o0 = false;
        DialogImageBack dialogImageBack = new DialogImageBack(this.f16018c, bitmap, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.44
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                int i3;
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.o0 = true;
                MySizeFrame mySizeFrame = imageViewPageEffect.J;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.setBackgroundColor(PrefImage.B);
                imageViewPageEffect.O.setBackgroundColor(PrefImage.B);
                MyCoverView myCoverView = imageViewPageEffect.M;
                if (PrefImage.C > 0.2f) {
                    i3 = -328966;
                } else {
                    i3 = -16777216;
                }
                myCoverView.setColor(i3);
                imageViewPageEffect.K.d();
            }
        });
        this.r0 = dialogImageBack;
        dialogImageBack.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.45
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.y0();
                if (imageViewPageEffect.o0) {
                    imageViewPageEffect.o0 = false;
                } else {
                    imageViewPageEffect.l1(true);
                }
            }
        });
    }

    public final void w0() {
        DialogConfirm dialogConfirm = this.Y0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Y0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void x() {
        if (this.V == null || this.f16018c == null || U0()) {
            return;
        }
        F0();
        q0(true);
        this.N0 = true;
        MainApp.K1 = true;
        this.o0 = false;
        DialogSetImage dialogSetImage = new DialogSetImage(this.f16018c, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.56
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.o0 = true;
                imageViewPageEffect.h0(false);
            }
        });
        this.x0 = dialogSetImage;
        dialogSetImage.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageEffect.57
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                imageViewPageEffect.F0();
                if (imageViewPageEffect.o0) {
                    imageViewPageEffect.o0 = false;
                } else {
                    imageViewPageEffect.l1(true);
                }
            }
        });
    }

    public final void x0() {
        DialogConfirm dialogConfirm = this.V0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.V0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void y() {
        if (this.f16018c == null) {
            return;
        }
        Intent intent = new Intent(this.b, SettingImage.class);
        if (this.v == 2) {
            intent.putExtra("EXTRA_PDF_PREVIEW", true);
        }
        this.f16018c.o0(intent, 1);
    }

    public final void y0() {
        DialogImageBack dialogImageBack = this.r0;
        if (dialogImageBack != null) {
            dialogImageBack.dismiss();
            this.r0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void z(View view) {
        if (this.V != null && !U0() && view != null && this.J != null) {
            X0();
            if (this.m1 == null) {
                this.m1 = new WebTransOcrCtrl(this.f16018c);
                this.n1 = view;
                this.J.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.58
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageEffect imageViewPageEffect = ImageViewPageEffect.this;
                        WebTransOcrCtrl webTransOcrCtrl = imageViewPageEffect.m1;
                        if (webTransOcrCtrl != null) {
                            webTransOcrCtrl.c();
                        }
                        MySizeFrame mySizeFrame = imageViewPageEffect.J;
                        if (mySizeFrame == null) {
                            return;
                        }
                        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageEffect.58.1
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
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageEffect.AnonymousClass58.AnonymousClass1.run():void");
                            }
                        });
                    }
                });
                ImageViewControl imageViewControl = this.V;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
            }
        }
    }

    public final void z0() {
        DialogImageType dialogImageType = this.p0;
        if (dialogImageType != null) {
            dialogImageType.dismiss();
            this.p0 = null;
            this.N0 = false;
            MainUtil.K7(this.f16018c, false);
        }
    }
}
