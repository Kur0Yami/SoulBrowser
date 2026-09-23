package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.RequestListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRoundImage;

/* loaded from: classes3.dex */
public class DialogInfo extends MyDialogBottom {
    public static final /* synthetic */ int V0 = 0;
    public LinearLayout A0;
    public AppCompatTextView B0;
    public AppCompatTextView C0;
    public LinearLayout D0;
    public AppCompatTextView E0;
    public AppCompatTextView F0;
    public LinearLayout G0;
    public AppCompatTextView H0;
    public AppCompatTextView I0;
    public LinearLayout J0;
    public AppCompatTextView K0;
    public AppCompatTextView L0;
    public MainListLoader M0;
    public GlideUrl N0;
    public GlideRequests O0;
    public boolean P0;
    public String Q0;
    public String R0;
    public final RequestListener S0;
    public final RequestListener T0;
    public final RequestListener U0;
    public MainActivity a0;
    public Context b0;
    public final int c0;
    public MainItem.ChildItem d0;
    public final boolean e0;
    public MyDialogLinear f0;
    public MyLineFrame g0;
    public MyRoundImage h0;
    public MyRoundImage i0;
    public MyRoundImage j0;
    public MyCoverView k0;
    public LinearLayout l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public LinearLayout o0;
    public AppCompatTextView p0;
    public AppCompatTextView q0;
    public LinearLayout r0;
    public AppCompatTextView s0;
    public AppCompatTextView t0;
    public LinearLayout u0;
    public AppCompatTextView v0;
    public AppCompatTextView w0;
    public LinearLayout x0;
    public AppCompatTextView y0;
    public AppCompatTextView z0;

    /* loaded from: classes3.dex */
    public static class InfoHolder {

        /* renamed from: a, reason: collision with root package name */
        public LinearLayout f13781a;
        public AppCompatTextView b;

        /* renamed from: c, reason: collision with root package name */
        public AppCompatTextView f13782c;
    }

    public DialogInfo(MainActivity mainActivity, int i, MainItem.ChildItem childItem) {
        super(mainActivity);
        this.S0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogInfo.8
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                Drawable drawable = (Drawable) obj;
                DialogInfo dialogInfo = DialogInfo.this;
                if (dialogInfo.O0 != null && dialogInfo.h0 != null) {
                    DialogInfo.C(dialogInfo, drawable);
                    if (dialogInfo.i0 != null) {
                        dialogInfo.h0.setVisibility(8);
                        dialogInfo.i0.setVisibility(0);
                    }
                }
            }
        };
        this.T0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogInfo.11
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogInfo dialogInfo = DialogInfo.this;
                if (dialogInfo.N0 != null && !dialogInfo.P0 && (myRoundImage = dialogInfo.j0) != null) {
                    dialogInfo.P0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.11.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogInfo.B(DialogInfo.this);
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                Drawable drawable = (Drawable) obj;
                DialogInfo dialogInfo = DialogInfo.this;
                if (dialogInfo.O0 != null && dialogInfo.h0 != null) {
                    DialogInfo.C(dialogInfo, drawable);
                    if (dialogInfo.i0 != null) {
                        dialogInfo.h0.setVisibility(8);
                        dialogInfo.i0.setVisibility(0);
                    }
                }
            }
        };
        this.U0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogInfo.13
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogInfo dialogInfo = DialogInfo.this;
                if (dialogInfo.N0 != null && !dialogInfo.P0 && (myRoundImage = dialogInfo.j0) != null) {
                    dialogInfo.P0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.13.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogInfo dialogInfo2 = DialogInfo.this;
                            int i2 = DialogInfo.V0;
                            dialogInfo2.F();
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                DialogInfo dialogInfo = DialogInfo.this;
                if (dialogInfo.O0 != null && dialogInfo.h0 != null) {
                    DialogInfo.C(dialogInfo, pictureDrawable);
                    if (dialogInfo.i0 != null) {
                        dialogInfo.h0.setVisibility(8);
                        dialogInfo.i0.setLayerType(1, null);
                        dialogInfo.i0.setVisibility(0);
                    }
                }
            }
        };
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = i;
        this.d0 = childItem;
        if (i != 17 && i != 18 && i != 19 && i != 20 && i != 21 && i != 22 && i != 23 && i != 28 && i != 29 && i != 30 && i != 35 && i != 36) {
            if (i == 25 && URLUtil.isNetworkUrl(childItem.g)) {
                this.e0 = true;
            }
        } else {
            this.e0 = true;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                final DialogInfo dialogInfo = DialogInfo.this;
                Context context = dialogInfo.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    myLineFrame.setVisibility(8);
                    q.addView(myLineFrame, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    myRoundImage.setVisibility(8);
                    int i3 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams.gravity = 1;
                    int i4 = MainApp.E1;
                    layoutParams.topMargin = i4;
                    layoutParams.bottomMargin = i4;
                    myLineFrame.addView(myRoundImage, layoutParams);
                    int G = (int) MainUtil.G(context, 140.0f);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(m, layoutParams2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    m.addView(frameLayout, -1, -2);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams3.gravity = 16;
                    frameLayout.addView(linearLayout, layoutParams3);
                    InfoHolder D = DialogInfo.D(context, linearLayout);
                    InfoHolder D2 = DialogInfo.D(context, linearLayout);
                    InfoHolder D3 = DialogInfo.D(context, linearLayout);
                    InfoHolder D4 = DialogInfo.D(context, linearLayout);
                    InfoHolder D5 = DialogInfo.D(context, linearLayout);
                    InfoHolder D6 = DialogInfo.D(context, linearLayout);
                    InfoHolder D7 = DialogInfo.D(context, linearLayout);
                    InfoHolder D8 = DialogInfo.D(context, linearLayout);
                    InfoHolder D9 = DialogInfo.D(context, linearLayout);
                    MyRoundImage myRoundImage2 = new MyRoundImage(context);
                    myRoundImage2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    myRoundImage2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G);
                    layoutParams4.setMarginStart(MainApp.E1);
                    layoutParams4.setMarginEnd(MainApp.E1);
                    frameLayout.addView(myRoundImage2, layoutParams4);
                    if (MainApp.K1) {
                        i2 = -328966;
                    } else {
                        i2 = -13022805;
                    }
                    MyCoverView myCoverView = new MyCoverView(context, i2, (int) MainUtil.G(context, 2.0f), MainApp.z1);
                    myCoverView.setBlockTouch(true);
                    myCoverView.setVisibility(8);
                    int i5 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i5, i5);
                    layoutParams5.gravity = 17;
                    frameLayout.addView(myCoverView, layoutParams5);
                    dialogInfo.f0 = q;
                    dialogInfo.g0 = myLineFrame;
                    dialogInfo.h0 = myRoundImage;
                    dialogInfo.j0 = myRoundImage2;
                    dialogInfo.k0 = myCoverView;
                    dialogInfo.l0 = D.f13781a;
                    dialogInfo.m0 = D.b;
                    dialogInfo.n0 = D.f13782c;
                    dialogInfo.o0 = D2.f13781a;
                    dialogInfo.p0 = D2.b;
                    dialogInfo.q0 = D2.f13782c;
                    dialogInfo.r0 = D3.f13781a;
                    dialogInfo.s0 = D3.b;
                    dialogInfo.t0 = D3.f13782c;
                    dialogInfo.u0 = D4.f13781a;
                    dialogInfo.v0 = D4.b;
                    dialogInfo.w0 = D4.f13782c;
                    dialogInfo.x0 = D5.f13781a;
                    dialogInfo.y0 = D5.b;
                    dialogInfo.z0 = D5.f13782c;
                    dialogInfo.A0 = D6.f13781a;
                    dialogInfo.B0 = D6.b;
                    dialogInfo.C0 = D6.f13782c;
                    dialogInfo.D0 = D7.f13781a;
                    dialogInfo.E0 = D7.b;
                    dialogInfo.F0 = D7.f13782c;
                    dialogInfo.G0 = D8.f13781a;
                    dialogInfo.H0 = D8.b;
                    dialogInfo.I0 = D8.f13782c;
                    dialogInfo.J0 = D9.f13781a;
                    dialogInfo.K0 = D9.b;
                    dialogInfo.L0 = D9.f13782c;
                    Handler handler2 = dialogInfo.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainUtil.SizeItem V1;
                            MainItem.ChildItem childItem2;
                            String str;
                            long j;
                            String str2;
                            char c2;
                            final DialogInfo dialogInfo2 = DialogInfo.this;
                            int i6 = dialogInfo2.c0;
                            if (i6 == 27) {
                                if (dialogInfo2.f0 != null && dialogInfo2.b0 != null && (childItem2 = dialogInfo2.d0) != null) {
                                    if (TextUtils.isEmpty(childItem2.h) && TextUtils.isEmpty(childItem2.x)) {
                                        j = 0;
                                    } else {
                                        dialogInfo2.l0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.m0.setTextColor(-4079167);
                                            dialogInfo2.n0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.m0.setTextColor(-10395295);
                                            dialogInfo2.n0.setTextColor(-16777216);
                                        }
                                        if (!TextUtils.isEmpty(childItem2.x)) {
                                            str = childItem2.x;
                                        } else {
                                            str = childItem2.h;
                                        }
                                        j = 0;
                                        dialogInfo2.m0.setText(R.string.name);
                                        dialogInfo2.n0.setText(str);
                                    }
                                    if (!TextUtils.isEmpty(childItem2.G)) {
                                        dialogInfo2.o0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.p0.setTextColor(-4079167);
                                            dialogInfo2.q0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.p0.setTextColor(-10395295);
                                            dialogInfo2.q0.setTextColor(-16777216);
                                        }
                                        String str3 = childItem2.G;
                                        if (str3.length() > 1 && str3.startsWith("v")) {
                                            str3 = str3.substring(1);
                                        }
                                        dialogInfo2.p0.setText(R.string.version);
                                        dialogInfo2.q0.setText(str3);
                                    }
                                    if (!TextUtils.isEmpty(childItem2.f) || !TextUtils.isEmpty(childItem2.Q)) {
                                        dialogInfo2.r0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.s0.setTextColor(-4079167);
                                            dialogInfo2.t0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.s0.setTextColor(-10395295);
                                            dialogInfo2.t0.setTextColor(-16777216);
                                        }
                                        if (!TextUtils.isEmpty(childItem2.Q)) {
                                            str2 = childItem2.Q;
                                        } else {
                                            str2 = childItem2.f;
                                        }
                                        dialogInfo2.s0.setText(R.string.info);
                                        dialogInfo2.t0.setText(str2);
                                    }
                                    if (!TextUtils.isEmpty(childItem2.j)) {
                                        dialogInfo2.u0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.v0.setTextColor(-4079167);
                                            dialogInfo2.w0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.v0.setTextColor(-10395295);
                                            dialogInfo2.w0.setTextColor(-16777216);
                                        }
                                        dialogInfo2.v0.setText(R.string.author);
                                        dialogInfo2.w0.setText(childItem2.j);
                                    }
                                    if (URLUtil.isNetworkUrl(childItem2.i)) {
                                        dialogInfo2.x0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.y0.setTextColor(-4079167);
                                        } else {
                                            dialogInfo2.y0.setTextColor(-10395295);
                                        }
                                        if (MainApp.K1) {
                                            dialogInfo2.z0.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogInfo2.z0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.z0.setBackgroundResource(R.drawable.selector_normal);
                                            dialogInfo2.z0.setTextColor(-14784824);
                                        }
                                        String D0 = MainUtil.D0(childItem2.i);
                                        if (TextUtils.isEmpty(D0)) {
                                            D0 = childItem2.i;
                                        }
                                        dialogInfo2.y0.setText(R.string.site);
                                        dialogInfo2.z0.setText(MainUtil.u6(D0));
                                        dialogInfo2.Q0 = D0;
                                        dialogInfo2.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogInfo.4
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogInfo dialogInfo3 = DialogInfo.this;
                                                MainUtil.s(R.string.copied_clipboard, dialogInfo3.b0, "Copied URL", dialogInfo3.Q0);
                                            }
                                        });
                                    }
                                    String str4 = childItem2.g;
                                    if (!TextUtils.isEmpty(str4)) {
                                        if (URLUtil.isNetworkUrl(str4)) {
                                            c2 = 1;
                                        } else if (str4.startsWith("userscript://")) {
                                            c2 = 2;
                                        } else {
                                            c2 = 3;
                                        }
                                    } else {
                                        c2 = 0;
                                    }
                                    if (c2 != 0) {
                                        dialogInfo2.A0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.B0.setTextColor(-4079167);
                                        } else {
                                            dialogInfo2.B0.setTextColor(-10395295);
                                        }
                                        dialogInfo2.B0.setText(R.string.link);
                                        if (c2 == 1) {
                                            if (MainApp.K1) {
                                                dialogInfo2.C0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                dialogInfo2.C0.setTextColor(-328966);
                                            } else {
                                                dialogInfo2.C0.setBackgroundResource(R.drawable.selector_normal);
                                                dialogInfo2.C0.setTextColor(-14784824);
                                            }
                                            String D02 = MainUtil.D0(childItem2.g);
                                            if (TextUtils.isEmpty(D02)) {
                                                D02 = childItem2.g;
                                            }
                                            dialogInfo2.C0.setText(MainUtil.u6(D02));
                                            dialogInfo2.R0 = D02;
                                            dialogInfo2.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogInfo.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    DialogInfo dialogInfo3 = DialogInfo.this;
                                                    MainUtil.s(R.string.copied_clipboard, dialogInfo3.b0, "Copied URL", dialogInfo3.R0);
                                                }
                                            });
                                        } else if (c2 == 2) {
                                            if (MainApp.K1) {
                                                dialogInfo2.C0.setTextColor(-328966);
                                            } else {
                                                dialogInfo2.C0.setTextColor(-16777216);
                                            }
                                            dialogInfo2.C0.setText(R.string.user_defined);
                                        } else {
                                            if (MainApp.K1) {
                                                dialogInfo2.C0.setTextColor(-328966);
                                            } else {
                                                dialogInfo2.C0.setTextColor(-16777216);
                                            }
                                            dialogInfo2.C0.setText(R.string.local_file);
                                        }
                                    }
                                    if (childItem2.A > j) {
                                        dialogInfo2.D0.setVisibility(0);
                                        if (MainApp.K1) {
                                            dialogInfo2.E0.setTextColor(-4079167);
                                            dialogInfo2.F0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.E0.setTextColor(-10395295);
                                            dialogInfo2.F0.setTextColor(-16777216);
                                        }
                                        dialogInfo2.E0.setText(R.string.modified);
                                        dialogInfo2.F0.setText(MainUtil.y1(childItem2.A, null, "yyyy.MM.dd  hh:mm:ss a"));
                                    }
                                }
                            } else {
                                boolean z = dialogInfo2.e0;
                                if (dialogInfo2.f0 != null && dialogInfo2.b0 != null) {
                                    if (i6 != 19 && i6 != 20 && i6 != 21 && i6 != 22 && i6 != 28 && i6 != 29 && i6 != 30 && !TextUtils.isEmpty(dialogInfo2.d0.h)) {
                                        if (i6 == 23) {
                                            dialogInfo2.m0.setText(R.string.domain_url);
                                        } else if (i6 == 37) {
                                            dialogInfo2.m0.setText(R.string.memo_title);
                                        } else {
                                            dialogInfo2.m0.setText(R.string.name);
                                        }
                                        if (i6 == 23) {
                                            dialogInfo2.n0.setText(dialogInfo2.d0.g);
                                        } else {
                                            dialogInfo2.n0.setText(dialogInfo2.d0.h);
                                        }
                                        if (MainApp.K1) {
                                            dialogInfo2.m0.setTextColor(-4079167);
                                            dialogInfo2.n0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.m0.setTextColor(-10395295);
                                            dialogInfo2.n0.setTextColor(-16777216);
                                        }
                                        dialogInfo2.l0.setVisibility(0);
                                    }
                                    if (dialogInfo2.d0.f16551c == 3 && dialogInfo2.f0 != null) {
                                        dialogInfo2.k0.setVisibility(0);
                                        dialogInfo2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.14
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                long j2;
                                                final String str5;
                                                final String str6;
                                                final String str7;
                                                DialogInfo dialogInfo3 = DialogInfo.this;
                                                if (dialogInfo3.k0 != null && dialogInfo3.d0 != null) {
                                                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                                                    final String str8 = null;
                                                    try {
                                                        mediaMetadataRetriever.setDataSource(dialogInfo3.b0, Uri.parse(dialogInfo3.d0.g));
                                                    } catch (Exception unused) {
                                                        MainUtil.M6(mediaMetadataRetriever);
                                                        mediaMetadataRetriever = null;
                                                    }
                                                    if (mediaMetadataRetriever != null) {
                                                        String U6 = MainUtil.U6(mediaMetadataRetriever.extractMetadata(7));
                                                        String U62 = MainUtil.U6(mediaMetadataRetriever.extractMetadata(2));
                                                        String U63 = MainUtil.U6(mediaMetadataRetriever.extractMetadata(1));
                                                        String U64 = MainUtil.U6(mediaMetadataRetriever.extractMetadata(6));
                                                        j2 = MainUtil.I6(mediaMetadataRetriever.extractMetadata(9));
                                                        MainUtil.M6(mediaMetadataRetriever);
                                                        str5 = U6;
                                                        str8 = U62;
                                                        str6 = U63;
                                                        str7 = U64;
                                                    } else {
                                                        j2 = 0;
                                                        str5 = null;
                                                        str6 = null;
                                                        str7 = null;
                                                    }
                                                    final long j3 = j2;
                                                    MyCoverView myCoverView2 = dialogInfo3.k0;
                                                    if (myCoverView2 != null) {
                                                        myCoverView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.14.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MyCoverView myCoverView3;
                                                                DialogInfo dialogInfo4 = DialogInfo.this;
                                                                if (dialogInfo4.f0 != null && (myCoverView3 = dialogInfo4.k0) != null) {
                                                                    myCoverView3.setVisibility(8);
                                                                    String str9 = str5;
                                                                    if (!TextUtils.isEmpty(str9)) {
                                                                        dialogInfo4.r0.setVisibility(0);
                                                                        if (MainApp.K1) {
                                                                            dialogInfo4.s0.setTextColor(-4079167);
                                                                            dialogInfo4.t0.setTextColor(-328966);
                                                                        } else {
                                                                            dialogInfo4.s0.setTextColor(-10395295);
                                                                            dialogInfo4.t0.setTextColor(-16777216);
                                                                        }
                                                                        dialogInfo4.s0.setText(R.string.title);
                                                                        dialogInfo4.t0.setText(str9);
                                                                    }
                                                                    String str10 = str8;
                                                                    if (!TextUtils.isEmpty(str10)) {
                                                                        dialogInfo4.u0.setVisibility(0);
                                                                        if (MainApp.K1) {
                                                                            dialogInfo4.v0.setTextColor(-4079167);
                                                                            dialogInfo4.w0.setTextColor(-328966);
                                                                        } else {
                                                                            dialogInfo4.v0.setTextColor(-10395295);
                                                                            dialogInfo4.w0.setTextColor(-16777216);
                                                                        }
                                                                        dialogInfo4.v0.setText(R.string.artist);
                                                                        dialogInfo4.w0.setText(str10);
                                                                    }
                                                                    String str11 = str6;
                                                                    if (!TextUtils.isEmpty(str11)) {
                                                                        dialogInfo4.x0.setVisibility(0);
                                                                        if (MainApp.K1) {
                                                                            dialogInfo4.y0.setTextColor(-4079167);
                                                                            dialogInfo4.z0.setTextColor(-328966);
                                                                        } else {
                                                                            dialogInfo4.y0.setTextColor(-10395295);
                                                                            dialogInfo4.z0.setTextColor(-16777216);
                                                                        }
                                                                        dialogInfo4.y0.setText(R.string.album);
                                                                        dialogInfo4.z0.setText(str11);
                                                                    }
                                                                    String str12 = str7;
                                                                    if (!TextUtils.isEmpty(str12)) {
                                                                        dialogInfo4.A0.setVisibility(0);
                                                                        if (MainApp.K1) {
                                                                            dialogInfo4.B0.setTextColor(-4079167);
                                                                            dialogInfo4.C0.setTextColor(-328966);
                                                                        } else {
                                                                            dialogInfo4.B0.setTextColor(-10395295);
                                                                            dialogInfo4.C0.setTextColor(-16777216);
                                                                        }
                                                                        dialogInfo4.B0.setText(R.string.genre);
                                                                        dialogInfo4.C0.setText(str12);
                                                                    }
                                                                    long j4 = j3;
                                                                    if (j4 > 0) {
                                                                        dialogInfo4.D0.setVisibility(0);
                                                                        if (MainApp.K1) {
                                                                            dialogInfo4.E0.setTextColor(-4079167);
                                                                            dialogInfo4.F0.setTextColor(-328966);
                                                                        } else {
                                                                            dialogInfo4.E0.setTextColor(-10395295);
                                                                            dialogInfo4.F0.setTextColor(-16777216);
                                                                        }
                                                                        dialogInfo4.E0.setText(R.string.duration);
                                                                        dialogInfo4.F0.setText(MainUtil.r2(j4));
                                                                    }
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            }
                                        });
                                    }
                                    if (z && !TextUtils.isEmpty(dialogInfo2.d0.g)) {
                                        if (i6 != 17 && i6 != 18) {
                                            if (i6 != 19 && i6 != 20 && i6 != 21 && i6 != 22 && i6 != 28 && i6 != 29 && i6 != 30) {
                                                if (i6 == 23) {
                                                    dialogInfo2.p0.setText(R.string.image);
                                                    dialogInfo2.q0.setText(dialogInfo2.d0.h);
                                                } else if (i6 != 25 && i6 != 35) {
                                                    if (i6 == 36) {
                                                        dialogInfo2.p0.setText(R.string.user_agent);
                                                        dialogInfo2.q0.setText(dialogInfo2.d0.g);
                                                    } else {
                                                        dialogInfo2.p0.setText(R.string.domain_name);
                                                        dialogInfo2.q0.setText(dialogInfo2.d0.g);
                                                    }
                                                } else {
                                                    dialogInfo2.p0.setText(R.string.url);
                                                    dialogInfo2.q0.setText(dialogInfo2.d0.g);
                                                }
                                            } else {
                                                dialogInfo2.p0.setText(R.string.domain_url);
                                                dialogInfo2.q0.setText(dialogInfo2.d0.h);
                                            }
                                        } else {
                                            dialogInfo2.p0.setText(R.string.url);
                                            String D03 = MainUtil.D0(dialogInfo2.d0.g);
                                            if (TextUtils.isEmpty(D03)) {
                                                D03 = dialogInfo2.d0.g;
                                            }
                                            if (D03 != null && D03.length() > 200) {
                                                D03 = D03.substring(0, HttpStatusCodes.STATUS_CODE_OK);
                                            }
                                            dialogInfo2.q0.setText(D03);
                                        }
                                        if (MainApp.K1) {
                                            dialogInfo2.p0.setTextColor(-4079167);
                                            dialogInfo2.q0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.p0.setTextColor(-10395295);
                                            dialogInfo2.q0.setTextColor(-16777216);
                                        }
                                        dialogInfo2.o0.setVisibility(0);
                                    }
                                    if (i6 == 32) {
                                        MainItem.ChildItem childItem3 = dialogInfo2.d0;
                                        if (childItem3.f16550a == 8 && !TextUtils.isEmpty(childItem3.q)) {
                                            dialogInfo2.r0.setVisibility(0);
                                            dialogInfo2.s0.setText(R.string.url);
                                            String D04 = MainUtil.D0(dialogInfo2.d0.q);
                                            if (!TextUtils.isEmpty(D04)) {
                                                dialogInfo2.t0.setText(D04);
                                            } else {
                                                dialogInfo2.t0.setText(dialogInfo2.d0.q);
                                            }
                                            if (MainApp.K1) {
                                                dialogInfo2.s0.setTextColor(-4079167);
                                                dialogInfo2.t0.setTextColor(-328966);
                                            } else {
                                                dialogInfo2.s0.setTextColor(-10395295);
                                                dialogInfo2.t0.setTextColor(-16777216);
                                            }
                                        }
                                        MainItem.ChildItem childItem4 = dialogInfo2.d0;
                                        int i7 = childItem4.f16551c;
                                        if (i7 == 1) {
                                            if (!TextUtils.isEmpty(childItem4.g) && (V1 = MainUtil.V1(dialogInfo2.b0, dialogInfo2.d0.g)) != null && V1.f17015a > 0 && V1.b > 0) {
                                                dialogInfo2.u0.setVisibility(0);
                                                dialogInfo2.v0.setText(R.string.resolution);
                                                AppCompatTextView appCompatTextView = dialogInfo2.w0;
                                                StringBuilder sb = new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                sb.append(V1.f17015a);
                                                sb.append(" x ");
                                                com.google.android.gms.internal.mlkit_vision_text_common.a.B(sb, V1.b, appCompatTextView);
                                                dialogInfo2.w0.setTextDirection(3);
                                                if (MainApp.K1) {
                                                    dialogInfo2.v0.setTextColor(-4079167);
                                                    dialogInfo2.w0.setTextColor(-328966);
                                                } else {
                                                    dialogInfo2.v0.setTextColor(-10395295);
                                                    dialogInfo2.w0.setTextColor(-16777216);
                                                }
                                            }
                                        } else if (i7 == 2 && dialogInfo2.f0 != null) {
                                            if (MainApp.K1) {
                                                dialogInfo2.v0.setTextColor(-4079167);
                                                dialogInfo2.w0.setTextColor(-328966);
                                                dialogInfo2.E0.setTextColor(-4079167);
                                                dialogInfo2.F0.setTextColor(-328966);
                                            } else {
                                                dialogInfo2.v0.setTextColor(-10395295);
                                                dialogInfo2.w0.setTextColor(-16777216);
                                                dialogInfo2.E0.setTextColor(-10395295);
                                                dialogInfo2.F0.setTextColor(-16777216);
                                            }
                                            dialogInfo2.u0.setVisibility(0);
                                            dialogInfo2.D0.setVisibility(0);
                                            dialogInfo2.v0.setText(R.string.resolution);
                                            dialogInfo2.w0.setText(".");
                                            dialogInfo2.E0.setText(R.string.duration);
                                            dialogInfo2.F0.setText(".");
                                            dialogInfo2.k0.setVisibility(0);
                                            dialogInfo2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.15
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    long j2;
                                                    final int i8;
                                                    final int i9;
                                                    final int i10;
                                                    DialogInfo dialogInfo3 = DialogInfo.this;
                                                    if (dialogInfo3.k0 != null && dialogInfo3.d0 != null) {
                                                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                                                        try {
                                                            mediaMetadataRetriever.setDataSource(dialogInfo3.b0, Uri.parse(dialogInfo3.d0.g));
                                                        } catch (Exception unused) {
                                                            MainUtil.M6(mediaMetadataRetriever);
                                                            mediaMetadataRetriever = null;
                                                        }
                                                        if (mediaMetadataRetriever != null) {
                                                            int G6 = MainUtil.G6(mediaMetadataRetriever.extractMetadata(18));
                                                            int G62 = MainUtil.G6(mediaMetadataRetriever.extractMetadata(19));
                                                            int G63 = MainUtil.G6(mediaMetadataRetriever.extractMetadata(24));
                                                            j2 = MainUtil.I6(mediaMetadataRetriever.extractMetadata(9));
                                                            MainUtil.M6(mediaMetadataRetriever);
                                                            i8 = G6;
                                                            i9 = G62;
                                                            i10 = G63;
                                                        } else {
                                                            j2 = 0;
                                                            i8 = 0;
                                                            i9 = 0;
                                                            i10 = 0;
                                                        }
                                                        final long j3 = j2;
                                                        MyCoverView myCoverView2 = dialogInfo3.k0;
                                                        if (myCoverView2 != null) {
                                                            myCoverView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.15.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    int i11;
                                                                    DialogInfo dialogInfo4 = DialogInfo.this;
                                                                    MyCoverView myCoverView3 = dialogInfo4.k0;
                                                                    if (myCoverView3 != null) {
                                                                        myCoverView3.setVisibility(8);
                                                                        int i12 = i8;
                                                                        if (i12 > 0 && (i11 = i9) > 0) {
                                                                            if (i10 % 180 == 0) {
                                                                                dialogInfo4.w0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i12 + " x " + i11);
                                                                            } else {
                                                                                dialogInfo4.w0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i11 + " x " + i12);
                                                                            }
                                                                            dialogInfo4.w0.setTextDirection(3);
                                                                        }
                                                                        long j4 = j3;
                                                                        if (j4 > 0) {
                                                                            dialogInfo4.F0.setText(MainUtil.r2(j4));
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                    }
                                    if ((!z || i6 == 25) && !TextUtils.isEmpty(dialogInfo2.d0.G)) {
                                        if (i6 != 14 && i6 != 15 && i6 != 16) {
                                            if (i6 == 24) {
                                                dialogInfo2.H0.setText(R.string.memo_title);
                                            } else if (dialogInfo2.d0.k) {
                                                dialogInfo2.H0.setText(R.string.file);
                                            } else {
                                                dialogInfo2.H0.setText(R.string.size);
                                            }
                                        } else {
                                            dialogInfo2.H0.setText(R.string.bookmark);
                                        }
                                        dialogInfo2.G0.setVisibility(0);
                                        dialogInfo2.I0.setText(dialogInfo2.d0.G);
                                        if (MainApp.K1) {
                                            dialogInfo2.H0.setTextColor(-4079167);
                                            dialogInfo2.I0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.H0.setTextColor(-10395295);
                                            dialogInfo2.I0.setTextColor(-16777216);
                                        }
                                    }
                                    if (dialogInfo2.d0.A > 0) {
                                        dialogInfo2.J0.setVisibility(0);
                                        dialogInfo2.K0.setText(R.string.modified);
                                        dialogInfo2.L0.setText(MainUtil.y1(dialogInfo2.d0.A, null, "yyyy.MM.dd  hh:mm:ss a"));
                                        if (MainApp.K1) {
                                            dialogInfo2.K0.setTextColor(-4079167);
                                            dialogInfo2.L0.setTextColor(-328966);
                                        } else {
                                            dialogInfo2.K0.setTextColor(-10395295);
                                            dialogInfo2.L0.setTextColor(-16777216);
                                        }
                                    }
                                }
                            }
                            MyDialogLinear myDialogLinear = dialogInfo2.f0;
                            if (myDialogLinear == null) {
                                return;
                            }
                            dialogInfo2.g(myDialogLinear, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogInfo.2.1
                                @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                public final void a(View view) {
                                    final DialogInfo dialogInfo3 = DialogInfo.this;
                                    if (dialogInfo3.f0 != null) {
                                        dialogInfo3.show();
                                        Handler handler3 = dialogInfo3.i;
                                        if (handler3 == null) {
                                            return;
                                        }
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.3
                                            /* JADX WARN: Type inference failed for: r2v3, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MainItem.ChildItem childItem5;
                                                final DialogInfo dialogInfo4 = DialogInfo.this;
                                                int i8 = dialogInfo4.c0;
                                                if (i8 == 27) {
                                                    MainItem.ChildItem childItem6 = dialogInfo4.d0;
                                                    MyRoundImage myRoundImage3 = dialogInfo4.h0;
                                                    if (myRoundImage3 != null && childItem6 != null) {
                                                        myRoundImage3.o(childItem6.v, childItem6.w);
                                                        dialogInfo4.h0.setVisibility(0);
                                                        dialogInfo4.g0.setVisibility(0);
                                                        String str5 = childItem6.e;
                                                        if (URLUtil.isNetworkUrl(str5)) {
                                                            Context context2 = dialogInfo4.b0;
                                                            boolean z2 = MainConst.f16452a;
                                                            dialogInfo4.N0 = MainUtil.A1(context2, str5, null);
                                                            dialogInfo4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.10
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    DialogInfo dialogInfo5 = DialogInfo.this;
                                                                    MainActivity mainActivity2 = dialogInfo5.a0;
                                                                    if (mainActivity2 != null) {
                                                                        if (dialogInfo5.O0 == null) {
                                                                            dialogInfo5.O0 = GlideApp.a(mainActivity2);
                                                                        }
                                                                        Handler handler4 = dialogInfo5.i;
                                                                        if (handler4 == null) {
                                                                            return;
                                                                        }
                                                                        handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.10.1
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                DialogInfo dialogInfo6 = DialogInfo.this;
                                                                                GlideRequests glideRequests = dialogInfo6.O0;
                                                                                if (glideRequests == null) {
                                                                                    return;
                                                                                }
                                                                                ((RequestBuilder) glideRequests.t(dialogInfo6.N0).e(DiskCacheStrategy.f2204a)).E(dialogInfo6.h0);
                                                                            }
                                                                        });
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                if (i8 == 23) {
                                                    DialogInfo.B(dialogInfo4);
                                                    return;
                                                }
                                                MyRoundImage myRoundImage4 = dialogInfo4.h0;
                                                if (myRoundImage4 != null && (childItem5 = dialogInfo4.d0) != null && i8 != 19 && i8 != 20 && i8 != 21 && i8 != 22 && i8 != 25 && i8 != 28 && i8 != 29 && i8 != 30) {
                                                    if (i8 == 32) {
                                                        if (childItem5.d != 3) {
                                                            myRoundImage4.o(childItem5.v, childItem5.w);
                                                            dialogInfo4.h0.setVisibility(0);
                                                            dialogInfo4.g0.setVisibility(0);
                                                            return;
                                                        }
                                                    } else if (i8 == 18) {
                                                        int i9 = childItem5.w;
                                                        if (i9 == R.drawable.outline_offline_pin_black_24) {
                                                            myRoundImage4.o(childItem5.v, i9);
                                                            dialogInfo4.h0.setVisibility(0);
                                                            dialogInfo4.g0.setVisibility(0);
                                                            return;
                                                        }
                                                    } else if (i8 == 35) {
                                                        int i10 = childItem5.v;
                                                        if (i10 != 0) {
                                                            myRoundImage4.o(i10, childItem5.w);
                                                            dialogInfo4.h0.setVisibility(0);
                                                            dialogInfo4.g0.setVisibility(0);
                                                            return;
                                                        }
                                                    } else if (i8 == 36) {
                                                        myRoundImage4.p(childItem5.v, childItem5.w, childItem5.h, null);
                                                        dialogInfo4.h0.setVisibility(0);
                                                        dialogInfo4.g0.setVisibility(0);
                                                        return;
                                                    } else if (i8 == 37) {
                                                        return;
                                                    }
                                                    int i11 = childItem5.f16551c;
                                                    if (i11 != 1 && i11 != 2 && i11 != 3 && i11 != 4 && i11 != 5 && i11 != 6 && i11 != 11) {
                                                        myRoundImage4.o(childItem5.v, childItem5.w);
                                                        dialogInfo4.h0.setVisibility(0);
                                                        dialogInfo4.g0.setVisibility(0);
                                                        return;
                                                    }
                                                    ?? obj = new Object();
                                                    if (i11 == 11) {
                                                        obj.f16550a = i8;
                                                        obj.f16551c = i11;
                                                        String str6 = childItem5.z;
                                                        obj.g = str6;
                                                        obj.h = childItem5.h;
                                                        obj.z = str6;
                                                        obj.y = childItem5.y;
                                                        obj.J = childItem5.J;
                                                        obj.v = childItem5.v;
                                                        obj.w = childItem5.w;
                                                        childItem5 = obj;
                                                    }
                                                    if (TextUtils.isEmpty(childItem5.g)) {
                                                        if (dialogInfo4.e0) {
                                                            MyRoundImage myRoundImage5 = dialogInfo4.h0;
                                                            MainItem.ChildItem childItem7 = dialogInfo4.d0;
                                                            myRoundImage5.p(childItem7.v, childItem7.w, childItem7.h, null);
                                                        } else {
                                                            dialogInfo4.h0.o(childItem5.v, childItem5.w);
                                                        }
                                                        dialogInfo4.h0.setVisibility(0);
                                                        dialogInfo4.g0.setVisibility(0);
                                                        return;
                                                    }
                                                    if (childItem5.f16551c != 1) {
                                                        Bitmap b = MainListLoader.b(childItem5);
                                                        if (MainUtil.f6(b)) {
                                                            dialogInfo4.E(b);
                                                            if (childItem5.f16551c == 4) {
                                                                dialogInfo4.h0.setBackColor(-460552);
                                                            }
                                                            dialogInfo4.h0.setImageBitmap(b);
                                                            dialogInfo4.h0.setVisibility(0);
                                                            dialogInfo4.g0.setVisibility(0);
                                                            return;
                                                        }
                                                        dialogInfo4.M0 = new MainListLoader(dialogInfo4.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogInfo.6
                                                            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                            public final void a(MainItem.ChildItem childItem8, View view2) {
                                                                DialogInfo dialogInfo5 = DialogInfo.this;
                                                                MyRoundImage myRoundImage6 = dialogInfo5.h0;
                                                                if (myRoundImage6 != null && dialogInfo5.e0) {
                                                                    myRoundImage6.r(null, true);
                                                                    dialogInfo5.h0.p(childItem8.v, childItem8.w, childItem8.h, null);
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                            public final void b(MainItem.ChildItem childItem8, View view2, Bitmap bitmap) {
                                                                DialogInfo dialogInfo5 = DialogInfo.this;
                                                                if (dialogInfo5.h0 == null) {
                                                                    return;
                                                                }
                                                                dialogInfo5.E(bitmap);
                                                                if (childItem8.f16551c == 4) {
                                                                    dialogInfo5.h0.setBackColor(-460552);
                                                                }
                                                                dialogInfo5.h0.r(null, true);
                                                                dialogInfo5.h0.setImageBitmap(bitmap);
                                                            }
                                                        });
                                                        dialogInfo4.h0.o(childItem5.v, childItem5.w);
                                                        dialogInfo4.h0.setTag(Integer.valueOf(childItem5.J));
                                                        dialogInfo4.h0.setVisibility(0);
                                                        dialogInfo4.g0.setVisibility(0);
                                                        dialogInfo4.M0.e(childItem5, dialogInfo4.h0);
                                                        return;
                                                    }
                                                    dialogInfo4.h0.o(childItem5.v, childItem5.w);
                                                    dialogInfo4.h0.setVisibility(0);
                                                    dialogInfo4.g0.setVisibility(0);
                                                    if (Compress.I(dialogInfo4.d0.h)) {
                                                        dialogInfo4.F();
                                                    } else {
                                                        dialogInfo4.j0.setVisibility(4);
                                                        dialogInfo4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.7
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogInfo dialogInfo5 = DialogInfo.this;
                                                                MainActivity mainActivity2 = dialogInfo5.a0;
                                                                if (mainActivity2 != null) {
                                                                    if (dialogInfo5.O0 == null) {
                                                                        dialogInfo5.O0 = GlideApp.a(mainActivity2);
                                                                    }
                                                                    Handler handler4 = dialogInfo5.i;
                                                                    if (handler4 == null) {
                                                                        return;
                                                                    }
                                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.7.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogInfo dialogInfo6 = DialogInfo.this;
                                                                            GlideRequests glideRequests = dialogInfo6.O0;
                                                                            if (glideRequests == null) {
                                                                                return;
                                                                            }
                                                                            ((RequestBuilder) glideRequests.u(dialogInfo6.d0.g).e(DiskCacheStrategy.f2204a)).I(dialogInfo6.S0).E(dialogInfo6.j0);
                                                                        }
                                                                    });
                                                                }
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
                    });
                }
            }
        });
    }

    public static void B(DialogInfo dialogInfo) {
        MainItem.ChildItem childItem;
        if (dialogInfo.h0 != null && (childItem = dialogInfo.d0) != null) {
            if (TextUtils.isEmpty(childItem.h)) {
                dialogInfo.h0.o(childItem.v, childItem.w);
                dialogInfo.h0.setVisibility(0);
                dialogInfo.g0.setVisibility(0);
                return;
            }
            dialogInfo.h0.o(childItem.v, childItem.w);
            dialogInfo.h0.setVisibility(0);
            dialogInfo.g0.setVisibility(0);
            String str = null;
            if (Compress.I(MainUtil.V3(dialogInfo.d0.h, null, null, true))) {
                dialogInfo.F();
                return;
            }
            dialogInfo.j0.setVisibility(4);
            String str2 = dialogInfo.d0.h;
            if (dialogInfo.P0) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            dialogInfo.N0 = MainUtil.A1(dialogInfo.b0, str2, str);
            dialogInfo.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.9
                @Override // java.lang.Runnable
                public final void run() {
                    DialogInfo dialogInfo2 = DialogInfo.this;
                    MainActivity mainActivity = dialogInfo2.a0;
                    if (mainActivity != null) {
                        if (dialogInfo2.O0 == null) {
                            dialogInfo2.O0 = GlideApp.a(mainActivity);
                        }
                        Handler handler = dialogInfo2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.9.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogInfo dialogInfo3 = DialogInfo.this;
                                GlideRequests glideRequests = dialogInfo3.O0;
                                if (glideRequests == null) {
                                    return;
                                }
                                ((RequestBuilder) glideRequests.t(dialogInfo3.N0).e(DiskCacheStrategy.f2204a)).I(dialogInfo3.T0).E(dialogInfo3.j0);
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogInfo dialogInfo, Drawable drawable) {
        int width;
        if (dialogInfo.j0 != null && dialogInfo.i0 == null && dialogInfo.g0 != null) {
            try {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0 && (width = dialogInfo.g0.getWidth() - (MainApp.E1 * 2)) > 0) {
                    float f = intrinsicWidth / intrinsicHeight;
                    int G = (int) MainUtil.G(dialogInfo.b0, 140.0f);
                    int round = Math.round(G * f);
                    if (round <= width) {
                        width = round;
                    }
                    MyRoundImage myRoundImage = dialogInfo.j0;
                    dialogInfo.j0 = null;
                    MainUtil.V6(myRoundImage);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, G);
                    layoutParams.gravity = 1;
                    int i = MainApp.E1;
                    layoutParams.setMargins(i, i, i, i);
                    dialogInfo.g0.addView(myRoundImage, layoutParams);
                    dialogInfo.i0 = myRoundImage;
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, com.mycompany.app.dialog.DialogInfo$InfoHolder] */
    public static InfoHolder D(Context context, LinearLayout linearLayout) {
        if (context == null) {
            return null;
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        int i = MainApp.F1;
        linearLayout2.setPadding(0, i, 0, i);
        linearLayout2.setVisibility(8);
        linearLayout.addView(linearLayout2, -1, -2);
        AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
        linearLayout2.addView(j, -2, -2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setPadding(0, MainApp.G1, 0, 0);
        appCompatTextView.setTextSize(1, 16.0f);
        linearLayout2.addView(appCompatTextView, -2, -2);
        ?? obj = new Object();
        obj.f13781a = linearLayout2;
        obj.b = j;
        obj.f13782c = appCompatTextView;
        return obj;
    }

    public final void E(Bitmap bitmap) {
        MyRoundImage myRoundImage;
        ViewGroup.LayoutParams layoutParams;
        if (!MainUtil.f6(bitmap) || (myRoundImage = this.h0) == null || (layoutParams = myRoundImage.getLayoutParams()) == null) {
            return;
        }
        boolean z = this.e0;
        int i = this.c0;
        if (!z && (i != 32 || this.d0.f16550a != 8)) {
            int round = Math.round(MainUtil.G(this.b0, 140.0f));
            layoutParams.height = round;
            layoutParams.width = Math.round((bitmap.getWidth() / bitmap.getHeight()) * round);
        } else {
            if (i == 35) {
                this.h0.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else {
                this.h0.setIconSmall(true);
            }
            int i2 = MainApp.f1;
            layoutParams.height = i2;
            layoutParams.width = i2;
        }
    }

    public final void F() {
        String str;
        this.j0.setVisibility(4);
        String str2 = this.d0.h;
        if (this.P0) {
            boolean z = MainConst.f16452a;
            str = null;
        } else {
            str = str2;
        }
        this.N0 = MainUtil.A1(this.b0, str2, str);
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.12
            @Override // java.lang.Runnable
            public final void run() {
                DialogInfo dialogInfo = DialogInfo.this;
                MainActivity mainActivity = dialogInfo.a0;
                if (mainActivity != null) {
                    if (dialogInfo.O0 == null) {
                        dialogInfo.O0 = GlideApp.a(mainActivity);
                    }
                    Handler handler = dialogInfo.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogInfo.12.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogInfo dialogInfo2 = DialogInfo.this;
                            GlideRequests glideRequests = dialogInfo2.O0;
                            if (glideRequests == null) {
                                return;
                            }
                            if (dialogInfo2.N0 != null) {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogInfo2.N0)).I(dialogInfo2.U0).E(dialogInfo2.j0);
                            } else {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogInfo2.d0.g)).I(dialogInfo2.U0).E(dialogInfo2.j0);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        GlideRequests glideRequests = this.O0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.j0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            MyRoundImage myRoundImage2 = this.i0;
            if (myRoundImage2 != null) {
                this.O0.o(myRoundImage2);
            }
            this.O0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyRoundImage myRoundImage3 = this.h0;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.h0 = null;
        }
        MyRoundImage myRoundImage4 = this.i0;
        if (myRoundImage4 != null) {
            myRoundImage4.k();
            this.i0 = null;
        }
        MyRoundImage myRoundImage5 = this.j0;
        if (myRoundImage5 != null) {
            myRoundImage5.k();
            this.j0 = null;
        }
        MyCoverView myCoverView = this.k0;
        if (myCoverView != null) {
            myCoverView.i();
            this.k0 = null;
        }
        MainListLoader mainListLoader = this.M0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.M0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.g0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        this.D0 = null;
        this.E0 = null;
        this.F0 = null;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        this.N0 = null;
        this.Q0 = null;
        this.R0 = null;
        super.dismiss();
    }
}
