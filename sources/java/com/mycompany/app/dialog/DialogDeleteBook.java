package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebClean;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogDeleteBook extends MyDialogBottom {
    public Context a0;
    public DeleteBookListener b0;
    public final int c0;
    public List d0;
    public String e0;
    public final boolean f0;
    public final boolean g0;
    public MyDialogLinear h0;
    public MyRoundImage i0;
    public AppCompatTextView j0;
    public MyLineLinear k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public MyProgressBar n0;
    public MyLineText o0;
    public DialogTask p0;
    public MainListLoader q0;
    public DisplayImageOptions r0;
    public boolean s0;
    public boolean t0;
    public WebClean u0;

    /* loaded from: classes3.dex */
    public interface DeleteBookListener {
        void a();

        void b();
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final int f;
        public List g;
        public final boolean h;
        public final boolean i;
        public int j;
        public int k;

        public DialogTask(DialogDeleteBook dialogDeleteBook) {
            WeakReference weakReference = new WeakReference(dialogDeleteBook);
            this.e = weakReference;
            DialogDeleteBook dialogDeleteBook2 = (DialogDeleteBook) weakReference.get();
            if (dialogDeleteBook2 == null) {
                return;
            }
            this.f = dialogDeleteBook2.c0;
            this.g = dialogDeleteBook2.d0;
            this.h = dialogDeleteBook2.f0;
            this.i = dialogDeleteBook2.g0;
        }

        /* JADX WARN: Removed duplicated region for block: B:363:0x0737  */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 2974
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDeleteBook.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogDeleteBook dialogDeleteBook;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogDeleteBook = (DialogDeleteBook) weakReference.get()) != null) {
                dialogDeleteBook.p0 = null;
                DeleteBookListener deleteBookListener = dialogDeleteBook.b0;
                if (deleteBookListener != null) {
                    deleteBookListener.b();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogDeleteBook dialogDeleteBook;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogDeleteBook = (DialogDeleteBook) weakReference.get()) != null) {
                dialogDeleteBook.p0 = null;
                DeleteBookListener deleteBookListener = dialogDeleteBook.b0;
                if (deleteBookListener != null) {
                    deleteBookListener.b();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void g() {
            DialogDeleteBook dialogDeleteBook;
            AppCompatTextView appCompatTextView;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogDeleteBook = (DialogDeleteBook) weakReference.get()) == null || (appCompatTextView = dialogDeleteBook.m0) == null) {
                return;
            }
            int i = this.k;
            int i2 = this.j;
            if (i > i2) {
                this.k = i2;
            }
            appCompatTextView.setText(MainUtil.h3(this.k, i2));
            dialogDeleteBook.n0.setMax(this.j);
            dialogDeleteBook.n0.setProgress(this.k);
        }
    }

    public DialogDeleteBook(Activity activity, int i, List list, String str, boolean z, boolean z2, DeleteBookListener deleteBookListener) {
        super(activity);
        if (list != null && !list.isEmpty()) {
            Context context = getContext();
            this.a0 = context;
            this.b0 = deleteBookListener;
            this.c0 = i;
            this.d0 = list;
            this.e0 = str;
            this.f0 = z;
            this.g0 = z2;
            if (i == 23) {
                this.u0 = MainApp.v(context, false);
            }
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDeleteBook.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final DialogDeleteBook dialogDeleteBook = DialogDeleteBook.this;
                        Context context2 = dialogDeleteBook.a0;
                        if (context2 != null) {
                            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context2, 1);
                            int G = (int) MainUtil.G(context2, 72.0f);
                            FrameLayout frameLayout = new FrameLayout(context2);
                            q.addView(frameLayout, -1, G);
                            MyRoundImage myRoundImage = new MyRoundImage(context2);
                            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                            int i2 = MainApp.f1;
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                            layoutParams.gravity = 8388627;
                            layoutParams.setMarginStart(MainApp.E1);
                            frameLayout.addView(myRoundImage, layoutParams);
                            AppCompatTextView i3 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                            i3.setEllipsize(TextUtils.TruncateAt.END);
                            i3.setTextSize(1, 16.0f);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                            layoutParams2.gravity = 8388627;
                            layoutParams2.setMarginStart(G);
                            layoutParams2.setMarginEnd(MainApp.E1);
                            frameLayout.addView(i3, layoutParams2);
                            MyLineLinear myLineLinear = new MyLineLinear(context2);
                            int i4 = MainApp.E1;
                            myLineLinear.setPadding(i4, i4, i4, MainApp.F1);
                            myLineLinear.setOrientation(1);
                            myLineLinear.setLinePad(MainApp.E1);
                            myLineLinear.setLineUp(true);
                            myLineLinear.setVisibility(8);
                            q.addView(myLineLinear, -1, -2);
                            FrameLayout frameLayout2 = new FrameLayout(context2);
                            myLineLinear.addView(frameLayout2, -1, -2);
                            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context2, null, 1, 16.0f);
                            j.setText(R.string.total);
                            frameLayout2.addView(j, -2, -2);
                            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context2, null, 1, 16.0f);
                            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams3.gravity = 8388613;
                            frameLayout2.addView(j2, layoutParams3);
                            MyProgressBar myProgressBar = new MyProgressBar(context2);
                            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context2, 12.0f));
                            layoutParams4.topMargin = MainApp.F1;
                            myLineLinear.addView(myProgressBar, layoutParams4);
                            MyLineText myLineText = new MyLineText(context2);
                            myLineText.setGravity(17);
                            myLineText.setTextSize(1, 16.0f);
                            myLineText.setText(R.string.delete);
                            myLineText.setLinePad(MainApp.E1);
                            myLineText.setLineUp(true);
                            q.addView(myLineText, -1, MainApp.g1);
                            dialogDeleteBook.h0 = q;
                            dialogDeleteBook.i0 = myRoundImage;
                            dialogDeleteBook.j0 = i3;
                            dialogDeleteBook.k0 = myLineLinear;
                            dialogDeleteBook.l0 = j;
                            dialogDeleteBook.m0 = j2;
                            dialogDeleteBook.n0 = myProgressBar;
                            dialogDeleteBook.o0 = myLineText;
                            Handler handler2 = dialogDeleteBook.i;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDeleteBook.2
                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX WARN: Removed duplicated region for block: B:130:0x0220  */
                                /* JADX WARN: Removed duplicated region for block: B:135:0x0255  */
                                /* JADX WARN: Removed duplicated region for block: B:140:0x0272  */
                                /* JADX WARN: Removed duplicated region for block: B:154:0x024c  */
                                /* JADX WARN: Type inference failed for: r13v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                                /* JADX WARN: Type inference failed for: r3v19, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
                                /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
                                @Override // java.lang.Runnable
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final void run() {
                                    /*
                                        Method dump skipped, instructions count: 1020
                                        To view this dump add '--comments-level debug' option
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDeleteBook.AnonymousClass2.run():void");
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public final void B() {
        int i;
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null && this.p0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.o0.setEnabled(false);
            this.o0.setActivated(true);
            this.o0.setText(R.string.canceling);
            MyLineText myLineText = this.o0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.p0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.p0 = null;
            return;
        }
        dismiss();
    }

    public final void C() {
        List list;
        MainItem.ChildItem childItem;
        MyRoundImage myRoundImage = this.i0;
        if (myRoundImage != null) {
            int i = this.c0;
            if (i != 17 && i != 18 && i != 19 && i != 20 && i != 21 && i != 22 && i != 23 && i != 24 && i != 28 && i != 29 && i != 30 && i != 35 && i != 36) {
                if (i == 32 && (list = this.d0) != null && !list.isEmpty() && (childItem = (MainItem.ChildItem) this.d0.get(0)) != null && childItem.f16550a == 8) {
                    this.i0.setIconSmall(true);
                    return;
                }
                return;
            }
            myRoundImage.setIconSmall(true);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        B();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.p0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.p0 = null;
        MainListLoader mainListLoader = this.q0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.q0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyRoundImage myRoundImage = this.i0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.i0 = null;
        }
        MyLineLinear myLineLinear = this.k0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.k0 = null;
        }
        MyProgressBar myProgressBar = this.n0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.n0 = null;
        }
        MyLineText myLineText = this.o0;
        if (myLineText != null) {
            myLineText.u();
            this.o0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        this.j0 = null;
        this.l0 = null;
        this.m0 = null;
        this.r0 = null;
        this.u0 = null;
        super.dismiss();
    }
}
