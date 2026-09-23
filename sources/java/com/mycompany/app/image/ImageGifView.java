package com.mycompany.app.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyImageView;
import com.mycompany.app.zoom.ZoomImageAttacher;

/* loaded from: classes3.dex */
public class ImageGifView extends MyFadeFrame {
    public MyImageView A;
    public MyButtonImage B;
    public ZoomImageAttacher C;
    public GlideRequests D;
    public String E;
    public String F;
    public final RequestListener G;
    public MainActivity x;
    public Context y;
    public GifListener z;

    /* loaded from: classes3.dex */
    public interface GifListener {
        void a();

        void b(boolean z);

        void c(MyImageView myImageView);
    }

    public ImageGifView(Context context) {
        super(context);
        this.G = new RequestListener<Drawable>() { // from class: com.mycompany.app.image.ImageGifView.6
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyImageView myImageView = ImageGifView.this.A;
                if (myImageView == null) {
                    return true;
                }
                myImageView.f(1, null);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                ImageGifView imageGifView = ImageGifView.this;
                MyImageView myImageView = imageGifView.A;
                if (myImageView != null) {
                    imageGifView.C = new ZoomImageAttacher(myImageView, new ZoomImageAttacher.AttacherListener() { // from class: com.mycompany.app.image.ImageGifView.6.1
                        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                        public final void C(RectF rectF, boolean z) {
                        }

                        @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                        public final boolean k() {
                            GifListener gifListener = ImageGifView.this.z;
                            if (gifListener != null) {
                                gifListener.b(false);
                                return true;
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
                }
            }
        };
        this.y = context;
    }

    @Override // com.mycompany.app.view.MyFadeFrame
    public final void f() {
        super.f();
        GlideRequests glideRequests = this.D;
        if (glideRequests != null) {
            MyImageView myImageView = this.A;
            if (myImageView != null) {
                glideRequests.o(myImageView);
            }
            this.D = null;
        }
        MyImageView myImageView2 = this.A;
        if (myImageView2 != null) {
            myImageView2.d();
            this.A = null;
        }
        MyButtonImage myButtonImage = this.B;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.B = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.C;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.C = null;
        }
        this.x = null;
        this.y = null;
        this.z = null;
    }

    public final void j() {
        Context context = this.y;
        if (context == null) {
            return;
        }
        MyImageView myImageView = new MyImageView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(myImageView, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage.setImageResource(R.drawable.outline_cancel_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        int i = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
        layoutParams2.gravity = 8388613;
        int i2 = MainApp.G1;
        layoutParams2.topMargin = i2;
        layoutParams2.setMarginEnd(i2);
        addView(myButtonImage, layoutParams2);
        this.A = myImageView;
        this.B = myButtonImage;
        myImageView.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageGifView.1
            @Override // com.mycompany.app.image.ImageSizeListener
            public final void a(View view, int i3, int i4) {
                ZoomImageAttacher zoomImageAttacher = ImageGifView.this.C;
                if (zoomImageAttacher != null) {
                    zoomImageAttacher.u();
                }
            }
        });
        this.A.setDrawFailListener(new MyImageView.DrawFailListener() { // from class: com.mycompany.app.image.ImageGifView.2
            @Override // com.mycompany.app.view.MyImageView.DrawFailListener
            public final void a() {
                ImageGifView imageGifView = ImageGifView.this;
                GifListener gifListener = imageGifView.z;
                if (gifListener != null) {
                    gifListener.c(imageGifView.A);
                }
            }
        });
        this.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageGifView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageGifView.this.d(true);
            }
        });
        setListener(new MyFadeListener() { // from class: com.mycompany.app.image.ImageGifView.4
            @Override // com.mycompany.app.view.MyFadeListener
            public final void a(boolean z) {
                GifListener gifListener;
                if (!z && (gifListener = ImageGifView.this.z) != null) {
                    gifListener.a();
                }
            }

            @Override // com.mycompany.app.view.MyFadeListener
            public final void b(boolean z, boolean z2) {
                GifListener gifListener;
                if (!z && (gifListener = ImageGifView.this.z) != null) {
                    gifListener.b(true);
                }
            }
        });
    }

    public final void k(MainActivity mainActivity, String str, String str2, Bitmap bitmap, boolean z, GifListener gifListener) {
        if (mainActivity != null) {
            this.x = mainActivity;
            this.z = gifListener;
            setBackgroundColor(PrefImage.B);
            if (this.A != null) {
                h(z);
                if (TextUtils.isEmpty(str)) {
                    this.A.f(1, null);
                    return;
                }
                if (MainUtil.f6(bitmap)) {
                    this.A.setImageBitmap(bitmap);
                }
                this.E = str;
                this.F = str2;
                MainActivity mainActivity2 = this.x;
                if (mainActivity2 == null) {
                    return;
                }
                mainActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageGifView.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageGifView imageGifView = ImageGifView.this;
                        MainActivity mainActivity3 = imageGifView.x;
                        if (mainActivity3 != null) {
                            if (imageGifView.D == null) {
                                imageGifView.D = GlideApp.a(mainActivity3);
                            }
                            MyImageView myImageView = imageGifView.A;
                            if (myImageView == null) {
                                return;
                            }
                            myImageView.post(new Runnable() { // from class: com.mycompany.app.image.ImageGifView.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImageGifView imageGifView2 = ImageGifView.this;
                                    String str3 = imageGifView2.E;
                                    String str4 = imageGifView2.F;
                                    imageGifView2.E = null;
                                    imageGifView2.F = null;
                                    if (imageGifView2.D == null) {
                                        return;
                                    }
                                    boolean isNetworkUrl = URLUtil.isNetworkUrl(str3);
                                    DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                    if (isNetworkUrl) {
                                        ((RequestBuilder) imageGifView2.D.t(MainUtil.A1(imageGifView2.getContext(), str3, str4)).e(diskCacheStrategy)).I(imageGifView2.G).E(imageGifView2.A);
                                    } else {
                                        ((RequestBuilder) imageGifView2.D.u(str3).I(imageGifView2.G).e(diskCacheStrategy)).E(imageGifView2.A);
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }
}
