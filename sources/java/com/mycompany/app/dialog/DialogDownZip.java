package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
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
import com.mycompany.app.db.DbCmp;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.down.DownSaveZip;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.list.MainListAlbum;
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
public class DialogDownZip extends MyDialogBottom {
    public static final /* synthetic */ int z1 = 0;
    public MyLineText A0;
    public LinearLayout B0;
    public AppCompatTextView C0;
    public AppCompatTextView D0;
    public AppCompatTextView E0;
    public AppCompatTextView F0;
    public AppCompatTextView G0;
    public AppCompatTextView H0;
    public AppCompatTextView I0;
    public LinearLayout J0;
    public AppCompatTextView K0;
    public AppCompatTextView L0;
    public AppCompatTextView M0;
    public MyProgressBar N0;
    public AppCompatTextView O0;
    public AppCompatTextView P0;
    public AppCompatTextView Q0;
    public MyLineText R0;
    public String S0;
    public String T0;
    public String U0;
    public String V0;
    public boolean W0;
    public String X0;
    public String Y0;
    public List Z0;
    public MainActivity a0;
    public boolean a1;
    public Context b0;
    public ArrayList b1;
    public DialogSetFull.DialogApplyListener c0;
    public int c1;
    public String d0;
    public int d1;
    public MyDialogLinear e0;
    public int e1;
    public MyLineFrame f0;
    public boolean f1;
    public MyRoundImage g0;
    public ZipTask g1;
    public AppCompatTextView h0;
    public ArrayList h1;
    public NestedScrollView i0;
    public int i1;
    public AppCompatTextView j0;
    public int j1;
    public AppCompatTextView k0;
    public int k1;
    public AppCompatTextView l0;
    public ProgressMonitor l1;
    public AppCompatTextView m0;
    public ArrayList m1;
    public MyEditText n0;
    public String n1;
    public FrameLayout o0;
    public MyPopupMenu o1;
    public AppCompatTextView p0;
    public String p1;
    public AppCompatTextView q0;
    public String q1;
    public NestedScrollView r0;
    public boolean r1;
    public LinearLayout s0;
    public boolean s1;
    public AppCompatTextView t0;
    public GlideRequests t1;
    public AppCompatTextView u0;
    public String u1;
    public AppCompatTextView v0;
    public final RequestListener v1;
    public AppCompatTextView w0;
    public String w1;
    public AppCompatTextView x0;
    public final RequestListener x1;
    public AppCompatTextView y0;
    public final CompressUtil.CompressListener y1;
    public AppCompatTextView z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogDownZip$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass15 implements Runnable {
        public AnonymousClass15() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownZip dialogDownZip = DialogDownZip.this;
            if (dialogDownZip.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogDownZip.b0, e);
                dialogDownZip.n1 = MainUri.h(dialogDownZip.b0, e);
                Handler handler = dialogDownZip.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.15.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogDownZip dialogDownZip2 = DialogDownZip.this;
                        int i = DialogDownZip.z1;
                        dialogDownZip2.H(null);
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogDownZip$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            NestedScrollView nestedScrollView = DialogDownZip.this.r0;
            if (nestedScrollView != null) {
                nestedScrollView.e(130);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogDownZip$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass17 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f13387c;

        public AnonymousClass17(boolean z) {
            this.f13387c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            DialogDownZip dialogDownZip = DialogDownZip.this;
            if (dialogDownZip.M0 != null) {
                ArrayList arrayList = dialogDownZip.b1;
                if (arrayList != null && !arrayList.isEmpty()) {
                    dialogDownZip.c1 = dialogDownZip.b1.size();
                } else {
                    List list = dialogDownZip.Z0;
                    if (list != null && !list.isEmpty()) {
                        dialogDownZip.c1 = dialogDownZip.Z0.size();
                    }
                }
                dialogDownZip.a1 = true;
                dialogDownZip.d1 = 0;
                dialogDownZip.e1 = 0;
                dialogDownZip.h1 = null;
                dialogDownZip.G();
                dialogDownZip.setCanceledOnTouchOutside(false);
                dialogDownZip.r0.setVisibility(0);
                dialogDownZip.J0.setVisibility(0);
                dialogDownZip.K0.setText(R.string.verify_image);
                dialogDownZip.M0.setText(MainUtil.h3(0, dialogDownZip.c1));
                dialogDownZip.N0.setMax(dialogDownZip.c1);
                dialogDownZip.N0.setProgress(0.0f);
                dialogDownZip.P0.setText("0");
                AppCompatTextView appCompatTextView = dialogDownZip.P0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                appCompatTextView.setTextColor(i);
            }
            ArrayList arrayList2 = dialogDownZip.b1;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                DialogDownZip.C(dialogDownZip, dialogDownZip.b1, this.f13387c);
            } else {
                dialogDownZip.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.17.1
                    /* JADX WARN: Type inference failed for: r10v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                        DialogDownZip dialogDownZip2 = DialogDownZip.this;
                        if (dialogDownZip2.Z0 != null) {
                            ArrayList arrayList3 = new ArrayList();
                            int y0 = MainUtil.y0(dialogDownZip2.Z0.size());
                            String m0 = MainUtil.m0(dialogDownZip2.b0);
                            dialogDownZip2.p1 = m0;
                            if (!TextUtils.isEmpty(m0)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(dialogDownZip2.p1);
                                sb.append("/");
                                String p = android.support.v4.media.a.p(sb, dialogDownZip2.T0, "_");
                                String x0 = MainUtil.x0(y0);
                                Iterator it = dialogDownZip2.Z0.iterator();
                                int i2 = 1;
                                while (true) {
                                    if (it.hasNext()) {
                                        String str = (String) it.next();
                                        if (dialogDownZip2.Z0 == null) {
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
                                        obj.r = dialogDownZip2.d0;
                                        obj.g = t.toString();
                                        arrayList3.add(obj);
                                    } else {
                                        dialogDownZip2.b1 = arrayList3;
                                        new File(dialogDownZip2.p1).mkdir();
                                        break;
                                    }
                                }
                            }
                        }
                        ArrayList arrayList4 = dialogDownZip2.b1;
                        if (arrayList4 != null && !arrayList4.isEmpty()) {
                            DialogDownZip.C(dialogDownZip2, dialogDownZip2.b1, anonymousClass17.f13387c);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogDownZip$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements Runnable {
        public AnonymousClass20() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownZip dialogDownZip = DialogDownZip.this;
            ZipTask zipTask = new ZipTask(dialogDownZip);
            dialogDownZip.g1 = zipTask;
            zipTask.b(dialogDownZip.b0);
        }
    }

    /* loaded from: classes3.dex */
    public static class ZipTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public boolean g;

        public ZipTask(DialogDownZip dialogDownZip) {
            int i;
            WeakReference weakReference = new WeakReference(dialogDownZip);
            this.e = weakReference;
            DialogDownZip dialogDownZip2 = (DialogDownZip) weakReference.get();
            if (dialogDownZip2 != null) {
                ArrayList arrayList = dialogDownZip2.h1;
                this.f = arrayList;
                if (dialogDownZip2.s0 != null && arrayList != null && !arrayList.isEmpty()) {
                    dialogDownZip2.i1 = dialogDownZip2.h1.size();
                    dialogDownZip2.f1 = false;
                    dialogDownZip2.j1 = 0;
                    dialogDownZip2.k1 = 0;
                    dialogDownZip2.l1 = null;
                    dialogDownZip2.b1 = null;
                    dialogDownZip2.G();
                    dialogDownZip2.setCanceledOnTouchOutside(false);
                    dialogDownZip2.r0.setVisibility(0);
                    dialogDownZip2.s0.setVisibility(0);
                    dialogDownZip2.J0.setVisibility(0);
                    NestedScrollView nestedScrollView = dialogDownZip2.r0;
                    if (nestedScrollView != null) {
                        nestedScrollView.post(new AnonymousClass16());
                    }
                    dialogDownZip2.K0.setText(R.string.create_zip);
                    dialogDownZip2.M0.setText(MainUtil.h3(0, dialogDownZip2.i1));
                    dialogDownZip2.N0.setMax(dialogDownZip2.i1);
                    dialogDownZip2.N0.setProgress(0.0f);
                    dialogDownZip2.P0.setText("0");
                    AppCompatTextView appCompatTextView = dialogDownZip2.P0;
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
            DialogDownZip dialogDownZip;
            List<String> list;
            boolean z;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogDownZip = (DialogDownZip) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                if (!TextUtils.isEmpty(dialogDownZip.U0)) {
                    MainUtil.A(dialogDownZip.b0, dialogDownZip.U0);
                    DbCmp.e(dialogDownZip.b0, dialogDownZip.U0);
                }
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    if (!this.f12839c && str != null) {
                        arrayList.add(new File(str));
                    } else {
                        return;
                    }
                }
                String str2 = dialogDownZip.p1 + "/" + System.currentTimeMillis();
                MainUtil.A(dialogDownZip.b0, str2);
                CompressUtil.CompressListener compressListener = dialogDownZip.y1;
                try {
                    ZipFile zipFile = new ZipFile(str2);
                    zipFile.h(MainConst.J);
                    dialogDownZip.l1 = zipFile.e;
                    ZipParameters zipParameters = new ZipParameters();
                    zipParameters.l = compressListener;
                    zipParameters.f22013c = 8;
                    zipParameters.f = 5;
                    zipFile.a(arrayList, zipParameters);
                } catch (ZipException unused) {
                }
                if (compressListener != null) {
                    ProgressMonitor progressMonitor = dialogDownZip.l1;
                    if (progressMonitor != null && progressMonitor.d != 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ((AnonymousClass21) compressListener).a(null, z);
                }
                dialogDownZip.U0 = null;
                MainUri.UriItem c2 = MainUri.c(dialogDownZip.b0, MainUri.e(), null, android.support.v4.media.a.p(new StringBuilder(), dialogDownZip.T0, ".zip"));
                if (c2 != null) {
                    String str3 = c2.e;
                    dialogDownZip.U0 = str3;
                    boolean w6 = MainUtil.w6(dialogDownZip.b0, str2, str3);
                    this.g = w6;
                    if (w6) {
                        DbCmp.d(dialogDownZip.b0, c2);
                        dialogDownZip.q1 = c2.e;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogDownZip dialogDownZip;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogDownZip = (DialogDownZip) weakReference.get()) == null) {
                return;
            }
            dialogDownZip.g1 = null;
            dialogDownZip.l1 = null;
            dialogDownZip.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogDownZip dialogDownZip;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogDownZip = (DialogDownZip) weakReference.get()) != null) {
                if (!this.g) {
                    dialogDownZip.k1 = dialogDownZip.i1;
                }
                dialogDownZip.g1 = null;
                dialogDownZip.l1 = null;
                LinearLayout linearLayout = dialogDownZip.B0;
                if (linearLayout == null || linearLayout.getVisibility() == 0) {
                    return;
                }
                dialogDownZip.G();
                dialogDownZip.r0.setVisibility(0);
                dialogDownZip.s0.setVisibility(0);
                dialogDownZip.B0.setVisibility(0);
                NestedScrollView nestedScrollView = dialogDownZip.r0;
                if (nestedScrollView != null) {
                    nestedScrollView.post(new AnonymousClass16());
                }
                int i2 = dialogDownZip.i1 - dialogDownZip.k1;
                if (i2 < 0) {
                    i2 = 0;
                }
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogDownZip.i1, dialogDownZip.E0);
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogDownZip.k1, dialogDownZip.G0);
                dialogDownZip.I0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i2);
                int i3 = -14784824;
                if (dialogDownZip.k1 > 0) {
                    if (i2 == 0) {
                        dialogDownZip.G0.setTextColor(-769226);
                        dialogDownZip.Q0.setActivated(false);
                        dialogDownZip.Q0.setText(R.string.retry);
                        AppCompatTextView appCompatTextView = dialogDownZip.Q0;
                        if (MainApp.K1) {
                            i3 = -328966;
                        }
                        appCompatTextView.setTextColor(i3);
                        return;
                    }
                    dialogDownZip.f1 = true;
                    dialogDownZip.G0.setTextColor(-769226);
                    dialogDownZip.Q0.setActivated(false);
                    dialogDownZip.Q0.setText(R.string.list);
                    AppCompatTextView appCompatTextView2 = dialogDownZip.Q0;
                    if (MainApp.K1) {
                        i3 = -328966;
                    }
                    appCompatTextView2.setTextColor(i3);
                    dialogDownZip.R0.setVisibility(0);
                    return;
                }
                dialogDownZip.f1 = true;
                AppCompatTextView appCompatTextView3 = dialogDownZip.G0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                appCompatTextView3.setTextColor(i);
                dialogDownZip.Q0.setActivated(false);
                dialogDownZip.Q0.setText(R.string.list);
                AppCompatTextView appCompatTextView4 = dialogDownZip.Q0;
                if (MainApp.K1) {
                    i3 = -328966;
                }
                appCompatTextView4.setTextColor(i3);
            }
        }
    }

    public DialogDownZip(WebViewActivity webViewActivity, String str, List list, String str2, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(webViewActivity);
        this.v1 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogDownZip.12
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage = DialogDownZip.this.g0;
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
        this.x1 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogDownZip.14
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogDownZip dialogDownZip = DialogDownZip.this;
                MyRoundImage myRoundImage = dialogDownZip.g0;
                if (myRoundImage == null) {
                    return true;
                }
                myRoundImage.setLayerType(0, null);
                dialogDownZip.g0.o(-460552, R.drawable.outline_image_black_24);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                MyRoundImage myRoundImage = DialogDownZip.this.g0;
                if (myRoundImage != null) {
                    myRoundImage.setLayerType(1, null);
                }
            }
        };
        this.y1 = new AnonymousClass21();
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.d0 = str2;
        this.X0 = str;
        this.Z0 = list;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownZip dialogDownZip = DialogDownZip.this;
                if (dialogDownZip.b0 != null) {
                    dialogDownZip.Y0 = MainUtil.l3(186, dialogDownZip.X0, "Zip");
                    ArrayList n = MainUri.n(dialogDownZip.b0);
                    dialogDownZip.m1 = n;
                    PrefPath.r = MainUri.m(dialogDownZip.b0, PrefPath.r, n);
                    dialogDownZip.n1 = MainUri.h(dialogDownZip.b0, MainUri.e());
                    Handler handler = dialogDownZip.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownZip.B(DialogDownZip.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogDownZip dialogDownZip) {
        Context context = dialogDownZip.b0;
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
            AppCompatTextView i3 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            i3.setEllipsize(truncateAt);
            i3.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(MainApp.E1);
            myLineFrame.addView(i3, layoutParams2);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams3.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams3, context, 1);
            m.addView(g, -1, -2);
            int G2 = (int) MainUtil.G(context, 32.0f);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            int i4 = MainApp.E1;
            appCompatTextView.setPadding(i4, 0, i4, 0);
            appCompatTextView.setGravity(16);
            appCompatTextView.setTextSize(1, 14.0f);
            appCompatTextView.setText(R.string.exist_file);
            appCompatTextView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G2);
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            g.addView(appCompatTextView, layoutParams4);
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            myLineFrame2.setLinePad(MainApp.E1);
            myLineFrame2.setLineDn(true);
            g.addView(myLineFrame2, -1, MainApp.g1);
            AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            C.setText(R.string.image);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams5.setMarginStart(MainApp.E1);
            myLineFrame2.addView(C, layoutParams5);
            AppCompatTextView C2 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams6.gravity = 8388613;
            layoutParams6.setMarginEnd(MainApp.E1);
            myLineFrame2.addView(C2, layoutParams6);
            int G3 = (int) MainUtil.G(context, 12.0f);
            int G4 = (int) MainUtil.G(context, 88.0f);
            MyLineFrame myLineFrame3 = new MyLineFrame(context);
            int i5 = MainApp.E1;
            myLineFrame3.setPadding(i5, G3, i5, G3);
            myLineFrame3.setLinePad(MainApp.E1);
            myLineFrame3.setLineDn(true);
            g.addView(myLineFrame3, -1, G4);
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
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams7.gravity = 80;
            layoutParams7.setMarginEnd((int) MainUtil.G(context, 6.0f));
            myLineFrame3.addView(myEditText, layoutParams7);
            FrameLayout frameLayout = new FrameLayout(context);
            int i6 = MainApp.E1;
            frameLayout.setPadding(i6, i6, i6, i6);
            frameLayout.setMinimumHeight(MainApp.h1);
            g.addView(frameLayout, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams8.gravity = 16;
            frameLayout.addView(relativeLayout, layoutParams8);
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
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams9.weight = 1.0f;
            LinearLayout g2 = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, nestedScrollView, layoutParams9, context, 1);
            nestedScrollView.addView(g2, -1, -2);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            g2.addView(linearLayout, -1, -2);
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
            appCompatTextView4.setPaddingRelative(MainApp.E1, 0, 0, 0);
            appCompatTextView4.setGravity(16);
            appCompatTextView4.setTextSize(1, 14.0f);
            appCompatTextView4.setText(R.string.verify_image);
            linearLayout.addView(appCompatTextView4, -1, G2);
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout2, -1, -2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j2.setText(R.string.total);
            frameLayout2.addView(j2, -2, -2);
            AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams10.gravity = 8388613;
            frameLayout2.addView(j3, layoutParams10);
            FrameLayout frameLayout3 = new FrameLayout(context);
            frameLayout3.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout3, -1, -2);
            AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j4.setText(R.string.fail);
            frameLayout3.addView(j4, -2, -2);
            AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams11.gravity = 8388613;
            frameLayout3.addView(j5, layoutParams11);
            FrameLayout frameLayout4 = new FrameLayout(context);
            frameLayout4.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.addView(frameLayout4, -1, -2);
            AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j6.setText(R.string.success);
            frameLayout4.addView(j6, -2, -2);
            AppCompatTextView j7 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams12.gravity = 8388613;
            frameLayout4.addView(j7, layoutParams12);
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
            linearLayout2.addView(appCompatTextView5, -1, G2);
            FrameLayout frameLayout5 = new FrameLayout(context);
            frameLayout5.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout5, -1, -2);
            AppCompatTextView j8 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j8.setText(R.string.total);
            frameLayout5.addView(j8, -2, -2);
            AppCompatTextView j9 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams13.gravity = 8388613;
            frameLayout5.addView(j9, layoutParams13);
            FrameLayout frameLayout6 = new FrameLayout(context);
            frameLayout6.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout6, -1, -2);
            AppCompatTextView j10 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j10.setText(R.string.fail);
            frameLayout6.addView(j10, -2, -2);
            AppCompatTextView j11 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams14.gravity = 8388613;
            frameLayout6.addView(j11, layoutParams14);
            FrameLayout frameLayout7 = new FrameLayout(context);
            frameLayout7.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.addView(frameLayout7, -1, -2);
            AppCompatTextView j12 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j12.setText(R.string.success);
            frameLayout7.addView(j12, -2, -2);
            AppCompatTextView j13 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams15.gravity = 8388613;
            frameLayout7.addView(j13, layoutParams15);
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(1);
            linearLayout3.setVisibility(8);
            g2.addView(linearLayout3, -1, -2);
            AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
            appCompatTextView6.setPaddingRelative(MainApp.E1, 0, 0, 0);
            appCompatTextView6.setGravity(16);
            appCompatTextView6.setTextSize(1, 14.0f);
            linearLayout3.addView(appCompatTextView6, -1, G2);
            FrameLayout frameLayout8 = new FrameLayout(context);
            frameLayout8.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout3.addView(frameLayout8, -1, -2);
            AppCompatTextView j14 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j14.setText(R.string.total);
            frameLayout8.addView(j14, -2, -2);
            AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
            appCompatTextView7.setTextDirection(3);
            appCompatTextView7.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams16.gravity = 8388613;
            frameLayout8.addView(appCompatTextView7, layoutParams16);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, G3);
            layoutParams17.setMarginStart(MainApp.E1);
            layoutParams17.setMarginEnd(MainApp.E1);
            linearLayout3.addView(myProgressBar, layoutParams17);
            FrameLayout frameLayout9 = new FrameLayout(context);
            frameLayout9.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout3.addView(frameLayout9, -1, -2);
            AppCompatTextView j15 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j15.setText(R.string.fail);
            frameLayout9.addView(j15, -2, -2);
            AppCompatTextView j16 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams18.gravity = 8388613;
            frameLayout9.addView(j16, layoutParams18);
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
            LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(0, -1);
            layoutParams19.weight = 1.0f;
            AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams19, context, null);
            l.setGravity(17);
            l.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(0, -1);
            layoutParams20.weight = 1.0f;
            myLineLinear.addView(l, layoutParams20);
            dialogDownZip.e0 = q;
            dialogDownZip.f0 = myLineFrame;
            dialogDownZip.g0 = myRoundImage;
            dialogDownZip.h0 = i3;
            dialogDownZip.i0 = m;
            dialogDownZip.j0 = appCompatTextView;
            dialogDownZip.k0 = C;
            dialogDownZip.l0 = C2;
            dialogDownZip.m0 = j;
            dialogDownZip.n0 = myEditText;
            dialogDownZip.o0 = frameLayout;
            dialogDownZip.p0 = appCompatTextView2;
            dialogDownZip.q0 = appCompatTextView3;
            dialogDownZip.r0 = nestedScrollView;
            dialogDownZip.s0 = linearLayout;
            dialogDownZip.t0 = appCompatTextView4;
            dialogDownZip.u0 = j2;
            dialogDownZip.v0 = j3;
            dialogDownZip.w0 = j4;
            dialogDownZip.x0 = j5;
            dialogDownZip.y0 = j6;
            dialogDownZip.z0 = j7;
            dialogDownZip.A0 = myLineText;
            dialogDownZip.B0 = linearLayout2;
            dialogDownZip.C0 = appCompatTextView5;
            dialogDownZip.D0 = j8;
            dialogDownZip.E0 = j9;
            dialogDownZip.F0 = j10;
            dialogDownZip.G0 = j11;
            dialogDownZip.H0 = j12;
            dialogDownZip.I0 = j13;
            dialogDownZip.J0 = linearLayout3;
            dialogDownZip.K0 = appCompatTextView6;
            dialogDownZip.L0 = j14;
            dialogDownZip.M0 = appCompatTextView7;
            dialogDownZip.N0 = myProgressBar;
            dialogDownZip.O0 = j15;
            dialogDownZip.P0 = j16;
            dialogDownZip.Q0 = l;
            dialogDownZip.R0 = s;
            Handler handler = dialogDownZip.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i7;
                    final DialogDownZip dialogDownZip2 = DialogDownZip.this;
                    if (dialogDownZip2.e0 != null && dialogDownZip2.b0 != null) {
                        dialogDownZip2.m0.setText(R.string.name);
                        dialogDownZip2.p0.setText(R.string.down_location);
                        dialogDownZip2.C0.setText(R.string.create_zip);
                        dialogDownZip2.Q0.setText(R.string.create_zip);
                        if (MainApp.K1) {
                            dialogDownZip2.h0.setTextColor(-328966);
                            dialogDownZip2.j0.setTextColor(-2434342);
                            dialogDownZip2.j0.setBackgroundColor(-12632257);
                            dialogDownZip2.k0.setTextColor(-328966);
                            dialogDownZip2.l0.setTextColor(-328966);
                            dialogDownZip2.m0.setTextColor(-4079167);
                            dialogDownZip2.n0.setTextColor(-328966);
                            dialogDownZip2.o0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogDownZip2.p0.setTextColor(-4079167);
                            dialogDownZip2.q0.setTextColor(-328966);
                            dialogDownZip2.t0.setTextColor(-2434342);
                            dialogDownZip2.t0.setBackgroundColor(-12632257);
                            dialogDownZip2.u0.setTextColor(-328966);
                            dialogDownZip2.v0.setTextColor(-328966);
                            dialogDownZip2.w0.setTextColor(-328966);
                            dialogDownZip2.x0.setTextColor(-328966);
                            dialogDownZip2.y0.setTextColor(-328966);
                            dialogDownZip2.z0.setTextColor(-328966);
                            dialogDownZip2.A0.setTextColor(-328966);
                            dialogDownZip2.C0.setTextColor(-2434342);
                            dialogDownZip2.C0.setBackgroundColor(-12632257);
                            dialogDownZip2.D0.setTextColor(-328966);
                            dialogDownZip2.E0.setTextColor(-328966);
                            dialogDownZip2.F0.setTextColor(-328966);
                            dialogDownZip2.G0.setTextColor(-328966);
                            dialogDownZip2.H0.setTextColor(-328966);
                            dialogDownZip2.I0.setTextColor(-328966);
                            dialogDownZip2.K0.setTextColor(-2434342);
                            dialogDownZip2.K0.setBackgroundColor(-12632257);
                            dialogDownZip2.L0.setTextColor(-328966);
                            dialogDownZip2.M0.setTextColor(-328966);
                            dialogDownZip2.O0.setTextColor(-328966);
                            dialogDownZip2.P0.setTextColor(-328966);
                            dialogDownZip2.R0.setTextColor(-328966);
                            dialogDownZip2.R0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogDownZip2.Q0.setTextColor(-328966);
                            dialogDownZip2.Q0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogDownZip2.h0.setTextColor(-16777216);
                            dialogDownZip2.j0.setTextColor(-12303292);
                            dialogDownZip2.j0.setBackgroundColor(-460552);
                            dialogDownZip2.k0.setTextColor(-16777216);
                            dialogDownZip2.l0.setTextColor(-16777216);
                            dialogDownZip2.m0.setTextColor(-10395295);
                            dialogDownZip2.n0.setTextColor(-16777216);
                            dialogDownZip2.o0.setBackgroundResource(R.drawable.selector_normal);
                            dialogDownZip2.p0.setTextColor(-10395295);
                            dialogDownZip2.q0.setTextColor(-16777216);
                            dialogDownZip2.t0.setTextColor(-12303292);
                            dialogDownZip2.t0.setBackgroundColor(-460552);
                            dialogDownZip2.u0.setTextColor(-16777216);
                            dialogDownZip2.v0.setTextColor(-16777216);
                            dialogDownZip2.w0.setTextColor(-16777216);
                            dialogDownZip2.x0.setTextColor(-16777216);
                            dialogDownZip2.y0.setTextColor(-16777216);
                            dialogDownZip2.z0.setTextColor(-16777216);
                            dialogDownZip2.A0.setTextColor(-16777216);
                            dialogDownZip2.C0.setTextColor(-12303292);
                            dialogDownZip2.C0.setBackgroundColor(-460552);
                            dialogDownZip2.D0.setTextColor(-16777216);
                            dialogDownZip2.E0.setTextColor(-16777216);
                            dialogDownZip2.F0.setTextColor(-16777216);
                            dialogDownZip2.G0.setTextColor(-16777216);
                            dialogDownZip2.H0.setTextColor(-16777216);
                            dialogDownZip2.I0.setTextColor(-16777216);
                            dialogDownZip2.K0.setTextColor(-12303292);
                            dialogDownZip2.K0.setBackgroundColor(-460552);
                            dialogDownZip2.L0.setTextColor(-16777216);
                            dialogDownZip2.M0.setTextColor(-16777216);
                            dialogDownZip2.O0.setTextColor(-16777216);
                            dialogDownZip2.P0.setTextColor(-16777216);
                            dialogDownZip2.R0.setTextColor(-14784824);
                            dialogDownZip2.R0.setBackgroundResource(R.drawable.selector_normal);
                            dialogDownZip2.Q0.setTextColor(-14784824);
                            dialogDownZip2.Q0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        List list = dialogDownZip2.Z0;
                        if (list != null) {
                            i7 = list.size();
                        } else {
                            i7 = 0;
                        }
                        dialogDownZip2.l0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i7);
                        dialogDownZip2.h0.setText(dialogDownZip2.X0);
                        dialogDownZip2.H(dialogDownZip2.Y0);
                        dialogDownZip2.n0.setSelectAllOnFocus(true);
                        dialogDownZip2.n0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownZip.3
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                if (!dialogDownZip3.W0 && editable != null && !MainUtil.q5(dialogDownZip3.V0, editable.toString())) {
                                    dialogDownZip3.W0 = true;
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                            }
                        });
                        dialogDownZip2.n0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownZip.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                MyEditText myEditText2 = dialogDownZip3.n0;
                                if (myEditText2 == null || dialogDownZip3.r1) {
                                    return true;
                                }
                                dialogDownZip3.r1 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogDownZip dialogDownZip4 = DialogDownZip.this;
                                        int i9 = DialogDownZip.z1;
                                        dialogDownZip4.I();
                                        DialogDownZip.this.r1 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogDownZip2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownZip.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                ArrayList arrayList = dialogDownZip3.m1;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    MyPopupMenu myPopupMenu = dialogDownZip3.o1;
                                    if (myPopupMenu == null) {
                                        if (myPopupMenu != null) {
                                            dialogDownZip3.Y = null;
                                            myPopupMenu.a();
                                            dialogDownZip3.o1 = null;
                                        }
                                        if (dialogDownZip3.a0 != null && view != null && dialogDownZip3.m1 != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            ArrayList arrayList3 = dialogDownZip3.m1;
                                            int size = arrayList3.size();
                                            int i8 = 0;
                                            int i9 = 0;
                                            while (i9 < size) {
                                                Object obj = arrayList3.get(i9);
                                                i9++;
                                                arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, MainUri.o(dialogDownZip3.b0, (String) obj)));
                                                i8++;
                                            }
                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, R.string.direct_select));
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogDownZip3.a0, dialogDownZip3.e0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogDownZip.22
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i10 = DialogDownZip.z1;
                                                    DialogDownZip dialogDownZip4 = DialogDownZip.this;
                                                    MyPopupMenu myPopupMenu3 = dialogDownZip4.o1;
                                                    if (myPopupMenu3 != null) {
                                                        dialogDownZip4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogDownZip4.o1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view2, int i10) {
                                                    DialogDownZip dialogDownZip4 = DialogDownZip.this;
                                                    ArrayList arrayList4 = dialogDownZip4.m1;
                                                    if (arrayList4 != null && i10 < arrayList4.size()) {
                                                        String str = (String) dialogDownZip4.m1.get(i10);
                                                        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                            return true;
                                                        }
                                                        PrefPath.r = str;
                                                        dialogDownZip4.s(new AnonymousClass15());
                                                        return true;
                                                    }
                                                    MainUtil.F4(dialogDownZip4.a0, MainUri.e());
                                                    return true;
                                                }
                                            });
                                            dialogDownZip3.o1 = myPopupMenu2;
                                            dialogDownZip3.Y = myPopupMenu2;
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                MainUtil.F4(dialogDownZip3.a0, MainUri.e());
                            }
                        });
                        dialogDownZip2.Q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownZip.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                AppCompatTextView appCompatTextView8 = dialogDownZip3.Q0;
                                if (appCompatTextView8 != null) {
                                    if (appCompatTextView8.isActivated()) {
                                        dialogDownZip3.F();
                                    } else {
                                        if (dialogDownZip3.r1) {
                                            return;
                                        }
                                        dialogDownZip3.r1 = true;
                                        dialogDownZip3.Q0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.6.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogDownZip dialogDownZip4 = DialogDownZip.this;
                                                if (dialogDownZip4.a0 != null) {
                                                    if (dialogDownZip4.f1) {
                                                        String str = dialogDownZip4.q1;
                                                        PrefPath.k = str;
                                                        PrefSet.c(6, dialogDownZip4.b0, "mCmpPath", str);
                                                        Intent intent = new Intent(dialogDownZip4.b0, (Class<?>) MainListAlbum.class);
                                                        intent.putExtra("EXTRA_TYPE", 3);
                                                        dialogDownZip4.a0.startActivity(intent);
                                                        dialogDownZip4.dismiss();
                                                    } else {
                                                        ArrayList arrayList = dialogDownZip4.h1;
                                                        if (arrayList != null && !arrayList.isEmpty()) {
                                                            dialogDownZip4.D();
                                                            AppCompatTextView appCompatTextView9 = dialogDownZip4.Q0;
                                                            if (appCompatTextView9 != null) {
                                                                appCompatTextView9.post(new AnonymousClass20());
                                                            }
                                                        } else {
                                                            ArrayList arrayList2 = dialogDownZip4.b1;
                                                            if (arrayList2 != null && !arrayList2.isEmpty()) {
                                                                AppCompatTextView appCompatTextView10 = dialogDownZip4.Q0;
                                                                if (appCompatTextView10 != null) {
                                                                    appCompatTextView10.post(new AnonymousClass17(false));
                                                                }
                                                            } else {
                                                                dialogDownZip4.I();
                                                            }
                                                        }
                                                    }
                                                }
                                                dialogDownZip4.r1 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogDownZip2.R0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownZip.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                ArrayList arrayList = dialogDownZip3.b1;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    AppCompatTextView appCompatTextView8 = dialogDownZip3.Q0;
                                    if (appCompatTextView8 != null) {
                                        appCompatTextView8.post(new AnonymousClass17(true));
                                        return;
                                    }
                                    return;
                                }
                                ArrayList arrayList2 = dialogDownZip3.h1;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    dialogDownZip3.D();
                                    AppCompatTextView appCompatTextView9 = dialogDownZip3.Q0;
                                    if (appCompatTextView9 != null) {
                                        appCompatTextView9.post(new AnonymousClass20());
                                    }
                                }
                            }
                        });
                        dialogDownZip2.g(dialogDownZip2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownZip.8
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                final DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                if (dialogDownZip3.e0 != null) {
                                    dialogDownZip3.show();
                                    Handler handler2 = dialogDownZip3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.9
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogDownZip dialogDownZip4 = DialogDownZip.this;
                                            List list2 = dialogDownZip4.Z0;
                                            if (list2 != null && !list2.isEmpty()) {
                                                String str = (String) dialogDownZip4.Z0.get(0);
                                                MyRoundImage myRoundImage2 = dialogDownZip4.g0;
                                                if (myRoundImage2 != null) {
                                                    myRoundImage2.o(-460552, R.drawable.outline_image_black_24);
                                                    if (Compress.I(MainUtil.V3(str, null, null, true))) {
                                                        dialogDownZip4.w1 = str;
                                                        dialogDownZip4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.13
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogDownZip dialogDownZip5 = DialogDownZip.this;
                                                                MainActivity mainActivity = dialogDownZip5.a0;
                                                                if (mainActivity != null) {
                                                                    if (dialogDownZip5.t1 == null) {
                                                                        dialogDownZip5.t1 = GlideApp.a(mainActivity);
                                                                    }
                                                                    Handler handler3 = dialogDownZip5.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.13.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogDownZip dialogDownZip6 = DialogDownZip.this;
                                                                            String str2 = dialogDownZip6.w1;
                                                                            dialogDownZip6.w1 = null;
                                                                            if (dialogDownZip6.t1 == null) {
                                                                                return;
                                                                            }
                                                                            if (URLUtil.isNetworkUrl(str2)) {
                                                                                ((GlideRequest) ((GlideRequest) dialogDownZip6.t1.b(PictureDrawable.class)).O(MainUtil.A1(dialogDownZip6.b0, str2, dialogDownZip6.d0))).I(dialogDownZip6.x1).E(dialogDownZip6.g0);
                                                                                return;
                                                                            }
                                                                            ((GlideRequest) ((GlideRequest) dialogDownZip6.t1.b(PictureDrawable.class)).O(str2)).I(dialogDownZip6.x1).E(dialogDownZip6.g0);
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    } else {
                                                        dialogDownZip4.u1 = str;
                                                        dialogDownZip4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.11
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogDownZip dialogDownZip5 = DialogDownZip.this;
                                                                MainActivity mainActivity = dialogDownZip5.a0;
                                                                if (mainActivity != null) {
                                                                    if (dialogDownZip5.t1 == null) {
                                                                        dialogDownZip5.t1 = GlideApp.a(mainActivity);
                                                                    }
                                                                    Handler handler3 = dialogDownZip5.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.11.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogDownZip dialogDownZip6 = DialogDownZip.this;
                                                                            String str2 = dialogDownZip6.u1;
                                                                            dialogDownZip6.u1 = null;
                                                                            if (dialogDownZip6.t1 == null) {
                                                                                return;
                                                                            }
                                                                            boolean isNetworkUrl = URLUtil.isNetworkUrl(str2);
                                                                            DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                                                            if (isNetworkUrl) {
                                                                                ((RequestBuilder) dialogDownZip6.t1.t(MainUtil.A1(dialogDownZip6.b0, str2, dialogDownZip6.d0)).e(diskCacheStrategy)).I(dialogDownZip6.v1).E(dialogDownZip6.g0);
                                                                            } else {
                                                                                ((RequestBuilder) dialogDownZip6.t1.u(str2).e(diskCacheStrategy)).I(dialogDownZip6.v1).E(dialogDownZip6.g0);
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
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogDownZip dialogDownZip, final ArrayList arrayList, boolean z) {
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
            final MainDownSvc.DownZipListener downZipListener = new MainDownSvc.DownZipListener() { // from class: com.mycompany.app.dialog.DialogDownZip.18
                @Override // com.mycompany.app.main.MainDownSvc.DownZipListener
                public final Handler a() {
                    return DialogDownZip.this.i;
                }

                @Override // com.mycompany.app.main.MainDownSvc.DownZipListener
                public final void b(List list) {
                    if (list != null) {
                        Iterator it = list.iterator();
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            boolean hasNext = it.hasNext();
                            DialogDownZip dialogDownZip2 = DialogDownZip.this;
                            if (hasNext) {
                                MainItem.ChildItem childItem = (MainItem.ChildItem) it.next();
                                if (dialogDownZip2.a1) {
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
                                dialogDownZip2.d1 = i5;
                                dialogDownZip2.e1 = i6;
                                if (dialogDownZip2.c1 < 0) {
                                    dialogDownZip2.c1 = 0;
                                }
                                int i8 = dialogDownZip2.c1;
                                if (i5 > i8) {
                                    dialogDownZip2.d1 = i8;
                                }
                                if (i6 > i8) {
                                    dialogDownZip2.e1 = i8;
                                }
                                if (i5 < list.size()) {
                                    if (!dialogDownZip2.s1) {
                                        dialogDownZip2.s1 = true;
                                        AppCompatTextView appCompatTextView = dialogDownZip2.M0;
                                        if (appCompatTextView != null) {
                                            appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.18.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AppCompatTextView appCompatTextView2;
                                                    int i9;
                                                    DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                                    if (dialogDownZip3.a1 && (appCompatTextView2 = dialogDownZip3.M0) != null) {
                                                        appCompatTextView2.setText(MainUtil.h3(dialogDownZip3.d1, dialogDownZip3.c1));
                                                        dialogDownZip3.N0.setProgress(dialogDownZip3.d1);
                                                        if (dialogDownZip3.e1 > 0) {
                                                            AppCompatTextView appCompatTextView3 = dialogDownZip3.P0;
                                                            StringBuilder sb = new StringBuilder();
                                                            com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogDownZip3.b0, R.string.not_loaded, sb, "    ");
                                                            com.google.android.gms.internal.mlkit_vision_text_common.a.B(sb, dialogDownZip3.e1, appCompatTextView3);
                                                            dialogDownZip3.P0.setTextColor(-769226);
                                                        } else {
                                                            dialogDownZip3.P0.setText("0");
                                                            AppCompatTextView appCompatTextView4 = dialogDownZip3.P0;
                                                            if (MainApp.K1) {
                                                                i9 = -328966;
                                                            } else {
                                                                i9 = -16777216;
                                                            }
                                                            appCompatTextView4.setTextColor(i9);
                                                        }
                                                    }
                                                    dialogDownZip3.s1 = false;
                                                }
                                            });
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (dialogDownZip2.a1) {
                                    dialogDownZip2.a1 = false;
                                    if (dialogDownZip2.c1 > dialogDownZip2.e1) {
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = list.iterator();
                                        while (it2.hasNext()) {
                                            MainItem.ChildItem childItem2 = (MainItem.ChildItem) it2.next();
                                            if (childItem2 != null && childItem2.d == 3) {
                                                arrayList2.add(childItem2.g);
                                            }
                                        }
                                        dialogDownZip2.h1 = arrayList2;
                                    }
                                    AppCompatTextView appCompatTextView2 = dialogDownZip2.M0;
                                    if (appCompatTextView2 == null) {
                                        return;
                                    }
                                    appCompatTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.18.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i9;
                                            int i10;
                                            DialogDownZip dialogDownZip3 = DialogDownZip.this;
                                            if (dialogDownZip3.s0 != null) {
                                                dialogDownZip3.G();
                                                dialogDownZip3.r0.setVisibility(0);
                                                dialogDownZip3.s0.setVisibility(0);
                                                ArrayList arrayList3 = dialogDownZip3.h1;
                                                if (arrayList3 != null) {
                                                    i9 = arrayList3.size();
                                                } else {
                                                    i9 = 0;
                                                }
                                                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogDownZip3.c1, dialogDownZip3.v0);
                                                dialogDownZip3.z0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i9);
                                                int i11 = -16777216;
                                                int i12 = -328966;
                                                if (dialogDownZip3.e1 > 0) {
                                                    AppCompatTextView appCompatTextView3 = dialogDownZip3.x0;
                                                    StringBuilder sb = new StringBuilder();
                                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogDownZip3.b0, R.string.not_loaded, sb, "    ");
                                                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(sb, dialogDownZip3.e1, appCompatTextView3);
                                                    dialogDownZip3.x0.setTextColor(-769226);
                                                } else {
                                                    dialogDownZip3.x0.setText("0");
                                                    AppCompatTextView appCompatTextView4 = dialogDownZip3.x0;
                                                    if (MainApp.K1) {
                                                        i10 = -328966;
                                                    } else {
                                                        i10 = -16777216;
                                                    }
                                                    appCompatTextView4.setTextColor(i10);
                                                }
                                                if (dialogDownZip3.e1 > 0) {
                                                    if (i9 == 0) {
                                                        dialogDownZip3.Q0.setActivated(false);
                                                        dialogDownZip3.Q0.setText(R.string.retry);
                                                        AppCompatTextView appCompatTextView5 = dialogDownZip3.Q0;
                                                        if (!MainApp.K1) {
                                                            i12 = -14784824;
                                                        }
                                                        appCompatTextView5.setTextColor(i12);
                                                        return;
                                                    }
                                                    dialogDownZip3.Q0.setActivated(false);
                                                    dialogDownZip3.Q0.setText(R.string.create_zip);
                                                    AppCompatTextView appCompatTextView6 = dialogDownZip3.Q0;
                                                    if (!MainApp.K1) {
                                                        i12 = -14784824;
                                                    }
                                                    appCompatTextView6.setTextColor(i12);
                                                    dialogDownZip3.R0.setVisibility(0);
                                                    return;
                                                }
                                                if (i9 == 0) {
                                                    dialogDownZip3.Q0.setActivated(true);
                                                    dialogDownZip3.Q0.setText(R.string.close);
                                                    AppCompatTextView appCompatTextView7 = dialogDownZip3.Q0;
                                                    if (MainApp.K1) {
                                                        i11 = -328966;
                                                    }
                                                    appCompatTextView7.setTextColor(i11);
                                                    dialogDownZip3.A0.setVisibility(0);
                                                    NestedScrollView nestedScrollView = dialogDownZip3.r0;
                                                    if (nestedScrollView != null) {
                                                        nestedScrollView.post(new AnonymousClass16());
                                                        return;
                                                    }
                                                    return;
                                                }
                                                ArrayList arrayList4 = dialogDownZip3.h1;
                                                if (arrayList4 != null && !arrayList4.isEmpty()) {
                                                    dialogDownZip3.D();
                                                    AppCompatTextView appCompatTextView8 = dialogDownZip3.Q0;
                                                    if (appCompatTextView8 != null) {
                                                        appCompatTextView8.post(new AnonymousClass20());
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
                    return DialogDownZip.this.a1;
                }
            };
            if (z) {
                int size2 = arrayList.size();
                int i5 = 0;
                while (i5 < size2) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    MainItem.ChildItem childItem = (MainItem.ChildItem) obj;
                    if (dialogDownZip.a1) {
                        if (childItem != null && childItem.d != 3) {
                            childItem.d = 1;
                        }
                    } else {
                        return;
                    }
                }
            }
            for (final int i6 = 0; i6 < i2 && dialogDownZip.a1; i6++) {
                dialogDownZip.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownSaveZip.b(DialogDownZip.this.b0, arrayList, i4, i6, i2, downZipListener);
                    }
                });
            }
        }
    }

    public final void D() {
        ProgressMonitor progressMonitor = this.l1;
        if (progressMonitor != null) {
            progressMonitor.e = true;
        }
        ZipTask zipTask = this.g1;
        if (zipTask != null) {
            zipTask.f12839c = true;
        }
        this.g1 = null;
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
                    s(new AnonymousClass15());
                }
                MainUtil.z7(this.b0, data);
            }
            return true;
        }
        return false;
    }

    public final void F() {
        int i;
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear == null) {
            dismiss();
            return;
        }
        this.a1 = false;
        if (this.g1 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.Q0.setEnabled(false);
            this.Q0.setActivated(true);
            this.Q0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.Q0;
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

    public final void G() {
        int i;
        if (this.f0 == null) {
            return;
        }
        setCanceledOnTouchOutside(true);
        this.f0.setDrawLine(false);
        this.i0.setVisibility(8);
        this.r0.setVisibility(8);
        this.s0.setVisibility(8);
        this.B0.setVisibility(8);
        this.J0.setVisibility(8);
        this.R0.setVisibility(8);
        this.Q0.setActivated(true);
        this.Q0.setText(R.string.cancel);
        AppCompatTextView appCompatTextView = this.Q0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
    }

    public final void H(String str) {
        String str2;
        int i;
        if (this.n0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.S0 = str;
        }
        if (this.W0) {
            str2 = MainUtil.Q0(this.n0, true);
        } else {
            str2 = this.S0;
        }
        String p3 = MainUtil.p3(str2);
        if (TextUtils.isEmpty(MainUri.e())) {
            this.V0 = p3;
            this.n0.setText(p3);
            this.q0.setText(R.string.not_selected);
            this.q0.setTextColor(-769226);
            this.f0.setDrawLine(true);
            this.j0.setVisibility(8);
            return;
        }
        this.q0.setText(this.n1);
        AppCompatTextView appCompatTextView = this.q0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        if (TextUtils.isEmpty(p3)) {
            this.V0 = p3;
            this.n0.setText(p3);
            this.f0.setDrawLine(true);
            this.j0.setVisibility(8);
            return;
        }
        String b4 = MainUtil.b4(p3, ".zip");
        MainUri.e();
        this.f0.setDrawLine(true);
        this.j0.setVisibility(8);
        String k1 = MainUtil.k1(b4);
        this.V0 = k1;
        this.n0.setText(k1);
    }

    public final void I() {
        if (this.b0 != null && this.n0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(this.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(this.n0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(this.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(this.b0, R.string.long_name);
                return;
            }
            String b4 = MainUtil.b4(Q0, ".zip");
            if (TextUtils.isEmpty(b4)) {
                MainUtil.e8(this.b0, R.string.input_name);
                return;
            }
            String p3 = MainUtil.p3(b4);
            MainUri.e();
            MainUtil.X4(this.b0, this.n0);
            this.T0 = MainUtil.k1(p3);
            AppCompatTextView appCompatTextView = this.Q0;
            if (appCompatTextView != null) {
                appCompatTextView.post(new AnonymousClass17(false));
            }
            DialogSetFull.DialogApplyListener dialogApplyListener = this.c0;
            if (dialogApplyListener != null) {
                dialogApplyListener.a();
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        F();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        this.a1 = false;
        D();
        MyPopupMenu myPopupMenu = this.o1;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.o1 = null;
        }
        final String str = this.p1;
        this.p1 = null;
        if (!TextUtils.isEmpty(str)) {
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.10
                @Override // java.lang.Runnable
                public final void run() {
                    MainUtil.z(str);
                }
            });
        }
        GlideRequests glideRequests = this.t1;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.g0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.t1 = null;
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
        MyEditText myEditText = this.n0;
        if (myEditText != null) {
            myEditText.c();
            this.n0 = null;
        }
        MyLineText myLineText = this.A0;
        if (myLineText != null) {
            myLineText.u();
            this.A0 = null;
        }
        MyProgressBar myProgressBar = this.N0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.N0 = null;
        }
        MyLineText myLineText2 = this.R0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.R0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
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
        this.M0 = null;
        this.O0 = null;
        this.P0 = null;
        this.Q0 = null;
        this.S0 = null;
        this.T0 = null;
        this.U0 = null;
        this.V0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.Z0 = null;
        this.b1 = null;
        this.h1 = null;
        this.l1 = null;
        this.m1 = null;
        this.n1 = null;
        this.q1 = null;
        super.dismiss();
    }

    /* renamed from: com.mycompany.app.dialog.DialogDownZip$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass21 implements CompressUtil.CompressListener {
        public AnonymousClass21() {
        }

        @Override // com.mycompany.app.compress.CompressUtil.CompressListener
        public final void a(String str, boolean z) {
            DialogDownZip dialogDownZip = DialogDownZip.this;
            int i = dialogDownZip.j1 + 1;
            dialogDownZip.j1 = i;
            int i2 = dialogDownZip.i1;
            if (i > i2) {
                dialogDownZip.j1 = i2;
            }
            if (!z) {
                int i3 = dialogDownZip.k1 + 1;
                dialogDownZip.k1 = i3;
                if (i3 > i2) {
                    dialogDownZip.k1 = i2;
                }
            }
            AppCompatTextView appCompatTextView = dialogDownZip.M0;
            if (appCompatTextView == null) {
                return;
            }
            appCompatTextView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownZip.21.1
                @Override // java.lang.Runnable
                public final void run() {
                    AppCompatTextView appCompatTextView2;
                    int i4;
                    DialogDownZip dialogDownZip2 = DialogDownZip.this;
                    if (dialogDownZip2.g1 == null || (appCompatTextView2 = dialogDownZip2.M0) == null) {
                        return;
                    }
                    appCompatTextView2.setText(MainUtil.h3(dialogDownZip2.j1, dialogDownZip2.i1));
                    dialogDownZip2.N0.setProgress(dialogDownZip2.j1);
                    if (dialogDownZip2.k1 > 0) {
                        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogDownZip2.k1, dialogDownZip2.P0);
                        dialogDownZip2.P0.setTextColor(-769226);
                        return;
                    }
                    dialogDownZip2.P0.setText("0");
                    AppCompatTextView appCompatTextView3 = dialogDownZip2.P0;
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
            if (DialogDownZip.this.g1 == null) {
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
