package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogFileDelete extends MyDialogBottom {
    public DialogTask A0;
    public EventHandler B0;
    public int C0;
    public int D0;
    public int E0;
    public long F0;
    public long G0;
    public String H0;
    public String I0;
    public MainItem.ChildItem J0;
    public boolean K0;
    public boolean L0;
    public Context a0;
    public final int b0;
    public List c0;
    public final int d0;
    public final int e0;
    public FileDeleteListener f0;
    public MyDialogLinear g0;
    public MyRoundImage h0;
    public AppCompatTextView i0;
    public MyEditText j0;
    public MyLineFrame k0;
    public AppCompatTextView l0;
    public MyProgressBar m0;
    public AppCompatTextView n0;
    public AppCompatTextView o0;
    public MyLineFrame p0;
    public AppCompatTextView q0;
    public AppCompatTextView r0;
    public AppCompatTextView s0;
    public AppCompatTextView t0;
    public AppCompatTextView u0;
    public AppCompatTextView v0;
    public AppCompatTextView w0;
    public AppCompatTextView x0;
    public AppCompatTextView y0;
    public MyLineText z0;

    /* loaded from: classes3.dex */
    public static class CopyInfo {

        /* renamed from: a, reason: collision with root package name */
        public String f13668a;
        public String b;
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public List f;

        public DialogTask(DialogFileDelete dialogFileDelete) {
            WeakReference weakReference = new WeakReference(dialogFileDelete);
            this.e = weakReference;
            DialogFileDelete dialogFileDelete2 = (DialogFileDelete) weakReference.get();
            if (dialogFileDelete2 != null) {
                this.f = dialogFileDelete2.c0;
                dialogFileDelete2.B0 = new EventHandler(dialogFileDelete2);
                dialogFileDelete2.C0 = 0;
                dialogFileDelete2.D0 = 0;
                dialogFileDelete2.E0 = 0;
                dialogFileDelete2.F0 = 0L;
                dialogFileDelete2.G0 = System.currentTimeMillis();
                dialogFileDelete2.I0 = null;
                FileDeleteListener fileDeleteListener = dialogFileDelete2.f0;
                if (fileDeleteListener != null) {
                    fileDeleteListener.a();
                }
            }
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [com.mycompany.app.dialog.DialogFileDelete$CopyInfo, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogFileDelete dialogFileDelete;
            List list;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogFileDelete = (DialogFileDelete) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && list.size() != 0) {
                ArrayList arrayList = new ArrayList(this.f);
                this.f = arrayList;
                int size = arrayList.size();
                dialogFileDelete.C0 = size;
                dialogFileDelete.F0 = size;
                EventHandler eventHandler = dialogFileDelete.B0;
                if (eventHandler != null) {
                    eventHandler.sendEmptyMessage(1);
                }
                for (MainItem.ChildItem childItem : this.f) {
                    if (!this.f12839c) {
                        if (!TextUtils.isEmpty(childItem.g)) {
                            String str = childItem.g;
                            String str2 = childItem.h;
                            if (dialogFileDelete.B0 != null) {
                                ?? obj = new Object();
                                obj.f13668a = str;
                                obj.b = str2;
                                Message message = new Message();
                                message.what = 0;
                                message.obj = obj;
                                dialogFileDelete.B0.sendMessage(message);
                            }
                            boolean A = MainUtil.A(dialogFileDelete.a0, childItem.g);
                            if (!A) {
                                A = !MainUtil.h6(dialogFileDelete.a0, childItem.g);
                            }
                            if (A) {
                                DataUtil.c(dialogFileDelete.a0, dialogFileDelete.b0, childItem.g);
                            }
                            EventHandler eventHandler2 = dialogFileDelete.B0;
                            if (eventHandler2 != null) {
                                eventHandler2.removeMessages(1);
                                dialogFileDelete.D0++;
                                if (!A) {
                                    dialogFileDelete.E0++;
                                }
                                dialogFileDelete.B0.sendEmptyMessage(1);
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogFileDelete dialogFileDelete;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogFileDelete = (DialogFileDelete) weakReference.get()) != null) {
                dialogFileDelete.A0 = null;
                EventHandler eventHandler = dialogFileDelete.B0;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    dialogFileDelete.B0.removeMessages(1);
                    dialogFileDelete.B0 = null;
                }
                FileDeleteListener fileDeleteListener = dialogFileDelete.f0;
                if (fileDeleteListener != null) {
                    fileDeleteListener.b(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogFileDelete dialogFileDelete;
            boolean z;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogFileDelete = (DialogFileDelete) weakReference.get()) != null) {
                dialogFileDelete.A0 = null;
                EventHandler eventHandler = dialogFileDelete.B0;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    dialogFileDelete.B0.removeMessages(1);
                    dialogFileDelete.B0 = null;
                }
                dialogFileDelete.o0.setText("0:00:00");
                if (dialogFileDelete.E0 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                FileDeleteListener fileDeleteListener = dialogFileDelete.f0;
                if (fileDeleteListener != null) {
                    fileDeleteListener.b(z);
                }
                if (z) {
                    MainUtil.e8(dialogFileDelete.a0, R.string.deleted);
                    return;
                }
                if (dialogFileDelete.g0 != null) {
                    dialogFileDelete.D(null);
                    int i2 = dialogFileDelete.E0;
                    int i3 = dialogFileDelete.C0;
                    if (i2 > i3) {
                        dialogFileDelete.E0 = i3;
                    }
                    dialogFileDelete.D0 = i3 - dialogFileDelete.E0;
                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogFileDelete.C0, dialogFileDelete.q0);
                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogFileDelete.E0, dialogFileDelete.r0);
                    com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogFileDelete.D0, dialogFileDelete.s0);
                    int i4 = -328966;
                    if (dialogFileDelete.E0 > 0) {
                        dialogFileDelete.r0.setTextColor(-769226);
                    } else {
                        AppCompatTextView appCompatTextView = dialogFileDelete.r0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -16777216;
                        }
                        appCompatTextView.setTextColor(i);
                    }
                    dialogFileDelete.setCanceledOnTouchOutside(true);
                    dialogFileDelete.k0.setVisibility(8);
                    dialogFileDelete.p0.setVisibility(0);
                    dialogFileDelete.z0.setEnabled(true);
                    dialogFileDelete.z0.setActivated(true);
                    dialogFileDelete.z0.setText(R.string.ok);
                    MyLineText myLineText = dialogFileDelete.z0;
                    if (!MainApp.K1) {
                        i4 = -14784824;
                    }
                    myLineText.setTextColor(i4);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f13669a;

        public EventHandler(DialogFileDelete dialogFileDelete) {
            super(Looper.getMainLooper());
            this.f13669a = new WeakReference(dialogFileDelete);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object obj;
            AppCompatTextView appCompatTextView;
            DialogFileDelete dialogFileDelete = (DialogFileDelete) this.f13669a.get();
            if (dialogFileDelete != null) {
                int i = message.what;
                long j = 1000;
                if (i != 0) {
                    if (i == 1 && dialogFileDelete.A0 != null && (appCompatTextView = dialogFileDelete.l0) != null) {
                        int i2 = dialogFileDelete.D0;
                        int i3 = dialogFileDelete.C0;
                        if (i2 > i3) {
                            dialogFileDelete.D0 = i3;
                        }
                        if (dialogFileDelete.E0 > i3) {
                            dialogFileDelete.E0 = i3;
                        }
                        appCompatTextView.setText(MainUtil.h3(dialogFileDelete.D0, i3));
                        dialogFileDelete.m0.setMax(dialogFileDelete.C0);
                        dialogFileDelete.m0.setProgress(dialogFileDelete.D0);
                        if (dialogFileDelete.D0 > 0) {
                            long currentTimeMillis = System.currentTimeMillis() - dialogFileDelete.G0;
                            long j2 = dialogFileDelete.F0;
                            long j3 = dialogFileDelete.D0;
                            long j4 = ((j2 - j3) * currentTimeMillis) / j3;
                            if (j4 <= 0 || j4 >= 1000) {
                                j = j4;
                            }
                            dialogFileDelete.o0.setText(MainUtil.s2(j));
                        }
                        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogFileDelete.E0, dialogFileDelete.n0);
                        if (dialogFileDelete.E0 > 0) {
                            dialogFileDelete.n0.setTextColor(-769226);
                        }
                        dialogFileDelete.setCanceledOnTouchOutside(false);
                        dialogFileDelete.k0.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (dialogFileDelete.A0 != null && dialogFileDelete.h0 != null && (obj = message.obj) != null) {
                    CopyInfo copyInfo = (CopyInfo) obj;
                    String str = copyInfo.f13668a;
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = copyInfo.b;
                        if (!str.equals(dialogFileDelete.I0)) {
                            dialogFileDelete.I0 = str;
                            if (!dialogFileDelete.K0 && !str.equals(dialogFileDelete.H0)) {
                                dialogFileDelete.h0.o(dialogFileDelete.d0, dialogFileDelete.e0);
                                dialogFileDelete.i0.setText(str2);
                            }
                        }
                        dialogFileDelete.m0.setProgress(dialogFileDelete.D0);
                        if (dialogFileDelete.D0 > 0) {
                            long currentTimeMillis2 = System.currentTimeMillis() - dialogFileDelete.G0;
                            long j5 = dialogFileDelete.F0;
                            long j6 = dialogFileDelete.D0;
                            long j7 = ((j5 - j6) * currentTimeMillis2) / j6;
                            if (j7 <= 0 || j7 >= 1000) {
                                j = j7;
                            }
                            dialogFileDelete.o0.setText(MainUtil.s2(j));
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface FileDeleteListener {
        void a();

        void b(boolean z);
    }

    public DialogFileDelete(Activity activity, int i, List list, FileDeleteListener fileDeleteListener) {
        super(activity);
        if (list != null && !list.isEmpty()) {
            this.a0 = getContext();
            this.b0 = i;
            this.c0 = list;
            this.f0 = fileDeleteListener;
            if (i == 1) {
                this.d0 = -460552;
                this.e0 = R.drawable.outline_local_library_black_24;
            } else if (i == 2) {
                this.d0 = -460552;
                this.e0 = R.drawable.outline_picture_as_pdf_black_24;
            } else if (i == 3) {
                this.d0 = -460552;
                this.e0 = R.drawable.outline_folder_zip_black_24;
            } else {
                this.d0 = -460552;
                this.e0 = R.drawable.outline_draft_black_24;
            }
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileDelete.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogFileDelete.B(DialogFileDelete.this);
                    }
                });
            }
        }
    }

    public static void B(DialogFileDelete dialogFileDelete) {
        Context context = dialogFileDelete.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            q.addView(frameLayout, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            frameLayout.addView(myRoundImage, layoutParams);
            AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            i2.setEllipsize(TextUtils.TruncateAt.END);
            i2.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 16;
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(MainApp.E1);
            frameLayout.addView(i2, layoutParams2);
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
            myEditText.b(0);
            myEditText.setVisibility(8);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, G);
            layoutParams3.setMarginStart(MainApp.E1);
            layoutParams3.setMarginEnd(MainApp.E1);
            q.addView(myEditText, layoutParams3);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.d(MainApp.E1);
            myLineFrame.setVisibility(8);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams4.weight = 1.0f;
            q.addView(myLineFrame, layoutParams4);
            NestedScrollView nestedScrollView = new NestedScrollView(context, null);
            nestedScrollView.setOverScrollMode(2);
            myLineFrame.addView(nestedScrollView, -1, -2);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.setOrientation(1);
            nestedScrollView.addView(linearLayout, -1, -2);
            FrameLayout frameLayout2 = new FrameLayout(context);
            int i3 = MainApp.F1;
            frameLayout2.setPadding(0, i3, 0, i3);
            linearLayout.addView(frameLayout2, -1, -2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j.setText(R.string.total);
            frameLayout2.addView(j, -2, -2);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setTextDirection(3);
            appCompatTextView.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams5.gravity = 8388613;
            frameLayout2.addView(appCompatTextView, layoutParams5);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            linearLayout.addView(myProgressBar, -1, (int) MainUtil.G(context, 12.0f));
            FrameLayout frameLayout3 = new FrameLayout(context);
            int i4 = MainApp.F1;
            frameLayout3.setPadding(0, i4, 0, i4);
            linearLayout.addView(frameLayout3, -1, -2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j2.setText(R.string.fail);
            frameLayout3.addView(j2, -2, -2);
            AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams6.gravity = 8388613;
            frameLayout3.addView(j3, layoutParams6);
            FrameLayout frameLayout4 = new FrameLayout(context);
            int i5 = MainApp.F1;
            frameLayout4.setPadding(0, i5, 0, i5);
            linearLayout.addView(frameLayout4, -1, -2);
            AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j4.setText(R.string.estimated);
            frameLayout4.addView(j4, -2, -2);
            AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams7.gravity = 8388613;
            frameLayout4.addView(j5, layoutParams7);
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            myLineFrame2.d(MainApp.E1);
            myLineFrame2.setVisibility(8);
            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams8.weight = 1.0f;
            q.addView(myLineFrame2, layoutParams8);
            NestedScrollView nestedScrollView2 = new NestedScrollView(context, null);
            nestedScrollView2.setOverScrollMode(2);
            myLineFrame2.addView(nestedScrollView2, -1, -2);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout2.setOrientation(1);
            nestedScrollView2.addView(linearLayout2, -1, -2);
            FrameLayout frameLayout5 = new FrameLayout(context);
            int i6 = MainApp.F1;
            frameLayout5.setPadding(0, i6, 0, i6);
            linearLayout2.addView(frameLayout5, -1, -2);
            AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j6.setText(R.string.total);
            frameLayout5.addView(j6, -2, -2);
            AppCompatTextView j7 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams9.gravity = 8388613;
            frameLayout5.addView(j7, layoutParams9);
            FrameLayout frameLayout6 = new FrameLayout(context);
            int i7 = MainApp.F1;
            frameLayout6.setPadding(0, i7, 0, i7);
            linearLayout2.addView(frameLayout6, -1, -2);
            AppCompatTextView j8 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j8.setText(R.string.fail);
            frameLayout6.addView(j8, -2, -2);
            AppCompatTextView j9 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams10.gravity = 8388613;
            frameLayout6.addView(j9, layoutParams10);
            FrameLayout frameLayout7 = new FrameLayout(context);
            int i8 = MainApp.F1;
            frameLayout7.setPadding(0, i8, 0, i8);
            linearLayout2.addView(frameLayout7, -1, -2);
            AppCompatTextView j10 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j10.setText(R.string.success);
            frameLayout7.addView(j10, -2, -2);
            AppCompatTextView j11 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams11.gravity = 8388613;
            frameLayout7.addView(j11, layoutParams11);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogFileDelete.g0 = q;
            dialogFileDelete.h0 = myRoundImage;
            dialogFileDelete.i0 = i2;
            dialogFileDelete.j0 = myEditText;
            dialogFileDelete.k0 = myLineFrame;
            dialogFileDelete.l0 = appCompatTextView;
            dialogFileDelete.m0 = myProgressBar;
            dialogFileDelete.n0 = j3;
            dialogFileDelete.o0 = j5;
            dialogFileDelete.p0 = myLineFrame2;
            dialogFileDelete.q0 = j7;
            dialogFileDelete.r0 = j9;
            dialogFileDelete.s0 = j11;
            dialogFileDelete.t0 = j;
            dialogFileDelete.u0 = j2;
            dialogFileDelete.v0 = j4;
            dialogFileDelete.w0 = j6;
            dialogFileDelete.x0 = j8;
            dialogFileDelete.y0 = j10;
            dialogFileDelete.z0 = myLineText;
            Handler handler = dialogFileDelete.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileDelete.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogFileDelete dialogFileDelete2 = DialogFileDelete.this;
                    if (dialogFileDelete2.g0 != null && dialogFileDelete2.a0 != null) {
                        if (MainApp.K1) {
                            dialogFileDelete2.i0.setTextColor(-328966);
                            dialogFileDelete2.j0.setTextColor(-328966);
                            dialogFileDelete2.t0.setTextColor(-328966);
                            dialogFileDelete2.l0.setTextColor(-328966);
                            dialogFileDelete2.u0.setTextColor(-328966);
                            dialogFileDelete2.n0.setTextColor(-328966);
                            dialogFileDelete2.v0.setTextColor(-328966);
                            dialogFileDelete2.o0.setTextColor(-328966);
                            dialogFileDelete2.w0.setTextColor(-328966);
                            dialogFileDelete2.q0.setTextColor(-328966);
                            dialogFileDelete2.x0.setTextColor(-328966);
                            dialogFileDelete2.r0.setTextColor(-328966);
                            dialogFileDelete2.y0.setTextColor(-328966);
                            dialogFileDelete2.s0.setTextColor(-328966);
                            dialogFileDelete2.z0.setTextColor(-328966);
                            dialogFileDelete2.z0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogFileDelete2.i0.setTextColor(-16777216);
                            dialogFileDelete2.j0.setTextColor(-16777216);
                            dialogFileDelete2.t0.setTextColor(-16777216);
                            dialogFileDelete2.l0.setTextColor(-16777216);
                            dialogFileDelete2.u0.setTextColor(-16777216);
                            dialogFileDelete2.n0.setTextColor(-16777216);
                            dialogFileDelete2.v0.setTextColor(-16777216);
                            dialogFileDelete2.o0.setTextColor(-16777216);
                            dialogFileDelete2.w0.setTextColor(-16777216);
                            dialogFileDelete2.q0.setTextColor(-16777216);
                            dialogFileDelete2.x0.setTextColor(-16777216);
                            dialogFileDelete2.r0.setTextColor(-16777216);
                            dialogFileDelete2.y0.setTextColor(-16777216);
                            dialogFileDelete2.s0.setTextColor(-16777216);
                            dialogFileDelete2.z0.setTextColor(-14784824);
                            dialogFileDelete2.z0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        dialogFileDelete2.z0.setText(R.string.delete);
                        dialogFileDelete2.D(dialogFileDelete2.c0);
                        int size = dialogFileDelete2.c0.size();
                        dialogFileDelete2.l0.setText(MainUtil.h3(0, size));
                        dialogFileDelete2.m0.setMax(size);
                        dialogFileDelete2.n0.setText("0");
                        dialogFileDelete2.o0.setText("0:00:00");
                        dialogFileDelete2.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogFileDelete.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogFileDelete dialogFileDelete3 = DialogFileDelete.this;
                                MyLineText myLineText2 = dialogFileDelete3.z0;
                                if (myLineText2 != null) {
                                    if (myLineText2.isActivated()) {
                                        dialogFileDelete3.C();
                                    } else {
                                        if (dialogFileDelete3.L0) {
                                            return;
                                        }
                                        dialogFileDelete3.L0 = true;
                                        dialogFileDelete3.z0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileDelete.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i9;
                                                final DialogFileDelete dialogFileDelete4 = DialogFileDelete.this;
                                                if (dialogFileDelete4.z0 != null) {
                                                    dialogFileDelete4.setCanceledOnTouchOutside(false);
                                                    dialogFileDelete4.k0.setVisibility(0);
                                                    dialogFileDelete4.z0.setEnabled(true);
                                                    dialogFileDelete4.z0.setActivated(true);
                                                    dialogFileDelete4.z0.setText(R.string.cancel);
                                                    MyLineText myLineText3 = dialogFileDelete4.z0;
                                                    if (MainApp.K1) {
                                                        i9 = -328966;
                                                    } else {
                                                        i9 = -16777216;
                                                    }
                                                    myLineText3.setTextColor(i9);
                                                    DialogTask dialogTask = dialogFileDelete4.A0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogFileDelete4.A0 = null;
                                                    MyLineText myLineText4 = dialogFileDelete4.z0;
                                                    if (myLineText4 != null) {
                                                        myLineText4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileDelete.5
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogFileDelete dialogFileDelete5 = DialogFileDelete.this;
                                                                DialogTask dialogTask2 = new DialogTask(dialogFileDelete5);
                                                                dialogFileDelete5.A0 = dialogTask2;
                                                                dialogTask2.b(dialogFileDelete5.a0);
                                                            }
                                                        });
                                                    }
                                                }
                                                dialogFileDelete4.L0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogFileDelete2.g(dialogFileDelete2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogFileDelete.4
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogFileDelete dialogFileDelete3 = DialogFileDelete.this;
                                if (dialogFileDelete3.g0 == null) {
                                    return;
                                }
                                dialogFileDelete3.setCanceledOnTouchOutside(true);
                                dialogFileDelete3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        int i;
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null && this.A0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.z0.setEnabled(false);
            this.z0.setActivated(true);
            this.z0.setText(R.string.canceling);
            MyLineText myLineText = this.z0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.A0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.A0 = null;
            return;
        }
        dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void D(List list) {
        if (!this.K0 && this.h0 != null) {
            final MainItem.ChildItem childItem = this.J0;
            if (childItem == null && list != null) {
                MainItem.ChildItem childItem2 = (MainItem.ChildItem) list.get(0);
                if (childItem2 == null) {
                    childItem = this.J0;
                } else {
                    ?? obj = new Object();
                    this.J0 = obj;
                    obj.s = list.size();
                    MainItem.ChildItem childItem3 = this.J0;
                    childItem3.f16551c = childItem2.f16551c;
                    childItem3.g = childItem2.g;
                    childItem3.y = childItem2.y;
                    childItem3.z = childItem2.z;
                    if (childItem3.s == 1) {
                        childItem3.v = childItem2.v;
                        childItem3.w = childItem2.w;
                        childItem3.h = childItem2.h;
                    } else {
                        childItem3.v = this.d0;
                        childItem3.w = this.e0;
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.J0.s);
                        childItem3.h = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.items, this.a0, sb);
                    }
                    childItem = this.J0;
                }
            }
            if (childItem != null) {
                this.h0.o(childItem.v, childItem.w);
                this.i0.setText(childItem.h);
                if (childItem.s == 1) {
                    this.K0 = true;
                    MyRoundImage myRoundImage = this.h0;
                    if (myRoundImage != null) {
                        String str = childItem.g;
                        this.H0 = str;
                        int i = childItem.f16551c;
                        if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5 && i != 6 && i != 11) {
                            myRoundImage.o(childItem.v, childItem.w);
                            return;
                        }
                        final ?? obj2 = new Object();
                        obj2.f16554a = i;
                        obj2.q = str;
                        obj2.s = childItem.z;
                        obj2.t = 2;
                        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                        builder.f20960a = true;
                        Bitmap.Config config = Bitmap.Config.RGB_565;
                        builder.a();
                        ImageLoader.f().c(obj2, this.h0, new DisplayImageOptions(builder), new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogFileDelete.6
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                                MyRoundImage myRoundImage2;
                                if (obj2.equals(viewItem) && (myRoundImage2 = DialogFileDelete.this.h0) != null) {
                                    MainItem.ChildItem childItem4 = childItem;
                                    myRoundImage2.o(childItem4.v, childItem4.w);
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                                MyRoundImage myRoundImage2;
                                if (childItem.f16551c == 4 && obj2.equals(viewItem) && (myRoundImage2 = DialogFileDelete.this.h0) != null) {
                                    myRoundImage2.setBackColor(-460552);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        C();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.A0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.A0 = null;
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundImage myRoundImage = this.h0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.h0 = null;
        }
        MyEditText myEditText = this.j0;
        if (myEditText != null) {
            myEditText.c();
            this.j0 = null;
        }
        MyLineFrame myLineFrame = this.k0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.k0 = null;
        }
        MyProgressBar myProgressBar = this.m0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.m0 = null;
        }
        MyLineFrame myLineFrame2 = this.p0;
        if (myLineFrame2 != null) {
            myLineFrame2.g();
            this.p0 = null;
        }
        MyLineText myLineText = this.z0;
        if (myLineText != null) {
            myLineText.u();
            this.z0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.f0 = null;
        this.i0 = null;
        this.l0 = null;
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
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        super.dismiss();
    }
}
