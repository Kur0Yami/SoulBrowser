package com.mycompany.app.image;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.db.DbCmp;
import com.mycompany.app.db.DbPdf;
import com.mycompany.app.image.ImageViewActivity;
import com.mycompany.app.image.ImageViewListHori;
import com.mycompany.app.image.ImageViewListVert;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeLinear;
import com.mycompany.app.view.MySizeFrame;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.nostra13.universalimageloader.core.DisplayImageOptions;

/* loaded from: classes3.dex */
public class ImageViewWrapper {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.mycompany.app.image.ImageViewWrapper] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.mycompany.app.image.ImageViewListHori, java.lang.Object, com.mycompany.app.image.ImageViewWrapper] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.mycompany.app.image.ImageViewListVert, com.mycompany.app.image.ImageViewWrapper] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r2v22, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v45, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r2v49, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    public static ImageViewWrapper g(Context context, ImageViewActivity imageViewActivity, int i, Window window, Intent intent, ImageViewActivity.SavedItem savedItem) {
        int intExtra;
        ImageListAdapter imageListAdapter;
        int intExtra2;
        ImageListAdapter imageListAdapter2;
        if (i == 0) {
            return new ImageViewPageEffect(context, imageViewActivity, window, intent, savedItem);
        }
        if (i == 1) {
            return new ImageViewPageScroll(context, imageViewActivity, window, intent, savedItem);
        }
        if (i == 3) {
            final ?? obj = new Object();
            obj.g = true;
            obj.f15915a = context;
            obj.b = imageViewActivity;
            obj.f15916c = window;
            if (MainUtil.O5(context)) {
                obj.e = !PrefImage.s;
            } else {
                obj.e = PrefImage.s;
            }
            obj.S0();
            obj.k = false;
            if (savedItem != null) {
                obj.j = savedItem.f15781a;
                obj.l = savedItem.b;
                boolean z = savedItem.f15782c;
                obj.m = z;
                int i2 = savedItem.e;
                obj.n = i2;
                obj.r = savedItem.m;
                obj.s = savedItem.i;
                obj.t = savedItem.f;
                obj.D = savedItem.g;
                obj.u = savedItem.h;
                obj.v = savedItem.j;
                obj.w = savedItem.k;
                obj.x = savedItem.l;
                obj.R = savedItem.n;
                obj.O = savedItem.o;
                if (z && (imageListAdapter2 = obj.J) != null) {
                    imageListAdapter2.r = savedItem.d;
                    imageListAdapter2.s = i2;
                }
            } else if (intent != null) {
                int intExtra3 = intent.getIntExtra("EXTRA_TYPE", 0);
                obj.t = intExtra3;
                if (intExtra3 != 0 && (intExtra2 = intent.getIntExtra("EXTRA_INDEX", -1)) != -1) {
                    int i3 = obj.t;
                    if (i3 == 1) {
                        MainItem.ChildItem f = DataAlbum.m(obj.f15915a).f(intExtra2);
                        if (f != null) {
                            boolean booleanExtra = intent.getBooleanExtra("EXTRA_BOOK", false);
                            obj.r = f.J;
                            obj.s = f.h;
                            obj.u = f.g;
                            obj.v = f.s;
                            if (booleanExtra || PrefList.q) {
                                obj.w = f.t;
                                obj.x = f.u;
                            }
                        }
                    } else if (i3 == 2) {
                        String stringExtra = intent.getStringExtra("EXTRA_PATH");
                        obj.u = stringExtra;
                        if (!TextUtils.isEmpty(stringExtra)) {
                            obj.j = true;
                            obj.k = true;
                        } else {
                            MainItem.ChildItem f2 = DataPdf.m(obj.f15915a).f(intExtra2);
                            if (f2 != null) {
                                boolean booleanExtra2 = intent.getBooleanExtra("EXTRA_BOOK", false);
                                obj.r = f2.J;
                                obj.s = f2.h;
                                obj.u = f2.g;
                                obj.v = f2.s;
                                if (booleanExtra2 || PrefList.q) {
                                    obj.w = f2.t;
                                    obj.x = f2.u;
                                }
                            }
                        }
                    } else if (i3 == 3) {
                        String stringExtra2 = intent.getStringExtra("EXTRA_PATH");
                        obj.u = stringExtra2;
                        if (!TextUtils.isEmpty(stringExtra2)) {
                            obj.j = true;
                            obj.k = true;
                        } else {
                            MainItem.ChildItem f3 = DataCmp.m(obj.f15915a).f(intExtra2);
                            if (f3 != null) {
                                boolean booleanExtra3 = intent.getBooleanExtra("EXTRA_BOOK", false);
                                obj.r = f3.J;
                                obj.s = f3.h;
                                obj.u = f3.g;
                                obj.v = f3.s;
                                if (booleanExtra3 || PrefList.q) {
                                    obj.w = f3.t;
                                    obj.x = f3.u;
                                }
                            }
                        }
                    } else if (i3 == 12) {
                        obj.s = intent.getStringExtra("EXTRA_NAME");
                        obj.v = DataUrl.b(obj.f15915a).a();
                        obj.w = intExtra2;
                        obj.x = intent.getIntExtra("EXTRA_PAGE", 0);
                        obj.l = intent.getStringExtra("EXTRA_REFERER");
                        obj.m = intent.getBooleanExtra("EXTRA_PRELOAD", false);
                        obj.n = intent.getIntExtra("EXTRA_LOAD_TYPE", 0);
                    }
                }
            }
            int i4 = obj.t;
            if (i4 != 1 && i4 != 2 && i4 != 3 && i4 != 12) {
                MainUtil.e8(obj.f15915a, R.string.invalid_path);
                obj.d0();
                return obj;
            }
            DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
            builder.f20960a = true;
            builder.b = true;
            builder.e = true;
            builder.f = new Object();
            obj.b0 = new DisplayImageOptions(builder);
            obj.I0 = new Handler(Looper.getMainLooper());
            ImageViewActivity imageViewActivity2 = obj.b;
            if (imageViewActivity2 != null) {
                imageViewActivity2.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.image.ImageViewListVert.29
                    public AnonymousClass29() {
                    }

                    @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                    public final boolean a() {
                        return false;
                    }

                    @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                    public final boolean b() {
                        ImageViewListVert imageViewListVert = ImageViewListVert.this;
                        if (imageViewListVert.E0() && !imageViewListVert.G0()) {
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
            obj.W0();
            if (Build.VERSION.SDK_INT < 30) {
                ImageViewActivity imageViewActivity3 = obj.b;
                View a0 = imageViewActivity3 == null ? null : imageViewActivity3.a0();
                if (a0 != null) {
                    a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.image.ImageViewListVert.1
                        public AnonymousClass1() {
                        }

                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i5) {
                            ImageViewListVert imageViewListVert = ImageViewListVert.this;
                            if (imageViewListVert.f15916c != null) {
                                if ((i5 & 4) == 4) {
                                    if (imageViewListVert.E0()) {
                                        imageViewListVert.W0();
                                    }
                                } else if (!imageViewListVert.E0()) {
                                    imageViewListVert.W0();
                                }
                            }
                        }
                    });
                }
            }
            obj.z = new ImageViewListVert.EventHandler(obj);
            ImageViewActivity imageViewActivity4 = obj.b;
            if (imageViewActivity4 != null) {
                ?? frameLayout = new FrameLayout(imageViewActivity4);
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                ImageListVert imageListVert = new ImageListVert(imageViewActivity4);
                frameLayout.addView(imageListVert, -1, -1);
                ImageView imageView = new ImageView(imageViewActivity4);
                frameLayout.addView(imageView, -1, -1);
                MyButtonImage myButtonImage = new MyButtonImage(imageViewActivity4);
                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                myButtonImage.setImageResource(R.drawable.baseline_play_arrow_white_24);
                myButtonImage.n(MainApp.j1, MainApp.k1);
                myButtonImage.k(-1593835520, -1586137739);
                myButtonImage.setVisibility(8);
                int i5 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
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
                imageViewControl.setNaviHeight(obj.d);
                imageViewControl.setVisibility(4);
                frameLayout.addView(imageViewControl, -1, -1);
                MyFadeLinear myFadeLinear = new MyFadeLinear(imageViewActivity4);
                int i6 = MainApp.E1;
                myFadeLinear.setPadding(i6, i6, i6, i6);
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
                obj.H = frameLayout;
                obj.I = imageListVert;
                obj.M = imageView;
                obj.P = myButtonImage;
                obj.S = myCoverView;
                obj.T = imageCoverView;
                obj.U = imageViewControl;
                obj.X = myFadeLinear;
                obj.Y = view;
                obj.Z = appCompatTextView;
                obj.a0 = appCompatTextView2;
                obj.b.setContentView((View) frameLayout);
                MySizeFrame mySizeFrame = obj.H;
                if (mySizeFrame != null) {
                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.2
                        public AnonymousClass2() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListVert imageViewListVert = ImageViewListVert.this;
                            if (imageViewListVert.H != null) {
                                if (imageViewListVert.n != 0) {
                                    ImageViewActivity imageViewActivity5 = imageViewListVert.b;
                                    if (imageViewActivity5 != null) {
                                        imageViewActivity5.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.3
                                            public AnonymousClass3() {
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageViewListVert.O(ImageViewListVert.this);
                                            }
                                        });
                                    } else {
                                        return;
                                    }
                                }
                                imageViewListVert.H.setBackgroundColor(PrefImage.B);
                                imageViewListVert.H.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageViewListVert.4

                                    /* renamed from: com.mycompany.app.image.ImageViewListVert$4$1 */
                                    /* loaded from: classes3.dex */
                                    class AnonymousClass1 implements Runnable {
                                        public AnonymousClass1() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ImageTransView imageTransView = ImageViewListVert.this.N0;
                                            if (imageTransView != null) {
                                                imageTransView.l();
                                            }
                                        }
                                    }

                                    public AnonymousClass4() {
                                    }

                                    @Override // com.mycompany.app.image.ImageSizeListener
                                    public final void a(View view2, int i7, int i8) {
                                        MySizeFrame mySizeFrame2;
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.N0 == null || (mySizeFrame2 = imageViewListVert2.H) == null) {
                                            return;
                                        }
                                        mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.4.1
                                            public AnonymousClass1() {
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageTransView imageTransView = ImageViewListVert.this.N0;
                                                if (imageTransView != null) {
                                                    imageTransView.l();
                                                }
                                            }
                                        });
                                    }
                                });
                                ZoomImageAttacher zoomImageAttacher = new ZoomImageAttacher(imageViewListVert.M, imageViewListVert);
                                imageViewListVert.h0 = zoomImageAttacher;
                                zoomImageAttacher.f20930c = imageViewListVert.H;
                                imageViewListVert.I.setLayoutManager(new LinearLayoutManager(1));
                                imageViewListVert.I.setPageMargin(MainUtil.S1(imageViewListVert.b));
                                imageViewListVert.I.setAttacher(imageViewListVert.h0);
                                imageViewListVert.I.setListener(new ImageScrollListener() { // from class: com.mycompany.app.image.ImageViewListVert.5
                                    public AnonymousClass5() {
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void a(int i7, int i8) {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.U == null) {
                                            return;
                                        }
                                        imageViewListVert2.M0();
                                        imageViewListVert2.U.n(false, i7, i8, i7, i8);
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void b(int i7) {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.I == null) {
                                            return;
                                        }
                                        ImageCoverView imageCoverView2 = imageViewListVert2.T;
                                        if (imageCoverView2 != null) {
                                            imageCoverView2.c();
                                        }
                                        MyCoverView myCoverView2 = imageViewListVert2.S;
                                        if (myCoverView2 != null) {
                                            myCoverView2.f(true);
                                        }
                                        imageViewListVert2.K = i7;
                                        MyFadeLinear myFadeLinear2 = imageViewListVert2.X;
                                        if (myFadeLinear2 != null) {
                                            myFadeLinear2.d(true, false);
                                        }
                                        imageViewListVert2.X0(false);
                                        imageViewListVert2.R0(imageViewListVert2.V, imageViewListVert2.W, false);
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final Point c() {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        ImageViewActivity imageViewActivity6 = imageViewListVert2.b;
                                        if (imageViewActivity6 == null) {
                                            return MainUtil.s4(imageViewListVert2.f15915a);
                                        }
                                        return imageViewActivity6.z0;
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final boolean d() {
                                        return ImageViewListVert.this.E0();
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void e(boolean z2, int i7, int i8, int i9, int i10) {
                                        int i11;
                                        MySizeFrame mySizeFrame2;
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.I != null && !imageViewListVert2.h) {
                                            ImageCoverView imageCoverView2 = imageViewListVert2.T;
                                            if (imageCoverView2 != null) {
                                                imageCoverView2.c();
                                            }
                                            MyCoverView myCoverView2 = imageViewListVert2.S;
                                            boolean z3 = true;
                                            if (myCoverView2 != null) {
                                                myCoverView2.f(true);
                                            }
                                            imageViewListVert2.X0(false);
                                            int i12 = imageViewListVert2.v;
                                            if (i12 > 0) {
                                                if (i7 < 0) {
                                                    i11 = i12 - 1;
                                                } else {
                                                    i11 = i7 % i12;
                                                }
                                            } else {
                                                i11 = 0;
                                            }
                                            imageViewListVert2.y = i8;
                                            if (!MainUtil.H5(imageViewListVert2.b)) {
                                                i8 = 1;
                                            }
                                            if (i11 == imageViewListVert2.w && i8 == imageViewListVert2.x && i9 == imageViewListVert2.V && i10 == imageViewListVert2.W) {
                                                z3 = false;
                                            }
                                            if (!z3 && z2) {
                                                imageViewListVert2.N0();
                                                if (imageViewListVert2.N0 != null && (mySizeFrame2 = imageViewListVert2.H) != null) {
                                                    mySizeFrame2.post(new AnonymousClass60());
                                                    return;
                                                }
                                                return;
                                            }
                                            imageViewListVert2.w = i11;
                                            imageViewListVert2.x = i8;
                                            imageViewListVert2.R0(i9, i10, z3);
                                        }
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void f(int i7, boolean z2) {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (imageViewListVert2.I == null) {
                                            return;
                                        }
                                        imageViewListVert2.Q0(imageViewListVert2.v, imageViewListVert2.w, imageViewListVert2.x, i7, imageViewListVert2.u, z2, false);
                                    }
                                });
                                imageViewListVert.P.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewListVert.6
                                    public AnonymousClass6() {
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        if (!imageViewListVert2.y0 && !imageViewListVert2.F0()) {
                                            imageViewListVert2.a1(true);
                                        }
                                    }
                                });
                                if (imageViewListVert.R) {
                                    imageViewListVert.R = false;
                                    imageViewListVert.a1(false);
                                }
                                imageViewListVert.T.setVertical(true);
                                MySizeFrame mySizeFrame2 = imageViewListVert.H;
                                if (mySizeFrame2 == null) {
                                    return;
                                }
                                mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.7

                                    /* renamed from: com.mycompany.app.image.ImageViewListVert$7$1 */
                                    /* loaded from: classes3.dex */
                                    class AnonymousClass1 implements Runnable {
                                        public AnonymousClass1() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ImageViewListVert imageViewListVert = ImageViewListVert.this;
                                            if (imageViewListVert.H == null) {
                                                return;
                                            }
                                            boolean z = imageViewListVert.k;
                                            imageViewListVert.k = false;
                                            if (!z) {
                                                imageViewListVert.P0();
                                            } else {
                                                int i = imageViewListVert.t;
                                                if (i == 2) {
                                                    ImageViewActivity imageViewActivity = imageViewListVert.b;
                                                    if (imageViewActivity != null) {
                                                        imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.8

                                                            /* renamed from: com.mycompany.app.image.ImageViewListVert$8$1 */
                                                            /* loaded from: classes3.dex */
                                                            class AnonymousClass1 implements Runnable {
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewListVert.this.P0();
                                                                }
                                                            }

                                                            public AnonymousClass8() {
                                                            }

                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MainItem.ChildItem a2;
                                                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                                                Context context = imageViewListVert2.f15915a;
                                                                if (context != null) {
                                                                    imageViewListVert2.s = MainUtil.b1(context, imageViewListVert2.u);
                                                                    if (PrefList.q && (a2 = DbPdf.a(imageViewListVert2.f15915a, imageViewListVert2.u)) != null) {
                                                                        imageViewListVert2.v = a2.s;
                                                                        imageViewListVert2.w = a2.t;
                                                                        imageViewListVert2.x = a2.u;
                                                                    }
                                                                    MySizeFrame mySizeFrame = imageViewListVert2.H;
                                                                    if (mySizeFrame == null) {
                                                                        return;
                                                                    }
                                                                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.8.1
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListVert.this.P0();
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    }
                                                } else if (i == 3) {
                                                    ImageViewActivity imageViewActivity2 = imageViewListVert.b;
                                                    if (imageViewActivity2 != null) {
                                                        imageViewActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.9

                                                            /* renamed from: com.mycompany.app.image.ImageViewListVert$9$1 */
                                                            /* loaded from: classes3.dex */
                                                            class AnonymousClass1 implements Runnable {
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewListVert.this.P0();
                                                                }
                                                            }

                                                            public AnonymousClass9() {
                                                            }

                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                                                Context context = imageViewListVert2.f15915a;
                                                                if (context != null) {
                                                                    imageViewListVert2.s = MainUtil.b1(context, imageViewListVert2.u);
                                                                    if (PrefList.q) {
                                                                        MainItem.ChildItem a2 = DbCmp.a(imageViewListVert2.f15915a, imageViewListVert2.u);
                                                                        if (a2 != null) {
                                                                            imageViewListVert2.v = a2.s;
                                                                            imageViewListVert2.w = a2.t;
                                                                            imageViewListVert2.x = a2.u;
                                                                        } else {
                                                                            return;
                                                                        }
                                                                    }
                                                                    MySizeFrame mySizeFrame = imageViewListVert2.H;
                                                                    if (mySizeFrame == null) {
                                                                        return;
                                                                    }
                                                                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.9.1
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListVert.this.P0();
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    }
                                                } else {
                                                    imageViewListVert.P0();
                                                }
                                            }
                                            MainUtil.d5(imageViewListVert.f15915a);
                                            MainUtil.s7(imageViewListVert.f15915a);
                                        }
                                    }

                                    public AnonymousClass7() {
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ImageViewListVert imageViewListVert2 = ImageViewListVert.this;
                                        ImageViewControl imageViewControl2 = imageViewListVert2.U;
                                        if (imageViewControl2 != null) {
                                            imageViewControl2.s(imageViewListVert2.b, imageViewListVert2.f15916c, imageViewListVert2.e, imageViewListVert2);
                                            imageViewListVert2.U.setIconType(imageViewListVert2.t);
                                            MySizeFrame mySizeFrame3 = imageViewListVert2.H;
                                            if (mySizeFrame3 == null) {
                                                return;
                                            }
                                            mySizeFrame3.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.7.1
                                                public AnonymousClass1() {
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    ImageViewListVert imageViewListVert3 = ImageViewListVert.this;
                                                    if (imageViewListVert3.H == null) {
                                                        return;
                                                    }
                                                    boolean z2 = imageViewListVert3.k;
                                                    imageViewListVert3.k = false;
                                                    if (!z2) {
                                                        imageViewListVert3.P0();
                                                    } else {
                                                        int i7 = imageViewListVert3.t;
                                                        if (i7 == 2) {
                                                            ImageViewActivity imageViewActivity6 = imageViewListVert3.b;
                                                            if (imageViewActivity6 != null) {
                                                                imageViewActivity6.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.8

                                                                    /* renamed from: com.mycompany.app.image.ImageViewListVert$8$1 */
                                                                    /* loaded from: classes3.dex */
                                                                    class AnonymousClass1 implements Runnable {
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListVert.this.P0();
                                                                        }
                                                                    }

                                                                    public AnonymousClass8() {
                                                                    }

                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        MainItem.ChildItem a2;
                                                                        ImageViewListVert imageViewListVert22 = ImageViewListVert.this;
                                                                        Context context2 = imageViewListVert22.f15915a;
                                                                        if (context2 != null) {
                                                                            imageViewListVert22.s = MainUtil.b1(context2, imageViewListVert22.u);
                                                                            if (PrefList.q && (a2 = DbPdf.a(imageViewListVert22.f15915a, imageViewListVert22.u)) != null) {
                                                                                imageViewListVert22.v = a2.s;
                                                                                imageViewListVert22.w = a2.t;
                                                                                imageViewListVert22.x = a2.u;
                                                                            }
                                                                            MySizeFrame mySizeFrame4 = imageViewListVert22.H;
                                                                            if (mySizeFrame4 == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.8.1
                                                                                public AnonymousClass1() {
                                                                                }

                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    ImageViewListVert.this.P0();
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        } else if (i7 == 3) {
                                                            ImageViewActivity imageViewActivity22 = imageViewListVert3.b;
                                                            if (imageViewActivity22 != null) {
                                                                imageViewActivity22.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.9

                                                                    /* renamed from: com.mycompany.app.image.ImageViewListVert$9$1 */
                                                                    /* loaded from: classes3.dex */
                                                                    class AnonymousClass1 implements Runnable {
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListVert.this.P0();
                                                                        }
                                                                    }

                                                                    public AnonymousClass9() {
                                                                    }

                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewListVert imageViewListVert22 = ImageViewListVert.this;
                                                                        Context context2 = imageViewListVert22.f15915a;
                                                                        if (context2 != null) {
                                                                            imageViewListVert22.s = MainUtil.b1(context2, imageViewListVert22.u);
                                                                            if (PrefList.q) {
                                                                                MainItem.ChildItem a2 = DbCmp.a(imageViewListVert22.f15915a, imageViewListVert22.u);
                                                                                if (a2 != null) {
                                                                                    imageViewListVert22.v = a2.s;
                                                                                    imageViewListVert22.w = a2.t;
                                                                                    imageViewListVert22.x = a2.u;
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                            MySizeFrame mySizeFrame4 = imageViewListVert22.H;
                                                                            if (mySizeFrame4 == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListVert.9.1
                                                                                public AnonymousClass1() {
                                                                                }

                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    ImageViewListVert.this.P0();
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        } else {
                                                            imageViewListVert3.P0();
                                                        }
                                                    }
                                                    MainUtil.d5(imageViewListVert3.f15915a);
                                                    MainUtil.s7(imageViewListVert3.f15915a);
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        }
                    });
                    return obj;
                }
            }
            return obj;
        }
        if (i == 2) {
            final ?? obj2 = new Object();
            obj2.g = true;
            obj2.f15813a = context;
            obj2.b = imageViewActivity;
            obj2.f15814c = window;
            if (MainUtil.O5(context)) {
                obj2.e = !PrefImage.s;
            } else {
                obj2.e = PrefImage.s;
            }
            obj2.S0();
            obj2.k = false;
            if (savedItem != null) {
                obj2.j = savedItem.f15781a;
                obj2.l = savedItem.b;
                boolean z2 = savedItem.f15782c;
                obj2.m = z2;
                int i7 = savedItem.e;
                obj2.n = i7;
                obj2.r = savedItem.m;
                obj2.s = savedItem.i;
                obj2.t = savedItem.f;
                obj2.D = savedItem.g;
                obj2.u = savedItem.h;
                obj2.v = savedItem.j;
                obj2.w = savedItem.k;
                obj2.x = savedItem.l;
                obj2.R = savedItem.n;
                obj2.O = savedItem.o;
                if (z2 && (imageListAdapter = obj2.J) != null) {
                    imageListAdapter.r = savedItem.d;
                    imageListAdapter.s = i7;
                }
            } else if (intent != null) {
                int intExtra4 = intent.getIntExtra("EXTRA_TYPE", 0);
                obj2.t = intExtra4;
                if (intExtra4 != 0 && (intExtra = intent.getIntExtra("EXTRA_INDEX", -1)) != -1) {
                    int i8 = obj2.t;
                    if (i8 == 1) {
                        MainItem.ChildItem f4 = DataAlbum.m(obj2.f15813a).f(intExtra);
                        if (f4 != null) {
                            boolean booleanExtra4 = intent.getBooleanExtra("EXTRA_BOOK", false);
                            obj2.r = f4.J;
                            obj2.s = f4.h;
                            obj2.u = f4.g;
                            obj2.v = f4.s;
                            if (booleanExtra4 || PrefList.q) {
                                obj2.w = f4.t;
                                obj2.x = f4.u;
                            }
                        }
                    } else if (i8 == 2) {
                        String stringExtra3 = intent.getStringExtra("EXTRA_PATH");
                        obj2.u = stringExtra3;
                        if (!TextUtils.isEmpty(stringExtra3)) {
                            obj2.j = true;
                            obj2.k = true;
                        } else {
                            MainItem.ChildItem f5 = DataPdf.m(obj2.f15813a).f(intExtra);
                            if (f5 != null) {
                                boolean booleanExtra5 = intent.getBooleanExtra("EXTRA_BOOK", false);
                                obj2.r = f5.J;
                                obj2.s = f5.h;
                                obj2.u = f5.g;
                                obj2.v = f5.s;
                                if (booleanExtra5 || PrefList.q) {
                                    obj2.w = f5.t;
                                    obj2.x = f5.u;
                                }
                            }
                        }
                    } else if (i8 == 3) {
                        String stringExtra4 = intent.getStringExtra("EXTRA_PATH");
                        obj2.u = stringExtra4;
                        if (!TextUtils.isEmpty(stringExtra4)) {
                            obj2.j = true;
                            obj2.k = true;
                        } else {
                            MainItem.ChildItem f6 = DataCmp.m(obj2.f15813a).f(intExtra);
                            if (f6 != null) {
                                boolean booleanExtra6 = intent.getBooleanExtra("EXTRA_BOOK", false);
                                obj2.r = f6.J;
                                obj2.s = f6.h;
                                obj2.u = f6.g;
                                obj2.v = f6.s;
                                if (booleanExtra6 || PrefList.q) {
                                    obj2.w = f6.t;
                                    obj2.x = f6.u;
                                }
                            }
                        }
                    } else if (i8 == 12) {
                        obj2.s = intent.getStringExtra("EXTRA_NAME");
                        obj2.v = DataUrl.b(obj2.f15813a).a();
                        obj2.w = intExtra;
                        obj2.x = intent.getIntExtra("EXTRA_PAGE", 0);
                        obj2.l = intent.getStringExtra("EXTRA_REFERER");
                        obj2.m = intent.getBooleanExtra("EXTRA_PRELOAD", false);
                        obj2.n = intent.getIntExtra("EXTRA_LOAD_TYPE", 0);
                    }
                }
            }
            int i9 = obj2.t;
            if (i9 != 1 && i9 != 2 && i9 != 3 && i9 != 12) {
                MainUtil.e8(obj2.f15813a, R.string.invalid_path);
                obj2.d0();
                return obj2;
            }
            DisplayImageOptions.Builder builder2 = new DisplayImageOptions.Builder();
            builder2.f20960a = true;
            builder2.b = true;
            builder2.e = true;
            builder2.f = new Object();
            obj2.b0 = new DisplayImageOptions(builder2);
            obj2.J0 = new Handler(Looper.getMainLooper());
            ImageViewActivity imageViewActivity5 = obj2.b;
            if (imageViewActivity5 != null) {
                imageViewActivity5.V0 = new MainActivity.SystemBarListener() { // from class: com.mycompany.app.image.ImageViewListHori.29
                    public AnonymousClass29() {
                    }

                    @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                    public final boolean a() {
                        return false;
                    }

                    @Override // com.mycompany.app.main.MainActivity.SystemBarListener
                    public final boolean b() {
                        ImageViewListHori imageViewListHori = ImageViewListHori.this;
                        if (imageViewListHori.E0() && !imageViewListHori.G0()) {
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
            obj2.W0();
            if (Build.VERSION.SDK_INT < 30) {
                ImageViewActivity imageViewActivity6 = obj2.b;
                View a02 = imageViewActivity6 == null ? null : imageViewActivity6.a0();
                if (a02 != null) {
                    a02.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.image.ImageViewListHori.1
                        public AnonymousClass1() {
                        }

                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i10) {
                            ImageViewListHori imageViewListHori = ImageViewListHori.this;
                            if (imageViewListHori.f15814c != null) {
                                if ((i10 & 4) == 4) {
                                    if (imageViewListHori.E0()) {
                                        imageViewListHori.W0();
                                    }
                                } else if (!imageViewListHori.E0()) {
                                    imageViewListHori.W0();
                                }
                            }
                        }
                    });
                }
            }
            obj2.z = new ImageViewListHori.EventHandler(obj2);
            ImageViewActivity imageViewActivity7 = obj2.b;
            if (imageViewActivity7 != null) {
                ?? frameLayout2 = new FrameLayout(imageViewActivity7);
                frameLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                ImageListHori imageListHori = new ImageListHori(imageViewActivity7);
                frameLayout2.addView(imageListHori, -1, -1);
                ImageView imageView2 = new ImageView(imageViewActivity7);
                frameLayout2.addView(imageView2, -1, -1);
                MyButtonImage myButtonImage2 = new MyButtonImage(imageViewActivity7);
                myButtonImage2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                myButtonImage2.setImageResource(R.drawable.baseline_play_arrow_white_24);
                myButtonImage2.n(MainApp.j1, MainApp.k1);
                myButtonImage2.k(-1593835520, -1586137739);
                myButtonImage2.setVisibility(8);
                int i10 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i10, i10);
                layoutParams6.gravity = 17;
                frameLayout2.addView(myButtonImage2, layoutParams6);
                MyCoverView myCoverView2 = new MyCoverView(imageViewActivity7, -1, MainApp.y1, MainApp.z1);
                myCoverView2.setBackColor(-1593835520);
                myCoverView2.setVisibility(8);
                frameLayout2.addView(myCoverView2, -1, -1);
                ImageCoverView imageCoverView2 = new ImageCoverView(imageViewActivity7);
                imageCoverView2.setVisibility(8);
                frameLayout2.addView(imageCoverView2, -1, -1);
                ImageViewControl imageViewControl2 = new ImageViewControl(imageViewActivity7);
                imageViewControl2.setNaviHeight(obj2.d);
                imageViewControl2.setVisibility(4);
                frameLayout2.addView(imageViewControl2, -1, -1);
                MyFadeLinear myFadeLinear2 = new MyFadeLinear(imageViewActivity7);
                int i11 = MainApp.E1;
                myFadeLinear2.setPadding(i11, i11, i11, i11);
                myFadeLinear2.setBackgroundResource(R.drawable.round_guide_16);
                myFadeLinear2.setShowTime(1000);
                myFadeLinear2.setAnimTime(600);
                myFadeLinear2.setAutoHide(true);
                myFadeLinear2.setBlocking(true);
                myFadeLinear2.setOrientation(1);
                myFadeLinear2.setVisibility(8);
                FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams((int) MainUtil.G(imageViewActivity7, 132.0f), -2);
                layoutParams7.gravity = 17;
                frameLayout2.addView(myFadeLinear2, layoutParams7);
                View view2 = new View(imageViewActivity7);
                int G2 = (int) MainUtil.G(imageViewActivity7, 84.0f);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(G2, G2);
                layoutParams8.gravity = 1;
                myFadeLinear2.addView(view2, layoutParams8);
                AppCompatTextView appCompatTextView3 = new AppCompatTextView(imageViewActivity7, null);
                appCompatTextView3.setGravity(1);
                appCompatTextView3.setTextSize(1, 16.0f);
                appCompatTextView3.setTextColor(-1);
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams9.topMargin = MainApp.F1;
                layoutParams9.gravity = 1;
                myFadeLinear2.addView(appCompatTextView3, layoutParams9);
                AppCompatTextView appCompatTextView4 = new AppCompatTextView(imageViewActivity7, null);
                appCompatTextView4.setGravity(1);
                appCompatTextView4.setTextSize(1, 16.0f);
                appCompatTextView4.setTextColor(-256);
                LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams10.topMargin = MainApp.F1;
                layoutParams10.gravity = 1;
                myFadeLinear2.addView(appCompatTextView4, layoutParams10);
                obj2.H = frameLayout2;
                obj2.I = imageListHori;
                obj2.M = imageView2;
                obj2.P = myButtonImage2;
                obj2.S = myCoverView2;
                obj2.T = imageCoverView2;
                obj2.U = imageViewControl2;
                obj2.X = myFadeLinear2;
                obj2.Y = view2;
                obj2.Z = appCompatTextView3;
                obj2.a0 = appCompatTextView4;
                obj2.b.setContentView((View) frameLayout2);
                MySizeFrame mySizeFrame2 = obj2.H;
                if (mySizeFrame2 != null) {
                    mySizeFrame2.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.2
                        public AnonymousClass2() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewListHori imageViewListHori = ImageViewListHori.this;
                            if (imageViewListHori.H != null) {
                                if (imageViewListHori.n != 0) {
                                    ImageViewActivity imageViewActivity8 = imageViewListHori.b;
                                    if (imageViewActivity8 != null) {
                                        imageViewActivity8.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.3
                                            public AnonymousClass3() {
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageViewListHori.O(ImageViewListHori.this);
                                            }
                                        });
                                    } else {
                                        return;
                                    }
                                }
                                imageViewListHori.H.setBackgroundColor(PrefImage.B);
                                imageViewListHori.H.setListener(new ImageSizeListener() { // from class: com.mycompany.app.image.ImageViewListHori.4

                                    /* renamed from: com.mycompany.app.image.ImageViewListHori$4$1 */
                                    /* loaded from: classes3.dex */
                                    class AnonymousClass1 implements Runnable {
                                        public AnonymousClass1() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ImageTransView imageTransView = ImageViewListHori.this.O0;
                                            if (imageTransView != null) {
                                                imageTransView.l();
                                            }
                                        }
                                    }

                                    public AnonymousClass4() {
                                    }

                                    @Override // com.mycompany.app.image.ImageSizeListener
                                    public final void a(View view3, int i12, int i13) {
                                        MySizeFrame mySizeFrame3;
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (imageViewListHori2.O0 == null || (mySizeFrame3 = imageViewListHori2.H) == null) {
                                            return;
                                        }
                                        mySizeFrame3.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.4.1
                                            public AnonymousClass1() {
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageTransView imageTransView = ImageViewListHori.this.O0;
                                                if (imageTransView != null) {
                                                    imageTransView.l();
                                                }
                                            }
                                        });
                                    }
                                });
                                ZoomImageAttacher zoomImageAttacher = new ZoomImageAttacher(imageViewListHori.M, imageViewListHori);
                                imageViewListHori.h0 = zoomImageAttacher;
                                zoomImageAttacher.f20930c = imageViewListHori.H;
                                imageViewListHori.I.setLayoutManager(new LinearLayoutManager(0));
                                imageViewListHori.I.setPageMargin(MainUtil.S1(imageViewListHori.b));
                                imageViewListHori.I.setAttacher(imageViewListHori.h0);
                                imageViewListHori.I.setListener(new ImageScrollListener() { // from class: com.mycompany.app.image.ImageViewListHori.5
                                    public AnonymousClass5() {
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void a(int i12, int i13) {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (imageViewListHori2.U == null) {
                                            return;
                                        }
                                        imageViewListHori2.M0();
                                        imageViewListHori2.U.n(false, i12, i13, i12, i13);
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void b(int i12) {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (imageViewListHori2.I == null) {
                                            return;
                                        }
                                        ImageCoverView imageCoverView3 = imageViewListHori2.T;
                                        if (imageCoverView3 != null) {
                                            imageCoverView3.c();
                                        }
                                        MyCoverView myCoverView3 = imageViewListHori2.S;
                                        if (myCoverView3 != null) {
                                            myCoverView3.f(true);
                                        }
                                        imageViewListHori2.K = i12;
                                        MyFadeLinear myFadeLinear3 = imageViewListHori2.X;
                                        if (myFadeLinear3 != null) {
                                            myFadeLinear3.d(true, false);
                                        }
                                        imageViewListHori2.X0(false);
                                        imageViewListHori2.R0(imageViewListHori2.V, imageViewListHori2.W, false);
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final Point c() {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        ImageViewActivity imageViewActivity9 = imageViewListHori2.b;
                                        if (imageViewActivity9 == null) {
                                            return MainUtil.s4(imageViewListHori2.f15813a);
                                        }
                                        return imageViewActivity9.z0;
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final boolean d() {
                                        return ImageViewListHori.this.E0();
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void e(boolean z3, int i12, int i13, int i14, int i15) {
                                        int i16;
                                        MySizeFrame mySizeFrame3;
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (imageViewListHori2.I != null && !imageViewListHori2.h) {
                                            ImageCoverView imageCoverView3 = imageViewListHori2.T;
                                            if (imageCoverView3 != null) {
                                                imageCoverView3.c();
                                            }
                                            MyCoverView myCoverView3 = imageViewListHori2.S;
                                            boolean z4 = true;
                                            if (myCoverView3 != null) {
                                                myCoverView3.f(true);
                                            }
                                            imageViewListHori2.X0(false);
                                            int i17 = imageViewListHori2.v;
                                            if (i17 > 0) {
                                                if (i12 < 0) {
                                                    i16 = i17 - 1;
                                                } else {
                                                    i16 = i12 % i17;
                                                }
                                                if (PrefImage.s) {
                                                    i16 = (i17 - i16) - 1;
                                                }
                                            } else {
                                                i16 = 0;
                                            }
                                            imageViewListHori2.y = i13;
                                            if (!MainUtil.H5(imageViewListHori2.b)) {
                                                i13 = 1;
                                            }
                                            if (i16 == imageViewListHori2.w && i13 == imageViewListHori2.x && i14 == imageViewListHori2.V && i15 == imageViewListHori2.W) {
                                                z4 = false;
                                            }
                                            if (!z4 && z3) {
                                                imageViewListHori2.N0();
                                                if (imageViewListHori2.O0 != null && (mySizeFrame3 = imageViewListHori2.H) != null) {
                                                    mySizeFrame3.post(new AnonymousClass60());
                                                    return;
                                                }
                                                return;
                                            }
                                            imageViewListHori2.w = i16;
                                            imageViewListHori2.x = i13;
                                            imageViewListHori2.R0(i14, i15, z4);
                                        }
                                    }

                                    @Override // com.mycompany.app.image.ImageScrollListener
                                    public final void f(int i12, boolean z3) {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (imageViewListHori2.I == null) {
                                            return;
                                        }
                                        imageViewListHori2.Q0(imageViewListHori2.v, imageViewListHori2.w, imageViewListHori2.x, i12, imageViewListHori2.u, z3, false);
                                    }
                                });
                                imageViewListHori.P.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewListHori.6
                                    public AnonymousClass6() {
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view3) {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        if (!imageViewListHori2.y0 && !imageViewListHori2.F0()) {
                                            imageViewListHori2.a1(true);
                                        }
                                    }
                                });
                                if (imageViewListHori.R) {
                                    imageViewListHori.R = false;
                                    imageViewListHori.a1(false);
                                }
                                MySizeFrame mySizeFrame3 = imageViewListHori.H;
                                if (mySizeFrame3 == null) {
                                    return;
                                }
                                mySizeFrame3.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.7

                                    /* renamed from: com.mycompany.app.image.ImageViewListHori$7$1 */
                                    /* loaded from: classes3.dex */
                                    class AnonymousClass1 implements Runnable {
                                        public AnonymousClass1() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ImageViewListHori imageViewListHori = ImageViewListHori.this;
                                            if (imageViewListHori.H == null) {
                                                return;
                                            }
                                            boolean z = imageViewListHori.k;
                                            imageViewListHori.k = false;
                                            if (!z) {
                                                imageViewListHori.P0();
                                            } else {
                                                int i = imageViewListHori.t;
                                                if (i == 2) {
                                                    ImageViewActivity imageViewActivity = imageViewListHori.b;
                                                    if (imageViewActivity != null) {
                                                        imageViewActivity.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.8

                                                            /* renamed from: com.mycompany.app.image.ImageViewListHori$8$1 */
                                                            /* loaded from: classes3.dex */
                                                            class AnonymousClass1 implements Runnable {
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewListHori.this.P0();
                                                                }
                                                            }

                                                            public AnonymousClass8() {
                                                            }

                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MainItem.ChildItem a2;
                                                                ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                                                Context context = imageViewListHori2.f15813a;
                                                                if (context != null) {
                                                                    imageViewListHori2.s = MainUtil.b1(context, imageViewListHori2.u);
                                                                    if (PrefList.q && (a2 = DbPdf.a(imageViewListHori2.f15813a, imageViewListHori2.u)) != null) {
                                                                        imageViewListHori2.v = a2.s;
                                                                        imageViewListHori2.w = a2.t;
                                                                        imageViewListHori2.x = a2.u;
                                                                    }
                                                                    MySizeFrame mySizeFrame = imageViewListHori2.H;
                                                                    if (mySizeFrame == null) {
                                                                        return;
                                                                    }
                                                                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.8.1
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListHori.this.P0();
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    }
                                                } else if (i == 3) {
                                                    ImageViewActivity imageViewActivity2 = imageViewListHori.b;
                                                    if (imageViewActivity2 != null) {
                                                        imageViewActivity2.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.9

                                                            /* renamed from: com.mycompany.app.image.ImageViewListHori$9$1 */
                                                            /* loaded from: classes3.dex */
                                                            class AnonymousClass1 implements Runnable {
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    ImageViewListHori.this.P0();
                                                                }
                                                            }

                                                            public AnonymousClass9() {
                                                            }

                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                                                Context context = imageViewListHori2.f15813a;
                                                                if (context != null) {
                                                                    imageViewListHori2.s = MainUtil.b1(context, imageViewListHori2.u);
                                                                    if (PrefList.q) {
                                                                        MainItem.ChildItem a2 = DbCmp.a(imageViewListHori2.f15813a, imageViewListHori2.u);
                                                                        if (a2 != null) {
                                                                            imageViewListHori2.v = a2.s;
                                                                            imageViewListHori2.w = a2.t;
                                                                            imageViewListHori2.x = a2.u;
                                                                        } else {
                                                                            return;
                                                                        }
                                                                    }
                                                                    MySizeFrame mySizeFrame = imageViewListHori2.H;
                                                                    if (mySizeFrame == null) {
                                                                        return;
                                                                    }
                                                                    mySizeFrame.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.9.1
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListHori.this.P0();
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    }
                                                } else {
                                                    imageViewListHori.P0();
                                                }
                                            }
                                            MainUtil.d5(imageViewListHori.f15813a);
                                            MainUtil.s7(imageViewListHori.f15813a);
                                        }
                                    }

                                    public AnonymousClass7() {
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ImageViewListHori imageViewListHori2 = ImageViewListHori.this;
                                        ImageViewControl imageViewControl3 = imageViewListHori2.U;
                                        if (imageViewControl3 != null) {
                                            imageViewControl3.s(imageViewListHori2.b, imageViewListHori2.f15814c, imageViewListHori2.e, imageViewListHori2);
                                            imageViewListHori2.U.setIconType(imageViewListHori2.t);
                                            MySizeFrame mySizeFrame4 = imageViewListHori2.H;
                                            if (mySizeFrame4 == null) {
                                                return;
                                            }
                                            mySizeFrame4.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.7.1
                                                public AnonymousClass1() {
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    ImageViewListHori imageViewListHori3 = ImageViewListHori.this;
                                                    if (imageViewListHori3.H == null) {
                                                        return;
                                                    }
                                                    boolean z3 = imageViewListHori3.k;
                                                    imageViewListHori3.k = false;
                                                    if (!z3) {
                                                        imageViewListHori3.P0();
                                                    } else {
                                                        int i12 = imageViewListHori3.t;
                                                        if (i12 == 2) {
                                                            ImageViewActivity imageViewActivity9 = imageViewListHori3.b;
                                                            if (imageViewActivity9 != null) {
                                                                imageViewActivity9.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.8

                                                                    /* renamed from: com.mycompany.app.image.ImageViewListHori$8$1 */
                                                                    /* loaded from: classes3.dex */
                                                                    class AnonymousClass1 implements Runnable {
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListHori.this.P0();
                                                                        }
                                                                    }

                                                                    public AnonymousClass8() {
                                                                    }

                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        MainItem.ChildItem a2;
                                                                        ImageViewListHori imageViewListHori22 = ImageViewListHori.this;
                                                                        Context context2 = imageViewListHori22.f15813a;
                                                                        if (context2 != null) {
                                                                            imageViewListHori22.s = MainUtil.b1(context2, imageViewListHori22.u);
                                                                            if (PrefList.q && (a2 = DbPdf.a(imageViewListHori22.f15813a, imageViewListHori22.u)) != null) {
                                                                                imageViewListHori22.v = a2.s;
                                                                                imageViewListHori22.w = a2.t;
                                                                                imageViewListHori22.x = a2.u;
                                                                            }
                                                                            MySizeFrame mySizeFrame5 = imageViewListHori22.H;
                                                                            if (mySizeFrame5 == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame5.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.8.1
                                                                                public AnonymousClass1() {
                                                                                }

                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    ImageViewListHori.this.P0();
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        } else if (i12 == 3) {
                                                            ImageViewActivity imageViewActivity22 = imageViewListHori3.b;
                                                            if (imageViewActivity22 != null) {
                                                                imageViewActivity22.m0(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.9

                                                                    /* renamed from: com.mycompany.app.image.ImageViewListHori$9$1 */
                                                                    /* loaded from: classes3.dex */
                                                                    class AnonymousClass1 implements Runnable {
                                                                        public AnonymousClass1() {
                                                                        }

                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            ImageViewListHori.this.P0();
                                                                        }
                                                                    }

                                                                    public AnonymousClass9() {
                                                                    }

                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        ImageViewListHori imageViewListHori22 = ImageViewListHori.this;
                                                                        Context context2 = imageViewListHori22.f15813a;
                                                                        if (context2 != null) {
                                                                            imageViewListHori22.s = MainUtil.b1(context2, imageViewListHori22.u);
                                                                            if (PrefList.q) {
                                                                                MainItem.ChildItem a2 = DbCmp.a(imageViewListHori22.f15813a, imageViewListHori22.u);
                                                                                if (a2 != null) {
                                                                                    imageViewListHori22.v = a2.s;
                                                                                    imageViewListHori22.w = a2.t;
                                                                                    imageViewListHori22.x = a2.u;
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                            MySizeFrame mySizeFrame5 = imageViewListHori22.H;
                                                                            if (mySizeFrame5 == null) {
                                                                                return;
                                                                            }
                                                                            mySizeFrame5.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewListHori.9.1
                                                                                public AnonymousClass1() {
                                                                                }

                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    ImageViewListHori.this.P0();
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        } else {
                                                            imageViewListHori3.P0();
                                                        }
                                                    }
                                                    MainUtil.d5(imageViewListHori3.f15813a);
                                                    MainUtil.s7(imageViewListHori3.f15813a);
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        }
                    });
                    return obj2;
                }
            }
            return obj2;
        }
        return new Object();
    }

    public void F(Configuration configuration) {
    }

    public void G() {
    }

    public boolean H(int i) {
        return false;
    }

    public void I(boolean z) {
    }

    public void J() {
    }

    public boolean L() {
        return false;
    }

    public void M(int i) {
    }

    public boolean c(MotionEvent motionEvent) {
        return false;
    }

    public int e() {
        return -1;
    }

    public int f() {
        return -1;
    }

    public void j(int i, int i2, Intent intent) {
    }

    public void K() {
    }
}
