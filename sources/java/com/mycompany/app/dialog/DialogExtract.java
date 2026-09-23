package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressUtil;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUriDoc;
import com.mycompany.app.main.MainUriVol;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.list.MainListAlbum;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogExtract extends MyDialogBottom {
    public String[] A0;
    public DialogTask B0;
    public final int C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public int I0;
    public long J0;
    public String K0;
    public String L0;
    public ArrayList M0;
    public boolean N0;
    public MainListLoader O0;
    public boolean P0;
    public final Runnable Q0;
    public LinearLayout R0;
    public View S0;
    public AppCompatTextView T0;
    public AppCompatTextView U0;
    public AppCompatTextView V0;
    public AppCompatTextView W0;
    public AppCompatTextView X0;
    public AppCompatTextView Y0;
    public AppCompatTextView Z0;
    public Context a0;
    public AppCompatTextView a1;
    public final int b0;
    public final CompressUtil.CompressListener b1;
    public List c0;
    public int d0;
    public int e0;
    public String f0;
    public DialogSetFull.DialogApplyListener g0;
    public MyDialogLinear h0;
    public LinearLayout i0;
    public MyLineText j0;
    public MyRoundImage[] k0;
    public TextView[] l0;
    public View[] m0;
    public MyEditText[] n0;
    public View[] o0;
    public TextView[] p0;
    public MyProgressBar[] q0;
    public TextView[] r0;
    public MyProgressBar[] s0;
    public TextView[] t0;
    public TextView[] u0;
    public EditText[] v0;
    public View[] w0;
    public TextView[] x0;
    public TextView[] y0;
    public TextView[] z0;

    /* renamed from: com.mycompany.app.dialog.DialogExtract$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            if (view == null || !(view instanceof MyRoundImage)) {
                return;
            }
            MyRoundImage myRoundImage = (MyRoundImage) view;
            if (childItem.f16551c == 4) {
                myRoundImage.setBackColor(-460552);
            }
            myRoundImage.r(null, true);
            myRoundImage.setImageBitmap(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogExtract$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f13655c;
        public final /* synthetic */ String f;

        public AnonymousClass7(String str, String str2) {
            this.f13655c = str;
            this.f = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.f13655c;
            String str2 = this.f;
            DialogExtract dialogExtract = DialogExtract.this;
            DialogTask dialogTask = new DialogTask(dialogExtract, str, str2);
            dialogExtract.B0 = dialogTask;
            dialogTask.b(dialogExtract.a0);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogExtract$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogExtract dialogExtract = DialogExtract.this;
            DialogExtract.B(dialogExtract, dialogExtract.e0);
            Handler handler = dialogExtract.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.8.1
                /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 739
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogExtract.AnonymousClass8.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public Compress h;
        public boolean i;

        public DialogTask(DialogExtract dialogExtract, String str, String str2) {
            int i;
            WeakReference weakReference = new WeakReference(dialogExtract);
            this.e = weakReference;
            DialogExtract dialogExtract2 = (DialogExtract) weakReference.get();
            if (dialogExtract2 != null) {
                this.f = str;
                this.g = str2;
                dialogExtract2.E0 = 0;
                dialogExtract2.F0 = 0;
                dialogExtract2.G0 = 0;
                dialogExtract2.J0 = System.currentTimeMillis();
                dialogExtract2.K0 = null;
                dialogExtract2.setCanceledOnTouchOutside(false);
                MyDialogLinear myDialogLinear = dialogExtract2.h0;
                if (myDialogLinear == null) {
                    return;
                }
                if (dialogExtract2.C0 > 1) {
                    myDialogLinear.e(0, 0, true, false);
                }
                dialogExtract2.m0[dialogExtract2.D0].setVisibility(8);
                dialogExtract2.o0[dialogExtract2.D0].setVisibility(0);
                dialogExtract2.v0[dialogExtract2.D0].setVisibility(0);
                MainUtil.b7(dialogExtract2.v0[dialogExtract2.D0]);
                dialogExtract2.j0.setActivated(true);
                dialogExtract2.j0.setText(R.string.cancel);
                MyLineText myLineText = dialogExtract2.j0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                myLineText.setTextColor(i);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogExtract dialogExtract;
            String b;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogExtract = (DialogExtract) weakReference.get()) != null && !this.f12839c) {
                String str = this.f;
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(dialogExtract.f0)) {
                    Compress b2 = Compress.b(3, dialogExtract.a0, str, null);
                    this.h = b2;
                    b2.f = MainConst.J;
                    b2.g = "debug_logger_tag";
                    if (!b2.N()) {
                        dialogExtract.G0 = 1;
                        return;
                    }
                    int R = this.h.R();
                    dialogExtract.E0 = R;
                    if (R == 0) {
                        dialogExtract.G0 = 1;
                        return;
                    }
                    h();
                    Context context = dialogExtract.a0;
                    String str2 = dialogExtract.f0;
                    String str3 = dialogExtract.A0[dialogExtract.D0];
                    if (MainUri.q(str2)) {
                        b = MainUriDoc.b(context, str2, str3);
                    } else {
                        b = MainUriVol.b(context, str2, str3);
                    }
                    if (!TextUtils.isEmpty(b)) {
                        this.i = this.h.c(b, dialogExtract.b1);
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogExtract dialogExtract;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogExtract = (DialogExtract) weakReference.get()) == null) {
                return;
            }
            dialogExtract.B0 = null;
            Compress compress = this.h;
            if (compress != null) {
                compress.a();
                this.h = null;
            }
            dialogExtract.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogExtract dialogExtract;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogExtract = (DialogExtract) weakReference.get()) != null) {
                dialogExtract.B0 = null;
                Compress compress = this.h;
                if (compress != null) {
                    compress.a();
                    this.h = null;
                }
                if (this.f12839c) {
                    dialogExtract.dismiss();
                    return;
                }
                MyRoundImage[] myRoundImageArr = dialogExtract.k0;
                int i = -328966;
                if (myRoundImageArr != null) {
                    int i2 = dialogExtract.D0;
                    dialogExtract.G(myRoundImageArr[i2], i2);
                    dialogExtract.l0[dialogExtract.D0].setText(this.g);
                    int i3 = dialogExtract.E0;
                    if (i3 == 0) {
                        dialogExtract.x0[dialogExtract.D0].setText("1");
                        dialogExtract.y0[dialogExtract.D0].setText("1");
                        dialogExtract.y0[dialogExtract.D0].setTextColor(-769226);
                        dialogExtract.z0[dialogExtract.D0].setText("0");
                    } else {
                        if (!this.i) {
                            if (dialogExtract.F0 > i3) {
                                dialogExtract.F0 = i3;
                            }
                            dialogExtract.G0 = (i3 - dialogExtract.F0) + dialogExtract.G0;
                        }
                        if (dialogExtract.G0 > i3) {
                            dialogExtract.G0 = i3;
                        }
                        int i4 = i3 - dialogExtract.G0;
                        dialogExtract.x0[dialogExtract.D0].setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + dialogExtract.E0);
                        dialogExtract.y0[dialogExtract.D0].setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + dialogExtract.G0);
                        dialogExtract.z0[dialogExtract.D0].setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i4);
                        if (dialogExtract.G0 > 0) {
                            dialogExtract.y0[dialogExtract.D0].setTextColor(-769226);
                        } else if (MainApp.K1) {
                            dialogExtract.y0[dialogExtract.D0].setTextColor(-328966);
                        } else {
                            dialogExtract.y0[dialogExtract.D0].setTextColor(-16777216);
                        }
                    }
                    dialogExtract.o0[dialogExtract.D0].setVisibility(8);
                    dialogExtract.w0[dialogExtract.D0].setVisibility(0);
                }
                int i5 = dialogExtract.D0 + 1;
                dialogExtract.D0 = i5;
                MainItem.ChildItem E = dialogExtract.E(i5);
                if (E != null && !TextUtils.isEmpty(E.g)) {
                    String str = E.g;
                    String str2 = E.h;
                    DialogTask dialogTask = dialogExtract.B0;
                    if (dialogTask != null) {
                        dialogTask.f12839c = true;
                    }
                    dialogExtract.B0 = null;
                    MyLineText myLineText = dialogExtract.j0;
                    if (myLineText != null) {
                        myLineText.post(new AnonymousClass7(str, str2));
                        return;
                    }
                    return;
                }
                if (dialogExtract.G0 == 0) {
                    MainUtil.e8(dialogExtract.a0, R.string.success);
                    dialogExtract.dismiss();
                    return;
                }
                dialogExtract.setCanceledOnTouchOutside(true);
                MyDialogLinear myDialogLinear = dialogExtract.h0;
                if (myDialogLinear == null) {
                    return;
                }
                myDialogLinear.e(0, 0, false, false);
                dialogExtract.j0.setActivated(true);
                dialogExtract.j0.setText(R.string.ok);
                MyLineText myLineText2 = dialogExtract.j0;
                if (!MainApp.K1) {
                    i = -14784824;
                }
                myLineText2.setTextColor(i);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void g() {
            DialogExtract dialogExtract;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogExtract = (DialogExtract) weakReference.get()) != null && !this.f12839c) {
                DialogExtract.D(dialogExtract, dialogExtract.D0, null, false);
            }
        }
    }

    public DialogExtract(MainListAlbum mainListAlbum, int i, List list, String str, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainListAlbum);
        this.Q0 = new AnonymousClass8();
        this.b1 = new CompressUtil.CompressListener() { // from class: com.mycompany.app.dialog.DialogExtract.11
            @Override // com.mycompany.app.compress.CompressUtil.CompressListener
            public final void a(String str2, boolean z) {
                DialogExtract dialogExtract = DialogExtract.this;
                if (dialogExtract.B0 != null) {
                    dialogExtract.F0++;
                    if (!z) {
                        dialogExtract.G0++;
                    }
                    final int i2 = dialogExtract.D0;
                    final String b1 = MainUtil.b1(dialogExtract.a0, str2);
                    Handler handler = dialogExtract.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.11.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogExtract.D(DialogExtract.this, i2, b1, true);
                        }
                    });
                }
            }

            @Override // com.mycompany.app.compress.CompressUtil.CompressListener
            public final void b(final long j, final long j2, final String str2) {
                DialogExtract dialogExtract = DialogExtract.this;
                if (dialogExtract.B0 != null && !TextUtils.isEmpty(str2)) {
                    if (dialogExtract.N0) {
                        return;
                    }
                    dialogExtract.N0 = true;
                    if (dialogExtract.h0 == null) {
                        dialogExtract.N0 = false;
                        return;
                    } else {
                        dialogExtract.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.11.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                float f;
                                AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                DialogExtract dialogExtract2 = DialogExtract.this;
                                if (dialogExtract2.q0 == null) {
                                    dialogExtract2.N0 = false;
                                    return;
                                }
                                boolean isEmpty = TextUtils.isEmpty(dialogExtract2.K0);
                                String str3 = str2;
                                if (isEmpty || !DialogExtract.this.K0.equals(str3)) {
                                    DialogExtract dialogExtract3 = DialogExtract.this;
                                    dialogExtract3.K0 = str3;
                                    int i2 = dialogExtract3.D0;
                                    dialogExtract3.H0 = i2;
                                    dialogExtract3.I0 = dialogExtract3.F0;
                                    dialogExtract3.G(dialogExtract3.k0[i2], i2);
                                    DialogExtract dialogExtract4 = DialogExtract.this;
                                    dialogExtract4.l0[dialogExtract4.D0].setText(MainUtil.b1(dialogExtract4.a0, str3));
                                    DialogExtract dialogExtract5 = DialogExtract.this;
                                    dialogExtract5.q0[dialogExtract5.D0].setMax(100);
                                }
                                long j3 = j;
                                if (j3 > 0) {
                                    f = (((float) j2) / ((float) j3)) * 100.0f;
                                    if (f > 100.0f) {
                                        f = 100.0f;
                                    }
                                } else {
                                    f = 0.0f;
                                }
                                String format = String.format(Locale.US, "%.2f", Float.valueOf(f));
                                DialogExtract dialogExtract6 = DialogExtract.this;
                                dialogExtract6.p0[dialogExtract6.H0].setText(format.concat("%"));
                                DialogExtract dialogExtract7 = DialogExtract.this;
                                dialogExtract7.q0[dialogExtract7.H0].setProgress(f);
                                DialogExtract dialogExtract8 = DialogExtract.this;
                                dialogExtract8.s0[dialogExtract8.H0].setProgress((f / 100.0f) + dialogExtract8.I0);
                                DialogExtract dialogExtract9 = DialogExtract.this;
                                float progress = dialogExtract9.s0[dialogExtract9.H0].getProgress();
                                if (progress > 0.0f) {
                                    long max = ((r2.s0[r2.H0].getMax() - progress) * ((float) (System.currentTimeMillis() - DialogExtract.this.J0))) / progress;
                                    if (max > 0 && max < 1000) {
                                        max = 1000;
                                    }
                                    DialogExtract dialogExtract10 = DialogExtract.this;
                                    dialogExtract10.u0[dialogExtract10.H0].setText(MainUtil.s2(max));
                                }
                                DialogExtract.this.N0 = false;
                            }
                        });
                        return;
                    }
                }
                dialogExtract.N0 = false;
            }

            @Override // com.mycompany.app.compress.CompressUtil.CompressListener
            public final void c(final String str2) {
                DialogExtract dialogExtract = DialogExtract.this;
                if (dialogExtract.B0 != null && !TextUtils.isEmpty(str2)) {
                    final String b1 = MainUtil.b1(dialogExtract.a0, str2);
                    Handler handler = dialogExtract.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.11.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                DialogExtract dialogExtract2 = DialogExtract.this;
                                if (dialogExtract2.p0 == null) {
                                    return;
                                }
                                dialogExtract2.K0 = str2;
                                int i2 = dialogExtract2.D0;
                                dialogExtract2.H0 = i2;
                                dialogExtract2.I0 = dialogExtract2.F0;
                                dialogExtract2.G(dialogExtract2.k0[i2], i2);
                                DialogExtract dialogExtract3 = DialogExtract.this;
                                dialogExtract3.l0[dialogExtract3.D0].setText(b1);
                                DialogExtract dialogExtract4 = DialogExtract.this;
                                dialogExtract4.p0[dialogExtract4.D0].setText("0.00%");
                                DialogExtract dialogExtract5 = DialogExtract.this;
                                dialogExtract5.q0[dialogExtract5.D0].setMax(100);
                                DialogExtract dialogExtract6 = DialogExtract.this;
                                dialogExtract6.q0[dialogExtract6.D0].setProgress(0.0f);
                            }
                        });
                    }
                }
            }

            @Override // com.mycompany.app.compress.CompressUtil.CompressListener
            public final boolean isCancelled() {
                if (DialogExtract.this.B0 == null) {
                    return true;
                }
                return false;
            }
        };
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            this.a0 = getContext();
            this.b0 = i;
            this.c0 = list;
            this.f0 = str;
            this.g0 = dialogApplyListener;
            this.C0 = list.size();
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final DialogExtract dialogExtract = DialogExtract.this;
                        Context context = dialogExtract.a0;
                        if (context != null) {
                            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                            FrameLayout frameLayout = new FrameLayout(context);
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                            layoutParams.weight = 1.0f;
                            q.addView(frameLayout, layoutParams);
                            NestedScrollView nestedScrollView = new NestedScrollView(context, null);
                            nestedScrollView.setOverScrollMode(2);
                            nestedScrollView.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                            frameLayout.addView(nestedScrollView, -1, -2);
                            LinearLayout linearLayout = new LinearLayout(context);
                            linearLayout.setOrientation(1);
                            linearLayout.setVisibility(8);
                            nestedScrollView.addView(linearLayout, -1, -2);
                            MyLineText myLineText = new MyLineText(context);
                            myLineText.setGravity(17);
                            myLineText.setTextSize(1, 16.0f);
                            myLineText.setText(R.string.extract);
                            myLineText.setLinePad(MainApp.E1);
                            myLineText.setLineUp(true);
                            q.addView(myLineText, -1, MainApp.g1);
                            dialogExtract.h0 = q;
                            dialogExtract.i0 = linearLayout;
                            dialogExtract.j0 = myLineText;
                            Handler handler2 = dialogExtract.i;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.2
                                /* JADX WARN: Type inference failed for: r3v0, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Handler handler3;
                                    final DialogExtract dialogExtract2 = DialogExtract.this;
                                    if (dialogExtract2.h0 != null && dialogExtract2.a0 != null) {
                                        if (MainApp.K1) {
                                            dialogExtract2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogExtract2.j0.setTextColor(-328966);
                                        } else {
                                            dialogExtract2.j0.setBackgroundResource(R.drawable.selector_normal);
                                            dialogExtract2.j0.setTextColor(-14784824);
                                        }
                                        dialogExtract2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogExtract.3
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogExtract dialogExtract3 = DialogExtract.this;
                                                MyLineText myLineText2 = dialogExtract3.j0;
                                                if (myLineText2 != null) {
                                                    if (myLineText2.isActivated()) {
                                                        dialogExtract3.F();
                                                    } else {
                                                        if (dialogExtract3.P0) {
                                                            return;
                                                        }
                                                        dialogExtract3.P0 = true;
                                                        dialogExtract3.j0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.3.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                                DialogExtract.C(DialogExtract.this);
                                                                DialogExtract.this.P0 = false;
                                                            }
                                                        });
                                                    }
                                                }
                                            }
                                        });
                                        dialogExtract2.O0 = new MainListLoader(dialogExtract2.a0, false, new Object());
                                        List list2 = dialogExtract2.c0;
                                        if (list2 != null && !list2.isEmpty() && (handler3 = dialogExtract2.i) != null) {
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogExtract.5
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    List list3;
                                                    int size;
                                                    DialogExtract dialogExtract3 = DialogExtract.this;
                                                    if (dialogExtract3.i0 != null && (list3 = dialogExtract3.c0) != null && (size = list3.size()) != 0) {
                                                        dialogExtract3.h0.e(0, 0, true, false);
                                                        dialogExtract3.k0 = new MyRoundImage[size];
                                                        dialogExtract3.l0 = new AppCompatTextView[size];
                                                        dialogExtract3.m0 = new View[size];
                                                        dialogExtract3.n0 = new MyEditText[size];
                                                        dialogExtract3.o0 = new View[size];
                                                        dialogExtract3.p0 = new AppCompatTextView[size];
                                                        dialogExtract3.q0 = new MyProgressBar[size];
                                                        dialogExtract3.r0 = new AppCompatTextView[size];
                                                        dialogExtract3.s0 = new MyProgressBar[size];
                                                        dialogExtract3.t0 = new AppCompatTextView[size];
                                                        dialogExtract3.u0 = new AppCompatTextView[size];
                                                        dialogExtract3.v0 = new MyEditPure[size];
                                                        dialogExtract3.w0 = new View[size];
                                                        dialogExtract3.x0 = new AppCompatTextView[size];
                                                        dialogExtract3.y0 = new AppCompatTextView[size];
                                                        dialogExtract3.z0 = new AppCompatTextView[size];
                                                        dialogExtract3.A0 = new String[size];
                                                        dialogExtract3.d0 = size;
                                                        dialogExtract3.e0 = 0;
                                                        Handler handler4 = dialogExtract3.i;
                                                        if (handler4 == null) {
                                                            return;
                                                        }
                                                        handler4.post(dialogExtract3.Q0);
                                                    }
                                                }
                                            });
                                            dialogExtract2.g(dialogExtract2.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogExtract.6
                                                @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                public final void a(View view) {
                                                    DialogExtract dialogExtract3 = DialogExtract.this;
                                                    if (dialogExtract3.h0 == null) {
                                                        return;
                                                    }
                                                    dialogExtract3.show();
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
    }

    public static void B(DialogExtract dialogExtract, int i) {
        View view;
        Context context = dialogExtract.a0;
        if (context == null) {
            return;
        }
        int i2 = R.id.item_frame_view;
        int i3 = R.id.item_title_view;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        if (i != 0) {
            view = new View(context);
            linearLayout.addView(view, -1, MainApp.F1);
        } else {
            view = null;
        }
        int G = (int) MainUtil.G(context, 72.0f);
        MyLineFrame myLineFrame = new MyLineFrame(context);
        myLineFrame.a(MainApp.E1);
        linearLayout.addView(myLineFrame, -1, G);
        MyRoundImage myRoundImage = new MyRoundImage(context);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
        int i4 = MainApp.f1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
        layoutParams.gravity = 8388627;
        layoutParams.setMarginStart(MainApp.E1);
        myLineFrame.addView(myRoundImage, layoutParams);
        AppCompatTextView i5 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
        i5.setEllipsize(TextUtils.TruncateAt.END);
        i5.setTextSize(1, 16.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 8388627;
        layoutParams2.setMarginStart(G);
        layoutParams2.setMarginEnd(MainApp.E1);
        myLineFrame.addView(i5, layoutParams2);
        int G2 = (int) MainUtil.G(context, 12.0f);
        int G3 = (int) MainUtil.G(context, 88.0f);
        FrameLayout frameLayout = new FrameLayout(context);
        int i6 = MainApp.E1;
        frameLayout.setPadding(i6, G2, i6, G2);
        linearLayout.addView(frameLayout, -1, G3);
        AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
        j.setText(R.string.sub_dir);
        frameLayout.addView(j, -2, -2);
        MyEditText myEditText = new MyEditText(context);
        com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
        myEditText.setTextSize(1, 16.0f);
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 29) {
            myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditText.setImeOptions(268435456);
        myEditText.setBackground(null);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams3.gravity = 8388691;
        frameLayout.addView(myEditText, layoutParams3);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setVisibility(8);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(relativeLayout, layoutParams4);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setId(i2);
        linearLayout2.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
        linearLayout2.setOrientation(1);
        relativeLayout.addView(linearLayout2, -1, -2);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        int i8 = MainApp.F1;
        relativeLayout2.setPadding(0, i8, 0, i8);
        linearLayout2.addView(relativeLayout2, -1, -2);
        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i3, 1, 16.0f);
        k.setText(R.string.current);
        relativeLayout2.addView(k, -2, -2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setGravity(8388613);
        appCompatTextView.setSingleLine(true);
        View view2 = view;
        RelativeLayout.LayoutParams h = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 16.0f, -1, -2);
        h.addRule(17, i3);
        h.setMarginStart(MainApp.E1);
        relativeLayout2.addView(appCompatTextView, h);
        View myProgressBar = new MyProgressBar(context);
        linearLayout2.addView(myProgressBar, -1, G2);
        FrameLayout frameLayout2 = new FrameLayout(context);
        int i9 = MainApp.F1;
        frameLayout2.setPadding(0, i9, 0, i9);
        linearLayout2.addView(frameLayout2, -1, -2);
        AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j2.setText(R.string.total);
        frameLayout2.addView(j2, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setTextSize(1, 16.0f);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 8388613;
        frameLayout2.addView(appCompatTextView2, layoutParams5);
        View myProgressBar2 = new MyProgressBar(context);
        linearLayout2.addView(myProgressBar2, -1, G2);
        FrameLayout frameLayout3 = new FrameLayout(context);
        int i10 = MainApp.F1;
        frameLayout3.setPadding(0, i10, 0, i10);
        linearLayout2.addView(frameLayout3, -1, -2);
        AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j3.setText(R.string.fail);
        frameLayout3.addView(j3, -2, -2);
        AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = 8388613;
        frameLayout3.addView(j4, layoutParams6);
        FrameLayout frameLayout4 = new FrameLayout(context);
        int i11 = MainApp.F1;
        frameLayout4.setPadding(0, i11, 0, i11);
        linearLayout2.addView(frameLayout4, -1, -2);
        AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j5.setText(R.string.estimated);
        frameLayout4.addView(j5, -2, -2);
        AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams7.gravity = 8388613;
        frameLayout4.addView(j6, layoutParams7);
        MyEditPure myEditPure = new MyEditPure(context);
        myEditPure.setTextDirection(3);
        if (i7 >= 29) {
            myEditPure.setTextCursorDrawable((Drawable) null);
        }
        myEditPure.setBackground(null);
        myEditPure.setEnabled(false);
        myEditPure.setVisibility(8);
        RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, -2, 6, i2);
        h2.addRule(8, i2);
        relativeLayout.addView(myEditPure, h2);
        RelativeLayout relativeLayout3 = new RelativeLayout(context);
        relativeLayout3.setVisibility(8);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams8.weight = 1.0f;
        linearLayout.addView(relativeLayout3, layoutParams8);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
        linearLayout3.setOrientation(1);
        relativeLayout3.addView(linearLayout3, -1, -2);
        FrameLayout frameLayout5 = new FrameLayout(context);
        int i12 = MainApp.F1;
        frameLayout5.setPadding(0, i12, 0, i12);
        linearLayout3.addView(frameLayout5, -1, -2);
        AppCompatTextView j7 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j7.setText(R.string.total);
        frameLayout5.addView(j7, -2, -2);
        AppCompatTextView j8 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 8388613;
        frameLayout5.addView(j8, layoutParams9);
        FrameLayout frameLayout6 = new FrameLayout(context);
        int i13 = MainApp.F1;
        frameLayout6.setPadding(0, i13, 0, i13);
        linearLayout3.addView(frameLayout6, -1, -2);
        AppCompatTextView j9 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j9.setText(R.string.fail);
        frameLayout6.addView(j9, -2, -2);
        AppCompatTextView j10 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams10.gravity = 8388613;
        frameLayout6.addView(j10, layoutParams10);
        FrameLayout frameLayout7 = new FrameLayout(context);
        int i14 = MainApp.F1;
        frameLayout7.setPadding(0, i14, 0, i14);
        linearLayout3.addView(frameLayout7, -1, -2);
        AppCompatTextView j11 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        j11.setText(R.string.success);
        frameLayout7.addView(j11, -2, -2);
        AppCompatTextView j12 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams11.gravity = 8388613;
        frameLayout7.addView(j12, layoutParams11);
        dialogExtract.k0[i] = myRoundImage;
        dialogExtract.l0[i] = i5;
        dialogExtract.m0[i] = frameLayout;
        dialogExtract.n0[i] = myEditText;
        dialogExtract.o0[i] = relativeLayout;
        dialogExtract.p0[i] = appCompatTextView;
        dialogExtract.q0[i] = myProgressBar;
        dialogExtract.r0[i] = appCompatTextView2;
        dialogExtract.s0[i] = myProgressBar2;
        dialogExtract.t0[i] = j4;
        dialogExtract.u0[i] = j6;
        dialogExtract.v0[i] = myEditPure;
        dialogExtract.w0[i] = relativeLayout3;
        dialogExtract.x0[i] = j8;
        dialogExtract.y0[i] = j10;
        dialogExtract.z0[i] = j12;
        dialogExtract.R0 = linearLayout;
        dialogExtract.S0 = view2;
        dialogExtract.T0 = j;
        dialogExtract.U0 = k;
        dialogExtract.V0 = j2;
        dialogExtract.W0 = j3;
        dialogExtract.X0 = j5;
        dialogExtract.Y0 = j7;
        dialogExtract.Z0 = j9;
        dialogExtract.a1 = j11;
    }

    public static void C(DialogExtract dialogExtract) {
        MyEditText[] myEditTextArr = dialogExtract.n0;
        if (myEditTextArr != null) {
            int length = myEditTextArr.length;
            for (int i = 0; i < length; i++) {
                String Q0 = MainUtil.Q0(dialogExtract.n0[i], true);
                dialogExtract.A0[i] = Q0;
                if (TextUtils.isEmpty(Q0)) {
                    if (length > 1) {
                        dialogExtract.n0[i].clearFocus();
                        MainUtil.b7(dialogExtract.n0[i]);
                    }
                    MainUtil.e8(dialogExtract.a0, R.string.input_name);
                    return;
                }
                MainUtil.p3(Q0);
            }
            DialogSetFull.DialogApplyListener dialogApplyListener = dialogExtract.g0;
            if (dialogApplyListener != null) {
                dialogApplyListener.a();
            }
            for (int i2 = 0; i2 < length; i2++) {
                dialogExtract.n0[i2].setDrawEline(false);
                dialogExtract.n0[i2].setEnabled(false);
            }
            dialogExtract.D0 = 0;
            MainItem.ChildItem E = dialogExtract.E(0);
            if (E != null) {
                String str = E.g;
                String str2 = E.h;
                DialogTask dialogTask = dialogExtract.B0;
                if (dialogTask != null) {
                    dialogTask.f12839c = true;
                }
                dialogExtract.B0 = null;
                MyLineText myLineText = dialogExtract.j0;
                if (myLineText != null) {
                    myLineText.post(new AnonymousClass7(str, str2));
                }
            }
        }
    }

    public static void D(DialogExtract dialogExtract, int i, String str, boolean z) {
        if (dialogExtract.r0 != null) {
            if (z) {
                dialogExtract.G(dialogExtract.k0[i], i);
                dialogExtract.l0[i].setText(str);
                dialogExtract.p0[i].setText("100.00%");
                dialogExtract.q0[i].setProgress(100.0f);
            } else {
                dialogExtract.v0[dialogExtract.D0].setVisibility(8);
            }
            dialogExtract.r0[i].setText(dialogExtract.F0 + " / " + dialogExtract.E0);
            dialogExtract.s0[i].setMax(dialogExtract.E0);
            dialogExtract.s0[i].setProgress((float) dialogExtract.F0);
            float progress = dialogExtract.s0[i].getProgress();
            if (progress > 0.0f) {
                long max = ((dialogExtract.s0[i].getMax() - progress) * ((float) (System.currentTimeMillis() - dialogExtract.J0))) / progress;
                if (max > 0 && max < 1000) {
                    max = 1000;
                }
                dialogExtract.u0[i].setText(MainUtil.s2(max));
            }
            dialogExtract.t0[i].setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + dialogExtract.G0);
            if (dialogExtract.G0 > 0) {
                dialogExtract.t0[i].setTextColor(-769226);
            }
        }
    }

    public final MainItem.ChildItem E(int i) {
        List list;
        MainItem.ChildItem childItem;
        if (i < 0 || (list = this.c0) == null || i >= list.size() || (childItem = (MainItem.ChildItem) list.get(i)) == null || TextUtils.isEmpty(childItem.g)) {
            return null;
        }
        return childItem;
    }

    public final void F() {
        int i;
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null && this.B0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.j0.setEnabled(false);
            this.j0.setActivated(true);
            this.j0.setText(R.string.canceling);
            MyLineText myLineText = this.j0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.B0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.B0 = null;
            return;
        }
        dismiss();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void G(MyRoundImage myRoundImage, int i) {
        if (myRoundImage != null) {
            List list = this.c0;
            if (list != null && i >= 0 && i < list.size()) {
                MainItem.ChildItem childItem = (MainItem.ChildItem) this.c0.get(i);
                if (childItem == null) {
                    myRoundImage.o(-460552, R.drawable.outline_local_library_black_24);
                    return;
                }
                int i2 = childItem.f16551c;
                if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4 && i2 != 5 && i2 != 6 && i2 != 11) {
                    myRoundImage.o(childItem.v, childItem.w);
                    return;
                }
                ?? obj = new Object();
                if (i2 == 11) {
                    obj.f16550a = this.b0;
                    obj.f16551c = i2;
                    String str = childItem.z;
                    obj.g = str;
                    obj.z = str;
                    obj.y = childItem.y;
                    obj.J = childItem.J;
                    obj.v = childItem.v;
                    obj.w = childItem.w;
                    childItem = obj;
                }
                if (TextUtils.isEmpty(childItem.g)) {
                    myRoundImage.o(childItem.v, childItem.w);
                    return;
                }
                Bitmap b = MainListLoader.b(childItem);
                if (MainUtil.f6(b)) {
                    if (childItem.f16551c == 4) {
                        myRoundImage.setBackColor(-460552);
                    }
                    myRoundImage.setImageBitmap(b);
                    return;
                } else {
                    if (this.O0 == null) {
                        return;
                    }
                    myRoundImage.o(childItem.v, childItem.w);
                    myRoundImage.setTag(Integer.valueOf(childItem.J));
                    this.O0.e(childItem, myRoundImage);
                    return;
                }
            }
            myRoundImage.o(-460552, R.drawable.outline_local_library_black_24);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        F();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.B0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.B0 = null;
        MainListLoader mainListLoader = this.O0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.O0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        MyRoundImage[] myRoundImageArr = this.k0;
        if (myRoundImageArr != null) {
            int length = myRoundImageArr.length;
            for (int i = 0; i < length; i++) {
                MyRoundImage myRoundImage = this.k0[i];
                if (myRoundImage != null) {
                    myRoundImage.k();
                    this.k0[i] = null;
                }
            }
            this.k0 = null;
        }
        MyEditText[] myEditTextArr = this.n0;
        if (myEditTextArr != null) {
            int length2 = myEditTextArr.length;
            for (int i2 = 0; i2 < length2; i2++) {
                MyEditText myEditText = this.n0[i2];
                if (myEditText != null) {
                    myEditText.c();
                    this.n0[i2] = null;
                }
            }
            this.n0 = null;
        }
        MyProgressBar[] myProgressBarArr = this.q0;
        if (myProgressBarArr != null) {
            int length3 = myProgressBarArr.length;
            for (int i3 = 0; i3 < length3; i3++) {
                MyProgressBar myProgressBar = this.q0[i3];
                if (myProgressBar != null) {
                    myProgressBar.f();
                    this.q0[i3] = null;
                }
            }
            this.q0 = null;
        }
        MyProgressBar[] myProgressBarArr2 = this.s0;
        if (myProgressBarArr2 != null) {
            int length4 = myProgressBarArr2.length;
            for (int i4 = 0; i4 < length4; i4++) {
                MyProgressBar myProgressBar2 = this.s0[i4];
                if (myProgressBar2 != null) {
                    myProgressBar2.f();
                    this.s0[i4] = null;
                }
            }
            this.s0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.i0 = null;
        this.l0 = null;
        this.m0 = null;
        this.o0 = null;
        this.p0 = null;
        this.r0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        this.K0 = null;
        this.L0 = null;
        this.M0 = null;
        super.dismiss();
    }
}
