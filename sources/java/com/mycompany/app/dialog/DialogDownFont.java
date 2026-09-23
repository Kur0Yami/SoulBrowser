package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.dialog.DialogVideoList;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundLinear;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogDownFont extends MyDialogBottom {
    public static final /* synthetic */ int C0 = 0;
    public String A0;
    public MainDownAdapter.DownListItem B0;
    public MainActivity a0;
    public Context b0;
    public DialogVideoList.VideoListListener c0;
    public String d0;
    public String e0;
    public ArrayList f0;
    public MyDialogLinear g0;
    public final boolean h0;
    public MyAdFrame i0;
    public MyAdNative j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public MyRoundLinear n0;
    public MyLineFrame o0;
    public ImageView p0;
    public AppCompatTextView q0;
    public MyRecyclerView r0;
    public MainDownAdapter s0;
    public DialogTask t0;
    public DialogDownLink u0;
    public boolean v0;
    public boolean w0;
    public MainDownAdapter.DownListItem x0;
    public MainDownAdapter.DownListItem y0;
    public MainDownAdapter.DownListItem z0;

    /* renamed from: com.mycompany.app.dialog.DialogDownFont$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogVideoList.VideoListListener videoListListener;
            DialogDownFont dialogDownFont = DialogDownFont.this;
            MainDownAdapter.DownListItem downListItem = dialogDownFont.x0;
            dialogDownFont.x0 = null;
            if (downListItem != null && (videoListListener = dialogDownFont.c0) != null) {
                videoListListener.a(downListItem.b, 0, downListItem.f16460c, false);
            }
            dialogDownFont.v0 = false;
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public ArrayList h;

        public DialogTask(DialogDownFont dialogDownFont) {
            WeakReference weakReference = new WeakReference(dialogDownFont);
            this.e = weakReference;
            DialogDownFont dialogDownFont2 = (DialogDownFont) weakReference.get();
            if (dialogDownFont2 != null) {
                this.f = dialogDownFont2.d0;
                this.g = dialogDownFont2.e0;
                MyDialogLinear myDialogLinear = dialogDownFont2.g0;
                if (myDialogLinear != null) {
                    myDialogLinear.e(0, 0, true, false);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:71:0x0050, code lost:
        
            r12.h = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r12 = this;
                java.lang.ref.WeakReference r0 = r12.e
                if (r0 != 0) goto L6
                goto Ldc
            L6:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.dialog.DialogDownFont r0 = (com.mycompany.app.dialog.DialogDownFont) r0
                if (r0 == 0) goto Ldc
                boolean r1 = r12.f12839c
                if (r1 == 0) goto L14
                goto Ldc
            L14:
                java.lang.String r1 = r12.f
                boolean r1 = android.text.TextUtils.isEmpty(r1)
                if (r1 == 0) goto L1e
                goto Ldc
            L1e:
                android.content.Context r4 = r0.b0
                r3 = 0
                r7 = 0
                r2 = 0
                java.lang.String r5 = r12.f
                java.lang.String r6 = r12.g
                java.net.HttpURLConnection r1 = com.mycompany.app.main.MainUtil.S3(r2, r3, r4, r5, r6, r7)
                if (r1 != 0) goto L2f
                goto Ldc
            L2f:
                r2 = 1
                r3 = 0
                r1.setDoInput(r2)     // Catch: java.lang.Exception -> Lc7
                r1.connect()     // Catch: java.lang.Exception -> Lc7
                java.io.InputStream r2 = r1.getInputStream()     // Catch: java.lang.Exception -> Lc7
                java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> Lc4
                r4.<init>(r2)     // Catch: java.lang.Exception -> Lc4
                java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Exception -> Lc2
                r5.<init>(r4)     // Catch: java.lang.Exception -> Lc2
                r6 = 0
            L46:
                java.lang.String r7 = r5.readLine()     // Catch: java.lang.Exception -> L54
                if (r7 == 0) goto Lca
                boolean r8 = r12.f12839c     // Catch: java.lang.Exception -> L54
                if (r8 == 0) goto L57
                r12.h = r3     // Catch: java.lang.Exception -> L54
                goto Lca
            L54:
                r3 = r2
                goto Lc9
            L57:
                java.lang.String r8 = com.mycompany.app.dialog.DialogDownFont.B(r0, r7)     // Catch: java.lang.Exception -> L54
                java.lang.String r7 = com.mycompany.app.dialog.DialogDownFont.C(r0, r7)     // Catch: java.lang.Exception -> L54
                boolean r9 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Exception -> L54
                if (r9 == 0) goto L6c
                boolean r9 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L54
                if (r9 == 0) goto L6c
                goto L46
            L6c:
                java.lang.String r9 = r5.readLine()     // Catch: java.lang.Exception -> L54
                if (r9 == 0) goto L46
                boolean r10 = r12.f12839c     // Catch: java.lang.Exception -> L54
                if (r10 == 0) goto L79
                r12.h = r3     // Catch: java.lang.Exception -> L54
                goto L46
            L79:
                java.lang.String r10 = com.mycompany.app.dialog.DialogDownFont.B(r0, r9)     // Catch: java.lang.Exception -> L54
                java.lang.String r9 = com.mycompany.app.dialog.DialogDownFont.C(r0, r9)     // Catch: java.lang.Exception -> L54
                boolean r11 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Exception -> L54
                if (r11 != 0) goto L88
                r8 = r10
            L88:
                boolean r10 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Exception -> L54
                if (r10 != 0) goto L8f
                r7 = r9
            L8f:
                boolean r9 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Exception -> L54
                if (r9 != 0) goto L6c
                boolean r9 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L54
                if (r9 == 0) goto L9c
                goto L6c
            L9c:
                java.lang.String r9 = "TTF"
                java.lang.String r10 = "otf"
                boolean r10 = r8.endsWith(r10)     // Catch: java.lang.Exception -> L54
                if (r10 == 0) goto La8
                java.lang.String r9 = "OTF"
            La8:
                com.mycompany.app.main.MainDownAdapter$DownListItem r10 = new com.mycompany.app.main.MainDownAdapter$DownListItem     // Catch: java.lang.Exception -> L54
                r10.<init>(r6, r8, r9)     // Catch: java.lang.Exception -> L54
                r10.b = r7     // Catch: java.lang.Exception -> L54
                java.util.ArrayList r7 = r12.h     // Catch: java.lang.Exception -> L54
                if (r7 != 0) goto Lba
                java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.Exception -> L54
                r7.<init>()     // Catch: java.lang.Exception -> L54
                r12.h = r7     // Catch: java.lang.Exception -> L54
            Lba:
                java.util.ArrayList r7 = r12.h     // Catch: java.lang.Exception -> L54
                r7.add(r10)     // Catch: java.lang.Exception -> L54
                int r6 = r6 + 1
                goto L46
            Lc2:
                r5 = r3
                goto L54
            Lc4:
                r4 = r3
                r5 = r4
                goto L54
            Lc7:
                r4 = r3
                r5 = r4
            Lc9:
                r2 = r3
            Lca:
                if (r5 == 0) goto Lcf
                r5.close()     // Catch: java.lang.Exception -> Lcf
            Lcf:
                if (r4 == 0) goto Ld4
                r4.close()     // Catch: java.lang.Exception -> Ld4
            Ld4:
                if (r2 == 0) goto Ld9
                r2.close()     // Catch: java.lang.Exception -> Ld9
            Ld9:
                r1.disconnect()
            Ldc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownFont.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogDownFont dialogDownFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogDownFont = (DialogDownFont) weakReference.get()) == null) {
                return;
            }
            dialogDownFont.t0 = null;
            dialogDownFont.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogDownFont dialogDownFont;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogDownFont = (DialogDownFont) weakReference.get()) != null) {
                dialogDownFont.t0 = null;
                ArrayList arrayList = this.h;
                MyDialogLinear myDialogLinear = dialogDownFont.g0;
                if (myDialogLinear != null) {
                    myDialogLinear.e(0, 0, false, false);
                    if (arrayList != null && !arrayList.isEmpty()) {
                        if (arrayList.size() == 1) {
                            if (dialogDownFont.c0 != null) {
                                MainDownAdapter.DownListItem downListItem = (MainDownAdapter.DownListItem) arrayList.get(0);
                                if (downListItem != null) {
                                    if (!dialogDownFont.v0) {
                                        dialogDownFont.v0 = true;
                                        dialogDownFont.x0 = downListItem;
                                        Handler handler = dialogDownFont.i;
                                        if (handler == null) {
                                            return;
                                        }
                                        handler.post(new AnonymousClass12());
                                        return;
                                    }
                                    return;
                                }
                                MainUtil.e8(dialogDownFont.a0, R.string.invalid_url);
                                dialogDownFont.dismiss();
                                return;
                            }
                            return;
                        }
                        dialogDownFont.f0 = arrayList;
                        dialogDownFont.o0.setVisibility(0);
                        dialogDownFont.r0.setVisibility(0);
                        dialogDownFont.s0 = new MainDownAdapter(dialogDownFont.a0, dialogDownFont.f0, 0, dialogDownFont.e0, new MainDownAdapter.MainDownListener() { // from class: com.mycompany.app.dialog.DialogDownFont.9
                            @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                            public final void a(int i) {
                                ArrayList arrayList2;
                                MainDownAdapter.DownListItem downListItem2;
                                DialogDownFont dialogDownFont2 = DialogDownFont.this;
                                if (dialogDownFont2.c0 != null && (arrayList2 = dialogDownFont2.f0) != null && i >= 0 && i < arrayList2.size() && (downListItem2 = (MainDownAdapter.DownListItem) dialogDownFont2.f0.get(i)) != null && !dialogDownFont2.v0) {
                                    dialogDownFont2.v0 = true;
                                    dialogDownFont2.x0 = downListItem2;
                                    Handler handler2 = dialogDownFont2.i;
                                    if (handler2 != null) {
                                        handler2.post(new AnonymousClass12());
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                            public final void b(int i) {
                            }

                            @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                            public final void c(int i) {
                                ArrayList arrayList2;
                                MainDownAdapter.DownListItem downListItem2;
                                final DialogDownFont dialogDownFont2 = DialogDownFont.this;
                                if (dialogDownFont2.c0 != null && (arrayList2 = dialogDownFont2.f0) != null && i >= 0 && i < arrayList2.size() && (downListItem2 = (MainDownAdapter.DownListItem) dialogDownFont2.f0.get(i)) != null && !TextUtils.isEmpty(downListItem2.b) && !dialogDownFont2.v0) {
                                    dialogDownFont2.v0 = true;
                                    dialogDownFont2.y0 = downListItem2;
                                    Handler handler2 = dialogDownFont2.i;
                                    if (handler2 != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.13
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final DialogDownFont dialogDownFont3 = DialogDownFont.this;
                                                MainDownAdapter.DownListItem downListItem3 = dialogDownFont3.y0;
                                                dialogDownFont3.y0 = null;
                                                if (downListItem3 != null) {
                                                    String str = downListItem3.b;
                                                    if (dialogDownFont3.a0 != null && dialogDownFont3.u0 == null) {
                                                        dialogDownFont3.F();
                                                        dialogDownFont3.z0 = downListItem3;
                                                        DialogDownLink dialogDownLink = new DialogDownLink(dialogDownFont3.a0, str, dialogDownFont3.e0, downListItem3.l, new DialogPreview.PreviewListener() { // from class: com.mycompany.app.dialog.DialogDownFont.14
                                                            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                            public final void a(String str2) {
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                            public final void b(String str2, long j, boolean z) {
                                                                MainDownAdapter.DownListItem downListItem4 = DialogDownFont.this.z0;
                                                                if (downListItem4 == null) {
                                                                    return;
                                                                }
                                                                downListItem4.l = j;
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                            public final void c(String str2, String str3) {
                                                                DialogDownFont dialogDownFont4 = DialogDownFont.this;
                                                                if (dialogDownFont4.c0 != null && !dialogDownFont4.v0) {
                                                                    dialogDownFont4.v0 = true;
                                                                    dialogDownFont4.A0 = str2;
                                                                    dialogDownFont4.B0 = dialogDownFont4.z0;
                                                                    dialogDownFont4.F();
                                                                    Handler handler3 = dialogDownFont4.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.14.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogVideoList.VideoListListener videoListListener;
                                                                            AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                                                                            DialogDownFont dialogDownFont5 = DialogDownFont.this;
                                                                            String str4 = dialogDownFont5.A0;
                                                                            MainDownAdapter.DownListItem downListItem4 = dialogDownFont5.B0;
                                                                            dialogDownFont5.A0 = null;
                                                                            dialogDownFont5.B0 = null;
                                                                            if (downListItem4 != null && (videoListListener = dialogDownFont5.c0) != null) {
                                                                                videoListListener.c(str4, downListItem4.f16460c, MainUtil.t2(downListItem4.d));
                                                                            }
                                                                            DialogDownFont.this.v0 = false;
                                                                        }
                                                                    });
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                            public final void d(String str2) {
                                                                DialogDownFont dialogDownFont4 = DialogDownFont.this;
                                                                if (dialogDownFont4.c0 != null && !dialogDownFont4.v0) {
                                                                    dialogDownFont4.v0 = true;
                                                                    dialogDownFont4.A0 = str2;
                                                                    dialogDownFont4.B0 = dialogDownFont4.z0;
                                                                    dialogDownFont4.F();
                                                                    Handler handler3 = dialogDownFont4.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.14.2
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogVideoList.VideoListListener videoListListener;
                                                                            AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                                                                            DialogDownFont dialogDownFont5 = DialogDownFont.this;
                                                                            String str3 = dialogDownFont5.A0;
                                                                            MainDownAdapter.DownListItem downListItem4 = dialogDownFont5.B0;
                                                                            dialogDownFont5.A0 = null;
                                                                            dialogDownFont5.B0 = null;
                                                                            if (downListItem4 != null && (videoListListener = dialogDownFont5.c0) != null) {
                                                                                videoListListener.b(str3, downListItem4.f16460c);
                                                                            }
                                                                            DialogDownFont.this.v0 = false;
                                                                        }
                                                                    });
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                            public final void e(String str2, String str3) {
                                                            }
                                                        });
                                                        dialogDownFont3.u0 = dialogDownLink;
                                                        dialogDownLink.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogDownFont.15
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i2 = DialogDownFont.C0;
                                                                DialogDownFont.this.F();
                                                            }
                                                        });
                                                    }
                                                }
                                                dialogDownFont3.v0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogDownFont.r0);
                        dialogDownFont.r0.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogDownFont.10
                            @Override // com.mycompany.app.image.ImageSizeListener
                            public final void a(View view, int i, int i2) {
                                DialogDownFont dialogDownFont2 = DialogDownFont.this;
                                if (!dialogDownFont2.l0) {
                                    dialogDownFont2.l0 = true;
                                    DialogDownFont.D(dialogDownFont2);
                                }
                            }
                        });
                        dialogDownFont.r0.setAdapter(dialogDownFont.s0);
                        dialogDownFont.t(dialogDownFont.r0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogDownFont.11
                            @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                            public final void a(boolean z) {
                                MyRecyclerView myRecyclerView = DialogDownFont.this.r0;
                                if (myRecyclerView == null) {
                                    return;
                                }
                                if (z) {
                                    myRecyclerView.w0();
                                } else {
                                    myRecyclerView.r0();
                                }
                            }
                        });
                        return;
                    }
                    MainUtil.e8(dialogDownFont.a0, R.string.invalid_url);
                    dialogDownFont.dismiss();
                }
            }
        }
    }

    public DialogDownFont(MainActivity mainActivity, String str, String str2, boolean z, DialogVideoList.VideoListListener videoListListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = videoListListener;
        this.d0 = str;
        this.e0 = str2;
        this.h0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0, types: [com.mycompany.app.view.MyDialogLinear, android.view.ViewGroup] */
            /* JADX WARN: Type inference failed for: r4v3, types: [android.widget.FrameLayout, android.view.View] */
            /* JADX WARN: Type inference failed for: r8v0, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.view.MyRoundLinear, android.view.ViewGroup] */
            @Override // java.lang.Runnable
            public final void run() {
                MyAdFrame myAdFrame;
                final DialogDownFont dialogDownFont = DialogDownFont.this;
                Context context = dialogDownFont.b0;
                if (context != null) {
                    ?? q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    if (dialogDownFont.h0) {
                        ?? frameLayout = new FrameLayout(context);
                        frameLayout.setMinimumHeight((int) MainUtil.G(context, 340.0f));
                        frameLayout.setVisibility(8);
                        q.addView(frameLayout, -1, -2);
                        myAdFrame = frameLayout;
                    } else {
                        myAdFrame = null;
                    }
                    ?? myRoundLinear = new MyRoundLinear(context);
                    myRoundLinear.setOrientation(1);
                    q.addView(myRoundLinear, -1, -2);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    myRoundLinear.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart((int) MainUtil.G(context, 72.0f));
                    myLineFrame.addView(j, layoutParams2);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams3.gravity = 8388627;
                    layoutParams3.weight = 1.0f;
                    myRoundLinear.addView(u, layoutParams3);
                    dialogDownFont.g0 = q;
                    dialogDownFont.n0 = myRoundLinear;
                    dialogDownFont.o0 = myLineFrame;
                    dialogDownFont.p0 = imageView;
                    dialogDownFont.q0 = j;
                    dialogDownFont.r0 = u;
                    dialogDownFont.i0 = myAdFrame;
                    Handler handler2 = dialogDownFont.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context2;
                            int i2;
                            final DialogDownFont dialogDownFont2 = DialogDownFont.this;
                            if (dialogDownFont2.g0 != null && (context2 = dialogDownFont2.b0) != null) {
                                dialogDownFont2.r0.setMinimumHeight((int) MainUtil.G(context2, 112.0f));
                                dialogDownFont2.o0.setVisibility(4);
                                dialogDownFont2.r0.setVisibility(4);
                                if (MainApp.K1) {
                                    dialogDownFont2.p0.setImageResource(R.drawable.outline_download_dark_24);
                                    dialogDownFont2.q0.setTextColor(-328966);
                                } else {
                                    dialogDownFont2.p0.setImageResource(R.drawable.outline_download_black_24);
                                    dialogDownFont2.q0.setTextColor(-16777216);
                                }
                                dialogDownFont2.q0.setText(R.string.download);
                                dialogDownFont2.r0.u0(true, false);
                                if (dialogDownFont2.i0 != null) {
                                    dialogDownFont2.q = new MyDialogBottom.ShowAdListener() { // from class: com.mycompany.app.dialog.DialogDownFont.5
                                        @Override // com.mycompany.app.view.MyDialogBottom.ShowAdListener
                                        public final void a() {
                                            DialogDownFont dialogDownFont3 = DialogDownFont.this;
                                            if (!dialogDownFont3.k0) {
                                                dialogDownFont3.k0 = true;
                                                DialogDownFont.D(dialogDownFont3);
                                            }
                                        }
                                    };
                                    dialogDownFont2.g0.setBackground(null);
                                    dialogDownFont2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownFont.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownFont.this.dismiss();
                                        }
                                    });
                                    MyRoundLinear myRoundLinear2 = dialogDownFont2.n0;
                                    if (MainApp.K1) {
                                        i2 = -14606047;
                                    } else {
                                        i2 = -1;
                                    }
                                    int i3 = MainApp.l1;
                                    myRoundLinear2.n = i2;
                                    myRoundLinear2.m = i3;
                                    myRoundLinear2.c(true, false);
                                    dialogDownFont2.o0.setLineUp(true);
                                }
                                dialogDownFont2.G(dialogDownFont2.p());
                                dialogDownFont2.g(dialogDownFont2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownFont.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogDownFont dialogDownFont3 = DialogDownFont.this;
                                        if (dialogDownFont3.g0 == null) {
                                            return;
                                        }
                                        dialogDownFont3.show();
                                        DialogTask dialogTask = dialogDownFont3.t0;
                                        if (dialogTask != null) {
                                            dialogTask.f12839c = true;
                                        }
                                        dialogDownFont3.t0 = null;
                                        DialogTask dialogTask2 = new DialogTask(dialogDownFont3);
                                        dialogDownFont3.t0 = dialogTask2;
                                        dialogTask2.b(dialogDownFont3.b0);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static String B(DialogDownFont dialogDownFont, String str) {
        int indexOf;
        int i;
        int indexOf2;
        if (!TextUtils.isEmpty(str)) {
            try {
                int indexOf3 = str.indexOf("\"filename\"");
                if (indexOf3 != -1 && (indexOf = str.indexOf(34, indexOf3 + 11)) != -1 && (indexOf2 = str.indexOf(34, (i = indexOf + 1))) != -1) {
                    String trim = str.substring(i, indexOf2).trim();
                    if (trim.endsWith(".ttf") || trim.endsWith(".otf")) {
                        return trim.replace('/', '-');
                    }
                    return null;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static String C(DialogDownFont dialogDownFont, String str) {
        int indexOf;
        int i;
        int indexOf2;
        if (!TextUtils.isEmpty(str)) {
            try {
                int indexOf3 = str.indexOf("\"url\"");
                if (indexOf3 != -1 && (indexOf = str.indexOf(34, indexOf3 + 6)) != -1 && (indexOf2 = str.indexOf(34, (i = indexOf + 1))) != -1) {
                    String trim = str.substring(i, indexOf2).trim();
                    if (URLUtil.isNetworkUrl(trim)) {
                        return trim;
                    }
                    return null;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static void D(DialogDownFont dialogDownFont) {
        MyAdFrame myAdFrame;
        if (dialogDownFont.k0 && dialogDownFont.l0 && (myAdFrame = dialogDownFont.i0) != null && dialogDownFont.j0 == null && !dialogDownFont.m0) {
            dialogDownFont.m0 = true;
            myAdFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.6
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity mainActivity;
                    final DialogDownFont dialogDownFont2 = DialogDownFont.this;
                    if (dialogDownFont2.i0 != null && dialogDownFont2.j0 == null && MainApp.A(dialogDownFont2.b0) && (mainActivity = dialogDownFont2.a0) != null) {
                        dialogDownFont2.j0 = MainApp.d(mainActivity, 0, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogDownFont.7
                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void b(MyAdNative myAdNative) {
                                int i = DialogDownFont.C0;
                                DialogDownFont.this.H();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void c(MyAdNative myAdNative) {
                                int i = DialogDownFont.C0;
                                DialogDownFont.this.H();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void e() {
                                DialogDownFont.this.dismiss();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void f(MyAdNative myAdNative) {
                                int i = DialogDownFont.C0;
                                DialogDownFont.this.H();
                            }
                        });
                        dialogDownFont2.H();
                        dialogDownFont2.i0.a(dialogDownFont2.j0, true, dialogDownFont2.i);
                    }
                    dialogDownFont2.m0 = false;
                }
            });
        }
    }

    public final void E() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        F();
        DialogTask dialogTask = this.t0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.t0 = null;
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundLinear myRoundLinear = this.n0;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.n0 = null;
        }
        MyLineFrame myLineFrame = this.o0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.o0 = null;
        }
        MyRecyclerView myRecyclerView = this.r0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.r0 = null;
        }
        MainDownAdapter mainDownAdapter = this.s0;
        if (mainDownAdapter != null) {
            mainDownAdapter.x();
            this.s0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.p0 = null;
        this.q0 = null;
        super.dismiss();
    }

    public final void F() {
        DialogDownLink dialogDownLink = this.u0;
        if (dialogDownLink != null) {
            dialogDownLink.dismiss();
            this.u0 = null;
        }
        this.z0 = null;
    }

    public final void G(boolean z) {
        if (this.i0 == null) {
            return;
        }
        if (z) {
            z = q();
        }
        if (z) {
            MyAdNative myAdNative = this.j0;
            if (myAdNative != null) {
                myAdNative.setVisibility(8);
            }
            this.i0.setVisibility(8);
            return;
        }
        MyAdNative myAdNative2 = this.j0;
        if (myAdNative2 != null) {
            if (myAdNative2.p()) {
                this.j0.setVisibility(0);
            } else {
                this.j0.setVisibility(8);
            }
        }
        this.i0.setVisibility(0);
    }

    public final void H() {
        MyAdNative myAdNative;
        int i;
        if (this.i0 != null && (myAdNative = this.j0) != null) {
            if (!myAdNative.p()) {
                G(p());
                return;
            }
            MyDialogLinear myDialogLinear = this.g0;
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            myDialogLinear.setBackgroundColor(i);
            this.i0.setOnClickListener(null);
            this.j0.setDarkMode(true);
            G(p());
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.w0) {
            this.w0 = true;
            if (this.i0 == null) {
                E();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownFont dialogDownFont = DialogDownFont.this;
                    MyAdFrame myAdFrame = dialogDownFont.i0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogDownFont.i0 = null;
                        MainApp.f(dialogDownFont.b0, 0);
                    }
                    dialogDownFont.j0 = null;
                    Handler handler2 = dialogDownFont.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownFont.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownFont dialogDownFont2 = DialogDownFont.this;
                            int i = DialogDownFont.C0;
                            dialogDownFont2.E();
                        }
                    });
                }
            });
        }
    }
}
