package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.crop.CropImageView;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MySizeImage;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.zoom.ZoomImageAttacher;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DialogCapture extends MyDialogNormal {
    public static final /* synthetic */ int Y = 0;
    public Bitmap A;
    public int B;
    public int C;
    public int D;
    public String E;
    public FrameLayout F;
    public CropImageView G;
    public MySizeImage H;
    public MyAreaView I;
    public ZoomImageAttacher J;
    public MyButtonImage K;
    public MyButtonImage L;
    public LinearLayout M;
    public AppCompatTextView N;
    public MyLineText O;
    public MyCoverView P;
    public boolean Q;
    public boolean R;
    public DialogDownEdit S;
    public MyFadeFrame T;
    public boolean U;
    public Bitmap V;
    public long W;
    public MySnackbar X;
    public MainActivity w;
    public Context x;
    public final boolean y;
    public Bitmap z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogCapture$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass18 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogCapture$18$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogCapture$18$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC00331 implements Runnable {
                public RunnableC00331() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass18 anonymousClass18 = AnonymousClass18.this;
                    DialogCapture dialogCapture = DialogCapture.this;
                    if (dialogCapture.w != null) {
                        MainUtil.F7(dialogCapture.getWindow(), false, true);
                        Handler handler = DialogCapture.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.18.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                DialogCapture dialogCapture2 = DialogCapture.this;
                                if (dialogCapture2.w != null) {
                                    Window window = dialogCapture2.getWindow();
                                    View h = DialogCapture.this.h();
                                    DialogCapture dialogCapture3 = DialogCapture.this;
                                    if (dialogCapture3.h == null) {
                                        dialogCapture3.h = MainUtil.r4(dialogCapture3.getWindow(), dialogCapture3.h());
                                    }
                                    MainUtil.J7(window, h, dialogCapture3.h, false, false);
                                    Handler handler2 = DialogCapture.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.18.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            RunnableC00331 runnableC00331 = RunnableC00331.this;
                                            DialogCapture dialogCapture4 = DialogCapture.this;
                                            if (dialogCapture4.w == null) {
                                                return;
                                            }
                                            Window window2 = dialogCapture4.getWindow();
                                            View h2 = DialogCapture.this.h();
                                            DialogCapture dialogCapture5 = DialogCapture.this;
                                            if (dialogCapture5.h == null) {
                                                dialogCapture5.h = MainUtil.r4(dialogCapture5.getWindow(), dialogCapture5.h());
                                            }
                                            MainUtil.I7(window2, h2, dialogCapture5.h, false, false);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogCapture dialogCapture = DialogCapture.this;
                if (dialogCapture.w != null) {
                    MainUtil.H7(dialogCapture.getWindow());
                    Handler handler = dialogCapture.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC00331());
                }
            }
        }

        public AnonymousClass18() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogCapture dialogCapture = DialogCapture.this;
            if (dialogCapture.w != null) {
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    MainUtil.G7(dialogCapture.getWindow(), dialogCapture.h(), false, false, true, true);
                    return;
                }
                Window window = dialogCapture.getWindow();
                if (i < 35 && i >= 30) {
                    MainUtil.j7(window, false);
                }
                Handler handler = dialogCapture.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SaveTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public Bitmap g;
        public final int h;
        public final RectF i;
        public boolean j;

        public SaveTask(DialogCapture dialogCapture, String str, Bitmap bitmap) {
            WeakReference weakReference = new WeakReference(dialogCapture);
            this.e = weakReference;
            DialogCapture dialogCapture2 = (DialogCapture) weakReference.get();
            if (dialogCapture2 != null) {
                this.f = str;
                dialogCapture2.R = true;
                MyCoverView myCoverView = dialogCapture2.P;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
                if (dialogCapture2.y) {
                    this.g = bitmap;
                    MySizeImage mySizeImage = dialogCapture2.H;
                    if (mySizeImage != null) {
                        this.h = mySizeImage.getHeight();
                        ZoomImageAttacher zoomImageAttacher = dialogCapture2.J;
                        if (zoomImageAttacher != null) {
                            zoomImageAttacher.d();
                            zoomImageAttacher.h();
                            this.i = zoomImageAttacher.j(zoomImageAttacher.i());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (MainUtil.f6(bitmap)) {
                    this.g = bitmap;
                    return;
                }
                CropImageView cropImageView = dialogCapture2.G;
                if (cropImageView == null) {
                    return;
                }
                this.g = cropImageView.getCroppedImage();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r9 = this;
                java.lang.ref.WeakReference r0 = r9.e
                if (r0 != 0) goto L5
                goto L6e
            L5:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.dialog.DialogCapture r0 = (com.mycompany.app.dialog.DialogCapture) r0
                if (r0 != 0) goto Le
                goto L6e
            Le:
                android.graphics.RectF r1 = r9.i
                r2 = 0
                if (r1 == 0) goto L66
                float r3 = r1.left
                r4 = 0
                int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r3 <= 0) goto L66
                android.graphics.Bitmap r3 = r0.A
                boolean r3 = com.mycompany.app.main.MainUtil.f6(r3)
                if (r3 == 0) goto L66
                android.graphics.Bitmap r3 = r0.A
                int r4 = r3.getWidth()
                int r5 = r3.getHeight()
                float r6 = r1.bottom
                float r1 = r1.top
                float r6 = r6 - r1
                float r1 = -r1
                float r7 = r6 - r1
                int r8 = r9.h
                float r8 = (float) r8
                float r7 = r7 - r8
                float r8 = (float) r5
                float r6 = r6 / r8
                float r1 = r1 / r6
                int r1 = java.lang.Math.round(r1)
                float r7 = r7 / r6
                int r6 = java.lang.Math.round(r7)
                if (r1 > 0) goto L48
                if (r6 <= 0) goto L54
            L48:
                if (r1 < 0) goto L54
                int r5 = r5 - r1
                int r5 = r5 - r6
                if (r5 <= 0) goto L54
                r6 = 0
                android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r3, r6, r1, r4, r5)     // Catch: java.lang.Throwable -> L54
                goto L55
            L54:
                r1 = r2
            L55:
                boolean r4 = com.mycompany.app.main.MainUtil.f6(r1)
                if (r4 == 0) goto L5e
                r9.g = r1
                goto L66
            L5e:
                boolean r1 = com.mycompany.app.main.MainUtil.f6(r3)
                if (r1 == 0) goto L66
                r9.g = r3
            L66:
                android.graphics.Bitmap r1 = r9.g
                boolean r1 = com.mycompany.app.main.MainUtil.f6(r1)
                if (r1 != 0) goto L6f
            L6e:
                return
            L6f:
                android.content.Context r1 = r0.x
                android.graphics.Bitmap r3 = r9.g
                boolean r4 = r3.hasAlpha()
                if (r4 == 0) goto L7c
                android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.PNG
                goto L7e
            L7c:
                android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.JPEG
            L7e:
                java.lang.String r5 = r9.f
                boolean r1 = com.mycompany.app.main.MainUtil.q(r1, r3, r5, r4)
                if (r1 == 0) goto L97
                android.content.Context r3 = r0.x
                java.lang.String r4 = com.mycompany.app.main.MainUri.e()
                com.mycompany.app.main.MainUri$UriItem r3 = com.mycompany.app.main.MainUri.j(r3, r5, r4)
                if (r3 == 0) goto L97
                android.content.Context r0 = r0.x
                com.mycompany.app.db.book.DbBookDown.i(r0, r5, r2, r3)
            L97:
                r9.j = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogCapture.SaveTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogCapture dialogCapture;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogCapture = (DialogCapture) weakReference.get()) != null) {
                dialogCapture.R = false;
                MyCoverView myCoverView = dialogCapture.P;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogCapture dialogCapture;
            final String str;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogCapture = (DialogCapture) weakReference.get()) != null) {
                dialogCapture.R = false;
                MyCoverView myCoverView = dialogCapture.P;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (this.j) {
                    str = this.f;
                } else {
                    str = null;
                }
                Handler handler = dialogCapture.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.17
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogCapture dialogCapture2 = DialogCapture.this;
                        if (dialogCapture2.F == null) {
                            return;
                        }
                        MainUtil.c();
                        MySnackbar mySnackbar = dialogCapture2.X;
                        if (mySnackbar != null) {
                            mySnackbar.i(false);
                            dialogCapture2.X = null;
                        }
                        dialogCapture2.X = new MySnackbar(dialogCapture2.w);
                        if (TextUtils.isEmpty(str)) {
                            MainApp.K1 = true;
                            dialogCapture2.X.v(dialogCapture2.F, R.string.save_fail, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogCapture.17.1
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
                                    DialogCapture.this.X = null;
                                }
                            });
                            MainUtil.K7(dialogCapture2.w, false);
                        } else {
                            MainApp.K1 = true;
                            dialogCapture2.X.w(dialogCapture2.F, R.string.save_success, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogCapture.17.2
                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void a() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void b() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void c() {
                                    AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                                    MainUtil.d(DialogCapture.this.w, str, "image/*", true, false);
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void onDismiss() {
                                    DialogCapture.this.X = null;
                                }
                            });
                            MainUtil.K7(dialogCapture2.w, false);
                        }
                    }
                });
            }
        }
    }

    public DialogCapture(MainActivity mainActivity, Bitmap bitmap, boolean z, String str) {
        super(mainActivity, R.style.DialogBlackTheme);
        j();
        this.w = mainActivity;
        this.x = getContext();
        this.y = z;
        this.E = str;
        this.z = bitmap;
        if (z) {
            this.A = bitmap;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                CropImageView cropImageView;
                MySizeImage mySizeImage;
                MyButtonImage myButtonImage;
                MyAreaView myAreaView;
                final DialogCapture dialogCapture = DialogCapture.this;
                Context context = dialogCapture.x;
                if (context != null) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setBackgroundColor(-16777216);
                    if (dialogCapture.y) {
                        ImageView imageView = new ImageView(context);
                        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams.bottomMargin = MainApp.g1;
                        frameLayout.addView(imageView, layoutParams);
                        myAreaView = new MyAreaView(context);
                        myAreaView.setFullMode(true);
                        myAreaView.setVisibility(8);
                        int G = (int) MainUtil.G(context, 160.0f);
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G, G);
                        int i = MainApp.F1;
                        layoutParams2.topMargin = i;
                        layoutParams2.setMarginStart(i);
                        frameLayout.addView(myAreaView, layoutParams2);
                        myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        myButtonImage.setImageResource(R.drawable.outline_fullscreen_exit_white_24);
                        myButtonImage.n(MainApp.j1, MainApp.k1);
                        myButtonImage.k(-1593835520, -1586137739);
                        myButtonImage.setVisibility(8);
                        int i2 = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
                        layoutParams3.gravity = 8388693;
                        layoutParams3.bottomMargin = MainApp.g1 + MainApp.F1;
                        layoutParams3.setMarginEnd(MainApp.g1 + MainApp.G1);
                        frameLayout.addView(myButtonImage, layoutParams3);
                        cropImageView = null;
                        mySizeImage = imageView;
                    } else {
                        cropImageView = new CropImageView(context);
                        int i3 = MainApp.F1;
                        cropImageView.setPadding(0, i3, 0, i3);
                        cropImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        cropImageView.setAdjustViewBounds(true);
                        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams4.bottomMargin = MainApp.g1;
                        frameLayout.addView(cropImageView, layoutParams4);
                        mySizeImage = null;
                        myButtonImage = null;
                        myAreaView = null;
                    }
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    myButtonImage2.setImageResource(R.drawable.outline_fullscreen_white_24);
                    myButtonImage2.n(MainApp.j1, MainApp.k1);
                    myButtonImage2.k(-1593835520, -1586137739);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams5.gravity = 8388693;
                    layoutParams5.bottomMargin = MainApp.g1 + MainApp.F1;
                    layoutParams5.setMarginEnd(MainApp.G1);
                    frameLayout.addView(myButtonImage2, layoutParams5);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setBaselineAligned(false);
                    linearLayout.setOrientation(0);
                    linearLayout.setBackgroundColor(-16777216);
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams6.gravity = 80;
                    frameLayout.addView(linearLayout, layoutParams6);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setTextColor(-1);
                    myLineText.setText(R.string.cancel);
                    myLineText.setBackgroundResource(R.drawable.selector_view);
                    myLineText.s(context);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams7.weight = 1.0f;
                    linearLayout.addView(myLineText, layoutParams7);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setTextColor(-1);
                    appCompatTextView.setText(R.string.crop_save);
                    appCompatTextView.setBackgroundResource(R.drawable.selector_view);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams8.weight = 1.0f;
                    linearLayout.addView(appCompatTextView, layoutParams8);
                    MyCoverView myCoverView = new MyCoverView(context, -1, MainApp.y1, MainApp.z1);
                    myCoverView.setBackColor(-1593835520);
                    myCoverView.setBlockTouch(true);
                    myCoverView.setVisibility(8);
                    frameLayout.addView(myCoverView, -1, -1);
                    dialogCapture.F = frameLayout;
                    dialogCapture.H = mySizeImage;
                    dialogCapture.I = myAreaView;
                    dialogCapture.L = myButtonImage;
                    dialogCapture.G = cropImageView;
                    dialogCapture.K = myButtonImage2;
                    dialogCapture.M = linearLayout;
                    dialogCapture.N = appCompatTextView;
                    dialogCapture.O = myLineText;
                    dialogCapture.P = myCoverView;
                    Handler handler2 = dialogCapture.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogCapture dialogCapture2 = DialogCapture.this;
                            Bitmap bitmap2 = dialogCapture2.z;
                            dialogCapture2.z = null;
                            if (dialogCapture2.F != null && dialogCapture2.x != null) {
                                if (dialogCapture2.y) {
                                    if (dialogCapture2.H != null) {
                                        if (!MainUtil.f6(bitmap2)) {
                                            dialogCapture2.Q = true;
                                            dialogCapture2.H.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                            dialogCapture2.H.setImageResource(R.drawable.outline_error_dark_web_48);
                                        } else {
                                            dialogCapture2.B = 0;
                                            dialogCapture2.C = bitmap2.getWidth();
                                            dialogCapture2.D = bitmap2.getHeight();
                                            dialogCapture2.H.setListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogCapture.8
                                                @Override // com.mycompany.app.image.ImageSizeListener
                                                public final void a(View view, int i5, int i6) {
                                                    int i7;
                                                    int i8;
                                                    int i9;
                                                    DialogCapture dialogCapture3 = DialogCapture.this;
                                                    ZoomImageAttacher zoomImageAttacher = dialogCapture3.J;
                                                    if (zoomImageAttacher != null) {
                                                        zoomImageAttacher.d();
                                                        if (i5 > i6) {
                                                            i7 = 2;
                                                        } else {
                                                            i7 = 1;
                                                        }
                                                        if (dialogCapture3.B != i7) {
                                                            dialogCapture3.B = i7;
                                                            dialogCapture3.J.u();
                                                        }
                                                        MyAreaView myAreaView2 = dialogCapture3.I;
                                                        if (myAreaView2 == null) {
                                                            return;
                                                        }
                                                        int i10 = dialogCapture3.C;
                                                        if (i10 != 0 && (i8 = dialogCapture3.D) != 0) {
                                                            myAreaView2.d(i5, i6, i10, i8, i5, i6, false);
                                                            MyAreaView myAreaView3 = dialogCapture3.I;
                                                            if (myAreaView3.a()) {
                                                                i9 = 0;
                                                            } else {
                                                                i9 = 4;
                                                            }
                                                            myAreaView3.setVisibility(i9);
                                                            return;
                                                        }
                                                        myAreaView2.setVisibility(8);
                                                    }
                                                }
                                            });
                                            dialogCapture2.H.setImageBitmap(bitmap2);
                                            dialogCapture2.J = new ZoomImageAttacher(dialogCapture2.H, new ZoomImageAttacher.AttacherListener() { // from class: com.mycompany.app.dialog.DialogCapture.9
                                                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                                                public final void C(RectF rectF, boolean z2) {
                                                    int i5;
                                                    DialogCapture dialogCapture3 = DialogCapture.this;
                                                    MyAreaView myAreaView2 = dialogCapture3.I;
                                                    if (myAreaView2 == null) {
                                                        return;
                                                    }
                                                    myAreaView2.setRect2(rectF);
                                                    MyAreaView myAreaView3 = dialogCapture3.I;
                                                    if (myAreaView3.a()) {
                                                        i5 = 0;
                                                    } else {
                                                        i5 = 4;
                                                    }
                                                    myAreaView3.setVisibility(i5);
                                                }

                                                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                                                public final boolean k() {
                                                    return false;
                                                }

                                                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                                                public final boolean m() {
                                                    return false;
                                                }

                                                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                                                public final void t() {
                                                }

                                                @Override // com.mycompany.app.zoom.ZoomImageAttacher.AttacherListener
                                                public final void D(MotionEvent motionEvent, boolean z2) {
                                                }
                                            }, 0);
                                        }
                                    }
                                } else if (dialogCapture2.G != null) {
                                    if (!MainUtil.f6(bitmap2)) {
                                        dialogCapture2.Q = true;
                                        dialogCapture2.G.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                        dialogCapture2.G.setImageResource(R.drawable.outline_error_dark_web_48);
                                    } else {
                                        dialogCapture2.G.setImageBitmap(bitmap2);
                                    }
                                }
                                dialogCapture2.w.n0(dialogCapture2.F, true);
                                dialogCapture2.K.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCapture.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        RectF rectF;
                                        DialogCapture dialogCapture3 = DialogCapture.this;
                                        ZoomImageAttacher zoomImageAttacher = dialogCapture3.J;
                                        if (zoomImageAttacher != null) {
                                            zoomImageAttacher.e();
                                            return;
                                        }
                                        CropImageView cropImageView2 = dialogCapture3.G;
                                        if (cropImageView2 != null && (rectF = cropImageView2.o) != null) {
                                            cropImageView2.a(rectF, true);
                                            cropImageView2.invalidate();
                                        }
                                    }
                                });
                                MyButtonImage myButtonImage3 = dialogCapture2.L;
                                if (myButtonImage3 != null) {
                                    myButtonImage3.setVisibility(0);
                                    dialogCapture2.L.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCapture.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            ZoomImageAttacher zoomImageAttacher = DialogCapture.this.J;
                                            if (zoomImageAttacher != null) {
                                                zoomImageAttacher.f();
                                            }
                                        }
                                    });
                                }
                                dialogCapture2.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCapture.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogCapture dialogCapture3 = DialogCapture.this;
                                        if (dialogCapture3.Q) {
                                            MainUtil.e8(dialogCapture3.x, R.string.image_fail);
                                        } else {
                                            if (dialogCapture3.R) {
                                                return;
                                            }
                                            dialogCapture3.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.14
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogCapture dialogCapture4 = DialogCapture.this;
                                                    CropImageView cropImageView2 = dialogCapture4.G;
                                                    if (cropImageView2 != null) {
                                                        dialogCapture4.V = cropImageView2.getCroppedImage();
                                                    } else if (dialogCapture4.H != null) {
                                                        dialogCapture4.W = MainUtil.U(dialogCapture4.x);
                                                    }
                                                    Handler handler3 = dialogCapture4.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.14.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            Bitmap bitmap3;
                                                            final DialogCapture dialogCapture5 = DialogCapture.this;
                                                            if (dialogCapture5.w == null || dialogCapture5.S != null) {
                                                                return;
                                                            }
                                                            dialogCapture5.p();
                                                            if (dialogCapture5.G != null) {
                                                                bitmap3 = dialogCapture5.V;
                                                            } else {
                                                                MySizeImage mySizeImage2 = dialogCapture5.H;
                                                                if (mySizeImage2 != null) {
                                                                    bitmap3 = MainUtil.g4(mySizeImage2, 0, 0.5f, dialogCapture5.W, null);
                                                                } else {
                                                                    bitmap3 = null;
                                                                }
                                                            }
                                                            dialogCapture5.V = null;
                                                            dialogCapture5.M.setVisibility(4);
                                                            dialogCapture5.U = true;
                                                            MainActivity mainActivity2 = dialogCapture5.w;
                                                            MainApp.K1 = true;
                                                            DialogDownEdit dialogDownEdit = new DialogDownEdit(mainActivity2, dialogCapture5.E, bitmap3, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.dialog.DialogCapture.15
                                                                @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
                                                                public final void a(String str2, String str3, Bitmap bitmap4) {
                                                                    DialogCapture dialogCapture6 = DialogCapture.this;
                                                                    new SaveTask(dialogCapture6, str3, bitmap4).b(dialogCapture6.x);
                                                                }
                                                            });
                                                            dialogCapture5.S = dialogDownEdit;
                                                            dialogDownEdit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogCapture.16
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    DialogCapture dialogCapture6 = DialogCapture.this;
                                                                    LinearLayout linearLayout2 = dialogCapture6.M;
                                                                    if (linearLayout2 == null) {
                                                                        return;
                                                                    }
                                                                    linearLayout2.setVisibility(0);
                                                                    dialogCapture6.p();
                                                                }
                                                            });
                                                            DialogDownEdit dialogDownEdit2 = dialogCapture5.S;
                                                            dialogDownEdit2.j = false;
                                                            dialogDownEdit2.k = true;
                                                        }
                                                    });
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogCapture2.O.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCapture.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogCapture.this.dismiss();
                                    }
                                });
                                dialogCapture2.r();
                                dialogCapture2.g(dialogCapture2.F, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogCapture.7
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Handler handler3;
                                        final DialogCapture dialogCapture3 = DialogCapture.this;
                                        if (dialogCapture3.F != null) {
                                            dialogCapture3.setCanceledOnTouchOutside(false);
                                            dialogCapture3.show();
                                            if (dialogCapture3.y && PrefRead.B && dialogCapture3.T == null && dialogCapture3.F != null && (handler3 = dialogCapture3.i) != null) {
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCapture.10
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MainActivity mainActivity2;
                                                        if (PrefRead.B) {
                                                            final DialogCapture dialogCapture4 = DialogCapture.this;
                                                            if (dialogCapture4.T == null && dialogCapture4.F != null && (mainActivity2 = dialogCapture4.w) != null) {
                                                                MyFadeFrame myFadeFrame = new MyFadeFrame(mainActivity2);
                                                                int i5 = MainApp.F1;
                                                                myFadeFrame.setPadding(i5, i5, i5, i5);
                                                                FrameLayout frameLayout2 = new FrameLayout(mainActivity2);
                                                                int i6 = MainApp.E1;
                                                                frameLayout2.setPadding(i6, i6, i6, i6);
                                                                frameLayout2.setBackgroundResource(R.drawable.round_guide_16);
                                                                FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams((int) MainUtil.G(mainActivity2, 132.0f), -2);
                                                                layoutParams9.gravity = 17;
                                                                myFadeFrame.addView(frameLayout2, layoutParams9);
                                                                View view2 = new View(mainActivity2);
                                                                int G2 = (int) MainUtil.G(mainActivity2, 84.0f);
                                                                FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(G2, G2);
                                                                layoutParams10.gravity = 1;
                                                                frameLayout2.addView(view2, layoutParams10);
                                                                AppCompatTextView appCompatTextView2 = new AppCompatTextView(mainActivity2, null);
                                                                appCompatTextView2.setTextSize(1, 16.0f);
                                                                appCompatTextView2.setTextColor(-1);
                                                                FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
                                                                layoutParams11.topMargin = (int) MainUtil.G(mainActivity2, 92.0f);
                                                                layoutParams11.gravity = 1;
                                                                frameLayout2.addView(appCompatTextView2, layoutParams11);
                                                                FrameLayout frameLayout3 = new FrameLayout(mainActivity2);
                                                                frameLayout3.setBackgroundResource(R.drawable.round_guide_8);
                                                                FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, -2);
                                                                layoutParams12.gravity = 8388691;
                                                                myFadeFrame.addView(frameLayout3, layoutParams12);
                                                                LinearLayout linearLayout2 = new LinearLayout(mainActivity2);
                                                                int i7 = MainApp.E1;
                                                                linearLayout2.setPadding(i7, i7, i7, i7);
                                                                linearLayout2.setOrientation(1);
                                                                FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
                                                                layoutParams13.gravity = 1;
                                                                frameLayout3.addView(linearLayout2, layoutParams13);
                                                                AppCompatTextView appCompatTextView3 = new AppCompatTextView(mainActivity2, null);
                                                                appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                                                                appCompatTextView3.setTextSize(1, 16.0f);
                                                                appCompatTextView3.setTextColor(-1);
                                                                linearLayout2.addView(appCompatTextView3, -2, -2);
                                                                AppCompatTextView appCompatTextView4 = new AppCompatTextView(mainActivity2, null);
                                                                appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                                                                appCompatTextView4.setTextSize(1, 16.0f);
                                                                appCompatTextView4.setTextColor(-1);
                                                                LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(-2, -2);
                                                                layoutParams14.topMargin = MainApp.E1;
                                                                linearLayout2.addView(appCompatTextView4, layoutParams14);
                                                                dialogCapture4.T = myFadeFrame;
                                                                view2.setBackgroundResource(R.drawable.outline_pinch);
                                                                appCompatTextView2.setText(R.string.guide_pinch);
                                                                appCompatTextView3.setText(R.string.scroll_guide_1);
                                                                appCompatTextView4.setText(R.string.scroll_guide_2);
                                                                dialogCapture4.T.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogCapture.11
                                                                    @Override // com.mycompany.app.view.MyFadeListener
                                                                    public final void a(boolean z2) {
                                                                        DialogCapture dialogCapture5;
                                                                        MyFadeFrame myFadeFrame2;
                                                                        if (!z2 && (myFadeFrame2 = (dialogCapture5 = DialogCapture.this).T) != null && dialogCapture5.F != null) {
                                                                            myFadeFrame2.f();
                                                                            dialogCapture5.F.removeView(dialogCapture5.T);
                                                                            dialogCapture5.T = null;
                                                                        }
                                                                    }

                                                                    @Override // com.mycompany.app.view.MyFadeListener
                                                                    public final void b(boolean z2, boolean z3) {
                                                                    }
                                                                });
                                                                dialogCapture4.T.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogCapture.12
                                                                    @Override // android.view.View.OnTouchListener
                                                                    public final boolean onTouch(View view3, MotionEvent motionEvent) {
                                                                        boolean z2 = PrefRead.B;
                                                                        DialogCapture dialogCapture5 = DialogCapture.this;
                                                                        if (z2) {
                                                                            PrefRead.B = false;
                                                                            PrefSet.d(8, dialogCapture5.x, "mGuideCap2", false);
                                                                        }
                                                                        MyFadeFrame myFadeFrame2 = dialogCapture5.T;
                                                                        if (myFadeFrame2 != null) {
                                                                            myFadeFrame2.d(true);
                                                                        }
                                                                        return false;
                                                                    }
                                                                });
                                                                frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCapture.13
                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view3) {
                                                                        boolean z2 = PrefRead.B;
                                                                        DialogCapture dialogCapture5 = DialogCapture.this;
                                                                        if (z2) {
                                                                            PrefRead.B = false;
                                                                            PrefSet.d(8, dialogCapture5.x, "mGuideCap2", false);
                                                                        }
                                                                        MyFadeFrame myFadeFrame2 = dialogCapture5.T;
                                                                        if (myFadeFrame2 != null) {
                                                                            myFadeFrame2.d(true);
                                                                        }
                                                                    }
                                                                });
                                                                dialogCapture4.F.addView(dialogCapture4.T, -1, -1);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        int i8 = DialogCapture.Y;
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

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.x == null || this.R) {
            return;
        }
        p();
        CropImageView cropImageView = this.G;
        if (cropImageView != null) {
            cropImageView.u = false;
            cropImageView.f12877c = null;
            cropImageView.f = null;
            cropImageView.g = null;
            cropImageView.h = null;
            cropImageView.o = null;
            cropImageView.p = null;
            cropImageView.q = null;
            this.G = null;
        }
        MySizeImage mySizeImage = this.H;
        if (mySizeImage != null) {
            mySizeImage.f18962c = null;
            this.H = null;
        }
        MyAreaView myAreaView = this.I;
        if (myAreaView != null) {
            myAreaView.c();
            this.I = null;
        }
        MyButtonImage myButtonImage = this.K;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.K = null;
        }
        MyButtonImage myButtonImage2 = this.L;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.L = null;
        }
        MyLineText myLineText = this.O;
        if (myLineText != null) {
            myLineText.u();
            this.O = null;
        }
        MyCoverView myCoverView = this.P;
        if (myCoverView != null) {
            myCoverView.i();
            this.P = null;
        }
        ZoomImageAttacher zoomImageAttacher = this.J;
        if (zoomImageAttacher != null) {
            zoomImageAttacher.r();
            this.J = null;
        }
        MyFadeFrame myFadeFrame = this.T;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.T = null;
        }
        MainActivity mainActivity = this.w;
        if (mainActivity != null) {
            mainActivity.n0(null, false);
            this.w = null;
        }
        this.x = null;
        this.z = null;
        this.A = null;
        this.E = null;
        this.F = null;
        this.M = null;
        this.N = null;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18667c) {
            return false;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        if (this.R) {
            return;
        }
        dismiss();
    }

    public final boolean o(int i, int i2, Intent intent) {
        DialogDownEdit dialogDownEdit = this.S;
        if (dialogDownEdit != null && dialogDownEdit.D(i, i2, intent)) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        r();
    }

    public final void p() {
        DialogDownEdit dialogDownEdit = this.S;
        if (dialogDownEdit != null) {
            dialogDownEdit.dismiss();
            this.S = null;
            this.U = false;
            MainUtil.K7(this.w, false);
        }
    }

    public final void q(boolean z) {
        if (z) {
            MainActivity mainActivity = this.f;
            if (mainActivity == null) {
                z = MainUtil.X5(getContext());
            } else {
                z = mainActivity.B0;
            }
        }
        r();
        DialogDownEdit dialogDownEdit = this.S;
        if (dialogDownEdit != null) {
            dialogDownEdit.E(z);
        }
        f();
    }

    public final void r() {
        Handler handler;
        if (this.w == null || (handler = this.i) == null) {
            return;
        }
        handler.post(new AnonymousClass18());
    }
}
