package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.RequestListener;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookBlock;
import com.mycompany.app.dialog.DialogSetAdblock;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingClean;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebClean;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogBlockImage extends MyDialogBottom {
    public static final /* synthetic */ int E0 = 0;
    public boolean A0;
    public WebClean B0;
    public final RequestListener C0;
    public final RequestListener D0;
    public WebViewActivity a0;
    public Context b0;
    public DialogSetAdblock.DialogAdsListener c0;
    public String d0;
    public String e0;
    public String f0;
    public MyDialogRelative g0;
    public MyLineFrame h0;
    public MyRoundImage i0;
    public MyButtonImage j0;
    public MyRoundImage k0;
    public MyRoundImage l0;
    public MyRecyclerView m0;
    public MyLineText n0;
    public SettingListAdapter o0;
    public GlideUrl p0;
    public GlideRequests q0;
    public boolean r0;
    public DialogTask s0;
    public DialogListBook t0;
    public boolean u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public boolean y0;
    public boolean z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public final boolean h;

        public DialogTask(DialogBlockImage dialogBlockImage, String str, String str2, boolean z) {
            WeakReference weakReference = new WeakReference(dialogBlockImage);
            this.e = weakReference;
            DialogBlockImage dialogBlockImage2 = (DialogBlockImage) weakReference.get();
            if (dialogBlockImage2 != null) {
                this.f = str;
                this.g = str2;
                this.h = z;
                if (dialogBlockImage2.g0 == null) {
                    return;
                }
                dialogBlockImage2.setCanceledOnTouchOutside(false);
                dialogBlockImage2.g0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogBlockImage dialogBlockImage;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockImage = (DialogBlockImage) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.h;
                String str = this.g;
                String str2 = this.f;
                if (z) {
                    WebClean webClean = dialogBlockImage.B0;
                    if (webClean != null) {
                        webClean.b(str2, str);
                    }
                    DbBookBlock.b(dialogBlockImage.b0, str2, str);
                    return;
                }
                WebClean webClean2 = dialogBlockImage.B0;
                if (webClean2 != null) {
                    webClean2.g(str2, str);
                }
                Context context = dialogBlockImage.b0;
                DbBookBlock dbBookBlock = DbBookBlock.f12927c;
                if (context != null && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookBlock.a(context).getWritableDatabase(), "DbBookBlock_table", "_path=? AND _image=?", new String[]{str2, str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogBlockImage dialogBlockImage;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockImage = (DialogBlockImage) weakReference.get()) != null) {
                dialogBlockImage.s0 = null;
                if (dialogBlockImage.g0 == null) {
                    return;
                }
                dialogBlockImage.setCanceledOnTouchOutside(true);
                dialogBlockImage.g0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogBlockImage dialogBlockImage;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockImage = (DialogBlockImage) weakReference.get()) != null) {
                dialogBlockImage.s0 = null;
                if (dialogBlockImage.g0 == null) {
                    return;
                }
                dialogBlockImage.setCanceledOnTouchOutside(true);
                dialogBlockImage.g0.setBlockTouch(false);
            }
        }
    }

    public DialogBlockImage(WebViewActivity webViewActivity, String str, String str2, DialogSetAdblock.DialogAdsListener dialogAdsListener) {
        super(webViewActivity);
        this.C0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogBlockImage.9
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                if (dialogBlockImage.p0 != null && !dialogBlockImage.r0 && (myRoundImage = dialogBlockImage.k0) != null) {
                    dialogBlockImage.r0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.9.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogBlockImage.B(DialogBlockImage.this);
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                Drawable drawable = (Drawable) obj;
                DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                if (dialogBlockImage.q0 != null && dialogBlockImage.i0 != null) {
                    DialogBlockImage.C(dialogBlockImage, drawable);
                    if (dialogBlockImage.l0 != null) {
                        dialogBlockImage.i0.setVisibility(8);
                        dialogBlockImage.l0.setVisibility(0);
                    }
                }
            }
        };
        this.D0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogBlockImage.11
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage;
                DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                if (dialogBlockImage.p0 != null && !dialogBlockImage.r0 && (myRoundImage = dialogBlockImage.k0) != null) {
                    dialogBlockImage.r0 = true;
                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.11.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogBlockImage dialogBlockImage2 = DialogBlockImage.this;
                            int i = DialogBlockImage.E0;
                            dialogBlockImage2.E();
                        }
                    });
                }
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                PictureDrawable pictureDrawable = (PictureDrawable) obj;
                DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                if (dialogBlockImage.q0 != null && dialogBlockImage.i0 != null) {
                    DialogBlockImage.C(dialogBlockImage, pictureDrawable);
                    if (dialogBlockImage.l0 != null) {
                        dialogBlockImage.i0.setVisibility(8);
                        dialogBlockImage.l0.setLayerType(1, null);
                        dialogBlockImage.l0.setVisibility(0);
                    }
                }
            }
        };
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogAdsListener;
        String S6 = MainUtil.S6(str);
        this.d0 = S6;
        this.e0 = MainUtil.I1(S6, true);
        this.f0 = str2;
        this.B0 = MainApp.v(this.b0, false);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                Context context = dialogBlockImage.b0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context);
                    int G = (int) MainUtil.G(context, 140.0f);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
                    myRoundImage.setScaleType(scaleType);
                    myRoundImage.setVisibility(4);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, G);
                    layoutParams.setMarginStart(MainApp.E1);
                    layoutParams.setMarginEnd(MainApp.E1);
                    myDialogRelative.addView(myRoundImage, layoutParams);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    myDialogRelative.addView(linearLayout, -1, -2);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    linearLayout.addView(myLineFrame, -1, -2);
                    MyRoundImage myRoundImage2 = new MyRoundImage(context);
                    myRoundImage2.setScaleType(scaleType);
                    myRoundImage2.setCircleRadius(MainApp.f1 / 2.0f);
                    int i = MainApp.i1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
                    layoutParams2.gravity = 1;
                    int i2 = MainApp.E1;
                    layoutParams2.topMargin = i2;
                    layoutParams2.bottomMargin = i2;
                    myLineFrame.addView(myRoundImage2, layoutParams2);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    myButtonImage.setBgNorRadius(MainApp.j1);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams3.gravity = 8388693;
                    myLineFrame.addView(myButtonImage, layoutParams3);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams4.weight = 1.0f;
                    linearLayout.addView(myRecyclerView, layoutParams4);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.refresh);
                    myLineText.t(MainApp.E1);
                    linearLayout.addView(myLineText, -1, MainApp.g1);
                    dialogBlockImage.g0 = myDialogRelative;
                    dialogBlockImage.h0 = myLineFrame;
                    dialogBlockImage.i0 = myRoundImage2;
                    dialogBlockImage.j0 = myButtonImage;
                    dialogBlockImage.k0 = myRoundImage;
                    dialogBlockImage.m0 = myRecyclerView;
                    dialogBlockImage.n0 = myLineText;
                    Handler handler2 = dialogBlockImage.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            final DialogBlockImage dialogBlockImage2 = DialogBlockImage.this;
                            if (dialogBlockImage2.g0 != null && dialogBlockImage2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogBlockImage2.j0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogBlockImage2.j0.setBgNorColor(-14606047);
                                    dialogBlockImage2.j0.setBgPreColor(-12632257);
                                    dialogBlockImage2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBlockImage2.n0.setTextColor(-328966);
                                } else {
                                    dialogBlockImage2.j0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogBlockImage2.j0.setBgNorColor(-1);
                                    dialogBlockImage2.j0.setBgPreColor(-2039584);
                                    dialogBlockImage2.n0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBlockImage2.n0.setTextColor(-14784824);
                                }
                                WebClean webClean = dialogBlockImage2.B0;
                                if (webClean != null) {
                                    dialogBlockImage2.u0 = webClean.U(dialogBlockImage2.e0, dialogBlockImage2.f0);
                                    dialogBlockImage2.v0 = dialogBlockImage2.B0.T(dialogBlockImage2.d0, dialogBlockImage2.f0);
                                }
                                if (!dialogBlockImage2.u0 && !dialogBlockImage2.v0) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                dialogBlockImage2.z0 = z;
                                dialogBlockImage2.w0 = PrefWeb.o;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, true));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.item_block_site, 0, 0, dialogBlockImage2.u0, true));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.item_block_page, 0, 0, dialogBlockImage2.v0, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(3, R.string.blocked_image, 0, 0, 0), 1);
                                dialogBlockImage2.o0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogBlockImage.3
                                    /* JADX WARN: Type inference failed for: r5v7, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z2, int i5) {
                                        DialogListBook dialogListBook;
                                        final DialogBlockImage dialogBlockImage3 = DialogBlockImage.this;
                                        if (i4 != 1) {
                                            if (i4 != 2) {
                                                if (i4 != 3) {
                                                    int i6 = DialogBlockImage.E0;
                                                    return;
                                                }
                                                if (dialogBlockImage3.a0 == null || (dialogListBook = dialogBlockImage3.t0) != null) {
                                                    return;
                                                }
                                                if (dialogListBook != null) {
                                                    dialogListBook.dismiss();
                                                    dialogBlockImage3.t0 = null;
                                                }
                                                ?? obj = new Object();
                                                obj.f16734a = 23;
                                                obj.i = true;
                                                obj.f = R.string.blocked_image;
                                                DialogListBook dialogListBook2 = new DialogListBook(dialogBlockImage3.a0, obj, dialogBlockImage3.d0, null);
                                                dialogBlockImage3.t0 = dialogListBook2;
                                                dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogBlockImage.12
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i7 = DialogBlockImage.E0;
                                                        DialogBlockImage dialogBlockImage4 = DialogBlockImage.this;
                                                        DialogListBook dialogListBook3 = dialogBlockImage4.t0;
                                                        if (dialogListBook3 != null) {
                                                            dialogListBook3.dismiss();
                                                            dialogBlockImage4.t0 = null;
                                                        }
                                                        dialogBlockImage4.D(false);
                                                    }
                                                });
                                                return;
                                            }
                                            dialogBlockImage3.v0 = z2;
                                            String str3 = dialogBlockImage3.d0;
                                            String str4 = dialogBlockImage3.f0;
                                            DialogTask dialogTask = dialogBlockImage3.s0;
                                            if (dialogTask != null) {
                                                dialogTask.f12839c = true;
                                            }
                                            dialogBlockImage3.s0 = null;
                                            DialogTask dialogTask2 = new DialogTask(dialogBlockImage3, str3, str4, z2);
                                            dialogBlockImage3.s0 = dialogTask2;
                                            dialogTask2.b(dialogBlockImage3.b0);
                                            return;
                                        }
                                        dialogBlockImage3.u0 = z2;
                                        String str5 = dialogBlockImage3.e0;
                                        String str6 = dialogBlockImage3.f0;
                                        DialogTask dialogTask3 = dialogBlockImage3.s0;
                                        if (dialogTask3 != null) {
                                            dialogTask3.f12839c = true;
                                        }
                                        dialogBlockImage3.s0 = null;
                                        DialogTask dialogTask4 = new DialogTask(dialogBlockImage3, str5, str6, z2);
                                        dialogBlockImage3.s0 = dialogTask4;
                                        dialogTask4.b(dialogBlockImage3.b0);
                                    }
                                });
                                dialogBlockImage2.m0.setLayoutManager(t);
                                dialogBlockImage2.m0.setAdapter(dialogBlockImage2.o0);
                                dialogBlockImage2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBlockImage.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogBlockImage dialogBlockImage3 = DialogBlockImage.this;
                                        if (dialogBlockImage3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogBlockImage3.b0, (Class<?>) SettingClean.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        intent.putExtra("EXTRA_INDEX", 19);
                                        intent.putExtra("EXTRA_PATH", dialogBlockImage3.d0);
                                        dialogBlockImage3.a0.t0(intent, 35);
                                    }
                                });
                                dialogBlockImage2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBlockImage.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogBlockImage dialogBlockImage3 = DialogBlockImage.this;
                                        dialogBlockImage3.A0 = true;
                                        dialogBlockImage3.dismiss();
                                    }
                                });
                                dialogBlockImage2.g(dialogBlockImage2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogBlockImage.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        final DialogBlockImage dialogBlockImage3 = DialogBlockImage.this;
                                        if (dialogBlockImage3.g0 != null) {
                                            dialogBlockImage3.show();
                                            Handler handler3 = dialogBlockImage3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.7
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogBlockImage.B(DialogBlockImage.this);
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
        });
    }

    public static void B(DialogBlockImage dialogBlockImage) {
        MyRoundImage myRoundImage = dialogBlockImage.i0;
        if (myRoundImage == null) {
            return;
        }
        myRoundImage.o(-460552, R.drawable.outline_image_black_24);
        String str = null;
        if (Compress.I(MainUtil.V3(dialogBlockImage.f0, null, null, true))) {
            dialogBlockImage.E();
            return;
        }
        if (URLUtil.isNetworkUrl(dialogBlockImage.f0)) {
            String str2 = dialogBlockImage.d0;
            if (dialogBlockImage.r0) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            dialogBlockImage.p0 = MainUtil.A1(dialogBlockImage.b0, dialogBlockImage.f0, str);
        } else {
            dialogBlockImage.p0 = null;
        }
        dialogBlockImage.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.8
            @Override // java.lang.Runnable
            public final void run() {
                DialogBlockImage dialogBlockImage2 = DialogBlockImage.this;
                WebViewActivity webViewActivity = dialogBlockImage2.a0;
                if (webViewActivity != null) {
                    if (dialogBlockImage2.q0 == null) {
                        dialogBlockImage2.q0 = GlideApp.a(webViewActivity);
                    }
                    Handler handler = dialogBlockImage2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogBlockImage dialogBlockImage3 = DialogBlockImage.this;
                            GlideRequests glideRequests = dialogBlockImage3.q0;
                            if (glideRequests == null) {
                                return;
                            }
                            GlideUrl glideUrl = dialogBlockImage3.p0;
                            DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                            if (glideUrl != null) {
                                ((RequestBuilder) glideRequests.t(glideUrl).e(diskCacheStrategy)).I(dialogBlockImage3.C0).E(dialogBlockImage3.k0);
                            } else {
                                ((RequestBuilder) glideRequests.u(dialogBlockImage3.f0).e(diskCacheStrategy)).I(dialogBlockImage3.C0).E(dialogBlockImage3.k0);
                            }
                        }
                    });
                }
            }
        });
    }

    public static void C(DialogBlockImage dialogBlockImage, Drawable drawable) {
        int width;
        if (dialogBlockImage.k0 != null && dialogBlockImage.l0 == null && dialogBlockImage.h0 != null) {
            try {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0 && (width = dialogBlockImage.h0.getWidth() - (MainApp.E1 * 2)) > 0) {
                    float f = intrinsicWidth / intrinsicHeight;
                    int G = (int) MainUtil.G(dialogBlockImage.b0, 140.0f);
                    int round = Math.round(G * f);
                    if (round <= width) {
                        width = round;
                    }
                    MyRoundImage myRoundImage = dialogBlockImage.k0;
                    dialogBlockImage.k0 = null;
                    MainUtil.V6(myRoundImage);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, G);
                    layoutParams.gravity = 1;
                    int i = MainApp.E1;
                    layoutParams.setMargins(i, i, i, i);
                    dialogBlockImage.h0.addView(myRoundImage, layoutParams);
                    dialogBlockImage.l0 = myRoundImage;
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void D(boolean z) {
        boolean z2;
        boolean z3;
        if (this.o0 != null) {
            WebClean webClean = this.B0;
            if (webClean != null) {
                z2 = webClean.U(this.e0, this.f0);
                z3 = this.B0.T(this.d0, this.f0);
            } else {
                z2 = false;
                z3 = false;
            }
            if (this.u0 != z2) {
                this.u0 = z2;
                this.o0.D(new SettingListAdapter.SettingItem(1, R.string.item_block_site, 0, 0, z2, true));
            }
            if (this.v0 != z3) {
                this.v0 = z3;
                this.o0.D(new SettingListAdapter.SettingItem(2, R.string.item_block_page, 0, 0, z3, true));
            }
            DialogListBook dialogListBook = this.t0;
            if (dialogListBook != null) {
                dialogListBook.s(z);
            }
        }
    }

    public final void E() {
        String str = null;
        if (URLUtil.isNetworkUrl(this.f0)) {
            String str2 = this.d0;
            if (this.r0) {
                boolean z = MainConst.f16452a;
            } else {
                str = str2;
            }
            this.p0 = MainUtil.A1(this.b0, this.f0, str);
        } else {
            this.p0 = null;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.10
            @Override // java.lang.Runnable
            public final void run() {
                DialogBlockImage dialogBlockImage = DialogBlockImage.this;
                WebViewActivity webViewActivity = dialogBlockImage.a0;
                if (webViewActivity != null) {
                    if (dialogBlockImage.q0 == null) {
                        dialogBlockImage.q0 = GlideApp.a(webViewActivity);
                    }
                    Handler handler = dialogBlockImage.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockImage.10.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogBlockImage dialogBlockImage2 = DialogBlockImage.this;
                            GlideRequests glideRequests = dialogBlockImage2.q0;
                            if (glideRequests == null) {
                                return;
                            }
                            if (dialogBlockImage2.p0 != null) {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogBlockImage2.p0)).I(dialogBlockImage2.D0).E(dialogBlockImage2.k0);
                            } else {
                                ((GlideRequest) ((GlideRequest) glideRequests.b(PictureDrawable.class)).O(dialogBlockImage2.f0)).I(dialogBlockImage2.D0).E(dialogBlockImage2.k0);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.s0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.s0 = null;
        DialogListBook dialogListBook = this.t0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.t0 = null;
        }
        DialogSetAdblock.DialogAdsListener dialogAdsListener = this.c0;
        if (dialogAdsListener != null) {
            if (!this.u0 && !this.v0) {
                z = false;
            } else {
                z = true;
            }
            if (this.z0 != z) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.w0 != PrefWeb.o) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z && z2 && !this.A0) {
                str = this.f0;
            } else {
                str = null;
            }
            dialogAdsListener.a(z2, z3, this.x0, !this.y0, this.A0, str);
            this.c0 = null;
        }
        GlideRequests glideRequests = this.q0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.k0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            MyRoundImage myRoundImage2 = this.l0;
            if (myRoundImage2 != null) {
                this.q0.o(myRoundImage2);
            }
            this.q0 = null;
        }
        MyDialogRelative myDialogRelative = this.g0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.g0 = null;
        }
        MyLineFrame myLineFrame = this.h0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.h0 = null;
        }
        MyRoundImage myRoundImage3 = this.i0;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.i0 = null;
        }
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j0 = null;
        }
        MyRoundImage myRoundImage4 = this.k0;
        if (myRoundImage4 != null) {
            myRoundImage4.k();
            this.k0 = null;
        }
        MyRoundImage myRoundImage5 = this.l0;
        if (myRoundImage5 != null) {
            myRoundImage5.k();
            this.l0 = null;
        }
        MyRecyclerView myRecyclerView = this.m0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.m0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        SettingListAdapter settingListAdapter = this.o0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.o0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.p0 = null;
        this.B0 = null;
        super.dismiss();
    }
}
