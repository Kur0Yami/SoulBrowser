package com.mycompany.app.main.image;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyGlideTarget;
import com.mycompany.app.view.MyProgressDrawable;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;

/* loaded from: classes3.dex */
public class MainImageView extends ImageView {
    public static final /* synthetic */ int S = 0;
    public ZoomItem A;
    public Bitmap B;
    public Bitmap C;
    public Matrix D;
    public ValueAnimator E;
    public boolean F;
    public int G;
    public int H;
    public RectF I;
    public Bitmap J;
    public final MyGlideTarget K;
    public PictureDrawable L;
    public final MyGlideTarget M;
    public Bitmap N;
    public Bitmap O;
    public float P;
    public boolean Q;
    public final Runnable R;

    /* renamed from: c, reason: collision with root package name */
    public MainActivity f17185c;
    public Context f;
    public Handler g;
    public MainImageListener h;
    public boolean i;
    public int j;
    public MyFadeFrame k;
    public MyAreaView l;
    public boolean m;
    public GlideRequests n;
    public ZoomImageAttacher o;
    public boolean p;
    public MyProgressDrawable q;
    public Paint r;
    public float s;
    public int t;
    public int u;
    public float v;
    public float w;
    public ZoomItem x;
    public boolean y;
    public ZoomItem z;

    /* loaded from: classes3.dex */
    public interface MainImageListener {
        void d();

        void e(Bitmap bitmap);
    }

    /* loaded from: classes3.dex */
    public static class ZoomItem {

        /* renamed from: a, reason: collision with root package name */
        public Uri f17204a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f17205c;
        public String d;
        public Matrix e;
    }

    public MainImageView(Context context) {
        super(context);
        this.K = new MyGlideTarget<Bitmap>() { // from class: com.mycompany.app.main.image.MainImageView.3
            @Override // com.bumptech.glide.request.target.Target
            public final void a(Object obj, Transition transition) {
                Bitmap bitmap = (Bitmap) obj;
                MainImageView mainImageView = MainImageView.this;
                MainActivity mainActivity = mainImageView.f17185c;
                if (mainActivity == null) {
                    return;
                }
                mainImageView.J = bitmap;
                mainActivity.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageView mainImageView2 = MainImageView.this;
                        Bitmap bitmap2 = mainImageView2.J;
                        mainImageView2.J = null;
                        mainImageView2.setImageLoaded(bitmap2);
                    }
                });
            }

            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
            public final void f(SingleRequest singleRequest) {
                MainImageView mainImageView = MainImageView.this;
                if (mainImageView.f == null) {
                    return;
                }
                singleRequest.b(mainImageView.getWidth(), mainImageView.getHeight());
            }

            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
            public final void g(Drawable drawable) {
                MainImageView.a(MainImageView.this);
            }
        };
        this.M = new MyGlideTarget<PictureDrawable>() { // from class: com.mycompany.app.main.image.MainImageView.4
            @Override // com.bumptech.glide.request.target.Target
            public final void a(Object obj, Transition transition) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                MainImageView mainImageView = MainImageView.this;
                MainActivity mainActivity = mainImageView.f17185c;
                if (mainActivity == null) {
                    return;
                }
                mainImageView.L = pictureDrawable;
                mainActivity.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageView mainImageView2 = MainImageView.this;
                        PictureDrawable pictureDrawable2 = mainImageView2.L;
                        mainImageView2.L = null;
                        mainImageView2.setImageLoaded(MainUtil.H(pictureDrawable2, 0));
                    }
                });
            }

            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
            public final void f(SingleRequest singleRequest) {
                MainImageView mainImageView = MainImageView.this;
                if (mainImageView.f == null) {
                    return;
                }
                singleRequest.b(mainImageView.getWidth(), mainImageView.getHeight());
            }

            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
            public final void g(Drawable drawable) {
                MainImageView.a(MainImageView.this);
            }
        };
        this.R = new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.14
            @Override // java.lang.Runnable
            public final void run() {
                MainImageView mainImageView = MainImageView.this;
                mainImageView.Q = false;
                if (mainImageView.E != null) {
                    mainImageView.setValAnimHide(mainImageView.P);
                }
            }
        };
        this.f = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    public static void a(MainImageView mainImageView) {
        ZoomItem zoomItem;
        if (mainImageView.f17185c == null || (zoomItem = mainImageView.z) == null) {
            return;
        }
        Uri uri = zoomItem.f17204a;
        String str = zoomItem.b;
        String str2 = zoomItem.f17205c;
        if (uri != null) {
            str = uri.getPath();
        }
        if (!URLUtil.isNetworkUrl(str)) {
            mainImageView.p();
            return;
        }
        ?? obj = new Object();
        obj.f16554a = 7;
        obj.q = str;
        obj.r = str2;
        obj.t = 0;
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.f20960a = true;
        builder.b = true;
        builder.f = new Object();
        ImageLoader.f().i(obj, new DisplayImageOptions(builder), new SimpleImageLoadingListener() { // from class: com.mycompany.app.main.image.MainImageView.5
            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                int i = MainImageView.S;
                MainImageView.this.p();
            }

            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                MainImageView mainImageView2 = MainImageView.this;
                MainActivity mainActivity = mainImageView2.f17185c;
                if (mainActivity == null) {
                    return;
                }
                mainImageView2.N = bitmap;
                mainActivity.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageView mainImageView3 = MainImageView.this;
                        Bitmap bitmap2 = mainImageView3.N;
                        mainImageView3.N = null;
                        mainImageView3.setImageLoaded(bitmap2);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAreaRect(RectF rectF) {
        int i;
        this.I = rectF;
        MyAreaView myAreaView = this.l;
        if (myAreaView == null) {
            return;
        }
        myAreaView.f(rectF, 444, 444);
        MyAreaView myAreaView2 = this.l;
        if (myAreaView2.a()) {
            i = 0;
        } else {
            i = 4;
        }
        myAreaView2.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageLoaded(Bitmap bitmap) {
        if (this.f != null) {
            if (this.i) {
                int i = this.j;
                if (i == 1) {
                    bitmap = MainUtil.s1(this, bitmap, false);
                } else if (i == 2) {
                    bitmap = MainUtil.s1(this, bitmap, true);
                }
                this.B = bitmap;
            }
            this.O = bitmap;
            Handler handler = this.g;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.6
                @Override // java.lang.Runnable
                public final void run() {
                    MainImageView mainImageView = MainImageView.this;
                    Bitmap bitmap2 = mainImageView.O;
                    mainImageView.O = null;
                    if (MainUtil.f6(bitmap2)) {
                        mainImageView.setImageSuccess(bitmap2);
                    } else {
                        mainImageView.p();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageSuccess(Bitmap bitmap) {
        if (this.f != null) {
            setBitmap(bitmap);
            if (this.y) {
                this.y = false;
                m();
                MainImageListener mainImageListener = this.h;
                if (mainImageListener != null) {
                    mainImageListener.e(bitmap);
                }
            }
            MainImageListener mainImageListener2 = this.h;
            if (mainImageListener2 != null) {
                mainImageListener2.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        setAlpha(f);
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked;
        MyFadeFrame myFadeFrame;
        if (this.k != null && (((actionMasked = motionEvent.getActionMasked()) == 1 || actionMasked == 3) && (myFadeFrame = this.k) != null && myFadeFrame.e())) {
            this.k.h(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void g(int i, int i2) {
        MyProgressDrawable myProgressDrawable = this.q;
        if (myProgressDrawable != null && i != 0 && i2 != 0) {
            int i3 = this.t;
            int i4 = (i - i3) / 2;
            int i5 = (i2 - i3) / 2;
            myProgressDrawable.d(i4, i5, i4 + i3, i3 + i5);
        }
    }

    public Bitmap getImageBitmap() {
        RectF rectF = null;
        if (this.f == null) {
            return null;
        }
        Bitmap g4 = MainUtil.g4(this, -16777216, 1.0f, 0L, null);
        if (!MainUtil.f6(g4)) {
            return null;
        }
        ZoomImageAttacher zoomImageAttacher = this.o;
        if (zoomImageAttacher != null) {
            RectF rectF2 = zoomImageAttacher.u;
            if (rectF2 != null) {
                rectF = rectF2;
            }
            if (rectF != null) {
                int max = Math.max(Math.round(rectF.left), 0);
                int max2 = Math.max(Math.round(rectF.top), 0);
                int min = Math.min(Math.round(rectF.right), g4.getWidth());
                int min2 = Math.min(Math.round(rectF.bottom), g4.getHeight());
                if (max < min && max2 < min2) {
                    try {
                        Bitmap createBitmap = Bitmap.createBitmap(g4, max, max2, min - max, min2 - max2);
                        if (MainUtil.f6(createBitmap)) {
                            g4.recycle();
                            return createBitmap;
                        }
                    } catch (Exception | OutOfMemoryError unused) {
                    }
                }
                return g4;
            }
        }
        return g4;
    }

    public final void h() {
        if (!this.p) {
            return;
        }
        this.p = false;
        MyProgressDrawable myProgressDrawable = this.q;
        if (myProgressDrawable != null) {
            myProgressDrawable.f = false;
        }
        invalidate();
    }

    public final boolean i() {
        ZoomItem zoomItem = this.z;
        ZoomItem zoomItem2 = this.A;
        if (zoomItem == null || zoomItem2 == null || !MainUtil.q5(zoomItem.f17204a, zoomItem2.f17204a) || !MainUtil.q5(zoomItem.b, zoomItem2.b)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.mycompany.app.main.image.MainImageView$ZoomItem, java.lang.Object] */
    public final void j(Uri uri, String str, String str2, String str3) {
        boolean I;
        if (this.f17185c == null) {
            return;
        }
        this.x = null;
        this.y = false;
        ?? obj = new Object();
        obj.f17204a = uri;
        obj.b = str;
        obj.f17205c = str2;
        obj.d = str3;
        this.z = obj;
        this.F = false;
        this.G = 0;
        this.H = 0;
        this.I = null;
        r();
        ZoomImageAttacher zoomImageAttacher = this.o;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.o = null;
        }
        if (!TextUtils.isEmpty(str3)) {
            I = str3.startsWith("image/svg");
        } else {
            I = Compress.I(MainUtil.V3(str, null, null, true));
        }
        this.m = I;
        this.f17185c.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.2
            @Override // java.lang.Runnable
            public final void run() {
                MainImageView mainImageView = MainImageView.this;
                if (mainImageView.n == null) {
                    Context context = mainImageView.getContext();
                    Preconditions.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
                    mainImageView.n = (GlideRequests) Glide.a(context).j.d(mainImageView);
                }
                Handler handler = mainImageView.g;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ZoomItem zoomItem;
                        MainImageView mainImageView2 = MainImageView.this;
                        GlideRequests glideRequests = mainImageView2.n;
                        if (glideRequests == null || (zoomItem = mainImageView2.z) == null) {
                            return;
                        }
                        Uri uri2 = zoomItem.f17204a;
                        String str4 = zoomItem.b;
                        String str5 = zoomItem.f17205c;
                        if (mainImageView2.m) {
                            if (uri2 != null) {
                                glideRequests.b(PictureDrawable.class).K(uri2).F(mainImageView2.M);
                                return;
                            } else if (URLUtil.isNetworkUrl(str4)) {
                                ((GlideRequest) ((GlideRequest) mainImageView2.n.b(PictureDrawable.class)).O(MainUtil.A1(mainImageView2.f, str4, str5))).F(mainImageView2.M);
                                return;
                            } else {
                                ((GlideRequest) ((GlideRequest) mainImageView2.n.b(PictureDrawable.class)).O(str4)).F(mainImageView2.M);
                                return;
                            }
                        }
                        if (uri2 != null) {
                            glideRequests.d().K(uri2).F(mainImageView2.K);
                        } else if (URLUtil.isNetworkUrl(str4)) {
                            ((GlideRequest) ((GlideRequest) mainImageView2.n.d()).O(MainUtil.A1(mainImageView2.f, str4, str5))).F(mainImageView2.K);
                        } else {
                            ((GlideRequest) ((GlideRequest) mainImageView2.n.d()).O(str4)).F(mainImageView2.K);
                        }
                    }
                });
            }
        });
    }

    public final void k() {
        ZoomImageAttacher zoomImageAttacher;
        Matrix matrix;
        ZoomItem zoomItem = this.A;
        if (zoomItem != null) {
            if (!i()) {
                Matrix matrix2 = zoomItem.e;
                if (matrix2 != null && (zoomImageAttacher = this.o) != null && (matrix = zoomImageAttacher.t) != null) {
                    matrix.set(matrix2);
                    zoomImageAttacher.g(false);
                    return;
                }
                return;
            }
            this.D = zoomItem.e;
            if (!MainUtil.f6(this.C)) {
                j(zoomItem.f17204a, zoomItem.b, zoomItem.f17205c, zoomItem.d);
                return;
            }
            this.z = zoomItem;
            MainActivity mainActivity = this.f17185c;
            if (mainActivity == null) {
                return;
            }
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.8
                @Override // java.lang.Runnable
                public final void run() {
                    MainImageView mainImageView = MainImageView.this;
                    Bitmap bitmap = mainImageView.C;
                    if (!MainUtil.f6(bitmap)) {
                        bitmap = null;
                    } else {
                        try {
                            bitmap = Bitmap.createBitmap(bitmap);
                        } catch (Exception | OutOfMemoryError unused) {
                        }
                    }
                    mainImageView.B = bitmap;
                    Handler handler = mainImageView.g;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImageView mainImageView2 = MainImageView.this;
                            mainImageView2.setBitmap(mainImageView2.B);
                        }
                    });
                }
            });
        }
    }

    public final void l() {
        ZoomImageAttacher zoomImageAttacher = this.o;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.o = null;
        }
        ValueAnimator valueAnimator = this.E;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.E = null;
        }
        GlideRequests glideRequests = this.n;
        if (glideRequests != null) {
            if (this.i) {
                if (this.m) {
                    MyGlideTarget myGlideTarget = this.M;
                    if (myGlideTarget != null) {
                        glideRequests.p(myGlideTarget);
                    }
                } else {
                    MyGlideTarget myGlideTarget2 = this.K;
                    if (myGlideTarget2 != null) {
                        glideRequests.p(myGlideTarget2);
                    }
                }
            } else {
                glideRequests.o(this);
            }
            this.n = null;
        }
        MyProgressDrawable myProgressDrawable = this.q;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.q = null;
        }
        this.f17185c = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.k = null;
        this.l = null;
        this.q = null;
        this.r = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.I = null;
    }

    public final void m() {
        MainActivity mainActivity;
        boolean i = i();
        ZoomItem zoomItem = this.z;
        Bitmap bitmap = this.B;
        Matrix matrix = null;
        this.z = null;
        this.B = null;
        if (zoomItem != null) {
            ZoomImageAttacher zoomImageAttacher = this.o;
            if (zoomImageAttacher != null) {
                Matrix matrix2 = zoomImageAttacher.t;
                if (matrix2 != null) {
                    matrix = new Matrix(matrix2);
                }
                zoomItem.e = matrix;
            }
            this.A = zoomItem;
            if (i || !MainUtil.f6(this.C)) {
                this.C = bitmap;
                if (!MainUtil.f6(bitmap) || (mainActivity = this.f17185c) == null) {
                    return;
                }
                mainActivity.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageView mainImageView = MainImageView.this;
                        Bitmap bitmap2 = mainImageView.C;
                        if (!MainUtil.f6(bitmap2)) {
                            bitmap2 = null;
                        } else {
                            try {
                                bitmap2 = Bitmap.createBitmap(bitmap2);
                            } catch (Exception | OutOfMemoryError unused) {
                            }
                        }
                        mainImageView.C = bitmap2;
                    }
                });
            }
        }
    }

    public final void n() {
        if (this.l != null && this.G != 0 && this.H != 0) {
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                this.l.setJustRect(this.I);
                this.l.d(width, height, this.G, this.H, 444, 444, false);
            }
        }
    }

    public final void o(MyFadeFrame myFadeFrame, MyAreaView myAreaView) {
        if (myFadeFrame != null && myAreaView != null) {
            this.k = myFadeFrame;
            this.l = myAreaView;
            myFadeFrame.setInvisible(true);
            this.k.d(false);
            Handler handler = this.g;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.11
                @Override // java.lang.Runnable
                public final void run() {
                    int i = MainImageView.S;
                    MainImageView.this.n();
                }
            });
            return;
        }
        MyFadeFrame myFadeFrame2 = this.k;
        if (myFadeFrame2 != null) {
            myFadeFrame2.d(false);
            this.k = null;
        }
        this.l = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
        if (this.p && this.q != null) {
            Paint paint = this.r;
            if (paint != null) {
                canvas.drawCircle(this.v, this.w, this.u, paint);
            }
            this.q.f();
            this.q.a(canvas);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0) {
            this.v = i / 2.0f;
            this.w = i2 / 2.0f;
            g(i, i2);
            ZoomImageAttacher zoomImageAttacher = this.o;
            if (zoomImageAttacher != null) {
                zoomImageAttacher.u();
            }
            n();
            ZoomItem zoomItem = this.x;
            this.x = null;
            if (zoomItem != null) {
                j(null, zoomItem.b, zoomItem.f17205c, zoomItem.d);
                this.y = true;
            }
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            MyProgressDrawable myProgressDrawable = this.q;
            if (myProgressDrawable != null && this.p) {
                myProgressDrawable.f();
                return;
            }
            return;
        }
        MyProgressDrawable myProgressDrawable2 = this.q;
        if (myProgressDrawable2 == null || !this.p) {
            return;
        }
        myProgressDrawable2.f = false;
    }

    public final void p() {
        if (this.f == null) {
            return;
        }
        this.F = true;
        this.G = 0;
        this.H = 0;
        this.I = null;
        h();
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        setImageResource(R.drawable.outline_error_dark_web_48);
        ZoomImageAttacher zoomImageAttacher = this.o;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.o = null;
        }
        if (this.y) {
            this.y = false;
            m();
            MainImageListener mainImageListener = this.h;
            if (mainImageListener != null) {
                mainImageListener.e(null);
            }
        }
    }

    public final void q(MainActivity mainActivity, boolean z, int i, MainImageListener mainImageListener) {
        this.f17185c = mainActivity;
        this.g = mainActivity.O0;
        this.h = mainImageListener;
        this.i = z;
        this.j = i;
        if (z) {
            this.s = MainApp.y1;
            this.t = MainApp.z1;
        } else {
            this.s = MainApp.y1 / 2.0f;
            this.t = Math.round(MainApp.z1 * 0.75f);
        }
        this.u = Math.round((this.t / 2.0f) + MainApp.G1);
    }

    public final void r() {
        if (this.p) {
            return;
        }
        this.p = true;
        if (this.q == null) {
            this.q = new MyProgressDrawable(this, this.s, -1);
            g(getWidth(), getHeight());
        }
        if (this.r == null) {
            Paint paint = new Paint();
            this.r = paint;
            paint.setAntiAlias(true);
            this.r.setStyle(Paint.Style.FILL);
            this.r.setColor(-1593835520);
        }
        invalidate();
    }

    public void setBitmap(Bitmap bitmap) {
        Handler handler;
        if (!MainUtil.f6(bitmap)) {
            return;
        }
        this.F = false;
        this.G = bitmap.getWidth();
        this.H = bitmap.getHeight();
        this.I = null;
        h();
        setScaleType(ImageView.ScaleType.CENTER_CROP);
        setImageBitmap(bitmap);
        if (this.i) {
            ZoomImageAttacher zoomImageAttacher = this.o;
            if (zoomImageAttacher != null) {
                zoomImageAttacher.r();
                this.o = null;
            }
            this.o = new ZoomImageAttacher(this, new ZoomImageAttacher.AttacherListener() { // from class: com.mycompany.app.main.image.MainImageView.9
                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final void C(RectF rectF, boolean z) {
                    MainImageView.this.setAreaRect(rectF);
                }

                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final boolean k() {
                    MainImageView mainImageView = MainImageView.this;
                    MyFadeFrame myFadeFrame = mainImageView.k;
                    if (myFadeFrame != null) {
                        if (myFadeFrame.e()) {
                            mainImageView.k.d(true);
                        } else {
                            if (mainImageView.l.a()) {
                                mainImageView.l.e(444, 444);
                                mainImageView.l.setVisibility(0);
                            } else {
                                mainImageView.l.setVisibility(4);
                            }
                            mainImageView.k.h(true);
                        }
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

                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                public final void D(MotionEvent motionEvent, boolean z) {
                }
            });
            if (this.D != null && (handler = this.g) != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageView mainImageView = MainImageView.this;
                        Matrix matrix = mainImageView.D;
                        if (matrix != null) {
                            ZoomImageAttacher zoomImageAttacher2 = mainImageView.o;
                            Matrix matrix2 = zoomImageAttacher2.t;
                            if (matrix2 != null) {
                                matrix2.set(matrix);
                                zoomImageAttacher2.g(false);
                            }
                            mainImageView.D = null;
                        }
                    }
                });
            }
        }
        n();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        ValueAnimator valueAnimator = this.E;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.E = null;
        }
        setAlpha(1.0f);
        super.setVisibility(i);
    }
}
