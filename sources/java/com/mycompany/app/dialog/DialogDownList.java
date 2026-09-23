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
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class DialogDownList extends MyDialogBottom {
    public static final /* synthetic */ int Q0 = 0;
    public boolean A0;
    public GlideRequests B0;
    public ArrayList C0;
    public String D0;
    public MyPopupMenu E0;
    public String F0;
    public String G0;
    public Pattern H0;
    public Pattern I0;
    public Pattern J0;
    public Pattern K0;
    public Pattern L0;
    public String M0;
    public final RequestListener N0;
    public String O0;
    public final RequestListener P0;
    public MainActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public String d0;
    public String e0;
    public List f0;
    public MyDialogLinear g0;
    public MyRoundImage h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyEditText m0;
    public FrameLayout n0;
    public MyButtonText o0;
    public MyLineFrame p0;
    public AppCompatTextView q0;
    public MyEditText r0;
    public FrameLayout s0;
    public MyButtonText t0;
    public FrameLayout u0;
    public AppCompatTextView v0;
    public AppCompatTextView w0;
    public AppCompatTextView x0;
    public DialogTask y0;
    public String z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogDownList$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownList dialogDownList = DialogDownList.this;
            if (dialogDownList.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogDownList.b0, e);
                dialogDownList.D0 = MainUri.h(dialogDownList.b0, e);
                Handler handler = dialogDownList.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.16.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        DialogDownList dialogDownList2 = DialogDownList.this;
                        AppCompatTextView appCompatTextView = dialogDownList2.w0;
                        if (appCompatTextView == null) {
                            return;
                        }
                        appCompatTextView.setText(dialogDownList2.D0);
                        AppCompatTextView appCompatTextView2 = dialogDownList2.w0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -16777216;
                        }
                        appCompatTextView2.setTextColor(i);
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public final List h;

        public DialogTask(DialogDownList dialogDownList, String str, String str2, List list) {
            WeakReference weakReference = new WeakReference(dialogDownList);
            this.e = weakReference;
            DialogDownList dialogDownList2 = (DialogDownList) weakReference.get();
            if (dialogDownList2 != null) {
                this.f = str;
                this.g = str2;
                this.h = list;
                MyDialogLinear myDialogLinear = dialogDownList2.g0;
                if (myDialogLinear != null) {
                    myDialogLinear.e(0, 0, true, false);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0134  */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v5, types: [com.mycompany.app.main.MainDownSvc$ImageItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 494
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownList.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogDownList dialogDownList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogDownList = (DialogDownList) weakReference.get()) == null) {
                return;
            }
            dialogDownList.y0 = null;
            dialogDownList.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogDownList dialogDownList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogDownList = (DialogDownList) weakReference.get()) == null) {
                return;
            }
            dialogDownList.y0 = null;
            dialogDownList.dismiss();
        }
    }

    public DialogDownList(WebViewActivity webViewActivity, String str, List list, String str2, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(webViewActivity);
        this.N0 = new RequestListener<Drawable>() { // from class: com.mycompany.app.dialog.DialogDownList.17
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                MyRoundImage myRoundImage = DialogDownList.this.h0;
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
        this.P0 = new RequestListener<PictureDrawable>() { // from class: com.mycompany.app.dialog.DialogDownList.19
            @Override // com.bumptech.glide.request.RequestListener
            public final boolean b(GlideException glideException) {
                DialogDownList dialogDownList = DialogDownList.this;
                MyRoundImage myRoundImage = dialogDownList.h0;
                if (myRoundImage == null) {
                    return true;
                }
                myRoundImage.setLayerType(0, null);
                dialogDownList.h0.o(-460552, R.drawable.outline_image_black_24);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public final void d(Object obj) {
                MyRoundImage myRoundImage = DialogDownList.this.h0;
                if (myRoundImage != null) {
                    myRoundImage.setLayerType(1, null);
                }
            }
        };
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.d0 = str2;
        this.e0 = str;
        this.f0 = list;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownList dialogDownList = DialogDownList.this;
                if (dialogDownList.b0 != null) {
                    dialogDownList.z0 = dialogDownList.D(dialogDownList.e0);
                    ArrayList n = MainUri.n(dialogDownList.b0);
                    dialogDownList.C0 = n;
                    PrefPath.r = MainUri.m(dialogDownList.b0, PrefPath.r, n);
                    dialogDownList.D0 = MainUri.h(dialogDownList.b0, MainUri.e());
                    Handler handler = dialogDownList.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownList.B(DialogDownList.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogDownList dialogDownList) {
        Context context = dialogDownList.b0;
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
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            myLineFrame2.setLinePad(MainApp.E1);
            myLineFrame2.setLineDn(true);
            g.addView(myLineFrame2, -1, MainApp.g1);
            AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            C.setText(R.string.image);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams4.setMarginStart(MainApp.E1);
            myLineFrame2.addView(C, layoutParams4);
            AppCompatTextView C2 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams5.gravity = 8388613;
            layoutParams5.setMarginEnd(MainApp.E1);
            myLineFrame2.addView(C2, layoutParams5);
            int G2 = (int) MainUtil.G(context, 12.0f);
            int G3 = (int) MainUtil.G(context, 88.0f);
            MyLineFrame myLineFrame3 = new MyLineFrame(context);
            int i4 = MainApp.E1;
            myLineFrame3.setPadding(i4, G2, i4, G2);
            myLineFrame3.setLinePad(MainApp.E1);
            myLineFrame3.setLineDn(true);
            g.addView(myLineFrame3, -1, G3);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            myLineFrame3.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHintTextColor(-8289919);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.gravity = 80;
            layoutParams6.setMarginEnd((int) MainUtil.G(context, 6.0f));
            myLineFrame3.addView(myEditText, layoutParams6);
            FrameLayout frameLayout = new FrameLayout(context);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams7.gravity = 85;
            myLineFrame3.addView(frameLayout, layoutParams7);
            MyButtonText myButtonText = new MyButtonText(context);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setTextSize(1, 14.0f);
            myButtonText.setText(R.string.title);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.g1 / 2);
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams8.gravity = 8388627;
            frameLayout.addView(myButtonText, layoutParams8);
            MyLineFrame myLineFrame4 = new MyLineFrame(context);
            int i6 = MainApp.E1;
            myLineFrame4.setPadding(i6, G2, i6, G2);
            myLineFrame4.setLinePad(MainApp.E1);
            myLineFrame4.setLineDn(true);
            g.addView(myLineFrame4, -1, G3);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j2.setText(R.string.file_name);
            myLineFrame4.addView(j2, -2, -2);
            MyEditText myEditText2 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
            myEditText2.setTextSize(1, 16.0f);
            if (i5 >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setHintTextColor(-8289919);
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams9.gravity = 80;
            myLineFrame4.addView(myEditText2, layoutParams9);
            FrameLayout frameLayout2 = new FrameLayout(context);
            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams10.gravity = 85;
            myLineFrame4.addView(frameLayout2, layoutParams10);
            MyButtonText myButtonText2 = new MyButtonText(context);
            myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText2.setTextSize(1, 14.0f);
            myButtonText2.setText(R.string.prefix);
            myButtonText2.setRoundRect(true);
            myButtonText2.setRoundRadius(MainApp.g1 / 2);
            FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams11.gravity = 8388627;
            frameLayout2.addView(myButtonText2, layoutParams11);
            FrameLayout frameLayout3 = new FrameLayout(context);
            int i7 = MainApp.E1;
            frameLayout3.setPadding(i7, i7, i7, i7);
            frameLayout3.setMinimumHeight(MainApp.h1);
            g.addView(frameLayout3, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams12.gravity = 16;
            frameLayout3.addView(relativeLayout, layoutParams12);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setId(i);
            appCompatTextView.setTextSize(1, 14.0f);
            relativeLayout.addView(appCompatTextView, -2, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            appCompatTextView2.setMaxLines(2);
            appCompatTextView2.setEllipsize(truncateAt);
            RelativeLayout.LayoutParams h = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView2, 1, 16.0f, -2, -2);
            h.addRule(3, i);
            h.topMargin = MainApp.F1;
            relativeLayout.addView(appCompatTextView2, h);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setBaselineAligned(false);
            myLineLinear.setOrientation(0);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            q.addView(myLineLinear, -1, MainApp.g1);
            AppCompatTextView C3 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 17, 1, 16.0f);
            LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, -1);
            layoutParams13.weight = 1.0f;
            myLineLinear.addView(C3, layoutParams13);
            dialogDownList.g0 = q;
            dialogDownList.h0 = myRoundImage;
            dialogDownList.i0 = i3;
            dialogDownList.j0 = C;
            dialogDownList.k0 = C2;
            dialogDownList.l0 = j;
            dialogDownList.m0 = myEditText;
            dialogDownList.n0 = frameLayout;
            dialogDownList.o0 = myButtonText;
            dialogDownList.p0 = myLineFrame4;
            dialogDownList.q0 = j2;
            dialogDownList.r0 = myEditText2;
            dialogDownList.s0 = frameLayout2;
            dialogDownList.t0 = myButtonText2;
            dialogDownList.u0 = frameLayout3;
            dialogDownList.v0 = appCompatTextView;
            dialogDownList.w0 = appCompatTextView2;
            dialogDownList.x0 = C3;
            Handler handler = dialogDownList.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i8;
                    final DialogDownList dialogDownList2 = DialogDownList.this;
                    if (dialogDownList2.g0 != null && dialogDownList2.b0 != null) {
                        dialogDownList2.l0.setText(R.string.sub_dir);
                        dialogDownList2.v0.setText(R.string.down_location);
                        dialogDownList2.x0.setText(R.string.download);
                        int i9 = -16777216;
                        if (MainApp.K1) {
                            dialogDownList2.i0.setTextColor(-328966);
                            dialogDownList2.j0.setTextColor(-328966);
                            dialogDownList2.k0.setTextColor(-328966);
                            dialogDownList2.l0.setTextColor(-4079167);
                            dialogDownList2.m0.setTextColor(-328966);
                            dialogDownList2.q0.setTextColor(-4079167);
                            dialogDownList2.r0.setTextColor(-328966);
                            dialogDownList2.u0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogDownList2.v0.setTextColor(-4079167);
                            dialogDownList2.w0.setTextColor(-328966);
                            dialogDownList2.x0.setTextColor(-328966);
                            dialogDownList2.x0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogDownList2.o0.setTextColor(-328966);
                            dialogDownList2.o0.v(-328966, MainApp.n1);
                            dialogDownList2.t0.setTextColor(-328966);
                            dialogDownList2.t0.v(-328966, MainApp.n1);
                        } else {
                            dialogDownList2.i0.setTextColor(-16777216);
                            dialogDownList2.j0.setTextColor(-16777216);
                            dialogDownList2.k0.setTextColor(-16777216);
                            dialogDownList2.l0.setTextColor(-10395295);
                            dialogDownList2.m0.setTextColor(-16777216);
                            dialogDownList2.q0.setTextColor(-10395295);
                            dialogDownList2.r0.setTextColor(-16777216);
                            dialogDownList2.u0.setBackgroundResource(R.drawable.selector_normal);
                            dialogDownList2.v0.setTextColor(-10395295);
                            dialogDownList2.w0.setTextColor(-16777216);
                            dialogDownList2.x0.setTextColor(-14784824);
                            dialogDownList2.x0.setBackgroundResource(R.drawable.selector_normal);
                            dialogDownList2.o0.setTextColor(-16777216);
                            dialogDownList2.o0.v(-16777216, MainApp.n1);
                            dialogDownList2.t0.setTextColor(-16777216);
                            dialogDownList2.t0.v(-16777216, MainApp.n1);
                        }
                        List list = dialogDownList2.f0;
                        if (list != null) {
                            i8 = list.size();
                        } else {
                            i8 = 0;
                        }
                        dialogDownList2.k0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i8);
                        dialogDownList2.i0.setText(dialogDownList2.e0);
                        if (TextUtils.isEmpty(MainUri.e())) {
                            dialogDownList2.w0.setText(R.string.not_selected);
                            dialogDownList2.w0.setTextColor(-769226);
                        } else {
                            dialogDownList2.w0.setText(dialogDownList2.D0);
                            AppCompatTextView appCompatTextView3 = dialogDownList2.w0;
                            if (MainApp.K1) {
                                i9 = -328966;
                            }
                            appCompatTextView3.setTextColor(i9);
                        }
                        dialogDownList2.m0.setHint(R.string.not_used);
                        dialogDownList2.r0.setHint(R.string.real_name);
                        dialogDownList2.m0.setElineColor(-14784824);
                        dialogDownList2.r0.setElineColor(-2434342);
                        dialogDownList2.m0.setSelectAllOnFocus(true);
                        dialogDownList2.m0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogDownList.3
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogDownList dialogDownList3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogDownList3 = DialogDownList.this).m0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-14784824);
                                dialogDownList3.r0.setElineColor(-2434342);
                            }
                        });
                        dialogDownList2.m0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownList.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                if (dialogDownList3.n0 == null) {
                                    return;
                                }
                                if (TextUtils.isEmpty(editable)) {
                                    dialogDownList3.n0.setVisibility(0);
                                } else {
                                    dialogDownList3.n0.setVisibility(8);
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }
                        });
                        dialogDownList2.m0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownList.5
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                MyEditText myEditText3 = dialogDownList3.m0;
                                if (myEditText3 == null || dialogDownList3.A0) {
                                    return true;
                                }
                                dialogDownList3.A0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        DialogDownList.C(DialogDownList.this);
                                        DialogDownList.this.A0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogDownList2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownList.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                MyEditText myEditText3 = dialogDownList3.m0;
                                if (myEditText3 == null) {
                                    return;
                                }
                                myEditText3.setText(dialogDownList3.z0);
                                dialogDownList3.m0.setElineColor(-14784824);
                                dialogDownList3.r0.setElineColor(-2434342);
                                MainUtil.b7(dialogDownList3.m0);
                            }
                        });
                        dialogDownList2.r0.setSelectAllOnFocus(true);
                        dialogDownList2.r0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogDownList.7
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogDownList dialogDownList3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogDownList3 = DialogDownList.this).m0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-2434342);
                                dialogDownList3.r0.setElineColor(-14784824);
                            }
                        });
                        dialogDownList2.r0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownList.8
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                if (dialogDownList3.s0 == null) {
                                    return;
                                }
                                if (TextUtils.isEmpty(editable)) {
                                    dialogDownList3.s0.setVisibility(0);
                                } else {
                                    dialogDownList3.s0.setVisibility(8);
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                            }
                        });
                        dialogDownList2.r0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownList.9
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                MyEditText myEditText3 = dialogDownList3.r0;
                                if (myEditText3 == null || dialogDownList3.A0) {
                                    return true;
                                }
                                dialogDownList3.A0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.9.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                                        DialogDownList.C(DialogDownList.this);
                                        DialogDownList.this.A0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogDownList2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownList.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                if (dialogDownList3.m0 == null) {
                                    return;
                                }
                                if (dialogDownList3.s0 != null && !TextUtils.isEmpty(dialogDownList3.z0)) {
                                    String str = dialogDownList3.z0;
                                    int indexOf = str.indexOf(32);
                                    if (indexOf > 0 && indexOf < str.length()) {
                                        str = str.substring(0, indexOf);
                                        if (!TextUtils.isEmpty(str)) {
                                            str = str.trim();
                                        }
                                    }
                                    dialogDownList3.r0.setText(str);
                                    if (TextUtils.isEmpty(str)) {
                                        dialogDownList3.s0.setVisibility(0);
                                    } else {
                                        dialogDownList3.s0.setVisibility(8);
                                    }
                                }
                                dialogDownList3.m0.setElineColor(-2434342);
                                dialogDownList3.r0.setElineColor(-14784824);
                                MainUtil.b7(dialogDownList3.r0);
                            }
                        });
                        dialogDownList2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownList.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final DialogDownList dialogDownList3 = DialogDownList.this;
                                ArrayList arrayList = dialogDownList3.C0;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    MyPopupMenu myPopupMenu = dialogDownList3.E0;
                                    if (myPopupMenu == null) {
                                        if (myPopupMenu != null) {
                                            dialogDownList3.Y = null;
                                            myPopupMenu.a();
                                            dialogDownList3.E0 = null;
                                        }
                                        if (dialogDownList3.a0 != null && view != null && dialogDownList3.C0 != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            ArrayList arrayList3 = dialogDownList3.C0;
                                            int size = arrayList3.size();
                                            int i10 = 0;
                                            int i11 = 0;
                                            while (i11 < size) {
                                                Object obj = arrayList3.get(i11);
                                                i11++;
                                                arrayList2.add(new MyPopupAdapter.PopMenuItem(i10, MainUri.o(dialogDownList3.b0, (String) obj)));
                                                i10++;
                                            }
                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i10, R.string.direct_select));
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogDownList3.a0, dialogDownList3.g0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogDownList.21
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i12 = DialogDownList.Q0;
                                                    DialogDownList dialogDownList4 = DialogDownList.this;
                                                    MyPopupMenu myPopupMenu3 = dialogDownList4.E0;
                                                    if (myPopupMenu3 != null) {
                                                        dialogDownList4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogDownList4.E0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view2, int i12) {
                                                    DialogDownList dialogDownList4 = DialogDownList.this;
                                                    ArrayList arrayList4 = dialogDownList4.C0;
                                                    if (arrayList4 != null && i12 < arrayList4.size()) {
                                                        String str = (String) dialogDownList4.C0.get(i12);
                                                        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                            return true;
                                                        }
                                                        PrefPath.r = str;
                                                        dialogDownList4.s(new AnonymousClass16());
                                                        return true;
                                                    }
                                                    MainUtil.F4(dialogDownList4.a0, MainUri.e());
                                                    return true;
                                                }
                                            });
                                            dialogDownList3.E0 = myPopupMenu2;
                                            dialogDownList3.Y = myPopupMenu2;
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                MainUtil.F4(dialogDownList3.a0, MainUri.e());
                            }
                        });
                        dialogDownList2.x0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownList.12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogDownList dialogDownList3 = DialogDownList.this;
                                AppCompatTextView appCompatTextView4 = dialogDownList3.x0;
                                if (appCompatTextView4 != null) {
                                    if (appCompatTextView4.isActivated()) {
                                        dialogDownList3.G();
                                    } else {
                                        if (dialogDownList3.A0) {
                                            return;
                                        }
                                        dialogDownList3.A0 = true;
                                        dialogDownList3.x0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.12.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                                DialogDownList.C(DialogDownList.this);
                                                DialogDownList.this.A0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogDownList2.g(dialogDownList2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownList.13
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                final DialogDownList dialogDownList3 = DialogDownList.this;
                                if (dialogDownList3.g0 != null) {
                                    dialogDownList3.show();
                                    Handler handler2 = dialogDownList3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.14
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogDownList dialogDownList4 = DialogDownList.this;
                                            List list2 = dialogDownList4.f0;
                                            if (list2 != null && !list2.isEmpty()) {
                                                String str = (String) dialogDownList4.f0.get(0);
                                                MyRoundImage myRoundImage2 = dialogDownList4.h0;
                                                if (myRoundImage2 != null) {
                                                    myRoundImage2.o(-460552, R.drawable.outline_image_black_24);
                                                    if (Compress.I(MainUtil.V3(str, null, null, true))) {
                                                        dialogDownList4.O0 = str;
                                                        dialogDownList4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.18
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogDownList dialogDownList5 = DialogDownList.this;
                                                                MainActivity mainActivity = dialogDownList5.a0;
                                                                if (mainActivity != null) {
                                                                    if (dialogDownList5.B0 == null) {
                                                                        dialogDownList5.B0 = GlideApp.a(mainActivity);
                                                                    }
                                                                    Handler handler3 = dialogDownList5.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.18.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogDownList dialogDownList6 = DialogDownList.this;
                                                                            String str2 = dialogDownList6.O0;
                                                                            dialogDownList6.O0 = null;
                                                                            if (dialogDownList6.B0 == null) {
                                                                                return;
                                                                            }
                                                                            if (URLUtil.isNetworkUrl(str2)) {
                                                                                ((GlideRequest) ((GlideRequest) dialogDownList6.B0.b(PictureDrawable.class)).O(MainUtil.A1(dialogDownList6.b0, str2, dialogDownList6.d0))).I(dialogDownList6.P0).E(dialogDownList6.h0);
                                                                                return;
                                                                            }
                                                                            ((GlideRequest) ((GlideRequest) dialogDownList6.B0.b(PictureDrawable.class)).O(str2)).I(dialogDownList6.P0).E(dialogDownList6.h0);
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        });
                                                    } else {
                                                        dialogDownList4.M0 = str;
                                                        dialogDownList4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.15
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogDownList dialogDownList5 = DialogDownList.this;
                                                                MainActivity mainActivity = dialogDownList5.a0;
                                                                if (mainActivity != null) {
                                                                    if (dialogDownList5.B0 == null) {
                                                                        dialogDownList5.B0 = GlideApp.a(mainActivity);
                                                                    }
                                                                    Handler handler3 = dialogDownList5.i;
                                                                    if (handler3 == null) {
                                                                        return;
                                                                    }
                                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.15.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            DialogDownList dialogDownList6 = DialogDownList.this;
                                                                            String str2 = dialogDownList6.M0;
                                                                            dialogDownList6.M0 = null;
                                                                            if (dialogDownList6.B0 == null) {
                                                                                return;
                                                                            }
                                                                            boolean isNetworkUrl = URLUtil.isNetworkUrl(str2);
                                                                            DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                                                            if (isNetworkUrl) {
                                                                                ((RequestBuilder) dialogDownList6.B0.t(MainUtil.A1(dialogDownList6.b0, str2, dialogDownList6.d0)).e(diskCacheStrategy)).I(dialogDownList6.N0).E(dialogDownList6.h0);
                                                                            } else {
                                                                                ((RequestBuilder) dialogDownList6.B0.u(str2).e(diskCacheStrategy)).I(dialogDownList6.N0).E(dialogDownList6.h0);
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

    public static void C(DialogDownList dialogDownList) {
        int i;
        final List list = dialogDownList.f0;
        if (list != null && !list.isEmpty() && dialogDownList.b0 != null && dialogDownList.m0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogDownList.b0, R.string.select_dir);
                return;
            }
            final String Q02 = MainUtil.Q0(dialogDownList.m0, true);
            if (!TextUtils.isEmpty(Q02)) {
                byte[] bytes = Q02.getBytes();
                if (bytes != null && bytes.length > 200) {
                    dialogDownList.m0.setElineColor(-14784824);
                    dialogDownList.r0.setElineColor(-2434342);
                    MainUtil.e8(dialogDownList.b0, R.string.long_name);
                    return;
                }
                Q02 = dialogDownList.E(Q02);
            }
            final String Q03 = MainUtil.Q0(dialogDownList.r0, true);
            if (!TextUtils.isEmpty(Q03)) {
                byte[] bytes2 = Q03.getBytes();
                if (bytes2 != null && bytes2.length > 200) {
                    dialogDownList.m0.setElineColor(-2434342);
                    dialogDownList.r0.setElineColor(-14784824);
                    MainUtil.e8(dialogDownList.b0, R.string.long_name);
                    return;
                }
                Q03 = dialogDownList.E(Q03);
            }
            MainUtil.X4(dialogDownList.b0, dialogDownList.m0);
            DialogSetFull.DialogApplyListener dialogApplyListener = dialogDownList.c0;
            if (dialogApplyListener != null) {
                dialogApplyListener.a();
            }
            dialogDownList.setCanceledOnTouchOutside(false);
            dialogDownList.x0.setActivated(true);
            dialogDownList.x0.setText(R.string.cancel);
            AppCompatTextView appCompatTextView = dialogDownList.x0;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            appCompatTextView.setTextColor(i);
            DialogTask dialogTask = dialogDownList.y0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogDownList.y0 = null;
            AppCompatTextView appCompatTextView2 = dialogDownList.x0;
            if (appCompatTextView2 != null) {
                appCompatTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownList.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str = Q03;
                        List list2 = list;
                        DialogDownList dialogDownList2 = DialogDownList.this;
                        DialogTask dialogTask2 = new DialogTask(dialogDownList2, Q02, str, list2);
                        dialogDownList2.y0 = dialogTask2;
                        dialogTask2.b(dialogDownList2.b0);
                    }
                });
            }
        }
    }

    public final String D(String str) {
        if (!TextUtils.isEmpty(str)) {
            String E = E(str);
            String str2 = null;
            if (!TextUtils.isEmpty(E)) {
                if (this.I0 == null) {
                    this.I0 = Pattern.compile("[\\uD83C-\\uDBFF\\uDC00-\\uDFFF]&&[^()-]+");
                }
                String replaceAll = this.I0.matcher(E).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                if (!TextUtils.isEmpty(replaceAll)) {
                    if (this.J0 == null) {
                        this.J0 = Pattern.compile("\\p{InEmoticons}&&[^()-]+");
                    }
                    String replaceAll2 = this.J0.matcher(replaceAll).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    if (!TextUtils.isEmpty(replaceAll2)) {
                        if (this.K0 == null) {
                            this.K0 = Pattern.compile("\\p{So}&&[^()-]+");
                        }
                        String replaceAll3 = this.K0.matcher(replaceAll2).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        if (!TextUtils.isEmpty(replaceAll3)) {
                            if (this.L0 == null) {
                                this.L0 = Pattern.compile("\\p{InMiscellaneousSymbolsAndPictographs}&&[^()-]+");
                            }
                            str2 = this.L0.matcher(replaceAll3).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        }
                    }
                }
            }
            String e2 = MainUtil.e2(170, str2);
            if (!TextUtils.isEmpty(e2)) {
                return e2;
            }
        }
        return "Image";
    }

    public final String E(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            if (this.H0 == null) {
                this.H0 = Pattern.compile("[\\\\/:*?\"<>|]");
            }
            return MainUtil.Z6(URLDecoder.decode(this.H0.matcher(str).replaceAll("-"), "UTF-8"));
        } catch (Exception unused) {
            return str;
        }
    }

    public final boolean F(int i, int i2, Intent intent) {
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
            }
            return true;
        }
        return false;
    }

    public final void G() {
        int i;
        if (this.g0 != null && this.y0 != null) {
            this.x0.setEnabled(false);
            this.x0.setActivated(true);
            this.x0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.x0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView.setTextColor(i);
            DialogTask dialogTask = this.y0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.y0 = null;
            return;
        }
        dismiss();
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
        DialogTask dialogTask = this.y0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.y0 = null;
        MyPopupMenu myPopupMenu = this.E0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.E0 = null;
        }
        GlideRequests glideRequests = this.B0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.h0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.B0 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundImage myRoundImage2 = this.h0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.h0 = null;
        }
        MyEditText myEditText = this.m0;
        if (myEditText != null) {
            myEditText.c();
            this.m0 = null;
        }
        MyButtonText myButtonText = this.o0;
        if (myButtonText != null) {
            myButtonText.t();
            this.o0 = null;
        }
        MyLineFrame myLineFrame = this.p0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.p0 = null;
        }
        MyEditText myEditText2 = this.r0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.r0 = null;
        }
        MyButtonText myButtonText2 = this.t0;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.t0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.i0 = null;
        this.k0 = null;
        this.l0 = null;
        this.n0 = null;
        this.q0 = null;
        this.s0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.z0 = null;
        this.C0 = null;
        this.D0 = null;
        this.F0 = null;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        super.dismiss();
    }
}
