package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.book.DbBookPass;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingPassList;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogPassLoad extends MyDialogBottom {
    public MainItem.ChildItem A0;
    public boolean B0;
    public boolean C0;
    public Context a0;
    public String b0;
    public MyDialogLinear c0;
    public AppCompatTextView d0;
    public LinearLayout e0;
    public MyRoundImage f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public MyButtonCheck l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public MyButtonCheck o0;
    public FrameLayout p0;
    public MyButtonCheck q0;
    public AppCompatTextView r0;
    public MyCoverView s0;
    public MyLineText t0;
    public AppCompatTextView u0;
    public DialogTask v0;
    public int w0;
    public boolean x0;
    public ArrayList y0;
    public MainItem.ChildItem z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public boolean g;

        public DialogTask(DialogPassLoad dialogPassLoad, String str) {
            WeakReference weakReference = new WeakReference(dialogPassLoad);
            this.e = weakReference;
            DialogPassLoad dialogPassLoad2 = (DialogPassLoad) weakReference.get();
            if (dialogPassLoad2 == null) {
                return;
            }
            this.f = str;
            dialogPassLoad2.z0 = null;
            dialogPassLoad2.A0 = null;
            dialogPassLoad2.C0 = false;
            dialogPassLoad2.x0 = false;
            dialogPassLoad2.s0.m(true);
            dialogPassLoad2.d0.setText(R.string.loading);
            dialogPassLoad2.d0.setVisibility(0);
            dialogPassLoad2.e0.setVisibility(8);
            dialogPassLoad2.t0.setVisibility(8);
            dialogPassLoad2.u0.setEnabled(true);
            dialogPassLoad2.u0.setText(R.string.cancel);
            dialogPassLoad2.setCanceledOnTouchOutside(false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:149:0x0155 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:153:0x0150 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:193:0x022a  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0103 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x00b6 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r14v10, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 659
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogPassLoad.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogPassLoad dialogPassLoad;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogPassLoad = (DialogPassLoad) weakReference.get()) == null) {
                return;
            }
            dialogPassLoad.v0 = null;
            dialogPassLoad.z0 = null;
            dialogPassLoad.A0 = null;
            MainUtil.e8(dialogPassLoad.a0, R.string.cancelled);
            dialogPassLoad.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogPassLoad dialogPassLoad;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogPassLoad = (DialogPassLoad) weakReference.get()) != null) {
                dialogPassLoad.v0 = null;
                if (dialogPassLoad.D()) {
                    MainUtil.e8(dialogPassLoad.a0, R.string.cancelled);
                    dialogPassLoad.dismiss();
                    return;
                }
                if (!this.g) {
                    dialogPassLoad.x0 = true;
                    dialogPassLoad.w0 = 0;
                    dialogPassLoad.y0 = null;
                    dialogPassLoad.z0 = null;
                    dialogPassLoad.A0 = null;
                    dialogPassLoad.s0.f(false);
                    dialogPassLoad.d0.setText(R.string.no_password);
                    dialogPassLoad.u0.setEnabled(true);
                    dialogPassLoad.u0.setText(R.string.retry);
                    dialogPassLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                if (dialogPassLoad.z0 != null && dialogPassLoad.A0 != null) {
                    if (dialogPassLoad.d0 == null) {
                        return;
                    }
                    dialogPassLoad.s0.f(false);
                    dialogPassLoad.d0.setVisibility(8);
                    dialogPassLoad.e0.setVisibility(0);
                    dialogPassLoad.l0.q(false, false);
                    dialogPassLoad.k0.setInputType(129);
                    dialogPassLoad.k0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    dialogPassLoad.o0.q(false, false);
                    dialogPassLoad.n0.setInputType(129);
                    dialogPassLoad.n0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    dialogPassLoad.g0.setText(dialogPassLoad.z0.g);
                    dialogPassLoad.h0.setText(dialogPassLoad.z0.q);
                    dialogPassLoad.k0.setText(dialogPassLoad.z0.G);
                    dialogPassLoad.n0.setText(dialogPassLoad.A0.G);
                    MyRoundImage myRoundImage = dialogPassLoad.f0;
                    if (myRoundImage != null) {
                        MainItem.ChildItem childItem = dialogPassLoad.z0;
                        if (childItem == null) {
                            myRoundImage.o(-460552, R.drawable.outline_public_black_24);
                        } else {
                            myRoundImage.p(-460552, R.drawable.outline_public_black_24, childItem.g, null);
                            dialogPassLoad.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogPassLoad dialogPassLoad2 = DialogPassLoad.this;
                                    MainItem.ChildItem childItem2 = dialogPassLoad2.z0;
                                    if (childItem2 != null) {
                                        String str = childItem2.g;
                                        if (!TextUtils.isEmpty(str)) {
                                            String O1 = MainUtil.O1(str);
                                            final Bitmap n4 = MainUtil.n4(O1);
                                            if (!MainUtil.f6(n4)) {
                                                n4 = DbBookPass.b(dialogPassLoad2.a0, str);
                                                if (MainUtil.f6(n4)) {
                                                    MainUtil.V7(O1, n4);
                                                } else {
                                                    return;
                                                }
                                            }
                                            MyRoundImage myRoundImage2 = dialogPassLoad2.f0;
                                            if (myRoundImage2 == null) {
                                                return;
                                            }
                                            myRoundImage2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.10.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                                    MyRoundImage myRoundImage3 = DialogPassLoad.this.f0;
                                                    if (myRoundImage3 == null) {
                                                        return;
                                                    }
                                                    myRoundImage3.setIconSmall(true);
                                                    DialogPassLoad.this.f0.setImageBitmap(n4);
                                                }
                                            });
                                        }
                                    }
                                }
                            });
                        }
                    }
                    dialogPassLoad.t0.setVisibility(0);
                    dialogPassLoad.u0.setEnabled(true);
                    dialogPassLoad.u0.setText(R.string.overwrite);
                    dialogPassLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                MainUtil.e8(dialogPassLoad.a0, R.string.success);
                dialogPassLoad.dismiss();
            }
        }
    }

    public DialogPassLoad(SettingPassList settingPassList, String str) {
        super(settingPassList);
        this.a0 = getContext();
        this.b0 = str;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogPassLoad dialogPassLoad = DialogPassLoad.this;
                Context context = dialogPassLoad.a0;
                if (context != null) {
                    int i = R.id.area_view_1;
                    int i2 = R.id.area_view_2;
                    int i3 = R.id.area_view_3;
                    int i4 = R.id.area_view_4;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 72.0f);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i5 = MainApp.E1;
                    appCompatTextView.setPadding(i5, i5, i5, i5);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setText(R.string.loading);
                    appCompatTextView.setMinHeight(G);
                    frameLayout.addView(appCompatTextView, -1, -2);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    linearLayout.setVisibility(8);
                    frameLayout.addView(linearLayout, -1, -2);
                    int G2 = (int) MainUtil.G(context, 80.0f);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    linearLayout.addView(frameLayout2, -1, G2);
                    int G3 = (int) MainUtil.G(context, 20.0f);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(G3);
                    int i6 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    frameLayout2.addView(myRoundImage, layoutParams);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setGravity(16);
                    appCompatTextView2.setSingleLine(true);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, G3);
                    layoutParams2.topMargin = MainApp.E1;
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    frameLayout2.addView(appCompatTextView2, layoutParams2);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    appCompatTextView3.setGravity(16);
                    appCompatTextView3.setSingleLine(true);
                    appCompatTextView3.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, G3);
                    layoutParams3.topMargin = (int) MainUtil.G(context, 44.0f);
                    layoutParams3.setMarginStart(G);
                    layoutParams3.setMarginEnd(MainApp.E1);
                    frameLayout2.addView(appCompatTextView3, layoutParams3);
                    int G4 = (int) MainUtil.G(context, 32.0f);
                    AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                    int i7 = MainApp.E1;
                    appCompatTextView4.setPadding(i7, 0, i7, 0);
                    appCompatTextView4.setGravity(16);
                    appCompatTextView4.setTextSize(1, 14.0f);
                    appCompatTextView4.setText(R.string.exist_pass);
                    linearLayout.addView(appCompatTextView4, -1, G4);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    int i8 = MainApp.F1;
                    myLineRelative.setPadding(0, i8, 0, i8);
                    myLineRelative.b(MainApp.E1);
                    linearLayout.addView(myLineRelative, -1, -2);
                    AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                    appCompatTextView5.setId(i);
                    appCompatTextView5.setGravity(16);
                    appCompatTextView5.setTextSize(1, 14.0f);
                    appCompatTextView5.setText(R.string.change_before);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams4.setMarginStart(MainApp.E1);
                    myLineRelative.addView(appCompatTextView5, layoutParams4);
                    AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                    appCompatTextView6.setId(i2);
                    appCompatTextView6.setGravity(16);
                    appCompatTextView6.setTextSize(1, 16.0f);
                    appCompatTextView6.setMinHeight(MainApp.f1);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams5.addRule(3, i);
                    layoutParams5.setMarginStart(MainApp.E1);
                    layoutParams5.setMarginEnd(MainApp.g1);
                    myLineRelative.addView(appCompatTextView6, layoutParams5);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    int i9 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i9, i9);
                    layoutParams6.addRule(21);
                    layoutParams6.topMargin = MainApp.F1;
                    myLineRelative.addView(myButtonCheck, layoutParams6);
                    MyLineRelative myLineRelative2 = new MyLineRelative(context);
                    int i10 = MainApp.F1;
                    myLineRelative2.setPadding(0, i10, 0, i10);
                    myLineRelative2.b(MainApp.E1);
                    linearLayout.addView(myLineRelative2, -1, -2);
                    AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
                    appCompatTextView7.setId(i3);
                    appCompatTextView7.setGravity(16);
                    appCompatTextView7.setTextSize(1, 14.0f);
                    appCompatTextView7.setText(R.string.change_after);
                    RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams7.setMarginStart(MainApp.E1);
                    myLineRelative2.addView(appCompatTextView7, layoutParams7);
                    AppCompatTextView appCompatTextView8 = new AppCompatTextView(context, null);
                    appCompatTextView8.setId(i4);
                    appCompatTextView8.setGravity(16);
                    appCompatTextView8.setTextSize(1, 16.0f);
                    appCompatTextView8.setMinHeight(MainApp.f1);
                    RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams8.addRule(3, i3);
                    layoutParams8.setMarginStart(MainApp.E1);
                    layoutParams8.setMarginEnd(MainApp.g1);
                    myLineRelative2.addView(appCompatTextView8, layoutParams8);
                    MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
                    int i11 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i11, i11);
                    layoutParams9.addRule(21);
                    layoutParams9.topMargin = MainApp.F1;
                    myLineRelative2.addView(myButtonCheck2, layoutParams9);
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    linearLayout.addView(frameLayout3, -1, -2);
                    MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
                    int i12 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i12, i12);
                    layoutParams10.gravity = 8388627;
                    layoutParams10.setMarginStart(MainApp.G1);
                    frameLayout3.addView(myButtonCheck3, layoutParams10);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j, R.string.apply_pass_equal, -1, -2);
                    d.gravity = 8388627;
                    d.setMarginStart(MainApp.h1);
                    d.setMarginEnd(MainApp.E1);
                    frameLayout3.addView(j, d);
                    MyCoverView myCoverView = new MyCoverView(context);
                    int i13 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i13, i13);
                    layoutParams11.gravity = 17;
                    frameLayout.addView(myCoverView, layoutParams11);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    s.setText(R.string.skip);
                    s.s(context);
                    s.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams12.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams12, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.cancel, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogPassLoad.c0 = q;
                    dialogPassLoad.d0 = appCompatTextView;
                    dialogPassLoad.e0 = linearLayout;
                    dialogPassLoad.f0 = myRoundImage;
                    dialogPassLoad.g0 = appCompatTextView2;
                    dialogPassLoad.h0 = appCompatTextView3;
                    dialogPassLoad.i0 = appCompatTextView4;
                    dialogPassLoad.j0 = appCompatTextView5;
                    dialogPassLoad.k0 = appCompatTextView6;
                    dialogPassLoad.l0 = myButtonCheck;
                    dialogPassLoad.m0 = appCompatTextView7;
                    dialogPassLoad.n0 = appCompatTextView8;
                    dialogPassLoad.o0 = myButtonCheck2;
                    dialogPassLoad.p0 = frameLayout3;
                    dialogPassLoad.q0 = myButtonCheck3;
                    dialogPassLoad.r0 = j;
                    dialogPassLoad.s0 = myCoverView;
                    dialogPassLoad.t0 = s;
                    dialogPassLoad.u0 = l;
                    Handler handler2 = dialogPassLoad.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogPassLoad dialogPassLoad2 = DialogPassLoad.this;
                            if (dialogPassLoad2.c0 != null && dialogPassLoad2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogPassLoad2.d0.setTextColor(-328966);
                                    dialogPassLoad2.g0.setTextColor(-328966);
                                    dialogPassLoad2.h0.setTextColor(-328966);
                                    dialogPassLoad2.i0.setBackgroundColor(-12632257);
                                    dialogPassLoad2.i0.setTextColor(-2434342);
                                    dialogPassLoad2.j0.setTextColor(-4079167);
                                    dialogPassLoad2.k0.setTextColor(-328966);
                                    dialogPassLoad2.m0.setTextColor(-4079167);
                                    dialogPassLoad2.n0.setTextColor(-328966);
                                    dialogPassLoad2.l0.p(R.drawable.outline_visibility_off_dark_24, R.drawable.outline_visibility_dark_24);
                                    dialogPassLoad2.o0.p(R.drawable.outline_visibility_off_dark_24, R.drawable.outline_visibility_dark_24);
                                    dialogPassLoad2.p0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogPassLoad2.r0.setTextColor(-328966);
                                    dialogPassLoad2.t0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogPassLoad2.t0.setTextColor(-328966);
                                    dialogPassLoad2.u0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogPassLoad2.u0.setTextColor(-328966);
                                    dialogPassLoad2.l0.setBgPreColor(-12632257);
                                    dialogPassLoad2.o0.setBgPreColor(-12632257);
                                    dialogPassLoad2.q0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogPassLoad2.q0.setBgPreColor(-12632257);
                                } else {
                                    dialogPassLoad2.d0.setTextColor(-16777216);
                                    dialogPassLoad2.g0.setTextColor(-16777216);
                                    dialogPassLoad2.h0.setTextColor(-16777216);
                                    dialogPassLoad2.i0.setBackgroundColor(-460552);
                                    dialogPassLoad2.i0.setTextColor(-12303292);
                                    dialogPassLoad2.j0.setTextColor(-10395295);
                                    dialogPassLoad2.k0.setTextColor(-16777216);
                                    dialogPassLoad2.m0.setTextColor(-10395295);
                                    dialogPassLoad2.n0.setTextColor(-16777216);
                                    dialogPassLoad2.l0.p(R.drawable.outline_visibility_off_black_24, R.drawable.outline_visibility_black_24);
                                    dialogPassLoad2.o0.p(R.drawable.outline_visibility_off_black_24, R.drawable.outline_visibility_black_24);
                                    dialogPassLoad2.p0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogPassLoad2.r0.setTextColor(-16777216);
                                    dialogPassLoad2.t0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogPassLoad2.t0.setTextColor(-14784824);
                                    dialogPassLoad2.u0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogPassLoad2.u0.setTextColor(-14784824);
                                    dialogPassLoad2.l0.setBgPreColor(-2039584);
                                    dialogPassLoad2.o0.setBgPreColor(-2039584);
                                    dialogPassLoad2.q0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogPassLoad2.q0.setBgPreColor(-2039584);
                                }
                                dialogPassLoad2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPassLoad dialogPassLoad3 = DialogPassLoad.this;
                                        MyButtonCheck myButtonCheck4 = dialogPassLoad3.l0;
                                        if (myButtonCheck4 == null) {
                                            return;
                                        }
                                        if (myButtonCheck4.D) {
                                            myButtonCheck4.q(false, true);
                                            dialogPassLoad3.k0.setInputType(129);
                                            dialogPassLoad3.k0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                                        } else {
                                            myButtonCheck4.q(true, true);
                                            dialogPassLoad3.k0.setInputType(161);
                                            dialogPassLoad3.k0.setTransformationMethod(null);
                                        }
                                    }
                                });
                                dialogPassLoad2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPassLoad dialogPassLoad3 = DialogPassLoad.this;
                                        MyButtonCheck myButtonCheck4 = dialogPassLoad3.o0;
                                        if (myButtonCheck4 == null) {
                                            return;
                                        }
                                        if (myButtonCheck4.D) {
                                            myButtonCheck4.q(false, true);
                                            dialogPassLoad3.n0.setInputType(129);
                                            dialogPassLoad3.n0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                                        } else {
                                            myButtonCheck4.q(true, true);
                                            dialogPassLoad3.n0.setInputType(161);
                                            dialogPassLoad3.n0.setTransformationMethod(null);
                                        }
                                    }
                                });
                                dialogPassLoad2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck4 = DialogPassLoad.this.q0;
                                        if (myButtonCheck4 == null) {
                                            return;
                                        }
                                        myButtonCheck4.q(!myButtonCheck4.D, true);
                                    }
                                });
                                dialogPassLoad2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck4 = DialogPassLoad.this.q0;
                                        if (myButtonCheck4 == null) {
                                            return;
                                        }
                                        myButtonCheck4.q(!myButtonCheck4.D, true);
                                    }
                                });
                                dialogPassLoad2.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPassLoad dialogPassLoad3 = DialogPassLoad.this;
                                        MyLineText myLineText = dialogPassLoad3.t0;
                                        if (myLineText == null || dialogPassLoad3.B0) {
                                            return;
                                        }
                                        dialogPassLoad3.B0 = true;
                                        myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                DialogPassLoad dialogPassLoad4 = DialogPassLoad.this;
                                                MainItem.ChildItem childItem = dialogPassLoad4.A0;
                                                if (childItem == null) {
                                                    return;
                                                }
                                                if (dialogPassLoad4.q0.D) {
                                                    dialogPassLoad4.w0 = 1;
                                                }
                                                childItem.d = 1;
                                                dialogPassLoad4.B(dialogPassLoad4.b0);
                                                DialogPassLoad.this.B0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogPassLoad2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogPassLoad dialogPassLoad3 = DialogPassLoad.this;
                                        AppCompatTextView appCompatTextView9 = dialogPassLoad3.u0;
                                        if (appCompatTextView9 == null || dialogPassLoad3.B0) {
                                            return;
                                        }
                                        dialogPassLoad3.B0 = true;
                                        appCompatTextView9.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassLoad.8.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogPassLoad dialogPassLoad4 = DialogPassLoad.this;
                                                if (dialogPassLoad4.u0 == null) {
                                                    return;
                                                }
                                                MainItem.ChildItem childItem = dialogPassLoad4.A0;
                                                if (childItem != null) {
                                                    if (dialogPassLoad4.q0.D) {
                                                        dialogPassLoad4.w0 = 2;
                                                    }
                                                    childItem.d = 2;
                                                    dialogPassLoad4.B(dialogPassLoad4.b0);
                                                    dialogPassLoad4.B0 = false;
                                                    return;
                                                }
                                                if (dialogPassLoad4.x0) {
                                                    dialogPassLoad4.x0 = false;
                                                    dialogPassLoad4.B(dialogPassLoad4.b0);
                                                } else {
                                                    dialogPassLoad4.E();
                                                }
                                                dialogPassLoad4.B0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogPassLoad2.B(dialogPassLoad2.b0);
                                dialogPassLoad2.g(dialogPassLoad2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPassLoad.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogPassLoad dialogPassLoad3 = DialogPassLoad.this;
                                        if (dialogPassLoad3.c0 == null) {
                                            return;
                                        }
                                        dialogPassLoad3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static String C(int i, ArrayList arrayList) {
        if (i < arrayList.size()) {
            String str = (String) arrayList.get(i);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return str.trim();
        }
        return null;
    }

    public final void B(String str) {
        DialogTask dialogTask = this.v0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.v0 = null;
        DialogTask dialogTask2 = new DialogTask(this, str);
        this.v0 = dialogTask2;
        dialogTask2.b(this.a0);
    }

    public final boolean D() {
        if (!this.C0) {
            DialogTask dialogTask = this.v0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void E() {
        int i;
        AppCompatTextView appCompatTextView = this.u0;
        if (appCompatTextView != null && this.v0 != null) {
            appCompatTextView.setEnabled(false);
            this.u0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView2 = this.u0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView2.setTextColor(i);
            this.C0 = true;
            DialogTask dialogTask = this.v0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.v0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        E();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.v0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.v0 = null;
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundImage myRoundImage = this.f0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.f0 = null;
        }
        MyButtonCheck myButtonCheck = this.l0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.l0 = null;
        }
        MyButtonCheck myButtonCheck2 = this.o0;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.o0 = null;
        }
        MyButtonCheck myButtonCheck3 = this.q0;
        if (myButtonCheck3 != null) {
            myButtonCheck3.l();
            this.q0 = null;
        }
        MyCoverView myCoverView = this.s0;
        if (myCoverView != null) {
            myCoverView.i();
            this.s0 = null;
        }
        MyLineText myLineText = this.t0;
        if (myLineText != null) {
            myLineText.u();
            this.t0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.m0 = null;
        this.n0 = null;
        this.p0 = null;
        this.r0 = null;
        this.u0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        super.dismiss();
    }
}
