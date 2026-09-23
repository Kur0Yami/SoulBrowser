package com.mycompany.app.dialog;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.RequestListener;
import com.frostwire.jlibtorrent.TorrentInfo;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.dialog.DialogDownSize;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.down.DownParseList;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainNative;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingDown;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebSnsInsta;
import com.mycompany.app.web.WebSnsLoad;
import com.mycompany.app.web.WebSnsTask;
import com.mycompany.app.web.WebSnsTwit;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogDownUrl extends MyDialogBottom {
    public static final /* synthetic */ int x2 = 0;
    public MyButtonImage A0;
    public boolean A1;
    public MyButtonImage B0;
    public WebSnsLoad B1;
    public MyButtonImage C0;
    public String C1;
    public MyButtonImage D0;
    public DownParseList D1;
    public MyRoundImage E0;
    public ArrayList E1;
    public MyCoverView F0;
    public List F1;
    public int G0;
    public int G1;
    public AppCompatTextView H0;
    public int H1;
    public MyButtonText I0;
    public ArrayList I1;
    public MyRecyclerView J0;
    public List J1;
    public MainDownAdapter K0;
    public List K1;
    public MyLineLinear L0;
    public MainDownAdapter.DownListItem L1;
    public AppCompatTextView M0;
    public MainDownSvc.M3u8Item M1;
    public MyLineText N0;
    public WebViewActivity.FaceItem N1;
    public RelativeLayout O0;
    public String O1;
    public MyButtonImage P0;
    public DialogDownSize P1;
    public AppCompatTextView Q0;
    public DialogDownLink Q1;
    public MyButtonText R0;
    public ArrayList R1;
    public MyLineText S0;
    public String S1;
    public String T0;
    public MyPopupMenu T1;
    public String U0;
    public String U1;
    public DownUrlListener V0;
    public MainUri.UriItem V1;
    public DownPosterListener W0;
    public boolean W1;
    public String X0;
    public boolean X1;
    public boolean Y0;
    public boolean Y1;
    public String Z0;
    public boolean Z1;
    public MainActivity a0;
    public String a1;
    public boolean a2;
    public Context b0;
    public boolean b1;
    public String b2;
    public final int c0;
    public boolean c1;
    public String c2;
    public MyAdFrame d0;
    public boolean d1;
    public final int d2;
    public MyAdNative e0;
    public boolean e1;
    public final boolean e2;
    public int f0;
    public boolean f1;
    public String f2;
    public boolean g0;
    public String g1;
    public int g2;
    public boolean h0;
    public String h1;
    public boolean h2;
    public MyDialogLinear i0;
    public TorrentInfo i1;
    public boolean i2;
    public NestedScrollView j0;
    public boolean j1;
    public boolean j2;
    public LinearLayout k0;
    public boolean k1;
    public int k2;
    public MyLineFrame l0;
    public boolean l1;
    public int l2;
    public MyRoundImage m0;
    public String m1;
    public MainDownAdapter.DownListItem m2;
    public AppCompatTextView n0;
    public long n1;
    public WebViewActivity.FaceItem n2;
    public MyRoundImage o0;
    public int o1;
    public int o2;
    public MyLineLinear p0;
    public final int p1;
    public int p2;
    public AppCompatTextView q0;
    public int q1;
    public int q2;
    public AppCompatTextView r0;
    public int r1;
    public final RequestListener r2;
    public MyEditText s0;
    public MyDialogLinear s1;
    public final RequestListener s2;
    public int t0;
    public int t1;
    public MainDownAdapter.DownListItem t2;
    public AppCompatTextView u0;
    public ViewGroup u1;
    public MainDownSvc.M3u8Item u2;
    public MyButtonImage v0;
    public WebNestView v1;
    public WebViewActivity.FaceItem v2;
    public MyButtonImage w0;
    public int w1;
    public String w2;
    public MyLineRelative x0;
    public GlideUrl x1;
    public AppCompatTextView y0;
    public GlideRequests y1;
    public AppCompatTextView z0;
    public int z1;

    /* renamed from: com.mycompany.app.dialog.DialogDownUrl$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements View.OnClickListener {
        public AnonymousClass15() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogDownUrl dialogDownUrl = DialogDownUrl.this;
            AppCompatTextView appCompatTextView = dialogDownUrl.M0;
            if (appCompatTextView == null || dialogDownUrl.l1) {
                return;
            }
            dialogDownUrl.l1 = true;
            appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.15.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                    if (dialogDownUrl2.B1 == null) {
                        DialogDownUrl.D(dialogDownUrl2, false);
                        dialogDownUrl2.l1 = false;
                        return;
                    }
                    List list = dialogDownUrl2.F1;
                    if (list != null && !list.isEmpty()) {
                        dialogDownUrl2.T();
                        Handler handler = dialogDownUrl2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.15.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                                int i = DialogDownUrl.x2;
                                dialogDownUrl3.Y(true);
                                DialogDownUrl.this.l1 = false;
                            }
                        });
                        return;
                    }
                    DialogDownUrl.H(dialogDownUrl2);
                    dialogDownUrl2.l1 = false;
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogDownUrl$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass19 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int i = MainApp.l1;
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogDownUrl$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass21 implements Runnable {
        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownUrl dialogDownUrl = DialogDownUrl.this;
            dialogDownUrl.h0 = false;
            MyAdFrame myAdFrame = dialogDownUrl.d0;
            if (myAdFrame != null && dialogDownUrl.e0 == null && !dialogDownUrl.g0) {
                dialogDownUrl.g0 = true;
                myAdFrame.post(new AnonymousClass22());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogDownUrl$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass22 implements Runnable {
        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity;
            final DialogDownUrl dialogDownUrl = DialogDownUrl.this;
            if (dialogDownUrl.d0 != null && dialogDownUrl.e0 == null && MainApp.A(dialogDownUrl.b0) && (mainActivity = dialogDownUrl.a0) != null) {
                dialogDownUrl.e0 = MainApp.d(mainActivity, 0, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.23
                    @Override // com.mycompany.app.main.MainApp.AdLocalListener
                    public final void b(MyAdNative myAdNative) {
                        int i = DialogDownUrl.x2;
                        DialogDownUrl.this.U();
                    }

                    @Override // com.mycompany.app.main.MainApp.AdLocalListener
                    public final void c(MyAdNative myAdNative) {
                        int i = DialogDownUrl.x2;
                        DialogDownUrl.this.U();
                    }

                    @Override // com.mycompany.app.main.MainApp.AdLocalListener
                    public final void e() {
                        DialogDownUrl.this.dismiss();
                    }

                    @Override // com.mycompany.app.main.MainApp.AdLocalListener
                    public final void f(MyAdNative myAdNative) {
                        int i = DialogDownUrl.x2;
                        DialogDownUrl.this.U();
                    }
                });
                dialogDownUrl.U();
                dialogDownUrl.d0.a(dialogDownUrl.e0, true, dialogDownUrl.i);
            }
            dialogDownUrl.g0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogDownUrl$47, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass47 implements Runnable {
        public AnonymousClass47() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownUrl dialogDownUrl = DialogDownUrl.this;
            if (dialogDownUrl.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogDownUrl.b0, e);
                dialogDownUrl.S1 = MainUri.h(dialogDownUrl.b0, e);
                Handler handler = dialogDownUrl.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.47.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                        int i = DialogDownUrl.x2;
                        dialogDownUrl2.d0(null);
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface DownPosterListener {
        String a(String str);
    }

    /* loaded from: classes3.dex */
    public interface DownUrlListener {
        WebNestView a();

        void b(String str, String str2);

        void c(String str, String str2, String str3);

        void d(String str, MainUri.UriItem uriItem, int i, boolean z, String str2, String str3);

        void e(int i, String str);

        void f(String str, String str2, String str3, boolean z);

        void g(String str, String str2, String str3);
    }

    public DialogDownUrl(MainActivity mainActivity, String str, String str2, String str3, String str4, String str5, long j, int i, int i2, List list, int i3, List list2, boolean z, int i4, DownUrlListener downUrlListener) {
        super(mainActivity);
        this.r2 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogDownUrl.44
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                if (dialogDownUrl.x1 != null && !dialogDownUrl.A1 && dialogDownUrl.E0 != null) {
                    dialogDownUrl.A1 = true;
                    Handler handler = dialogDownUrl.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.44.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                                DialogDownUrl.F(dialogDownUrl2, dialogDownUrl2.z1);
                            }
                        });
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                Drawable drawable = (Drawable) obj;
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                if (dialogDownUrl.y1 != null && dialogDownUrl.m0 != null) {
                    DialogDownUrl.G(dialogDownUrl, drawable);
                    if (dialogDownUrl.o0 != null) {
                        dialogDownUrl.m0.setVisibility(8);
                        dialogDownUrl.n0.setVisibility(8);
                        dialogDownUrl.o0.setVisibility(0);
                    }
                }
            }
        };
        this.s2 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogDownUrl.46
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                if (dialogDownUrl.x1 != null && !dialogDownUrl.A1 && dialogDownUrl.E0 != null) {
                    dialogDownUrl.A1 = true;
                    Handler handler = dialogDownUrl.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.46.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                                int i5 = DialogDownUrl.x2;
                                dialogDownUrl2.h0();
                            }
                        });
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                if (dialogDownUrl.y1 != null && dialogDownUrl.m0 != null) {
                    DialogDownUrl.G(dialogDownUrl, pictureDrawable);
                    if (dialogDownUrl.o0 != null) {
                        dialogDownUrl.m0.setVisibility(8);
                        dialogDownUrl.n0.setVisibility(8);
                        dialogDownUrl.o0.setLayerType(1, null);
                        dialogDownUrl.o0.setVisibility(0);
                    }
                }
            }
        };
        if (MainUtil.r5(str)) {
            str5 = "video/*";
            i = 5;
        }
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.T0 = str;
        this.U0 = str2;
        this.m1 = str5;
        this.n1 = j;
        this.c1 = i == 4;
        this.p1 = i2;
        this.F1 = list;
        this.J1 = list2;
        this.V0 = downUrlListener;
        this.c0 = i4;
        if (list != null && !list.isEmpty()) {
            this.G1 = i3;
        }
        this.b2 = str3;
        this.c2 = str4;
        this.d2 = i;
        this.e2 = z;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                try {
                    DialogDownUrl.E(dialogDownUrl);
                } catch (Exception unused) {
                    Handler handler = dialogDownUrl.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownUrl.this.dismiss();
                        }
                    });
                }
            }
        });
    }

    public static String B(DialogDownUrl dialogDownUrl, int i) {
        MainDownSvc.M3u8Item m3u8Item;
        String O0;
        String str = dialogDownUrl.T0;
        int i2 = dialogDownUrl.r1;
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 9) {
            WebViewActivity.FaceItem M = dialogDownUrl.M(i);
            if (M != null) {
                String str2 = M.f20666a;
                dialogDownUrl.N1 = M;
                return str2;
            }
        } else {
            ArrayList arrayList = dialogDownUrl.E1;
            if (arrayList != null && i >= 0 && i < arrayList.size()) {
                m3u8Item = (MainDownSvc.M3u8Item) dialogDownUrl.E1.get(i);
            } else {
                m3u8Item = null;
            }
            if (m3u8Item != null) {
                if (dialogDownUrl.r1 == 3) {
                    O0 = m3u8Item.b;
                } else {
                    O0 = MainUtil.O0(dialogDownUrl.T0);
                }
                dialogDownUrl.M1 = m3u8Item;
                return O0;
            }
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v7, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.view.MyLineLinear, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.widget.RelativeLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.core.widget.NestedScrollView, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.widget.LinearLayout, android.view.View, android.view.ViewGroup] */
    public static void C(DialogDownUrl dialogDownUrl) {
        boolean z;
        MyAdFrame myAdFrame;
        Context context = dialogDownUrl.b0;
        if (context != null) {
            int i = dialogDownUrl.c0;
            if (i == 1) {
                z = !dialogDownUrl.c1;
            } else if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            ?? m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            ?? g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            if (z) {
                ?? frameLayout = new FrameLayout(context);
                frameLayout.setMinimumHeight((int) MainUtil.G(context, 340.0f));
                frameLayout.setVisibility(8);
                g.addView(frameLayout, -1, -2);
                myAdFrame = frameLayout;
            } else {
                myAdFrame = null;
            }
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            g.addView(myLineFrame, -1, -2);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i2 = MainApp.f1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams2);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(16);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setTextSize(1, 16.0f);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, G);
            layoutParams3.setMarginStart(G);
            layoutParams3.setMarginEnd(MainApp.E1);
            myLineFrame.addView(appCompatTextView, layoutParams3);
            ?? relativeLayout = new RelativeLayout(context);
            g.addView(relativeLayout, -1, -2);
            ?? myLineLinear = new MyLineLinear(context);
            myLineLinear.setOrientation(1);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            relativeLayout.addView(myLineLinear, -1, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i3 = MainApp.E1;
            appCompatTextView2.setPadding(i3, 0, i3, 0);
            appCompatTextView2.setGravity(16);
            appCompatTextView2.setTextSize(1, 14.0f);
            appCompatTextView2.setText(R.string.exist_file);
            appCompatTextView2.setVisibility(8);
            myLineLinear.addView(appCompatTextView2, -1, (int) MainUtil.G(context, 32.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            int G2 = (int) MainUtil.G(context, 12.0f);
            frameLayout2.setPaddingRelative(MainApp.E1, G2, (int) MainUtil.G(context, 10.0f), G2);
            myLineLinear.addView(frameLayout2, -1, (int) MainUtil.G(context, 88.0f));
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            frameLayout2.addView(j, -2, -2);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            appCompatTextView3.setTextSize(1, 14.0f);
            appCompatTextView3.setVisibility(8);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams4.gravity = 8388613;
            layoutParams4.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout2.addView(appCompatTextView3, layoutParams4);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams5.gravity = 8388691;
            layoutParams5.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout2.addView(myEditText, layoutParams5);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            myButtonImage.setVisibility(8);
            int i4 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i4, i4);
            layoutParams6.gravity = 8388693;
            layoutParams6.setMarginEnd(MainApp.g1);
            frameLayout2.addView(myButtonImage, layoutParams6);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(8);
            int i5 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i5, i5);
            layoutParams7.gravity = 8388693;
            frameLayout2.addView(myButtonImage2, layoutParams7);
            dialogDownUrl.d0 = myAdFrame;
            dialogDownUrl.i0 = q;
            dialogDownUrl.j0 = m;
            dialogDownUrl.k0 = g;
            dialogDownUrl.l0 = myLineFrame;
            dialogDownUrl.O0 = relativeLayout;
            dialogDownUrl.m0 = myRoundImage;
            dialogDownUrl.n0 = appCompatTextView;
            dialogDownUrl.p0 = myLineLinear;
            dialogDownUrl.q0 = appCompatTextView2;
            dialogDownUrl.r0 = j;
            dialogDownUrl.s0 = myEditText;
            dialogDownUrl.u0 = appCompatTextView3;
            dialogDownUrl.v0 = myButtonImage;
            dialogDownUrl.w0 = myButtonImage2;
            Handler handler = dialogDownUrl.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.3
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    LinearLayout linearLayout;
                    RelativeLayout relativeLayout2;
                    MyLineLinear myLineLinear2;
                    int i6;
                    final DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                    Context context2 = dialogDownUrl2.b0;
                    if (context2 != null && (myDialogLinear = dialogDownUrl2.i0) != null && (linearLayout = dialogDownUrl2.k0) != null && (relativeLayout2 = dialogDownUrl2.O0) != null && (myLineLinear2 = dialogDownUrl2.p0) != null) {
                        int i7 = R.id.down_icon_frame;
                        int i8 = R.id.down_path_title;
                        int i9 = R.id.down_load_view;
                        MyLineRelative myLineRelative = new MyLineRelative(context2);
                        myLineRelative.setPaddingRelative(MainApp.E1, 0, (int) MainUtil.G(context2, 6.0f), 0);
                        myLineRelative.setMinimumHeight(MainApp.h1);
                        myLineRelative.c(MainApp.E1);
                        myLineLinear2.addView(myLineRelative, -1, -2);
                        int G3 = (int) MainUtil.G(context2, 88.0f);
                        LinearLayout linearLayout2 = new LinearLayout(context2);
                        linearLayout2.setId(i7);
                        linearLayout2.setBaselineAligned(false);
                        linearLayout2.setOrientation(0);
                        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, G3);
                        layoutParams8.addRule(15);
                        layoutParams8.addRule(21);
                        layoutParams8.setMarginEnd(MainApp.G1);
                        myLineRelative.addView(linearLayout2, layoutParams8);
                        MyButtonImage myButtonImage3 = new MyButtonImage(context2);
                        ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                        myButtonImage3.setScaleType(scaleType2);
                        myButtonImage3.l(MainApp.j1, true);
                        myButtonImage3.setBgPreRadius(MainApp.k1);
                        myButtonImage3.setVisibility(8);
                        linearLayout2.addView(myButtonImage3, MainApp.g1, G3);
                        MyButtonImage myButtonImage4 = new MyButtonImage(context2);
                        myButtonImage4.setScaleType(scaleType2);
                        myButtonImage4.l(MainApp.j1, true);
                        myButtonImage4.setBgPreRadius(MainApp.k1);
                        myButtonImage4.setVisibility(8);
                        linearLayout2.addView(myButtonImage4, MainApp.g1, G3);
                        MyButtonImage myButtonImage5 = new MyButtonImage(context2);
                        myButtonImage5.setScaleType(scaleType2);
                        myButtonImage5.l(MainApp.j1, true);
                        myButtonImage5.setBgPreRadius(MainApp.k1);
                        myButtonImage5.setVisibility(8);
                        linearLayout2.addView(myButtonImage5, MainApp.g1, G3);
                        MyButtonImage myButtonImage6 = new MyButtonImage(context2);
                        myButtonImage6.setScaleType(scaleType2);
                        myButtonImage6.l(MainApp.j1, true);
                        myButtonImage6.setBgPreRadius(MainApp.k1);
                        myButtonImage6.setVisibility(8);
                        linearLayout2.addView(myButtonImage6, MainApp.g1, G3);
                        RelativeLayout relativeLayout3 = new RelativeLayout(context2);
                        int i10 = MainApp.E1;
                        relativeLayout3.setPadding(0, i10, 0, i10);
                        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams9.addRule(16, i7);
                        layoutParams9.addRule(15);
                        layoutParams9.setMarginEnd((int) MainUtil.G(context2, 10.0f));
                        myLineRelative.addView(relativeLayout3, layoutParams9);
                        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i8, 1, 14.0f);
                        k.setText(R.string.down_location);
                        relativeLayout3.addView(k, -2, -2);
                        AppCompatTextView i11 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i11.setEllipsize(TextUtils.TruncateAt.END);
                        i11.setTextSize(1, 16.0f);
                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i8);
                        h.topMargin = MainApp.F1;
                        relativeLayout3.addView(i11, h);
                        MyRoundImage myRoundImage2 = new MyRoundImage(context2);
                        myRoundImage2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        myRoundImage2.setVisibility(8);
                        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, (int) MainUtil.G(context2, 140.0f));
                        layoutParams10.setMarginStart(MainApp.E1);
                        layoutParams10.setMarginEnd(MainApp.E1);
                        relativeLayout2.addView(myRoundImage2, layoutParams10);
                        if (MainApp.K1) {
                            i6 = -328966;
                        } else {
                            i6 = -13022805;
                        }
                        MyCoverView myCoverView = new MyCoverView(context2, i6, (int) MainUtil.G(context2, 2.0f), MainApp.z1);
                        myCoverView.setId(i9);
                        myCoverView.setBlockTouch(true);
                        myCoverView.setVisibility(8);
                        relativeLayout2.addView(myCoverView, -1, (int) MainUtil.G(context2, 224.0f));
                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(context2, null);
                        int i12 = MainApp.E1;
                        appCompatTextView4.setPadding(i12, i12, i12, i12);
                        appCompatTextView4.setGravity(17);
                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView4.setTextSize(1, 14.0f);
                        appCompatTextView4.setText(R.string.waiting);
                        appCompatTextView4.setVisibility(8);
                        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams11.addRule(8, i9);
                        relativeLayout2.addView(appCompatTextView4, layoutParams11);
                        MyButtonText myButtonText = new MyButtonText(context2);
                        myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                        myButtonText.setGravity(17);
                        myButtonText.setMinHeight(MainApp.f1);
                        myButtonText.setTextSize(1, 14.0f);
                        myButtonText.setText(R.string.report_error);
                        myButtonText.setBgNorFixed(true);
                        myButtonText.setRoundRect(true);
                        myButtonText.setRoundRadius(MainApp.F1);
                        myButtonText.setVisibility(8);
                        int G4 = (int) MainUtil.G(context2, 24.0f);
                        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams12.topMargin = (int) MainUtil.G(context2, 120.0f);
                        layoutParams12.setMarginStart(G4);
                        layoutParams12.setMarginEnd(G4);
                        relativeLayout2.addView(myButtonText, layoutParams12);
                        MyRecyclerView myRecyclerView = new MyRecyclerView(context2);
                        myRecyclerView.u0(true, true);
                        myRecyclerView.setVerticalScrollBarEnabled(true);
                        myRecyclerView.setHorizontalScrollBarEnabled(false);
                        myRecyclerView.setVisibility(8);
                        linearLayout.addView(myRecyclerView, -1, -2);
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
                        MyLineText myLineText = new MyLineText(context2);
                        myLineText.setGravity(17);
                        myLineText.setTextSize(1, 16.0f);
                        myLineText.setText(R.string.fast_down);
                        myLineText.r(context2);
                        myLineText.setVisibility(8);
                        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, -1);
                        layoutParams13.weight = 1.0f;
                        myLineLinear3.addView(myLineText, layoutParams13);
                        dialogDownUrl2.x0 = myLineRelative;
                        dialogDownUrl2.y0 = k;
                        dialogDownUrl2.z0 = i11;
                        dialogDownUrl2.A0 = myButtonImage3;
                        dialogDownUrl2.B0 = myButtonImage4;
                        dialogDownUrl2.C0 = myButtonImage5;
                        dialogDownUrl2.E0 = myRoundImage2;
                        dialogDownUrl2.F0 = myCoverView;
                        dialogDownUrl2.J0 = myRecyclerView;
                        dialogDownUrl2.L0 = myLineLinear3;
                        dialogDownUrl2.M0 = C;
                        dialogDownUrl2.P0 = myButtonImage6;
                        dialogDownUrl2.S0 = myLineText;
                        dialogDownUrl2.Q0 = appCompatTextView4;
                        dialogDownUrl2.R0 = myButtonText;
                        Handler handler2 = dialogDownUrl2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyCoverView myCoverView2;
                                List list;
                                int i13;
                                int i14;
                                List list2;
                                final DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                                int i15 = dialogDownUrl3.p1;
                                String str = dialogDownUrl3.f2;
                                int i16 = dialogDownUrl3.g2;
                                boolean z2 = dialogDownUrl3.h2;
                                boolean z3 = dialogDownUrl3.i2;
                                dialogDownUrl3.f2 = null;
                                if (dialogDownUrl3.i0 != null && dialogDownUrl3.b0 != null) {
                                    int i17 = dialogDownUrl3.r1;
                                    if (i17 == 1 || i17 == 3 || i17 == 5 || i17 == 7 || i17 == 9 || i17 == 13 || i15 != 0 || (((list2 = dialogDownUrl3.F1) != null && !list2.isEmpty()) || dialogDownUrl3.H1 != 0)) {
                                        List list3 = dialogDownUrl3.F1;
                                        if (list3 != null && !list3.isEmpty() && (myCoverView2 = dialogDownUrl3.F0) != null) {
                                            try {
                                                RelativeLayout.LayoutParams layoutParams14 = (RelativeLayout.LayoutParams) myCoverView2.getLayoutParams();
                                                if (layoutParams14 != null) {
                                                    layoutParams14.height = Math.round(MainUtil.G(dialogDownUrl3.b0, 96.0f));
                                                }
                                            } catch (Exception unused) {
                                            }
                                        }
                                        dialogDownUrl3.l0.setLineDn(true);
                                        dialogDownUrl3.p0.setVisibility(8);
                                        dialogDownUrl3.L0.setVisibility(8);
                                        dialogDownUrl3.F0.setVisibility(0);
                                        dialogDownUrl3.s1 = dialogDownUrl3.i0;
                                    }
                                    dialogDownUrl3.A0.setVisibility(0);
                                    dialogDownUrl3.B0.setVisibility(0);
                                    dialogDownUrl3.C0.setVisibility(0);
                                    if (z3) {
                                        MyButtonImage myButtonImage7 = dialogDownUrl3.P0;
                                        dialogDownUrl3.D0 = myButtonImage7;
                                        myButtonImage7.setVisibility(0);
                                    }
                                    if (!dialogDownUrl3.d1 && (i14 = dialogDownUrl3.q1) != 3 && dialogDownUrl3.r1 != 13 && (i14 != 1 || URLUtil.isNetworkUrl(dialogDownUrl3.T0))) {
                                        MyLineText myLineText2 = dialogDownUrl3.S0;
                                        dialogDownUrl3.N0 = myLineText2;
                                        myLineText2.setVisibility(0);
                                    }
                                    if (MainApp.K1) {
                                        dialogDownUrl3.y0.setTextColor(-4079167);
                                        dialogDownUrl3.q0.setBackgroundColor(-12632257);
                                        dialogDownUrl3.q0.setTextColor(-2434342);
                                        dialogDownUrl3.r0.setTextColor(-4079167);
                                        dialogDownUrl3.n0.setTextColor(-328966);
                                        dialogDownUrl3.s0.setTextColor(-328966);
                                        dialogDownUrl3.u0.setTextColor(-328966);
                                        dialogDownUrl3.z0.setTextColor(-328966);
                                        dialogDownUrl3.x0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownUrl3.M0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownUrl3.M0.setTextColor(-328966);
                                        dialogDownUrl3.v0.setImageResource(R.drawable.outline_contact_support_dark_20);
                                        dialogDownUrl3.w0.setImageResource(R.drawable.outline_settings_dark_20);
                                        dialogDownUrl3.v0.setBgPreColor(-12632257);
                                        dialogDownUrl3.w0.setBgPreColor(-12632257);
                                        MyButtonImage myButtonImage8 = dialogDownUrl3.A0;
                                        if (myButtonImage8 != null) {
                                            myButtonImage8.setImageResource(R.drawable.outline_open_with_dark_24);
                                            dialogDownUrl3.A0.setBgNorColor(-11513776);
                                            dialogDownUrl3.A0.setBgPreColor(-12632257);
                                        }
                                        MyButtonImage myButtonImage9 = dialogDownUrl3.B0;
                                        if (myButtonImage9 != null) {
                                            myButtonImage9.setImageResource(R.drawable.outline_share_dark_24);
                                            dialogDownUrl3.B0.setBgNorColor(-11513776);
                                            dialogDownUrl3.B0.setBgPreColor(-12632257);
                                        }
                                        MyButtonImage myButtonImage10 = dialogDownUrl3.C0;
                                        if (myButtonImage10 != null) {
                                            myButtonImage10.setImageResource(R.drawable.outline_info_dark_24);
                                            dialogDownUrl3.C0.setBgNorColor(-11513776);
                                            dialogDownUrl3.C0.setBgPreColor(-12632257);
                                        }
                                        MyButtonImage myButtonImage11 = dialogDownUrl3.D0;
                                        if (myButtonImage11 != null) {
                                            myButtonImage11.setImageResource(R.drawable.baseline_play_arrow_dark_24);
                                            dialogDownUrl3.D0.setBgNorColor(-11513776);
                                            dialogDownUrl3.D0.setBgPreColor(-12632257);
                                        }
                                        MyLineText myLineText3 = dialogDownUrl3.N0;
                                        if (myLineText3 != null) {
                                            myLineText3.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogDownUrl3.N0.setTextColor(-328966);
                                        }
                                    } else {
                                        dialogDownUrl3.y0.setTextColor(-10395295);
                                        dialogDownUrl3.q0.setBackgroundColor(-460552);
                                        dialogDownUrl3.q0.setTextColor(-12303292);
                                        dialogDownUrl3.r0.setTextColor(-10395295);
                                        dialogDownUrl3.n0.setTextColor(-16777216);
                                        dialogDownUrl3.s0.setTextColor(-16777216);
                                        dialogDownUrl3.u0.setTextColor(-16777216);
                                        dialogDownUrl3.z0.setTextColor(-16777216);
                                        dialogDownUrl3.x0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownUrl3.M0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownUrl3.M0.setTextColor(-14784824);
                                        dialogDownUrl3.v0.setImageResource(R.drawable.outline_contact_support_black_20);
                                        dialogDownUrl3.w0.setImageResource(R.drawable.outline_settings_black_20);
                                        dialogDownUrl3.v0.setBgPreColor(-2039584);
                                        dialogDownUrl3.w0.setBgPreColor(-2039584);
                                        MyButtonImage myButtonImage12 = dialogDownUrl3.A0;
                                        if (myButtonImage12 != null) {
                                            myButtonImage12.setImageResource(R.drawable.outline_open_with_black_24);
                                            dialogDownUrl3.A0.setBgNorColor(-460552);
                                            dialogDownUrl3.A0.setBgPreColor(-2039584);
                                        }
                                        MyButtonImage myButtonImage13 = dialogDownUrl3.B0;
                                        if (myButtonImage13 != null) {
                                            myButtonImage13.setImageResource(R.drawable.outline_share_black_24);
                                            dialogDownUrl3.B0.setBgNorColor(-460552);
                                            dialogDownUrl3.B0.setBgPreColor(-2039584);
                                        }
                                        MyButtonImage myButtonImage14 = dialogDownUrl3.C0;
                                        if (myButtonImage14 != null) {
                                            myButtonImage14.setImageResource(R.drawable.outline_info_black_24);
                                            dialogDownUrl3.C0.setBgNorColor(-460552);
                                            dialogDownUrl3.C0.setBgPreColor(-2039584);
                                        }
                                        MyButtonImage myButtonImage15 = dialogDownUrl3.D0;
                                        if (myButtonImage15 != null) {
                                            myButtonImage15.setImageResource(R.drawable.baseline_play_arrow_black_24);
                                            dialogDownUrl3.D0.setBgNorColor(-460552);
                                            dialogDownUrl3.D0.setBgPreColor(-2039584);
                                        }
                                        MyLineText myLineText4 = dialogDownUrl3.N0;
                                        if (myLineText4 != null) {
                                            myLineText4.setBackgroundResource(R.drawable.selector_normal);
                                            dialogDownUrl3.N0.setTextColor(-14784824);
                                        }
                                    }
                                    if (dialogDownUrl3.d0 != null) {
                                        dialogDownUrl3.q = new MyDialogBottom.ShowAdListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.20
                                            @Override // com.mycompany.app.view.MyDialogBottom.ShowAdListener
                                            public final void a() {
                                                MyAdNative myAdNative;
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                if (dialogDownUrl4.H0 != null) {
                                                    MainApp p = MainApp.p(dialogDownUrl4.b0);
                                                    boolean z4 = false;
                                                    if (p != null && (myAdNative = p.N0) != null) {
                                                        z4 = myAdNative.p();
                                                    }
                                                    if (!z4) {
                                                        dialogDownUrl4.h0 = true;
                                                        MyAdFrame myAdFrame2 = dialogDownUrl4.d0;
                                                        if (myAdFrame2 != null && dialogDownUrl4.e0 == null) {
                                                            myAdFrame2.postDelayed(new AnonymousClass21(), 1000L);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                }
                                                MyAdFrame myAdFrame3 = dialogDownUrl4.d0;
                                                if (myAdFrame3 != null && dialogDownUrl4.e0 == null && !dialogDownUrl4.g0) {
                                                    dialogDownUrl4.g0 = true;
                                                    myAdFrame3.post(new AnonymousClass22());
                                                }
                                            }
                                        };
                                        dialogDownUrl3.f0 = Math.round(MainUtil.G(dialogDownUrl3.b0, 340.0f));
                                        MyLineFrame myLineFrame2 = dialogDownUrl3.l0;
                                        if (myLineFrame2 != null) {
                                            myLineFrame2.setOutlineProvider(new ViewOutlineProvider());
                                            dialogDownUrl3.l0.setClipToOutline(true);
                                        }
                                        MyLineFrame myLineFrame3 = dialogDownUrl3.l0;
                                        if (MainApp.K1) {
                                            i13 = -14606047;
                                        } else {
                                            i13 = -1;
                                        }
                                        myLineFrame3.setBackgroundColor(i13);
                                        dialogDownUrl3.d0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.5
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl.this.dismiss();
                                            }
                                        });
                                    }
                                    if (i15 != 0) {
                                        dialogDownUrl3.Z0 = str;
                                    } else {
                                        dialogDownUrl3.d0(str);
                                    }
                                    MainUtil.k7(dialogDownUrl3.s0, false);
                                    dialogDownUrl3.s0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownUrl.6
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            if (!dialogDownUrl4.b1 && editable != null && !MainUtil.q5(dialogDownUrl4.a1, editable.toString())) {
                                                dialogDownUrl4.b1 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i18, int i19, int i20) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i18, int i19, int i20) {
                                        }
                                    });
                                    dialogDownUrl3.s0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.7
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i18, KeyEvent keyEvent) {
                                            DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            MyEditText myEditText2 = dialogDownUrl4.s0;
                                            if (myEditText2 == null || dialogDownUrl4.l1) {
                                                return true;
                                            }
                                            dialogDownUrl4.l1 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.7.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    boolean z4;
                                                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    if (dialogDownUrl5.N0 != null) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    DialogDownUrl.D(dialogDownUrl5, z4);
                                                    DialogDownUrl.this.l1 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    if (PrefRead.F) {
                                        dialogDownUrl3.x0.setNoti(true);
                                    }
                                    dialogDownUrl3.x0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.8
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            if (!dialogDownUrl4.l1) {
                                                dialogDownUrl4.l1 = true;
                                                Handler handler3 = dialogDownUrl4.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.8.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        final DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                        if (PrefRead.F) {
                                                            PrefRead.F = false;
                                                            PrefSet.d(8, dialogDownUrl5.b0, "mNotiPath", false);
                                                            MyLineRelative myLineRelative2 = dialogDownUrl5.x0;
                                                            if (myLineRelative2 != null) {
                                                                myLineRelative2.setNoti(false);
                                                            }
                                                        }
                                                        ArrayList arrayList = dialogDownUrl5.R1;
                                                        if (arrayList != null && !arrayList.isEmpty()) {
                                                            MyLineRelative myLineRelative3 = dialogDownUrl5.x0;
                                                            MyPopupMenu myPopupMenu = dialogDownUrl5.T1;
                                                            if (myPopupMenu == null) {
                                                                if (myPopupMenu != null) {
                                                                    dialogDownUrl5.Y = null;
                                                                    myPopupMenu.a();
                                                                    dialogDownUrl5.T1 = null;
                                                                }
                                                                if (dialogDownUrl5.a0 != null && myLineRelative3 != null && dialogDownUrl5.R1 != null) {
                                                                    ArrayList arrayList2 = new ArrayList();
                                                                    ArrayList arrayList3 = dialogDownUrl5.R1;
                                                                    int size = arrayList3.size();
                                                                    int i18 = 0;
                                                                    int i19 = 0;
                                                                    while (i19 < size) {
                                                                        Object obj = arrayList3.get(i19);
                                                                        i19++;
                                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i18, MainUri.o(dialogDownUrl5.b0, (String) obj)));
                                                                        i18++;
                                                                    }
                                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i18, R.string.direct_select));
                                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogDownUrl5.a0, dialogDownUrl5.i0, myLineRelative3, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.54
                                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                        public final void a() {
                                                                            int i20 = DialogDownUrl.x2;
                                                                            DialogDownUrl dialogDownUrl6 = DialogDownUrl.this;
                                                                            MyPopupMenu myPopupMenu3 = dialogDownUrl6.T1;
                                                                            if (myPopupMenu3 != null) {
                                                                                dialogDownUrl6.Y = null;
                                                                                myPopupMenu3.a();
                                                                                dialogDownUrl6.T1 = null;
                                                                            }
                                                                        }

                                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                        public final boolean b(View view2, int i20) {
                                                                            DialogDownUrl dialogDownUrl6 = DialogDownUrl.this;
                                                                            ArrayList arrayList4 = dialogDownUrl6.R1;
                                                                            if (arrayList4 != null && i20 < arrayList4.size()) {
                                                                                String str2 = (String) dialogDownUrl6.R1.get(i20);
                                                                                if (TextUtils.isEmpty(str2) || str2.equals(PrefPath.r)) {
                                                                                    return true;
                                                                                }
                                                                                PrefPath.r = str2;
                                                                                dialogDownUrl6.s(new AnonymousClass47());
                                                                                return true;
                                                                            }
                                                                            MainUtil.F4(dialogDownUrl6.a0, MainUri.e());
                                                                            return true;
                                                                        }
                                                                    });
                                                                    dialogDownUrl5.T1 = myPopupMenu2;
                                                                    dialogDownUrl5.Y = myPopupMenu2;
                                                                }
                                                            }
                                                        } else {
                                                            MainUtil.F4(dialogDownUrl5.a0, MainUri.e());
                                                        }
                                                        dialogDownUrl5.l1 = false;
                                                    }
                                                });
                                            }
                                        }
                                    });
                                    if (dialogDownUrl3.r1 != 13 && i15 == 0 && (((list = dialogDownUrl3.F1) == null || list.isEmpty()) && dialogDownUrl3.H1 == 0)) {
                                        dialogDownUrl3.g0();
                                    }
                                    dialogDownUrl3.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.9
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownSize dialogDownSize;
                                            final DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            if (dialogDownUrl4.a0 == null || (dialogDownSize = dialogDownUrl4.P1) != null || dialogDownUrl4.Q1 != null) {
                                                return;
                                            }
                                            if (dialogDownSize != null) {
                                                dialogDownSize.dismiss();
                                                dialogDownUrl4.P1 = null;
                                            }
                                            DialogDownSize dialogDownSize2 = new DialogDownSize(dialogDownUrl4.a0, dialogDownUrl4.T0, dialogDownUrl4.U0, dialogDownUrl4.n1, new DialogDownSize.DownSizeListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.50
                                                @Override // com.mycompany.app.dialog.DialogDownSize.DownSizeListener
                                                public final void a(long j2) {
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    dialogDownUrl5.n1 = j2;
                                                    dialogDownUrl5.g0();
                                                }
                                            });
                                            dialogDownUrl4.P1 = dialogDownSize2;
                                            dialogDownSize2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.51
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i18 = DialogDownUrl.x2;
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    DialogDownSize dialogDownSize3 = dialogDownUrl5.P1;
                                                    if (dialogDownSize3 != null) {
                                                        dialogDownSize3.dismiss();
                                                        dialogDownUrl5.P1 = null;
                                                    }
                                                }
                                            });
                                        }
                                    });
                                    dialogDownUrl3.w0.setVisibility(0);
                                    dialogDownUrl3.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.10
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            MainActivity mainActivity = dialogDownUrl4.a0;
                                            if (mainActivity == null) {
                                                return;
                                            }
                                            MainUtil.K7(mainActivity, false);
                                            Intent intent = new Intent(dialogDownUrl4.b0, (Class<?>) SettingDown.class);
                                            intent.putExtra("EXTRA_PATH", dialogDownUrl4.U0);
                                            dialogDownUrl4.a0.startActivity(intent);
                                        }
                                    });
                                    MyButtonImage myButtonImage16 = dialogDownUrl3.A0;
                                    if (myButtonImage16 != null) {
                                        myButtonImage16.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.11
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                if (dialogDownUrl4.V0 != null && !dialogDownUrl4.l1) {
                                                    dialogDownUrl4.l1 = true;
                                                    Handler handler3 = dialogDownUrl4.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.11.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                                            DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                            if (dialogDownUrl5.V0 == null) {
                                                                return;
                                                            }
                                                            String O0 = MainUtil.O0(dialogDownUrl5.T0);
                                                            String Q0 = MainUtil.Q0(DialogDownUrl.this.s0, true);
                                                            DialogDownUrl dialogDownUrl6 = DialogDownUrl.this;
                                                            dialogDownUrl6.V0.c(O0, Q0, dialogDownUrl6.m1);
                                                            DialogDownUrl.this.l1 = false;
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                    MyButtonImage myButtonImage17 = dialogDownUrl3.B0;
                                    if (myButtonImage17 != null) {
                                        myButtonImage17.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.12
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                if (dialogDownUrl4.V0 != null && !dialogDownUrl4.l1) {
                                                    dialogDownUrl4.l1 = true;
                                                    Handler handler3 = dialogDownUrl4.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.12.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                                            DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                            if (dialogDownUrl5.V0 == null) {
                                                                return;
                                                            }
                                                            DialogDownUrl.this.V0.b(MainUtil.O0(dialogDownUrl5.T0), MainUtil.Q0(DialogDownUrl.this.s0, true));
                                                            DialogDownUrl.this.l1 = false;
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                    MyButtonImage myButtonImage18 = dialogDownUrl3.C0;
                                    if (myButtonImage18 != null) {
                                        myButtonImage18.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.13
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                String O0 = MainUtil.O0(dialogDownUrl4.T0);
                                                dialogDownUrl4.t2 = null;
                                                dialogDownUrl4.u2 = null;
                                                dialogDownUrl4.v2 = null;
                                                DialogDownUrl.J(dialogDownUrl4, O0);
                                            }
                                        });
                                    }
                                    MyButtonImage myButtonImage19 = dialogDownUrl3.D0;
                                    if (myButtonImage19 != null) {
                                        myButtonImage19.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.14
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                if (dialogDownUrl4.V0 != null && !dialogDownUrl4.l1) {
                                                    dialogDownUrl4.l1 = true;
                                                    Handler handler3 = dialogDownUrl4.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.14.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                            DownUrlListener downUrlListener = dialogDownUrl5.V0;
                                                            if (downUrlListener == null) {
                                                                return;
                                                            }
                                                            dialogDownUrl5.L1 = null;
                                                            dialogDownUrl5.M1 = null;
                                                            dialogDownUrl5.N1 = null;
                                                            if (dialogDownUrl5.f1) {
                                                                downUrlListener.f(dialogDownUrl5.T0, null, dialogDownUrl5.m1, true);
                                                            } else {
                                                                dialogDownUrl5.V0.f(MainUtil.O0(dialogDownUrl5.T0), MainUtil.Q0(dialogDownUrl5.s0, true), dialogDownUrl5.m1, false);
                                                            }
                                                            dialogDownUrl5.l1 = false;
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                    dialogDownUrl3.M0.setOnClickListener(new AnonymousClass15());
                                    MyLineText myLineText5 = dialogDownUrl3.N0;
                                    if (myLineText5 != null) {
                                        myLineText5.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.16
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                                MyLineText myLineText6 = dialogDownUrl4.N0;
                                                if (myLineText6 == null || dialogDownUrl4.l1) {
                                                    return;
                                                }
                                                dialogDownUrl4.l1 = true;
                                                myLineText6.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.16.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        List list4;
                                                        AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                                                        DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                        if (dialogDownUrl5.B1 != null && (list4 = dialogDownUrl5.F1) != null && !list4.isEmpty()) {
                                                            DialogDownUrl.H(DialogDownUrl.this);
                                                        } else {
                                                            DialogDownUrl.D(DialogDownUrl.this, true);
                                                        }
                                                        DialogDownUrl.this.l1 = false;
                                                    }
                                                });
                                            }
                                        });
                                    }
                                    dialogDownUrl3.S(dialogDownUrl3.p());
                                    int i18 = dialogDownUrl3.t1;
                                    if (i18 == 1) {
                                        dialogDownUrl3.R(0, 0, dialogDownUrl3.T0);
                                    } else if (i18 == 2) {
                                        dialogDownUrl3.R(0, 1, dialogDownUrl3.T0);
                                    }
                                    dialogDownUrl3.n0.setText(str);
                                    dialogDownUrl3.j2 = z2;
                                    dialogDownUrl3.k2 = i16;
                                    dialogDownUrl3.g(dialogDownUrl3.i0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.17
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            final DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                            boolean z4 = dialogDownUrl4.j2;
                                            int i19 = dialogDownUrl4.k2;
                                            if (dialogDownUrl4.i0 != null && dialogDownUrl4.b0 != null) {
                                                dialogDownUrl4.show();
                                                if (dialogDownUrl4.p1 == 0 && dialogDownUrl4.s1 != null) {
                                                    if (dialogDownUrl4.H1 == 1) {
                                                        if (dialogDownUrl4.F0 != null) {
                                                            dialogDownUrl4.K1 = dialogDownUrl4.I1;
                                                            dialogDownUrl4.l0.setLineDn(true);
                                                            dialogDownUrl4.p0.setVisibility(8);
                                                            dialogDownUrl4.L0.setVisibility(8);
                                                            dialogDownUrl4.F0.setVisibility(8);
                                                            Handler handler3 = dialogDownUrl4.i;
                                                            if (handler3 != null) {
                                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.41
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        DialogDownUrl.I(DialogDownUrl.this);
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    } else if (dialogDownUrl4.r1 == 13) {
                                                        MyCoverView myCoverView3 = dialogDownUrl4.F0;
                                                        if (myCoverView3 != null) {
                                                            if (myCoverView3 != null) {
                                                                dialogDownUrl4.f0(true);
                                                                dialogDownUrl4.F0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.33
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        MyCoverView myCoverView4;
                                                                        DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                                        if (dialogDownUrl5.s1 != null && (myCoverView4 = dialogDownUrl5.F0) != null && myCoverView4.getVisibility() == 0) {
                                                                            dialogDownUrl5.H0.setVisibility(0);
                                                                        }
                                                                    }
                                                                }, 5000L);
                                                            }
                                                            dialogDownUrl4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.40
                                                                /* JADX WARN: Multi-variable type inference failed */
                                                                /* JADX WARN: Removed duplicated region for block: B:39:0x00ad  */
                                                                /* JADX WARN: Removed duplicated region for block: B:41:0x00b2  */
                                                                /* JADX WARN: Removed duplicated region for block: B:44:0x00eb A[ORIG_RETURN, RETURN] */
                                                                /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
                                                                /* JADX WARN: Removed duplicated region for block: B:48:0x00b7  */
                                                                /* JADX WARN: Removed duplicated region for block: B:56:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:60:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                                                                /* JADX WARN: Type inference failed for: r2v0, types: [java.net.HttpURLConnection] */
                                                                /* JADX WARN: Type inference failed for: r2v13, types: [java.net.HttpURLConnection, java.net.URLConnection] */
                                                                /* JADX WARN: Type inference failed for: r2v16 */
                                                                /* JADX WARN: Type inference failed for: r2v17 */
                                                                /* JADX WARN: Type inference failed for: r7v14, types: [com.mycompany.app.torrent.TorrentUtil$TorrentItem, java.lang.Object] */
                                                                /* JADX WARN: Type inference failed for: r7v3 */
                                                                /* JADX WARN: Type inference failed for: r7v4 */
                                                                /* JADX WARN: Type inference failed for: r7v5 */
                                                                /* JADX WARN: Type inference failed for: r7v6 */
                                                                /* JADX WARN: Type inference failed for: r7v7 */
                                                                /* JADX WARN: Type inference failed for: r7v8 */
                                                                /* JADX WARN: Type inference failed for: r7v9 */
                                                                @Override // java.lang.Runnable
                                                                /*
                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                    To view partially-correct add '--show-bad-code' argument
                                                                */
                                                                public final void run() {
                                                                    /*
                                                                        Method dump skipped, instructions count: 245
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownUrl.AnonymousClass40.run():void");
                                                                }
                                                            });
                                                        }
                                                    } else if (dialogDownUrl4.F0 != null) {
                                                        if (z4) {
                                                            dialogDownUrl4.Y(false);
                                                        } else {
                                                            List list4 = dialogDownUrl4.J1;
                                                            if (list4 != null) {
                                                                try {
                                                                    Iterator it = list4.iterator();
                                                                    while (it.hasNext()) {
                                                                        if (dialogDownUrl4.T0.equals(((WebViewActivity.FaceItem) it.next()).f20666a)) {
                                                                            dialogDownUrl4.Y(false);
                                                                            break;
                                                                        }
                                                                    }
                                                                } catch (Exception unused2) {
                                                                }
                                                            }
                                                            if (dialogDownUrl4.F0 != null) {
                                                                dialogDownUrl4.f0(true);
                                                                dialogDownUrl4.F0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.33
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        MyCoverView myCoverView4;
                                                                        DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                                        if (dialogDownUrl5.s1 != null && (myCoverView4 = dialogDownUrl5.F0) != null && myCoverView4.getVisibility() == 0) {
                                                                            dialogDownUrl5.H0.setVisibility(0);
                                                                        }
                                                                    }
                                                                }, 5000L);
                                                            }
                                                            dialogDownUrl4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.35
                                                                /* JADX WARN: Multi-variable type inference failed */
                                                                /* JADX WARN: Removed duplicated region for block: B:10:0x0783  */
                                                                /* JADX WARN: Removed duplicated region for block: B:114:0x08c8  */
                                                                /* JADX WARN: Removed duplicated region for block: B:116:0x08cb A[SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:126:? A[RETURN, SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:140:0x0129  */
                                                                /* JADX WARN: Removed duplicated region for block: B:223:0x01e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:437:0x01be  */
                                                                /* JADX WARN: Removed duplicated region for block: B:496:0x0441 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:77:0x08d3  */
                                                                /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
                                                                /* JADX WARN: Removed duplicated region for block: B:82:0x084c  */
                                                                /* JADX WARN: Removed duplicated region for block: B:86:0x0858  */
                                                                /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.Object, java.util.Comparator] */
                                                                /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.Object, java.util.Comparator] */
                                                                /* JADX WARN: Type inference failed for: r10v19, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
                                                                /* JADX WARN: Type inference failed for: r10v26, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
                                                                /* JADX WARN: Type inference failed for: r13v17, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
                                                                /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
                                                                /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.Object, java.util.Comparator] */
                                                                /* JADX WARN: Type inference failed for: r3v41, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
                                                                @Override // java.lang.Runnable
                                                                /*
                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                    To view partially-correct add '--show-bad-code' argument
                                                                */
                                                                public final void run() {
                                                                    /*
                                                                        Method dump skipped, instructions count: 2268
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownUrl.AnonymousClass35.run():void");
                                                                }
                                                            });
                                                        }
                                                    }
                                                }
                                                if (dialogDownUrl4.d0 != null) {
                                                    dialogDownUrl4.m0.o(-460552, i19);
                                                    return;
                                                }
                                                dialogDownUrl4.X0 = dialogDownUrl4.T0;
                                                Handler handler4 = dialogDownUrl4.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.18
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DownPosterListener downPosterListener;
                                                            DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                            int i20 = dialogDownUrl5.k2;
                                                            if (dialogDownUrl5.o1 == 5 && (downPosterListener = dialogDownUrl5.W0) != null) {
                                                                String a2 = downPosterListener.a(dialogDownUrl5.T0);
                                                                if (!TextUtils.isEmpty(a2)) {
                                                                    dialogDownUrl5.X0 = a2;
                                                                    dialogDownUrl5.Y0 = true;
                                                                }
                                                            }
                                                            DialogDownUrl.F(dialogDownUrl5, i20);
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
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void D(com.mycompany.app.dialog.DialogDownUrl r5, boolean r6) {
        /*
            int r0 = r5.p1
            r1 = 1
            r2 = 0
            if (r6 == 0) goto L22
            boolean r3 = r5.j1
            if (r3 == 0) goto Lc
        La:
            r3 = r2
            goto L1f
        Lc:
            java.lang.String r3 = r5.U0
            java.lang.String r3 = com.mycompany.app.main.MainUtil.J1(r3, r1)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L19
            goto La
        L19:
            java.lang.String r4 = "coomer.party"
            boolean r3 = r3.endsWith(r4)
        L1f:
            if (r3 == 0) goto L22
            r6 = r2
        L22:
            if (r0 == 0) goto L62
            java.util.List r3 = r5.K1
            if (r3 == 0) goto L2f
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L2f
            goto L62
        L2f:
            com.mycompany.app.view.MyEditText r6 = r5.s0
            java.lang.String r6 = com.mycompany.app.main.MainUtil.Q0(r6, r1)
            boolean r3 = android.text.TextUtils.isEmpty(r6)
            if (r3 == 0) goto L43
            android.content.Context r5 = r5.b0
            int r6 = com.mycompany.app.soulbrowser.R.string.input_url
            com.mycompany.app.main.MainUtil.e8(r5, r6)
            return
        L43:
            boolean r3 = android.webkit.URLUtil.isNetworkUrl(r6)
            if (r3 != 0) goto L51
            android.content.Context r5 = r5.b0
            int r6 = com.mycompany.app.soulbrowser.R.string.invalid_url
            com.mycompany.app.main.MainUtil.e8(r5, r6)
            return
        L51:
            if (r0 != r1) goto L57
            r5.R(r2, r2, r6)
            return
        L57:
            r3 = 2
            if (r0 != r3) goto L5e
            r5.R(r2, r1, r6)
            return
        L5e:
            r5.R(r2, r3, r6)
            return
        L62:
            android.content.Context r0 = r5.b0
            if (r0 == 0) goto Lc1
            com.mycompany.app.view.MyEditText r0 = r5.s0
            if (r0 != 0) goto L6b
            goto Lc1
        L6b:
            java.lang.String r0 = com.mycompany.app.main.MainUri.e()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L7d
            android.content.Context r5 = r5.b0
            int r6 = com.mycompany.app.soulbrowser.R.string.select_dir
            com.mycompany.app.main.MainUtil.e8(r5, r6)
            return
        L7d:
            com.mycompany.app.view.MyEditText r0 = r5.s0
            java.lang.String r0 = com.mycompany.app.main.MainUtil.Q0(r0, r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L91
            android.content.Context r5 = r5.b0
            int r6 = com.mycompany.app.soulbrowser.R.string.input_name
            com.mycompany.app.main.MainUtil.e8(r5, r6)
            return
        L91:
            byte[] r1 = r0.getBytes()
            if (r1 == 0) goto La4
            int r1 = r1.length
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 <= r2) goto La4
            android.content.Context r5 = r5.b0
            int r6 = com.mycompany.app.soulbrowser.R.string.long_name
            com.mycompany.app.main.MainUtil.e8(r5, r6)
            return
        La4:
            java.lang.String r0 = com.mycompany.app.main.MainUtil.p3(r0)
            com.mycompany.app.main.MainUri.e()
            android.content.Context r1 = r5.b0
            com.mycompany.app.view.MyEditText r2 = r5.s0
            com.mycompany.app.main.MainUtil.X4(r1, r2)
            r5.U1 = r0
            r0 = 0
            r5.V1 = r0
            r5.W1 = r6
            com.mycompany.app.dialog.DialogDownUrl$49 r6 = new com.mycompany.app.dialog.DialogDownUrl$49
            r6.<init>()
            r5.s(r6)
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownUrl.D(com.mycompany.app.dialog.DialogDownUrl, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x026e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x026f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void E(com.mycompany.app.dialog.DialogDownUrl r16) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownUrl.E(com.mycompany.app.dialog.DialogDownUrl):void");
    }

    public static void F(DialogDownUrl dialogDownUrl, int i) {
        MyRoundImage myRoundImage = dialogDownUrl.m0;
        if (myRoundImage != null) {
            dialogDownUrl.z1 = i;
            myRoundImage.o(-460552, i);
            if (!dialogDownUrl.Y0) {
                if (!dialogDownUrl.d1 && !dialogDownUrl.e1 && dialogDownUrl.q1 != 3 && dialogDownUrl.r1 == 0) {
                    if (!dialogDownUrl.c1 && i != R.drawable.outline_public_black_24) {
                        return;
                    }
                } else {
                    return;
                }
            }
            String str = null;
            if (Compress.I(MainUtil.V3(dialogDownUrl.X0, null, null, true))) {
                dialogDownUrl.h0();
                return;
            }
            dialogDownUrl.E0.setVisibility(4);
            if (URLUtil.isNetworkUrl(dialogDownUrl.X0)) {
                String str2 = dialogDownUrl.U0;
                if (dialogDownUrl.A1) {
                    boolean z = MainConst.f16452a;
                } else {
                    str = str2;
                }
                dialogDownUrl.x1 = MainUtil.A1(dialogDownUrl.b0, dialogDownUrl.X0, str);
            } else {
                dialogDownUrl.x1 = null;
            }
            dialogDownUrl.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.43
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                    MainActivity mainActivity = dialogDownUrl2.a0;
                    if (mainActivity != null) {
                        if (dialogDownUrl2.y1 == null) {
                            dialogDownUrl2.y1 = GlideApp.a(mainActivity);
                        }
                        Handler handler = dialogDownUrl2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.43.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                                GlideRequests glideRequests = dialogDownUrl3.y1;
                                if (glideRequests == null) {
                                    return;
                                }
                                GlideUrl glideUrl = dialogDownUrl3.x1;
                                DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                if (glideUrl != null) {
                                    ((RequestBuilder) glideRequests.t(glideUrl).e(diskCacheStrategy)).I(dialogDownUrl3.r2).E(dialogDownUrl3.E0);
                                } else {
                                    ((RequestBuilder) glideRequests.u(dialogDownUrl3.X0).e(diskCacheStrategy)).I(dialogDownUrl3.r2).E(dialogDownUrl3.E0);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void G(DialogDownUrl dialogDownUrl, Drawable drawable) {
        int width;
        if (dialogDownUrl.E0 != null && dialogDownUrl.o0 == null && dialogDownUrl.l0 != null) {
            try {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0 && (width = dialogDownUrl.l0.getWidth() - (MainApp.E1 * 2)) > 0) {
                    float f = intrinsicWidth / intrinsicHeight;
                    int G = (int) MainUtil.G(dialogDownUrl.b0, 140.0f);
                    int round = Math.round(G * f);
                    if (round <= width) {
                        width = round;
                    }
                    MyRoundImage myRoundImage = dialogDownUrl.E0;
                    dialogDownUrl.E0 = null;
                    MainUtil.V6(myRoundImage);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, G);
                    layoutParams.gravity = 1;
                    int i = MainApp.E1;
                    layoutParams.setMargins(i, i, i, i);
                    dialogDownUrl.l0.addView(myRoundImage, layoutParams);
                    dialogDownUrl.o0 = myRoundImage;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void H(DialogDownUrl dialogDownUrl) {
        if (dialogDownUrl.H0 != null && dialogDownUrl.B1 != null) {
            dialogDownUrl.f0(true);
            dialogDownUrl.H0.setVisibility(0);
            dialogDownUrl.L0.setVisibility(8);
            MyLineText myLineText = dialogDownUrl.N0;
            if (myLineText != null) {
                myLineText.setVisibility(0);
            }
            dialogDownUrl.Z(30);
            WebSnsLoad webSnsLoad = dialogDownUrl.B1;
            MyWebSafe myWebSafe = webSnsLoad.e;
            if (myWebSafe != null) {
                webSnsLoad.q = true;
                webSnsLoad.r = false;
                webSnsLoad.s = 0;
                myWebSafe.loadUrl(webSnsLoad.k);
            }
        }
    }

    public static void I(DialogDownUrl dialogDownUrl) {
        int i = dialogDownUrl.l2;
        if (dialogDownUrl.J0 != null) {
            MainDownAdapter.DownListItem L = dialogDownUrl.L(0);
            if (L == null) {
                dialogDownUrl.V();
                return;
            }
            WebViewActivity.FaceItem M = dialogDownUrl.M(i);
            if (M != null) {
                M.f20666a = L.b;
            }
            dialogDownUrl.T();
            dialogDownUrl.m2 = L;
            dialogDownUrl.n2 = M;
            Handler handler = dialogDownUrl.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.26
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                    MainDownAdapter.DownListItem downListItem = dialogDownUrl2.m2;
                    WebViewActivity.FaceItem faceItem = dialogDownUrl2.n2;
                    dialogDownUrl2.m2 = null;
                    dialogDownUrl2.n2 = null;
                    if (downListItem == null) {
                        dialogDownUrl2.V();
                        return;
                    }
                    if (dialogDownUrl2.x0 == null) {
                        return;
                    }
                    dialogDownUrl2.b1 = false;
                    dialogDownUrl2.d0(dialogDownUrl2.Z0);
                    dialogDownUrl2.x0.setVisibility(0);
                    MyLineText myLineText = dialogDownUrl2.N0;
                    if (myLineText != null) {
                        myLineText.setVisibility(0);
                    }
                    if (dialogDownUrl2.K1.size() == 1) {
                        if (faceItem != null) {
                            dialogDownUrl2.O1 = faceItem.b;
                        } else {
                            dialogDownUrl2.O1 = downListItem.i;
                        }
                        if (faceItem != null) {
                            dialogDownUrl2.C1 = DialogDownUrl.O(dialogDownUrl2.T0, downListItem.f16460c);
                        } else if (dialogDownUrl2.w1 == 1 && "JPG".equals(downListItem.d)) {
                            String k1 = MainUtil.k1(MainUtil.Q0(dialogDownUrl2.s0, true));
                            if (!TextUtils.isEmpty(k1)) {
                                dialogDownUrl2.s0.setText(android.support.v4.media.a.v(k1, ".jpg").toString());
                            } else {
                                dialogDownUrl2.s0.setText("Instagram.jpg");
                            }
                        }
                        dialogDownUrl2.T0 = downListItem.b;
                        dialogDownUrl2.e0();
                        return;
                    }
                    dialogDownUrl2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.27
                        @Override // java.lang.Runnable
                        public final void run() {
                            List<String> list;
                            List<String> list2;
                            boolean z;
                            boolean z2;
                            final DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                            DownUrlListener downUrlListener = dialogDownUrl3.V0;
                            if (downUrlListener != null) {
                                WebNestView a2 = downUrlListener.a();
                                boolean z3 = false;
                                if (a2 != null) {
                                    List<String> downloaded = a2.getDownloaded();
                                    if (downloaded != null && !downloaded.isEmpty()) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    list = a2.getDownFail();
                                    if (list != null && !list.isEmpty()) {
                                        z3 = true;
                                    }
                                    z = z3;
                                    z3 = z2;
                                    list2 = downloaded;
                                } else {
                                    list = null;
                                    list2 = null;
                                    z = false;
                                }
                                if (z3 || z) {
                                    for (MainDownAdapter.DownListItem downListItem2 : dialogDownUrl3.K1) {
                                        if (downListItem2 != null) {
                                            String str = downListItem2.b;
                                            if (z && list.contains(str)) {
                                                downListItem2.e = 2;
                                            } else if (z3 && list2.contains(str)) {
                                                downListItem2.e = 1;
                                            }
                                        }
                                    }
                                }
                                Handler handler2 = dialogDownUrl3.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.28
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                        MainActivity mainActivity = dialogDownUrl4.a0;
                                        if (mainActivity != null) {
                                            dialogDownUrl4.K0 = new MainDownAdapter(mainActivity, dialogDownUrl4.K1, 0, dialogDownUrl4.U0, new MainDownAdapter.MainDownListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.29
                                                @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                                                public final void a(int i2) {
                                                    int i3 = DialogDownUrl.x2;
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    MainDownAdapter.DownListItem L2 = dialogDownUrl5.L(i2);
                                                    if (L2 != null) {
                                                        String str2 = L2.b;
                                                        dialogDownUrl5.C1 = str2;
                                                        dialogDownUrl5.T0 = str2;
                                                        dialogDownUrl5.O1 = L2.i;
                                                        dialogDownUrl5.n1 = L2.l;
                                                        dialogDownUrl5.c0(L2.f16460c);
                                                        dialogDownUrl5.e0();
                                                        return;
                                                    }
                                                    dialogDownUrl5.Y(false);
                                                }

                                                @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                                                public final void b(int i2) {
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    if (dialogDownUrl5.V0 != null && !dialogDownUrl5.l1) {
                                                        dialogDownUrl5.l1 = true;
                                                        dialogDownUrl5.o2 = i2;
                                                        Handler handler3 = dialogDownUrl5.i;
                                                        if (handler3 == null) {
                                                            return;
                                                        }
                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.29.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogDownUrl dialogDownUrl6 = DialogDownUrl.this;
                                                                int i3 = dialogDownUrl6.o2;
                                                                dialogDownUrl6.L1 = null;
                                                                dialogDownUrl6.M1 = null;
                                                                dialogDownUrl6.N1 = null;
                                                                String str2 = dialogDownUrl6.T0;
                                                                MainDownAdapter.DownListItem L2 = dialogDownUrl6.L(i3);
                                                                if (L2 != null) {
                                                                    str2 = L2.b;
                                                                    dialogDownUrl6.L1 = L2;
                                                                }
                                                                String Q0 = MainUtil.Q0(dialogDownUrl6.s0, true);
                                                                DownUrlListener downUrlListener2 = dialogDownUrl6.V0;
                                                                if (downUrlListener2 != null) {
                                                                    downUrlListener2.f(str2, Q0, dialogDownUrl6.m1, false);
                                                                }
                                                                dialogDownUrl6.l1 = false;
                                                            }
                                                        });
                                                    }
                                                }

                                                @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                                                public final void c(int i2) {
                                                    DialogDownUrl dialogDownUrl5 = DialogDownUrl.this;
                                                    String str2 = dialogDownUrl5.T0;
                                                    MainDownAdapter.DownListItem L2 = dialogDownUrl5.L(i2);
                                                    if (L2 != null) {
                                                        str2 = L2.b;
                                                    }
                                                    dialogDownUrl5.u2 = null;
                                                    dialogDownUrl5.v2 = null;
                                                    dialogDownUrl5.t2 = L2;
                                                    DialogDownUrl.J(dialogDownUrl5, str2);
                                                }
                                            });
                                            com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogDownUrl4.J0);
                                            dialogDownUrl4.J0.setAdapter(dialogDownUrl4.K0);
                                            dialogDownUrl4.t(dialogDownUrl4.J0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.30
                                                @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                                                public final void a(boolean z4) {
                                                    MyRecyclerView myRecyclerView = DialogDownUrl.this.J0;
                                                    if (myRecyclerView == null) {
                                                        return;
                                                    }
                                                    if (z4) {
                                                        myRecyclerView.w0();
                                                    } else {
                                                        myRecyclerView.r0();
                                                    }
                                                }
                                            });
                                            Handler handler3 = dialogDownUrl4.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.31
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    int i2 = DialogDownUrl.x2;
                                                    DialogDownUrl.this.Y(true);
                                                }
                                            });
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

    public static void J(DialogDownUrl dialogDownUrl, String str) {
        long j;
        if (dialogDownUrl.a0 == null || dialogDownUrl.P1 != null || dialogDownUrl.Q1 != null) {
            return;
        }
        dialogDownUrl.Q();
        MainDownAdapter.DownListItem downListItem = dialogDownUrl.t2;
        if (downListItem != null) {
            j = downListItem.l;
        } else {
            MainDownSvc.M3u8Item m3u8Item = dialogDownUrl.u2;
            if (m3u8Item != null) {
                j = m3u8Item.i;
            } else {
                WebViewActivity.FaceItem faceItem = dialogDownUrl.v2;
                if (faceItem != null) {
                    j = faceItem.f;
                } else {
                    j = dialogDownUrl.n1;
                }
            }
        }
        DialogDownLink dialogDownLink = new DialogDownLink(dialogDownUrl.a0, str, dialogDownUrl.U0, j, new DialogPreview.PreviewListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.52
            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void a(String str2) {
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void b(String str2, long j2, boolean z) {
                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                MainDownAdapter.DownListItem downListItem2 = dialogDownUrl2.t2;
                if (downListItem2 != null) {
                    downListItem2.l = j2;
                    return;
                }
                MainDownSvc.M3u8Item m3u8Item2 = dialogDownUrl2.u2;
                if (m3u8Item2 != null) {
                    m3u8Item2.i = j2;
                    return;
                }
                WebViewActivity.FaceItem faceItem2 = dialogDownUrl2.v2;
                if (faceItem2 != null) {
                    faceItem2.f = j2;
                } else {
                    dialogDownUrl2.n1 = j2;
                    dialogDownUrl2.g0();
                }
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void c(String str2, String str3) {
                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                if (dialogDownUrl2.V0 != null) {
                    dialogDownUrl2.Q();
                    if (!dialogDownUrl2.l1) {
                        dialogDownUrl2.l1 = true;
                        dialogDownUrl2.w2 = str2;
                        Handler handler = dialogDownUrl2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.52.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass52 anonymousClass52 = AnonymousClass52.this;
                                DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                                String str4 = dialogDownUrl3.w2;
                                dialogDownUrl3.w2 = null;
                                if (dialogDownUrl3.V0 == null) {
                                    return;
                                }
                                String Q0 = MainUtil.Q0(dialogDownUrl3.s0, true);
                                DialogDownUrl dialogDownUrl4 = DialogDownUrl.this;
                                dialogDownUrl4.V0.c(str4, Q0, dialogDownUrl4.m1);
                                DialogDownUrl.this.l1 = false;
                            }
                        });
                    }
                }
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void d(String str2) {
                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                if (dialogDownUrl2.V0 != null) {
                    dialogDownUrl2.Q();
                    if (!dialogDownUrl2.l1) {
                        dialogDownUrl2.l1 = true;
                        dialogDownUrl2.w2 = str2;
                        Handler handler = dialogDownUrl2.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.52.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass52 anonymousClass52 = AnonymousClass52.this;
                                DialogDownUrl dialogDownUrl3 = DialogDownUrl.this;
                                String str3 = dialogDownUrl3.w2;
                                dialogDownUrl3.w2 = null;
                                if (dialogDownUrl3.V0 == null) {
                                    return;
                                }
                                DialogDownUrl.this.V0.b(str3, MainUtil.Q0(dialogDownUrl3.s0, true));
                                DialogDownUrl.this.l1 = false;
                            }
                        });
                    }
                }
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void e(String str2, String str3) {
            }
        });
        dialogDownUrl.Q1 = dialogDownLink;
        dialogDownLink.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.53
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = DialogDownUrl.x2;
                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                dialogDownUrl2.Q();
                dialogDownUrl2.t2 = null;
                dialogDownUrl2.u2 = null;
                dialogDownUrl2.v2 = null;
            }
        });
    }

    public static String N(String str) {
        int length;
        int i;
        int lastIndexOf;
        int indexOf;
        if (str != null && (length = str.length()) != 0) {
            try {
                int indexOf2 = str.indexOf(".m3u8");
                if (indexOf2 > 0 && (i = indexOf2 + 5) <= length && (lastIndexOf = str.lastIndexOf("https://", indexOf2 - 1)) >= 0 && lastIndexOf < indexOf2 && (indexOf = str.indexOf(39, i)) >= i && indexOf < length) {
                    return str.substring(lastIndexOf, indexOf);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static String O(String str, String str2) {
        return android.support.v4.media.a.k(str, str2);
    }

    public final void K() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogDownSize dialogDownSize = this.P1;
        if (dialogDownSize != null) {
            dialogDownSize.dismiss();
            this.P1 = null;
        }
        Q();
        MyPopupMenu myPopupMenu = this.T1;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.T1 = null;
        }
        T();
        DownParseList downParseList = this.D1;
        if (downParseList != null) {
            this.D1 = null;
            downParseList.f15571a = false;
        }
        GlideRequests glideRequests = this.y1;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.E0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            MyRoundImage myRoundImage2 = this.o0;
            if (myRoundImage2 != null) {
                this.y1.o(myRoundImage2);
            }
            this.y1 = null;
        }
        MyDialogLinear myDialogLinear = this.i0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.i0 = null;
        }
        MyLineFrame myLineFrame = this.l0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.l0 = null;
        }
        MyRoundImage myRoundImage3 = this.m0;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.m0 = null;
        }
        MyRoundImage myRoundImage4 = this.o0;
        if (myRoundImage4 != null) {
            myRoundImage4.k();
            this.o0 = null;
        }
        MyLineLinear myLineLinear = this.p0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.p0 = null;
        }
        MyEditText myEditText = this.s0;
        if (myEditText != null) {
            myEditText.c();
            this.s0 = null;
        }
        MyLineRelative myLineRelative = this.x0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.x0 = null;
        }
        MyButtonImage myButtonImage = this.v0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.v0 = null;
        }
        MyButtonImage myButtonImage2 = this.w0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.w0 = null;
        }
        MyButtonImage myButtonImage3 = this.A0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.A0 = null;
        }
        MyButtonImage myButtonImage4 = this.B0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.B0 = null;
        }
        MyButtonImage myButtonImage5 = this.C0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.C0 = null;
        }
        MyButtonImage myButtonImage6 = this.D0;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.D0 = null;
        }
        MyRoundImage myRoundImage5 = this.E0;
        if (myRoundImage5 != null) {
            myRoundImage5.k();
            this.E0 = null;
        }
        MyCoverView myCoverView = this.F0;
        if (myCoverView != null) {
            myCoverView.i();
            this.F0 = null;
        }
        MyButtonText myButtonText = this.I0;
        if (myButtonText != null) {
            myButtonText.t();
            this.I0 = null;
        }
        MyRecyclerView myRecyclerView = this.J0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.J0 = null;
        }
        MainDownAdapter mainDownAdapter = this.K0;
        if (mainDownAdapter != null) {
            mainDownAdapter.x();
            this.K0 = null;
        }
        MyLineLinear myLineLinear2 = this.L0;
        if (myLineLinear2 != null) {
            myLineLinear2.a();
            this.L0 = null;
        }
        MyLineText myLineText = this.N0;
        if (myLineText != null) {
            myLineText.u();
            this.N0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.j0 = null;
        this.k0 = null;
        this.n0 = null;
        this.q0 = null;
        this.r0 = null;
        this.u0 = null;
        this.z0 = null;
        this.H0 = null;
        this.M0 = null;
        this.T0 = null;
        this.U0 = null;
        this.V0 = null;
        this.W0 = null;
        this.X0 = null;
        this.Z0 = null;
        this.a1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.m1 = null;
        this.s1 = null;
        this.u1 = null;
        this.v1 = null;
        this.x1 = null;
        this.C1 = null;
        this.E1 = null;
        this.F1 = null;
        this.I1 = null;
        this.J1 = null;
        this.K1 = null;
        this.R1 = null;
        this.S1 = null;
        this.O1 = null;
        super.dismiss();
    }

    public final MainDownAdapter.DownListItem L(int i) {
        List list = this.K1;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainDownAdapter.DownListItem) this.K1.get(i);
        }
        return null;
    }

    public final WebViewActivity.FaceItem M(int i) {
        List list = this.F1;
        if (list != null && i >= 0 && i < list.size()) {
            return (WebViewActivity.FaceItem) this.F1.get(i);
        }
        return null;
    }

    public final boolean P(int i, int i2, Intent intent) {
        if (i == 19) {
            if (i2 == -1 && intent != null) {
                Uri data = intent.getData();
                if (data == null) {
                    MainUtil.e8(this.b0, R.string.invalid_path);
                    return true;
                }
                String a2 = MainUri.a(data);
                if (TextUtils.isEmpty(a2)) {
                    MainUtil.e8(this.b0, R.string.invalid_path);
                    return true;
                }
                if (!TextUtils.isEmpty(a2) && !a2.equals(PrefPath.r)) {
                    PrefPath.r = a2;
                    s(new AnonymousClass47());
                }
                MainUtil.z7(this.b0, data);
            }
            return true;
        }
        return false;
    }

    public final void Q() {
        DialogDownLink dialogDownLink = this.Q1;
        if (dialogDownLink != null) {
            dialogDownLink.dismiss();
            this.Q1 = null;
        }
    }

    public final void R(int i, int i2, String str) {
        MyLineFrame myLineFrame;
        if (this.B1 == null && this.u1 != null && (myLineFrame = this.l0) != null) {
            if (!MainApp.R1) {
                V();
                return;
            }
            myLineFrame.setLineDn(true);
            this.p0.setVisibility(8);
            this.L0.setVisibility(8);
            Z(30);
            f0(true);
            this.H0.setVisibility(0);
            this.B1 = new WebSnsLoad(this.a0, this.u1, this.v1, str, i, i2, this.w1, new WebSnsLoad.SnsLoadListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.24
                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void a(int i3, List list) {
                    final DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                    if (dialogDownUrl.B1 != null) {
                        dialogDownUrl.K1 = list;
                        dialogDownUrl.l2 = i3;
                        Handler handler = dialogDownUrl.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.25
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogDownUrl.I(DialogDownUrl.this);
                            }
                        });
                    }
                }

                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void b() {
                    AppCompatTextView appCompatTextView;
                    DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                    if (dialogDownUrl.p1 == 2 && (appCompatTextView = dialogDownUrl.H0) != null && dialogDownUrl.F0 != null && appCompatTextView.getVisibility() == 0 && dialogDownUrl.F0.getVisibility() == 0) {
                        dialogDownUrl.H0.setText(R.string.insta_down);
                    }
                }

                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void onError(int i3) {
                    final DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                    WebSnsLoad webSnsLoad = dialogDownUrl.B1;
                    if (webSnsLoad == null) {
                        return;
                    }
                    dialogDownUrl.p2 = i3;
                    MyWebSafe myWebSafe = webSnsLoad.e;
                    if (myWebSafe != null) {
                        webSnsLoad.q = false;
                        webSnsLoad.r = false;
                        webSnsLoad.s = 0;
                        webSnsLoad.f = false;
                        myWebSafe.stopLoading();
                    }
                    dialogDownUrl.F0.setVisibility(8);
                    dialogDownUrl.f0(false);
                    dialogDownUrl.H0.setText("Error code : 1");
                    dialogDownUrl.H0.setVisibility(0);
                    dialogDownUrl.L0.setVisibility(0);
                    List list = dialogDownUrl.F1;
                    if (list != null && !list.isEmpty()) {
                        MyLineText myLineText = dialogDownUrl.N0;
                        if (myLineText != null) {
                            myLineText.setVisibility(0);
                            dialogDownUrl.N0.setText(R.string.retry);
                        }
                        dialogDownUrl.M0.setText(R.string.list);
                    } else {
                        MyLineText myLineText2 = dialogDownUrl.N0;
                        if (myLineText2 != null) {
                            myLineText2.setVisibility(8);
                        }
                        dialogDownUrl.M0.setText(R.string.retry);
                    }
                    if (dialogDownUrl.I0 == null) {
                        MyButtonText myButtonText = dialogDownUrl.R0;
                        dialogDownUrl.I0 = myButtonText;
                        if (MainApp.K1) {
                            myButtonText.setTextColor(-328966);
                            dialogDownUrl.I0.u(-16777216, -14211289);
                        } else {
                            myButtonText.setTextColor(-16777216);
                            dialogDownUrl.I0.u(-460552, 553648128);
                        }
                        dialogDownUrl.I0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.34
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                                if (dialogDownUrl2.a0 != null) {
                                    StringBuilder sb = new StringBuilder();
                                    int i4 = dialogDownUrl2.p2;
                                    if (i4 == 0) {
                                        sb.append("X download error");
                                    } else if (i4 == 1) {
                                        sb.append("Instagram download error");
                                    } else {
                                        sb.append("Facebook download error");
                                    }
                                    sb.append("\n\nError code : 1\n\n");
                                    sb.append(MainUtil.H0(dialogDownUrl2.b0, dialogDownUrl2.U0));
                                    try {
                                        Intent intent = new Intent("android.intent.action.SENDTO");
                                        intent.setData(Uri.parse("mailto:"));
                                        intent.putExtra("android.intent.extra.EMAIL", new String[]{"soulbrowser.com@outlook.com"});
                                        intent.putExtra("android.intent.extra.SUBJECT", dialogDownUrl2.b0.getString(R.string.download));
                                        intent.putExtra("android.intent.extra.TEXT", sb.toString());
                                        dialogDownUrl2.a0.startActivity(intent);
                                    } catch (ActivityNotFoundException unused) {
                                        MainUtil.e8(dialogDownUrl2.b0, R.string.apps_none);
                                    } catch (Exception unused2) {
                                        MainUtil.e8(dialogDownUrl2.b0, R.string.apps_none);
                                    }
                                }
                            }
                        });
                    }
                    dialogDownUrl.I0.setVisibility(0);
                }
            });
        }
    }

    public final void S(boolean z) {
        if (this.i0 != null && this.l0 != null) {
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
                    MyDialogLinear myDialogLinear = this.i0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear.d(i, 0);
                    this.d0.setVisibility(8);
                }
                this.Z1 = true;
                i0();
                return;
            }
            MyAdNative myAdNative2 = this.e0;
            if (myAdNative2 != null && myAdNative2.p()) {
                MyAdNative myAdNative3 = this.e0;
                if (myAdNative3 != null) {
                    myAdNative3.setVisibility(0);
                }
                if (this.d0 != null) {
                    MyDialogLinear myDialogLinear2 = this.i0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear2.d(i, 0);
                }
                this.Z1 = true;
                i0();
            } else {
                MyAdNative myAdNative4 = this.e0;
                if (myAdNative4 != null) {
                    myAdNative4.setVisibility(8);
                }
                if (this.d0 != null) {
                    MyDialogLinear myDialogLinear3 = this.i0;
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myDialogLinear3.d(i, this.f0);
                }
                this.Z1 = false;
                i0();
            }
            MyAdFrame myAdFrame = this.d0;
            if (myAdFrame != null) {
                myAdFrame.setVisibility(0);
            }
        }
    }

    public final void T() {
        WebSnsLoad webSnsLoad = this.B1;
        if (webSnsLoad != null) {
            WebSnsTask webSnsTask = webSnsLoad.t;
            if (webSnsTask != null) {
                WebSnsTask.LoadTask loadTask = webSnsTask.f19488c;
                if (loadTask != null) {
                    loadTask.f12839c = true;
                }
                webSnsTask.f19488c = null;
                webSnsTask.b = null;
                webSnsLoad.t = null;
            }
            WebSnsTwit webSnsTwit = webSnsLoad.u;
            if (webSnsTwit != null) {
                webSnsTwit.b();
                webSnsLoad.u = null;
            }
            WebSnsInsta webSnsInsta = webSnsLoad.v;
            if (webSnsInsta != null) {
                webSnsInsta.d();
                webSnsLoad.v = null;
            }
            MyWebSafe myWebSafe = webSnsLoad.e;
            if (myWebSafe != null) {
                if (webSnsLoad.f) {
                    webSnsLoad.f = false;
                    myWebSafe.stopLoading();
                }
                MainUtil.P6(webSnsLoad.e);
                webSnsLoad.e = null;
            }
            webSnsLoad.f19457a = null;
            webSnsLoad.b = null;
            webSnsLoad.f19458c = null;
            webSnsLoad.d = null;
            webSnsLoad.i = null;
            webSnsLoad.k = null;
            webSnsLoad.l = null;
            webSnsLoad.m = null;
            webSnsLoad.n = null;
            if (PrefPdf.t) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            this.B1 = null;
        }
    }

    public final void U() {
        MyAdNative myAdNative;
        if (this.d0 != null && (myAdNative = this.e0) != null) {
            if (!myAdNative.p()) {
                S(p());
                return;
            }
            this.d0.setOnClickListener(null);
            this.e0.setDarkMode(true);
            S(p());
        }
    }

    public final void V() {
        MyCoverView myCoverView = this.F0;
        if (myCoverView == null) {
            return;
        }
        myCoverView.setVisibility(8);
        f0(false);
        this.H0.setVisibility(0);
        this.L0.setVisibility(0);
        List list = this.F1;
        if (list != null && !list.isEmpty()) {
            MyLineText myLineText = this.N0;
            if (myLineText != null) {
                myLineText.setVisibility(0);
                this.N0.setText(R.string.retry);
            }
            this.M0.setText(R.string.list);
            return;
        }
        MyLineText myLineText2 = this.N0;
        if (myLineText2 != null) {
            myLineText2.setVisibility(8);
        }
        this.M0.setText(R.string.retry);
    }

    public final void W(int i, int i2, String str) {
        if (this.s1 != null && this.J0 != null) {
            if (!MainApp.R1) {
                V();
                return;
            }
            this.k0.setVisibility(0);
            this.J0.setVisibility(8);
            StringBuilder sb = new StringBuilder();
            boolean z = MainApp.R1;
            String str2 = null;
            if (z && z) {
                if (TextUtils.isEmpty(MainNative.B)) {
                    MainNative.B = MainUtil.getFaceUrl();
                }
                str2 = MainNative.B;
            }
            R(i, i2, android.support.v4.media.a.p(sb, str2, str));
        }
    }

    public final void X(int i) {
        MainDownSvc.M3u8Item m3u8Item;
        int i2 = this.r1;
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 9) {
            WebViewActivity.FaceItem M = M(i);
            if (M != null) {
                String str = M.f20667c;
                if ("HD".equals(str)) {
                    if (!TextUtils.isEmpty(M.f20666a) && !M.f20666a.startsWith("http")) {
                        W(i, 3, M.f20666a);
                        return;
                    }
                } else if ("SD".equals(str) && !TextUtils.isEmpty(M.f20666a) && !M.f20666a.startsWith("http")) {
                    W(i, 4, M.f20666a);
                    return;
                }
                this.C1 = O(this.T0, str);
                this.T0 = M.f20666a;
                this.O1 = M.b;
                this.n1 = M.f;
                c0(str);
            }
        } else {
            ArrayList arrayList = this.E1;
            if (arrayList != null && i >= 0 && i < arrayList.size()) {
                m3u8Item = (MainDownSvc.M3u8Item) this.E1.get(i);
            } else {
                m3u8Item = null;
            }
            a0(m3u8Item);
        }
        Y(false);
    }

    public final void Y(boolean z) {
        MyRecyclerView myRecyclerView;
        int i;
        if (this.s1 != null && (myRecyclerView = this.J0) != null) {
            if (z) {
                int i2 = this.p1;
                if (i2 == 1 || i2 == 2) {
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myRecyclerView.setBackgroundColor(i);
                }
                this.a2 = true;
                i0();
                this.l0.setLineDn(true);
                this.O0.setVisibility(8);
                this.p0.setVisibility(8);
                this.L0.setVisibility(8);
                this.J0.setVisibility(0);
            } else {
                if (this.G1 != 0) {
                    if (this.V0 != null) {
                        this.V0.e(this.G1, MainUtil.O0(this.T0));
                        return;
                    }
                    return;
                }
                this.a2 = false;
                i0();
                this.l0.setLineDn(false);
                this.O0.setVisibility(0);
                this.p0.setVisibility(0);
                this.L0.setVisibility(0);
                this.J0.setVisibility(8);
                MyLineText myLineText = this.N0;
                if (myLineText != null) {
                    myLineText.setVisibility(0);
                    this.N0.setText(R.string.fast_down);
                }
                this.M0.setText(R.string.download);
                g0();
                if (this.r1 == 13) {
                    if (!TextUtils.isEmpty(this.g1)) {
                        this.s0.setText(this.g1);
                    }
                    if (!TextUtils.isEmpty(this.h1)) {
                        this.j1 = true;
                        if (this.N0 == null) {
                            this.N0 = this.S0;
                        }
                        if (MainApp.K1) {
                            this.N0.setBackgroundResource(R.drawable.selector_normal_dark);
                            this.N0.setTextColor(-328966);
                        } else {
                            this.N0.setBackgroundResource(R.drawable.selector_normal);
                            this.N0.setTextColor(-14784824);
                        }
                        this.N0.setVisibility(0);
                        this.N0.setText(R.string.download);
                        this.M0.setText(R.string.link);
                        this.N0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownUrl.48
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                                MyLineText myLineText2 = dialogDownUrl.N0;
                                if (myLineText2 == null || dialogDownUrl.l1) {
                                    return;
                                }
                                dialogDownUrl.l1 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.48.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass48 anonymousClass48 = AnonymousClass48.this;
                                        DialogDownUrl.D(DialogDownUrl.this, true);
                                        DialogDownUrl.this.l1 = false;
                                    }
                                });
                            }
                        });
                    }
                }
            }
            this.F0.setVisibility(8);
            AppCompatTextView appCompatTextView = this.H0;
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            MyButtonText myButtonText = this.I0;
            if (myButtonText != null) {
                myButtonText.setVisibility(8);
            }
            if (this.h0) {
                this.h0 = false;
                MyAdFrame myAdFrame = this.d0;
                if (myAdFrame != null && this.e0 == null) {
                    myAdFrame.postDelayed(new AnonymousClass21(), 200L);
                }
            }
        }
    }

    public final void Z(int i) {
        int i2;
        MyWebSafe myWebSafe;
        if (this.F0 != null && this.s1 != null) {
            if (i < 0) {
                i = 0;
            }
            this.G0 = i;
            if (i == 0) {
                WebSnsLoad webSnsLoad = this.B1;
                if (webSnsLoad != null && (myWebSafe = webSnsLoad.e) != null) {
                    webSnsLoad.q = false;
                    webSnsLoad.r = false;
                    webSnsLoad.s = 0;
                    webSnsLoad.f = false;
                    myWebSafe.stopLoading();
                }
                V();
                return;
            }
            MyCoverView myCoverView = this.F0;
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + this.G0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -16777216;
            }
            myCoverView.k(i2, MainApp.g1, str);
            this.F0.setVisibility(0);
            this.s1.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.32
                @Override // java.lang.Runnable
                public final void run() {
                    MyCoverView myCoverView2;
                    DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                    if (dialogDownUrl.s1 != null && (myCoverView2 = dialogDownUrl.F0) != null && myCoverView2.getVisibility() == 0) {
                        dialogDownUrl.Z(dialogDownUrl.G0 - 1);
                    }
                }
            }, 1400L);
        }
    }

    public final void a0(MainDownSvc.M3u8Item m3u8Item) {
        if (m3u8Item == null) {
            return;
        }
        this.C1 = O(this.T0, m3u8Item.d);
        int i = this.r1;
        String str = "isNull";
        String str2 = null;
        if (i == 1) {
            String str3 = this.T0;
            String str4 = m3u8Item.b;
            String str5 = m3u8Item.f16530c;
            if (!TextUtils.isEmpty(str4)) {
                String M0 = MainUtil.M0(str3);
                if (!TextUtils.isEmpty(M0)) {
                    if (!TextUtils.isEmpty(str5)) {
                        str = str5;
                    }
                    StringBuilder u = androidx.work.impl.workers.a.u("m3u8:", M0, "<,>", str4, "<,>");
                    u.append(str);
                    str2 = u.toString();
                }
            }
            this.T0 = str2;
        } else if (i == 3) {
            String str6 = m3u8Item.b;
            String str7 = m3u8Item.f16530c;
            if (!TextUtils.isEmpty(str6)) {
                if (!TextUtils.isEmpty(str7)) {
                    str = str7;
                }
                str2 = android.support.v4.media.a.m("reddit:", str6, "<,>", str);
            }
            this.T0 = str2;
        } else if (i == 5) {
            String str8 = this.T0;
            String str9 = m3u8Item.g;
            String str10 = m3u8Item.b;
            String str11 = m3u8Item.h;
            String str12 = m3u8Item.f16530c;
            if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                String M02 = MainUtil.M0(str8);
                if (!TextUtils.isEmpty(M02)) {
                    if (TextUtils.isEmpty(str11)) {
                        str11 = "isNull";
                    }
                    if (!TextUtils.isEmpty(str12)) {
                        str = str12;
                    }
                    StringBuilder u2 = androidx.work.impl.workers.a.u("kakao2:", M02, "<,>", str9, "<,>");
                    android.support.v4.media.a.z(u2, str10, "<,>", str11, "<,>");
                    u2.append(str);
                    str2 = u2.toString();
                }
            }
            this.T0 = str2;
        } else if (i == 7) {
            String str13 = m3u8Item.f16529a;
            String str14 = m3u8Item.g;
            String str15 = m3u8Item.b;
            String str16 = m3u8Item.h;
            String str17 = m3u8Item.f16530c;
            if (!TextUtils.isEmpty(str14) && !TextUtils.isEmpty(str15)) {
                String M03 = MainUtil.M0(str13);
                if (!TextUtils.isEmpty(M03)) {
                    if (TextUtils.isEmpty(str16)) {
                        str16 = "isNull";
                    }
                    if (!TextUtils.isEmpty(str17)) {
                        str = str17;
                    }
                    StringBuilder u3 = androidx.work.impl.workers.a.u("dzen2:", M03, "<,>", str14, "<,>");
                    android.support.v4.media.a.z(u3, str15, "<,>", str16, "<,>");
                    u3.append(str);
                    str2 = u3.toString();
                }
            }
            this.T0 = str2;
        } else if (i == 9) {
            String str18 = this.T0;
            String str19 = m3u8Item.f;
            String str20 = m3u8Item.b;
            if (!TextUtils.isEmpty(str19) && !TextUtils.isEmpty(str20)) {
                String M04 = MainUtil.M0(str18);
                if (!TextUtils.isEmpty(M04)) {
                    StringBuilder u4 = androidx.work.impl.workers.a.u("vimeo2:", M04, "<,>", str19, "<,>");
                    u4.append(str20);
                    str2 = u4.toString();
                }
            }
            this.T0 = str2;
        }
        this.n1 = m3u8Item.i;
        c0(m3u8Item.d);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.down.DownParseList, java.lang.Object] */
    public final void b0() {
        ?? obj = new Object();
        this.D1 = obj;
        try {
            this.E1 = obj.c(this.b0, this.T0, this.U0);
            if (obj.d) {
                this.T0 = MainUtil.M0(this.T0);
            }
            if (obj.e) {
                boolean z = MainConst.f16452a;
                this.U0 = null;
            }
            obj.f15571a = false;
        } catch (Exception unused) {
        }
        this.D1 = null;
    }

    public final void c0(String str) {
        if (!TextUtils.isEmpty(this.a1)) {
            int lastIndexOf = this.a1.lastIndexOf(46);
            if (lastIndexOf > 0 && lastIndexOf < this.a1.length()) {
                d0(this.a1.substring(0, lastIndexOf) + "_" + str + this.a1.substring(lastIndexOf));
                return;
            }
            return;
        }
        d0(str + ".mp4");
    }

    public final void d0(String str) {
        String str2;
        int i;
        if (this.s0 != null) {
            if (!TextUtils.isEmpty(str)) {
                this.Z0 = str;
            }
            if (this.b1) {
                str2 = MainUtil.Q0(this.s0, true);
            } else {
                str2 = this.Z0;
            }
            String p3 = MainUtil.p3(str2);
            if (TextUtils.isEmpty(MainUri.e())) {
                this.a1 = p3;
                this.s0.setText(p3);
                this.z0.setText(R.string.not_selected);
                this.z0.setTextColor(-769226);
                if (this.d0 == null) {
                    this.p0.setDrawLine(true);
                    this.q0.setVisibility(8);
                    return;
                }
                return;
            }
            this.z0.setText(this.S1);
            AppCompatTextView appCompatTextView = this.z0;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            appCompatTextView.setTextColor(i);
            if (TextUtils.isEmpty(p3)) {
                this.a1 = p3;
                this.s0.setText(p3);
                if (this.d0 == null) {
                    this.p0.setDrawLine(true);
                    this.q0.setVisibility(8);
                    return;
                }
                return;
            }
            MainUri.e();
            if (this.d0 == null) {
                this.p0.setDrawLine(true);
                this.q0.setVisibility(8);
            }
            this.a1 = p3;
            this.s0.setText(p3);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.Y1) {
            this.Y1 = true;
            if (this.d0 == null) {
                K();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.42
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                    MyAdFrame myAdFrame = dialogDownUrl.d0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogDownUrl.d0 = null;
                        MainApp.f(dialogDownUrl.b0, 0);
                    }
                    dialogDownUrl.e0 = null;
                    Handler handler2 = dialogDownUrl.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.42.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                            int i = DialogDownUrl.x2;
                            dialogDownUrl2.K();
                        }
                    });
                }
            });
        }
    }

    public final void e0() {
        if (this.G1 != 0) {
            if (this.V0 != null) {
                this.V0.e(this.G1, MainUtil.O0(this.T0));
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty(PrefAlbum.H) && !TextUtils.isEmpty(PrefAlbum.I)) {
            if (this.V0 == null) {
                return;
            }
            this.V0.g(MainUtil.O0(this.T0), MainUtil.Q0(this.s0, true), this.m1);
            return;
        }
        Y(false);
    }

    public final void f0(boolean z) {
        if (this.s1 != null) {
            if (this.H0 == null) {
                AppCompatTextView appCompatTextView = this.Q0;
                this.H0 = appCompatTextView;
                if (MainApp.K1) {
                    appCompatTextView.setTextColor(-328966);
                } else {
                    appCompatTextView.setTextColor(-16777216);
                }
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.H0.getLayoutParams();
            if (z) {
                if (layoutParams != null) {
                    layoutParams.height = -2;
                    this.H0.setLayoutParams(layoutParams);
                }
                this.H0.setText(R.string.waiting);
            } else {
                if (layoutParams != null) {
                    layoutParams.height = Math.round(MainUtil.G(this.b0, 176.0f));
                    this.H0.setLayoutParams(layoutParams);
                }
                this.H0.setText(R.string.no_down_video);
                if (this.h0) {
                    this.h0 = false;
                    MyAdFrame myAdFrame = this.d0;
                    if (myAdFrame != null && this.e0 == null) {
                        myAdFrame.postDelayed(new AnonymousClass21(), 200L);
                    }
                }
            }
            MyButtonText myButtonText = this.I0;
            if (myButtonText != null) {
                myButtonText.setVisibility(8);
            }
        }
    }

    public final void g0() {
        int i;
        int i2;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        AppCompatTextView appCompatTextView = this.u0;
        if (appCompatTextView != null) {
            long j = this.n1;
            if (j > 0) {
                appCompatTextView.setText(MainUtil.h1(j));
                this.u0.setVisibility(0);
                this.v0.setVisibility(8);
                i = MainApp.g1;
                i2 = MainApp.F1;
            } else {
                appCompatTextView.setVisibility(8);
                this.v0.setVisibility(0);
                int i3 = MainApp.g1;
                i = i3 + i3;
                i2 = MainApp.F1;
            }
            int i4 = i + i2;
            if (this.t0 != i4 && (marginLayoutParams = (ViewGroup.MarginLayoutParams) this.s0.getLayoutParams()) != null) {
                this.t0 = i4;
                marginLayoutParams.setMarginEnd(i4);
                this.s0.setLayoutParams(marginLayoutParams);
            }
        }
    }

    public final void h0() {
        this.E0.setVisibility(4);
        String str = null;
        if (URLUtil.isNetworkUrl(this.X0)) {
            String str2 = this.U0;
            if (this.A1) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            this.x1 = MainUtil.A1(this.b0, this.X0, str);
        } else {
            this.x1 = null;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.45
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownUrl dialogDownUrl = DialogDownUrl.this;
                MainActivity mainActivity = dialogDownUrl.a0;
                if (mainActivity != null) {
                    if (dialogDownUrl.y1 == null) {
                        dialogDownUrl.y1 = GlideApp.a(mainActivity);
                    }
                    Handler handler = dialogDownUrl.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownUrl.45.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownUrl dialogDownUrl2 = DialogDownUrl.this;
                            GlideRequests glideRequests = dialogDownUrl2.y1;
                            if (glideRequests == null) {
                                return;
                            }
                            if (dialogDownUrl2.x1 != null) {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogDownUrl2.x1)).I(dialogDownUrl2.s2).E(dialogDownUrl2.E0);
                            } else {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogDownUrl2.X0)).I(dialogDownUrl2.s2).E(dialogDownUrl2.E0);
                            }
                        }
                    });
                }
            }
        });
    }

    public final void i0() {
        MyLineFrame myLineFrame = this.l0;
        if (myLineFrame == null) {
            return;
        }
        if (!this.Z1 && !this.a2) {
            myLineFrame.setVisibility(0);
        } else {
            myLineFrame.setVisibility(8);
        }
    }
}
