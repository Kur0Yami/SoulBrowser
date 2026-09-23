package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.RequestListener;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogDownFile extends MyDialogBottom {
    public static final /* synthetic */ int T0 = 0;
    public String A0;
    public String B0;
    public DialogDownUrl.DownUrlListener C0;
    public String D0;
    public String E0;
    public boolean F0;
    public boolean G0;
    public GlideUrl H0;
    public GlideRequests I0;
    public boolean J0;
    public ArrayList K0;
    public String L0;
    public MyPopupMenu M0;
    public String N0;
    public MainUri.UriItem O0;
    public boolean P0;
    public boolean Q0;
    public final RequestListener R0;
    public final RequestListener S0;
    public MainActivity a0;
    public Context b0;
    public final boolean c0;
    public MyAdFrame d0;
    public MyAdNative e0;
    public int f0;
    public boolean g0;
    public MyDialogLinear h0;
    public MyLineFrame i0;
    public MyRoundImage j0;
    public AppCompatTextView k0;
    public MyRoundImage l0;
    public MyLineLinear m0;
    public AppCompatTextView n0;
    public AppCompatTextView o0;
    public MyEditText p0;
    public MyLineRelative q0;
    public AppCompatTextView r0;
    public AppCompatTextView s0;
    public MyButtonImage t0;
    public MyRoundImage u0;
    public MyLineLinear v0;
    public AppCompatTextView w0;
    public RelativeLayout x0;
    public String y0;
    public String z0;

    /* renamed from: com.mycompany.app.dialog.DialogDownFile$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int i = MainApp.l1;
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i, i);
            }
        }
    }

    public DialogDownFile(MainActivity mainActivity, String str, String str2, String str3, boolean z, DialogDownUrl.DownUrlListener downUrlListener) {
        super(mainActivity);
        this.R0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogDownFile.18
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.H0 != null && !dialogDownFile.J0 && (myRoundImage = dialogDownFile.u0) != null) {
                    dialogDownFile.J0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.18.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile.C(DialogDownFile.this);
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                Drawable drawable = (Drawable) obj;
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.I0 != null && dialogDownFile.j0 != null) {
                    DialogDownFile.D(dialogDownFile, drawable);
                    if (dialogDownFile.l0 != null) {
                        dialogDownFile.j0.setVisibility(8);
                        dialogDownFile.k0.setVisibility(8);
                        dialogDownFile.l0.setVisibility(0);
                    }
                }
            }
        };
        this.S0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogDownFile.20
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.H0 != null && !dialogDownFile.J0 && (myRoundImage = dialogDownFile.u0) != null) {
                    dialogDownFile.J0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.20.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile dialogDownFile2 = DialogDownFile.this;
                            int i = DialogDownFile.T0;
                            dialogDownFile2.J();
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.I0 != null && dialogDownFile.j0 != null) {
                    DialogDownFile.D(dialogDownFile, pictureDrawable);
                    if (dialogDownFile.l0 != null) {
                        dialogDownFile.j0.setVisibility(8);
                        dialogDownFile.k0.setVisibility(8);
                        dialogDownFile.l0.setLayerType(1, null);
                        dialogDownFile.l0.setVisibility(0);
                    }
                }
            }
        };
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.y0 = str;
        this.z0 = str2;
        this.A0 = str3;
        this.C0 = downUrlListener;
        this.c0 = z;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.1
            @Override // java.lang.Runnable
            public final void run() {
                String str4;
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.b0 != null) {
                    String str5 = dialogDownFile.A0;
                    if (!TextUtils.isEmpty(str5)) {
                        int lastIndexOf = str5.lastIndexOf(46);
                        int i = 190;
                        if (lastIndexOf != -1) {
                            str4 = str5.substring(lastIndexOf);
                            if (str4 != null) {
                                i = 190 - str4.length();
                                if (lastIndexOf < str5.length()) {
                                    str5 = str5.substring(0, lastIndexOf);
                                }
                            }
                        } else {
                            str4 = null;
                        }
                        if (str4 != null) {
                            str5 = MainUtil.l3(i, str5, "Download") + str4;
                        } else {
                            str5 = MainUtil.l3(i, str5, "Download");
                        }
                    }
                    dialogDownFile.B0 = str5;
                    ArrayList n = MainUri.n(dialogDownFile.b0);
                    dialogDownFile.K0 = n;
                    PrefPath.r = MainUri.m(dialogDownFile.b0, PrefPath.r, n);
                    dialogDownFile.L0 = MainUri.h(dialogDownFile.b0, MainUri.e());
                    Handler handler = dialogDownFile.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile.B(DialogDownFile.this);
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.widget.RelativeLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.core.widget.NestedScrollView, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.widget.LinearLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.view.MyLineLinear, android.view.ViewGroup] */
    public static void B(DialogDownFile dialogDownFile) {
        MyAdFrame myAdFrame;
        Context context = dialogDownFile.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            ?? m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            ?? g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            ?? frameLayout = new FrameLayout(context);
            g.addView(frameLayout, -1, -2);
            if (dialogDownFile.c0) {
                ?? frameLayout2 = new FrameLayout(context);
                frameLayout2.setMinimumHeight((int) MainUtil.G(context, 340.0f));
                frameLayout2.setVisibility(8);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams2.gravity = 80;
                frameLayout.addView(frameLayout2, layoutParams2);
                myAdFrame = frameLayout2;
            } else {
                myAdFrame = null;
            }
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams3.gravity = 80;
            frameLayout.addView(myLineFrame, layoutParams3);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i, i);
            layoutParams4.gravity = 8388627;
            layoutParams4.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams4);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(16);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setTextSize(1, 16.0f);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, G);
            layoutParams5.setMarginStart(G);
            layoutParams5.setMarginEnd(MainApp.E1);
            myLineFrame.addView(appCompatTextView, layoutParams5);
            ?? relativeLayout = new RelativeLayout(context);
            g.addView(relativeLayout, -1, -2);
            ?? myLineLinear = new MyLineLinear(context);
            myLineLinear.setOrientation(1);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            relativeLayout.addView(myLineLinear, -1, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i2 = MainApp.E1;
            appCompatTextView2.setPadding(i2, 0, i2, 0);
            appCompatTextView2.setGravity(16);
            appCompatTextView2.setTextSize(1, 14.0f);
            appCompatTextView2.setText(R.string.exist_file);
            appCompatTextView2.setVisibility(8);
            myLineLinear.addView(appCompatTextView2, -1, (int) MainUtil.G(context, 32.0f));
            FrameLayout frameLayout3 = new FrameLayout(context);
            int G2 = (int) MainUtil.G(context, 12.0f);
            frameLayout3.setPaddingRelative(MainApp.E1, G2, (int) MainUtil.G(context, 10.0f), G2);
            myLineLinear.addView(frameLayout3, -1, (int) MainUtil.G(context, 88.0f));
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            frameLayout3.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.gravity = 8388691;
            layoutParams6.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout3.addView(myEditText, layoutParams6);
            dialogDownFile.d0 = myAdFrame;
            dialogDownFile.h0 = q;
            dialogDownFile.i0 = myLineFrame;
            dialogDownFile.x0 = relativeLayout;
            dialogDownFile.j0 = myRoundImage;
            dialogDownFile.k0 = appCompatTextView;
            dialogDownFile.m0 = myLineLinear;
            dialogDownFile.n0 = appCompatTextView2;
            dialogDownFile.o0 = j;
            dialogDownFile.p0 = myEditText;
            Handler handler = dialogDownFile.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    RelativeLayout relativeLayout2;
                    MyLineLinear myLineLinear2;
                    final DialogDownFile dialogDownFile2 = DialogDownFile.this;
                    Context context2 = dialogDownFile2.b0;
                    if (context2 != null && (myDialogLinear = dialogDownFile2.h0) != null && (relativeLayout2 = dialogDownFile2.x0) != null && (myLineLinear2 = dialogDownFile2.m0) != null) {
                        int i3 = R.id.down_icon_frame;
                        int i4 = R.id.down_path_title;
                        MyLineRelative myLineRelative = new MyLineRelative(context2);
                        myLineRelative.setPaddingRelative(MainApp.E1, 0, (int) MainUtil.G(context2, 6.0f), 0);
                        myLineRelative.setMinimumHeight(MainApp.h1);
                        myLineRelative.c(MainApp.E1);
                        myLineLinear2.addView(myLineRelative, -1, -2);
                        int G3 = (int) MainUtil.G(context2, 88.0f);
                        LinearLayout linearLayout = new LinearLayout(context2);
                        linearLayout.setId(i3);
                        linearLayout.setBaselineAligned(false);
                        linearLayout.setOrientation(0);
                        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, G3);
                        layoutParams7.addRule(15);
                        layoutParams7.addRule(21);
                        layoutParams7.setMarginEnd(MainApp.G1);
                        myLineRelative.addView(linearLayout, layoutParams7);
                        MyButtonImage myButtonImage = new MyButtonImage(context2);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        myButtonImage.l(MainApp.j1, true);
                        myButtonImage.setBgPreRadius(MainApp.k1);
                        linearLayout.addView(myButtonImage, MainApp.g1, G3);
                        RelativeLayout relativeLayout3 = new RelativeLayout(context2);
                        int i5 = MainApp.E1;
                        relativeLayout3.setPadding(0, i5, 0, i5);
                        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams8.addRule(16, i3);
                        layoutParams8.addRule(15);
                        layoutParams8.setMarginEnd((int) MainUtil.G(context2, 10.0f));
                        myLineRelative.addView(relativeLayout3, layoutParams8);
                        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i4, 1, 14.0f);
                        k.setText(R.string.down_location);
                        relativeLayout3.addView(k, -2, -2);
                        AppCompatTextView i6 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i6.setEllipsize(TextUtils.TruncateAt.END);
                        i6.setTextSize(1, 16.0f);
                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i4);
                        h.topMargin = MainApp.F1;
                        relativeLayout3.addView(i6, h);
                        MyRoundImage myRoundImage2 = new MyRoundImage(context2);
                        myRoundImage2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        myRoundImage2.setVisibility(8);
                        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, (int) MainUtil.G(context2, 140.0f));
                        layoutParams9.setMarginStart(MainApp.E1);
                        layoutParams9.setMarginEnd(MainApp.E1);
                        relativeLayout2.addView(myRoundImage2, layoutParams9);
                        MyLineLinear myLineLinear3 = new MyLineLinear(context2);
                        myLineLinear3.setBaselineAligned(false);
                        myLineLinear3.setOrientation(0);
                        myLineLinear3.setLinePad(MainApp.E1);
                        myLineLinear3.setLineUp(true);
                        myDialogLinear.addView(myLineLinear3, -1, MainApp.g1);
                        AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context2, null, 17, 1, 16.0f);
                        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(C, R.string.download, 0, -1);
                        e.weight = 1.0f;
                        myLineLinear3.addView(C, e);
                        dialogDownFile2.q0 = myLineRelative;
                        dialogDownFile2.r0 = k;
                        dialogDownFile2.s0 = i6;
                        dialogDownFile2.t0 = myButtonImage;
                        dialogDownFile2.u0 = myRoundImage2;
                        dialogDownFile2.v0 = myLineLinear3;
                        dialogDownFile2.w0 = C;
                        Handler handler2 = dialogDownFile2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.3
                            /* JADX WARN: Code restructure failed: missing block: B:23:0x0114, code lost:
                            
                                if (r3 == false) goto L29;
                             */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void run() {
                                /*
                                    Method dump skipped, instructions count: 365
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownFile.AnonymousClass3.run():void");
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogDownFile dialogDownFile) {
        MyRoundImage myRoundImage = dialogDownFile.j0;
        if (myRoundImage == null) {
            return;
        }
        myRoundImage.o(-460552, R.drawable.outline_image_black_24);
        String str = null;
        if (Compress.I(MainUtil.V3(dialogDownFile.y0, null, null, true))) {
            dialogDownFile.J();
            return;
        }
        dialogDownFile.u0.setVisibility(4);
        if (URLUtil.isNetworkUrl(dialogDownFile.y0)) {
            String str2 = dialogDownFile.z0;
            if (dialogDownFile.J0) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            dialogDownFile.H0 = MainUtil.A1(dialogDownFile.b0, dialogDownFile.y0, str);
        } else {
            dialogDownFile.H0 = null;
        }
        dialogDownFile.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.17
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownFile dialogDownFile2 = DialogDownFile.this;
                MainActivity mainActivity = dialogDownFile2.a0;
                if (mainActivity != null) {
                    if (dialogDownFile2.I0 == null) {
                        dialogDownFile2.I0 = GlideApp.a(mainActivity);
                    }
                    Handler handler = dialogDownFile2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.17.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile dialogDownFile3 = DialogDownFile.this;
                            GlideRequests glideRequests = dialogDownFile3.I0;
                            if (glideRequests == null) {
                                return;
                            }
                            GlideUrl glideUrl = dialogDownFile3.H0;
                            DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                            if (glideUrl != null) {
                                ((RequestBuilder) glideRequests.t(glideUrl).e(diskCacheStrategy)).I(dialogDownFile3.R0).E(dialogDownFile3.u0);
                            } else {
                                ((RequestBuilder) glideRequests.u(dialogDownFile3.y0).e(diskCacheStrategy)).I(dialogDownFile3.R0).E(dialogDownFile3.u0);
                            }
                        }
                    });
                }
            }
        });
    }

    public static void D(DialogDownFile dialogDownFile, Drawable drawable) {
        int width;
        if (dialogDownFile.u0 != null && dialogDownFile.l0 == null && dialogDownFile.i0 != null) {
            try {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0 && (width = dialogDownFile.i0.getWidth() - (MainApp.E1 * 2)) > 0) {
                    float f = intrinsicWidth / intrinsicHeight;
                    int G = (int) MainUtil.G(dialogDownFile.b0, 140.0f);
                    int round = Math.round(G * f);
                    if (round <= width) {
                        width = round;
                    }
                    MyRoundImage myRoundImage = dialogDownFile.u0;
                    dialogDownFile.u0 = null;
                    MainUtil.V6(myRoundImage);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, G);
                    layoutParams.gravity = 1;
                    int i = MainApp.E1;
                    layoutParams.setMargins(i, i, i, i);
                    dialogDownFile.i0.addView(myRoundImage, layoutParams);
                    dialogDownFile.l0 = myRoundImage;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void E(DialogDownFile dialogDownFile) {
        if (dialogDownFile.b0 != null && dialogDownFile.p0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogDownFile.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogDownFile.p0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogDownFile.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogDownFile.b0, R.string.long_name);
                return;
            }
            String p3 = MainUtil.p3(Q0);
            MainUri.e();
            MainUtil.X4(dialogDownFile.b0, dialogDownFile.p0);
            dialogDownFile.N0 = p3;
            dialogDownFile.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.22
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownFile dialogDownFile2 = DialogDownFile.this;
                    String str = dialogDownFile2.N0;
                    dialogDownFile2.N0 = null;
                    if (dialogDownFile2.C0 != null) {
                        dialogDownFile2.O0 = MainUri.c(dialogDownFile2.b0, MainUri.e(), null, str);
                    }
                    MyEditText myEditText = dialogDownFile2.p0;
                    if (myEditText == null) {
                        return;
                    }
                    myEditText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.22.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                            DialogDownFile dialogDownFile3 = DialogDownFile.this;
                            MainUri.UriItem uriItem = dialogDownFile3.O0;
                            dialogDownFile3.O0 = null;
                            DialogDownUrl.DownUrlListener downUrlListener = dialogDownFile3.C0;
                            if (downUrlListener != null) {
                                downUrlListener.d(dialogDownFile3.y0, uriItem, 1, false, null, dialogDownFile3.z0);
                            }
                            DialogDownFile.this.dismiss();
                        }
                    });
                }
            });
        }
    }

    public final void F() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.M0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.M0 = null;
        }
        GlideRequests glideRequests = this.I0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.u0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            MyRoundImage myRoundImage2 = this.l0;
            if (myRoundImage2 != null) {
                this.I0.o(myRoundImage2);
            }
            this.I0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyLineFrame myLineFrame = this.i0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.i0 = null;
        }
        MyRoundImage myRoundImage3 = this.j0;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.j0 = null;
        }
        MyRoundImage myRoundImage4 = this.l0;
        if (myRoundImage4 != null) {
            myRoundImage4.k();
            this.l0 = null;
        }
        MyLineLinear myLineLinear = this.m0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.m0 = null;
        }
        MyEditText myEditText = this.p0;
        if (myEditText != null) {
            myEditText.c();
            this.p0 = null;
        }
        MyLineRelative myLineRelative = this.q0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.q0 = null;
        }
        MyButtonImage myButtonImage = this.t0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.t0 = null;
        }
        MyRoundImage myRoundImage5 = this.u0;
        if (myRoundImage5 != null) {
            myRoundImage5.k();
            this.u0 = null;
        }
        MyLineLinear myLineLinear2 = this.v0;
        if (myLineLinear2 != null) {
            myLineLinear2.a();
            this.v0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.k0 = null;
        this.n0 = null;
        this.s0 = null;
        this.w0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        this.D0 = null;
        this.E0 = null;
        this.H0 = null;
        this.K0 = null;
        this.L0 = null;
        super.dismiss();
    }

    public final void G(boolean z) {
        if (this.h0 != null && this.i0 != null) {
            if (z) {
                z = q();
            }
            int i = -1;
            if (z) {
                MyAdNative myAdNative = this.e0;
                if (myAdNative != null) {
                    myAdNative.setVisibility(8);
                }
                if (this.d0 != null) {
                    MyDialogLinear myDialogLinear = this.h0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear.d(i, 0);
                    this.d0.setVisibility(8);
                }
                this.i0.setVisibility(8);
                return;
            }
            MyAdNative myAdNative2 = this.e0;
            if (myAdNative2 != null && myAdNative2.p()) {
                MyAdNative myAdNative3 = this.e0;
                if (myAdNative3 != null) {
                    myAdNative3.setVisibility(0);
                }
                if (this.d0 != null) {
                    MyDialogLinear myDialogLinear2 = this.h0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear2.d(i, 0);
                }
                this.i0.setVisibility(8);
            } else {
                MyAdNative myAdNative4 = this.e0;
                if (myAdNative4 != null) {
                    myAdNative4.setVisibility(8);
                }
                if (this.d0 != null) {
                    MyDialogLinear myDialogLinear3 = this.h0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear3.d(i, this.f0);
                }
                this.i0.setVisibility(0);
            }
            MyAdFrame myAdFrame = this.d0;
            if (myAdFrame != null) {
                myAdFrame.setVisibility(0);
            }
        }
    }

    public final void H() {
        MyAdNative myAdNative;
        if (this.d0 != null && (myAdNative = this.e0) != null) {
            if (!myAdNative.p()) {
                G(p());
                return;
            }
            this.d0.setOnClickListener(null);
            this.e0.setDarkMode(true);
            G(p());
        }
    }

    public final void I(String str) {
        String str2;
        int i;
        if (this.p0 != null) {
            if (!TextUtils.isEmpty(str)) {
                this.D0 = str;
            }
            if (this.F0) {
                str2 = MainUtil.Q0(this.p0, true);
            } else {
                str2 = this.D0;
            }
            String p3 = MainUtil.p3(str2);
            if (TextUtils.isEmpty(MainUri.e())) {
                this.E0 = p3;
                this.p0.setText(p3);
                this.s0.setText(R.string.not_selected);
                this.s0.setTextColor(-769226);
                if (this.d0 == null) {
                    this.m0.setDrawLine(true);
                    this.n0.setVisibility(8);
                    return;
                }
                return;
            }
            this.s0.setText(this.L0);
            AppCompatTextView appCompatTextView = this.s0;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            appCompatTextView.setTextColor(i);
            if (TextUtils.isEmpty(p3)) {
                this.E0 = p3;
                this.p0.setText(p3);
                if (this.d0 == null) {
                    this.m0.setDrawLine(true);
                    this.n0.setVisibility(8);
                    return;
                }
                return;
            }
            MainUri.e();
            if (this.d0 == null) {
                this.m0.setDrawLine(true);
                this.n0.setVisibility(8);
            }
            this.E0 = p3;
            this.p0.setText(p3);
        }
    }

    public final void J() {
        this.u0.setVisibility(4);
        String str = null;
        if (URLUtil.isNetworkUrl(this.y0)) {
            String str2 = this.z0;
            if (this.J0) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            this.H0 = MainUtil.A1(this.b0, this.y0, str);
        } else {
            this.H0 = null;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.19
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownFile dialogDownFile = DialogDownFile.this;
                MainActivity mainActivity = dialogDownFile.a0;
                if (mainActivity != null) {
                    if (dialogDownFile.I0 == null) {
                        dialogDownFile.I0 = GlideApp.a(mainActivity);
                    }
                    Handler handler = dialogDownFile.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.19.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile dialogDownFile2 = DialogDownFile.this;
                            GlideRequests glideRequests = dialogDownFile2.I0;
                            if (glideRequests == null) {
                                return;
                            }
                            if (dialogDownFile2.H0 != null) {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogDownFile2.H0)).I(dialogDownFile2.S0).E(dialogDownFile2.u0);
                            } else {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogDownFile2.y0)).I(dialogDownFile2.S0).E(dialogDownFile2.u0);
                            }
                        }
                    });
                }
            }
        });
    }

    public final void K(String str) {
        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
            return;
        }
        PrefPath.r = str;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.21
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownFile dialogDownFile = DialogDownFile.this;
                if (dialogDownFile.b0 != null) {
                    String e = MainUri.e();
                    PrefSet.h(dialogDownFile.b0, e);
                    dialogDownFile.L0 = MainUri.h(dialogDownFile.b0, e);
                    Handler handler = dialogDownFile.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.21.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile dialogDownFile2 = DialogDownFile.this;
                            int i = DialogDownFile.T0;
                            dialogDownFile2.I(null);
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.P0) {
            this.P0 = true;
            if (this.d0 == null) {
                F();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.16
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownFile dialogDownFile = DialogDownFile.this;
                    MyAdFrame myAdFrame = dialogDownFile.d0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogDownFile.d0 = null;
                        MainApp.f(dialogDownFile.b0, 0);
                    }
                    dialogDownFile.e0 = null;
                    Handler handler2 = dialogDownFile.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFile.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFile dialogDownFile2 = DialogDownFile.this;
                            int i = DialogDownFile.T0;
                            dialogDownFile2.F();
                        }
                    });
                }
            });
        }
    }
}
