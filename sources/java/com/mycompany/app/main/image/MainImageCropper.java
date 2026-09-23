package com.mycompany.app.main.image;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.transition.Transition;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.crop.CropImageView;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.dialog.DialogDownEdit;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyGlideTarget;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MySnackbar;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MainImageCropper extends MainActivity {
    public GlideRequests A1;
    public boolean B1;
    public String C1;
    public Uri D1;
    public String F1;
    public MySnackbar H1;
    public Context f1;
    public String g1;
    public Uri h1;
    public String i1;
    public String j1;
    public String k1;
    public boolean l1;
    public int m1;
    public int n1;
    public boolean o1;
    public FrameLayout p1;
    public CropImageView q1;
    public MyButtonImage r1;
    public LinearLayout s1;
    public AppCompatTextView t1;
    public MyLineText u1;
    public MyCoverView v1;
    public boolean w1;
    public boolean x1;
    public DialogDownEdit y1;
    public boolean z1;
    public final MyGlideTarget E1 = new MyGlideTarget<Bitmap>() { // from class: com.mycompany.app.main.image.MainImageCropper.7
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            Bitmap bitmap = (Bitmap) obj;
            MainImageCropper mainImageCropper = MainImageCropper.this;
            if (mainImageCropper.q1 == null) {
                return;
            }
            if (MainUtil.f6(bitmap)) {
                mainImageCropper.v1.f(true);
                mainImageCropper.q1.setImageBitmap(bitmap);
            } else {
                mainImageCropper.w1 = true;
                mainImageCropper.v1.f(true);
                mainImageCropper.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                mainImageCropper.q1.setImageResource(R.drawable.outline_error_dark_web_48);
            }
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void f(SingleRequest singleRequest) {
            MainImageCropper mainImageCropper = MainImageCropper.this;
            CropImageView cropImageView = mainImageCropper.q1;
            if (cropImageView == null) {
                return;
            }
            singleRequest.b(cropImageView.getWidth(), mainImageCropper.q1.getHeight());
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
            MainImageCropper mainImageCropper = MainImageCropper.this;
            if (mainImageCropper.q1 == null) {
                return;
            }
            mainImageCropper.w1 = true;
            mainImageCropper.v1.f(true);
            mainImageCropper.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            mainImageCropper.q1.setImageResource(R.drawable.outline_error_dark_web_48);
        }
    };
    public final MyGlideTarget G1 = new MyGlideTarget<PictureDrawable>() { // from class: com.mycompany.app.main.image.MainImageCropper.9
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            PictureDrawable pictureDrawable = (PictureDrawable) obj;
            MainImageCropper mainImageCropper = MainImageCropper.this;
            if (mainImageCropper.q1 == null) {
                return;
            }
            Bitmap H = MainUtil.H(pictureDrawable, 0);
            if (MainUtil.f6(H)) {
                mainImageCropper.v1.f(true);
                mainImageCropper.q1.setImageBitmap(H);
            } else {
                mainImageCropper.w1 = true;
                mainImageCropper.v1.f(true);
                mainImageCropper.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                mainImageCropper.q1.setImageResource(R.drawable.outline_error_dark_web_48);
            }
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void f(SingleRequest singleRequest) {
            MainImageCropper mainImageCropper = MainImageCropper.this;
            CropImageView cropImageView = mainImageCropper.q1;
            if (cropImageView == null) {
                return;
            }
            singleRequest.b(cropImageView.getWidth(), mainImageCropper.q1.getHeight());
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
            MainImageCropper mainImageCropper = MainImageCropper.this;
            if (mainImageCropper.q1 == null) {
                return;
            }
            mainImageCropper.w1 = true;
            mainImageCropper.v1.f(true);
            mainImageCropper.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            mainImageCropper.q1.setImageResource(R.drawable.outline_error_dark_web_48);
        }
    };

    /* renamed from: com.mycompany.app.main.image.MainImageCropper$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements MainActivity.SystemBarListener {
        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean a() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean b() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean c() {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class SaveTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public Bitmap g;
        public boolean h;

        public SaveTask(MainImageCropper mainImageCropper, String str, Bitmap bitmap) {
            WeakReference weakReference = new WeakReference(mainImageCropper);
            this.e = weakReference;
            MainImageCropper mainImageCropper2 = (MainImageCropper) weakReference.get();
            if (mainImageCropper2 != null) {
                this.f = str;
                mainImageCropper2.x1 = true;
                MyCoverView myCoverView = mainImageCropper2.v1;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
                if (MainUtil.f6(bitmap)) {
                    this.g = bitmap;
                    return;
                }
                CropImageView cropImageView = mainImageCropper2.q1;
                if (cropImageView == null) {
                    return;
                }
                this.g = cropImageView.getCroppedImage();
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MainImageCropper mainImageCropper;
            Bitmap.CompressFormat compressFormat;
            MainUri.UriItem j;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainImageCropper = (MainImageCropper) weakReference.get()) == null || !MainUtil.f6(this.g)) {
                return;
            }
            if (mainImageCropper.o1) {
                int width = this.g.getWidth();
                int i = mainImageCropper.m1;
                if (width > i) {
                    Bitmap k3 = MainUtil.k3(i, mainImageCropper.n1, this.g);
                    if (MainUtil.f6(k3)) {
                        this.g = k3;
                    }
                }
            }
            Context context = mainImageCropper.f1;
            Bitmap bitmap = this.g;
            if (bitmap.hasAlpha()) {
                compressFormat = Bitmap.CompressFormat.PNG;
            } else {
                compressFormat = Bitmap.CompressFormat.JPEG;
            }
            String str = this.f;
            boolean q = MainUtil.q(context, bitmap, str, compressFormat);
            if (q && !mainImageCropper.l1 && (j = MainUri.j(mainImageCropper.f1, str, MainUri.e())) != null) {
                DbBookDown.i(mainImageCropper.f1, str, null, j);
            }
            this.h = q;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainImageCropper mainImageCropper;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainImageCropper = (MainImageCropper) weakReference.get()) != null) {
                mainImageCropper.x1 = false;
                MyCoverView myCoverView = mainImageCropper.v1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final MainImageCropper mainImageCropper;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainImageCropper = (MainImageCropper) weakReference.get()) != null) {
                mainImageCropper.x1 = false;
                MyCoverView myCoverView = mainImageCropper.v1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (!this.h) {
                    MainUtil.e8(mainImageCropper, R.string.save_fail);
                    return;
                }
                boolean z = mainImageCropper.l1;
                final String str = this.f;
                if (!z) {
                    FrameLayout frameLayout = mainImageCropper.p1;
                    if (frameLayout == null) {
                        return;
                    }
                    frameLayout.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.12
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainImageCropper mainImageCropper2 = MainImageCropper.this;
                            if (mainImageCropper2.p1 == null) {
                                return;
                            }
                            MainUtil.c();
                            MySnackbar mySnackbar = mainImageCropper2.H1;
                            if (mySnackbar != null) {
                                mySnackbar.i(false);
                                mainImageCropper2.H1 = null;
                            }
                            mainImageCropper2.H1 = new MySnackbar(mainImageCropper2);
                            if (TextUtils.isEmpty(str)) {
                                MainApp.K1 = true;
                                mainImageCropper2.H1.v(mainImageCropper2.p1, R.string.save_fail, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.image.MainImageCropper.12.1
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
                                        MainImageCropper.this.H1 = null;
                                    }
                                });
                                MainUtil.K7(mainImageCropper2, false);
                            } else {
                                MainApp.K1 = true;
                                mainImageCropper2.H1.w(mainImageCropper2.p1, R.string.save_success, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.image.MainImageCropper.12.2
                                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                    public final void a() {
                                    }

                                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                    public final void b() {
                                    }

                                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                    public final void c() {
                                        AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                        MainUtil.d(MainImageCropper.this, str, "image/*", true, false);
                                    }

                                    @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                    public final void onDismiss() {
                                        MainImageCropper.this.H1 = null;
                                    }
                                });
                                MainUtil.K7(mainImageCropper2, false);
                            }
                        }
                    });
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("EXTRA_PATH", str);
                mainImageCropper.setResult(-1, intent);
                mainImageCropper.finish();
            }
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.x1) {
            return;
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogDownEdit dialogDownEdit = this.y1;
        if (dialogDownEdit != null) {
            dialogDownEdit.D(i, i2, intent);
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.x1) {
            return;
        }
        finish();
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
        DialogDownEdit dialogDownEdit = this.y1;
        if (dialogDownEdit != null) {
            dialogDownEdit.E(h0());
        }
    }

    /* JADX WARN: Type inference failed for: r14v10, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        MainUtil.u7(this);
        this.g1 = getIntent().getStringExtra("EXTRA_PATH");
        this.i1 = getIntent().getStringExtra("EXTRA_TYPE");
        this.j1 = getIntent().getStringExtra("EXTRA_REFERER");
        if (TextUtils.isEmpty(this.g1)) {
            Uri data = getIntent().getData();
            this.h1 = data;
            if (data == null) {
                MainUtil.e8(this, R.string.invalid_path);
                finish();
                return;
            }
            this.i1 = getIntent().getType();
            this.k1 = getIntent().getStringExtra("EXTRA_DST");
            boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_ICON", false);
            this.l1 = booleanExtra;
            if (booleanExtra) {
                int i = MainApp.f1;
                this.m1 = i;
                this.n1 = i;
                this.o1 = true;
            }
        }
        this.V0 = new Object();
        r0();
        o0(null, 19);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(-16777216);
        CropImageView cropImageView = new CropImageView(this);
        int i2 = MainApp.F1;
        cropImageView.setPadding(0, i2, 0, i2);
        cropImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        cropImageView.setAdjustViewBounds(true);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.bottomMargin = MainApp.g1;
        frameLayout.addView(cropImageView, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage.setImageResource(R.drawable.outline_fullscreen_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams2.gravity = 8388693;
        layoutParams2.bottomMargin = MainApp.g1 + MainApp.F1;
        layoutParams2.setMarginEnd(MainApp.G1);
        frameLayout.addView(myButtonImage, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setBackgroundColor(-16777216);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams3.gravity = 80;
        frameLayout.addView(linearLayout, layoutParams3);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setTextColor(-1);
        myLineText.setText(R.string.cancel);
        myLineText.setBackgroundResource(R.drawable.selector_view);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -1);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(myLineText, layoutParams4);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setText(R.string.crop_save);
        appCompatTextView.setBackgroundResource(R.drawable.selector_view);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
        layoutParams5.weight = 1.0f;
        linearLayout.addView(appCompatTextView, layoutParams5);
        MyCoverView myCoverView = new MyCoverView(this, -1, MainApp.y1, MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setBlockTouch(true);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        this.p1 = frameLayout;
        this.q1 = cropImageView;
        this.r1 = myButtonImage;
        this.s1 = linearLayout;
        this.t1 = appCompatTextView;
        this.u1 = myLineText;
        this.v1 = myCoverView;
        Handler handler = this.O0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean I;
                    final MainImageCropper mainImageCropper = MainImageCropper.this;
                    if (mainImageCropper.p1 == null) {
                        return;
                    }
                    String str = mainImageCropper.g1;
                    Uri uri = mainImageCropper.h1;
                    CropImageView cropImageView2 = mainImageCropper.q1;
                    if (cropImageView2 != null) {
                        if (mainImageCropper.o1) {
                            cropImageView2.setFixedAspectRatio(true);
                            CropImageView cropImageView3 = mainImageCropper.q1;
                            int i4 = mainImageCropper.m1;
                            int i5 = mainImageCropper.n1;
                            cropImageView3.getClass();
                            if (i4 > 0 && i5 > 0) {
                                cropImageView3.s = i4;
                                cropImageView3.t = i5;
                                if (cropImageView3.r) {
                                    cropImageView3.requestLayout();
                                }
                            } else {
                                throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
                            }
                        }
                        if (!TextUtils.isEmpty(str)) {
                            mainImageCropper.v1.l();
                            if (!TextUtils.isEmpty(mainImageCropper.i1)) {
                                I = mainImageCropper.i1.startsWith("image/svg");
                            } else {
                                I = Compress.I(MainUtil.V3(str, null, null, true));
                            }
                            mainImageCropper.B1 = I;
                            if (I) {
                                if (mainImageCropper.o1) {
                                    mainImageCropper.q1.setFixedAspectRatio(true);
                                    CropImageView cropImageView4 = mainImageCropper.q1;
                                    int i6 = mainImageCropper.m1;
                                    int i7 = mainImageCropper.n1;
                                    cropImageView4.getClass();
                                    if (i6 > 0 && i7 > 0) {
                                        cropImageView4.s = i6;
                                        cropImageView4.t = i7;
                                        if (cropImageView4.r) {
                                            cropImageView4.requestLayout();
                                        }
                                    } else {
                                        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
                                    }
                                }
                                mainImageCropper.F1 = str;
                                mainImageCropper.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainImageCropper mainImageCropper2 = MainImageCropper.this;
                                        if (mainImageCropper2.A1 == null) {
                                            mainImageCropper2.A1 = GlideApp.a(mainImageCropper2);
                                        }
                                        CropImageView cropImageView5 = mainImageCropper2.q1;
                                        if (cropImageView5 == null) {
                                            return;
                                        }
                                        cropImageView5.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.8.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MainImageCropper mainImageCropper3 = MainImageCropper.this;
                                                String str2 = mainImageCropper3.F1;
                                                mainImageCropper3.F1 = null;
                                                if (mainImageCropper3.A1 == null) {
                                                    return;
                                                }
                                                if (URLUtil.isNetworkUrl(str2)) {
                                                    ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.b(PictureDrawable.class)).O(MainUtil.A1(mainImageCropper3.f1, str2, mainImageCropper3.j1))).F(mainImageCropper3.G1);
                                                    return;
                                                }
                                                ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.b(PictureDrawable.class)).O(str2)).F(mainImageCropper3.G1);
                                            }
                                        });
                                    }
                                });
                            }
                            mainImageCropper.C1 = str;
                            mainImageCropper.D1 = uri;
                            mainImageCropper.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainImageCropper mainImageCropper2 = MainImageCropper.this;
                                    if (mainImageCropper2.A1 == null) {
                                        mainImageCropper2.A1 = GlideApp.a(mainImageCropper2);
                                    }
                                    CropImageView cropImageView5 = mainImageCropper2.q1;
                                    if (cropImageView5 == null) {
                                        return;
                                    }
                                    cropImageView5.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.6.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainImageCropper mainImageCropper3 = MainImageCropper.this;
                                            String str2 = mainImageCropper3.C1;
                                            Uri uri2 = mainImageCropper3.D1;
                                            mainImageCropper3.C1 = null;
                                            mainImageCropper3.D1 = null;
                                            if (mainImageCropper3.A1 != null) {
                                                if (!TextUtils.isEmpty(str2)) {
                                                    if (URLUtil.isNetworkUrl(str2)) {
                                                        ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.d()).O(MainUtil.A1(mainImageCropper3.f1, str2, mainImageCropper3.j1))).F(mainImageCropper3.E1);
                                                        return;
                                                    }
                                                    ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.d()).O(str2)).F(mainImageCropper3.E1);
                                                    return;
                                                }
                                                if (uri2 != null) {
                                                    mainImageCropper3.A1.d().K(uri2).F(mainImageCropper3.E1);
                                                }
                                            }
                                        }
                                    });
                                }
                            });
                        } else if (uri != null) {
                            mainImageCropper.v1.l();
                            mainImageCropper.C1 = str;
                            mainImageCropper.D1 = uri;
                            mainImageCropper.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainImageCropper mainImageCropper2 = MainImageCropper.this;
                                    if (mainImageCropper2.A1 == null) {
                                        mainImageCropper2.A1 = GlideApp.a(mainImageCropper2);
                                    }
                                    CropImageView cropImageView5 = mainImageCropper2.q1;
                                    if (cropImageView5 == null) {
                                        return;
                                    }
                                    cropImageView5.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.6.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainImageCropper mainImageCropper3 = MainImageCropper.this;
                                            String str2 = mainImageCropper3.C1;
                                            Uri uri2 = mainImageCropper3.D1;
                                            mainImageCropper3.C1 = null;
                                            mainImageCropper3.D1 = null;
                                            if (mainImageCropper3.A1 != null) {
                                                if (!TextUtils.isEmpty(str2)) {
                                                    if (URLUtil.isNetworkUrl(str2)) {
                                                        ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.d()).O(MainUtil.A1(mainImageCropper3.f1, str2, mainImageCropper3.j1))).F(mainImageCropper3.E1);
                                                        return;
                                                    }
                                                    ((GlideRequest) ((GlideRequest) mainImageCropper3.A1.d()).O(str2)).F(mainImageCropper3.E1);
                                                    return;
                                                }
                                                if (uri2 != null) {
                                                    mainImageCropper3.A1.d().K(uri2).F(mainImageCropper3.E1);
                                                }
                                            }
                                        }
                                    });
                                }
                            });
                        } else {
                            mainImageCropper.w1 = true;
                            mainImageCropper.q1.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            mainImageCropper.q1.setImageResource(R.drawable.outline_error_dark_web_48);
                        }
                    }
                    mainImageCropper.r1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageCropper.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            RectF rectF;
                            CropImageView cropImageView5 = MainImageCropper.this.q1;
                            if (cropImageView5 != null && (rectF = cropImageView5.o) != null) {
                                cropImageView5.a(rectF, true);
                                cropImageView5.invalidate();
                            }
                        }
                    });
                    mainImageCropper.t1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageCropper.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str2;
                            final MainImageCropper mainImageCropper2 = MainImageCropper.this;
                            if (mainImageCropper2.w1) {
                                MainUtil.e8(mainImageCropper2, R.string.image_fail);
                                return;
                            }
                            if (!mainImageCropper2.x1) {
                                if (!TextUtils.isEmpty(mainImageCropper2.g1)) {
                                    if (mainImageCropper2.y1 == null) {
                                        mainImageCropper2.u0();
                                        CropImageView cropImageView5 = mainImageCropper2.q1;
                                        if (cropImageView5 == null) {
                                            return;
                                        }
                                        mainImageCropper2.z1 = true;
                                        MainApp.K1 = true;
                                        Bitmap croppedImage = cropImageView5.getCroppedImage();
                                        if (MainUtil.f6(croppedImage) && croppedImage.hasAlpha()) {
                                            str2 = "image/png";
                                        } else {
                                            str2 = "image/jpg";
                                        }
                                        String k1 = MainUtil.k1(MainUtil.V3(mainImageCropper2.g1, null, str2, true));
                                        mainImageCropper2.s1.setVisibility(4);
                                        DialogDownEdit dialogDownEdit = new DialogDownEdit(mainImageCropper2, k1, croppedImage, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.main.image.MainImageCropper.10
                                            @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
                                            public final void a(String str3, String str4, Bitmap bitmap) {
                                                MainImageCropper mainImageCropper3 = MainImageCropper.this;
                                                new SaveTask(mainImageCropper3, str4, bitmap).b(mainImageCropper3.f1);
                                            }
                                        });
                                        mainImageCropper2.y1 = dialogDownEdit;
                                        dialogDownEdit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImageCropper.11
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                MainImageCropper mainImageCropper3 = MainImageCropper.this;
                                                LinearLayout linearLayout2 = mainImageCropper3.s1;
                                                if (linearLayout2 == null) {
                                                    return;
                                                }
                                                linearLayout2.setVisibility(0);
                                                mainImageCropper3.u0();
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                new SaveTask(mainImageCropper2, mainImageCropper2.k1, null).b(mainImageCropper2.f1);
                            }
                        }
                    });
                    mainImageCropper.u1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageCropper.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MainImageCropper.this.finish();
                        }
                    });
                }
            });
        }
        setContentView(this.p1);
        initMainScreenOn(this.p1);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        GlideRequests glideRequests = this.A1;
        if (glideRequests != null) {
            if (this.B1) {
                MyGlideTarget myGlideTarget = this.G1;
                if (myGlideTarget != null) {
                    glideRequests.p(myGlideTarget);
                }
            } else {
                MyGlideTarget myGlideTarget2 = this.E1;
                if (myGlideTarget2 != null) {
                    glideRequests.p(myGlideTarget2);
                }
            }
            this.A1 = null;
        }
        CropImageView cropImageView = this.q1;
        if (cropImageView != null) {
            cropImageView.u = false;
            cropImageView.f12877c = null;
            cropImageView.f = null;
            cropImageView.g = null;
            cropImageView.h = null;
            cropImageView.o = null;
            cropImageView.p = null;
            cropImageView.q = null;
            this.q1 = null;
        }
        MyButtonImage myButtonImage = this.r1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.r1 = null;
        }
        MyLineText myLineText = this.u1;
        if (myLineText != null) {
            myLineText.u();
            this.u1 = null;
        }
        MyCoverView myCoverView = this.v1;
        if (myCoverView != null) {
            myCoverView.i();
            this.v1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.j1 = null;
        this.k1 = null;
        this.p1 = null;
        this.s1 = null;
        this.t1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.z1) {
            MainUtil.K7(this, false);
        }
        if (isFinishing()) {
            u0();
            MainApp.T1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.z1) {
            MainUtil.K7(this, true);
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageCropper.1
            @Override // java.lang.Runnable
            public final void run() {
                MainImageCropper mainImageCropper = MainImageCropper.this;
                if (mainImageCropper.O0 == null) {
                    return;
                }
                MainUtil.g7(mainImageCropper.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        r0();
    }

    public final void u0() {
        DialogDownEdit dialogDownEdit = this.y1;
        if (dialogDownEdit != null) {
            dialogDownEdit.dismiss();
            this.y1 = null;
            this.z1 = false;
            MainUtil.K7(this, false);
        }
    }
}
