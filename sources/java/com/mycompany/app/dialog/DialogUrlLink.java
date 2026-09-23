package com.mycompany.app.dialog;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Executors;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.drag.DragListView;
import com.mycompany.app.fragment.FragmentDragView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDragAdapter;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyDialogLink;
import com.mycompany.app.view.MyGlideTarget;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLinkView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressDrawable;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebViewActivity;
import org.json.JSONObject;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class DialogUrlLink extends MyDialogBottom {
    public static final /* synthetic */ int c1 = 0;
    public MyLineLinear A0;
    public MyLineText B0;
    public AppCompatTextView C0;
    public TabLayout D0;
    public ViewPager2 E0;
    public ViewPager2.OnPageChangeCallback F0;
    public MyLinkView G0;
    public MyLinkView H0;
    public MyLineText I0;
    public MainListLoader J0;
    public DisplayImageOptions K0;
    public GlideRequests L0;
    public boolean M0;
    public ShareTask N0;
    public DialogSetPopup O0;
    public int P0;
    public boolean Q0;
    public String R0;
    public MyPopupMenu S0;
    public boolean T0;
    public int U0;
    public int V0;
    public final RequestListener W0;
    public final RequestListener X0;
    public final MyGlideTarget Y0;
    public String Z0;
    public WebViewActivity a0;
    public String a1;
    public Context b0;
    public int b1;
    public String c0;
    public String d0;
    public String d1;
    public boolean e1;
    public String e0;
    public String f0;
    public String g0;
    public String h0;
    public String i0;
    public String j0;
    public boolean k0;
    public boolean l0;
    public int m0;
    public final boolean n0;
    public boolean o0;
    public boolean p0;
    public final int q0;
    public int r0;
    public int s0;
    public int t0;
    public UrlLinkListener u0;
    public MyDialogLink v0;
    public MyRoundImage w0;
    public MyRoundImage x0;
    public AppCompatTextView y0;
    public MyButtonImage z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass15 implements MyDialogBottom.BotViewListener {
        public AnonymousClass15() {
        }

        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
        public final void a(View view) {
            Context context;
            final DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            int i = dialogUrlLink.q0;
            if (i != 4 && i != 9) {
                if (dialogUrlLink.t != null && dialogUrlLink.v0 != null && (context = dialogUrlLink.b0) != null) {
                    MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
                    r.setLinePad(MainApp.E1);
                    r.setLineUp(true);
                    dialogUrlLink.I0 = r;
                    if (MainApp.K1) {
                        r.setBackgroundResource(R.drawable.selector_list_back_dark);
                        dialogUrlLink.I0.setTextColor(-328966);
                    } else {
                        r.setBackgroundResource(R.drawable.selector_list_back);
                        dialogUrlLink.I0.setTextColor(-14784824);
                    }
                    dialogUrlLink.I0.setFilterColor(MainUtil.l1());
                    dialogUrlLink.I0.setText(R.string.close);
                    dialogUrlLink.I0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            DialogUrlLink.this.dismiss();
                        }
                    });
                    try {
                        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                        layoutParams.f611c = 80;
                        dialogUrlLink.t.addView(r, layoutParams);
                        Handler handler = dialogUrlLink.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.18
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogUrlLink.C(DialogUrlLink.this);
                                }
                            });
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        Handler handler2 = dialogUrlLink.i;
                        if (handler2 != null) {
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.17
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogUrlLink.this.dismiss();
                                }
                            });
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            DialogUrlLink.C(dialogUrlLink);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$23, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass23 implements Runnable {
        public AnonymousClass23() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            WebViewActivity webViewActivity = dialogUrlLink.a0;
            if (webViewActivity != null) {
                if (dialogUrlLink.L0 == null) {
                    dialogUrlLink.L0 = GlideApp.a(webViewActivity);
                }
                Handler handler = dialogUrlLink.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.23.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                        if (dialogUrlLink2.L0 == null || TextUtils.isEmpty(dialogUrlLink2.f0)) {
                            return;
                        }
                        if (URLUtil.isNetworkUrl(dialogUrlLink2.f0)) {
                            String str = dialogUrlLink2.j0;
                            if (dialogUrlLink2.M0) {
                                boolean z = MainConst.f16452a;
                                str = null;
                            }
                            ((GlideRequest) ((GlideRequest) dialogUrlLink2.L0.b(PictureDrawable.class)).O(MainUtil.A1(dialogUrlLink2.b0, dialogUrlLink2.f0, str))).I(dialogUrlLink2.X0).E(dialogUrlLink2.x0);
                            return;
                        }
                        ((GlideRequest) ((GlideRequest) dialogUrlLink2.L0.b(PictureDrawable.class)).O(dialogUrlLink2.f0)).I(dialogUrlLink2.X0).E(dialogUrlLink2.x0);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$27, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass27 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$33, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass33 implements Runnable {
        public AnonymousClass33() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            WebViewActivity webViewActivity = dialogUrlLink.a0;
            if (webViewActivity != null) {
                if (dialogUrlLink.L0 == null) {
                    dialogUrlLink.L0 = GlideApp.a(webViewActivity);
                }
                Handler handler = dialogUrlLink.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.33.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                        if (dialogUrlLink2.L0 == null || TextUtils.isEmpty(dialogUrlLink2.f0)) {
                            return;
                        }
                        boolean isNetworkUrl = URLUtil.isNetworkUrl(dialogUrlLink2.f0);
                        Executor executor = Executors.f2488a;
                        if (isNetworkUrl) {
                            String str = dialogUrlLink2.j0;
                            if (dialogUrlLink2.M0) {
                                boolean z = MainConst.f16452a;
                                str = null;
                            }
                            GlideRequest glideRequest = (GlideRequest) ((GlideRequest) dialogUrlLink2.L0.n()).O(MainUtil.A1(dialogUrlLink2.b0, dialogUrlLink2.f0, str));
                            glideRequest.H(new MyGlideTarget<File>() { // from class: com.mycompany.app.dialog.DialogUrlLink.33.1.1
                                @Override // com.bumptech.glide.request.target.Target
                                public final void a(Object obj, Transition transition) {
                                    File file = (File) obj;
                                    DialogUrlLink dialogUrlLink3 = DialogUrlLink.this;
                                    if (dialogUrlLink3.v0 != null) {
                                        String str2 = dialogUrlLink3.f0;
                                        ShareTask shareTask = dialogUrlLink3.N0;
                                        if (shareTask != null) {
                                            shareTask.f12839c = true;
                                        }
                                        dialogUrlLink3.N0 = null;
                                        Handler handler2 = dialogUrlLink3.i;
                                        if (handler2 == null) {
                                            return;
                                        }
                                        handler2.post(new AnonymousClass36(str2, file, null, null));
                                    }
                                }

                                @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
                                public final void g(Drawable drawable) {
                                    AnonymousClass33 anonymousClass33 = AnonymousClass33.this;
                                    MyDialogLink myDialogLink = DialogUrlLink.this.v0;
                                    if (myDialogLink == null) {
                                        return;
                                    }
                                    myDialogLink.b(false);
                                    MainUtil.e8(DialogUrlLink.this.b0, R.string.image_fail);
                                }
                            }, null, glideRequest, executor);
                            return;
                        }
                        GlideRequest glideRequest2 = (GlideRequest) ((GlideRequest) dialogUrlLink2.L0.d()).O(dialogUrlLink2.f0);
                        glideRequest2.H(new MyGlideTarget<Bitmap>() { // from class: com.mycompany.app.dialog.DialogUrlLink.33.1.2
                            @Override // com.bumptech.glide.request.target.Target
                            public final void a(Object obj, Transition transition) {
                                Bitmap bitmap = (Bitmap) obj;
                                DialogUrlLink dialogUrlLink3 = DialogUrlLink.this;
                                if (dialogUrlLink3.v0 != null) {
                                    String str2 = dialogUrlLink3.f0;
                                    ShareTask shareTask = dialogUrlLink3.N0;
                                    if (shareTask != null) {
                                        shareTask.f12839c = true;
                                    }
                                    dialogUrlLink3.N0 = null;
                                    Handler handler2 = dialogUrlLink3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new AnonymousClass36(str2, null, bitmap, null));
                                }
                            }

                            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
                            public final void g(Drawable drawable) {
                                AnonymousClass33 anonymousClass33 = AnonymousClass33.this;
                                MyDialogLink myDialogLink = DialogUrlLink.this.v0;
                                if (myDialogLink == null) {
                                    return;
                                }
                                myDialogLink.b(false);
                                MainUtil.e8(DialogUrlLink.this.b0, R.string.image_fail);
                            }
                        }, null, glideRequest2, executor);
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$36, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass36 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f14995c;
        public final /* synthetic */ File f;
        public final /* synthetic */ Bitmap g;
        public final /* synthetic */ PictureDrawable h;

        public AnonymousClass36(String str, File file, Bitmap bitmap, PictureDrawable pictureDrawable) {
            this.f14995c = str;
            this.f = file;
            this.g = bitmap;
            this.h = pictureDrawable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            if (dialogUrlLink.b0 == null) {
                return;
            }
            dialogUrlLink.N0 = new ShareTask(dialogUrlLink, this.f14995c, this.f, this.g, this.h);
            dialogUrlLink.N0.b(dialogUrlLink.b0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogUrlLink$37, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass37 implements DialogSetFull.DialogApplyListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f14996a;

        public AnonymousClass37(int i) {
            this.f14996a = i;
        }

        @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
        public final void a() {
            int i;
            Handler handler;
            int i2 = this.f14996a;
            DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            if (i2 == 0) {
                MyLinkView myLinkView = dialogUrlLink.G0;
                if (myLinkView != null) {
                    myLinkView.setItems(dialogUrlLink.I(false));
                } else {
                    return;
                }
            } else {
                MyLinkView myLinkView2 = dialogUrlLink.H0;
                if (myLinkView2 != null) {
                    myLinkView2.setItems(dialogUrlLink.I(true));
                } else {
                    return;
                }
            }
            if (dialogUrlLink.p0) {
                i = dialogUrlLink.s0;
            } else {
                i = dialogUrlLink.r0;
            }
            if (dialogUrlLink.b1 == i || (handler = dialogUrlLink.i) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.37.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUrlLink.F(DialogUrlLink.this);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class ShareTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final File g;
        public Bitmap h;
        public final PictureDrawable i;
        public String j;
        public boolean k;

        public ShareTask(DialogUrlLink dialogUrlLink, String str, File file, Bitmap bitmap, PictureDrawable pictureDrawable) {
            WeakReference weakReference = new WeakReference(dialogUrlLink);
            this.e = weakReference;
            if (((DialogUrlLink) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = file;
            this.h = bitmap;
            this.i = pictureDrawable;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogUrlLink dialogUrlLink;
            Context context;
            String str;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogUrlLink = (DialogUrlLink) weakReference.get()) != null && !this.f12839c) {
                String str2 = this.f;
                if (!TextUtils.isEmpty(str2) && (context = dialogUrlLink.b0) != null) {
                    String V3 = MainUtil.V3(str2, null, null, true);
                    PictureDrawable pictureDrawable = this.i;
                    if (pictureDrawable != null) {
                        this.h = MainUtil.H(pictureDrawable, 0);
                    }
                    if (MainUtil.f6(this.h)) {
                        if (!Compress.C(V3, true, true)) {
                            if (this.h.hasAlpha()) {
                                str = "image/png";
                            } else {
                                str = "image/jpg";
                            }
                            V3 = MainUtil.V3(str2, null, str, true);
                        }
                        String k0 = MainUtil.k0(context, V3);
                        this.j = k0;
                        boolean p = MainUtil.p(context, this.h, k0);
                        this.k = p;
                        if (p && dialogUrlLink.T0) {
                            dialogUrlLink.Z0 = MainUtil.G2(0);
                            dialogUrlLink.a1 = MainUtil.G2(1);
                            return;
                        }
                        return;
                    }
                    File file = this.g;
                    if (file != null && file.length() > 0) {
                        String path = file.getPath();
                        if (!Compress.C(V3, true, true)) {
                            V3 = MainUtil.V3(str2, null, "image/".concat(MainUtil.S0(path)), true);
                        }
                        String k02 = MainUtil.k0(context, V3);
                        this.j = k02;
                        boolean u = MainUtil.u(path, k02);
                        this.k = u;
                        if (u && dialogUrlLink.T0) {
                            dialogUrlLink.Z0 = MainUtil.G2(0);
                            dialogUrlLink.a1 = MainUtil.G2(1);
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogUrlLink dialogUrlLink;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogUrlLink = (DialogUrlLink) weakReference.get()) != null) {
                dialogUrlLink.N0 = null;
                MyDialogLink myDialogLink = dialogUrlLink.v0;
                if (myDialogLink != null) {
                    myDialogLink.b(false);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogUrlLink dialogUrlLink;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogUrlLink = (DialogUrlLink) weakReference.get()) == null) {
                return;
            }
            dialogUrlLink.N0 = null;
            MyDialogLink myDialogLink = dialogUrlLink.v0;
            if (myDialogLink != null) {
                myDialogLink.b(false);
            }
            if (!this.k) {
                MainUtil.e8(dialogUrlLink.b0, R.string.image_fail);
                return;
            }
            String str = this.j;
            if (!dialogUrlLink.T0) {
                MainUtil.Z7(4, dialogUrlLink.a0, str, null, null);
            } else {
                WebViewActivity webViewActivity = dialogUrlLink.a0;
                String str2 = dialogUrlLink.Z0;
                String str3 = dialogUrlLink.a1;
                boolean lensStarted = false;
                if (webViewActivity != null && !TextUtils.isEmpty(str2)) {
                    try {
                        Intent intent = new Intent("android.intent.action.SEND");
                        // Package-only: LensShareEntryPointActivity is gone on newer Google
                        // builds; setPackage still routes image/* into Lens share.
                        intent.setPackage(str2);
                        intent.setType("image/*");
                        intent.putExtra("android.intent.extra.STREAM", MainUtil.R3(webViewActivity, str));
                        intent.addFlags(3);
                        webViewActivity.startActivity(intent);
                        lensStarted = true;
                    } catch (ActivityNotFoundException | Exception unused) {
                        if (!TextUtils.isEmpty(str3)) {
                            try {
                                Intent intent2 = new Intent("android.intent.action.SEND");
                                intent2.setComponent(new ComponentName(str2, str3));
                                intent2.setType("image/*");
                                intent2.putExtra("android.intent.extra.STREAM", MainUtil.R3(webViewActivity, str));
                                intent2.addFlags(3);
                                webViewActivity.startActivity(intent2);
                                lensStarted = true;
                            } catch (ActivityNotFoundException | Exception unused2) {
                            }
                        }
                    }
                }
                // Web fallback only when Lens Intent is unavailable.
                if (!lensStarted) {
                    UrlLinkListener urlLinkListener = dialogUrlLink.u0;
                    if (urlLinkListener != null) {
                        urlLinkListener.c(dialogUrlLink.f0, 6, 0, dialogUrlLink.i0, dialogUrlLink.n0, null);
                    }
                }
            }
            dialogUrlLink.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public interface UrlLinkListener {
        void a(int i, String str, String str2);

        int b();

        void c(String str, int i, int i2, String str2, boolean z, String str3);

        String d();
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ void n(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            View view;
            DialogUrlLink dialogUrlLink = DialogUrlLink.this;
            if (i == 0) {
                view = dialogUrlLink.G0;
            } else {
                view = dialogUrlLink.H0;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                dialogUrlLink.dismiss();
            }
            int i2 = DialogUrlLink.c1;
            if (view == null) {
                try {
                    View view2 = new View(dialogUrlLink.b0);
                    try {
                        view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    } catch (Exception unused2) {
                    }
                    view = view2;
                } catch (Exception unused3) {
                }
            }
            return new RecyclerView.ViewHolder(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    public DialogUrlLink(WebViewActivity webViewActivity, int i, String str, String str2, boolean z, String str3, String str4, int i2, UrlLinkListener urlLinkListener) {
        super(webViewActivity, i);
        this.W0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogUrlLink.22
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                if (dialogUrlLink.x0 != null) {
                    if (URLUtil.isNetworkUrl(dialogUrlLink.f0) && !dialogUrlLink.M0) {
                        dialogUrlLink.M0 = true;
                        Handler handler = dialogUrlLink.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.22.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogUrlLink.D(DialogUrlLink.this);
                                }
                            });
                            return true;
                        }
                    } else {
                        dialogUrlLink.x0.o(-460552, R.drawable.outline_image_black_24);
                        return true;
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final /* bridge */ /* synthetic */ void d(Object obj) {
            }
        };
        this.X0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogUrlLink.24
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                if (dialogUrlLink.x0 != null) {
                    if (URLUtil.isNetworkUrl(dialogUrlLink.f0) && !dialogUrlLink.M0) {
                        dialogUrlLink.M0 = true;
                        Handler handler = dialogUrlLink.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.24.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                                    int i3 = DialogUrlLink.c1;
                                    if (dialogUrlLink2.x0 == null || TextUtils.isEmpty(dialogUrlLink2.f0)) {
                                        return;
                                    }
                                    dialogUrlLink2.s(new AnonymousClass23());
                                }
                            });
                            return true;
                        }
                    } else {
                        dialogUrlLink.x0.setLayerType(0, null);
                        dialogUrlLink.x0.o(-460552, R.drawable.outline_image_black_24);
                        return true;
                    }
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                MyRoundImage myRoundImage = DialogUrlLink.this.x0;
                if (myRoundImage != null) {
                    myRoundImage.setLayerType(1, null);
                }
            }
        };
        this.Y0 = new MyGlideTarget<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogUrlLink.35
            @Override // com.bumptech.glide.request.target.Target
            public final void a(Object obj, Transition transition) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                if (dialogUrlLink.v0 != null) {
                    String str5 = dialogUrlLink.f0;
                    ShareTask shareTask = dialogUrlLink.N0;
                    if (shareTask != null) {
                        shareTask.f12839c = true;
                    }
                    dialogUrlLink.N0 = null;
                    Handler handler = dialogUrlLink.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new AnonymousClass36(str5, null, null, pictureDrawable));
                }
            }

            @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
            public final void g(Drawable drawable) {
                DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                MyDialogLink myDialogLink = dialogUrlLink.v0;
                if (myDialogLink == null) {
                    return;
                }
                myDialogLink.b(false);
                MainUtil.e8(dialogUrlLink.b0, R.string.image_fail);
            }
        };
        this.x = true;
        this.a0 = webViewActivity;
        Context context = getContext();
        this.b0 = context;
        this.c0 = str;
        this.f0 = str2;
        this.n0 = z;
        this.i0 = str3;
        this.j0 = str4;
        this.u0 = urlLinkListener;
        int iLinkTab = PrefWeb.c0;
        if (iLinkTab == 0) {
            this.p0 = false;
        } else if (iLinkTab == 1) {
            this.p0 = true;
        } else {
            this.p0 = PrefZone.J;
        }
        this.q0 = i2;
        if (i2 != 4 && i2 != 9) {
            this.w = MainApp.g1;
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.1
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    if (!TextUtils.isEmpty(dialogUrlLink.c0)) {
                        dialogUrlLink.k0 = true;
                        String str5 = dialogUrlLink.c0;
                        String D0 = MainUtil.D0(str5);
                        if (!TextUtils.isEmpty(D0)) {
                            str5 = D0;
                        }
                        if (str5 != null && str5.length() > 100) {
                            str5 = str5.substring(0, 100);
                        }
                        dialogUrlLink.d0 = str5;
                        String str6 = dialogUrlLink.c0;
                        String I1 = MainUtil.I1(str6, true);
                        if (!TextUtils.isEmpty(I1)) {
                            if (I1.length() > 2 && I1.startsWith(".", 1)) {
                                str6 = I1.substring(2);
                            } else if (I1.length() > 4 && I1.startsWith("www.")) {
                                str6 = I1.substring(4);
                            } else {
                                str6 = I1;
                            }
                        }
                        dialogUrlLink.e0 = MainUtil.y2(str6, null);
                    }
                    if (!TextUtils.isEmpty(dialogUrlLink.f0)) {
                        dialogUrlLink.l0 = true;
                        String str7 = dialogUrlLink.f0;
                        String D02 = MainUtil.D0(str7);
                        if (!TextUtils.isEmpty(D02)) {
                            str7 = D02;
                        }
                        if (str7 != null && str7.length() > 100) {
                            str7 = str7.substring(0, 100);
                        }
                        dialogUrlLink.g0 = str7;
                    }
                    Handler handler = dialogUrlLink.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                            Context context2 = dialogUrlLink2.b0;
                            if (context2 != null) {
                                MyDialogLink myDialogLink = new MyDialogLink(context2);
                                myDialogLink.setPadding(0, 0, 0, MainApp.G1);
                                myDialogLink.setOrientation(1);
                                FrameLayout frameLayout = new FrameLayout(context2);
                                int G = (int) MainUtil.G(context2, 72.0f);
                                dialogUrlLink2.U0 = G;
                                myDialogLink.addView(frameLayout, -1, G);
                                MyRoundImage myRoundImage = new MyRoundImage(context2);
                                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
                                myRoundImage.setScaleType(scaleType);
                                myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                                myRoundImage.setVisibility(8);
                                int i3 = MainApp.f1;
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
                                layoutParams.setMarginStart(MainApp.E1);
                                layoutParams.gravity = 8388627;
                                frameLayout.addView(myRoundImage, layoutParams);
                                MyRoundImage myRoundImage2 = new MyRoundImage(context2);
                                myRoundImage2.setScaleType(scaleType);
                                myRoundImage2.setCircleRadius(MainApp.f1 / 2.0f);
                                myRoundImage2.setVisibility(8);
                                int i4 = MainApp.f1;
                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i4, i4);
                                layoutParams2.setMarginStart(MainApp.E1);
                                layoutParams2.gravity = 8388627;
                                frameLayout.addView(myRoundImage2, layoutParams2);
                                AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
                                appCompatTextView.setMaxLines(2);
                                appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                                appCompatTextView.setTextSize(1, 16.0f);
                                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
                                layoutParams3.setMarginStart((int) MainUtil.G(context2, 72.0f));
                                layoutParams3.setMarginEnd(MainApp.h1);
                                layoutParams3.gravity = 8388627;
                                frameLayout.addView(appCompatTextView, layoutParams3);
                                MyButtonImage myButtonImage = new MyButtonImage(context2);
                                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                int i5 = MainApp.g1;
                                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
                                layoutParams4.setMarginEnd(MainApp.F1);
                                layoutParams4.gravity = 8388629;
                                frameLayout.addView(myButtonImage, layoutParams4);
                                if (dialogUrlLink2.k0 && dialogUrlLink2.l0) {
                                    MyLineLinear myLineLinear = new MyLineLinear(context2);
                                    myLineLinear.setBaselineAligned(false);
                                    myLineLinear.setOrientation(0);
                                    myLineLinear.setLinePad(MainApp.E1);
                                    myLineLinear.setLineUp(true);
                                    myLineLinear.setVisibility(8);
                                    myDialogLink.addView(myLineLinear, -1, MainApp.g1);
                                    MyLineText myLineText = new MyLineText(context2);
                                    myLineText.setGravity(17);
                                    myLineText.setTextSize(1, 16.0f);
                                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(myLineText, R.string.link, context2, 0, -1);
                                    f.weight = 1.0f;
                                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, myLineText, f, context2, null);
                                    l.setGravity(17);
                                    l.setTextSize(1, 16.0f);
                                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.image, 0, -1);
                                    e.weight = 1.0f;
                                    myLineLinear.addView(l, e);
                                    TabLayout tabLayout = new TabLayout(context2);
                                    tabLayout.setTabMode(1);
                                    tabLayout.setTabGravity(0);
                                    tabLayout.setVisibility(8);
                                    dialogUrlLink2.V0 = (int) MainUtil.G(context2, 2.0f);
                                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, dialogUrlLink2.V0);
                                    layoutParams5.setMarginStart(MainApp.E1);
                                    layoutParams5.setMarginEnd(MainApp.E1);
                                    myDialogLink.addView(tabLayout, layoutParams5);
                                    dialogUrlLink2.A0 = myLineLinear;
                                    dialogUrlLink2.B0 = myLineText;
                                    dialogUrlLink2.C0 = l;
                                    dialogUrlLink2.D0 = tabLayout;
                                }
                                dialogUrlLink2.v0 = myDialogLink;
                                dialogUrlLink2.w0 = myRoundImage;
                                dialogUrlLink2.x0 = myRoundImage2;
                                dialogUrlLink2.y0 = appCompatTextView;
                                dialogUrlLink2.z0 = myButtonImage;
                                Handler handler2 = dialogUrlLink2.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogUrlLink dialogUrlLink3 = DialogUrlLink.this;
                                        MyDialogLink myDialogLink2 = dialogUrlLink3.v0;
                                        if (myDialogLink2 != null && dialogUrlLink3.b0 != null) {
                                            if (MainApp.K1) {
                                                myDialogLink2.setBackColor(-14606047);
                                                dialogUrlLink3.y0.setTextColor(-328966);
                                                dialogUrlLink3.z0.setImageResource(R.drawable.outline_settings_dark_20);
                                                dialogUrlLink3.z0.setBgPreColor(-12632257);
                                            } else {
                                                myDialogLink2.setBackColor(-1);
                                                dialogUrlLink3.y0.setTextColor(-16777216);
                                                dialogUrlLink3.z0.setImageResource(R.drawable.outline_settings_black_20);
                                                dialogUrlLink3.z0.setBgPreColor(-2039584);
                                            }
                                            dialogUrlLink3.z0.setAlpha(1.0f);
                                            dialogUrlLink3.L(!dialogUrlLink3.k0);
                                            dialogUrlLink3.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.4
                                                /* JADX WARN: Type inference failed for: r0v7, types: [com.mycompany.app.dialog.DialogSetPopup, android.app.Dialog, com.mycompany.app.view.MyDialogBottom] */
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    DialogSetPopup dialogSetPopup;
                                                    int i6;
                                                    final DialogUrlLink dialogUrlLink4 = DialogUrlLink.this;
                                                    if (dialogUrlLink4.a0 == null || (dialogSetPopup = dialogUrlLink4.O0) != null) {
                                                        return;
                                                    }
                                                    if (dialogSetPopup != null) {
                                                        dialogSetPopup.dismiss();
                                                        dialogUrlLink4.O0 = null;
                                                    }
                                                    int i7 = 1;
                                                    if (!dialogUrlLink4.k0 || !dialogUrlLink4.l0 ? !dialogUrlLink4.l0 : !dialogUrlLink4.p0) {
                                                        i7 = 0;
                                                    }
                                                    if (dialogUrlLink4.p0) {
                                                        i6 = dialogUrlLink4.s0;
                                                    } else {
                                                        i6 = dialogUrlLink4.r0;
                                                    }
                                                    dialogUrlLink4.b1 = i6;
                                                    WebViewActivity webViewActivity2 = dialogUrlLink4.a0;
                                                    AnonymousClass37 anonymousClass37 = new AnonymousClass37(i7);
                                                    final ?? myDialogBottom = new MyDialogBottom(webViewActivity2);
                                                    myDialogBottom.a0 = webViewActivity2;
                                                    myDialogBottom.b0 = myDialogBottom.getContext();
                                                    myDialogBottom.c0 = anonymousClass37;
                                                    myDialogBottom.d0 = i7;
                                                    if (i7 == 0) {
                                                        myDialogBottom.l0 = PrefZone.e0;
                                                        myDialogBottom.m0 = PrefZone.g0;
                                                    } else {
                                                        myDialogBottom.l0 = PrefZone.f0;
                                                        myDialogBottom.m0 = PrefZone.h0;
                                                    }
                                                    myDialogBottom.n0 = myDialogBottom.C(false);
                                                    Handler handler3 = myDialogBottom.i;
                                                    if (handler3 != null) {
                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPopup.1
                                                            /* JADX WARN: Multi-variable type inference failed */
                                                            /* JADX WARN: Type inference failed for: r7v6, types: [com.mycompany.app.drag.DragListView, android.view.View, android.widget.AbsListView, android.widget.ListView, com.mycompany.app.fragment.FragmentDragView] */
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                final DialogSetPopup dialogSetPopup2 = DialogSetPopup.this;
                                                                Context context3 = dialogSetPopup2.b0;
                                                                if (context3 != null) {
                                                                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context3, 1);
                                                                    MyLineText myLineText2 = new MyLineText(context3);
                                                                    int i8 = MainApp.E1;
                                                                    myLineText2.setPadding(i8, 0, i8, 0);
                                                                    myLineText2.setGravity(8388627);
                                                                    myLineText2.setSingleLine(true);
                                                                    myLineText2.setTextSize(1, 16.0f);
                                                                    myLineText2.setText(R.string.edit);
                                                                    myLineText2.q(MainApp.E1);
                                                                    q.addView(myLineText2, -1, MainApp.g1);
                                                                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context3, null, 2);
                                                                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
                                                                    layoutParams6.weight = 1.0f;
                                                                    q.addView(m, layoutParams6);
                                                                    FrameLayout frameLayout2 = new FrameLayout(context3);
                                                                    int i9 = -2;
                                                                    m.addView(frameLayout2, -1, -2);
                                                                    if (dialogSetPopup2.n0 != null) {
                                                                        i9 = Math.round(MainUtil.G(dialogSetPopup2.b0, 52.0f) * dialogSetPopup2.n0.size());
                                                                    }
                                                                    ?? dragListView = new DragListView(context3);
                                                                    dragListView.v();
                                                                    dragListView.setDivider(null);
                                                                    dragListView.setVerticalScrollBarEnabled(true);
                                                                    dragListView.setHorizontalScrollBarEnabled(false);
                                                                    dragListView.setSelector(new ColorDrawable(0));
                                                                    frameLayout2.addView((View) dragListView, -1, i9);
                                                                    MyLineLinear myLineLinear2 = new MyLineLinear(context3);
                                                                    myLineLinear2.setBaselineAligned(false);
                                                                    myLineLinear2.setOrientation(0);
                                                                    myLineLinear2.setLinePad(MainApp.E1);
                                                                    myLineLinear2.setLineUp(true);
                                                                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear2, -1, MainApp.g1, context3);
                                                                    s.setGravity(17);
                                                                    s.setTextSize(1, 16.0f);
                                                                    LinearLayout.LayoutParams f2 = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context3, 0, -1);
                                                                    f2.weight = 1.0f;
                                                                    AppCompatTextView l2 = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear2, s, f2, context3, null);
                                                                    l2.setGravity(17);
                                                                    l2.setTextSize(1, 16.0f);
                                                                    LinearLayout.LayoutParams e2 = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l2, R.string.apply, 0, -1);
                                                                    e2.weight = 1.0f;
                                                                    myLineLinear2.addView(l2, e2);
                                                                    dialogSetPopup2.e0 = q;
                                                                    dialogSetPopup2.f0 = myLineText2;
                                                                    dialogSetPopup2.g0 = dragListView;
                                                                    dialogSetPopup2.h0 = l2;
                                                                    dialogSetPopup2.i0 = s;
                                                                    Handler handler4 = dialogSetPopup2.i;
                                                                    if (handler4 == null) {
                                                                        return;
                                                                    }
                                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPopup.2
                                                                        /* JADX WARN: Multi-variable type inference failed */
                                                                        /* JADX WARN: Type inference failed for: r1v8, types: [android.widget.ArrayAdapter, com.mycompany.app.main.MainDragAdapter, android.widget.ListAdapter] */
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            final DialogSetPopup dialogSetPopup3 = DialogSetPopup.this;
                                                                            if (dialogSetPopup3.e0 != null && dialogSetPopup3.b0 != null) {
                                                                                if (MainApp.K1) {
                                                                                    dialogSetPopup3.f0.setTextColor(-328966);
                                                                                    dialogSetPopup3.h0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                                                    dialogSetPopup3.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                                                    dialogSetPopup3.h0.setTextColor(-328966);
                                                                                    dialogSetPopup3.i0.setTextColor(-328966);
                                                                                } else {
                                                                                    dialogSetPopup3.f0.setTextColor(-16777216);
                                                                                    dialogSetPopup3.h0.setBackgroundResource(R.drawable.selector_list_back);
                                                                                    dialogSetPopup3.i0.setBackgroundResource(R.drawable.selector_list_back);
                                                                                    dialogSetPopup3.h0.setTextColor(-14784824);
                                                                                    dialogSetPopup3.i0.setTextColor(-16777216);
                                                                                }
                                                                                WebViewActivity webViewActivity3 = dialogSetPopup3.a0;
                                                                                FragmentDragView fragmentDragView = dialogSetPopup3.g0;
                                                                                ArrayList arrayList = dialogSetPopup3.n0;
                                                                                MainDragAdapter.MainDragListener mainDragListener = new MainDragAdapter.MainDragListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.3
                                                                                    @Override // com.mycompany.app.main.MainDragAdapter.MainDragListener
                                                                                    public final void a(int i10, boolean z2) {
                                                                                        DialogSetPopup.B(DialogSetPopup.this, i10, z2);
                                                                                    }
                                                                                };
                                                                                ?? arrayAdapter = new ArrayAdapter(webViewActivity3, 0, arrayList);
                                                                                arrayAdapter.f16533c = webViewActivity3;
                                                                                arrayAdapter.f = fragmentDragView;
                                                                                arrayAdapter.g = arrayList;
                                                                                arrayAdapter.h = mainDragListener;
                                                                                dialogSetPopup3.j0 = arrayAdapter;
                                                                                dialogSetPopup3.g0.setAdapter((ListAdapter) arrayAdapter);
                                                                                dialogSetPopup3.g0.setDragEnabled(true);
                                                                                dialogSetPopup3.g0.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.4
                                                                                    @Override // android.widget.AdapterView.OnItemClickListener
                                                                                    public final void onItemClick(AdapterView adapterView, View view2, int i10, long j) {
                                                                                        DialogSetPopup dialogSetPopup4 = DialogSetPopup.this;
                                                                                        MainDragAdapter mainDragAdapter = dialogSetPopup4.j0;
                                                                                        if (mainDragAdapter == null) {
                                                                                            return;
                                                                                        }
                                                                                        DialogSetPopup.B(dialogSetPopup4, (int) j, mainDragAdapter.c(i10));
                                                                                    }
                                                                                });
                                                                                dialogSetPopup3.g0.setDropListener(new DragListView.DropListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.5
                                                                                    @Override // com.mycompany.app.drag.DragListView.DropListener
                                                                                    public final void a(int i10, int i11) {
                                                                                        ArrayList arrayList2;
                                                                                        int size;
                                                                                        DialogSetPopup dialogSetPopup4 = DialogSetPopup.this;
                                                                                        MainDragAdapter mainDragAdapter = dialogSetPopup4.j0;
                                                                                        if (mainDragAdapter != null && (arrayList2 = mainDragAdapter.g) != null && i10 >= 0) {
                                                                                            int i12 = 0;
                                                                                            if (i11 < 0) {
                                                                                                if (i10 != 0) {
                                                                                                    i11 = 0;
                                                                                                } else {
                                                                                                    return;
                                                                                                }
                                                                                            } else if (i11 > arrayList2.size() - 1 && mainDragAdapter.g.size() - 1 == i10) {
                                                                                                return;
                                                                                            }
                                                                                            MainDragAdapter.MainDragItem item = mainDragAdapter.getItem(i10);
                                                                                            if (item != null) {
                                                                                                mainDragAdapter.g.remove(i10);
                                                                                                mainDragAdapter.g.add(i11, item);
                                                                                                mainDragAdapter.notifyDataSetChanged();
                                                                                                MainDragAdapter mainDragAdapter2 = dialogSetPopup4.j0;
                                                                                                ArrayList arrayList3 = mainDragAdapter2.g;
                                                                                                String str8 = null;
                                                                                                if (arrayList3 != null && (size = arrayList3.size()) != 0) {
                                                                                                    StringBuilder sb = new StringBuilder();
                                                                                                    while (true) {
                                                                                                        if (i12 < size) {
                                                                                                            MainDragAdapter.MainDragItem mainDragItem = (MainDragAdapter.MainDragItem) mainDragAdapter2.g.get(i12);
                                                                                                            if (mainDragItem == null) {
                                                                                                                break;
                                                                                                            }
                                                                                                            sb.append(mainDragItem.f16535a);
                                                                                                            if (i12 < size - 1) {
                                                                                                                sb.append("/");
                                                                                                            }
                                                                                                            i12++;
                                                                                                        } else {
                                                                                                            str8 = sb.toString();
                                                                                                            break;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                if (!TextUtils.isEmpty(str8)) {
                                                                                                    dialogSetPopup4.m0 = str8;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                });
                                                                                dialogSetPopup3.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.6
                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int[] iArr = DialogSetPopup.o0;
                                                                                        DialogSetPopup.this.E(true);
                                                                                    }
                                                                                });
                                                                                dialogSetPopup3.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.7
                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        final DialogSetPopup dialogSetPopup4 = DialogSetPopup.this;
                                                                                        if (dialogSetPopup4.a0 == null || dialogSetPopup4.k0 != null) {
                                                                                            return;
                                                                                        }
                                                                                        dialogSetPopup4.D();
                                                                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetPopup4.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.9
                                                                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                                                            public final void a() {
                                                                                                int[] iArr = DialogSetPopup.o0;
                                                                                                DialogSetPopup dialogSetPopup5 = DialogSetPopup.this;
                                                                                                dialogSetPopup5.D();
                                                                                                if (dialogSetPopup5.j0 == null) {
                                                                                                    return;
                                                                                                }
                                                                                                int defaultMask = dialogSetPopup5.d0 == 0 ? 16382 : 8190;
                                                                                                if (dialogSetPopup5.l0 != defaultMask || !MainUtil.q5(dialogSetPopup5.m0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                                                                                                    dialogSetPopup5.l0 = defaultMask;
                                                                                                    dialogSetPopup5.m0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                                                    ArrayList C = dialogSetPopup5.C(true);
                                                                                                    MainDragAdapter mainDragAdapter = dialogSetPopup5.j0;
                                                                                                    mainDragAdapter.g = C;
                                                                                                    mainDragAdapter.notifyDataSetChanged();
                                                                                                    dialogSetPopup5.F();
                                                                                                }
                                                                                                dialogSetPopup5.E(false);
                                                                                            }
                                                                                        });
                                                                                        dialogSetPopup4.k0 = dialogSetMsg;
                                                                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.10
                                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                                int[] iArr = DialogSetPopup.o0;
                                                                                                DialogSetPopup.this.D();
                                                                                            }
                                                                                        });
                                                                                    }
                                                                                });
                                                                                dialogSetPopup3.g(dialogSetPopup3.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetPopup.8
                                                                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                                                    public final void a(View view2) {
                                                                                        DialogSetPopup dialogSetPopup4 = DialogSetPopup.this;
                                                                                        if (dialogSetPopup4.e0 == null) {
                                                                                            return;
                                                                                        }
                                                                                        dialogSetPopup4.show();
                                                                                    }
                                                                                });
                                                                            }
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    }
                                                    dialogUrlLink4.O0 = myDialogBottom;
                                                    myDialogBottom.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.38
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i8 = DialogUrlLink.c1;
                                                            DialogUrlLink dialogUrlLink5 = DialogUrlLink.this;
                                                            DialogSetPopup dialogSetPopup2 = dialogUrlLink5.O0;
                                                            if (dialogSetPopup2 != null) {
                                                                dialogSetPopup2.dismiss();
                                                                dialogUrlLink5.O0 = null;
                                                            }
                                                        }
                                                    });
                                                }
                                            });
                                            if (dialogUrlLink3.k0 && dialogUrlLink3.l0) {
                                                MyLineLinear myLineLinear2 = dialogUrlLink3.A0;
                                                if (myLineLinear2 != null) {
                                                    myLineLinear2.setVisibility(0);
                                                    dialogUrlLink3.D0.setVisibility(0);
                                                    if (MainApp.K1) {
                                                        dialogUrlLink3.B0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                        dialogUrlLink3.C0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                        dialogUrlLink3.D0.setSelectedTabIndicatorColor(-5197648);
                                                    } else {
                                                        dialogUrlLink3.B0.setBackgroundResource(R.drawable.selector_normal_gray);
                                                        dialogUrlLink3.C0.setBackgroundResource(R.drawable.selector_normal_gray);
                                                        dialogUrlLink3.D0.setSelectedTabIndicatorColor(-5854742);
                                                    }
                                                    dialogUrlLink3.K();
                                                    dialogUrlLink3.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.5
                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            ViewPager2 viewPager2 = DialogUrlLink.this.E0;
                                                            if (viewPager2 != null) {
                                                                viewPager2.setCurrentItem(0);
                                                            }
                                                        }
                                                    });
                                                    dialogUrlLink3.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.6
                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            ViewPager2 viewPager2 = DialogUrlLink.this.E0;
                                                            if (viewPager2 != null) {
                                                                viewPager2.setCurrentItem(1);
                                                            }
                                                        }
                                                    });
                                                    dialogUrlLink3.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            int i6 = DialogUrlLink.c1;
                                                            DialogUrlLink.this.H();
                                                        }
                                                    });
                                                } else {
                                                    return;
                                                }
                                            }
                                            Handler handler3 = dialogUrlLink3.i;
                                            if (handler3 != null) {
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.8
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogUrlLink dialogUrlLink4 = DialogUrlLink.this;
                                                        if (dialogUrlLink4.v0 == null) {
                                                            return;
                                                        }
                                                        boolean z2 = dialogUrlLink4.k0;
                                                        if (z2 && dialogUrlLink4.l0) {
                                                            dialogUrlLink4.m0 = 2;
                                                            if (dialogUrlLink4.p0) {
                                                                dialogUrlLink4.M();
                                                                return;
                                                            } else {
                                                                dialogUrlLink4.N();
                                                                return;
                                                            }
                                                        }
                                                        if (z2) {
                                                            dialogUrlLink4.m0 = 1;
                                                            dialogUrlLink4.N();
                                                        } else {
                                                            dialogUrlLink4.m0 = 1;
                                                            dialogUrlLink4.M();
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
            return;
        }
        if (context != null) {
            MyDialogLink myDialogLink = new MyDialogLink(this.b0);
            this.v0 = myDialogLink;
            myDialogLink.setOrientation(1);
            this.v0.setMinimumWidth(MainApp.g1);
            this.v0.setMinimumHeight(MainApp.g1);
            MyDialogLink myDialogLink2 = this.v0;
            if (myDialogLink2 == null) {
                return;
            }
            g(myDialogLink2, new AnonymousClass15());
        }
    }

    public static void B(DialogUrlLink dialogUrlLink, View view, int i, boolean z) {
        MyDialogLink myDialogLink;
        boolean z2;
        UrlLinkListener urlLinkListener = dialogUrlLink.u0;
        if (urlLinkListener != null && (myDialogLink = dialogUrlLink.v0) != null) {
            if (myDialogLink.f == null) {
                z2 = false;
            } else {
                z2 = myDialogLink.g;
            }
            if (!z2) {
                if (!z) {
                    urlLinkListener.a(i, dialogUrlLink.c0, dialogUrlLink.i0);
                    return;
                }
                if (i != 4) {
                    if (i != 6) {
                        if (i != 9) {
                            if (i != 10) {
                                urlLinkListener.c(dialogUrlLink.f0, i, 0, dialogUrlLink.i0, dialogUrlLink.n0, null);
                                return;
                            }
                        } else {
                            dialogUrlLink.Q();
                            return;
                        }
                    }
                    dialogUrlLink.R(view, i);
                    return;
                }
                if (!dialogUrlLink.n0 && !TextUtils.isEmpty(urlLinkListener.d())) {
                    dialogUrlLink.R(view, i);
                } else {
                    dialogUrlLink.G(true);
                }
            }
        }
    }

    public static void C(DialogUrlLink dialogUrlLink) {
        if (dialogUrlLink.v0 != null) {
            dialogUrlLink.show();
            int i = dialogUrlLink.q0;
            if (i == 4) {
                dialogUrlLink.G(true);
            } else if (i == 9) {
                dialogUrlLink.Q();
            } else if (dialogUrlLink.l0) {
                dialogUrlLink.G(false);
            }
        }
    }

    public static void D(DialogUrlLink dialogUrlLink) {
        MyRoundImage myRoundImage = dialogUrlLink.x0;
        if (myRoundImage != null) {
            myRoundImage.o(-460552, R.drawable.outline_image_black_24);
            if (!TextUtils.isEmpty(dialogUrlLink.f0)) {
                if (Compress.I(MainUtil.V3(dialogUrlLink.f0, null, null, true))) {
                    if (dialogUrlLink.x0 == null || TextUtils.isEmpty(dialogUrlLink.f0)) {
                        return;
                    }
                    dialogUrlLink.s(new AnonymousClass23());
                    return;
                }
                dialogUrlLink.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                        WebViewActivity webViewActivity = dialogUrlLink2.a0;
                        if (webViewActivity != null) {
                            if (dialogUrlLink2.L0 == null) {
                                dialogUrlLink2.L0 = GlideApp.a(webViewActivity);
                            }
                            Handler handler = dialogUrlLink2.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.21.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogUrlLink dialogUrlLink3 = DialogUrlLink.this;
                                    if (dialogUrlLink3.L0 == null || TextUtils.isEmpty(dialogUrlLink3.f0)) {
                                        return;
                                    }
                                    boolean isNetworkUrl = URLUtil.isNetworkUrl(dialogUrlLink3.f0);
                                    DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                    if (isNetworkUrl) {
                                        String str = dialogUrlLink3.j0;
                                        if (dialogUrlLink3.M0) {
                                            boolean z = MainConst.f16452a;
                                            str = null;
                                        }
                                        ((RequestBuilder) dialogUrlLink3.L0.t(MainUtil.A1(dialogUrlLink3.b0, dialogUrlLink3.f0, str)).e(diskCacheStrategy)).I(dialogUrlLink3.W0).E(dialogUrlLink3.x0);
                                        return;
                                    }
                                    ((RequestBuilder) dialogUrlLink3.L0.u(dialogUrlLink3.f0).e(diskCacheStrategy)).I(dialogUrlLink3.W0).E(dialogUrlLink3.x0);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
    public static void E(DialogUrlLink dialogUrlLink) {
        MyDialogLink myDialogLink = dialogUrlLink.v0;
        if (myDialogLink != null) {
            MyLinkView myLinkView = dialogUrlLink.G0;
            if (myLinkView != null && dialogUrlLink.H0 != null) {
                if (dialogUrlLink.E0 == null) {
                    ViewPager2 viewPager2 = new ViewPager2(dialogUrlLink.b0);
                    dialogUrlLink.E0 = viewPager2;
                    viewPager2.setOrientation(0);
                    if (Build.VERSION.SDK_INT < 31) {
                        dialogUrlLink.E0.setOverScrollMode(2);
                    }
                    if (MainUtil.O5(dialogUrlLink.b0)) {
                        dialogUrlLink.E0.setLayoutDirection(1);
                    }
                    MainUtil.r7(dialogUrlLink.E0);
                    ViewPager2 viewPager22 = dialogUrlLink.E0;
                    if (viewPager22 != null) {
                        dialogUrlLink.F0 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.dialog.DialogUrlLink.29
                            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                            public final void c(int i) {
                                boolean z;
                                Handler handler;
                                final DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                                if (dialogUrlLink2.B0 != null) {
                                    boolean z2 = dialogUrlLink2.p0;
                                    if (i != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    dialogUrlLink2.p0 = z;
                                    dialogUrlLink2.L(z);
                                    dialogUrlLink2.K();
                                    if (dialogUrlLink2.p0 == z2 || dialogUrlLink2.r0 == dialogUrlLink2.s0 || (handler = dialogUrlLink2.i) == null) {
                                        return;
                                    }
                                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.30
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogUrlLink.F(DialogUrlLink.this);
                                        }
                                    });
                                }
                            }
                        };
                        viewPager22.setAdapter(new ViewPagerAdapter());
                        dialogUrlLink.E0.b(dialogUrlLink.F0);
                    }
                    dialogUrlLink.v0.addView(dialogUrlLink.E0, -1, -2);
                    new TabLayoutMediator(dialogUrlLink.D0, dialogUrlLink.E0, new Object()).a();
                    if (dialogUrlLink.p0) {
                        dialogUrlLink.E0.d(1, false);
                    }
                }
            } else if (myLinkView != null) {
                myDialogLink.addView(myLinkView, -1, -2);
            } else {
                MyLinkView myLinkView2 = dialogUrlLink.H0;
                if (myLinkView2 != null) {
                    myDialogLink.addView(myLinkView2, -1, -2);
                }
            }
            MyDialogLink myDialogLink2 = dialogUrlLink.v0;
            if (myDialogLink2 == null) {
                return;
            }
            dialogUrlLink.g(myDialogLink2, new AnonymousClass15());
        }
    }

    public static void F(DialogUrlLink dialogUrlLink) {
        MyLinkView myLinkView;
        if (dialogUrlLink.E0 != null) {
            try {
                if (dialogUrlLink.p0) {
                    myLinkView = dialogUrlLink.H0;
                } else {
                    myLinkView = dialogUrlLink.G0;
                }
                myLinkView.requestLayout();
                ViewGroup.LayoutParams layoutParams = dialogUrlLink.E0.getLayoutParams();
                if (layoutParams != null) {
                    int i = dialogUrlLink.r0;
                    int i2 = dialogUrlLink.s0;
                    int i3 = -2;
                    if (i != i2) {
                        if (dialogUrlLink.p0) {
                            i = i2;
                        }
                        int i4 = i * MainApp.g1;
                        if (i4 < dialogUrlLink.H()) {
                            i3 = i4;
                        }
                    }
                    if (layoutParams.height != i3) {
                        layoutParams.height = i3;
                        Handler handler = dialogUrlLink.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.28
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ViewPager2 viewPager2 = DialogUrlLink.this.E0;
                                    if (viewPager2 == null) {
                                        return;
                                    }
                                    viewPager2.requestLayout();
                                }
                            });
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void G(boolean z) {
        MyDialogLink myDialogLink;
        UrlLinkListener urlLinkListener;
        if (!TextUtils.isEmpty(this.f0)) {
            this.Q0 = z;
            boolean z2 = this.n0;
            if (z2) {
                this.P0 = 2;
            }
            int i = this.P0;
            if (i != 0) {
                if (z) {
                    if (i == 1) {
                        MyDialogLink myDialogLink2 = this.v0;
                        if (myDialogLink2 != null) {
                            myDialogLink2.b(true);
                            return;
                        }
                        return;
                    }
                    if (i == 2) {
                        this.Q0 = false;
                        if (this.v0 != null && (urlLinkListener = this.u0) != null) {
                            urlLinkListener.c(this.f0, 4, 0, this.i0, z2, this.R0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            this.P0 = 1;
            if (z && (myDialogLink = this.v0) != null) {
                myDialogLink.b(true);
            }
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.31
                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler;
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    if (!Compress.C(MainUtil.V3(dialogUrlLink.f0, null, null, true), true, true)) {
                        String T0 = MainUtil.T0(dialogUrlLink.f0);
                        if (!TextUtils.isEmpty(T0) && T0.startsWith("svg")) {
                            dialogUrlLink.f0 = "data:image/".concat(T0);
                        }
                        dialogUrlLink.R0 = android.support.v4.media.a.C("image/", T0);
                    } else {
                        dialogUrlLink.R0 = null;
                    }
                    dialogUrlLink.P0 = 2;
                    if (!dialogUrlLink.Q0 || (handler = dialogUrlLink.i) == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.31.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            UrlLinkListener urlLinkListener2;
                            DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                            if (dialogUrlLink2.Q0) {
                                dialogUrlLink2.Q0 = false;
                                if (dialogUrlLink2.v0 != null && (urlLinkListener2 = dialogUrlLink2.u0) != null) {
                                    urlLinkListener2.c(dialogUrlLink2.f0, 4, 0, dialogUrlLink2.i0, dialogUrlLink2.n0, dialogUrlLink2.R0);
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public final int H() {
        UrlLinkListener urlLinkListener;
        int i = this.t0;
        if (i != 0 || (urlLinkListener = this.u0) == null) {
            return i;
        }
        int b = urlLinkListener.b() - this.U0;
        int i2 = MainApp.g1;
        int i3 = ((b - i2) - this.V0) - i2;
        this.t0 = i3;
        return i3;
    }

    /* JADX WARN: Type inference failed for: r5v9, types: [com.mycompany.app.view.MyLinkView$MainLinkItem, java.lang.Object] */
    public final ArrayList I(boolean z) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int[] g3 = MainUtil.g3(z ? 1 : 0, false);
        ArrayList arrayList = new ArrayList();
        if (z) {
            while (i4 < 12) {
                int i5 = g3[i4];
                int i6 = PrefZone.f0;
                int i7 = DialogSetPopup.p0[i5];
                if ((i6 & i7) == i7) {
                    if (MainApp.K1) {
                        i3 = MainConst.n[i5];
                    } else {
                        i3 = MainConst.m[i5];
                    }
                    if (i5 == 4 && (this.n0 || !TextUtils.isEmpty(this.u0.d()))) {
                        String J = J(i5);
                        ?? obj = new Object();
                        obj.f18850a = i5;
                        obj.b = i3;
                        obj.d = J;
                        arrayList.add(obj);
                    } else {
                        arrayList.add(new MyLinkView.MainLinkItem(i5, i3, MainConst.l[i5]));
                    }
                }
                i4++;
            }
            this.s0 = arrayList.size();
            return arrayList;
        }
        while (i4 < 13) {
            int i8 = g3[i4];
            int i9 = PrefZone.e0;
            int i10 = DialogSetPopup.o0[i8];
            if ((i9 & i10) == i10) {
                if (PrefSync.k && i8 == 6) {
                    if (MainApp.K1) {
                        i2 = R.drawable.outline_mood_dark_24;
                    } else {
                        i2 = R.drawable.outline_mood_black_24;
                    }
                    arrayList.add(new MyLinkView.MainLinkItem(i8, i2, R.string.normal_tab));
                } else {
                    if (MainApp.K1) {
                        i = MainConst.j[i8];
                    } else {
                        i = MainConst.i[i8];
                    }
                    arrayList.add(new MyLinkView.MainLinkItem(i8, i, MainConst.h[i8]));
                }
            }
            i4++;
        }
        this.r0 = arrayList.size();
        return arrayList;
    }

    public final String J(int i) {
        if (this.b0 == null) {
            return null;
        }
        this.o0 = true;
        StringBuilder sb = new StringBuilder();
        com.google.android.gms.internal.mlkit_vision_text_common.a.x(this.b0, MainConst.l[i], sb, " (");
        sb.append(this.b0.getString(R.string.video));
        sb.append(")");
        return sb.toString();
    }

    public final void K() {
        MyLineText myLineText = this.B0;
        if (myLineText != null) {
            if (this.p0) {
                if (MainApp.K1) {
                    myLineText.setTextColor(-4079167);
                    this.C0.setTextColor(-328966);
                } else {
                    myLineText.setTextColor(-10395295);
                    this.C0.setTextColor(-14784824);
                }
            } else if (MainApp.K1) {
                myLineText.setTextColor(-328966);
                this.C0.setTextColor(-4079167);
            } else {
                myLineText.setTextColor(-14784824);
                this.C0.setTextColor(-10395295);
            }
            MyLinkView myLinkView = this.G0;
            if (myLinkView != null && this.H0 != null) {
                if (this.p0) {
                    myLinkView.setTag("skip_scroll");
                    this.H0.setTag(null);
                    A(this.H0);
                } else {
                    myLinkView.setTag(null);
                    this.H0.setTag("skip_scroll");
                    A(this.G0);
                }
            }
        }
    }

    public final void L(boolean z) {
        MyRoundImage myRoundImage = this.w0;
        if (myRoundImage != null && this.x0 != null) {
            if (z) {
                myRoundImage.setVisibility(8);
                this.x0.setVisibility(0);
                this.y0.setText(!TextUtils.isEmpty(this.d1) ? this.d1 : this.g0);
            } else {
                myRoundImage.setVisibility(0);
                this.x0.setVisibility(8);
                this.y0.setText(this.d0);
            }
            S();
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.19
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r1v20, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r1v27, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r1v9, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
                    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        final DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                        if (dialogUrlLink.w0 != null && dialogUrlLink.x0 != null) {
                            if (!TextUtils.isEmpty(dialogUrlLink.h0)) {
                                if (dialogUrlLink.x0.getVisibility() == 0) {
                                    if (dialogUrlLink.x0 != null) {
                                        if (TextUtils.isEmpty(dialogUrlLink.f0)) {
                                            dialogUrlLink.O(null);
                                            return;
                                        }
                                        Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, dialogUrlLink.f0));
                                        if (MainUtil.f6(a2)) {
                                            dialogUrlLink.O(a2);
                                            return;
                                        }
                                        ?? obj = new Object();
                                        obj.f16554a = 7;
                                        obj.q = dialogUrlLink.f0;
                                        obj.r = dialogUrlLink.j0;
                                        obj.t = 2;
                                        if (dialogUrlLink.K0 == null) {
                                            DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                                            builder.f20960a = true;
                                            Bitmap.Config config = Bitmap.Config.RGB_565;
                                            builder.a();
                                            builder.f = new Object();
                                            dialogUrlLink.K0 = new DisplayImageOptions(builder);
                                        }
                                        dialogUrlLink.O(null);
                                        ImageLoader.f().c(obj, dialogUrlLink.x0, dialogUrlLink.K0, new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.26
                                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                            public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                                            }

                                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                            public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                                                int i = DialogUrlLink.c1;
                                                DialogUrlLink.this.O(bitmap);
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                if (dialogUrlLink.w0 != null) {
                                    if (TextUtils.isEmpty(dialogUrlLink.h0)) {
                                        dialogUrlLink.P(null);
                                        return;
                                    }
                                    Bitmap a3 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, dialogUrlLink.h0));
                                    if (MainUtil.f6(a3)) {
                                        dialogUrlLink.P(a3);
                                        return;
                                    }
                                    ?? obj2 = new Object();
                                    obj2.f16554a = 7;
                                    obj2.q = dialogUrlLink.h0;
                                    obj2.t = 2;
                                    if (dialogUrlLink.K0 == null) {
                                        DisplayImageOptions.Builder builder2 = new DisplayImageOptions.Builder();
                                        builder2.f20960a = true;
                                        Bitmap.Config config2 = Bitmap.Config.RGB_565;
                                        builder2.a();
                                        builder2.f = new Object();
                                        dialogUrlLink.K0 = new DisplayImageOptions(builder2);
                                    }
                                    ImageLoader.f().c(obj2, dialogUrlLink.w0, dialogUrlLink.K0, new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.25
                                        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                        public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                                            int i = DialogUrlLink.c1;
                                            DialogUrlLink.this.P(null);
                                        }

                                        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                                        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                                            int i = DialogUrlLink.c1;
                                            DialogUrlLink.this.P(bitmap);
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            if (dialogUrlLink.x0.getVisibility() == 0) {
                                DialogUrlLink.D(dialogUrlLink);
                                return;
                            }
                            MyRoundImage myRoundImage2 = dialogUrlLink.w0;
                            if (myRoundImage2 != null) {
                                myRoundImage2.setIconSmall(false);
                                if (TextUtils.isEmpty(dialogUrlLink.c0)) {
                                    dialogUrlLink.w0.p(-460552, R.drawable.outline_public_black_24, dialogUrlLink.e0, null);
                                    return;
                                }
                                ?? obj3 = new Object();
                                obj3.f16550a = 18;
                                obj3.f16551c = 11;
                                obj3.g = dialogUrlLink.c0;
                                Bitmap b = MainListLoader.b(obj3);
                                if (MainUtil.f6(b)) {
                                    dialogUrlLink.w0.setIconSmall(true);
                                    dialogUrlLink.w0.setImageBitmap(b);
                                } else {
                                    dialogUrlLink.J0 = new MainListLoader(dialogUrlLink.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.20
                                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                        public final void a(MainItem.ChildItem childItem, View view) {
                                            DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                                            MyRoundImage myRoundImage3 = dialogUrlLink2.w0;
                                            if (myRoundImage3 == null) {
                                                return;
                                            }
                                            myRoundImage3.p(-460552, R.drawable.outline_public_black_24, dialogUrlLink2.e0, null);
                                        }

                                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                            DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                                            if (dialogUrlLink2.w0 == null) {
                                                return;
                                            }
                                            if (MainUtil.f6(bitmap)) {
                                                dialogUrlLink2.w0.setIconSmall(true);
                                                dialogUrlLink2.w0.setImageBitmap(bitmap);
                                            } else {
                                                dialogUrlLink2.w0.p(-460552, R.drawable.outline_public_black_24, dialogUrlLink2.e0, null);
                                            }
                                        }
                                    });
                                    dialogUrlLink.w0.setTag(0);
                                    dialogUrlLink.J0.e(obj3, dialogUrlLink.w0);
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    /** Load the long-pressed image's title, falling back to alt. */
    public final void S() {
        if (this.d1 != null || this.e1 || !this.l0 || TextUtils.isEmpty(this.f0) || this.a0 == null) {
            return;
        }
        WebNestView webNestView = null;
        DialogWebView dialogWebView = this.a0.c7;
        if (dialogWebView != null) {
            webNestView = dialogWebView.J0;
        }
        if (webNestView == null) {
            webNestView = this.a0.I2;
        }
        if (webNestView == null) {
            return;
        }
        this.e1 = true;
        String js = "(function(){var src=" + JSONObject.quote(this.f0)
                + ";function cap(el){if(!el)return '';try{var t=(el.getAttribute('title')||'').trim();if(t)return t;return (el.getAttribute('alt')||'').trim();}catch(e){return '';}}function same(el){if(!el||!src)return false;try{if(el.currentSrc===src||el.src===src)return true;if((el.getAttribute('src')||'')===src)return true;}catch(e){}return false;}var n=document.querySelectorAll('img,input[type=image]'),i,el,h=null;for(i=0;i<n.length;i++){el=n[i];try{if(el.matches&&el.matches(':hover'))h=el;}catch(e){}if(same(el))return cap(el);}if(h)return cap(h);return '';})();";
        try {
            webNestView.evaluateJavascript(js, new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogUrlLink.40
                @Override
                public final void onReceiveValue(String str) {
                    if (TextUtils.isEmpty(str) || "null".equals(str) || "undefined".equals(str)) {
                        str = "";
                    } else {
                        str = MainUtil.X6(str);
                        if (TextUtils.isEmpty(str)) {
                            str = "";
                        }
                    }
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    if (dialogUrlLink.v0 == null) {
                        return;
                    }
                    dialogUrlLink.d1 = str;
                    if (dialogUrlLink.x0 != null && dialogUrlLink.x0.getVisibility() == 0 && dialogUrlLink.y0 != null) {
                        dialogUrlLink.y0.setText(TextUtils.isEmpty(str) ? dialogUrlLink.g0 : str);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public final void M() {
        if (this.v0 != null) {
            MyLinkView myLinkView = new MyLinkView(this.b0);
            this.H0 = myLinkView;
            myLinkView.setVerticalScrollBarEnabled(true);
            if (MainApp.K1) {
                this.H0.setBackgroundColor(-14606047);
            } else {
                this.H0.setBackgroundColor(-1);
            }
            this.H0.setItems(I(true));
            this.H0.setListener(new MyLinkView.MainLinkListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.12
                @Override // com.mycompany.app.view.MyLinkView.MainLinkListener
                public final void a(View view, int i) {
                    DialogUrlLink.B(DialogUrlLink.this, view, i, true);
                }
            });
            this.H0.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.13
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                public final void a(NestedScrollView nestedScrollView, int i) {
                    MyLinkView myLinkView2 = DialogUrlLink.this.H0;
                    if (myLinkView2 != null) {
                        if (i > 0) {
                            myLinkView2.A();
                        } else {
                            if (myLinkView2.R) {
                                return;
                            }
                            myLinkView2.R = true;
                            myLinkView2.invalidate();
                        }
                    }
                }
            });
            this.m0--;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.14
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    if (dialogUrlLink.m0 > 0) {
                        dialogUrlLink.N();
                    } else {
                        DialogUrlLink.E(dialogUrlLink);
                    }
                }
            });
        }
    }

    public final void N() {
        if (this.v0 != null) {
            MyLinkView myLinkView = new MyLinkView(this.b0);
            this.G0 = myLinkView;
            myLinkView.setVerticalScrollBarEnabled(true);
            if (MainApp.K1) {
                this.G0.setBackgroundColor(-14606047);
            } else {
                this.G0.setBackgroundColor(-1);
            }
            this.G0.setItems(I(false));
            this.G0.setListener(new MyLinkView.MainLinkListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.9
                @Override // com.mycompany.app.view.MyLinkView.MainLinkListener
                public final void a(View view, int i) {
                    DialogUrlLink.B(DialogUrlLink.this, view, i, false);
                }
            });
            this.G0.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.10
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                public final void a(NestedScrollView nestedScrollView, int i) {
                    MyLinkView myLinkView2 = DialogUrlLink.this.G0;
                    if (myLinkView2 != null) {
                        if (i > 0) {
                            myLinkView2.A();
                        } else {
                            if (myLinkView2.R) {
                                return;
                            }
                            myLinkView2.R = true;
                            myLinkView2.invalidate();
                        }
                    }
                }
            });
            this.m0--;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.11
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    if (dialogUrlLink.m0 > 0) {
                        dialogUrlLink.M();
                    } else {
                        DialogUrlLink.E(dialogUrlLink);
                    }
                }
            });
        }
    }

    public final void O(Bitmap bitmap) {
        int i;
        if (this.x0 == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            this.x0.setImageBitmap(bitmap);
            return;
        }
        if (MainApp.K1) {
            i = R.drawable.outline_newspaper_dark_24;
        } else {
            i = R.drawable.outline_newspaper_black_24;
        }
        this.x0.o(-460552, i);
    }

    public final void P(Bitmap bitmap) {
        if (this.w0 == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            this.w0.setIconSmall(true);
            this.w0.setImageBitmap(bitmap);
        } else {
            this.w0.setIconSmall(false);
            this.w0.p(-460552, R.drawable.outline_public_black_24, this.e0, null);
        }
    }

    public final void Q() {
        if (TextUtils.isEmpty(this.f0)) {
            return;
        }
        MyDialogLink myDialogLink = this.v0;
        if (myDialogLink != null) {
            myDialogLink.b(true);
        }
        if (Compress.I(MainUtil.V3(this.f0, null, null, true))) {
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.34
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    WebViewActivity webViewActivity = dialogUrlLink.a0;
                    if (webViewActivity != null) {
                        if (dialogUrlLink.L0 == null) {
                            dialogUrlLink.L0 = GlideApp.a(webViewActivity);
                        }
                        Handler handler = dialogUrlLink.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.34.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogUrlLink dialogUrlLink2 = DialogUrlLink.this;
                                if (dialogUrlLink2.L0 == null || TextUtils.isEmpty(dialogUrlLink2.f0)) {
                                    return;
                                }
                                if (URLUtil.isNetworkUrl(dialogUrlLink2.f0)) {
                                    String str = dialogUrlLink2.j0;
                                    if (dialogUrlLink2.M0) {
                                        boolean z = MainConst.f16452a;
                                        str = null;
                                    }
                                    ((GlideRequest) ((GlideRequest) dialogUrlLink2.L0.b(PictureDrawable.class)).O(MainUtil.A1(dialogUrlLink2.b0, dialogUrlLink2.f0, str))).F(dialogUrlLink2.Y0);
                                    return;
                                }
                                ((GlideRequest) ((GlideRequest) dialogUrlLink2.L0.b(PictureDrawable.class)).O(dialogUrlLink2.f0)).F(dialogUrlLink2.Y0);
                            }
                        });
                    }
                }
            });
        } else {
            s(new AnonymousClass33());
        }
    }

    public final void R(View view, final int i) {
        MyPopupMenu myPopupMenu = this.S0;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Y = null;
                myPopupMenu.a();
                this.S0 = null;
            }
            if (this.a0 != null && view != null) {
                ArrayList arrayList = new ArrayList();
                if (i == 4) {
                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.image));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.video));
                } else if (i == 6) {
                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.google));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.bing));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.yandex));
                } else if (i == 10) {
                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.soul_home));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.phone_home));
                } else {
                    return;
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this.a0, this.v0, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogUrlLink.39
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i2 = DialogUrlLink.c1;
                        DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                        MyPopupMenu myPopupMenu3 = dialogUrlLink.S0;
                        if (myPopupMenu3 != null) {
                            dialogUrlLink.Y = null;
                            myPopupMenu3.a();
                            dialogUrlLink.S0 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view2, int i2) {
                        DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                        UrlLinkListener urlLinkListener = dialogUrlLink.u0;
                        if (urlLinkListener == null) {
                            return true;
                        }
                        int i3 = i;
                        if (i3 == 4) {
                            if (i2 == 1) {
                                urlLinkListener.c(urlLinkListener.d(), i3, i2, dialogUrlLink.i0, true, null);
                                return true;
                            }
                            dialogUrlLink.G(true);
                            return true;
                        }
                        // Google: rasterize/share into Lens (falls back to web URL if
                        // the Google app Intent is unavailable).
                        if (i3 == 6 && i2 == 0) {
                            dialogUrlLink.T0 = true;
                            dialogUrlLink.Q();
                            return true;
                        }
                        urlLinkListener.c(dialogUrlLink.f0, i3, i2, dialogUrlLink.i0, dialogUrlLink.n0, null);
                        return true;
                    }
                });
                this.S0 = myPopupMenu2;
                myPopupMenu2.m = 3;
                this.Y = myPopupMenu2;
            }
        }
    }

    public final void S() {
        Handler handler;
        if (!this.o0 && this.H0 != null && (handler = this.i) != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUrlLink.32
                @Override // java.lang.Runnable
                public final void run() {
                    TextView textView;
                    int size;
                    DialogUrlLink dialogUrlLink = DialogUrlLink.this;
                    MyLinkView myLinkView = dialogUrlLink.H0;
                    if (myLinkView != null) {
                        String J = dialogUrlLink.J(4);
                        if (!TextUtils.isEmpty(J)) {
                            List list = myLinkView.L;
                            int i = -1;
                            if (list != null && (size = list.size()) != 0) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= size) {
                                        break;
                                    }
                                    MyLinkView.MainLinkItem mainLinkItem = (MyLinkView.MainLinkItem) myLinkView.L.get(i2);
                                    if (mainLinkItem != null && mainLinkItem.f18850a == 4) {
                                        i = i2;
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            MyLinkView.MainLinkItem y = myLinkView.y(i);
                            if (y != null && y.f18850a == 4) {
                                y.d = J;
                                y.f18851c = 0;
                                ArrayList arrayList = myLinkView.P;
                                if (arrayList != null && i >= 0 && i < arrayList.size() && (textView = (TextView) myLinkView.P.get(i)) != null) {
                                    textView.setText(y.d);
                                }
                            }
                        }
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        Context context = this.b0;
        if (context == null) {
            return;
        }
        boolean z = PrefZone.J;
        boolean z2 = this.p0;
        if (z != z2) {
            PrefZone.J = z2;
            PrefSet.d(15, context, "mLinkImage", z2);
        }
        DialogSetPopup dialogSetPopup = this.O0;
        if (dialogSetPopup != null) {
            dialogSetPopup.dismiss();
            this.O0 = null;
        }
        MyPopupMenu myPopupMenu = this.S0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.S0 = null;
        }
        ShareTask shareTask = this.N0;
        if (shareTask != null) {
            shareTask.f12839c = true;
        }
        this.N0 = null;
        ViewPager2 viewPager2 = this.E0;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.F0;
        this.E0 = null;
        this.F0 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MainListLoader mainListLoader = this.J0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.J0 = null;
        }
        GlideRequests glideRequests = this.L0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.x0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.L0 = null;
        }
        MyDialogLink myDialogLink = this.v0;
        if (myDialogLink != null) {
            if (myDialogLink.g) {
                myDialogLink.g = false;
                myDialogLink.m = true;
            } else {
                myDialogLink.f18665c = false;
            }
            MyProgressDrawable myProgressDrawable = myDialogLink.f;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
            if (myProgressDrawable != null) {
                myProgressDrawable.b();
                myDialogLink.f = null;
            }
            this.v0 = null;
        }
        MyRoundImage myRoundImage2 = this.w0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.w0 = null;
        }
        MyRoundImage myRoundImage3 = this.x0;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.x0 = null;
        }
        MyButtonImage myButtonImage = this.z0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.z0 = null;
        }
        MyLineLinear myLineLinear = this.A0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.A0 = null;
        }
        MyLineText myLineText = this.B0;
        if (myLineText != null) {
            myLineText.u();
            this.B0 = null;
        }
        MyLinkView myLinkView = this.G0;
        if (myLinkView != null) {
            myLinkView.J = null;
            myLinkView.K = null;
            myLinkView.L = null;
            myLinkView.M = null;
            myLinkView.N = null;
            myLinkView.O = null;
            myLinkView.P = null;
            myLinkView.Q = null;
            this.G0 = null;
        }
        MyLinkView myLinkView2 = this.H0;
        if (myLinkView2 != null) {
            myLinkView2.J = null;
            myLinkView2.K = null;
            myLinkView2.L = null;
            myLinkView2.M = null;
            myLinkView2.N = null;
            myLinkView2.O = null;
            myLinkView2.P = null;
            myLinkView2.Q = null;
            this.H0 = null;
        }
        MyLineText myLineText2 = this.I0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.I0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.d1 = null;
        this.e1 = false;
        this.y0 = null;
        this.C0 = null;
        this.D0 = null;
        this.u0 = null;
        this.K0 = null;
        super.dismiss();
    }
}
