package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
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
import android.webkit.URLUtil;
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
import com.bumptech.glide.request.RequestListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressUtil;
import com.mycompany.app.db.DbAlbum;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.down.DownSaveZip;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageCropper;
import com.mycompany.app.main.list.MainListAlbum;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebViewActivity;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.progress.ProgressMonitor;

/* loaded from: classes3.dex */
public class DialogCreateAlbum extends MyDialogBottom {
    public static final /* synthetic */ int I1 = 0;
    public AppCompatTextView A0;
    public boolean A1;
    public AppCompatTextView B0;
    public boolean B1;
    public MyLineText C0;
    public GlideRequests C1;
    public LinearLayout D0;
    public String D1;
    public AppCompatTextView E0;
    public final RequestListener E1;
    public AppCompatTextView F0;
    public String F1;
    public AppCompatTextView G0;
    public final RequestListener G1;
    public AppCompatTextView H0;
    public final CompressUtil.CompressListener H1;
    public AppCompatTextView I0;
    public AppCompatTextView J0;
    public AppCompatTextView K0;
    public LinearLayout L0;
    public AppCompatTextView M0;
    public AppCompatTextView N0;
    public AppCompatTextView O0;
    public MyProgressBar P0;
    public AppCompatTextView Q0;
    public AppCompatTextView R0;
    public AppCompatTextView S0;
    public MyLineText T0;
    public String U0;
    public String V0;
    public String W0;
    public String X0;
    public boolean Y0;
    public String Z0;
    public MainActivity a0;
    public String a1;
    public Context b0;
    public List b1;
    public DialogSetFull.DialogApplyListener c0;
    public boolean c1;
    public String d0;
    public ArrayList d1;
    public MyDialogLinear e0;
    public int e1;
    public MyLineFrame f0;
    public int f1;
    public MyRoundImage g0;
    public int g1;
    public MyLineView h0;
    public boolean h1;
    public View i0;
    public ZipTask i1;
    public AppCompatTextView j0;
    public ArrayList j1;
    public NestedScrollView k0;
    public boolean k1;
    public AppCompatTextView l0;
    public int l1;
    public AppCompatTextView m0;
    public int m1;
    public AppCompatTextView n0;
    public int n1;
    public AppCompatTextView o0;
    public ProgressMonitor o1;
    public MyEditText p0;
    public MyPopupMenu p1;
    public FrameLayout q0;
    public ArrayList q1;
    public AppCompatTextView r0;
    public String r1;
    public AppCompatTextView s0;
    public MyPopupMenu s1;
    public NestedScrollView t0;
    public Uri t1;
    public LinearLayout u0;
    public String u1;
    public AppCompatTextView v0;
    public String v1;
    public AppCompatTextView w0;
    public String w1;
    public AppCompatTextView x0;
    public String x1;
    public AppCompatTextView y0;
    public String y1;
    public AppCompatTextView z0;
    public String z1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogCreateAlbum$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
            if (dialogCreateAlbum.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogCreateAlbum.b0, e);
                dialogCreateAlbum.r1 = MainUri.h(dialogCreateAlbum.b0, e);
                Handler handler = dialogCreateAlbum.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.16.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                        int i = DialogCreateAlbum.I1;
                        dialogCreateAlbum2.J(null);
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogCreateAlbum$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 implements Runnable {
        public AnonymousClass18() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            NestedScrollView nestedScrollView = DialogCreateAlbum.this.t0;
            if (nestedScrollView != null) {
                nestedScrollView.e(130);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogCreateAlbum$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass19 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f13122c;

        public AnonymousClass19(boolean z) {
            this.f13122c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
            if (dialogCreateAlbum.O0 != null) {
                ArrayList arrayList = dialogCreateAlbum.d1;
                if (arrayList != null && !arrayList.isEmpty()) {
                    dialogCreateAlbum.e1 = dialogCreateAlbum.d1.size();
                } else {
                    List list = dialogCreateAlbum.b1;
                    if (list != null && !list.isEmpty()) {
                        dialogCreateAlbum.e1 = dialogCreateAlbum.b1.size();
                    }
                }
                dialogCreateAlbum.c1 = true;
                dialogCreateAlbum.f1 = 0;
                dialogCreateAlbum.g1 = 0;
                dialogCreateAlbum.j1 = null;
                dialogCreateAlbum.H();
                dialogCreateAlbum.setCanceledOnTouchOutside(false);
                dialogCreateAlbum.t0.setVisibility(0);
                dialogCreateAlbum.L0.setVisibility(0);
                dialogCreateAlbum.M0.setText(R.string.verify_image);
                dialogCreateAlbum.O0.setText(MainUtil.h3(0, dialogCreateAlbum.e1));
                dialogCreateAlbum.P0.setMax(dialogCreateAlbum.e1);
                dialogCreateAlbum.P0.setProgress(0.0f);
                dialogCreateAlbum.R0.setText("0");
                AppCompatTextView appCompatTextView = dialogCreateAlbum.R0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                appCompatTextView.setTextColor(i);
            }
            ArrayList arrayList2 = dialogCreateAlbum.d1;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                DialogCreateAlbum.C(dialogCreateAlbum, dialogCreateAlbum.d1, this.f13122c);
            } else {
                dialogCreateAlbum.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.19.1
                    /* JADX WARN: Type inference failed for: r10v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass19 anonymousClass19 = AnonymousClass19.this;
                        DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                        if (dialogCreateAlbum2.b1 != null) {
                            ArrayList arrayList3 = new ArrayList();
                            int y0 = MainUtil.y0(dialogCreateAlbum2.b1.size());
                            String m0 = MainUtil.m0(dialogCreateAlbum2.b0);
                            dialogCreateAlbum2.y1 = m0;
                            if (!TextUtils.isEmpty(m0)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(dialogCreateAlbum2.y1);
                                sb.append("/");
                                String p = android.support.v4.media.a.p(sb, dialogCreateAlbum2.V0, "_");
                                String x0 = MainUtil.x0(y0);
                                Iterator it = dialogCreateAlbum2.b1.iterator();
                                int i2 = 1;
                                while (true) {
                                    if (it.hasNext()) {
                                        String str = (String) it.next();
                                        if (dialogCreateAlbum2.b1 == null) {
                                            break;
                                        }
                                        StringBuilder t = android.support.v4.media.a.t(p);
                                        if (!TextUtils.isEmpty(x0)) {
                                            t.append(String.format(Locale.US, x0, Integer.valueOf(i2)));
                                        } else {
                                            t.append(i2);
                                        }
                                        String U3 = MainUtil.U3(str, false);
                                        if (!TextUtils.isEmpty(U3)) {
                                            t.append(".");
                                            t.append(U3);
                                        }
                                        i2++;
                                        ?? obj = new Object();
                                        obj.q = str;
                                        obj.r = dialogCreateAlbum2.d0;
                                        obj.g = t.toString();
                                        arrayList3.add(obj);
                                    } else {
                                        dialogCreateAlbum2.d1 = arrayList3;
                                        new File(dialogCreateAlbum2.y1).mkdir();
                                        break;
                                    }
                                }
                            }
                        }
                        ArrayList arrayList4 = dialogCreateAlbum2.d1;
                        if (arrayList4 != null && !arrayList4.isEmpty()) {
                            DialogCreateAlbum.C(dialogCreateAlbum2, dialogCreateAlbum2.d1, anonymousClass19.f13122c);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogCreateAlbum$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass22 implements Runnable {
        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
            ZipTask zipTask = new ZipTask(dialogCreateAlbum);
            dialogCreateAlbum.i1 = zipTask;
            zipTask.b(dialogCreateAlbum.b0);
        }
    }

    /* loaded from: classes3.dex */
    public static class ZipTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public boolean g;

        public ZipTask(DialogCreateAlbum dialogCreateAlbum) {
            int i;
            WeakReference weakReference = new WeakReference(dialogCreateAlbum);
            this.e = weakReference;
            DialogCreateAlbum dialogCreateAlbum2 = (DialogCreateAlbum) weakReference.get();
            if (dialogCreateAlbum2 != null) {
                ArrayList arrayList = dialogCreateAlbum2.j1;
                this.f = arrayList;
                if (dialogCreateAlbum2.u0 != null && arrayList != null && !arrayList.isEmpty()) {
                    dialogCreateAlbum2.l1 = dialogCreateAlbum2.j1.size();
                    if (!TextUtils.isEmpty(dialogCreateAlbum2.x1)) {
                        dialogCreateAlbum2.l1--;
                        dialogCreateAlbum2.k1 = true;
                    } else {
                        dialogCreateAlbum2.k1 = false;
                    }
                    dialogCreateAlbum2.h1 = false;
                    dialogCreateAlbum2.m1 = 0;
                    dialogCreateAlbum2.n1 = 0;
                    dialogCreateAlbum2.o1 = null;
                    dialogCreateAlbum2.d1 = null;
                    dialogCreateAlbum2.H();
                    dialogCreateAlbum2.setCanceledOnTouchOutside(false);
                    dialogCreateAlbum2.t0.setVisibility(0);
                    dialogCreateAlbum2.u0.setVisibility(0);
                    dialogCreateAlbum2.L0.setVisibility(0);
                    NestedScrollView nestedScrollView = dialogCreateAlbum2.t0;
                    if (nestedScrollView != null) {
                        nestedScrollView.post(new AnonymousClass18());
                    }
                    dialogCreateAlbum2.M0.setText(R.string.create_album);
                    dialogCreateAlbum2.O0.setText(MainUtil.h3(0, dialogCreateAlbum2.l1));
                    dialogCreateAlbum2.P0.setMax(dialogCreateAlbum2.l1);
                    dialogCreateAlbum2.P0.setProgress(0.0f);
                    dialogCreateAlbum2.R0.setText("0");
                    AppCompatTextView appCompatTextView = dialogCreateAlbum2.R0;
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -16777216;
                    }
                    appCompatTextView.setTextColor(i);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogCreateAlbum dialogCreateAlbum;
            List<String> list;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogCreateAlbum = (DialogCreateAlbum) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                if (!TextUtils.isEmpty(dialogCreateAlbum.W0)) {
                    MainUtil.A(dialogCreateAlbum.b0, dialogCreateAlbum.W0);
                    DbAlbum.d(dialogCreateAlbum.b0, dialogCreateAlbum.W0);
                }
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    if (!this.f12839c && str != null) {
                        arrayList.add(new File(str));
                    } else {
                        return;
                    }
                }
                String str2 = dialogCreateAlbum.y1 + "/" + System.currentTimeMillis();
                MainUtil.A(dialogCreateAlbum.b0, str2);
                CompressUtil.CompressListener compressListener = dialogCreateAlbum.H1;
                boolean z = false;
                try {
                    ZipFile zipFile = new ZipFile(str2);
                    zipFile.h(MainConst.J);
                    dialogCreateAlbum.o1 = zipFile.e;
                    ZipParameters zipParameters = new ZipParameters();
                    zipParameters.l = compressListener;
                    zipParameters.f22013c = 8;
                    zipParameters.f = 5;
                    zipParameters.g = true;
                    zipParameters.h = 0;
                    zipParameters.i = "debug_logger_tag".toCharArray();
                    zipFile.a(arrayList, zipParameters);
                } catch (ZipException unused) {
                }
                if (compressListener != null) {
                    ProgressMonitor progressMonitor = dialogCreateAlbum.o1;
                    if (progressMonitor != null && progressMonitor.d != 2) {
                        z = true;
                    }
                    ((AnonymousClass23) compressListener).a(null, z);
                }
                dialogCreateAlbum.W0 = null;
                MainUri.UriItem c2 = MainUri.c(dialogCreateAlbum.b0, MainUri.e(), null, android.support.v4.media.a.p(new StringBuilder(), dialogCreateAlbum.V0, ".album"));
                if (c2 != null) {
                    String str3 = c2.e;
                    dialogCreateAlbum.W0 = str3;
                    boolean w6 = MainUtil.w6(dialogCreateAlbum.b0, str2, str3);
                    this.g = w6;
                    if (w6) {
                        DbAlbum.b(dialogCreateAlbum.b0, c2);
                        dialogCreateAlbum.z1 = c2.e;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogCreateAlbum dialogCreateAlbum;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogCreateAlbum = (DialogCreateAlbum) weakReference.get()) == null) {
                return;
            }
            dialogCreateAlbum.i1 = null;
            dialogCreateAlbum.o1 = null;
            dialogCreateAlbum.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogCreateAlbum dialogCreateAlbum;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogCreateAlbum = (DialogCreateAlbum) weakReference.get()) != null) {
                if (!this.g) {
                    dialogCreateAlbum.n1 = dialogCreateAlbum.l1;
                }
                dialogCreateAlbum.i1 = null;
                dialogCreateAlbum.o1 = null;
                LinearLayout linearLayout = dialogCreateAlbum.D0;
                if (linearLayout == null || linearLayout.getVisibility() == 0) {
                    return;
                }
                dialogCreateAlbum.H();
                dialogCreateAlbum.t0.setVisibility(0);
                dialogCreateAlbum.u0.setVisibility(0);
                dialogCreateAlbum.D0.setVisibility(0);
                NestedScrollView nestedScrollView = dialogCreateAlbum.t0;
                if (nestedScrollView != null) {
                    nestedScrollView.post(new AnonymousClass18());
                }
                int i2 = dialogCreateAlbum.l1 - dialogCreateAlbum.n1;
                if (i2 < 0) {
                    i2 = 0;
                }
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogCreateAlbum.l1, dialogCreateAlbum.G0);
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogCreateAlbum.n1, dialogCreateAlbum.I0);
                dialogCreateAlbum.K0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i2);
                int i3 = -14784824;
                if (dialogCreateAlbum.n1 > 0) {
                    if (i2 == 0) {
                        dialogCreateAlbum.I0.setTextColor(-769226);
                        dialogCreateAlbum.S0.setActivated(false);
                        dialogCreateAlbum.S0.setText(R.string.retry);
                        AppCompatTextView appCompatTextView = dialogCreateAlbum.S0;
                        if (MainApp.K1) {
                            i3 = -328966;
                        }
                        appCompatTextView.setTextColor(i3);
                        return;
                    }
                    dialogCreateAlbum.h1 = true;
                    dialogCreateAlbum.I0.setTextColor(-769226);
                    dialogCreateAlbum.S0.setActivated(false);
                    dialogCreateAlbum.S0.setText(R.string.list);
                    AppCompatTextView appCompatTextView2 = dialogCreateAlbum.S0;
                    if (MainApp.K1) {
                        i3 = -328966;
                    }
                    appCompatTextView2.setTextColor(i3);
                    dialogCreateAlbum.T0.setVisibility(0);
                    return;
                }
                dialogCreateAlbum.h1 = true;
                AppCompatTextView appCompatTextView3 = dialogCreateAlbum.I0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                appCompatTextView3.setTextColor(i);
                dialogCreateAlbum.S0.setActivated(false);
                dialogCreateAlbum.S0.setText(R.string.list);
                AppCompatTextView appCompatTextView4 = dialogCreateAlbum.S0;
                if (MainApp.K1) {
                    i3 = -328966;
                }
                appCompatTextView4.setTextColor(i3);
            }
        }
    }

    public DialogCreateAlbum(WebViewActivity webViewActivity, String str, List list, String str2, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(webViewActivity);
        this.E1 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.13
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage = DialogCreateAlbum.this.g0;
                if (myRoundImage == null) {
                    return true;
                }
                myRoundImage.o(-460552, R.drawable.outline_image_black_24);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final /* bridge */ /* synthetic */ void d(Object obj) {
            }
        };
        this.G1 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.15
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
                MyRoundImage myRoundImage = dialogCreateAlbum.g0;
                if (myRoundImage == null) {
                    return true;
                }
                myRoundImage.setLayerType(0, null);
                dialogCreateAlbum.g0.o(-460552, R.drawable.outline_image_black_24);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                MyRoundImage myRoundImage = DialogCreateAlbum.this.g0;
                if (myRoundImage != null) {
                    myRoundImage.setLayerType(1, null);
                }
            }
        };
        this.H1 = new AnonymousClass23();
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.d0 = str2;
        this.Z0 = str;
        this.b1 = list;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
                if (dialogCreateAlbum.b0 != null) {
                    dialogCreateAlbum.a1 = MainUtil.l3(184, dialogCreateAlbum.Z0, "Album");
                    ArrayList n = MainUri.n(dialogCreateAlbum.b0);
                    dialogCreateAlbum.q1 = n;
                    PrefPath.r = MainUri.m(dialogCreateAlbum.b0, PrefPath.r, n);
                    dialogCreateAlbum.r1 = MainUri.h(dialogCreateAlbum.b0, MainUri.e());
                    Handler handler = dialogCreateAlbum.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogCreateAlbum.B(DialogCreateAlbum.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogCreateAlbum dialogCreateAlbum) {
        View view;
        Context context = dialogCreateAlbum.b0;
        if (context != null) {
            int i = R.id.item_title_view;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            myLineFrame.setLineDn(true);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i2 = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
            int G2 = (int) MainUtil.G(context, 12.0f);
            MyLineView myLineView = new MyLineView(context);
            myLineView.a((int) MainUtil.G(context, 2.0f));
            myLineView.setVisibility(8);
            int i3 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(G2);
            myLineFrame.addView(myLineView, layoutParams2);
            if (PrefAlbum.l) {
                view = new View(context);
                view.setBackgroundResource(R.drawable.noti_dot_red);
                int i4 = MainApp.F1;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i4, i4);
                int G3 = (int) MainUtil.G(context, 9.0f);
                layoutParams3.topMargin = G3;
                layoutParams3.setMarginStart(G3);
                myLineFrame.addView(view, layoutParams3);
            } else {
                view = null;
            }
            AppCompatTextView i5 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            i5.setEllipsize(truncateAt);
            i5.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams4.gravity = 8388627;
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(i5, layoutParams4);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams5.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams5, context, 1);
            m.addView(g, -1, -2);
            int G4 = (int) MainUtil.G(context, 32.0f);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            int i6 = MainApp.E1;
            appCompatTextView.setPadding(i6, 0, i6, 0);
            appCompatTextView.setGravity(16);
            appCompatTextView.setTextSize(1, 14.0f);
            appCompatTextView.setText(R.string.exist_file);
            appCompatTextView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, G4);
            layoutParams6.setMarginStart(G);
            layoutParams6.setMarginEnd(MainApp.E1);
            g.addView(appCompatTextView, layoutParams6);
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            myLineFrame2.setLinePad(MainApp.E1);
            myLineFrame2.setLineDn(true);
            g.addView(myLineFrame2, -1, MainApp.g1);
            View view2 = view;
            AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            C.setText(R.string.image);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams7.setMarginStart(MainApp.E1);
            myLineFrame2.addView(C, layoutParams7);
            AppCompatTextView C2 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams8.gravity = 8388613;
            layoutParams8.setMarginEnd(MainApp.E1);
            myLineFrame2.addView(C2, layoutParams8);
            int G5 = (int) MainUtil.G(context, 88.0f);
            MyLineFrame myLineFrame3 = new MyLineFrame(context);
            int i7 = MainApp.E1;
            myLineFrame3.setPadding(i7, G2, i7, G2);
            myLineFrame3.setLinePad(MainApp.E1);
            myLineFrame3.setLineDn(true);
            g.addView(myLineFrame3, -1, G5);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            myLineFrame3.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHintTextColor(-8289919);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams9.gravity = 80;
            layoutParams9.setMarginEnd((int) MainUtil.G(context, 6.0f));
            myLineFrame3.addView(myEditText, layoutParams9);
            FrameLayout frameLayout = new FrameLayout(context);
            int i8 = MainApp.E1;
            frameLayout.setPadding(i8, i8, i8, i8);
            frameLayout.setMinimumHeight(MainApp.h1);
            g.addView(frameLayout, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams10.gravity = 16;
            frameLayout.addView(relativeLayout, layoutParams10);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            appCompatTextView2.setId(i);
            appCompatTextView2.setTextSize(1, 14.0f);
            relativeLayout.addView(appCompatTextView2, -2, -2);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            appCompatTextView3.setMaxLines(2);
            appCompatTextView3.setEllipsize(truncateAt);
            RelativeLayout.LayoutParams h = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView3, 1, 16.0f, -2, -2);
            h.addRule(3, i);
            h.topMargin = MainApp.F1;
            relativeLayout.addView(appCompatTextView3, h);
            NestedScrollView nestedScrollView = new NestedScrollView(context, null);
            nestedScrollView.setOverScrollMode(2);
            nestedScrollView.setVisibility(8);
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams11.weight = 1.0f;
            LinearLayout g2 = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, nestedScrollView, layoutParams11, context, 1);
            nestedScrollView.addView(g2, -1, -2);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            g2.addView(linearLayout, -1, -2);
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
            appCompatTextView4.setPaddingRelative(MainApp.E1, 0, 0, 0);
            appCompatTextView4.setGravity(16);
            appCompatTextView4.setTextSize(1, 14.0f);
            appCompatTextView4.setText(R.string.verify_image);
            linearLayout.addView(appCompatTextView4, -1, G4);
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout2, -1, -2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j2.setText(R.string.total);
            frameLayout2.addView(j2, -2, -2);
            AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams12.gravity = 8388613;
            frameLayout2.addView(j3, layoutParams12);
            FrameLayout frameLayout3 = new FrameLayout(context);
            frameLayout3.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout3, -1, -2);
            AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j4.setText(R.string.fail);
            frameLayout3.addView(j4, -2, -2);
            AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams13.gravity = 8388613;
            frameLayout3.addView(j5, layoutParams13);
            FrameLayout frameLayout4 = new FrameLayout(context);
            frameLayout4.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout4, -1, -2);
            AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j6.setText(R.string.success);
            frameLayout4.addView(j6, -2, -2);
            AppCompatTextView j7 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams14.gravity = 8388613;
            frameLayout4.addView(j7, layoutParams14);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.no_image);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            myLineText.setVisibility(8);
            g2.addView(myLineText, -1, MainApp.g1);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(1);
            linearLayout2.setVisibility(8);
            g2.addView(linearLayout2, -1, -2);
            AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
            appCompatTextView5.setPaddingRelative(MainApp.E1, 0, 0, 0);
            appCompatTextView5.setGravity(16);
            appCompatTextView5.setTextSize(1, 14.0f);
            linearLayout2.addView(appCompatTextView5, -1, G4);
            FrameLayout frameLayout5 = new FrameLayout(context);
            frameLayout5.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout5, -1, -2);
            AppCompatTextView j8 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j8.setText(R.string.total);
            frameLayout5.addView(j8, -2, -2);
            AppCompatTextView j9 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams15.gravity = 8388613;
            frameLayout5.addView(j9, layoutParams15);
            FrameLayout frameLayout6 = new FrameLayout(context);
            frameLayout6.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout6, -1, -2);
            AppCompatTextView j10 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j10.setText(R.string.fail);
            frameLayout6.addView(j10, -2, -2);
            AppCompatTextView j11 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams16.gravity = 8388613;
            frameLayout6.addView(j11, layoutParams16);
            FrameLayout frameLayout7 = new FrameLayout(context);
            frameLayout7.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout7, -1, -2);
            AppCompatTextView j12 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j12.setText(R.string.success);
            frameLayout7.addView(j12, -2, -2);
            AppCompatTextView j13 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams17.gravity = 8388613;
            frameLayout7.addView(j13, layoutParams17);
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(1);
            linearLayout3.setVisibility(8);
            g2.addView(linearLayout3, -1, -2);
            AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
            appCompatTextView6.setPaddingRelative(MainApp.E1, 0, 0, 0);
            appCompatTextView6.setGravity(16);
            appCompatTextView6.setTextSize(1, 14.0f);
            linearLayout3.addView(appCompatTextView6, -1, G4);
            FrameLayout frameLayout8 = new FrameLayout(context);
            frameLayout8.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout3.addView(frameLayout8, -1, -2);
            AppCompatTextView j14 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j14.setText(R.string.total);
            frameLayout8.addView(j14, -2, -2);
            AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
            appCompatTextView7.setTextDirection(3);
            appCompatTextView7.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams18.gravity = 8388613;
            frameLayout8.addView(appCompatTextView7, layoutParams18);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-1, G2);
            layoutParams19.setMarginStart(MainApp.E1);
            layoutParams19.setMarginEnd(MainApp.E1);
            linearLayout3.addView(myProgressBar, layoutParams19);
            FrameLayout frameLayout9 = new FrameLayout(context);
            frameLayout9.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout3.addView(frameLayout9, -1, -2);
            AppCompatTextView j15 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j15.setText(R.string.fail);
            frameLayout9.addView(j15, -2, -2);
            AppCompatTextView j16 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams20.gravity = 8388613;
            frameLayout9.addView(j16, layoutParams20);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setBaselineAligned(false);
            myLineLinear.setOrientation(0);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
            s.setGravity(17);
            s.setTextSize(1, 16.0f);
            s.setText(R.string.retry);
            s.s(context);
            s.setVisibility(8);
            LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(0, -1);
            layoutParams21.weight = 1.0f;
            AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams21, context, null);
            l.setGravity(17);
            l.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(0, -1);
            layoutParams22.weight = 1.0f;
            myLineLinear.addView(l, layoutParams22);
            dialogCreateAlbum.e0 = q;
            dialogCreateAlbum.f0 = myLineFrame;
            dialogCreateAlbum.g0 = myRoundImage;
            dialogCreateAlbum.h0 = myLineView;
            dialogCreateAlbum.i0 = view2;
            dialogCreateAlbum.j0 = i5;
            dialogCreateAlbum.k0 = m;
            dialogCreateAlbum.l0 = appCompatTextView;
            dialogCreateAlbum.m0 = C;
            dialogCreateAlbum.n0 = C2;
            dialogCreateAlbum.o0 = j;
            dialogCreateAlbum.p0 = myEditText;
            dialogCreateAlbum.q0 = frameLayout;
            dialogCreateAlbum.r0 = appCompatTextView2;
            dialogCreateAlbum.s0 = appCompatTextView3;
            dialogCreateAlbum.t0 = nestedScrollView;
            dialogCreateAlbum.u0 = linearLayout;
            dialogCreateAlbum.v0 = appCompatTextView4;
            dialogCreateAlbum.w0 = j2;
            dialogCreateAlbum.x0 = j3;
            dialogCreateAlbum.y0 = j4;
            dialogCreateAlbum.z0 = j5;
            dialogCreateAlbum.A0 = j6;
            dialogCreateAlbum.B0 = j7;
            dialogCreateAlbum.C0 = myLineText;
            dialogCreateAlbum.D0 = linearLayout2;
            dialogCreateAlbum.E0 = appCompatTextView5;
            dialogCreateAlbum.F0 = j8;
            dialogCreateAlbum.G0 = j9;
            dialogCreateAlbum.H0 = j10;
            dialogCreateAlbum.I0 = j11;
            dialogCreateAlbum.J0 = j12;
            dialogCreateAlbum.K0 = j13;
            dialogCreateAlbum.L0 = linearLayout3;
            dialogCreateAlbum.M0 = appCompatTextView6;
            dialogCreateAlbum.N0 = j14;
            dialogCreateAlbum.O0 = appCompatTextView7;
            dialogCreateAlbum.P0 = myProgressBar;
            dialogCreateAlbum.Q0 = j15;
            dialogCreateAlbum.R0 = j16;
            dialogCreateAlbum.S0 = l;
            dialogCreateAlbum.T0 = s;
            Handler handler = dialogCreateAlbum.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i9;
                    final DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                    if (dialogCreateAlbum2.e0 != null && dialogCreateAlbum2.b0 != null) {
                        dialogCreateAlbum2.o0.setText(R.string.name);
                        dialogCreateAlbum2.r0.setText(R.string.down_location);
                        dialogCreateAlbum2.E0.setText(R.string.create_album);
                        dialogCreateAlbum2.S0.setText(R.string.create_album);
                        if (MainApp.K1) {
                            dialogCreateAlbum2.h0.setBackgroundResource(R.drawable.selector_overlay_dark);
                            dialogCreateAlbum2.j0.setTextColor(-328966);
                            dialogCreateAlbum2.l0.setTextColor(-2434342);
                            dialogCreateAlbum2.l0.setBackgroundColor(-12632257);
                            dialogCreateAlbum2.m0.setTextColor(-328966);
                            dialogCreateAlbum2.n0.setTextColor(-328966);
                            dialogCreateAlbum2.o0.setTextColor(-4079167);
                            dialogCreateAlbum2.p0.setTextColor(-328966);
                            dialogCreateAlbum2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogCreateAlbum2.r0.setTextColor(-4079167);
                            dialogCreateAlbum2.s0.setTextColor(-328966);
                            dialogCreateAlbum2.v0.setTextColor(-2434342);
                            dialogCreateAlbum2.v0.setBackgroundColor(-12632257);
                            dialogCreateAlbum2.w0.setTextColor(-328966);
                            dialogCreateAlbum2.x0.setTextColor(-328966);
                            dialogCreateAlbum2.y0.setTextColor(-328966);
                            dialogCreateAlbum2.z0.setTextColor(-328966);
                            dialogCreateAlbum2.A0.setTextColor(-328966);
                            dialogCreateAlbum2.B0.setTextColor(-328966);
                            dialogCreateAlbum2.C0.setTextColor(-328966);
                            dialogCreateAlbum2.E0.setTextColor(-2434342);
                            dialogCreateAlbum2.E0.setBackgroundColor(-12632257);
                            dialogCreateAlbum2.F0.setTextColor(-328966);
                            dialogCreateAlbum2.G0.setTextColor(-328966);
                            dialogCreateAlbum2.H0.setTextColor(-328966);
                            dialogCreateAlbum2.I0.setTextColor(-328966);
                            dialogCreateAlbum2.J0.setTextColor(-328966);
                            dialogCreateAlbum2.K0.setTextColor(-328966);
                            dialogCreateAlbum2.M0.setTextColor(-2434342);
                            dialogCreateAlbum2.M0.setBackgroundColor(-12632257);
                            dialogCreateAlbum2.N0.setTextColor(-328966);
                            dialogCreateAlbum2.O0.setTextColor(-328966);
                            dialogCreateAlbum2.Q0.setTextColor(-328966);
                            dialogCreateAlbum2.R0.setTextColor(-328966);
                            dialogCreateAlbum2.T0.setTextColor(-328966);
                            dialogCreateAlbum2.T0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogCreateAlbum2.S0.setTextColor(-328966);
                            dialogCreateAlbum2.S0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogCreateAlbum2.h0.setBackgroundResource(R.drawable.selector_overlay);
                            dialogCreateAlbum2.j0.setTextColor(-16777216);
                            dialogCreateAlbum2.l0.setTextColor(-12303292);
                            dialogCreateAlbum2.l0.setBackgroundColor(-460552);
                            dialogCreateAlbum2.m0.setTextColor(-16777216);
                            dialogCreateAlbum2.n0.setTextColor(-16777216);
                            dialogCreateAlbum2.o0.setTextColor(-10395295);
                            dialogCreateAlbum2.p0.setTextColor(-16777216);
                            dialogCreateAlbum2.q0.setBackgroundResource(R.drawable.selector_normal);
                            dialogCreateAlbum2.r0.setTextColor(-10395295);
                            dialogCreateAlbum2.s0.setTextColor(-16777216);
                            dialogCreateAlbum2.v0.setTextColor(-12303292);
                            dialogCreateAlbum2.v0.setBackgroundColor(-460552);
                            dialogCreateAlbum2.w0.setTextColor(-16777216);
                            dialogCreateAlbum2.x0.setTextColor(-16777216);
                            dialogCreateAlbum2.y0.setTextColor(-16777216);
                            dialogCreateAlbum2.z0.setTextColor(-16777216);
                            dialogCreateAlbum2.A0.setTextColor(-16777216);
                            dialogCreateAlbum2.B0.setTextColor(-16777216);
                            dialogCreateAlbum2.C0.setTextColor(-16777216);
                            dialogCreateAlbum2.E0.setTextColor(-12303292);
                            dialogCreateAlbum2.E0.setBackgroundColor(-460552);
                            dialogCreateAlbum2.F0.setTextColor(-16777216);
                            dialogCreateAlbum2.G0.setTextColor(-16777216);
                            dialogCreateAlbum2.H0.setTextColor(-16777216);
                            dialogCreateAlbum2.I0.setTextColor(-16777216);
                            dialogCreateAlbum2.J0.setTextColor(-16777216);
                            dialogCreateAlbum2.K0.setTextColor(-16777216);
                            dialogCreateAlbum2.M0.setTextColor(-12303292);
                            dialogCreateAlbum2.M0.setBackgroundColor(-460552);
                            dialogCreateAlbum2.N0.setTextColor(-16777216);
                            dialogCreateAlbum2.O0.setTextColor(-16777216);
                            dialogCreateAlbum2.Q0.setTextColor(-16777216);
                            dialogCreateAlbum2.R0.setTextColor(-16777216);
                            dialogCreateAlbum2.T0.setTextColor(-14784824);
                            dialogCreateAlbum2.T0.setBackgroundResource(R.drawable.selector_normal);
                            dialogCreateAlbum2.S0.setTextColor(-14784824);
                            dialogCreateAlbum2.S0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        List list = dialogCreateAlbum2.b1;
                        if (list != null) {
                            i9 = list.size();
                        } else {
                            i9 = 0;
                        }
                        dialogCreateAlbum2.n0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i9);
                        dialogCreateAlbum2.j0.setText(dialogCreateAlbum2.Z0);
                        dialogCreateAlbum2.J(dialogCreateAlbum2.a1);
                        if (MainApp.K1) {
                            dialogCreateAlbum2.h0.c(MainApp.n1, -328966);
                        } else {
                            dialogCreateAlbum2.h0.setLineColor(-14784824);
                        }
                        dialogCreateAlbum2.h0.setVisibility(0);
                        dialogCreateAlbum2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                final DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                MyPopupMenu myPopupMenu = dialogCreateAlbum3.p1;
                                if (myPopupMenu == null) {
                                    if (myPopupMenu != null) {
                                        dialogCreateAlbum3.Y = null;
                                        myPopupMenu.a();
                                        dialogCreateAlbum3.p1 = null;
                                    }
                                    if (dialogCreateAlbum3.a0 != null && view3 != null) {
                                        if (PrefAlbum.l) {
                                            PrefAlbum.l = false;
                                            PrefSet.d(0, dialogCreateAlbum3.b0, "mNotiIcon", false);
                                            View view4 = dialogCreateAlbum3.i0;
                                            if (view4 != null) {
                                                view4.setVisibility(8);
                                                dialogCreateAlbum3.i0 = null;
                                            }
                                        }
                                        dialogCreateAlbum3.t1 = null;
                                        dialogCreateAlbum3.u1 = null;
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.default_image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.camera));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogCreateAlbum3.a0, dialogCreateAlbum3.e0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.17
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i10 = DialogCreateAlbum.I1;
                                                DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                                MyPopupMenu myPopupMenu3 = dialogCreateAlbum4.p1;
                                                if (myPopupMenu3 != null) {
                                                    dialogCreateAlbum4.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogCreateAlbum4.p1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view5, int i10) {
                                                DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                                if (i10 == 1) {
                                                    MainUtil.O4(dialogCreateAlbum4.a0, 9);
                                                    return true;
                                                }
                                                if (i10 == 2) {
                                                    if (!MainUtil.D4(dialogCreateAlbum4.a0, 30)) {
                                                        dialogCreateAlbum4.t1 = MainUtil.C4(9, dialogCreateAlbum4.a0, false);
                                                        return true;
                                                    }
                                                } else if (!TextUtils.isEmpty(dialogCreateAlbum4.w1)) {
                                                    dialogCreateAlbum4.I(dialogCreateAlbum4.v1, true);
                                                }
                                                return true;
                                            }
                                        });
                                        dialogCreateAlbum3.p1 = myPopupMenu2;
                                        dialogCreateAlbum3.Y = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        dialogCreateAlbum2.p0.setSelectAllOnFocus(true);
                        dialogCreateAlbum2.p0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                if (!dialogCreateAlbum3.Y0 && editable != null && !MainUtil.q5(dialogCreateAlbum3.X0, editable.toString())) {
                                    dialogCreateAlbum3.Y0 = true;
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }
                        });
                        dialogCreateAlbum2.p0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.5
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                                DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                MyEditText myEditText2 = dialogCreateAlbum3.p0;
                                if (myEditText2 == null || dialogCreateAlbum3.A1) {
                                    return true;
                                }
                                dialogCreateAlbum3.A1 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                        int i11 = DialogCreateAlbum.I1;
                                        dialogCreateAlbum4.K();
                                        DialogCreateAlbum.this.A1 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogCreateAlbum2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                final DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                ArrayList arrayList = dialogCreateAlbum3.q1;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    MyPopupMenu myPopupMenu = dialogCreateAlbum3.s1;
                                    if (myPopupMenu == null) {
                                        if (myPopupMenu != null) {
                                            dialogCreateAlbum3.Y = null;
                                            myPopupMenu.a();
                                            dialogCreateAlbum3.s1 = null;
                                        }
                                        if (dialogCreateAlbum3.a0 != null && view3 != null && dialogCreateAlbum3.q1 != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            ArrayList arrayList3 = dialogCreateAlbum3.q1;
                                            int size = arrayList3.size();
                                            int i10 = 0;
                                            int i11 = 0;
                                            while (i11 < size) {
                                                Object obj = arrayList3.get(i11);
                                                i11++;
                                                arrayList2.add(new MyPopupAdapter.PopMenuItem(i10, MainUri.o(dialogCreateAlbum3.b0, (String) obj)));
                                                i10++;
                                            }
                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i10, R.string.direct_select));
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogCreateAlbum3.a0, dialogCreateAlbum3.e0, view3, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.24
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i12 = DialogCreateAlbum.I1;
                                                    DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                                    MyPopupMenu myPopupMenu3 = dialogCreateAlbum4.s1;
                                                    if (myPopupMenu3 != null) {
                                                        dialogCreateAlbum4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogCreateAlbum4.s1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i12) {
                                                    DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                                    ArrayList arrayList4 = dialogCreateAlbum4.q1;
                                                    if (arrayList4 != null && i12 < arrayList4.size()) {
                                                        String str = (String) dialogCreateAlbum4.q1.get(i12);
                                                        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                            return true;
                                                        }
                                                        PrefPath.r = str;
                                                        dialogCreateAlbum4.s(new AnonymousClass16());
                                                        return true;
                                                    }
                                                    MainUtil.F4(dialogCreateAlbum4.a0, MainUri.e());
                                                    return true;
                                                }
                                            });
                                            dialogCreateAlbum3.s1 = myPopupMenu2;
                                            dialogCreateAlbum3.Y = myPopupMenu2;
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                MainUtil.F4(dialogCreateAlbum3.a0, MainUri.e());
                            }
                        });
                        dialogCreateAlbum2.S0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                AppCompatTextView appCompatTextView8 = dialogCreateAlbum3.S0;
                                if (appCompatTextView8 != null) {
                                    if (appCompatTextView8.isActivated()) {
                                        dialogCreateAlbum3.G();
                                    } else {
                                        if (dialogCreateAlbum3.A1) {
                                            return;
                                        }
                                        dialogCreateAlbum3.A1 = true;
                                        dialogCreateAlbum3.S0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                                if (dialogCreateAlbum4.a0 != null) {
                                                    if (dialogCreateAlbum4.h1) {
                                                        String str = dialogCreateAlbum4.z1;
                                                        PrefPath.j = str;
                                                        PrefSet.c(6, dialogCreateAlbum4.b0, "mAlbumPath", str);
                                                        Intent intent = new Intent(dialogCreateAlbum4.b0, (Class<?>) MainListAlbum.class);
                                                        intent.putExtra("EXTRA_TYPE", 1);
                                                        dialogCreateAlbum4.a0.startActivity(intent);
                                                        dialogCreateAlbum4.dismiss();
                                                    } else {
                                                        ArrayList arrayList = dialogCreateAlbum4.j1;
                                                        if (arrayList != null && !arrayList.isEmpty()) {
                                                            dialogCreateAlbum4.D();
                                                            AppCompatTextView appCompatTextView9 = dialogCreateAlbum4.S0;
                                                            if (appCompatTextView9 != null) {
                                                                appCompatTextView9.post(new AnonymousClass22());
                                                            }
                                                        } else {
                                                            ArrayList arrayList2 = dialogCreateAlbum4.d1;
                                                            if (arrayList2 != null && !arrayList2.isEmpty()) {
                                                                AppCompatTextView appCompatTextView10 = dialogCreateAlbum4.S0;
                                                                if (appCompatTextView10 != null) {
                                                                    appCompatTextView10.post(new AnonymousClass19(false));
                                                                }
                                                            } else {
                                                                dialogCreateAlbum4.K();
                                                            }
                                                        }
                                                    }
                                                }
                                                dialogCreateAlbum4.A1 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogCreateAlbum2.T0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                ArrayList arrayList = dialogCreateAlbum3.d1;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    AppCompatTextView appCompatTextView8 = dialogCreateAlbum3.S0;
                                    if (appCompatTextView8 != null) {
                                        appCompatTextView8.post(new AnonymousClass19(true));
                                        return;
                                    }
                                    return;
                                }
                                ArrayList arrayList2 = dialogCreateAlbum3.j1;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    dialogCreateAlbum3.D();
                                    AppCompatTextView appCompatTextView9 = dialogCreateAlbum3.S0;
                                    if (appCompatTextView9 != null) {
                                        appCompatTextView9.post(new AnonymousClass22());
                                    }
                                }
                            }
                        });
                        dialogCreateAlbum2.g(dialogCreateAlbum2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view3) {
                                final DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                if (dialogCreateAlbum3.e0 != null) {
                                    dialogCreateAlbum3.show();
                                    Handler handler2 = dialogCreateAlbum3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.10
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogCreateAlbum dialogCreateAlbum4 = DialogCreateAlbum.this;
                                            List list2 = dialogCreateAlbum4.b1;
                                            if (list2 != null && !list2.isEmpty()) {
                                                dialogCreateAlbum4.I((String) dialogCreateAlbum4.b1.get(0), true);
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

    public static void C(DialogCreateAlbum dialogCreateAlbum, final ArrayList arrayList, boolean z) {
        int i;
        final int i2;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            if (z) {
                i = 1;
            } else {
                i = 10;
            }
            if (i > size) {
                i2 = size;
            } else {
                i2 = i;
            }
            int i3 = size / i2;
            if (size % i2 != 0) {
                i3++;
            }
            final int i4 = i3;
            final MainDownSvc.DownZipListener downZipListener = new MainDownSvc.DownZipListener() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.20
                @Override // com.mycompany.app.main.MainDownSvc.DownZipListener
                public final Handler a() {
                    return DialogCreateAlbum.this.i;
                }

                @Override // com.mycompany.app.main.MainDownSvc.DownZipListener
                public final void b(List list) {
                    if (list != null) {
                        Iterator it = list.iterator();
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            boolean hasNext = it.hasNext();
                            DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                            if (hasNext) {
                                MainItem.ChildItem childItem = (MainItem.ChildItem) it.next();
                                if (dialogCreateAlbum2.c1) {
                                    if (childItem != null) {
                                        int i7 = childItem.d;
                                        if (i7 == 3) {
                                            i5++;
                                        } else if (i7 == 4) {
                                        }
                                    }
                                    i5++;
                                    i6++;
                                } else {
                                    return;
                                }
                            } else {
                                dialogCreateAlbum2.f1 = i5;
                                dialogCreateAlbum2.g1 = i6;
                                if (dialogCreateAlbum2.e1 < 0) {
                                    dialogCreateAlbum2.e1 = 0;
                                }
                                int i8 = dialogCreateAlbum2.e1;
                                if (i5 > i8) {
                                    dialogCreateAlbum2.f1 = i8;
                                }
                                if (i6 > i8) {
                                    dialogCreateAlbum2.g1 = i8;
                                }
                                if (i5 < list.size()) {
                                    if (!dialogCreateAlbum2.B1) {
                                        dialogCreateAlbum2.B1 = true;
                                        AppCompatTextView appCompatTextView = dialogCreateAlbum2.O0;
                                        if (appCompatTextView != null) {
                                            appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.20.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AppCompatTextView appCompatTextView2;
                                                    int i9;
                                                    DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                                    if (dialogCreateAlbum3.c1 && (appCompatTextView2 = dialogCreateAlbum3.O0) != null) {
                                                        appCompatTextView2.setText(MainUtil.h3(dialogCreateAlbum3.f1, dialogCreateAlbum3.e1));
                                                        dialogCreateAlbum3.P0.setProgress(dialogCreateAlbum3.f1);
                                                        if (dialogCreateAlbum3.g1 > 0) {
                                                            AppCompatTextView appCompatTextView3 = dialogCreateAlbum3.R0;
                                                            StringBuilder sb = new StringBuilder();
                                                            com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCreateAlbum3.b0, R.string.not_loaded, sb, "    ");
                                                            com.google.android.gms.internal.mlkit_vision_text_common.a.B(sb, dialogCreateAlbum3.g1, appCompatTextView3);
                                                            dialogCreateAlbum3.R0.setTextColor(-769226);
                                                        } else {
                                                            dialogCreateAlbum3.R0.setText("0");
                                                            AppCompatTextView appCompatTextView4 = dialogCreateAlbum3.R0;
                                                            if (MainApp.K1) {
                                                                i9 = -328966;
                                                            } else {
                                                                i9 = -16777216;
                                                            }
                                                            appCompatTextView4.setTextColor(i9);
                                                        }
                                                    }
                                                    dialogCreateAlbum3.B1 = false;
                                                }
                                            });
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (dialogCreateAlbum2.c1) {
                                    dialogCreateAlbum2.c1 = false;
                                    if (dialogCreateAlbum2.e1 > dialogCreateAlbum2.g1) {
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = list.iterator();
                                        while (it2.hasNext()) {
                                            MainItem.ChildItem childItem2 = (MainItem.ChildItem) it2.next();
                                            if (childItem2 != null && childItem2.d == 3) {
                                                arrayList2.add(childItem2.g);
                                            }
                                        }
                                        dialogCreateAlbum2.j1 = arrayList2;
                                        if (!arrayList2.isEmpty()) {
                                            if (TextUtils.isEmpty(dialogCreateAlbum2.x1)) {
                                                String p = android.support.v4.media.a.p(new StringBuilder(), dialogCreateAlbum2.y1, "/icon_album");
                                                if (!TextUtils.isEmpty(dialogCreateAlbum2.w1) && new File(dialogCreateAlbum2.w1).exists() && MainUtil.u(dialogCreateAlbum2.w1, p)) {
                                                    dialogCreateAlbum2.x1 = p;
                                                } else {
                                                    Bitmap c2 = BitmapUtil.c((String) dialogCreateAlbum2.j1.get(0));
                                                    if (MainUtil.f6(c2)) {
                                                        float min = Math.min(c2.getWidth(), c2.getHeight()) / MainApp.f1;
                                                        if (MainUtil.p(dialogCreateAlbum2.b0, MainUtil.k3(Math.round(c2.getWidth() / min), Math.round(c2.getHeight() / min), c2), p)) {
                                                            dialogCreateAlbum2.x1 = p;
                                                        }
                                                    }
                                                }
                                            }
                                            if (!TextUtils.isEmpty(dialogCreateAlbum2.x1)) {
                                                arrayList2.add(0, dialogCreateAlbum2.x1);
                                            }
                                        }
                                    }
                                    AppCompatTextView appCompatTextView2 = dialogCreateAlbum2.O0;
                                    if (appCompatTextView2 == null) {
                                        return;
                                    }
                                    appCompatTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.20.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i9;
                                            int i10;
                                            DialogCreateAlbum dialogCreateAlbum3 = DialogCreateAlbum.this;
                                            if (dialogCreateAlbum3.u0 != null) {
                                                dialogCreateAlbum3.H();
                                                dialogCreateAlbum3.t0.setVisibility(0);
                                                dialogCreateAlbum3.u0.setVisibility(0);
                                                ArrayList arrayList3 = dialogCreateAlbum3.j1;
                                                if (arrayList3 != null) {
                                                    i9 = arrayList3.size();
                                                } else {
                                                    i9 = 0;
                                                }
                                                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogCreateAlbum3.e1, dialogCreateAlbum3.x0);
                                                dialogCreateAlbum3.B0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i9);
                                                int i11 = -16777216;
                                                int i12 = -328966;
                                                if (dialogCreateAlbum3.g1 > 0) {
                                                    AppCompatTextView appCompatTextView3 = dialogCreateAlbum3.z0;
                                                    StringBuilder sb = new StringBuilder();
                                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCreateAlbum3.b0, R.string.not_loaded, sb, "    ");
                                                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(sb, dialogCreateAlbum3.g1, appCompatTextView3);
                                                    dialogCreateAlbum3.z0.setTextColor(-769226);
                                                } else {
                                                    dialogCreateAlbum3.z0.setText("0");
                                                    AppCompatTextView appCompatTextView4 = dialogCreateAlbum3.z0;
                                                    if (MainApp.K1) {
                                                        i10 = -328966;
                                                    } else {
                                                        i10 = -16777216;
                                                    }
                                                    appCompatTextView4.setTextColor(i10);
                                                }
                                                if (dialogCreateAlbum3.g1 > 0) {
                                                    if (i9 == 0) {
                                                        dialogCreateAlbum3.S0.setActivated(false);
                                                        dialogCreateAlbum3.S0.setText(R.string.retry);
                                                        AppCompatTextView appCompatTextView5 = dialogCreateAlbum3.S0;
                                                        if (!MainApp.K1) {
                                                            i12 = -14784824;
                                                        }
                                                        appCompatTextView5.setTextColor(i12);
                                                        return;
                                                    }
                                                    dialogCreateAlbum3.S0.setActivated(false);
                                                    dialogCreateAlbum3.S0.setText(R.string.create_album);
                                                    AppCompatTextView appCompatTextView6 = dialogCreateAlbum3.S0;
                                                    if (!MainApp.K1) {
                                                        i12 = -14784824;
                                                    }
                                                    appCompatTextView6.setTextColor(i12);
                                                    dialogCreateAlbum3.T0.setVisibility(0);
                                                    return;
                                                }
                                                if (i9 == 0) {
                                                    dialogCreateAlbum3.S0.setActivated(true);
                                                    dialogCreateAlbum3.S0.setText(R.string.close);
                                                    AppCompatTextView appCompatTextView7 = dialogCreateAlbum3.S0;
                                                    if (MainApp.K1) {
                                                        i11 = -328966;
                                                    }
                                                    appCompatTextView7.setTextColor(i11);
                                                    dialogCreateAlbum3.C0.setVisibility(0);
                                                    NestedScrollView nestedScrollView = dialogCreateAlbum3.t0;
                                                    if (nestedScrollView != null) {
                                                        nestedScrollView.post(new AnonymousClass18());
                                                        return;
                                                    }
                                                    return;
                                                }
                                                ArrayList arrayList4 = dialogCreateAlbum3.j1;
                                                if (arrayList4 != null && !arrayList4.isEmpty()) {
                                                    dialogCreateAlbum3.D();
                                                    AppCompatTextView appCompatTextView8 = dialogCreateAlbum3.S0;
                                                    if (appCompatTextView8 != null) {
                                                        appCompatTextView8.post(new AnonymousClass22());
                                                    }
                                                }
                                            }
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }

                @Override // com.mycompany.app.main.MainDownSvc.DownZipListener
                public final boolean isRunning() {
                    return DialogCreateAlbum.this.c1;
                }
            };
            if (z) {
                int size2 = arrayList.size();
                int i5 = 0;
                while (i5 < size2) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    MainItem.ChildItem childItem = (MainItem.ChildItem) obj;
                    if (dialogCreateAlbum.c1) {
                        if (childItem != null && childItem.d != 3) {
                            childItem.d = 1;
                        }
                    } else {
                        return;
                    }
                }
            }
            for (final int i6 = 0; i6 < i2 && dialogCreateAlbum.c1; i6++) {
                dialogCreateAlbum.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownSaveZip.b(DialogCreateAlbum.this.b0, arrayList, i4, i6, i2, downZipListener);
                    }
                });
            }
        }
    }

    public final void D() {
        ProgressMonitor progressMonitor = this.o1;
        if (progressMonitor != null) {
            progressMonitor.e = true;
        }
        ZipTask zipTask = this.i1;
        if (zipTask != null) {
            zipTask.f12839c = true;
        }
        this.i1 = null;
    }

    public final boolean E(int i, int i2, Intent intent) {
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
                    s(new AnonymousClass16());
                }
                MainUtil.z7(this.b0, data);
                return true;
            }
        } else {
            Uri uri = null;
            if (i == 9) {
                Uri uri2 = this.t1;
                this.t1 = null;
                if (i2 == -1) {
                    if (intent != null) {
                        uri = intent.getData();
                    }
                    if (uri != null) {
                        uri2 = uri;
                    }
                    MainUtil.z7(this.b0, uri2);
                    if (this.a0 != null) {
                        if (uri2 == null) {
                            MainUtil.e8(this.b0, R.string.invalid_path);
                            return true;
                        }
                        String m0 = MainUtil.m0(this.b0);
                        this.u1 = m0;
                        if (TextUtils.isEmpty(m0)) {
                            MainUtil.e8(this.b0, R.string.invalid_path);
                            return true;
                        }
                        Intent intent2 = new Intent(this.b0, (Class<?>) MainImageCropper.class);
                        intent2.setData(uri2);
                        intent2.putExtra("EXTRA_DST", this.u1);
                        intent2.putExtra("EXTRA_ICON", true);
                        this.a0.t0(intent2, 12);
                        return true;
                    }
                }
            } else {
                if (i != 12) {
                    return false;
                }
                String str = this.u1;
                this.u1 = null;
                if (i2 == -1) {
                    if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                        I(str, false);
                        return true;
                    }
                    MainUtil.e8(this.b0, R.string.invalid_path);
                    return true;
                }
            }
        }
        return true;
    }

    public final boolean F(int i, int[] iArr) {
        if (i != 30) {
            return false;
        }
        if (iArr != null && iArr.length > 0 && iArr[0] == 0) {
            this.t1 = MainUtil.C4(9, this.a0, false);
            return true;
        }
        return true;
    }

    public final void G() {
        int i;
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear == null) {
            dismiss();
            return;
        }
        this.c1 = false;
        if (this.i1 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.S0.setEnabled(false);
            this.S0.setActivated(true);
            this.S0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.S0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView.setTextColor(i);
            D();
            return;
        }
        dismiss();
    }

    public final void H() {
        int i;
        if (this.f0 == null) {
            return;
        }
        setCanceledOnTouchOutside(true);
        View view = this.i0;
        if (view != null) {
            view.setVisibility(8);
            this.i0 = null;
        }
        this.f0.setDrawLine(false);
        this.h0.setVisibility(8);
        this.k0.setVisibility(8);
        this.t0.setVisibility(8);
        this.u0.setVisibility(8);
        this.D0.setVisibility(8);
        this.L0.setVisibility(8);
        this.T0.setVisibility(8);
        this.S0.setActivated(true);
        this.S0.setText(R.string.cancel);
        AppCompatTextView appCompatTextView = this.S0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
    }

    public final void I(String str, boolean z) {
        MyRoundImage myRoundImage = this.g0;
        if (myRoundImage == null) {
            return;
        }
        if (z) {
            this.v1 = str;
            this.w1 = null;
        } else {
            this.w1 = str;
        }
        myRoundImage.o(-460552, R.drawable.outline_image_black_24);
        if (Compress.I(MainUtil.V3(str, null, null, true))) {
            this.F1 = str;
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.14
                @Override // java.lang.Runnable
                public final void run() {
                    DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
                    MainActivity mainActivity = dialogCreateAlbum.a0;
                    if (mainActivity != null) {
                        if (dialogCreateAlbum.C1 == null) {
                            dialogCreateAlbum.C1 = GlideApp.a(mainActivity);
                        }
                        Handler handler = dialogCreateAlbum.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.14.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                                String str2 = dialogCreateAlbum2.F1;
                                dialogCreateAlbum2.F1 = null;
                                if (dialogCreateAlbum2.C1 == null) {
                                    return;
                                }
                                if (URLUtil.isNetworkUrl(str2)) {
                                    ((GlideRequest) ((GlideRequest) dialogCreateAlbum2.C1.b(PictureDrawable.class)).O(MainUtil.A1(dialogCreateAlbum2.b0, str2, dialogCreateAlbum2.d0))).I(dialogCreateAlbum2.G1).E(dialogCreateAlbum2.g0);
                                    return;
                                }
                                ((GlideRequest) ((GlideRequest) dialogCreateAlbum2.C1.b(PictureDrawable.class)).O(str2)).I(dialogCreateAlbum2.G1).E(dialogCreateAlbum2.g0);
                            }
                        });
                    }
                }
            });
        } else {
            this.D1 = str;
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.12
                @Override // java.lang.Runnable
                public final void run() {
                    DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
                    MainActivity mainActivity = dialogCreateAlbum.a0;
                    if (mainActivity != null) {
                        if (dialogCreateAlbum.C1 == null) {
                            dialogCreateAlbum.C1 = GlideApp.a(mainActivity);
                        }
                        Handler handler = dialogCreateAlbum.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.12.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                                String str2 = dialogCreateAlbum2.D1;
                                dialogCreateAlbum2.D1 = null;
                                if (dialogCreateAlbum2.C1 == null) {
                                    return;
                                }
                                boolean isNetworkUrl = URLUtil.isNetworkUrl(str2);
                                DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                if (isNetworkUrl) {
                                    ((RequestBuilder) dialogCreateAlbum2.C1.t(MainUtil.A1(dialogCreateAlbum2.b0, str2, dialogCreateAlbum2.d0)).e(diskCacheStrategy)).I(dialogCreateAlbum2.E1).E(dialogCreateAlbum2.g0);
                                } else {
                                    ((RequestBuilder) dialogCreateAlbum2.C1.u(str2).e(diskCacheStrategy)).I(dialogCreateAlbum2.E1).E(dialogCreateAlbum2.g0);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public final void J(String str) {
        String str2;
        int i;
        if (this.p0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.U0 = str;
        }
        if (this.Y0) {
            str2 = MainUtil.Q0(this.p0, true);
        } else {
            str2 = this.U0;
        }
        String p3 = MainUtil.p3(str2);
        if (TextUtils.isEmpty(MainUri.e())) {
            this.X0 = p3;
            this.p0.setText(p3);
            this.s0.setText(R.string.not_selected);
            this.s0.setTextColor(-769226);
            this.f0.setDrawLine(true);
            this.l0.setVisibility(8);
            return;
        }
        this.s0.setText(this.r1);
        AppCompatTextView appCompatTextView = this.s0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        if (TextUtils.isEmpty(p3)) {
            this.X0 = p3;
            this.p0.setText(p3);
            this.f0.setDrawLine(true);
            this.l0.setVisibility(8);
            return;
        }
        String b4 = MainUtil.b4(p3, ".album");
        MainUri.e();
        this.f0.setDrawLine(true);
        this.l0.setVisibility(8);
        String k1 = MainUtil.k1(b4);
        this.X0 = k1;
        this.p0.setText(k1);
    }

    public final void K() {
        if (this.b0 != null && this.p0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(this.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(this.p0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(this.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(this.b0, R.string.long_name);
                return;
            }
            String b4 = MainUtil.b4(Q0, ".album");
            if (TextUtils.isEmpty(b4)) {
                MainUtil.e8(this.b0, R.string.input_name);
                return;
            }
            String p3 = MainUtil.p3(b4);
            MainUri.e();
            MainUtil.X4(this.b0, this.p0);
            this.V0 = MainUtil.k1(p3);
            AppCompatTextView appCompatTextView = this.S0;
            if (appCompatTextView != null) {
                appCompatTextView.post(new AnonymousClass19(false));
            }
            DialogSetFull.DialogApplyListener dialogApplyListener = this.c0;
            if (dialogApplyListener != null) {
                dialogApplyListener.a();
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        G();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        this.c1 = false;
        D();
        MyPopupMenu myPopupMenu = this.p1;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.p1 = null;
        }
        MyPopupMenu myPopupMenu2 = this.s1;
        if (myPopupMenu2 != null) {
            this.Y = null;
            myPopupMenu2.a();
            this.s1 = null;
        }
        final String str = this.y1;
        this.y1 = null;
        if (!TextUtils.isEmpty(str)) {
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.11
                @Override // java.lang.Runnable
                public final void run() {
                    MainUtil.z(str);
                }
            });
        }
        GlideRequests glideRequests = this.C1;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.g0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.C1 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyLineFrame myLineFrame = this.f0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.f0 = null;
        }
        MyRoundImage myRoundImage2 = this.g0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.g0 = null;
        }
        MyLineView myLineView = this.h0;
        if (myLineView != null) {
            myLineView.b();
            this.h0 = null;
        }
        MyEditText myEditText = this.p0;
        if (myEditText != null) {
            myEditText.c();
            this.p0 = null;
        }
        MyLineText myLineText = this.C0;
        if (myLineText != null) {
            myLineText.u();
            this.C0 = null;
        }
        MyProgressBar myProgressBar = this.P0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.P0 = null;
        }
        MyLineText myLineText2 = this.T0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.T0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
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
        this.D0 = null;
        this.E0 = null;
        this.F0 = null;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        this.M0 = null;
        this.N0 = null;
        this.O0 = null;
        this.Q0 = null;
        this.R0 = null;
        this.S0 = null;
        this.U0 = null;
        this.V0 = null;
        this.W0 = null;
        this.X0 = null;
        this.Z0 = null;
        this.a1 = null;
        this.b1 = null;
        this.d1 = null;
        this.j1 = null;
        this.o1 = null;
        this.q1 = null;
        this.r1 = null;
        this.t1 = null;
        this.u1 = null;
        this.v1 = null;
        this.w1 = null;
        this.x1 = null;
        this.z1 = null;
        super.dismiss();
    }

    /* renamed from: com.mycompany.app.dialog.DialogCreateAlbum$23, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass23 implements CompressUtil.CompressListener {
        public AnonymousClass23() {
        }

        @Override // com.mycompany.app.compress.CompressUtil.CompressListener
        public final void a(String str, boolean z) {
            DialogCreateAlbum dialogCreateAlbum = DialogCreateAlbum.this;
            if (dialogCreateAlbum.k1) {
                dialogCreateAlbum.k1 = false;
                return;
            }
            int i = dialogCreateAlbum.m1 + 1;
            dialogCreateAlbum.m1 = i;
            int i2 = dialogCreateAlbum.l1;
            if (i > i2) {
                dialogCreateAlbum.m1 = i2;
            }
            if (!z) {
                int i3 = dialogCreateAlbum.n1 + 1;
                dialogCreateAlbum.n1 = i3;
                if (i3 > i2) {
                    dialogCreateAlbum.n1 = i2;
                }
            }
            AppCompatTextView appCompatTextView = dialogCreateAlbum.O0;
            if (appCompatTextView == null) {
                return;
            }
            appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCreateAlbum.23.1
                @Override // java.lang.Runnable
                public final void run() {
                    AppCompatTextView appCompatTextView2;
                    int i4;
                    DialogCreateAlbum dialogCreateAlbum2 = DialogCreateAlbum.this;
                    if (dialogCreateAlbum2.i1 == null || (appCompatTextView2 = dialogCreateAlbum2.O0) == null) {
                        return;
                    }
                    appCompatTextView2.setText(MainUtil.h3(dialogCreateAlbum2.m1, dialogCreateAlbum2.l1));
                    dialogCreateAlbum2.P0.setProgress(dialogCreateAlbum2.m1);
                    if (dialogCreateAlbum2.n1 > 0) {
                        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogCreateAlbum2.n1, dialogCreateAlbum2.R0);
                        dialogCreateAlbum2.R0.setTextColor(-769226);
                        return;
                    }
                    dialogCreateAlbum2.R0.setText("0");
                    AppCompatTextView appCompatTextView3 = dialogCreateAlbum2.R0;
                    if (MainApp.K1) {
                        i4 = -328966;
                    } else {
                        i4 = -16777216;
                    }
                    appCompatTextView3.setTextColor(i4);
                }
            });
        }

        @Override // com.mycompany.app.compress.CompressUtil.CompressListener
        public final boolean isCancelled() {
            if (DialogCreateAlbum.this.i1 == null) {
                return true;
            }
            return false;
        }

        @Override // com.mycompany.app.compress.CompressUtil.CompressListener
        public final void c(String str) {
        }

        @Override // com.mycompany.app.compress.CompressUtil.CompressListener
        public final void b(long j, long j2, String str) {
        }
    }
}
