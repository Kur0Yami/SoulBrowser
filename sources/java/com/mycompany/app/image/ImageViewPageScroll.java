package com.mycompany.app.image;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
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
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ImageViewPageScroll extends ImageViewWrapper implements ImageViewControl.ControlListener, ZoomImageAttacher.AttacherListener {
    public int A;
    public float A0;
    public EventHandler B;
    public float B0;
    public boolean C;
    public boolean C0;
    public int D;
    public boolean D0;
    public Compress E;
    public boolean E0;
    public Compress F;
    public boolean F0;
    public DialogEditText G;
    public GestureDetector G0;
    public String H;
    public MyFadeFrame H0;
    public boolean I;
    public boolean I0;
    public MySizeFrame J;
    public Handler J0;
    public ImageViewPager K;
    public boolean K0;
    public int L;
    public boolean L0;
    public final int M;
    public FrameLayout M0;
    public MyButtonImage N;
    public WebTransOcrCtrl N0;
    public ImageGifView O;
    public ImageTransView O0;
    public boolean P;
    public DialogTransLang P0;
    public MyCoverView Q;
    public DialogConfirm Q0;
    public ImageCoverView R;
    public DialogConfirm R0;
    public ImageViewControl S;
    public DialogConfirm S0;
    public int T;
    public DialogConfirm T0;
    public int U;
    public DialogSeekSimple U0;
    public MyFadeLinear V;
    public DialogSetImgTrans V0;
    public View W;
    public MyPopupMenu W0;
    public AppCompatTextView X;
    public MyPopupMenu X0;
    public AppCompatTextView Y;
    public OcrDetector Y0;
    public DisplayImageOptions Z;
    public String Z0;
    public ListTask a0;
    public int a1;
    public Context b;
    public boolean b0;
    public String b1;

    /* renamed from: c, reason: collision with root package name */
    public ImageViewActivity f16128c;
    public boolean c0;
    public int c1;
    public Window d;
    public LoadTask d0;
    public Bitmap d1;
    public int e;
    public BookTask e0;
    public String e1;
    public boolean f;
    public ArrayList f0;
    public String f1;
    public ImageViewActivity.SavedItem g;
    public ArrayList g0;
    public String g1;
    public int h0;
    public WebTransOcrCtrl h1;
    public boolean i;
    public ZoomImageAttacher i0;
    public View i1;
    public boolean j;
    public boolean j0;
    public boolean j1;
    public boolean k;
    public DialogImageType k0;
    public boolean k1;
    public boolean l;
    public DialogSeekBright l0;
    public String l1;
    public String m;
    public DialogImageBack m0;
    public Bitmap m1;
    public boolean n;
    public DialogListBook n0;
    public String n1;
    public ArrayList o;
    public DialogCapture o0;
    public String o1;
    public int p;
    public DialogDownUrl p0;
    public String p1;
    public WebLoadWrap q;
    public DialogSetDown q0;
    public MainUri.UriItem q1;
    public WebLoadWrap r;
    public DialogPreview r0;
    public int r1;
    public boolean s;
    public DialogSetImage s0;
    public int t;
    public MyPopupMenu t0;
    public String u;
    public MyPopupMenu u0;
    public int v;
    public boolean v0;
    public String w;
    public boolean w0;
    public int x;
    public int x0;
    public int y;
    public boolean y0;
    public int z;
    public boolean z0;

    /* renamed from: a, reason: collision with root package name */
    public final Object f16127a = new Object();
    public boolean h = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            MySizeFrame mySizeFrame = imageViewPageScroll.J;
            if (mySizeFrame == null || mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewPageScroll.J.setKeepScreenOn(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            MySizeFrame mySizeFrame = imageViewPageScroll.J;
            if (mySizeFrame == null || !mySizeFrame.getKeepScreenOn()) {
                return;
            }
            imageViewPageScroll.J.setKeepScreenOn(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass22 implements Runnable {
        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            if (imageViewPageScroll.S != null) {
                if (!TextUtils.isEmpty(imageViewPageScroll.u)) {
                    ImageViewPageScroll.T(imageViewPageScroll);
                    return;
                }
                ImageViewActivity imageViewActivity = imageViewPageScroll.f16128c;
                if (imageViewActivity == null) {
                    return;
                }
                imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.22.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                        if (imageViewPageScroll2.S != null) {
                            if (imageViewPageScroll2.v == 1) {
                                imageViewPageScroll2.u = MainUtil.j1(imageViewPageScroll2.b, imageViewPageScroll2.w);
                            } else {
                                imageViewPageScroll2.u = MainUtil.b1(imageViewPageScroll2.b, imageViewPageScroll2.w);
                            }
                            MySizeFrame mySizeFrame = imageViewPageScroll2.J;
                            if (mySizeFrame == null) {
                                return;
                            }
                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.22.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageScroll.T(ImageViewPageScroll.this);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$23, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass23 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f16148c;

        public AnonymousClass23(boolean z) {
            this.f16148c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            ImageGifView imageGifView = imageViewPageScroll.O;
            if (imageGifView != null && imageViewPageScroll.J != null) {
                imageGifView.j();
                imageViewPageScroll.J.addView(imageViewPageScroll.O, -1, -1);
                imageViewPageScroll.J.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.23.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                        ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                        if (imageViewPageScroll2.O != null && imageViewPageScroll2.E != null) {
                            boolean z = true;
                            imageViewPageScroll2.o0(true);
                            final String n = imageViewPageScroll2.E.n(imageViewPageScroll2.y);
                            Compress compress = imageViewPageScroll2.E;
                            ImageViewActivity imageViewActivity = imageViewPageScroll2.f16128c;
                            boolean O0 = imageViewPageScroll2.O0();
                            if (imageViewPageScroll2.v != 2) {
                                z = false;
                            }
                            imageViewPageScroll2.O.k(imageViewPageScroll2.f16128c, n, imageViewPageScroll2.m, compress.f(n, MainUtil.l0(imageViewActivity, O0, z), false), anonymousClass23.f16148c, new ImageGifView.GifListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.23.1.1
                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void a() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    ImageGifView imageGifView2 = ImageViewPageScroll.this.O;
                                    if (imageGifView2 == null) {
                                        return;
                                    }
                                    imageGifView2.f();
                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                    MySizeFrame mySizeFrame = imageViewPageScroll3.J;
                                    if (mySizeFrame != null) {
                                        mySizeFrame.removeView(imageViewPageScroll3.O);
                                    }
                                    ImageViewPageScroll.this.O = null;
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void b(boolean z2) {
                                    AnonymousClass23 anonymousClass232 = AnonymousClass23.this;
                                    if (z2) {
                                        ImageViewPageScroll.this.o0(false);
                                    } else {
                                        ImageViewPageScroll.this.q1();
                                    }
                                }

                                @Override // com.mycompany.app.image.ImageGifView.GifListener
                                public final void c(MyImageView myImageView) {
                                    boolean z2;
                                    if (myImageView != null) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                        Compress compress2 = imageViewPageScroll3.E;
                                        if (compress2 != null) {
                                            ImageViewActivity imageViewActivity2 = imageViewPageScroll3.f16128c;
                                            boolean O02 = imageViewPageScroll3.O0();
                                            if (ImageViewPageScroll.this.v == 2) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            Bitmap f = compress2.f(n, MainUtil.l0(imageViewActivity2, O02, z2), true);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass26 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainItem.ViewItem f16153c;
        public final /* synthetic */ Bitmap f;

        public AnonymousClass26(MainItem.ViewItem viewItem, Bitmap bitmap) {
            this.f16153c = viewItem;
            this.f = bitmap;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            if (imageViewPageScroll.E != null) {
                MainItem.ViewItem viewItem = this.f16153c;
                viewItem.d.setFadeIn(imageViewPageScroll.R0());
                Bitmap bitmap = this.f;
                boolean f6 = MainUtil.f6(bitmap);
                if (f6) {
                    viewItem.d.f(0, null);
                    MyImageView myImageView = viewItem.d;
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    myImageView.n = true;
                    myImageView.a(width, height);
                    viewItem.d.setImageBitmap(bitmap);
                } else {
                    viewItem.d.f(1, null);
                }
                if (viewItem.e == imageViewPageScroll.h0) {
                    imageViewPageScroll.y = viewItem.f;
                    imageViewPageScroll.z = viewItem.g;
                    imageViewPageScroll.e0(viewItem);
                    imageViewPageScroll.i1(viewItem.d, true);
                    if (f6) {
                        int i = viewItem.g;
                        if ((i == 3 || i == 4) && MainUtil.H5(imageViewPageScroll.f16128c)) {
                            imageViewPageScroll.b1(bitmap.getWidth() * 2, bitmap.getHeight());
                        } else {
                            imageViewPageScroll.b1(bitmap.getWidth(), bitmap.getHeight());
                        }
                        if (imageViewPageScroll.E.g(viewItem.f) == null) {
                            Compress.P(imageViewPageScroll.E.n(viewItem.f), new CompressCache.BitmapInfo(imageViewPageScroll.T, imageViewPageScroll.U, 0));
                        }
                    } else {
                        imageViewPageScroll.b1(0, 0);
                    }
                    ImageCoverView imageCoverView = imageViewPageScroll.R;
                    if (imageCoverView != null) {
                        imageCoverView.c();
                    }
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$32, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass32 implements Runnable {
        public AnonymousClass32() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Compress compress;
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            if (imageViewPageScroll.s || (compress = imageViewPageScroll.E) == null) {
                return;
            }
            compress.S();
            imageViewPageScroll.s = true;
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewPageScroll$50, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass50 implements Runnable {
        public AnonymousClass50() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            Bitmap l0 = imageViewPageScroll.l0();
            if (MainUtil.f6(l0)) {
                imageViewPageScroll.d1 = l0;
                MySizeFrame mySizeFrame = imageViewPageScroll.J;
                if (mySizeFrame == null) {
                    return;
                }
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.50.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                        Bitmap bitmap = imageViewPageScroll2.d1;
                        imageViewPageScroll2.d1 = null;
                        if (!MainUtil.f6(bitmap)) {
                            MainUtil.e8(imageViewPageScroll2.b, R.string.image_fail);
                            return;
                        }
                        imageViewPageScroll2.o0(true);
                        imageViewPageScroll2.o0 = new DialogCapture(imageViewPageScroll2.f16128c, bitmap, false, imageViewPageScroll2.u);
                        imageViewPageScroll2.o0.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.50.1.1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                AnonymousClass50 anonymousClass50 = AnonymousClass50.this;
                                ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                DialogCapture dialogCapture = imageViewPageScroll3.o0;
                                if (dialogCapture != null) {
                                    dialogCapture.dismiss();
                                    imageViewPageScroll3.o0 = null;
                                }
                                ImageViewPageScroll.this.j1(false);
                                ImageViewPageScroll.this.g1();
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

        public BookTask(ImageViewPageScroll imageViewPageScroll) {
            WeakReference weakReference = new WeakReference(imageViewPageScroll);
            this.e = weakReference;
            ImageViewPageScroll imageViewPageScroll2 = (ImageViewPageScroll) weakReference.get();
            if (imageViewPageScroll2 != null) {
                Compress compress = imageViewPageScroll2.E;
                this.f = compress;
                int i = imageViewPageScroll2.y;
                this.g = i;
                DialogListBook dialogListBook = imageViewPageScroll2.n0;
                if (dialogListBook != null) {
                    dialogListBook.t(true);
                    if (compress == null) {
                        return;
                    }
                    this.h = compress.n(i);
                    this.i = imageViewPageScroll2.v == 12;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v5, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ImageViewPageScroll imageViewPageScroll;
            Compress compress;
            Bitmap f;
            int i;
            Bitmap bitmap;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) != null && (compress = this.f) != null) {
                int i2 = imageViewPageScroll.v;
                String str = this.h;
                boolean z = this.i;
                if (i2 == 2 && PrefPdf.k) {
                    i = MainUtil.l0(imageViewPageScroll.f16128c, imageViewPageScroll.O0(), true);
                    f = compress.f(str, i, z);
                } else {
                    Bitmap f2 = compress.f(str, 2, z);
                    if (f2 != null && !f2.isRecycled()) {
                        f = f2;
                    } else {
                        f = compress.f(str, MainUtil.l0(imageViewPageScroll.f16128c, imageViewPageScroll.O0(), false), z);
                    }
                    i = 2;
                }
                if ((f == null || f.isRecycled()) && !z) {
                    ?? obj = new Object();
                    obj.f16554a = 8;
                    obj.b = compress;
                    obj.r = imageViewPageScroll.m;
                    obj.f = this.g;
                    obj.t = i;
                    f = ImageLoader.f().j(obj, imageViewPageScroll.Z);
                }
                if (f != null && !f.isRecycled()) {
                    float min = Math.min(f.getWidth(), f.getHeight()) / MainApp.g1;
                    bitmap = MainUtil.k3(Math.round(f.getWidth() / min), Math.round(f.getHeight() / min), f);
                } else {
                    bitmap = null;
                }
                Bitmap bitmap2 = bitmap;
                int i3 = imageViewPageScroll.v;
                if (i3 == 1) {
                    this.j = DbBookAlbum.b(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.u, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z, bitmap2);
                    DataBookAlbum.k(imageViewPageScroll.b).j(this.j);
                } else if (i3 == 2) {
                    this.j = DbBookPdf.b(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.u, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z, bitmap2);
                    DataBookPdf.k(imageViewPageScroll.b).j(this.j);
                } else if (i3 == 3) {
                    this.j = DbBookCmp.b(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.u, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z, bitmap2);
                    DataBookCmp.k(imageViewPageScroll.b).j(this.j);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewPageScroll imageViewPageScroll;
            WeakReference weakReference = this.e;
            if (weakReference == null || (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) == null) {
                return;
            }
            imageViewPageScroll.e0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ImageViewPageScroll imageViewPageScroll;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) != null) {
                imageViewPageScroll.e0 = null;
                DialogListBook dialogListBook = imageViewPageScroll.n0;
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
        public final WeakReference f16233a;

        public EventHandler(ImageViewPageScroll imageViewPageScroll) {
            super(Looper.getMainLooper());
            this.f16233a = new WeakReference(imageViewPageScroll);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ImageViewPageScroll imageViewPageScroll = (ImageViewPageScroll) this.f16233a.get();
            if (imageViewPageScroll != null && message.what == 0) {
                imageViewPageScroll.f1(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ImageTask extends MyAsyncTask {
        public final WeakReference e;
        public final MainItem.ViewItem f;
        public Bitmap g;

        public ImageTask(ImageViewPageScroll imageViewPageScroll, MainItem.ViewItem viewItem, Bitmap bitmap) {
            WeakReference weakReference = new WeakReference(imageViewPageScroll);
            this.e = weakReference;
            if (((ImageViewPageScroll) weakReference.get()) == null) {
                return;
            }
            this.f = viewItem;
            this.g = bitmap;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ImageViewPageScroll imageViewPageScroll;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) != null && !this.f12839c) {
                MainItem.ViewItem viewItem = this.f;
                MainItem.ViewItem viewItem2 = (MainItem.ViewItem) viewItem.d.getTag();
                if (viewItem2 != null && viewItem2.e == viewItem.e && viewItem2.f == viewItem.f) {
                    int i = viewItem2.g;
                    int i2 = viewItem.g;
                    if (i == i2 && viewItem2.h == viewItem.h) {
                        if (i2 == 3) {
                            try {
                                int width = this.g.getWidth() / 2;
                                int height = this.g.getHeight();
                                if (width > 0 && width * 2 <= this.g.getWidth()) {
                                    this.g = Bitmap.createBitmap(this.g, 0, 0, width, height);
                                }
                            } catch (OutOfMemoryError unused) {
                                this.g = null;
                            }
                        } else if (i2 == 4) {
                            try {
                                int width2 = this.g.getWidth() / 2;
                                int height2 = this.g.getHeight();
                                if (width2 > 0 && width2 * 2 <= this.g.getWidth()) {
                                    this.g = Bitmap.createBitmap(this.g, width2, 0, width2, height2);
                                }
                            } catch (OutOfMemoryError unused2) {
                                this.g = null;
                            }
                        } else {
                            return;
                        }
                        MainItem.ViewItem viewItem3 = (MainItem.ViewItem) viewItem.d.getTag();
                        if (viewItem3 != null && viewItem3.e == viewItem.e && viewItem3.f == viewItem.f && viewItem3.g == viewItem.g && viewItem3.h == viewItem.h && imageViewPageScroll.E != null) {
                            viewItem.m = true;
                            viewItem.d.setTag(viewItem);
                            Bitmap bitmap = this.g;
                            MyImageView myImageView = viewItem.d;
                            if (myImageView != null) {
                                myImageView.post(new AnonymousClass26(viewItem, bitmap));
                            }
                            if (imageViewPageScroll.K != null && !this.f12839c && imageViewPageScroll.E != null) {
                                imageViewPageScroll.h0(false);
                                imageViewPageScroll.c0(viewItem.f + 1);
                                imageViewPageScroll.c0(viewItem.f - 1);
                            }
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

        public LoadTask(ImageViewPageScroll imageViewPageScroll, boolean z) {
            WeakReference weakReference = new WeakReference(imageViewPageScroll);
            this.e = weakReference;
            final ImageViewPageScroll imageViewPageScroll2 = (ImageViewPageScroll) weakReference.get();
            if (imageViewPageScroll2 == null) {
                return;
            }
            this.f = z;
            imageViewPageScroll2.b0 = false;
            ImageViewControl imageViewControl = imageViewPageScroll2.S;
            if (imageViewControl != null) {
                imageViewControl.A();
            }
            MyCoverView myCoverView = imageViewPageScroll2.Q;
            if (myCoverView != null) {
                myCoverView.m(false);
                if (imageViewPageScroll2.v == 12) {
                    imageViewPageScroll2.Q.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.20
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                            if (imageViewPageScroll3.d0 == null) {
                                return;
                            }
                            MainUtil.e8(imageViewPageScroll3.b, R.string.server_delay);
                        }
                    }, 5000L);
                }
            }
            MainUtil.c();
            imageViewPageScroll2.b1(-1, -1);
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
                com.mycompany.app.image.ImageViewPageScroll r0 = (com.mycompany.app.image.ImageViewPageScroll) r0
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
                com.mycompany.app.image.ImageViewPageScroll.Q(r0)
            Lbf:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageScroll.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ImageViewPageScroll imageViewPageScroll;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) != null) {
                imageViewPageScroll.d0 = null;
                imageViewPageScroll.F = null;
                boolean z = false;
                imageViewPageScroll.c0 = false;
                if (imageViewPageScroll.O0()) {
                    i = PrefImage.u;
                } else {
                    i = PrefImage.t;
                }
                if (i != 1) {
                    z = true;
                }
                if (z) {
                    imageViewPageScroll.i0(true);
                    return;
                }
                MyCoverView myCoverView = imageViewPageScroll.Q;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final ImageViewPageScroll imageViewPageScroll;
            WeakReference weakReference = this.e;
            if (weakReference != null && (imageViewPageScroll = (ImageViewPageScroll) weakReference.get()) != null) {
                imageViewPageScroll.d0 = null;
                imageViewPageScroll.F = null;
                if (this.g) {
                    MyCoverView myCoverView = imageViewPageScroll.Q;
                    if (myCoverView != null && !myCoverView.t) {
                        myCoverView.t = true;
                        myCoverView.invalidate();
                    }
                    if (imageViewPageScroll.f16128c != null && !imageViewPageScroll.S0()) {
                        imageViewPageScroll.r0();
                        imageViewPageScroll.o0(true);
                        if (imageViewPageScroll.E == null) {
                            return;
                        }
                        imageViewPageScroll.I0 = true;
                        MainApp.K1 = true;
                        DialogEditText dialogEditText = new DialogEditText(imageViewPageScroll.f16128c, R.string.password, imageViewPageScroll.E.t(), imageViewPageScroll.u, true, new DialogEditText.EditTextListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.18
                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void a(String str) {
                                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                imageViewPageScroll2.H = str;
                                imageViewPageScroll2.r0();
                                imageViewPageScroll2.j0(false);
                            }

                            @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                            public final void b() {
                                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                ImageViewPageScroll.Q(imageViewPageScroll2);
                                ImageViewPageScroll.R(imageViewPageScroll2, false, true);
                            }
                        });
                        imageViewPageScroll.G = dialogEditText;
                        dialogEditText.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.19
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ImageViewPageScroll.this.r0();
                            }
                        });
                        return;
                    }
                    return;
                }
                ImageViewPageScroll.R(imageViewPageScroll, this.f, false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r2v19, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.mycompany.app.image.ImageViewPager, androidx.viewpager.widget.ViewPager, android.view.View, java.lang.Object] */
    public ImageViewPageScroll(Context context, ImageViewActivity imageViewActivity, Window window, Intent intent, ImageViewActivity.SavedItem savedItem) {
        int intExtra;
        this.b = context;
        this.f16128c = imageViewActivity;
        this.d = window;
        if (MainUtil.O5(context)) {
            this.f = !PrefImage.s;
        } else {
            this.f = PrefImage.s;
        }
        c1();
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
            this.P = savedItem.n;
            this.M = savedItem.o;
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
        this.Z = new DisplayImageOptions(builder);
        this.J0 = new Handler(Looper.getMainLooper());
        ImageViewActivity imageViewActivity2 = this.f16128c;
        if (imageViewActivity2 != null) {
            imageViewActivity2.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.34
                @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                public final boolean a() {
                    return false;
                }

                @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                public final boolean b() {
                    ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                    if (imageViewPageScroll.M0() && !imageViewPageScroll.O0()) {
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
        g1();
        if (Build.VERSION.SDK_INT < 30) {
            ImageViewActivity imageViewActivity3 = this.f16128c;
            View a0 = imageViewActivity3 == null ? null : imageViewActivity3.a0();
            if (a0 != null) {
                a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.1
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public final void onSystemUiVisibilityChange(int i3) {
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        if (imageViewPageScroll.d != null) {
                            if ((i3 & 4) == 4) {
                                if (imageViewPageScroll.M0()) {
                                    imageViewPageScroll.g1();
                                }
                            } else if (!imageViewPageScroll.M0()) {
                                imageViewPageScroll.g1();
                            }
                        }
                    }
                });
            }
        }
        this.B = new EventHandler(this);
        ImageViewActivity imageViewActivity4 = this.f16128c;
        if (imageViewActivity4 == null) {
            return;
        }
        ?? frameLayout = new FrameLayout(imageViewActivity4);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ?? viewPager = new ViewPager(imageViewActivity4);
        try {
            Field declaredField = ViewPager.class.getDeclaredField("n");
            if (declaredField != 0) {
                declaredField.setAccessible(true);
                declaredField.set(viewPager, new Scroller(imageViewActivity4, new LinearInterpolator()));
            }
        } catch (Exception unused) {
        }
        frameLayout.addView(viewPager, -1, -1);
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
        MyCoverView myCoverView = new MyCoverView(imageViewActivity4, -1, MainApp.y1, MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
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
        this.K = viewPager;
        this.N = myButtonImage;
        this.Q = myCoverView;
        this.R = imageCoverView;
        this.S = imageViewControl;
        this.V = myFadeLinear;
        this.W = view;
        this.X = appCompatTextView;
        this.Y = appCompatTextView2;
        this.f16128c.setContentView((View) frameLayout);
        MySizeFrame mySizeFrame = this.J;
        if (mySizeFrame == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.2
            @Override // java.lang.Runnable
            public final void run() {
                final ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                if (imageViewPageScroll.J != null) {
                    if (imageViewPageScroll.p != 0) {
                        ImageViewActivity imageViewActivity5 = imageViewPageScroll.f16128c;
                        if (imageViewActivity5 != null) {
                            imageViewActivity5.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageScroll.P(ImageViewPageScroll.this);
                                }
                            });
                        } else {
                            return;
                        }
                    }
                    imageViewPageScroll.J.setBackgroundColor(PrefImage.B);
                    imageViewPageScroll.J.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.4
                        @Override // com.mycompany.app.image.ImageSizeListener
                        public final void a(View view2, int i5, int i6) {
                            MySizeFrame mySizeFrame2;
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            if (imageViewPageScroll2.O0 == null || (mySizeFrame2 = imageViewPageScroll2.J) == null) {
                                return;
                            }
                            mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageTransView imageTransView = ImageViewPageScroll.this.O0;
                                    if (imageTransView != null) {
                                        imageTransView.l();
                                    }
                                }
                            });
                        }
                    });
                    imageViewPageScroll.K.setOffscreenPageLimit(1);
                    imageViewPageScroll.K.setPageMargin(MainUtil.S1(imageViewPageScroll.f16128c));
                    ImageViewPager imageViewPager = imageViewPageScroll.K;
                    PageChangeListener pageChangeListener = new PageChangeListener();
                    if (imageViewPager.V == null) {
                        imageViewPager.V = new ArrayList();
                    }
                    imageViewPager.V.add(pageChangeListener);
                    imageViewPageScroll.K.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.5
                        @Override // com.mycompany.app.image.ImageSizeListener
                        public final void a(View view2, int i5, int i6) {
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            ImageViewPager imageViewPager2 = imageViewPageScroll2.K;
                            if (imageViewPager2 != null) {
                                imageViewPager2.w();
                                if (imageViewPageScroll2.S != null && imageViewPageScroll2.T > -1 && imageViewPageScroll2.U > -1) {
                                    int i7 = imageViewPageScroll2.z;
                                    if ((i7 == 3 || i7 == 4) && MainUtil.H5(imageViewPageScroll2.f16128c)) {
                                        imageViewPageScroll2.S.n(!MainUtil.E5(imageViewPageScroll2.f16128c), i5, i6, imageViewPageScroll2.T / 2, imageViewPageScroll2.U);
                                        return;
                                    }
                                    imageViewPageScroll2.S.n(!MainUtil.E5(imageViewPageScroll2.f16128c), i5, i6, imageViewPageScroll2.T, imageViewPageScroll2.U);
                                }
                            }
                        }
                    });
                    imageViewPageScroll.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            if (!imageViewPageScroll2.z0 && !imageViewPageScroll2.N0() && !imageViewPageScroll2.Q0()) {
                                imageViewPageScroll2.m1(true);
                            }
                        }
                    });
                    if (imageViewPageScroll.P) {
                        imageViewPageScroll.P = false;
                        imageViewPageScroll.m1(false);
                    }
                    imageViewPageScroll.G0 = new GestureDetector(imageViewPageScroll.f16128c, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.7
                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            if (imageViewPageScroll2.R0()) {
                                imageViewPageScroll2.G0(false);
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            if (Math.abs(f5) < 200.0f) {
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            float y = motionEvent2.getY() - motionEvent.getY();
                            int i5 = MainApp.s1;
                            if (y < (-i5)) {
                                ZoomImageAttacher zoomImageAttacher = imageViewPageScroll2.i0;
                                if (zoomImageAttacher != null && zoomImageAttacher.o()) {
                                    imageViewPageScroll2.n1(false);
                                } else {
                                    imageViewPageScroll2.G0(false);
                                }
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            if (y > i5) {
                                ZoomImageAttacher zoomImageAttacher2 = imageViewPageScroll2.i0;
                                if (zoomImageAttacher2 != null && zoomImageAttacher2.p()) {
                                    imageViewPageScroll2.n1(false);
                                } else {
                                    imageViewPageScroll2.G0(false);
                                }
                                return super.onFling(motionEvent, motionEvent2, f4, f5);
                            }
                            imageViewPageScroll2.G0(false);
                            return super.onFling(motionEvent, motionEvent2, f4, f5);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
                            ImageViewPageScroll.this.G0(false);
                            return super.onScroll(motionEvent, motionEvent2, f4, f5);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onSingleTapUp(MotionEvent motionEvent) {
                            int i5;
                            int i6;
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            if (!imageViewPageScroll2.Q0()) {
                                return super.onSingleTapUp(motionEvent);
                            }
                            ImageViewControl imageViewControl2 = imageViewPageScroll2.S;
                            if (imageViewControl2 != null && !imageViewControl2.k(motionEvent.getY())) {
                                if (imageViewPageScroll2.O0()) {
                                    i5 = PrefImage.H;
                                    i6 = PrefImage.I;
                                } else {
                                    i5 = PrefImage.F;
                                    i6 = PrefImage.G;
                                }
                                float x = motionEvent.getX();
                                boolean z = true;
                                boolean z2 = false;
                                if (x < i5) {
                                    if (PrefImage.D != 0) {
                                        z = false;
                                    }
                                    z2 = z;
                                    z = false;
                                } else if (x <= imageViewPageScroll2.J.getWidth() - i6 || PrefImage.E != 0) {
                                    z = false;
                                }
                                if (z2) {
                                    imageViewPageScroll2.Y0();
                                } else if (z) {
                                    imageViewPageScroll2.d1();
                                } else {
                                    imageViewPageScroll2.q1();
                                }
                                return super.onSingleTapUp(motionEvent);
                            }
                            return super.onSingleTapUp(motionEvent);
                        }
                    });
                    MySizeFrame mySizeFrame2 = imageViewPageScroll.J;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            ImageViewControl imageViewControl2 = imageViewPageScroll2.S;
                            if (imageViewControl2 != null) {
                                imageViewControl2.s(imageViewPageScroll2.f16128c, imageViewPageScroll2.d, imageViewPageScroll2.f, imageViewPageScroll2);
                                imageViewPageScroll2.S.setIconType(imageViewPageScroll2.v);
                                MySizeFrame mySizeFrame3 = imageViewPageScroll2.J;
                                if (mySizeFrame3 == null) {
                                    return;
                                }
                                mySizeFrame3.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.8.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                        if (imageViewPageScroll3.J == null) {
                                            return;
                                        }
                                        boolean z = imageViewPageScroll3.l;
                                        imageViewPageScroll3.l = false;
                                        if (!z) {
                                            imageViewPageScroll3.Z0();
                                        } else {
                                            int i5 = imageViewPageScroll3.v;
                                            if (i5 == 2) {
                                                ImageViewActivity imageViewActivity6 = imageViewPageScroll3.f16128c;
                                                if (imageViewActivity6 != null) {
                                                    imageViewActivity6.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.9
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            MainItem.ChildItem a2;
                                                            ImageViewPageScroll imageViewPageScroll4 = ImageViewPageScroll.this;
                                                            Context context2 = imageViewPageScroll4.b;
                                                            if (context2 != null) {
                                                                imageViewPageScroll4.u = MainUtil.b1(context2, imageViewPageScroll4.w);
                                                                if (PrefList.q && (a2 = DbPdf.a(imageViewPageScroll4.b, imageViewPageScroll4.w)) != null) {
                                                                    imageViewPageScroll4.x = a2.s;
                                                                    imageViewPageScroll4.y = a2.t;
                                                                    imageViewPageScroll4.z = a2.u;
                                                                }
                                                                MySizeFrame mySizeFrame4 = imageViewPageScroll4.J;
                                                                if (mySizeFrame4 == null) {
                                                                    return;
                                                                }
                                                                mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.9.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewPageScroll.this.Z0();
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    });
                                                }
                                            } else if (i5 == 3) {
                                                ImageViewActivity imageViewActivity7 = imageViewPageScroll3.f16128c;
                                                if (imageViewActivity7 != null) {
                                                    imageViewActivity7.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.10
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            ImageViewPageScroll imageViewPageScroll4 = ImageViewPageScroll.this;
                                                            Context context2 = imageViewPageScroll4.b;
                                                            if (context2 != null) {
                                                                imageViewPageScroll4.u = MainUtil.b1(context2, imageViewPageScroll4.w);
                                                                if (PrefList.q) {
                                                                    MainItem.ChildItem a2 = DbCmp.a(imageViewPageScroll4.b, imageViewPageScroll4.w);
                                                                    if (a2 != null) {
                                                                        imageViewPageScroll4.x = a2.s;
                                                                        imageViewPageScroll4.y = a2.t;
                                                                        imageViewPageScroll4.z = a2.u;
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                                MySizeFrame mySizeFrame4 = imageViewPageScroll4.J;
                                                                if (mySizeFrame4 == null) {
                                                                    return;
                                                                }
                                                                mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.10.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewPageScroll.this.Z0();
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    });
                                                }
                                            } else {
                                                imageViewPageScroll3.Z0();
                                            }
                                        }
                                        MainUtil.d5(imageViewPageScroll3.b);
                                        MainUtil.s7(imageViewPageScroll3.b);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void N(ImageViewPageScroll imageViewPageScroll) {
        MySizeFrame mySizeFrame = imageViewPageScroll.J;
        if (mySizeFrame != null) {
            try {
                ImageTransView imageTransView = imageViewPageScroll.O0;
                if (imageTransView != null) {
                    imageTransView.g();
                    return;
                }
                ImageViewControl imageViewControl = imageViewPageScroll.S;
                if (imageViewControl != null) {
                    int indexOfChild = mySizeFrame.indexOfChild(imageViewControl);
                    Compress compress = imageViewPageScroll.E;
                    if (compress != null) {
                        boolean u = imageViewPageScroll.E.u(compress.n(imageViewPageScroll.y));
                        ImageTransView imageTransView2 = new ImageTransView(imageViewPageScroll.f16128c);
                        imageViewPageScroll.O0 = imageTransView2;
                        MySizeFrame mySizeFrame2 = imageViewPageScroll.J;
                        ImageTransView.ImageTransListener imageTransListener = new ImageTransView.ImageTransListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.64
                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void b() {
                                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                if (imageViewPageScroll2.b0) {
                                    if (imageViewPageScroll2.N0()) {
                                        MainUtil.e8(imageViewPageScroll2.b, R.string.wait_retry);
                                        return;
                                    }
                                    imageViewPageScroll2.L0();
                                    imageViewPageScroll2.o0(true);
                                    Compress compress2 = imageViewPageScroll2.E;
                                    if (compress2 == null) {
                                        return;
                                    }
                                    ImageViewPageScroll.U(imageViewPageScroll2, compress2.n(imageViewPageScroll2.y), null, false);
                                }
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void c(boolean z) {
                                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                if (!imageViewPageScroll2.b0) {
                                    return;
                                }
                                if (imageViewPageScroll2.N0()) {
                                    MainUtil.e8(imageViewPageScroll2.b, R.string.wait_retry);
                                    return;
                                }
                                if (z && PrefAlbum.F) {
                                    ImageViewPageScroll.W(imageViewPageScroll2);
                                    return;
                                }
                                imageViewPageScroll2.L0();
                                imageViewPageScroll2.o0(true);
                                ImageViewPageScroll.b0(imageViewPageScroll2, z);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void d() {
                                ImageViewPageScroll.X(ImageViewPageScroll.this);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void e(View view) {
                                ImageViewPageScroll.Z(ImageViewPageScroll.this, view);
                            }

                            @Override // com.mycompany.app.image.ImageTransView.ImageTransListener
                            public final void f(View view) {
                                ImageViewPageScroll.a0(ImageViewPageScroll.this, view);
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

    public static void O(ImageViewPageScroll imageViewPageScroll, MainItem.ViewItem viewItem, Bitmap bitmap) {
        MyImageView myImageView;
        MainItem.ViewItem viewItem2;
        boolean z;
        boolean z2;
        MainItem.ViewItem viewItem3;
        MainItem.ViewItem viewItem4;
        MainItem.ViewItem viewItem5;
        MainItem.ViewItem viewItem6;
        boolean z3;
        ArrayList arrayList;
        if (imageViewPageScroll.K != null && (arrayList = imageViewPageScroll.f0) != null && !arrayList.isEmpty() && imageViewPageScroll.f0.size() >= imageViewPageScroll.K.getChildCount()) {
            ImageTask imageTask = (ImageTask) imageViewPageScroll.f0.get(0);
            imageViewPageScroll.f0.remove(0);
            if (imageTask != null) {
                imageTask.f12839c = true;
            }
        }
        if (imageViewPageScroll.E != null && viewItem != null && !viewItem.m && (myImageView = viewItem.d) != null && (viewItem2 = (MainItem.ViewItem) myImageView.getTag()) != null && viewItem2.e == viewItem.e && viewItem2.f == viewItem.f && viewItem2.g == viewItem.g && viewItem2.h == viewItem.h) {
            if (bitmap != null && !bitmap.isRecycled()) {
                if (MainUtil.H5(imageViewPageScroll.f16128c)) {
                    int i = viewItem.g;
                    if ((i == 3 || i == 4) && bitmap.getWidth() <= bitmap.getHeight()) {
                        if (imageViewPageScroll.x >= 2 && imageViewPageScroll.K != null && MainUtil.H5(imageViewPageScroll.f16128c)) {
                            int i2 = viewItem.e;
                            int i3 = imageViewPageScroll.h0;
                            if (i2 < i3) {
                                if (imageViewPageScroll.f) {
                                    viewItem.f = (viewItem.f + 1) % imageViewPageScroll.x;
                                } else {
                                    int i4 = viewItem.f;
                                    int i5 = imageViewPageScroll.x;
                                    viewItem.f = a.B(i4, i5, 1, i5);
                                }
                                viewItem.g = 0;
                                viewItem.h = 4;
                                viewItem.m = false;
                                viewItem.d.setTag(viewItem);
                                imageViewPageScroll.T0(viewItem);
                                int childCount = imageViewPageScroll.K.getChildCount();
                                for (int i6 = 0; i6 < childCount; i6++) {
                                    View childAt = imageViewPageScroll.K.getChildAt(i6);
                                    if (childAt != null && (viewItem6 = (MainItem.ViewItem) childAt.getTag()) != null && viewItem6.e == viewItem.e - 1) {
                                        viewItem6.f = viewItem.f;
                                        viewItem6.g = 0;
                                        viewItem6.h = 3;
                                        viewItem6.m = false;
                                        viewItem6.d.setTag(viewItem6);
                                        imageViewPageScroll.T0(viewItem6);
                                        return;
                                    }
                                }
                                return;
                            }
                            if (i2 > i3) {
                                if (imageViewPageScroll.f) {
                                    int i7 = viewItem.f;
                                    int i8 = imageViewPageScroll.x;
                                    viewItem.f = a.B(i7, i8, 1, i8);
                                } else {
                                    viewItem.f = (viewItem.f + 1) % imageViewPageScroll.x;
                                }
                                viewItem.g = 0;
                                viewItem.h = 3;
                                viewItem.m = false;
                                viewItem.d.setTag(viewItem);
                                imageViewPageScroll.T0(viewItem);
                                int childCount2 = imageViewPageScroll.K.getChildCount();
                                for (int i9 = 0; i9 < childCount2; i9++) {
                                    View childAt2 = imageViewPageScroll.K.getChildAt(i9);
                                    if (childAt2 != null && (viewItem5 = (MainItem.ViewItem) childAt2.getTag()) != null && viewItem5.e == viewItem.e + 1) {
                                        viewItem5.f = viewItem.f;
                                        viewItem5.g = 0;
                                        viewItem5.h = 4;
                                        viewItem5.m = false;
                                        viewItem5.d.setTag(viewItem5);
                                        imageViewPageScroll.T0(viewItem5);
                                        return;
                                    }
                                }
                                return;
                            }
                            int childCount3 = imageViewPageScroll.K.getChildCount();
                            int i10 = -1;
                            boolean z4 = false;
                            int i11 = -1;
                            int i12 = -1;
                            int i13 = -1;
                            int i14 = -1;
                            int i15 = -1;
                            int i16 = -1;
                            int i17 = -1;
                            for (int i18 = 0; i18 < childCount3; i18++) {
                                View childAt3 = imageViewPageScroll.K.getChildAt(i18);
                                if (childAt3 != null && (viewItem4 = (MainItem.ViewItem) childAt3.getTag()) != null) {
                                    int i19 = viewItem4.e;
                                    int i20 = viewItem.e;
                                    if (i19 == i20 - 1) {
                                        int i21 = viewItem4.f;
                                        int i22 = viewItem.f;
                                        if (i21 == i22) {
                                            if (imageViewPageScroll.f) {
                                                viewItem4.f = (i22 + 1) % imageViewPageScroll.x;
                                            } else {
                                                int i23 = imageViewPageScroll.x;
                                                viewItem4.f = a.B(i22, i23, 1, i23);
                                            }
                                            viewItem4.g = 0;
                                            viewItem4.h = 4;
                                            viewItem4.m = false;
                                            viewItem4.d.setTag(viewItem4);
                                            imageViewPageScroll.T0(viewItem4);
                                            i10 = viewItem.e - 2;
                                            i13 = viewItem4.f;
                                            i14 = 0;
                                            i15 = 3;
                                            z4 = true;
                                        }
                                    } else if (i19 == i20 + 1) {
                                        int i24 = viewItem4.f;
                                        int i25 = viewItem.f;
                                        if (i24 == i25) {
                                            if (imageViewPageScroll.f) {
                                                int i26 = imageViewPageScroll.x;
                                                viewItem4.f = a.B(i25, i26, 1, i26);
                                            } else {
                                                viewItem4.f = (i25 + 1) % imageViewPageScroll.x;
                                            }
                                            viewItem4.g = 0;
                                            viewItem4.h = 3;
                                            viewItem4.m = false;
                                            viewItem4.d.setTag(viewItem4);
                                            imageViewPageScroll.T0(viewItem4);
                                            i12 = viewItem.e + 2;
                                            i16 = viewItem4.f;
                                            i11 = 4;
                                            i17 = 0;
                                            z4 = true;
                                        }
                                    }
                                }
                            }
                            if (z4) {
                                for (int i27 = 0; i27 < childCount3; i27++) {
                                    View childAt4 = imageViewPageScroll.K.getChildAt(i27);
                                    if (childAt4 != null && (viewItem3 = (MainItem.ViewItem) childAt4.getTag()) != null) {
                                        int i28 = viewItem3.e;
                                        if (i28 == i10) {
                                            viewItem3.f = i13;
                                            viewItem3.g = i14;
                                            viewItem3.h = i15;
                                            viewItem3.m = false;
                                            viewItem3.d.setTag(viewItem3);
                                            imageViewPageScroll.T0(viewItem3);
                                        } else if (i28 == i12) {
                                            viewItem3.f = i16;
                                            viewItem3.g = i17;
                                            viewItem3.h = i11;
                                            viewItem3.m = false;
                                            viewItem3.d.setTag(viewItem3);
                                            imageViewPageScroll.T0(viewItem3);
                                        }
                                    }
                                }
                            }
                            viewItem.g = 2;
                        } else {
                            return;
                        }
                    }
                    if (viewItem.g == 0) {
                        if (bitmap.getWidth() > bitmap.getHeight()) {
                            viewItem.g = viewItem.h;
                        } else {
                            viewItem.g = 2;
                        }
                        viewItem.h = 0;
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    int i29 = viewItem.g;
                    if (i29 == 3 || i29 == 4) {
                        z2 = z3;
                        z = true;
                    } else {
                        z2 = z3;
                        z = false;
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                if (!z) {
                    viewItem.m = true;
                    viewItem.d.setTag(viewItem);
                    MyImageView myImageView2 = viewItem.d;
                    if (myImageView2 != null) {
                        myImageView2.post(new AnonymousClass26(viewItem, bitmap));
                    }
                    if (imageViewPageScroll.E != null) {
                        imageViewPageScroll.h0(false);
                        imageViewPageScroll.c0(viewItem.f + 1);
                        imageViewPageScroll.c0(viewItem.f - 1);
                        return;
                    }
                    return;
                }
                if (z2) {
                    viewItem.d.setTag(viewItem);
                }
                ImageTask imageTask2 = new ImageTask(imageViewPageScroll, viewItem, bitmap);
                imageTask2.b(imageViewPageScroll.b);
                if (imageViewPageScroll.f0 == null) {
                    imageViewPageScroll.f0 = new ArrayList();
                }
                imageViewPageScroll.f0.add(imageTask2);
                return;
            }
            imageViewPageScroll.o1(viewItem);
        }
    }

    public static void P(ImageViewPageScroll imageViewPageScroll) {
        List list;
        Context context = imageViewPageScroll.b;
        if (context != null && (list = DataUrl.b(context).b) != null && !list.isEmpty()) {
            int size = list.size();
            String str = null;
            String str2 = null;
            int i = -1;
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 != imageViewPageScroll.y) {
                    String str3 = (String) list.get(i2);
                    if (URLUtil.isNetworkUrl(str3) && (i == -1 || Math.abs(imageViewPageScroll.y - i2) < Math.abs(imageViewPageScroll.y - i))) {
                        i = i2;
                        str2 = str3;
                    }
                }
            }
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 != imageViewPageScroll.y && i4 != i) {
                    String str4 = (String) list.get(i4);
                    if (URLUtil.isNetworkUrl(str4) && (i3 == -1 || Math.abs(imageViewPageScroll.y - i4) < Math.abs(imageViewPageScroll.y - i3))) {
                        i3 = i4;
                        str = str4;
                    }
                }
            }
            imageViewPageScroll.Z0 = str2;
            imageViewPageScroll.a1 = i;
            imageViewPageScroll.b1 = str;
            imageViewPageScroll.c1 = i3;
            MySizeFrame mySizeFrame = imageViewPageScroll.J;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.29
                    @Override // java.lang.Runnable
                    public final void run() {
                        final ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                        String str5 = imageViewPageScroll2.Z0;
                        int i5 = imageViewPageScroll2.a1;
                        String str6 = imageViewPageScroll2.b1;
                        int i6 = imageViewPageScroll2.c1;
                        imageViewPageScroll2.Z0 = null;
                        imageViewPageScroll2.b1 = null;
                        if (!TextUtils.isEmpty(str5)) {
                            WebLoadWrap webLoadWrap = imageViewPageScroll2.q;
                            if (webLoadWrap == null) {
                                imageViewPageScroll2.q = WebLoadWrap.a(imageViewPageScroll2.p, imageViewPageScroll2.f16128c, imageViewPageScroll2.J, str5, i5, true, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.30
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewPageScroll.S(ImageViewPageScroll.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                        if (imageViewPageScroll3.s || (imageViewActivity = imageViewPageScroll3.f16128c) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass32());
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
                            WebLoadWrap webLoadWrap2 = imageViewPageScroll2.r;
                            if (webLoadWrap2 == null) {
                                imageViewPageScroll2.r = WebLoadWrap.a(imageViewPageScroll2.p, imageViewPageScroll2.f16128c, imageViewPageScroll2.J, str6, i6, false, new WebLoadWrap.EmgLoadListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.31
                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void b(int i7, String str7) {
                                        ImageViewPageScroll.S(ImageViewPageScroll.this, i7, str7);
                                    }

                                    @Override // com.mycompany.app.web.WebLoadWrap.EmgLoadListener
                                    public final void c() {
                                        ImageViewActivity imageViewActivity;
                                        ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                        if (imageViewPageScroll3.s || (imageViewActivity = imageViewPageScroll3.f16128c) == null) {
                                            return;
                                        }
                                        imageViewActivity.m0(new AnonymousClass32());
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
    public static void Q(ImageViewPageScroll imageViewPageScroll) {
        boolean z;
        int i;
        boolean z2;
        Compress compress = imageViewPageScroll.E;
        boolean z3 = false;
        if (compress != null && compress.R() != 0) {
            int R = compress.R();
            imageViewPageScroll.x = R;
            int i2 = imageViewPageScroll.y;
            if (i2 >= 0 && i2 <= R - 1 && imageViewPageScroll.z != 0) {
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
                imageViewPageScroll.y = i;
                imageViewPageScroll.z = 0;
            }
            if (!MainUtil.H5(imageViewPageScroll.f16128c)) {
                imageViewPageScroll.z = 1;
                return;
            }
            if (imageViewPageScroll.v != 12 && imageViewPageScroll.x > 0) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = compress;
                obj.r = imageViewPageScroll.m;
                ImageViewActivity imageViewActivity = imageViewPageScroll.f16128c;
                boolean O0 = imageViewPageScroll.O0();
                if (imageViewPageScroll.v == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.t = MainUtil.l0(imageViewActivity, O0, z2);
                if (imageViewPageScroll.v == 12) {
                    z3 = true;
                }
                obj.u = z3;
                int i3 = imageViewPageScroll.y;
                obj.f = i3;
                if (compress.g(i3) == null) {
                    ImageLoader.f().k(obj, imageViewPageScroll.Z);
                }
            }
            int i4 = imageViewPageScroll.z;
            if (i4 == 0 || i4 == 1) {
                int n0 = imageViewPageScroll.n0(imageViewPageScroll.y, true);
                imageViewPageScroll.z = n0;
                if (z) {
                    if (n0 == 3) {
                        imageViewPageScroll.z = 4;
                        return;
                    } else {
                        if (n0 == 4) {
                            imageViewPageScroll.z = 3;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        imageViewPageScroll.x = 0;
        imageViewPageScroll.y = 0;
        imageViewPageScroll.z = 2;
    }

    public static void R(ImageViewPageScroll imageViewPageScroll, boolean z, boolean z2) {
        int i;
        boolean z3;
        MySizeFrame mySizeFrame;
        imageViewPageScroll.c0 = false;
        if (imageViewPageScroll.O0()) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            imageViewPageScroll.i0(true);
            return;
        }
        boolean z4 = imageViewPageScroll.I;
        if (!z4) {
            imageViewPageScroll.o = null;
        }
        if (z) {
            if (imageViewPageScroll.v == 12 && DataUrl.b(imageViewPageScroll.b).a() > imageViewPageScroll.x) {
                MainUtil.f8(imageViewPageScroll.b, String.format(Locale.US, imageViewPageScroll.b.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewPageScroll.b).a() - imageViewPageScroll.x)));
            }
        } else if (z2) {
            MainUtil.e8(imageViewPageScroll.b, R.string.invalid_password);
        } else if (!z4) {
            if (imageViewPageScroll.v == 12 && DataUrl.b(imageViewPageScroll.b).a() > imageViewPageScroll.x) {
                MainUtil.f8(imageViewPageScroll.b, String.format(Locale.US, imageViewPageScroll.b.getString(R.string.filtered_image), Integer.valueOf(DataUrl.b(imageViewPageScroll.b).a() - imageViewPageScroll.x)));
            } else if (imageViewPageScroll.x == 0) {
                MainUtil.e8(imageViewPageScroll.b, R.string.no_image);
            }
        }
        ImageViewControl imageViewControl = imageViewPageScroll.S;
        if (imageViewControl != null) {
            imageViewControl.t(imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
            imageViewPageScroll.S.p(imageViewPageScroll.v, imageViewPageScroll.p, imageViewPageScroll.E);
        }
        imageViewPageScroll.W0(true);
        MyCoverView myCoverView = imageViewPageScroll.Q;
        if (myCoverView != null) {
            myCoverView.f(true);
        }
        imageViewPageScroll.b0 = true;
        if (!PrefZone.n0 || (mySizeFrame = imageViewPageScroll.J) == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.21
            @Override // java.lang.Runnable
            public final void run() {
                boolean z5 = PrefZone.n0;
                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                if (z5) {
                    ImageViewPageScroll.N(imageViewPageScroll2);
                    return;
                }
                ImageTransView imageTransView = imageViewPageScroll2.O0;
                if (imageTransView != null) {
                    imageTransView.e();
                    imageViewPageScroll2.O0 = null;
                }
            }
        });
    }

    public static void S(ImageViewPageScroll imageViewPageScroll, int i, String str) {
        MainItem.ViewItem viewItem;
        Compress compress = imageViewPageScroll.E;
        if (compress != null) {
            compress.T(i, str);
        }
        ImageViewPager imageViewPager = imageViewPageScroll.K;
        if (imageViewPager != null) {
            try {
                int childCount = imageViewPager.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = imageViewPageScroll.K.getChildAt(i2);
                    if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && i == viewItem.f) {
                        imageViewPageScroll.T0(viewItem);
                        ImageViewControl imageViewControl = imageViewPageScroll.S;
                        if (imageViewControl != null) {
                            imageViewControl.setPathChanged(i);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception unused) {
            }
            ImageViewControl imageViewControl2 = imageViewPageScroll.S;
            if (imageViewControl2 != null) {
                imageViewControl2.setPathChanged(i);
            }
            imageViewPageScroll.c0(i);
        }
    }

    public static void T(ImageViewPageScroll imageViewPageScroll) {
        ImageViewControl imageViewControl = imageViewPageScroll.S;
        if (imageViewControl != null) {
            String title = imageViewPageScroll.u;
            if (imageViewPageScroll.v == 2) {
                ImageViewActivity imageViewActivity = imageViewPageScroll.f16128c;
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
                        imageViewPageScroll.w);
                imageViewPageScroll.u = title;
            }
            imageViewControl.setTitle(title);
            imageViewPageScroll.S.t(imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
            Compress compress = imageViewPageScroll.E;
            if (compress != null) {
                boolean u = imageViewPageScroll.E.u(compress.n(imageViewPageScroll.y));
                ImageTransView imageTransView = imageViewPageScroll.O0;
                if (imageTransView != null) {
                    imageTransView.setIconTrans(u);
                }
                imageViewPageScroll.S.y(u);
            }
            if (imageViewPageScroll.T > -1 && imageViewPageScroll.U > -1) {
                int width = imageViewPageScroll.K.getWidth();
                int height = imageViewPageScroll.K.getHeight();
                int i = imageViewPageScroll.z;
                if ((i == 3 || i == 4) && MainUtil.H5(imageViewPageScroll.f16128c)) {
                    imageViewPageScroll.S.n(!MainUtil.E5(imageViewPageScroll.f16128c), width, height, imageViewPageScroll.T / 2, imageViewPageScroll.U);
                } else {
                    imageViewPageScroll.S.n(!MainUtil.E5(imageViewPageScroll.f16128c), width, height, imageViewPageScroll.T, imageViewPageScroll.U);
                }
                imageViewPageScroll.S.w();
            }
        }
    }

    public static void U(ImageViewPageScroll imageViewPageScroll, String str, String str2, boolean z) {
        Compress compress = imageViewPageScroll.E;
        if (compress != null) {
            compress.Q(str, str2, z);
            imageViewPageScroll.j1 = z;
            MySizeFrame mySizeFrame = imageViewPageScroll.J;
            if (mySizeFrame == null) {
                return;
            }
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.66
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                    boolean z2 = imageViewPageScroll2.j1;
                    MyCoverView myCoverView = imageViewPageScroll2.Q;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    WebTransOcrCtrl webTransOcrCtrl = imageViewPageScroll2.N0;
                    if (webTransOcrCtrl != null) {
                        webTransOcrCtrl.h(PrefAlbum.y, z2);
                    }
                    MySizeFrame mySizeFrame2 = imageViewPageScroll2.J;
                    if (mySizeFrame2 == null) {
                        return;
                    }
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.66.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageScroll.this.W0(true);
                        }
                    });
                }
            });
        }
    }

    public static void V(ImageViewPageScroll imageViewPageScroll, final MainItem.ViewItem viewItem) {
        MySizeFrame mySizeFrame;
        if (imageViewPageScroll.n && viewItem != null && imageViewPageScroll.E != null) {
            imageViewPageScroll.d0(viewItem);
            if (imageViewPageScroll.o.size() != imageViewPageScroll.x) {
                ArrayList arrayList = imageViewPageScroll.g0;
                if ((arrayList == null || arrayList.isEmpty()) && (mySizeFrame = imageViewPageScroll.J) != null) {
                    mySizeFrame.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.28
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainItem.ViewItem viewItem2;
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            if (imageViewPageScroll2.n && (viewItem2 = viewItem) != null && imageViewPageScroll2.E != null) {
                                int i = viewItem2.f + 1;
                                ArrayList arrayList2 = imageViewPageScroll2.o;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    if (imageViewPageScroll2.x != 0 && imageViewPageScroll2.E != null) {
                                        synchronized (imageViewPageScroll2.f16127a) {
                                            int i2 = 0;
                                            while (true) {
                                                try {
                                                    try {
                                                        int i3 = imageViewPageScroll2.x;
                                                        if (i2 >= i3) {
                                                            break;
                                                        }
                                                        int i4 = (i + i2) % i3;
                                                        String n = imageViewPageScroll2.E.n(i4);
                                                        if (!TextUtils.isEmpty(n) && !imageViewPageScroll2.o.contains(n)) {
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
                                    ImageViewPageScroll.this.c0(i);
                                }
                            }
                        }
                    }, 200L);
                }
            }
        }
    }

    public static void W(ImageViewPageScroll imageViewPageScroll) {
        if (imageViewPageScroll.f16128c == null || imageViewPageScroll.T0 != null) {
            return;
        }
        imageViewPageScroll.u0();
        imageViewPageScroll.I0 = true;
        MainApp.K1 = true;
        StringBuilder sb = new StringBuilder();
        com.google.android.gms.internal.mlkit_vision_text_common.a.x(imageViewPageScroll.b, R.string.ocr_trans_reload_1, sb, "\n");
        sb.append(imageViewPageScroll.b.getString(R.string.ocr_trans_reload_2));
        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageScroll.f16128c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.75
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                if (z) {
                    PrefAlbum.F = false;
                    PrefSet.d(0, imageViewPageScroll2.b, "mOcrReload", false);
                }
                imageViewPageScroll2.u0();
            }
        });
        imageViewPageScroll.T0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.76
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                imageViewPageScroll2.u0();
                imageViewPageScroll2.L0();
                imageViewPageScroll2.o0(true);
                ImageViewPageScroll.b0(imageViewPageScroll2, true);
            }
        });
    }

    public static void X(ImageViewPageScroll imageViewPageScroll) {
        if (imageViewPageScroll.f16128c == null || imageViewPageScroll.U0 != null) {
            return;
        }
        imageViewPageScroll.B0();
        imageViewPageScroll.I0 = true;
        MainApp.K1 = true;
        DialogSeekSimple dialogSeekSimple = new DialogSeekSimple(imageViewPageScroll.f16128c, 2, PrefAlbum.B, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.77
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                if (PrefAlbum.B == i) {
                    return;
                }
                PrefAlbum.B = i;
                PrefSet.f(ImageViewPageScroll.this.b, 0, i, "mOcrZoom");
            }
        });
        imageViewPageScroll.U0 = dialogSeekSimple;
        dialogSeekSimple.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.78
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll.this.B0();
            }
        });
    }

    public static void Y(ImageViewPageScroll imageViewPageScroll, String str, String str2, String str3) {
        if (imageViewPageScroll.f16128c == null || imageViewPageScroll.S0()) {
            return;
        }
        imageViewPageScroll.C0();
        imageViewPageScroll.o0(true);
        imageViewPageScroll.I0 = true;
        MainApp.K1 = true;
        imageViewPageScroll.e1 = str;
        imageViewPageScroll.f1 = str2;
        imageViewPageScroll.g1 = str3;
        DialogSetDown dialogSetDown = new DialogSetDown(imageViewPageScroll.f16128c, str, str3, imageViewPageScroll.O0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.54
            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
            public final void a(String str4, String str5, String str6) {
                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                String str7 = imageViewPageScroll2.e1;
                String str8 = imageViewPageScroll2.f1;
                String str9 = imageViewPageScroll2.g1;
                imageViewPageScroll2.e1 = null;
                imageViewPageScroll2.f1 = null;
                imageViewPageScroll2.g1 = null;
                MainUtil.G4(imageViewPageScroll2.f16128c, str5, str6, str7, imageViewPageScroll2.m, str8, str9);
            }
        });
        imageViewPageScroll.q0 = dialogSetDown;
        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.55
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll.this.C0();
            }
        });
    }

    public static void Z(ImageViewPageScroll imageViewPageScroll, View view) {
        boolean z;
        boolean z2;
        if (imageViewPageScroll.f16128c != null && imageViewPageScroll.X0 == null) {
            imageViewPageScroll.H0();
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewPageScroll.f16128c, imageViewPageScroll.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.82
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageScroll.this.H0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefAlbum.C != i4) {
                            PrefAlbum.C = i4;
                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            PrefSet.f(imageViewPageScroll2.b, 0, i4, "mOcrBack");
                            OcrDetector ocrDetector = imageViewPageScroll2.Y0;
                            if (ocrDetector != null) {
                                ocrDetector.J();
                            }
                        }
                        return true;
                    }
                });
                imageViewPageScroll.X0 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewPageScroll.f16128c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void a0(ImageViewPageScroll imageViewPageScroll, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (imageViewPageScroll.f16128c != null && imageViewPageScroll.W0 == null) {
            imageViewPageScroll.I0();
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(imageViewPageScroll.f16128c, imageViewPageScroll.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.81
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageScroll.this.I0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i2) {
                        if (PrefAlbum.A != i2) {
                            PrefAlbum.A = i2;
                            final ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                            PrefSet.f(imageViewPageScroll2.b, 0, i2, "mOcrLang");
                            WebTransOcrCtrl webTransOcrCtrl = imageViewPageScroll2.N0;
                            if (webTransOcrCtrl != null) {
                                webTransOcrCtrl.g();
                            }
                            ImageTransView imageTransView = imageViewPageScroll2.O0;
                            if (imageTransView != null) {
                                imageTransView.o();
                            }
                            if (PrefAlbum.E && PrefAlbum.A == 5 && imageViewPageScroll2.f16128c != null && imageViewPageScroll2.S0 == null) {
                                imageViewPageScroll2.s0();
                                imageViewPageScroll2.I0 = true;
                                MainApp.K1 = true;
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(imageViewPageScroll2.b, R.string.fast_down_guide, sb, "\n");
                                sb.append(imageViewPageScroll2.b.getString(R.string.dark_mode_info_2));
                                DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageScroll2.f16128c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.73
                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                    public final void a(boolean z7) {
                                        ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                        if (z7) {
                                            PrefAlbum.E = false;
                                            PrefSet.d(0, imageViewPageScroll3.b, "mOcrAuto", false);
                                        }
                                        imageViewPageScroll3.s0();
                                    }
                                });
                                imageViewPageScroll2.S0 = dialogConfirm;
                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.74
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        ImageViewPageScroll.this.s0();
                                    }
                                });
                            }
                        }
                        return true;
                    }
                });
                imageViewPageScroll.W0 = myPopupMenu;
                ImageViewActivity imageViewActivity = imageViewPageScroll.f16128c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public static void b0(ImageViewPageScroll imageViewPageScroll, boolean z) {
        if (imageViewPageScroll.f16128c == null) {
            return;
        }
        MyCoverView myCoverView = imageViewPageScroll.Q;
        if (myCoverView != null) {
            myCoverView.m(true);
        }
        imageViewPageScroll.k1 = z;
        imageViewPageScroll.f16128c.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.83
            @Override // java.lang.Runnable
            public final void run() {
                Bitmap bitmap;
                ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                boolean z2 = imageViewPageScroll2.k1;
                Compress compress = imageViewPageScroll2.E;
                if (compress != null) {
                    String n = compress.n(imageViewPageScroll2.y);
                    Compress compress2 = imageViewPageScroll2.E;
                    if (compress2 == null) {
                        bitmap = null;
                    } else {
                        String n2 = compress2.n(imageViewPageScroll2.y);
                        String r = imageViewPageScroll2.E.r(n2);
                        boolean isEmpty = TextUtils.isEmpty(r);
                        if (!isEmpty) {
                            imageViewPageScroll2.E.Q(n2, r, false);
                        }
                        Bitmap l0 = imageViewPageScroll2.l0();
                        if (!isEmpty) {
                            imageViewPageScroll2.E.Q(n2, r, true);
                        }
                        bitmap = l0;
                    }
                    String D = OcrDetector.D(n);
                    if (!z2 && MainUtil.f6(Compress.q(D))) {
                        ImageViewPageScroll.U(imageViewPageScroll2, n, D, true);
                        return;
                    }
                    imageViewPageScroll2.l1 = n;
                    imageViewPageScroll2.m1 = bitmap;
                    imageViewPageScroll2.n1 = D;
                    MySizeFrame mySizeFrame = imageViewPageScroll2.J;
                    if (mySizeFrame == null) {
                        return;
                    }
                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.83.1
                        /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.mycompany.app.ocr.OcrDetector] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                            String str = imageViewPageScroll3.l1;
                            Bitmap bitmap2 = imageViewPageScroll3.m1;
                            String str2 = imageViewPageScroll3.n1;
                            imageViewPageScroll3.l1 = null;
                            imageViewPageScroll3.m1 = null;
                            imageViewPageScroll3.n1 = null;
                            if (imageViewPageScroll3.f16128c != null) {
                                if (!MainUtil.f6(bitmap2)) {
                                    MyCoverView myCoverView2 = imageViewPageScroll3.Q;
                                    if (myCoverView2 != null) {
                                        myCoverView2.f(true);
                                        return;
                                    }
                                    return;
                                }
                                OcrDetector ocrDetector = imageViewPageScroll3.Y0;
                                if (ocrDetector != null) {
                                    ocrDetector.M(str, str2, bitmap2);
                                    return;
                                }
                                ?? obj = new Object();
                                imageViewPageScroll3.Y0 = obj;
                                ImageViewActivity imageViewActivity = imageViewPageScroll3.f16128c;
                                MySizeFrame mySizeFrame2 = imageViewPageScroll3.J;
                                OcrDetector.OcrListener ocrListener = new OcrDetector.OcrListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.86
                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void b(boolean z3) {
                                        ImageViewPageScroll imageViewPageScroll4 = ImageViewPageScroll.this;
                                        if (z3) {
                                            MyCoverView myCoverView3 = imageViewPageScroll4.Q;
                                            if (myCoverView3 != null) {
                                                myCoverView3.m(true);
                                                return;
                                            }
                                            return;
                                        }
                                        MyCoverView myCoverView4 = imageViewPageScroll4.Q;
                                        if (myCoverView4 != null) {
                                            myCoverView4.f(true);
                                        }
                                    }

                                    @Override // com.mycompany.app.ocr.OcrDetector.OcrListener
                                    public final void c(int i, String str3, String str4) {
                                        final ImageViewPageScroll imageViewPageScroll4 = ImageViewPageScroll.this;
                                        if (imageViewPageScroll4.b != null) {
                                            MyCoverView myCoverView3 = imageViewPageScroll4.Q;
                                            if (myCoverView3 != null) {
                                                myCoverView3.f(true);
                                            }
                                            if (i != 2) {
                                                if (i == 0) {
                                                    ImageViewPageScroll.U(imageViewPageScroll4, str3, str4, true);
                                                    return;
                                                }
                                                if (i == 1) {
                                                    if (PrefAlbum.D && PrefAlbum.A != 5) {
                                                        if (imageViewPageScroll4.f16128c == null || imageViewPageScroll4.R0 != null) {
                                                            return;
                                                        }
                                                        imageViewPageScroll4.t0();
                                                        imageViewPageScroll4.I0 = true;
                                                        MainApp.K1 = true;
                                                        StringBuilder sb = new StringBuilder();
                                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(imageViewPageScroll4.b, R.string.ocr_fail, sb, "\n\n");
                                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(imageViewPageScroll4.b, R.string.ocr_guide_2, sb, "\n");
                                                        sb.append(imageViewPageScroll4.b.getString(R.string.ocr_guide_3));
                                                        DialogConfirm dialogConfirm = new DialogConfirm((Activity) imageViewPageScroll4.f16128c, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.71
                                                            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                                            public final void a(boolean z3) {
                                                                ImageViewPageScroll imageViewPageScroll5 = ImageViewPageScroll.this;
                                                                if (z3) {
                                                                    PrefAlbum.D = false;
                                                                    PrefSet.d(0, imageViewPageScroll5.b, "mOcrNoti", false);
                                                                }
                                                                imageViewPageScroll5.t0();
                                                            }
                                                        });
                                                        imageViewPageScroll4.R0 = dialogConfirm;
                                                        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.72
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                ImageViewPageScroll.this.t0();
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    MainUtil.e8(imageViewPageScroll4.b, R.string.ocr_fail);
                                                    return;
                                                }
                                                MainUtil.e8(imageViewPageScroll4.b, R.string.fail);
                                            }
                                        }
                                    }
                                };
                                obj.m = imageViewActivity;
                                obj.n = mySizeFrame2;
                                obj.o = ocrListener;
                                obj.J();
                                imageViewPageScroll3.Y0.M(str, str2, bitmap2);
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
        if (this.E != null && this.K != null && (imageCoverView = this.R) != null && !imageCoverView.d()) {
            int i2 = this.x;
            if (i2 == 0) {
                if (P0()) {
                    a1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                return;
            }
            if (PrefImage.s) {
                if (this.y == 0 && P0()) {
                    a1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                } else {
                    int i3 = this.y;
                    int i4 = this.x;
                    i = a.B(i3, i4, 1, i4);
                }
            } else {
                if (this.y == i2 - 1 && P0()) {
                    a1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                i = (this.y + 1) % this.x;
            }
            h(i);
        }
    }

    public final void A0() {
        DialogSeekBright dialogSeekBright = this.l0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.l0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void B() {
        if (this.S == null || this.f16128c == null || S0()) {
            return;
        }
        x0();
        o0(true);
        this.I0 = true;
        MainApp.K1 = true;
        DataUrl.ImgCntItem imgCntItem = DataUrl.b(this.b).f12902c;
        this.j0 = false;
        DialogImageType dialogImageType = new DialogImageType(this.f16128c, imgCntItem, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.39
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.j0 = true;
                imageViewPageScroll.j0(true);
            }
        });
        this.k0 = dialogImageType;
        dialogImageType.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.40
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.x0();
                if (imageViewPageScroll.j0) {
                    imageViewPageScroll.j0 = false;
                } else {
                    imageViewPageScroll.j1(true);
                }
            }
        });
    }

    public final void B0() {
        DialogSeekSimple dialogSeekSimple = this.U0;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.U0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void C(RectF rectF, boolean z) {
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.j(rectF);
        }
    }

    public final void C0() {
        DialogSetDown dialogSetDown = this.q0;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.q0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
        this.e1 = null;
        this.f1 = null;
        this.g1 = null;
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void D(MotionEvent motionEvent, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        int i2;
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
                        return;
                    }
                    return;
                }
                if ((this.C0 || this.D0 || z) && !this.E0) {
                    if (MainUtil.I0(this.A0, motionEvent.getX(), this.B0, motionEvent.getY()) > MainApp.r1) {
                        z4 = true;
                    }
                    this.E0 = z4;
                    return;
                }
                return;
            }
            this.F0 = false;
            if (!this.E0 && !R0()) {
                if (!this.C0 && !this.D0) {
                    if (z) {
                        q1();
                        return;
                    }
                    return;
                } else {
                    if (z) {
                        k();
                        return;
                    }
                    return;
                }
            }
            this.C0 = false;
            this.D0 = false;
            this.E0 = false;
            return;
        }
        this.A0 = motionEvent.getX();
        this.B0 = motionEvent.getY();
        this.C0 = false;
        this.D0 = false;
        this.E0 = false;
        this.F0 = false;
        if (O0()) {
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
        } else if (f > this.J.getWidth() - i2) {
            if (PrefImage.E == 0) {
                z4 = true;
            }
            this.D0 = z4;
        }
    }

    public final void D0() {
        DialogSetImage dialogSetImage = this.s0;
        if (dialogSetImage != null) {
            dialogSetImage.dismiss();
            this.s0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void E() {
        if (P0()) {
            a1(this.x, this.y, this.z, 2, this.w, false, true);
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
        DialogSetImgTrans dialogSetImgTrans = this.V0;
        if (dialogSetImgTrans != null) {
            dialogSetImgTrans.dismiss();
            this.V0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void F(Configuration configuration) {
        if (!this.c0) {
            i0(true);
            DialogListBook dialogListBook = this.n0;
            if (dialogListBook != null) {
                dialogListBook.q(configuration);
            }
            DialogCapture dialogCapture = this.o0;
            if (dialogCapture != null) {
                dialogCapture.q(O0());
            }
            DialogDownUrl dialogDownUrl = this.p0;
            if (dialogDownUrl != null) {
                dialogDownUrl.S(O0());
            }
            DialogPreview dialogPreview = this.r0;
            if (dialogPreview != null) {
                dialogPreview.D(O0());
            }
            if (M0()) {
                g1();
            }
        }
    }

    public final void F0() {
        DialogTransLang dialogTransLang = this.P0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.P0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void G() {
        ImageViewActivity imageViewActivity;
        this.j = true;
        EventHandler eventHandler = this.B;
        int i = 0;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.B = null;
        }
        Compress compress = this.E;
        this.E = null;
        if (compress != null) {
            try {
                if (!this.y0 && this.v == 12) {
                    compress.a();
                }
            } catch (Exception unused) {
            }
        }
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager != null) {
            int childCount = imageViewPager.getChildCount();
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.K.getChildAt(i2);
                if (childAt != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(childAt);
                }
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    View view = (View) obj;
                    if (view != null) {
                        ((MyImageView) view).d();
                        this.K.removeView(view);
                    }
                }
            }
            this.K = null;
        }
        MyButtonImage myButtonImage = this.N;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.N = null;
        }
        MyCoverView myCoverView = this.Q;
        if (myCoverView != null) {
            myCoverView.i();
            this.Q = null;
        }
        ImageCoverView imageCoverView = this.R;
        if (imageCoverView != null) {
            ValueAnimator valueAnimator = imageCoverView.l;
            imageCoverView.l = null;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            imageCoverView.g = null;
            imageCoverView.h = null;
            imageCoverView.k = null;
            this.R = null;
        }
        MyFadeLinear myFadeLinear = this.V;
        if (myFadeLinear != null) {
            myFadeLinear.f();
            this.V = null;
        }
        MyFadeFrame myFadeFrame = this.H0;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.H0 = null;
        }
        MainUtil.R6(this.J0);
        this.J0 = null;
        this.b = null;
        this.d = null;
        this.o = null;
        this.u = null;
        this.J = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.G0 = null;
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.g();
            this.S = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.i0;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.i0 = null;
        }
        ImageViewActivity.SavedItem savedItem = this.g;
        if (savedItem != null && (imageViewActivity = this.f16128c) != null) {
            imageViewActivity.v0(savedItem);
        }
        this.f16128c = null;
        this.g = null;
    }

    public final void G0(boolean z) {
        MyFadeLinear myFadeLinear = this.V;
        if (myFadeLinear != null) {
            myFadeLinear.d(true, z);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean H(int i) {
        f1(true);
        if (PrefImage.o) {
            if (i != 24) {
                if (i != 25) {
                    return false;
                }
                if (!this.z0 && !N0() && !R0() && this.O == null) {
                    if (this.f) {
                        Y0();
                        return true;
                    }
                    d1();
                    return true;
                }
            } else if (!this.z0 && !N0() && !R0() && this.O == null) {
                if (this.f) {
                    d1();
                    return true;
                }
                Y0();
            }
            return true;
        }
        return false;
    }

    public final void H0() {
        MyPopupMenu myPopupMenu = this.X0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16128c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.X0 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void I(boolean z) {
        if (z) {
            this.j = true;
        }
        this.i = true;
        if (this.I0) {
            MainUtil.K7(this.f16128c, false);
        } else {
            DialogCapture dialogCapture = this.o0;
            if (dialogCapture != null && dialogCapture.U) {
                MainUtil.K7(this.f16128c, false);
            }
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.A();
        }
        DialogListBook dialogListBook = this.n0;
        if (dialogListBook != null) {
            dialogListBook.r(z);
        }
        DialogPreview dialogPreview = this.r0;
        if (dialogPreview != null) {
            dialogPreview.E();
        }
        K0();
        J0();
        V0();
        o0(true);
        c1();
        f1(false);
        h0(true);
        ListTask listTask = this.a0;
        if (listTask != null) {
            listTask.a();
            this.a0 = null;
        }
        if (!this.b0) {
            LoadTask loadTask = this.d0;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.d0 = null;
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
            p0();
            BookTask bookTask = this.e0;
            if (bookTask != null) {
                bookTask.f12839c = true;
            }
            this.e0 = null;
            g0();
            U0();
            OcrDetector ocrDetector = this.Y0;
            if (ocrDetector != null) {
                ocrDetector.E();
                this.Y0 = null;
            }
            MainApp.T1 = null;
        }
    }

    public final void I0() {
        MyPopupMenu myPopupMenu = this.W0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16128c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.W0 = null;
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageScroll.J():void");
    }

    public final void J0() {
        MyPopupMenu myPopupMenu = this.u0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16128c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.u0 = null;
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void K() {
        MySizeFrame mySizeFrame = this.J;
        if (mySizeFrame == null) {
            return;
        }
        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.33
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                if (imageViewPageScroll.J == null) {
                    return;
                }
                DialogCapture dialogCapture = imageViewPageScroll.o0;
                if (dialogCapture != null) {
                    dialogCapture.r();
                } else {
                    imageViewPageScroll.g1();
                }
            }
        });
    }

    public final void K0() {
        MyPopupMenu myPopupMenu = this.t0;
        if (myPopupMenu != null) {
            ImageViewActivity imageViewActivity = this.f16128c;
            if (imageViewActivity != null) {
                imageViewActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.t0 = null;
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final boolean L() {
        if (this.N0 != null) {
            L0();
            return true;
        }
        ImageGifView imageGifView = this.O;
        if (imageGifView != null) {
            imageGifView.d(true);
            return true;
        }
        return false;
    }

    public final void L0() {
        WebTransOcrCtrl webTransOcrCtrl = this.N0;
        if (webTransOcrCtrl != null) {
            webTransOcrCtrl.i(false);
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.setAutoHide(true);
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void M(int i) {
        this.e = i;
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl == null) {
            return;
        }
        imageViewControl.setNaviHeight(i);
        this.S.v();
    }

    public final boolean M0() {
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl == null) {
            return false;
        }
        return imageViewControl.f();
    }

    public final boolean N0() {
        MyCoverView myCoverView = this.Q;
        if (myCoverView != null && myCoverView.h()) {
            return true;
        }
        return false;
    }

    public final boolean O0() {
        ImageViewActivity imageViewActivity = this.f16128c;
        if (imageViewActivity == null) {
            return MainUtil.N5(this.b);
        }
        return imageViewActivity.h0();
    }

    public final boolean P0() {
        Compress compress = this.E;
        if (compress != null && this.v != 12 && !this.k && compress.i() > 1) {
            return true;
        }
        return false;
    }

    public final boolean Q0() {
        MainItem.ViewItem viewItem;
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager == null) {
            return false;
        }
        int childCount = imageViewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.K.getChildAt(i);
            if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.e == this.h0 && viewItem.m && viewItem.d != null) {
                return false;
            }
        }
        return true;
    }

    public final boolean R0() {
        if (this.L != 0) {
            return true;
        }
        return false;
    }

    public final boolean S0() {
        if (this.G != null || this.k0 != null || this.l0 != null || this.m0 != null || this.n0 != null || this.o0 != null || this.p0 != null || this.q0 != null || this.r0 != null || this.s0 != null || this.P0 != null || this.Q0 != null || this.R0 != null || this.S0 != null || this.T0 != null || this.U0 != null || this.V0 != null) {
            return true;
        }
        OcrDetector ocrDetector = this.Y0;
        if (ocrDetector != null && ocrDetector.P != null) {
            return true;
        }
        return false;
    }

    public final void T0(MainItem.ViewItem viewItem) {
        Compress compress = this.E;
        if (compress != null && viewItem != null && viewItem.d != null) {
            if (this.p == 0 || URLUtil.isNetworkUrl(compress.n(viewItem.f))) {
                h0(false);
                ImageLoader.f().c(viewItem, viewItem.d, this.Z, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.25
                    @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                    public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                        WebLoadWrap webLoadWrap;
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        if (imageViewPageScroll.p == 0) {
                            if (imageViewPageScroll.v == 12 && imageViewPageScroll.E != null && viewItem2 != null && failReason != null) {
                                String a3 = MainUtil.a3(viewItem2.q);
                                if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                    imageViewPageScroll.E.U(viewItem2.f, viewItem2.q, a3);
                                    viewItem2.q = a3;
                                    imageViewPageScroll.T0(viewItem2);
                                    return;
                                } else {
                                    FailReason.FailType failType = failReason.f20985a;
                                    if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                        imageViewPageScroll.E.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    }
                                }
                            }
                        } else if (viewItem2 != null && (webLoadWrap = imageViewPageScroll.q) != null) {
                            webLoadWrap.c(viewItem2.f);
                        }
                        ImageViewPageScroll.O(imageViewPageScroll, viewItem2, null);
                    }

                    @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                    public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        ImageViewPageScroll.O(imageViewPageScroll, viewItem2, bitmap);
                        imageViewPageScroll.d0(viewItem2);
                    }
                });
            }
        }
    }

    public final void U0() {
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

    public final void V0() {
        F0();
        v0();
        t0();
        s0();
        u0();
        B0();
        E0();
        I0();
        H0();
        FrameLayout frameLayout = this.M0;
        WebTransOcrCtrl webTransOcrCtrl = this.N0;
        this.M0 = null;
        this.N0 = null;
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

    public final void W0(boolean z) {
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager == null) {
            return;
        }
        if (z) {
            imageViewPager.setAdapter(new ViewPagerAdapter());
        }
        this.S.z(true);
        this.h0 = 50000;
        this.K.u(50000, false);
    }

    public final void X0() {
        Compress compress;
        if (this.N == null) {
            return;
        }
        boolean z = false;
        if (this.v == 12 && this.L != 1 && (compress = this.E) != null && this.x != 0) {
            String n = compress.n(this.y);
            if ("gif".equals(MainUtil.W3(n, MainUtil.Y5(n))) && !Q0()) {
                z = true;
            }
        }
        this.N.r(z, true);
    }

    public final void Y0() {
        ImageCoverView imageCoverView;
        if (this.E != null && this.K != null && !N0() && (imageCoverView = this.R) != null && !imageCoverView.d()) {
            this.F0 = true;
            int i = this.y;
            int i2 = this.z;
            this.A = 0;
            if (this.x == 0) {
                if (P0()) {
                    a1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                return;
            }
            if (!MainUtil.H5(this.f16128c)) {
                if (this.f) {
                    if (this.y == this.x - 1 && P0()) {
                        a1(this.x, this.y, this.z, 2, this.w, false, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                } else if (this.y == 0 && P0()) {
                    a1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                } else {
                    int i3 = this.y;
                    int i4 = this.x;
                    this.y = a.B(i3, i4, 1, i4);
                }
            } else if (this.z == 4) {
                this.z = 3;
            } else {
                if (this.f) {
                    if (this.y == this.x - 1 && P0()) {
                        a1(this.x, this.y, this.z, 2, this.w, false, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                } else if (this.y == 0 && P0()) {
                    a1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                } else {
                    int i5 = this.y;
                    int i6 = this.x;
                    this.y = a.B(i5, i6, 1, i6);
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
            int i7 = this.y;
            if (i != i7 || i2 != this.z) {
                this.h0--;
                this.S.t(this.x, i7, this.z);
                this.K.u(this.h0, true);
            }
        }
    }

    public final void Z0() {
        if (this.b == null) {
            return;
        }
        if (this.M == 1) {
            l1();
        } else {
            n1(false);
        }
        j0(false);
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean a() {
        ZoomImageAttacher zoomImageAttacher;
        if (this.S != null) {
            if (this.L == 1 || ((zoomImageAttacher = this.i0) != null && zoomImageAttacher.l)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void a1(int i, int i2, int i3, int i4, String str, boolean z, boolean z2) {
        List l;
        boolean z3;
        String str2;
        int j;
        MainItem.ChildItem childItem;
        if (this.E != null) {
            int i5 = this.v;
            if ((i5 == 1 || i5 == 2 || i5 == 3) && !TextUtils.isEmpty(str) && (l = this.E.l()) != null && l.size() >= 2) {
                if (i4 == 1) {
                    ImageCoverView imageCoverView = this.R;
                    if (imageCoverView != null && !imageCoverView.d()) {
                        p1(true);
                    } else {
                        return;
                    }
                } else if (i4 == 2) {
                    ImageCoverView imageCoverView2 = this.R;
                    if (imageCoverView2 != null && !imageCoverView2.d()) {
                        p1(false);
                    } else {
                        return;
                    }
                }
                ImageViewControl imageViewControl = this.S;
                if (imageViewControl != null) {
                    imageViewControl.A();
                }
                MyCoverView myCoverView = this.Q;
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
                    MyCoverView myCoverView2 = this.Q;
                    if (myCoverView2 != null) {
                        myCoverView2.f(true);
                        return;
                    }
                    return;
                }
                m0(childItem2, z2);
                MyCoverView myCoverView3 = this.Q;
                if (myCoverView3 != null) {
                    myCoverView3.j(PrefImage.B, this.u);
                }
                j0(false);
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void b(boolean z) {
        if (z) {
            if (M0()) {
                g1();
            }
        } else if (!S0()) {
            g1();
        }
    }

    public final void b1(int i, int i2) {
        if (this.S == null) {
            return;
        }
        this.T = i;
        this.U = i2;
        X0();
        if (this.S.e()) {
            h1();
        } else {
            this.S.z(true);
            this.S.post(new AnonymousClass22());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    @Override // com.mycompany.app.image.ImageViewWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageScroll.c(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void c0(int i) {
        boolean z;
        MainItem.ViewItem viewItem;
        Compress compress = this.E;
        if (compress != null && this.K != null) {
            if (this.p == 0 || URLUtil.isNetworkUrl(compress.n(i))) {
                boolean z2 = false;
                if (P0()) {
                    if (i < 0 || i >= this.x) {
                        return;
                    }
                } else if (i < 0) {
                    i = this.x - 1;
                } else if (i >= this.x) {
                    i = 0;
                }
                try {
                    int childCount = this.K.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = this.K.getChildAt(i2);
                        if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && i == viewItem.f) {
                            return;
                        }
                    }
                    ArrayList arrayList = this.g0;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        synchronized (this.f16127a) {
                            try {
                                ArrayList arrayList2 = new ArrayList(this.g0);
                                int size = arrayList2.size();
                                int i3 = 0;
                                while (i3 < size) {
                                    Object obj = arrayList2.get(i3);
                                    i3++;
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
                    ImageViewActivity imageViewActivity = this.f16128c;
                    boolean O0 = O0();
                    if (this.v == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    obj2.t = MainUtil.l0(imageViewActivity, O0, z);
                    if (this.v == 12) {
                        z2 = true;
                    }
                    obj2.u = z2;
                    if (this.f16128c != null) {
                        ImageView imageView2 = new ImageView(this.f16128c);
                        imageView2.setTag(Integer.valueOf(i));
                        if (this.g0 == null) {
                            this.g0 = new ArrayList();
                        }
                        this.g0.add(imageView2);
                        ImageLoader.f().c(obj2, imageView2, this.Z, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.27
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                                WebLoadWrap webLoadWrap;
                                ArrayList arrayList3;
                                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                                if (view != null && (arrayList3 = imageViewPageScroll.g0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageViewPageScroll.V(imageViewPageScroll, viewItem2);
                                if (imageViewPageScroll.p == 0) {
                                    if (imageViewPageScroll.v == 12 && imageViewPageScroll.E != null && viewItem2 != null && failReason != null) {
                                        String a3 = MainUtil.a3(viewItem2.q);
                                        if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                            imageViewPageScroll.E.U(viewItem2.f, viewItem2.q, a3);
                                            return;
                                        }
                                        FailReason.FailType failType = failReason.f20985a;
                                        if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                            imageViewPageScroll.E.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (viewItem2 != null && (webLoadWrap = imageViewPageScroll.q) != null) {
                                    webLoadWrap.c(viewItem2.f);
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void b(View view) {
                                ArrayList arrayList3;
                                if (view != null && (arrayList3 = ImageViewPageScroll.this.g0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                                ArrayList arrayList3;
                                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                                if (view != null && (arrayList3 = imageViewPageScroll.g0) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageViewPageScroll.V(imageViewPageScroll, viewItem2);
                            }
                        });
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final void c1() {
        this.v0 = MainUtil.E5(this.f16128c);
        this.w0 = MainUtil.H5(this.f16128c);
        this.x0 = MainUtil.S1(this.f16128c);
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void controlRotate(View view) {
        boolean z;
        boolean z2;
        if (this.S != null && this.t0 == null) {
            K0();
            if (view != null) {
                ImageViewControl imageViewControl = this.S;
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
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.f16128c, this.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.36
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageScroll.this.K0();
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i4) {
                        if (PrefImage.l != i4) {
                            PrefImage.l = i4;
                            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                            PrefSet.f(imageViewPageScroll.b, 3, i4, "mRotate");
                            MainUtil.o7(imageViewPageScroll.f16128c);
                            ImageViewControl imageViewControl2 = imageViewPageScroll.S;
                            if (imageViewControl2 != null) {
                                imageViewControl2.o();
                            }
                        }
                        return true;
                    }
                });
                this.t0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.f16128c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void d() {
        if (this.S == null) {
            return;
        }
        k0();
    }

    public final void d0(MainItem.ViewItem viewItem) {
        String n;
        if (this.n && viewItem != null && this.E != null) {
            synchronized (this.f16127a) {
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

    public final void d1() {
        ImageCoverView imageCoverView;
        if (this.E != null && this.K != null && !N0() && (imageCoverView = this.R) != null && !imageCoverView.d()) {
            this.F0 = true;
            int i = this.y;
            int i2 = this.z;
            this.A = 0;
            if (this.x == 0) {
                if (P0()) {
                    a1(this.x, this.y, this.z, 1, this.w, true, false);
                    return;
                }
                return;
            }
            if (!MainUtil.H5(this.f16128c)) {
                if (this.f) {
                    if (this.y == 0 && P0()) {
                        a1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    } else {
                        int i3 = this.y;
                        int i4 = this.x;
                        this.y = a.B(i3, i4, 1, i4);
                    }
                } else {
                    if (this.y == this.x - 1 && P0()) {
                        a1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    }
                    this.y = (this.y + 1) % this.x;
                }
            } else if (this.z == 3) {
                this.z = 4;
            } else {
                if (this.f) {
                    if (this.y == 0 && P0()) {
                        a1(this.x, this.y, this.z, 1, this.w, true, false);
                        return;
                    } else {
                        int i5 = this.y;
                        int i6 = this.x;
                        this.y = a.B(i5, i6, 1, i6);
                    }
                } else {
                    if (this.y == this.x - 1 && P0()) {
                        a1(this.x, this.y, this.z, 1, this.w, true, false);
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
            int i7 = this.y;
            if (i != i7 || i2 != this.z) {
                this.h0++;
                this.S.t(this.x, i7, this.z);
                this.K.u(this.h0, true);
            }
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

    public final void e0(MainItem.ViewItem viewItem) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        MainItem.ViewItem viewItem2;
        boolean z2;
        MainItem.ViewItem viewItem3;
        int B;
        MainItem.ViewItem viewItem4;
        MainItem.ViewItem viewItem5;
        int i8;
        if (this.x >= 2 && viewItem != null && this.K != null && MainUtil.H5(this.f16128c)) {
            try {
                int i9 = viewItem.g;
                int i10 = -1;
                if (i9 == 3) {
                    int childCount = this.K.getChildCount();
                    int i11 = -1;
                    int i12 = -1;
                    int i13 = -1;
                    int i14 = -1;
                    int i15 = -1;
                    int i16 = -1;
                    int i17 = -1;
                    z = false;
                    for (int i18 = 0; i18 < childCount; i18++) {
                        View childAt = this.K.getChildAt(i18);
                        if (childAt != null && (viewItem5 = (MainItem.ViewItem) childAt.getTag()) != null) {
                            int i19 = viewItem5.e;
                            int i20 = viewItem.e;
                            if (i19 == i20 - 1) {
                                int i21 = viewItem5.g;
                                if (i21 == 3) {
                                    if (this.f) {
                                        viewItem5.f = (viewItem.f + 1) % this.x;
                                    } else {
                                        int i22 = viewItem.f;
                                        int i23 = this.x;
                                        viewItem5.f = a.B(i22, i23, 1, i23);
                                    }
                                    viewItem5.g = 4;
                                    viewItem5.m = false;
                                    viewItem5.d.setTag(viewItem5);
                                    T0(viewItem5);
                                    i10 = viewItem.e - 2;
                                    i11 = viewItem5.f;
                                    i13 = 3;
                                    i15 = 0;
                                } else if (i21 == 0 && viewItem5.h != 4) {
                                    if (this.f) {
                                        viewItem5.f = (viewItem.f + 1) % this.x;
                                    } else {
                                        int i24 = viewItem.f;
                                        int i25 = this.x;
                                        viewItem5.f = a.B(i24, i25, 1, i25);
                                    }
                                    viewItem5.h = 4;
                                    viewItem5.m = false;
                                    viewItem5.d.setTag(viewItem5);
                                    T0(viewItem5);
                                    i10 = viewItem.e - 2;
                                    i11 = viewItem5.f;
                                    i13 = 0;
                                    i15 = 3;
                                }
                                z = true;
                            } else if (i19 == i20 + 1 && viewItem5.g != 4) {
                                viewItem5.f = viewItem.f;
                                viewItem5.g = 4;
                                viewItem5.m = false;
                                viewItem5.d.setTag(viewItem5);
                                T0(viewItem5);
                                int i26 = viewItem.e + 2;
                                if (this.f) {
                                    int i27 = viewItem.f;
                                    int i28 = this.x;
                                    i8 = a.B(i27, i28, 1, i28);
                                } else {
                                    i8 = (viewItem.f + 1) % this.x;
                                }
                                i12 = i26;
                                i14 = i8;
                                i16 = 0;
                                i17 = 3;
                                z = true;
                            }
                        }
                    }
                    i = i11;
                    i2 = i12;
                    i3 = i13;
                    i4 = i14;
                    i5 = i15;
                    i6 = i16;
                    i7 = i17;
                } else if (i9 == 4) {
                    int childCount2 = this.K.getChildCount();
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = -1;
                    i7 = -1;
                    z = false;
                    for (int i29 = 0; i29 < childCount2; i29++) {
                        View childAt2 = this.K.getChildAt(i29);
                        if (childAt2 != null && (viewItem3 = (MainItem.ViewItem) childAt2.getTag()) != null) {
                            int i30 = viewItem3.e;
                            int i31 = viewItem.e;
                            if (i30 == i31 - 1) {
                                if (viewItem3.g != 3) {
                                    viewItem3.f = viewItem.f;
                                    viewItem3.g = 3;
                                    viewItem3.m = false;
                                    viewItem3.d.setTag(viewItem3);
                                    T0(viewItem3);
                                    int i32 = viewItem.e - 2;
                                    if (this.f) {
                                        B = (viewItem.f + 1) % this.x;
                                    } else {
                                        int i33 = viewItem.f;
                                        int i34 = this.x;
                                        B = a.B(i33, i34, 1, i34);
                                    }
                                    int i35 = B;
                                    i10 = i32;
                                    i = i35;
                                    i3 = 0;
                                    i5 = 4;
                                    z = true;
                                }
                            } else if (i30 == i31 + 1) {
                                int i36 = viewItem3.g;
                                if (i36 == 4) {
                                    if (this.f) {
                                        int i37 = viewItem.f;
                                        int i38 = this.x;
                                        viewItem3.f = a.B(i37, i38, 1, i38);
                                    } else {
                                        viewItem3.f = (viewItem.f + 1) % this.x;
                                    }
                                    viewItem3.g = 3;
                                    viewItem3.m = false;
                                    viewItem3.d.setTag(viewItem3);
                                    T0(viewItem3);
                                    i2 = viewItem.e + 2;
                                    i4 = viewItem3.f;
                                    i6 = 4;
                                    i7 = 0;
                                } else if (i36 == 0 && viewItem3.h != 3) {
                                    if (this.f) {
                                        int i39 = viewItem.f;
                                        int i40 = this.x;
                                        viewItem3.f = a.B(i39, i40, 1, i40);
                                    } else {
                                        viewItem3.f = (viewItem.f + 1) % this.x;
                                    }
                                    viewItem3.h = 3;
                                    viewItem3.m = false;
                                    viewItem3.d.setTag(viewItem3);
                                    T0(viewItem3);
                                    i2 = viewItem.e + 2;
                                    i4 = viewItem3.f;
                                    i6 = 0;
                                    i7 = 4;
                                }
                                z = true;
                            }
                        }
                    }
                } else if (i9 != 0) {
                    int childCount3 = this.K.getChildCount();
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = -1;
                    i7 = -1;
                    z = false;
                    for (int i41 = 0; i41 < childCount3; i41++) {
                        View childAt3 = this.K.getChildAt(i41);
                        if (childAt3 != null && (viewItem2 = (MainItem.ViewItem) childAt3.getTag()) != null) {
                            int i42 = viewItem2.e;
                            int i43 = viewItem.e;
                            if (i42 == i43 - 1) {
                                int i44 = viewItem2.f;
                                int i45 = viewItem.f;
                                if (i44 == i45) {
                                    if (this.f) {
                                        viewItem2.f = (i45 + 1) % this.x;
                                    } else {
                                        int i46 = this.x;
                                        viewItem2.f = a.B(i45, i46, 1, i46);
                                    }
                                    viewItem2.g = 0;
                                    viewItem2.h = 4;
                                    viewItem2.m = false;
                                    viewItem2.d.setTag(viewItem2);
                                    T0(viewItem2);
                                    i10 = viewItem.e - 2;
                                    i = viewItem2.f;
                                    i3 = 0;
                                    i5 = 3;
                                    z = true;
                                }
                            } else if (i42 == i43 + 1) {
                                int i47 = viewItem2.f;
                                int i48 = viewItem.f;
                                if (i47 == i48) {
                                    if (this.f) {
                                        int i49 = this.x;
                                        z2 = true;
                                        viewItem2.f = a.B(i48, i49, 1, i49);
                                    } else {
                                        z2 = true;
                                        viewItem2.f = (i48 + 1) % this.x;
                                    }
                                    viewItem2.g = 0;
                                    viewItem2.h = 3;
                                    viewItem2.m = false;
                                    viewItem2.d.setTag(viewItem2);
                                    T0(viewItem2);
                                    i2 = viewItem.e + 2;
                                    i4 = viewItem2.f;
                                    z = z2;
                                    i7 = 4;
                                    i6 = 0;
                                }
                            }
                        }
                    }
                } else {
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = -1;
                    i7 = -1;
                    z = false;
                }
                if (z) {
                    int childCount4 = this.K.getChildCount();
                    for (int i50 = 0; i50 < childCount4; i50++) {
                        View childAt4 = this.K.getChildAt(i50);
                        if (childAt4 != null && (viewItem4 = (MainItem.ViewItem) childAt4.getTag()) != null) {
                            int i51 = viewItem4.e;
                            if (i51 == i10) {
                                viewItem4.f = i;
                                viewItem4.g = i3;
                                viewItem4.h = i5;
                                viewItem4.m = false;
                                viewItem4.d.setTag(viewItem4);
                                T0(viewItem4);
                            } else if (i51 == i2) {
                                viewItem4.f = i4;
                                viewItem4.g = i6;
                                viewItem4.h = i7;
                                viewItem4.m = false;
                                viewItem4.d.setTag(viewItem4);
                                T0(viewItem4);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void e1() {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        MySizeFrame mySizeFrame3;
        EventHandler eventHandler = this.B;
        if (eventHandler != null && (mySizeFrame = this.J) != null) {
            int i = 3600000 - this.D;
            if (i <= 0) {
                if (mySizeFrame != null && mySizeFrame.getKeepScreenOn() && (mySizeFrame3 = this.J) != null) {
                    mySizeFrame3.post(new AnonymousClass13());
                    return;
                }
                return;
            }
            eventHandler.sendEmptyMessageDelayed(0, i);
            MySizeFrame mySizeFrame4 = this.J;
            if (mySizeFrame4 != null && !mySizeFrame4.getKeepScreenOn() && (mySizeFrame2 = this.J) != null) {
                mySizeFrame2.post(new AnonymousClass12());
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final int f() {
        return this.v;
    }

    public final void f0() {
        MainItem.ViewItem viewItem;
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager != null) {
            int childCount = imageViewPager.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.K.getChildAt(i);
                if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.d != null) {
                    ImageLoader.f().a(viewItem.d);
                }
            }
        }
        g0();
        h0(true);
    }

    public final void f1(boolean z) {
        MySizeFrame mySizeFrame;
        MySizeFrame mySizeFrame2;
        EventHandler eventHandler = this.B;
        if (eventHandler != null && this.J != null) {
            eventHandler.removeMessages(0);
            int i = PrefImage.p;
            if (i == 2) {
                MySizeFrame mySizeFrame3 = this.J;
                if (mySizeFrame3 != null && !mySizeFrame3.getKeepScreenOn() && (mySizeFrame2 = this.J) != null) {
                    mySizeFrame2.post(new AnonymousClass12());
                    return;
                }
                return;
            }
            if (z && i != 0) {
                if (!this.C) {
                    e1();
                    return;
                }
                this.C = false;
                ImageViewActivity imageViewActivity = this.f16128c;
                if (imageViewActivity != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                            imageViewPageScroll.D = MainUtil.E3(imageViewPageScroll.b);
                            MySizeFrame mySizeFrame4 = imageViewPageScroll.J;
                            if (mySizeFrame4 == null) {
                                return;
                            }
                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.11.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewPageScroll.this.e1();
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
                mySizeFrame.post(new AnonymousClass13());
            }
        }
    }

    public final void g0() {
        if (this.f0 != null) {
            synchronized (this.f16127a) {
                try {
                    ArrayList arrayList = new ArrayList(this.f0);
                    this.f0 = null;
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

    public final void g1() {
        ImageViewActivity imageViewActivity = this.f16128c;
        if (imageViewActivity == null) {
            return;
        }
        imageViewActivity.r0();
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void h(int i) {
        Compress compress;
        ImageViewActivity imageViewActivity;
        if (this.S != null && !N0()) {
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
                this.S.t(i2, i4, this.z);
                return;
            }
            ImageCoverView imageCoverView = this.R;
            if (imageCoverView != null && !imageCoverView.d()) {
                if (PrefImage.s) {
                    if (i < this.y) {
                        p1(true);
                    } else {
                        p1(false);
                    }
                } else if (i > this.y) {
                    p1(true);
                } else {
                    p1(false);
                }
                f0();
                this.y = i;
                this.S.t(this.x, i, this.z);
                this.z = n0(this.y, false);
                W0(true);
                if (this.p == 2 && (compress = this.E) != null && !URLUtil.isNetworkUrl(compress.n(this.y)) && (imageViewActivity = this.f16128c) != null) {
                    imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.38
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewPageScroll.P(ImageViewPageScroll.this);
                        }
                    });
                }
            }
        }
    }

    public final void h0(boolean z) {
        ImageViewPager imageViewPager;
        int intValue;
        MainItem.ViewItem viewItem;
        ImageView imageView;
        ArrayList arrayList = this.g0;
        if (arrayList != null && !arrayList.isEmpty()) {
            synchronized (this.f16127a) {
                int i = 0;
                if (!z) {
                    try {
                        try {
                            imageViewPager = this.K;
                        } finally {
                        }
                    } catch (Exception unused) {
                    }
                    if (imageViewPager != null) {
                        int childCount = imageViewPager.getChildCount();
                        int i2 = 0;
                        int i3 = 0;
                        for (int i4 = 0; i4 < childCount; i4++) {
                            View childAt = this.K.getChildAt(i4);
                            if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null) {
                                ArrayList arrayList2 = new ArrayList(this.g0);
                                int size = arrayList2.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 < size) {
                                        Object obj = arrayList2.get(i5);
                                        i5++;
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
                                    this.g0.remove(imageView);
                                    ImageLoader.f().a(imageView);
                                    if (this.g0.isEmpty()) {
                                        return;
                                    }
                                }
                                i2 = Math.min(i2, viewItem.f);
                                i3 = Math.max(i3, viewItem.f);
                            }
                        }
                        int i6 = i2 - 1;
                        int i7 = i3 + 1;
                        ArrayList arrayList3 = new ArrayList(this.g0);
                        int size2 = arrayList3.size();
                        while (i < size2) {
                            Object obj2 = arrayList3.get(i);
                            i++;
                            ImageView imageView2 = (ImageView) obj2;
                            if (imageView2 != null && ((intValue = ((Integer) imageView2.getTag()).intValue()) < i6 || intValue > i7)) {
                                this.g0.remove(imageView2);
                                ImageLoader.f().a(imageView2);
                            }
                        }
                        return;
                    }
                }
                ArrayList arrayList4 = new ArrayList(this.g0);
                int size3 = arrayList4.size();
                while (i < size3) {
                    Object obj3 = arrayList4.get(i);
                    i++;
                    ImageView imageView3 = (ImageView) obj3;
                    if (imageView3 != null) {
                        ImageLoader.f().a(imageView3);
                    }
                }
                this.g0 = null;
            }
        }
    }

    public final void h1() {
        MySizeFrame mySizeFrame;
        if (this.O0 != null && (mySizeFrame = this.J) != null) {
            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.65
                @Override // java.lang.Runnable
                public final void run() {
                    Compress compress;
                    ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                    if (imageViewPageScroll.O0 != null && (compress = imageViewPageScroll.E) != null) {
                        imageViewPageScroll.O0.setIconTrans(imageViewPageScroll.E.u(compress.n(imageViewPageScroll.y)));
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void i() {
        Compress compress;
        if (this.S != null && (compress = this.E) != null) {
            final String n = compress.n(this.y);
            if (!URLUtil.isNetworkUrl(n)) {
                MainUtil.e8(this.b, R.string.invalid_path);
                return;
            }
            if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
                MainUtil.G4(this.f16128c, PrefAlbum.H, PrefAlbum.I, n, this.m, null, "image/*");
                return;
            }
            MyCoverView myCoverView = this.Q;
            if (myCoverView != null) {
                myCoverView.l();
            }
            ImageViewActivity imageViewActivity = this.f16128c;
            if (imageViewActivity == null) {
                return;
            }
            imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.51
                @Override // java.lang.Runnable
                public final void run() {
                    String str = n;
                    final String str2 = null;
                    if (!Compress.C(MainUtil.V3(str, null, null, true), true, true)) {
                        str2 = "image/" + MainUtil.T0(str);
                    }
                    ImageViewControl imageViewControl = ImageViewPageScroll.this.S;
                    if (imageViewControl == null) {
                        return;
                    }
                    imageViewControl.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.51.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass51 anonymousClass51 = AnonymousClass51.this;
                            final ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                            MyCoverView myCoverView2 = imageViewPageScroll.Q;
                            if (myCoverView2 != null) {
                                myCoverView2.f(true);
                                String str3 = n;
                                if (imageViewPageScroll.f16128c != null && !imageViewPageScroll.S0()) {
                                    imageViewPageScroll.q0();
                                    imageViewPageScroll.o0(true);
                                    if (!URLUtil.isNetworkUrl(str3)) {
                                        MainUtil.e8(imageViewPageScroll.b, R.string.invalid_path);
                                        return;
                                    }
                                    imageViewPageScroll.I0 = true;
                                    MainApp.K1 = true;
                                    DialogDownUrl dialogDownUrl = new DialogDownUrl(imageViewPageScroll.f16128c, str3, imageViewPageScroll.m, null, null, str2, 0L, 4, 0, null, 0, null, false, 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.52
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final WebNestView a() {
                                            return null;
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void b(String str4, String str5) {
                                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                            imageViewPageScroll2.q0();
                                            MainUtil.a8(imageViewPageScroll2.f16128c, str4, str5);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void c(String str4, String str5, String str6) {
                                            ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                            imageViewPageScroll2.q0();
                                            ImageViewPageScroll.Y(imageViewPageScroll2, str4, str5, str6);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void d(String str4, MainUri.UriItem uriItem, int i, boolean z, String str5, String str6) {
                                            final ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                            imageViewPageScroll2.q0();
                                            if (uriItem != null) {
                                                Compress compress2 = imageViewPageScroll2.E;
                                                if (compress2 != null) {
                                                    String r = imageViewPageScroll2.E.r(compress2.n(imageViewPageScroll2.y));
                                                    if (!TextUtils.isEmpty(r)) {
                                                        imageViewPageScroll2.o1 = r;
                                                        imageViewPageScroll2.p1 = str4;
                                                        imageViewPageScroll2.q1 = uriItem;
                                                        imageViewPageScroll2.r1 = i;
                                                        ImageViewActivity imageViewActivity2 = imageViewPageScroll2.f16128c;
                                                        if (imageViewActivity2 != null) {
                                                            imageViewActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.87
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                                                    String str7 = imageViewPageScroll3.o1;
                                                                    String str8 = imageViewPageScroll3.p1;
                                                                    MainUri.UriItem uriItem2 = imageViewPageScroll3.q1;
                                                                    int i2 = imageViewPageScroll3.r1;
                                                                    imageViewPageScroll3.o1 = null;
                                                                    imageViewPageScroll3.p1 = null;
                                                                    imageViewPageScroll3.q1 = null;
                                                                    File file = ImageLoader.f().e().get(str7);
                                                                    if (file != null) {
                                                                        long length = file.length();
                                                                        if (length != 0) {
                                                                            MainUtil.t(imageViewPageScroll3.b, file.getPath(), uriItem2.e);
                                                                            DbBookDown.u(imageViewPageScroll3.b, 3, i2, str8, imageViewPageScroll3.m, uriItem2, length, length, false, PrefSync.k, PrefSecret.m, false);
                                                                            MySizeFrame mySizeFrame = imageViewPageScroll3.J;
                                                                            if (mySizeFrame == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.87.1
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MainUtil.e8(ImageViewPageScroll.this.b, R.string.down_complete);
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
                                                MainApp p = MainApp.p(imageViewPageScroll2.b);
                                                if (p == null) {
                                                    MainUtil.e8(imageViewPageScroll2.b, R.string.down_fail);
                                                    return;
                                                }
                                                ImageViewActivity imageViewActivity3 = imageViewPageScroll2.f16128c;
                                                if (imageViewActivity3 == null) {
                                                    return;
                                                }
                                                imageViewActivity3.u0();
                                                p.R(str4, imageViewPageScroll2.m, uriItem, false);
                                            }
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void f(String str4, String str5, String str6, boolean z) {
                                            final ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                            if (imageViewPageScroll2.f16128c == null || imageViewPageScroll2.r0 != null) {
                                                return;
                                            }
                                            imageViewPageScroll2.z0();
                                            imageViewPageScroll2.o0(true);
                                            DialogPreview dialogPreview = new DialogPreview(imageViewPageScroll2.f16128c, str4, imageViewPageScroll2.m, null, "image/*", new DialogPreview.PreviewListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.56
                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void a(String str7) {
                                                    MainUtil.s(R.string.copied_clipboard, ImageViewPageScroll.this.f16128c, "Copied URL", str7);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void b(String str7, long j, boolean z2) {
                                                    ImageViewPageScroll.this.p0();
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void c(String str7, String str8) {
                                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                                    imageViewPageScroll3.p0();
                                                    ImageViewPageScroll.Y(imageViewPageScroll3, str7, null, str8);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void d(String str7) {
                                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                                    imageViewPageScroll3.p0();
                                                    MainUtil.a8(imageViewPageScroll3.f16128c, str7, imageViewPageScroll3.u);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                public final void e(String str7, String str8) {
                                                    ImageViewPageScroll.this.z0();
                                                }
                                            });
                                            imageViewPageScroll2.r0 = dialogPreview;
                                            dialogPreview.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.57
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    ImageViewPageScroll.this.z0();
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
                                    imageViewPageScroll.p0 = dialogDownUrl;
                                    dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.53
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            ImageViewPageScroll.this.q0();
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

    /* JADX WARN: Type inference failed for: r0v5, types: [com.mycompany.app.image.ImageViewActivity$SavedItem, java.lang.Object] */
    public final boolean i0(boolean z) {
        int i;
        boolean z2;
        int i2;
        if (this.y0) {
            return true;
        }
        boolean z3 = false;
        if (this.K == null) {
            return false;
        }
        boolean O0 = O0();
        if (this.g != null) {
            if (z && this.n0 == null) {
                p0();
                o0(false);
                n1(true);
            }
            c1();
            return false;
        }
        if (this.w0 != MainUtil.I5(O0)) {
            this.z = n0(this.y, false);
        }
        if (O0) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        if (i != 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            this.y0 = true;
            if (z && this.n0 != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (this.z == 0) {
                this.z = n0(this.y, false);
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
            ImageGifView imageGifView = this.O;
            if (imageGifView != null && imageGifView.e()) {
                z3 = true;
            }
            obj.n = z3;
            this.g.o = i2;
            I(true);
            G();
            return true;
        }
        if (this.x0 != MainUtil.T1(O0)) {
            this.K.setPageMargin(MainUtil.T1(O0));
        }
        if (z && this.n0 == null) {
            p0();
            o0(false);
            n1(true);
        }
        if (this.w0 != MainUtil.I5(O0)) {
            k1();
            W0(true);
            c1();
            return false;
        }
        if (this.v0 == MainUtil.F5(O0) && this.x0 == MainUtil.T1(O0)) {
            c1();
            return false;
        }
        k1();
        this.K.w();
        c1();
        return false;
    }

    public final void i1(final MyImageView myImageView, final boolean z) {
        if (!R0() && myImageView != null) {
            ZoomImageAttacher zoomImageAttacher = this.i0;
            if (zoomImageAttacher != null && !myImageView.equals(zoomImageAttacher.f)) {
                MyImageView myImageView2 = (MyImageView) this.i0.m();
                if (myImageView2 != null) {
                    myImageView2.setAttacher(null);
                }
                myImageView.g();
                this.i0.u();
                this.i0 = null;
            }
            if (this.i0 == null) {
                myImageView.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.24
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyImageView myImageView3 = myImageView;
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        imageViewPageScroll.i0 = new ZoomImageAttacher(myImageView3, imageViewPageScroll);
                        ZoomImageAttacher zoomImageAttacher2 = imageViewPageScroll.i0;
                        zoomImageAttacher2.f20930c = imageViewPageScroll.J;
                        zoomImageAttacher2.x = !z;
                        zoomImageAttacher2.z = true;
                        myImageView3.setAttacher(zoomImageAttacher2);
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewWrapper
    public final void j(int i, int i2, Intent intent) {
        MainItem.ChildItem k;
        DialogCapture dialogCapture = this.o0;
        if (dialogCapture == null || !dialogCapture.o(i, i2, intent)) {
            DialogDownUrl dialogDownUrl = this.p0;
            if (dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) {
                j1(false);
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
                            o0(false);
                            int i3 = this.v;
                            if (i3 == 1) {
                                DbAlbum.e(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 2) {
                                DbPdf.f(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 3) {
                                DbCmp.f(this.b, this.w, this.x, this.y, this.z);
                            } else if (i3 == 12) {
                                this.v = 1;
                                ImageViewControl imageViewControl = this.S;
                                if (imageViewControl != null) {
                                    imageViewControl.setIconType(1);
                                }
                            }
                            this.k = false;
                            this.m = null;
                            this.n = false;
                            this.p = 0;
                            U0();
                            this.u = null;
                            this.t = intExtra;
                            this.w = stringExtra;
                            this.x = 0;
                            this.y = 0;
                            this.z = 0;
                            m0(k, true);
                            j0(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == -1 && intent != null && this.E != null && this.S != null) {
                    if (intent.getBooleanExtra("EXTRA_THUMB", false)) {
                        this.S.p(this.v, this.p, this.E);
                    }
                    if (this.v == 2) {
                        PrefImage.s(this.b, true);
                        PdfPreviewToolbar.applyControlTimeout(this.S);
                    }
                }
            }
        }
    }

    public final void j0(boolean z) {
        f0();
        LoadTask loadTask = this.d0;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.d0 = null;
        if (this.v != 12 && TextUtils.isEmpty(this.w)) {
            MainUtil.e8(this.b, R.string.invalid_path);
            k0();
        } else {
            this.c0 = true;
            LoadTask loadTask2 = new LoadTask(this, z);
            this.d0 = loadTask2;
            loadTask2.b(this.b);
        }
    }

    public final void j1(boolean z) {
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.x(z);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean k() {
        this.F0 = false;
        if (this.C0) {
            Y0();
        } else if (this.D0) {
            d1();
        } else {
            q1();
        }
        this.C0 = false;
        this.D0 = false;
        return true;
    }

    public final void k0() {
        ImageViewActivity imageViewActivity = this.f16128c;
        if (imageViewActivity != null) {
            imageViewActivity.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k1() {
        MainItem.ViewItem viewItem;
        MyImageView myImageView;
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager != null && this.R != null) {
            int childCount = imageViewPager.getChildCount();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = this.K.getChildAt(i2);
                if (childAt != 0 && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.e == this.h0) {
                    if (viewItem.m && (myImageView = viewItem.d) != null) {
                        if (myImageView.getDraw() == 1) {
                            i = 3;
                        } else {
                            i = 2;
                        }
                        imageViewPager = childAt;
                    } else {
                        imageViewPager = childAt;
                    }
                }
                i2++;
            }
            this.R.e(imageViewPager, i);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void l() {
        MySizeFrame mySizeFrame;
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.setIconCrop(true);
            this.K.w();
            if (PrefPdf.j && PrefPdf.k && (mySizeFrame = this.J) != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.35
                    @Override // java.lang.Runnable
                    public final void run() {
                        MySizeFrame mySizeFrame2;
                        final ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        imageViewPageScroll.o0(true);
                        if (PrefPdf.j && imageViewPageScroll.H0 == null && (mySizeFrame2 = imageViewPageScroll.J) != null) {
                            mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.41
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageViewActivity imageViewActivity;
                                    if (PrefPdf.j) {
                                        final ImageViewPageScroll imageViewPageScroll2 = ImageViewPageScroll.this;
                                        if (imageViewPageScroll2.H0 == null && imageViewPageScroll2.J != null && (imageViewActivity = imageViewPageScroll2.f16128c) != null) {
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
                                            imageViewPageScroll2.H0 = myFadeFrame;
                                            appCompatTextView.setText(R.string.pdf_crop_guide);
                                            imageViewPageScroll2.H0.setListener(new MyFadeListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.42
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z) {
                                                    ImageViewPageScroll imageViewPageScroll3;
                                                    MyFadeFrame myFadeFrame2;
                                                    if (!z && (myFadeFrame2 = (imageViewPageScroll3 = ImageViewPageScroll.this).H0) != null && imageViewPageScroll3.J != null) {
                                                        myFadeFrame2.f();
                                                        imageViewPageScroll3.J.removeView(imageViewPageScroll3.H0);
                                                        imageViewPageScroll3.H0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z, boolean z2) {
                                                }
                                            });
                                            imageViewPageScroll2.H0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.43
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewPageScroll3.b, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewPageScroll3.H0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.44
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefPdf.j;
                                                    ImageViewPageScroll imageViewPageScroll3 = ImageViewPageScroll.this;
                                                    if (z) {
                                                        PrefPdf.j = false;
                                                        PrefSet.d(7, imageViewPageScroll3.b, "mGuideCrop", false);
                                                    }
                                                    MyFadeFrame myFadeFrame2 = imageViewPageScroll3.H0;
                                                    if (myFadeFrame2 != null) {
                                                        myFadeFrame2.d(true);
                                                    }
                                                }
                                            });
                                            imageViewPageScroll2.J.addView(imageViewPageScroll2.H0, -1, -1);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final Bitmap l0() {
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
            ImageViewActivity imageViewActivity = this.f16128c;
            boolean O0 = O0();
            if (this.v == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            Bitmap f = this.E.f(n, MainUtil.l0(imageViewActivity, O0, z2), z);
            if (MainUtil.f6(f)) {
                return f;
            }
            ?? obj = new Object();
            obj.f16554a = 8;
            obj.b = this.E;
            obj.r = this.m;
            obj.f = this.y;
            ImageViewActivity imageViewActivity2 = this.f16128c;
            boolean O02 = O0();
            if (this.v == 2) {
                z3 = true;
            }
            obj.t = MainUtil.l0(imageViewActivity2, O02, z3);
            Bitmap j = ImageLoader.f().j(obj, this.Z);
            if (MainUtil.f6(j)) {
                return j;
            }
            MySizeFrame mySizeFrame = this.J;
            if (mySizeFrame != null) {
                mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.85
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewPageScroll.this.b, R.string.image_fail);
                    }
                });
                return null;
            }
        } else {
            MySizeFrame mySizeFrame2 = this.J;
            if (mySizeFrame2 != null) {
                mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.84
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(ImageViewPageScroll.this.b, R.string.no_image);
                    }
                });
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
    public final void l1() {
        if (this.f16128c == null || S0()) {
            return;
        }
        y0();
        o0(true);
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
        this.j0 = false;
        DialogListBook dialogListBook = new DialogListBook(this.f16128c, obj, this.w, new DialogListBook.ListBookListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.48
            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void a(int i2, MainItem.ChildItem childItem, int i3) {
                int i4;
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.j0 = true;
                imageViewPageScroll.y0();
                if (TextUtils.isEmpty(childItem.g)) {
                    MainUtil.e8(imageViewPageScroll.b, R.string.invalid_path);
                    return;
                }
                if (childItem.g.equals(imageViewPageScroll.w)) {
                    if (imageViewPageScroll.E != null && (i4 = imageViewPageScroll.x) != 0) {
                        int i5 = childItem.t;
                        if (i5 == imageViewPageScroll.y) {
                            return;
                        }
                        if (i5 >= 0 && i5 < i4) {
                            imageViewPageScroll.y = i5;
                            imageViewPageScroll.z = childItem.u;
                            imageViewPageScroll.W0(true);
                            return;
                        }
                        MainUtil.e8(imageViewPageScroll.b, R.string.invalid_path);
                        return;
                    }
                    MainUtil.e8(imageViewPageScroll.b, R.string.no_image);
                    return;
                }
                imageViewPageScroll.o0(false);
                int i6 = imageViewPageScroll.v;
                if (i6 == 1) {
                    DbAlbum.e(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
                } else if (i6 == 2) {
                    DbPdf.f(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
                } else if (i6 == 3) {
                    DbCmp.f(imageViewPageScroll.b, imageViewPageScroll.w, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
                } else if (i6 == 12) {
                    imageViewPageScroll.v = 1;
                    ImageViewControl imageViewControl = imageViewPageScroll.S;
                    if (imageViewControl != null) {
                        imageViewControl.setIconType(1);
                    }
                }
                imageViewPageScroll.k = false;
                imageViewPageScroll.m = null;
                imageViewPageScroll.n = false;
                imageViewPageScroll.p = 0;
                imageViewPageScroll.U0();
                imageViewPageScroll.u = childItem.h;
                imageViewPageScroll.t = childItem.J;
                imageViewPageScroll.w = childItem.g;
                imageViewPageScroll.y = childItem.t;
                imageViewPageScroll.z = childItem.u;
                imageViewPageScroll.x = 0;
                imageViewPageScroll.j0(false);
            }

            @Override // com.mycompany.app.dialog.DialogListBook.ListBookListener
            public final void b() {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                if (imageViewPageScroll.E != null && imageViewPageScroll.x != 0) {
                    BookTask bookTask = imageViewPageScroll.e0;
                    if (bookTask != null) {
                        bookTask.f12839c = true;
                    }
                    imageViewPageScroll.e0 = null;
                    BookTask bookTask2 = new BookTask(imageViewPageScroll);
                    imageViewPageScroll.e0 = bookTask2;
                    bookTask2.b(imageViewPageScroll.b);
                    return;
                }
                MainUtil.e8(imageViewPageScroll.b, R.string.no_image);
            }
        });
        this.n0 = dialogListBook;
        dialogListBook.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.49
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                if (imageViewPageScroll.i) {
                    return;
                }
                imageViewPageScroll.y0();
                BookTask bookTask = imageViewPageScroll.e0;
                if (bookTask != null) {
                    bookTask.f12839c = true;
                }
                imageViewPageScroll.e0 = null;
                if (imageViewPageScroll.j0) {
                    imageViewPageScroll.j0 = false;
                } else {
                    imageViewPageScroll.j1(false);
                }
            }
        });
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final boolean m() {
        if (R0()) {
            return true;
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null && imageViewControl.l()) {
            return true;
        }
        return false;
    }

    public final void m0(MainItem.ChildItem childItem, boolean z) {
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

    public final void m1(boolean z) {
        if (this.O == null && this.J != null) {
            ImageGifView imageGifView = new ImageGifView(this.f16128c);
            this.O = imageGifView;
            imageGifView.setVisibility(8);
            this.J.post(new AnonymousClass23(z));
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void n() {
        if (this.f16128c == null) {
            return;
        }
        Intent intent = new Intent(this.b, (Class<?>) MainListImage.class);
        intent.putExtra("EXTRA_TYPE", this.v);
        if (this.v == 12) {
            intent.putExtra("EXTRA_PATH", PrefPath.j);
        } else {
            intent.putExtra("EXTRA_PATH", this.w);
        }
        this.f16128c.o0(intent, 7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final int n0(int i, boolean z) {
        boolean z2;
        boolean z3;
        Bitmap bitmap;
        Compress compress = this.E;
        if (compress != null && this.x != 0) {
            if (!MainUtil.H5(this.f16128c)) {
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
                    ImageViewActivity imageViewActivity = this.f16128c;
                    boolean O0 = O0();
                    if (this.v == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    obj.t = MainUtil.l0(imageViewActivity, O0, z2);
                    if (this.v == 12) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    obj.u = z3;
                    ImageLoader.ImageLoadItem k = ImageLoader.f().k(obj, this.Z);
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

    public final void n1(boolean z) {
        int i;
        int i2;
        int i3;
        if (PrefImage.n && this.O == null && this.V != null) {
            if (O0()) {
                i = PrefImage.u;
            } else {
                i = PrefImage.t;
            }
            if (i == 3) {
                this.W.setBackgroundResource(R.drawable.outline_swipe_up);
            } else {
                View view = this.W;
                if (this.f) {
                    i2 = R.drawable.outline_swipe_l2r;
                } else {
                    i2 = R.drawable.outline_swipe_r2l;
                }
                view.setBackgroundResource(i2);
            }
            this.X.setText(MainConst.e0[i]);
            AppCompatTextView appCompatTextView = this.Y;
            if (PrefImage.s) {
                i3 = R.string.reverse;
            } else {
                i3 = R.string.forward;
            }
            appCompatTextView.setText(i3);
            this.V.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                    MyFadeLinear myFadeLinear = imageViewPageScroll.V;
                    if (myFadeLinear == null) {
                        return;
                    }
                    if (myFadeLinear.e()) {
                        imageViewPageScroll.G0(true);
                        imageViewPageScroll.o0(true);
                    } else {
                        imageViewPageScroll.q1();
                    }
                }
            });
            if (z) {
                this.V.d(false, false);
            }
            this.V.g();
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void o() {
        if (this.S == null || this.f16128c == null || S0()) {
            return;
        }
        A0();
        o0(true);
        this.I0 = true;
        MainApp.K1 = true;
        this.j0 = false;
        ImageViewActivity imageViewActivity = this.f16128c;
        DialogSeekBright dialogSeekBright = new DialogSeekBright(imageViewActivity, imageViewActivity.getWindow(), 2, null);
        this.l0 = dialogSeekBright;
        dialogSeekBright.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.45
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll.this.A0();
            }
        });
    }

    public final void o0(boolean z) {
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.d(z);
        }
    }

    public final void o1(MainItem.ViewItem viewItem) {
        MyImageView myImageView;
        if (viewItem != null && !viewItem.m && (myImageView = viewItem.d) != null) {
            if (viewItem.n) {
                viewItem.n = false;
                myImageView.setTag(viewItem);
                T0(viewItem);
                return;
            }
            viewItem.m = true;
            myImageView.setTag(viewItem);
            viewItem.d.f(1, null);
            if (viewItem.e == this.h0) {
                e0(viewItem);
                i1(viewItem.d, false);
                CompressCache.BitmapInfo bitmapInfo = viewItem.i;
                if (bitmapInfo == null) {
                    b1(0, 0);
                } else {
                    b1(bitmapInfo.f12872a, bitmapInfo.b);
                }
                ImageCoverView imageCoverView = this.R;
                if (imageCoverView != null) {
                    imageCoverView.c();
                }
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void p() {
        if (this.S == null || this.f16128c == null || S0()) {
            return;
        }
        DialogCapture dialogCapture = this.o0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.o0 = null;
        }
        this.f16128c.m0(new AnonymousClass50());
    }

    public final void p0() {
        r0();
        x0();
        A0();
        w0();
        y0();
        DialogCapture dialogCapture = this.o0;
        if (dialogCapture != null) {
            dialogCapture.dismiss();
            this.o0 = null;
        }
        q0();
        C0();
        z0();
        D0();
        F0();
        v0();
        t0();
        s0();
        u0();
        B0();
        E0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void p1(boolean z) {
        int i;
        MainItem.ViewItem viewItem;
        MyImageView myImageView;
        int i2;
        ImageViewPager imageViewPager = this.K;
        if (imageViewPager != null && this.R != null) {
            int childCount = imageViewPager.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 < childCount) {
                    View childAt = this.K.getChildAt(i3);
                    if (childAt != 0 && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.e == this.h0) {
                        if (viewItem.m && (myImageView = viewItem.d) != null) {
                            if (myImageView.getDraw() == 1) {
                                i2 = 3;
                            } else {
                                i2 = 2;
                            }
                            i = i2;
                            imageViewPager = childAt;
                        } else {
                            imageViewPager = childAt;
                        }
                    }
                    i3++;
                } else {
                    i = 0;
                    break;
                }
            }
            if (z) {
                this.R.b(i, imageViewPager, true);
            } else {
                this.R.b(i, imageViewPager, false);
            }
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void q() {
        ImageCoverView imageCoverView;
        int B;
        if (this.E != null && this.K != null && (imageCoverView = this.R) != null && !imageCoverView.d()) {
            int i = this.x;
            if (i == 0) {
                if (P0()) {
                    a1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                return;
            }
            if (PrefImage.s) {
                if (this.y == i - 1 && P0()) {
                    a1(this.x, this.y, this.z, 2, this.w, false, false);
                    return;
                }
                B = (this.y + 1) % this.x;
            } else if (this.y == 0 && P0()) {
                a1(this.x, this.y, this.z, 2, this.w, false, false);
                return;
            } else {
                int i2 = this.y;
                int i3 = this.x;
                B = a.B(i2, i3, 1, i3);
            }
            h(B);
        }
    }

    public final void q0() {
        DialogDownUrl dialogDownUrl = this.p0;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.p0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
        ImageViewControl imageViewControl = this.S;
        if (imageViewControl != null) {
            imageViewControl.d(true);
        }
    }

    public final void q1() {
        ImageViewControl imageViewControl;
        if (this.b0 && (imageViewControl = this.S) != null && imageViewControl.B()) {
            G0(false);
            b1(this.T, this.U);
            this.S.z(false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void r(View view) {
        if (this.S != null && this.u0 == null) {
            J0();
            if (view != null) {
                ImageViewControl imageViewControl = this.S;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.forward, !PrefImage.s));
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.reverse, PrefImage.s));
                MyPopupMenu myPopupMenu = new MyPopupMenu(this.f16128c, this.J, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.37
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        ImageViewPageScroll.this.J0();
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
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        PrefSet.d(3, imageViewPageScroll.b, "mReverse", z);
                        if (MainUtil.O5(imageViewPageScroll.b)) {
                            imageViewPageScroll.f = !PrefImage.s;
                        } else {
                            imageViewPageScroll.f = PrefImage.s;
                        }
                        imageViewPageScroll.n1(true);
                        ImageViewControl imageViewControl2 = imageViewPageScroll.S;
                        if (imageViewControl2 != null) {
                            imageViewControl2.u(imageViewPageScroll.f, imageViewPageScroll.v, imageViewPageScroll.p, imageViewPageScroll.E, imageViewPageScroll.x, imageViewPageScroll.y, imageViewPageScroll.z);
                        }
                        imageViewPageScroll.k1();
                        imageViewPageScroll.W0(true);
                        return true;
                    }
                });
                this.u0 = myPopupMenu;
                ImageViewActivity imageViewActivity = this.f16128c;
                if (imageViewActivity != null) {
                    imageViewActivity.Z0 = myPopupMenu;
                }
            }
        }
    }

    public final void r0() {
        DialogEditText dialogEditText = this.G;
        if (dialogEditText != null) {
            dialogEditText.dismiss();
            this.G = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void s() {
        if (P0()) {
            a1(this.x, this.y, this.z, 1, this.w, true, true);
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
        DialogConfirm dialogConfirm = this.S0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.S0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
    public final void t() {
    }

    public final void t0() {
        DialogConfirm dialogConfirm = this.R0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.R0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void u() {
        l1();
    }

    public final void u0() {
        DialogConfirm dialogConfirm = this.T0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.T0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final boolean v() {
        ImageCoverView imageCoverView = this.R;
        if (imageCoverView != null && !imageCoverView.d()) {
            return false;
        }
        return true;
    }

    public final void v0() {
        DialogConfirm dialogConfirm = this.Q0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Q0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void w() {
        Bitmap bitmap;
        boolean z;
        if (this.S == null || this.f16128c == null || S0()) {
            return;
        }
        w0();
        o0(true);
        this.I0 = true;
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
                i2 = MainUtil.l0(this.f16128c, O0(), true);
                bitmap = this.E.f(n, i2, z);
            } else {
                bitmap = this.E.f(n, 2, z);
                if (bitmap == null || bitmap.isRecycled()) {
                    bitmap = this.E.f(n, MainUtil.l0(this.f16128c, O0(), false), z);
                }
            }
            if ((bitmap == null || bitmap.isRecycled()) && !z) {
                ?? obj = new Object();
                obj.f16554a = 8;
                obj.b = this.E;
                obj.r = this.m;
                obj.f = this.y;
                obj.t = i2;
                bitmap = ImageLoader.f().j(obj, this.Z);
            }
        } else {
            bitmap = null;
        }
        this.j0 = false;
        DialogImageBack dialogImageBack = new DialogImageBack(this.f16128c, bitmap, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.46
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.j0 = true;
                MySizeFrame mySizeFrame = imageViewPageScroll.J;
                if (mySizeFrame != null) {
                    mySizeFrame.setBackgroundColor(PrefImage.B);
                    ImageViewPager imageViewPager = imageViewPageScroll.K;
                    if (imageViewPager != null) {
                        int childCount = imageViewPager.getChildCount();
                        for (int i3 = 0; i3 < childCount; i3++) {
                            View childAt = imageViewPageScroll.K.getChildAt(i3);
                            if (childAt != null) {
                                childAt.invalidate();
                            }
                        }
                    }
                }
            }
        });
        this.m0 = dialogImageBack;
        dialogImageBack.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.47
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.w0();
                if (imageViewPageScroll.j0) {
                    imageViewPageScroll.j0 = false;
                } else {
                    imageViewPageScroll.j1(true);
                }
            }
        });
    }

    public final void w0() {
        DialogImageBack dialogImageBack = this.m0;
        if (dialogImageBack != null) {
            dialogImageBack.dismiss();
            this.m0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void x() {
        if (this.S == null || this.f16128c == null || S0()) {
            return;
        }
        D0();
        o0(true);
        this.I0 = true;
        MainApp.K1 = true;
        this.j0 = false;
        DialogSetImage dialogSetImage = new DialogSetImage(this.f16128c, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.58
            @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
            public final void a() {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.j0 = true;
                imageViewPageScroll.i0(false);
            }
        });
        this.s0 = dialogSetImage;
        dialogSetImage.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.image.ImageViewPageScroll.59
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                imageViewPageScroll.D0();
                if (imageViewPageScroll.j0) {
                    imageViewPageScroll.j0 = false;
                } else {
                    imageViewPageScroll.j1(true);
                }
            }
        });
    }

    public final void x0() {
        DialogImageType dialogImageType = this.k0;
        if (dialogImageType != null) {
            dialogImageType.dismiss();
            this.k0 = null;
            this.I0 = false;
            MainUtil.K7(this.f16128c, false);
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void y() {
        if (this.f16128c == null) {
            return;
        }
        Class<?> settings = SettingImage.class;
        Intent intent = new Intent(this.b, settings);
        if (this.v == 2) {
            intent.putExtra("EXTRA_PDF_PREVIEW", true);
        }
        this.f16128c.o0(intent, 1);
    }

    public final void y0() {
        DialogListBook dialogListBook = this.n0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.n0 = null;
        }
    }

    @Override // com.mycompany.app.image.ImageViewControl.ControlListener
    public final void z(View view) {
        if (this.S != null && !S0() && view != null && this.J != null) {
            V0();
            if (this.h1 == null) {
                this.h1 = new WebTransOcrCtrl(this.f16128c);
                this.i1 = view;
                this.J.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.60
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
                        WebTransOcrCtrl webTransOcrCtrl = imageViewPageScroll.h1;
                        if (webTransOcrCtrl != null) {
                            webTransOcrCtrl.c();
                        }
                        MySizeFrame mySizeFrame = imageViewPageScroll.J;
                        if (mySizeFrame == null) {
                            return;
                        }
                        mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewPageScroll.60.1
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
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageScroll.AnonymousClass60.AnonymousClass1.run():void");
                            }
                        });
                    }
                });
                ImageViewControl imageViewControl = this.S;
                if (imageViewControl != null) {
                    imageViewControl.setAutoHide(false);
                }
            }
        }
    }

    public final void z0() {
        DialogPreview dialogPreview = this.r0;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.r0 = null;
        }
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends PagerAdapter {
        public ViewPagerAdapter() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final int c() {
            return -2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:199:0x0114, code lost:
        
            if (r14.f12872a > r14.b) goto L85;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:135:0x03a6  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x029c  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x028d  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x01d0  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x028b  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x029a  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x02b0  */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
        @Override // androidx.viewpager.widget.PagerAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object d(androidx.viewpager.widget.ViewPager r20, int r21) {
            /*
                Method dump skipped, instructions count: 943
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageViewPageScroll.ViewPagerAdapter.d(androidx.viewpager.widget.ViewPager, int):java.lang.Object");
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final boolean e(View view, Object obj) {
            return view.equals(obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void a(Object obj) {
        }
    }

    /* loaded from: classes3.dex */
    public class PageChangeListener implements ViewPager.OnPageChangeListener {
        public PageChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void c(int i) {
            MainItem.ViewItem viewItem;
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            if (imageViewPageScroll.K != null) {
                imageViewPageScroll.L = i;
                boolean z = false;
                imageViewPageScroll.G0(false);
                if (imageViewPageScroll.L == 0) {
                    imageViewPageScroll.X0();
                    imageViewPageScroll.h1();
                    int childCount = imageViewPageScroll.K.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = imageViewPageScroll.K.getChildAt(i2);
                        if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.e == imageViewPageScroll.h0) {
                            if (viewItem.m && viewItem.d != null) {
                                imageViewPageScroll.e0(viewItem);
                                MyImageView myImageView = viewItem.d;
                                if (myImageView.getDraw() == 0) {
                                    z = true;
                                }
                                imageViewPageScroll.i1(myImageView, z);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                MyButtonImage myButtonImage = imageViewPageScroll.N;
                if (myButtonImage != null) {
                    myButtonImage.f(false);
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void d(int i) {
            boolean z;
            MainItem.ViewItem viewItem;
            MyImageView myImageView;
            boolean z2;
            ImageViewPageScroll imageViewPageScroll = ImageViewPageScroll.this;
            if (imageViewPageScroll.K != null) {
                MyCoverView myCoverView = imageViewPageScroll.Q;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                int i2 = imageViewPageScroll.x;
                int i3 = imageViewPageScroll.y;
                boolean z3 = true;
                int i4 = imageViewPageScroll.z;
                int i5 = imageViewPageScroll.h0;
                int childCount = imageViewPageScroll.K.getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 < childCount) {
                        View childAt = imageViewPageScroll.K.getChildAt(i6);
                        if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && viewItem.e == i) {
                            imageViewPageScroll.h0 = i;
                            int i7 = viewItem.f;
                            imageViewPageScroll.y = i7;
                            int i8 = viewItem.g;
                            imageViewPageScroll.z = i8;
                            z = viewItem.j;
                            if (i8 == 0) {
                                int i9 = viewItem.h;
                                imageViewPageScroll.z = i9;
                                if (i9 == 0) {
                                    imageViewPageScroll.z = imageViewPageScroll.n0(i7, false);
                                }
                            }
                            if (viewItem.m && (myImageView = viewItem.d) != null) {
                                if (myImageView.getDraw() == 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                imageViewPageScroll.e0(viewItem);
                                imageViewPageScroll.i1(viewItem.d, z2);
                                if (z2) {
                                    int i10 = imageViewPageScroll.z;
                                    if ((i10 == 3 || i10 == 4) && MainUtil.H5(imageViewPageScroll.f16128c)) {
                                        imageViewPageScroll.b1(viewItem.d.getImageWidth() * 2, viewItem.d.getImageHeight());
                                    } else {
                                        imageViewPageScroll.b1(viewItem.d.getImageWidth(), viewItem.d.getImageHeight());
                                    }
                                    if (imageViewPageScroll.E.g(imageViewPageScroll.y) == null) {
                                        Compress.P(imageViewPageScroll.E.n(imageViewPageScroll.y), new CompressCache.BitmapInfo(imageViewPageScroll.T, imageViewPageScroll.U, 0));
                                    }
                                } else {
                                    imageViewPageScroll.b1(0, 0);
                                }
                            } else {
                                imageViewPageScroll.b1(0, 0);
                            }
                        } else {
                            i6++;
                        }
                    } else {
                        z3 = false;
                        z = false;
                        break;
                    }
                }
                if (imageViewPageScroll.L == 0) {
                    if (!z3) {
                        imageViewPageScroll.X0();
                        imageViewPageScroll.h1();
                        return;
                    }
                    return;
                }
                if (z) {
                    int i11 = imageViewPageScroll.h0;
                    if (i11 < i5) {
                        imageViewPageScroll.a1(i2, i3, i4, 0, imageViewPageScroll.w, false, false);
                        return;
                    } else {
                        if (i11 > i5) {
                            imageViewPageScroll.a1(i2, i3, i4, 0, imageViewPageScroll.w, true, false);
                            return;
                        }
                        return;
                    }
                }
                int i12 = imageViewPageScroll.h0;
                if (i12 != 0 && i12 != 99999) {
                    return;
                }
                imageViewPageScroll.W0(false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void b(float f, int i) {
        }
    }
}
