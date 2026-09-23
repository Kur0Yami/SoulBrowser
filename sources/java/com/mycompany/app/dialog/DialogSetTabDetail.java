package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundFrame;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebTabAdapter;
import com.mycompany.app.web.WebTabBarAdapter;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetTabDetail extends MyDialogBottom {
    public static final /* synthetic */ int e1 = 0;
    public MyLineFrame A0;
    public MySwitchView B0;
    public AppCompatTextView C0;
    public AppCompatTextView D0;
    public AppCompatTextView E0;
    public SeekBar F0;
    public MyButtonImage G0;
    public MyButtonImage H0;
    public AppCompatTextView I0;
    public AppCompatTextView J0;
    public SeekBar K0;
    public MyButtonImage L0;
    public MyButtonImage M0;
    public AppCompatTextView N0;
    public MyLineText O0;
    public boolean P0;
    public int Q0;
    public int R0;
    public boolean S0;
    public int T0;
    public int U0;
    public boolean V0;
    public boolean W0;
    public boolean X0;
    public boolean Y0;
    public DialogSetMsg Z0;
    public final int a0;
    public MyPopupMenu a1;
    public final int b0;
    public GlideRequests b1;
    public final int c0;
    public final Runnable c1;
    public final int d0;
    public final Runnable d1;
    public MainActivity e0;
    public Context f0;
    public MyDialogLinear g0;
    public MyRoundFrame h0;
    public MyRoundImage i0;
    public ArrayList j0;
    public int k0;
    public FrameLayout l0;
    public MyRecyclerView m0;
    public MyButtonImage n0;
    public WebTabBarAdapter o0;
    public boolean p0;
    public ViewGroup.LayoutParams q0;
    public MyLineFrame r0;
    public MySwitchView s0;
    public AppCompatTextView t0;
    public MyRecyclerView u0;
    public ColorAdapter v0;
    public MyLineRelative w0;
    public View x0;
    public AppCompatTextView y0;
    public AppCompatTextView z0;

    /* loaded from: classes3.dex */
    public class ColorAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ColorAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return MainConst.s.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void n(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            ViewPagerHolder viewPagerHolder = (ViewPagerHolder) viewHolder;
            MyButtonCheck myButtonCheck = viewPagerHolder.u;
            if (viewPagerHolder.f1589a != null && i >= 0) {
                int[] iArr = MainConst.s;
                if (i < iArr.length) {
                    int i2 = iArr[i];
                    myButtonCheck.setTag(viewPagerHolder);
                    myButtonCheck.m(i2, i2);
                    if (i2 == -16777216 && MainApp.K1) {
                        myButtonCheck.n(-12632257, MainApp.n1);
                    } else {
                        myButtonCheck.n(0, 0);
                    }
                    myButtonCheck.p(R.drawable.outline_check_white_24, 0);
                    if (i == DialogSetTabDetail.this.Q0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    myButtonCheck.q(z, false);
                    myButtonCheck.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.ColorAdapter.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i3;
                            Object tag;
                            ColorAdapter colorAdapter = ColorAdapter.this;
                            DialogSetTabDetail dialogSetTabDetail = DialogSetTabDetail.this;
                            if (dialogSetTabDetail.o0 != null) {
                                ViewPagerHolder viewPagerHolder2 = null;
                                if (view != null && (tag = view.getTag()) != null && (tag instanceof ViewPagerHolder)) {
                                    viewPagerHolder2 = (ViewPagerHolder) tag;
                                }
                                if (viewPagerHolder2 != null && viewPagerHolder2.f1589a != null) {
                                    i3 = viewPagerHolder2.c();
                                } else {
                                    i3 = -1;
                                }
                                int i4 = dialogSetTabDetail.Q0;
                                if (i4 != i3) {
                                    dialogSetTabDetail.Q0 = i3;
                                    if (!(view instanceof MyButtonCheck)) {
                                        return;
                                    }
                                    ((MyButtonCheck) view).q(true, true);
                                    colorAdapter.h(i4);
                                    dialogSetTabDetail.o0.N(dialogSetTabDetail.Q0, dialogSetTabDetail.P0);
                                }
                            }
                        }
                    });
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v6, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.dialog.DialogSetTabDetail$ViewPagerHolder] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            Context context = viewGroup.getContext();
            if (context == null) {
                return null;
            }
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            myButtonCheck.o(MainApp.E1, r3 + MainApp.G1);
            myButtonCheck.setLayoutParams(new ViewGroup.LayoutParams(MainApp.g1, MainApp.b1));
            ?? viewHolder = new RecyclerView.ViewHolder(myButtonCheck);
            viewHolder.u = myButtonCheck;
            return viewHolder;
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
        public MyButtonCheck u;
    }

    public DialogSetTabDetail(MainActivity mainActivity) {
        super(mainActivity);
        this.c1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.23
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetTabDetail dialogSetTabDetail = DialogSetTabDetail.this;
                SeekBar seekBar = dialogSetTabDetail.F0;
                if (seekBar != null) {
                    dialogSetTabDetail.W0 = false;
                    int progress = seekBar.getProgress() + dialogSetTabDetail.a0;
                    if (dialogSetTabDetail.T0 != progress) {
                        DialogSetTabDetail.C(dialogSetTabDetail, progress);
                    }
                }
            }
        };
        this.d1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.24
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetTabDetail dialogSetTabDetail = DialogSetTabDetail.this;
                SeekBar seekBar = dialogSetTabDetail.K0;
                if (seekBar != null) {
                    dialogSetTabDetail.Y0 = false;
                    int progress = seekBar.getProgress() + dialogSetTabDetail.c0;
                    if (dialogSetTabDetail.U0 != progress) {
                        DialogSetTabDetail.D(dialogSetTabDetail, progress);
                    }
                }
            }
        };
        this.e0 = mainActivity;
        this.f0 = getContext();
        this.P0 = PrefWeb.y;
        this.Q0 = PrefWeb.z;
        this.R0 = PrefPdf.C;
        this.S0 = PrefPdf.D;
        this.T0 = Math.round((PrefPdf.E * 100.0f) / MainApp.Z0);
        int round = Math.round((PrefPdf.F * 100.0f) / MainApp.a1);
        this.U0 = round;
        this.a0 = 50;
        this.b0 = HttpStatusCodes.STATUS_CODE_OK;
        this.c0 = 50;
        this.d0 = HttpStatusCodes.STATUS_CODE_OK;
        int i = this.Q0;
        if (i < 0 || i >= MainConst.s.length) {
            this.Q0 = 5;
        }
        int i2 = this.T0;
        if (i2 < 50) {
            this.T0 = 50;
        } else if (i2 > 200) {
            this.T0 = HttpStatusCodes.STATUS_CODE_OK;
        }
        if (round < 50) {
            this.U0 = 50;
        } else if (round > 200) {
            this.U0 = HttpStatusCodes.STATUS_CODE_OK;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTabDetail dialogSetTabDetail = DialogSetTabDetail.this;
                Context context = dialogSetTabDetail.f0;
                if (context != null) {
                    int i3 = R.id.item_title_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 112.0f);
                    MyRoundFrame myRoundFrame = new MyRoundFrame(context);
                    q.addView(myRoundFrame, -1, G);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setVisibility(8);
                    myRoundFrame.addView(myRoundImage, -1, -1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, MainApp.a1);
                    layoutParams.gravity = 17;
                    myRoundFrame.addView(frameLayout, layoutParams);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(false);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    frameLayout.addView(myRecyclerView, -1, -1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams2, context, 1);
                    m.addView(g, -1, -2);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame.setMinimumHeight(MainApp.h1);
                    myLineFrame.a(MainApp.E1);
                    g.addView(myLineFrame, -1, -2);
                    MySwitchView mySwitchView = new MySwitchView(context);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams3.gravity = 8388629;
                    myLineFrame.addView(mySwitchView, layoutParams3);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i5 = MainApp.E1;
                    appCompatTextView.setPadding(0, i5, 0, i5);
                    appCompatTextView.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 16;
                    layoutParams4.setMarginEnd(MainApp.g1);
                    myLineFrame.addView(appCompatTextView, layoutParams4);
                    MyRecyclerView myRecyclerView2 = new MyRecyclerView(context);
                    int i6 = MainApp.G1;
                    myRecyclerView2.setPadding(i6, 0, i6, 0);
                    myRecyclerView2.setVerticalScrollBarEnabled(false);
                    myRecyclerView2.setHorizontalScrollBarEnabled(false);
                    g.addView(myRecyclerView2, -1, MainApp.h1);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    int i7 = MainApp.E1;
                    myLineRelative.setPadding(i7, i7, i7, i7);
                    myLineRelative.setGravity(16);
                    myLineRelative.setMinimumHeight(MainApp.h1);
                    myLineRelative.d(MainApp.E1);
                    g.addView(myLineRelative, -1, -2);
                    View view = new View(context);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(1, 1);
                    layoutParams5.addRule(21);
                    myLineRelative.addView(view, layoutParams5);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i3, 1, 16.0f);
                    myLineRelative.addView(k, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i3);
                    h.topMargin = MainApp.G1;
                    myLineRelative.addView(j, h);
                    MyLineFrame myLineFrame2 = new MyLineFrame(context);
                    myLineFrame2.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame2.setMinimumHeight(MainApp.h1);
                    myLineFrame2.a(MainApp.E1);
                    g.addView(myLineFrame2, -1, -2);
                    MySwitchView mySwitchView2 = new MySwitchView(context);
                    int i8 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams6.gravity = 8388629;
                    myLineFrame2.addView(mySwitchView2, layoutParams6);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    int i9 = MainApp.E1;
                    appCompatTextView2.setPadding(0, i9, 0, i9);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams7.gravity = 16;
                    layoutParams7.setMarginEnd(MainApp.g1);
                    myLineFrame2.addView(appCompatTextView2, layoutParams7);
                    int G2 = (int) MainUtil.G(context, 12.0f);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    frameLayout2.setPadding(0, G2, 0, 0);
                    g.addView(frameLayout2, -1, -2);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams8.setMarginStart(MainApp.E1);
                    frameLayout2.addView(j2, layoutParams8);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams9.gravity = 8388613;
                    layoutParams9.setMarginEnd(MainApp.E1);
                    frameLayout2.addView(C, layoutParams9);
                    MyLineFrame myLineFrame3 = new MyLineFrame(context);
                    myLineFrame3.a(MainApp.E1);
                    g.addView(myLineFrame3, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    int i10 = MainApp.g1;
                    myLineFrame3.addView(myButtonImage, i10, i10);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams10.gravity = 8388627;
                    layoutParams10.setMarginStart(MainApp.g1);
                    layoutParams10.setMarginEnd(MainApp.g1);
                    myLineFrame3.addView(seekBar, layoutParams10);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i11 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i11, i11);
                    layoutParams11.gravity = 8388613;
                    myLineFrame3.addView(p, layoutParams11);
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    frameLayout3.setPadding(0, G2, 0, 0);
                    g.addView(frameLayout3, -1, -2);
                    AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams12.setMarginStart(MainApp.E1);
                    frameLayout3.addView(j3, layoutParams12);
                    AppCompatTextView C2 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C2.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams13.gravity = 8388613;
                    layoutParams13.setMarginEnd(MainApp.E1);
                    frameLayout3.addView(C2, layoutParams13);
                    FrameLayout frameLayout4 = new FrameLayout(context);
                    g.addView(frameLayout4, -1, MainApp.g1);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    int i12 = MainApp.g1;
                    frameLayout4.addView(myButtonImage2, i12, i12);
                    SeekBar seekBar2 = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams14.gravity = 8388627;
                    layoutParams14.setMarginStart(MainApp.g1);
                    layoutParams14.setMarginEnd(MainApp.g1);
                    frameLayout4.addView(seekBar2, layoutParams14);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    int i13 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i13, i13);
                    layoutParams15.gravity = 8388613;
                    frameLayout4.addView(p2, layoutParams15);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetTabDetail.g0 = q;
                    dialogSetTabDetail.h0 = myRoundFrame;
                    dialogSetTabDetail.i0 = myRoundImage;
                    dialogSetTabDetail.l0 = frameLayout;
                    dialogSetTabDetail.m0 = myRecyclerView;
                    dialogSetTabDetail.r0 = myLineFrame;
                    dialogSetTabDetail.s0 = mySwitchView;
                    dialogSetTabDetail.t0 = appCompatTextView;
                    dialogSetTabDetail.u0 = myRecyclerView2;
                    dialogSetTabDetail.w0 = myLineRelative;
                    dialogSetTabDetail.x0 = view;
                    dialogSetTabDetail.y0 = k;
                    dialogSetTabDetail.z0 = j;
                    dialogSetTabDetail.A0 = myLineFrame2;
                    dialogSetTabDetail.B0 = mySwitchView2;
                    dialogSetTabDetail.C0 = appCompatTextView2;
                    dialogSetTabDetail.D0 = j2;
                    dialogSetTabDetail.E0 = C;
                    dialogSetTabDetail.F0 = seekBar;
                    dialogSetTabDetail.G0 = myButtonImage;
                    dialogSetTabDetail.H0 = p;
                    dialogSetTabDetail.I0 = j3;
                    dialogSetTabDetail.J0 = C2;
                    dialogSetTabDetail.K0 = seekBar2;
                    dialogSetTabDetail.L0 = myButtonImage2;
                    dialogSetTabDetail.M0 = p2;
                    dialogSetTabDetail.N0 = l;
                    dialogSetTabDetail.O0 = s;
                    Handler handler2 = dialogSetTabDetail.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r3v73, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetTabDetail dialogSetTabDetail2 = DialogSetTabDetail.this;
                            int i14 = dialogSetTabDetail2.c0;
                            int i15 = dialogSetTabDetail2.a0;
                            if (dialogSetTabDetail2.g0 != null && dialogSetTabDetail2.f0 != null) {
                                if (MainApp.K1) {
                                    dialogSetTabDetail2.l0.setBackgroundColor(-16777216);
                                    dialogSetTabDetail2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabDetail2.w0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabDetail2.A0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabDetail2.t0.setTextColor(-328966);
                                    dialogSetTabDetail2.y0.setTextColor(-328966);
                                    dialogSetTabDetail2.z0.setTextColor(-5126668);
                                    dialogSetTabDetail2.C0.setTextColor(-328966);
                                    dialogSetTabDetail2.D0.setTextColor(-328966);
                                    dialogSetTabDetail2.E0.setTextColor(-328966);
                                    dialogSetTabDetail2.G0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSetTabDetail2.H0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSetTabDetail2.F0.setProgressDrawable(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_progress_a));
                                    dialogSetTabDetail2.F0.setThumb(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_thumb_a));
                                    dialogSetTabDetail2.I0.setTextColor(-328966);
                                    dialogSetTabDetail2.J0.setTextColor(-328966);
                                    dialogSetTabDetail2.L0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSetTabDetail2.M0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSetTabDetail2.K0.setProgressDrawable(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_progress_a));
                                    dialogSetTabDetail2.K0.setThumb(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_thumb_a));
                                    dialogSetTabDetail2.N0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabDetail2.O0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabDetail2.N0.setTextColor(-328966);
                                    dialogSetTabDetail2.O0.setTextColor(-328966);
                                    dialogSetTabDetail2.G0.setBgPreColor(-12632257);
                                    dialogSetTabDetail2.H0.setBgPreColor(-12632257);
                                    dialogSetTabDetail2.L0.setBgPreColor(-12632257);
                                    dialogSetTabDetail2.M0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetTabDetail2.l0.setBackgroundColor(-1);
                                    dialogSetTabDetail2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabDetail2.w0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabDetail2.A0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabDetail2.t0.setTextColor(-16777216);
                                    dialogSetTabDetail2.y0.setTextColor(-16777216);
                                    dialogSetTabDetail2.z0.setTextColor(-12627531);
                                    dialogSetTabDetail2.C0.setTextColor(-16777216);
                                    dialogSetTabDetail2.D0.setTextColor(-16777216);
                                    dialogSetTabDetail2.E0.setTextColor(-16777216);
                                    dialogSetTabDetail2.G0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSetTabDetail2.H0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSetTabDetail2.F0.setProgressDrawable(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_progress_a));
                                    dialogSetTabDetail2.F0.setThumb(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_thumb_a));
                                    dialogSetTabDetail2.I0.setTextColor(-16777216);
                                    dialogSetTabDetail2.J0.setTextColor(-16777216);
                                    dialogSetTabDetail2.L0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSetTabDetail2.M0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSetTabDetail2.K0.setProgressDrawable(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_progress_a));
                                    dialogSetTabDetail2.K0.setThumb(MainUtil.S(dialogSetTabDetail2.f0, R.drawable.seek_thumb_a));
                                    dialogSetTabDetail2.N0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabDetail2.O0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabDetail2.N0.setTextColor(-14784824);
                                    dialogSetTabDetail2.O0.setTextColor(-16777216);
                                    dialogSetTabDetail2.G0.setBgPreColor(-2039584);
                                    dialogSetTabDetail2.H0.setBgPreColor(-2039584);
                                    dialogSetTabDetail2.L0.setBgPreColor(-2039584);
                                    dialogSetTabDetail2.M0.setBgPreColor(-2039584);
                                }
                                if (MainApp.K1) {
                                    dialogSetTabDetail2.h0.setBgColor(-14211289);
                                } else {
                                    dialogSetTabDetail2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.3
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                            MainActivity mainActivity2 = dialogSetTabDetail3.e0;
                                            if (mainActivity2 != null) {
                                                if (dialogSetTabDetail3.b1 == null) {
                                                    dialogSetTabDetail3.b1 = GlideApp.a(mainActivity2);
                                                }
                                                Handler handler3 = dialogSetTabDetail3.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.3.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogSetTabDetail dialogSetTabDetail4 = DialogSetTabDetail.this;
                                                        MyRoundImage myRoundImage2 = dialogSetTabDetail4.i0;
                                                        if (myRoundImage2 != null && dialogSetTabDetail4.b1 != null) {
                                                            myRoundImage2.setVisibility(0);
                                                            ((RequestBuilder) dialogSetTabDetail4.b1.s(Integer.valueOf(R.drawable.dev_cat)).e(DiskCacheStrategy.f2204a)).E(dialogSetTabDetail4.i0);
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                    });
                                }
                                if (dialogSetTabDetail2.l0 != null) {
                                    dialogSetTabDetail2.j0 = new ArrayList();
                                    for (int i16 = 0; i16 < 3; i16++) {
                                        ?? obj = new Object();
                                        obj.h = i16;
                                        obj.j = "file:///android_asset/shortcut.html";
                                        obj.k = "Soul";
                                        dialogSetTabDetail2.j0.add(obj);
                                    }
                                    dialogSetTabDetail2.o0 = new WebTabBarAdapter(dialogSetTabDetail2.f0, dialogSetTabDetail2.j0, dialogSetTabDetail2.k0, false, 0, 0, new WebTabBarAdapter.TabBarListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.18
                                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarListener
                                        public final void a() {
                                            DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                            WebTabBarAdapter webTabBarAdapter = dialogSetTabDetail3.o0;
                                            if (webTabBarAdapter != null) {
                                                try {
                                                    webTabBarAdapter.J(dialogSetTabDetail3.k0, dialogSetTabDetail3.j0);
                                                } catch (Exception unused) {
                                                }
                                            }
                                        }

                                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarListener
                                        public final void b(int i17, View view2, boolean z) {
                                            ArrayList arrayList;
                                            final boolean z2;
                                            final DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                            if (!dialogSetTabDetail3.p0 && (arrayList = dialogSetTabDetail3.j0) != null && arrayList.size() >= 2 && i17 >= 0 && i17 < dialogSetTabDetail3.j0.size()) {
                                                dialogSetTabDetail3.p0 = true;
                                                int i18 = 0;
                                                if (i17 == dialogSetTabDetail3.k0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                dialogSetTabDetail3.j0.remove(i17);
                                                int i19 = dialogSetTabDetail3.k0;
                                                if (i17 <= i19) {
                                                    dialogSetTabDetail3.k0 = i19 - 1;
                                                }
                                                int size = dialogSetTabDetail3.j0.size();
                                                if (dialogSetTabDetail3.k0 >= size) {
                                                    dialogSetTabDetail3.k0 = size - 1;
                                                }
                                                if (dialogSetTabDetail3.k0 < 0) {
                                                    dialogSetTabDetail3.k0 = 0;
                                                }
                                                ArrayList arrayList2 = dialogSetTabDetail3.j0;
                                                int size2 = arrayList2.size();
                                                int i20 = 0;
                                                while (i20 < size2) {
                                                    Object obj2 = arrayList2.get(i20);
                                                    i20++;
                                                    ((WebTabAdapter.WebTabItem) obj2).h = i18;
                                                    i18++;
                                                }
                                                dialogSetTabDetail3.o0.v(dialogSetTabDetail3.j0, dialogSetTabDetail3.k0, i17, false, new WebTabBarAdapter.TabBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.22
                                                    @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarChangeListener
                                                    public final void a() {
                                                        MyRecyclerView myRecyclerView3 = DialogSetTabDetail.this.m0;
                                                        if (myRecyclerView3 == null) {
                                                            return;
                                                        }
                                                        myRecyclerView3.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.22.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                                                                if (z2) {
                                                                    DialogSetTabDetail.B(DialogSetTabDetail.this, 1, true);
                                                                } else {
                                                                    DialogSetTabDetail.B(DialogSetTabDetail.this, 0, true);
                                                                }
                                                                DialogSetTabDetail.this.p0 = false;
                                                            }
                                                        }, 300L);
                                                    }
                                                });
                                            }
                                        }

                                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarListener
                                        public final void c(WebTabBarAdapter.WebTabBarHolder webTabBarHolder, View view2, int i17, int i18, boolean z) {
                                        }

                                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarListener
                                        public final void d(int i17, int i18, int i19, boolean z) {
                                            DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                            ArrayList arrayList = dialogSetTabDetail3.j0;
                                            if (arrayList != null && i18 >= 0 && i18 < arrayList.size()) {
                                                dialogSetTabDetail3.k0 = i18;
                                                DialogSetTabDetail.B(dialogSetTabDetail3, 1, false);
                                            }
                                        }

                                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarListener
                                        public final void e(int i17, ArrayList arrayList) {
                                        }
                                    });
                                    int round2 = Math.round((dialogSetTabDetail2.T0 * MainApp.Z0) / 100.0f);
                                    WebTabBarAdapter webTabBarAdapter = dialogSetTabDetail2.o0;
                                    boolean z = dialogSetTabDetail2.P0;
                                    int i17 = dialogSetTabDetail2.Q0;
                                    boolean z2 = dialogSetTabDetail2.S0;
                                    webTabBarAdapter.p = true;
                                    webTabBarAdapter.q = z;
                                    webTabBarAdapter.r = i17;
                                    webTabBarAdapter.s = z2;
                                    webTabBarAdapter.t = round2;
                                    if (Build.VERSION.SDK_INT < 31) {
                                        dialogSetTabDetail2.m0.setOverScrollMode(2);
                                    }
                                    ?? linearLayoutManager = new LinearLayoutManager(0);
                                    dialogSetTabDetail2.m0.setLayoutManager(linearLayoutManager);
                                    WebTabBarAdapter webTabBarAdapter2 = dialogSetTabDetail2.o0;
                                    MyRecyclerView myRecyclerView3 = dialogSetTabDetail2.m0;
                                    webTabBarAdapter2.e = myRecyclerView3;
                                    webTabBarAdapter2.f = linearLayoutManager;
                                    myRecyclerView3.setAdapter(webTabBarAdapter2);
                                    dialogSetTabDetail2.E();
                                    ViewGroup.LayoutParams layoutParams16 = dialogSetTabDetail2.l0.getLayoutParams();
                                    dialogSetTabDetail2.q0 = layoutParams16;
                                    layoutParams16.height = Math.round((dialogSetTabDetail2.U0 * MainApp.a1) / 100.0f);
                                }
                                if (dialogSetTabDetail2.u0 != null) {
                                    dialogSetTabDetail2.v0 = new ColorAdapter();
                                    if (Build.VERSION.SDK_INT < 31) {
                                        dialogSetTabDetail2.u0.setOverScrollMode(2);
                                    }
                                    dialogSetTabDetail2.u0.setLayoutManager(new LinearLayoutManager(0));
                                    dialogSetTabDetail2.u0.setAdapter(dialogSetTabDetail2.v0);
                                }
                                dialogSetTabDetail2.t0.setText(R.string.sub_line);
                                dialogSetTabDetail2.y0.setText(R.string.add_icon);
                                dialogSetTabDetail2.C0.setText(R.string.close_icon);
                                dialogSetTabDetail2.D0.setText(R.string.size_width);
                                dialogSetTabDetail2.I0.setText(R.string.size_height);
                                a.t(new StringBuilder(), dialogSetTabDetail2.T0, "%", dialogSetTabDetail2.E0);
                                a.t(new StringBuilder(), dialogSetTabDetail2.U0, "%", dialogSetTabDetail2.J0);
                                dialogSetTabDetail2.s0.b(dialogSetTabDetail2.P0, false);
                                dialogSetTabDetail2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        MySwitchView mySwitchView3 = dialogSetTabDetail3.s0;
                                        if (mySwitchView3 != null) {
                                            boolean z3 = !dialogSetTabDetail3.P0;
                                            dialogSetTabDetail3.P0 = z3;
                                            mySwitchView3.b(z3, true);
                                            WebTabBarAdapter webTabBarAdapter3 = dialogSetTabDetail3.o0;
                                            if (webTabBarAdapter3 != null) {
                                                webTabBarAdapter3.N(dialogSetTabDetail3.Q0, dialogSetTabDetail3.P0);
                                            }
                                        }
                                    }
                                });
                                dialogSetTabDetail2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        MySwitchView mySwitchView3 = dialogSetTabDetail3.s0;
                                        if (mySwitchView3 != null) {
                                            boolean z3 = !dialogSetTabDetail3.P0;
                                            dialogSetTabDetail3.P0 = z3;
                                            mySwitchView3.b(z3, true);
                                            WebTabBarAdapter webTabBarAdapter3 = dialogSetTabDetail3.o0;
                                            if (webTabBarAdapter3 != null) {
                                                webTabBarAdapter3.N(dialogSetTabDetail3.Q0, dialogSetTabDetail3.P0);
                                            }
                                        }
                                    }
                                });
                                dialogSetTabDetail2.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z3;
                                        final DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        View view3 = dialogSetTabDetail3.x0;
                                        if (dialogSetTabDetail3.e0 != null && (myPopupMenu = dialogSetTabDetail3.a1) == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetTabDetail3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetTabDetail3.a1 = null;
                                            }
                                            if (view3 == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            final int length = MainConst.M.length;
                                            for (int i18 = 0; i18 < length; i18++) {
                                                int i19 = MainConst.M[i18];
                                                int i20 = MainConst.N[i19];
                                                if (dialogSetTabDetail3.R0 == i19) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i18, i20, z3));
                                            }
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTabDetail3.e0, dialogSetTabDetail3.g0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.25
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i21 = DialogSetTabDetail.e1;
                                                    DialogSetTabDetail dialogSetTabDetail4 = DialogSetTabDetail.this;
                                                    MyPopupMenu myPopupMenu3 = dialogSetTabDetail4.a1;
                                                    if (myPopupMenu3 != null) {
                                                        dialogSetTabDetail4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogSetTabDetail4.a1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i21) {
                                                    int i22;
                                                    DialogSetTabDetail dialogSetTabDetail4 = DialogSetTabDetail.this;
                                                    if (dialogSetTabDetail4.z0 == null || dialogSetTabDetail4.R0 == (i22 = MainConst.M[i21 % length])) {
                                                        return true;
                                                    }
                                                    dialogSetTabDetail4.R0 = i22;
                                                    dialogSetTabDetail4.E();
                                                    return true;
                                                }
                                            });
                                            dialogSetTabDetail3.a1 = myPopupMenu2;
                                            dialogSetTabDetail3.Y = myPopupMenu2;
                                        }
                                    }
                                });
                                dialogSetTabDetail2.B0.b(dialogSetTabDetail2.S0, false);
                                dialogSetTabDetail2.A0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        MySwitchView mySwitchView3 = dialogSetTabDetail3.B0;
                                        if (mySwitchView3 != null) {
                                            boolean z3 = !dialogSetTabDetail3.S0;
                                            dialogSetTabDetail3.S0 = z3;
                                            mySwitchView3.b(z3, true);
                                            WebTabBarAdapter webTabBarAdapter3 = dialogSetTabDetail3.o0;
                                            if (webTabBarAdapter3 != null) {
                                                webTabBarAdapter3.s = dialogSetTabDetail3.S0;
                                                if (webTabBarAdapter3.i != null) {
                                                    webTabBarAdapter3.g();
                                                }
                                            }
                                        }
                                    }
                                });
                                dialogSetTabDetail2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        MySwitchView mySwitchView3 = dialogSetTabDetail3.B0;
                                        if (mySwitchView3 != null) {
                                            boolean z3 = !dialogSetTabDetail3.S0;
                                            dialogSetTabDetail3.S0 = z3;
                                            mySwitchView3.b(z3, true);
                                            WebTabBarAdapter webTabBarAdapter3 = dialogSetTabDetail3.o0;
                                            if (webTabBarAdapter3 != null) {
                                                webTabBarAdapter3.s = dialogSetTabDetail3.S0;
                                                if (webTabBarAdapter3.i != null) {
                                                    webTabBarAdapter3.g();
                                                }
                                            }
                                        }
                                    }
                                });
                                dialogSetTabDetail2.F0.setSplitTrack(false);
                                dialogSetTabDetail2.F0.setMax(dialogSetTabDetail2.b0 - i15);
                                dialogSetTabDetail2.F0.setProgress(dialogSetTabDetail2.T0 - i15);
                                dialogSetTabDetail2.F0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.9
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i18, boolean z3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.C(dialogSetTabDetail3, progress + dialogSetTabDetail3.a0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.C(dialogSetTabDetail3, progress + dialogSetTabDetail3.a0);
                                        dialogSetTabDetail3.V0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.C(dialogSetTabDetail3, progress + dialogSetTabDetail3.a0);
                                        dialogSetTabDetail3.V0 = false;
                                    }
                                });
                                dialogSetTabDetail2.G0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        if (dialogSetTabDetail3.F0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSetTabDetail3.F0.setProgress(progress);
                                    }
                                });
                                dialogSetTabDetail2.H0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        SeekBar seekBar3 = dialogSetTabDetail3.F0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSetTabDetail3.F0.getMax()) {
                                            return;
                                        }
                                        dialogSetTabDetail3.F0.setProgress(progress);
                                    }
                                });
                                dialogSetTabDetail2.K0.setSplitTrack(false);
                                dialogSetTabDetail2.K0.setMax(dialogSetTabDetail2.d0 - i14);
                                dialogSetTabDetail2.K0.setProgress(dialogSetTabDetail2.U0 - i14);
                                dialogSetTabDetail2.K0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.12
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i18, boolean z3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.D(dialogSetTabDetail3, progress + dialogSetTabDetail3.c0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.D(dialogSetTabDetail3, progress + dialogSetTabDetail3.c0);
                                        dialogSetTabDetail3.X0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        DialogSetTabDetail.D(dialogSetTabDetail3, progress + dialogSetTabDetail3.c0);
                                        dialogSetTabDetail3.X0 = false;
                                    }
                                });
                                dialogSetTabDetail2.L0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        if (dialogSetTabDetail3.K0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSetTabDetail3.K0.setProgress(progress);
                                    }
                                });
                                dialogSetTabDetail2.M0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int progress;
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        SeekBar seekBar3 = dialogSetTabDetail3.K0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSetTabDetail3.K0.getMax()) {
                                            return;
                                        }
                                        dialogSetTabDetail3.K0.setProgress(progress);
                                    }
                                });
                                dialogSetTabDetail2.N0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.15
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i18 = DialogSetTabDetail.e1;
                                        DialogSetTabDetail.this.G(true);
                                    }
                                });
                                dialogSetTabDetail2.O0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.16
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        final DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        if (dialogSetTabDetail3.e0 == null || dialogSetTabDetail3.Z0 != null) {
                                            return;
                                        }
                                        dialogSetTabDetail3.F();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetTabDetail3.e0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.26
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                boolean z3;
                                                Handler handler3;
                                                int i18 = DialogSetTabDetail.e1;
                                                final DialogSetTabDetail dialogSetTabDetail4 = DialogSetTabDetail.this;
                                                dialogSetTabDetail4.F();
                                                if (dialogSetTabDetail4.J0 != null) {
                                                    boolean z4 = true;
                                                    if (!dialogSetTabDetail4.P0) {
                                                        dialogSetTabDetail4.P0 = true;
                                                        dialogSetTabDetail4.s0.b(true, false);
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    if (dialogSetTabDetail4.Q0 != 5) {
                                                        dialogSetTabDetail4.Q0 = 5;
                                                        ColorAdapter colorAdapter = dialogSetTabDetail4.v0;
                                                        if (colorAdapter != null) {
                                                            colorAdapter.g();
                                                        }
                                                        z3 = true;
                                                    }
                                                    if (dialogSetTabDetail4.R0 != 3) {
                                                        dialogSetTabDetail4.R0 = 3;
                                                        dialogSetTabDetail4.E();
                                                    }
                                                    if (!dialogSetTabDetail4.S0) {
                                                        dialogSetTabDetail4.S0 = true;
                                                        dialogSetTabDetail4.B0.b(true, false);
                                                        z3 = true;
                                                    }
                                                    if (dialogSetTabDetail4.T0 != 100) {
                                                        dialogSetTabDetail4.T0 = 100;
                                                        a.t(new StringBuilder(), dialogSetTabDetail4.T0, "%", dialogSetTabDetail4.E0);
                                                        dialogSetTabDetail4.F0.setProgress(dialogSetTabDetail4.T0 - dialogSetTabDetail4.a0);
                                                    } else {
                                                        z4 = z3;
                                                    }
                                                    if (dialogSetTabDetail4.U0 != 100) {
                                                        dialogSetTabDetail4.U0 = 100;
                                                        a.t(new StringBuilder(), dialogSetTabDetail4.U0, "%", dialogSetTabDetail4.J0);
                                                        dialogSetTabDetail4.K0.setProgress(dialogSetTabDetail4.U0 - dialogSetTabDetail4.c0);
                                                        dialogSetTabDetail4.q0.height = MainApp.a1;
                                                        dialogSetTabDetail4.l0.requestLayout();
                                                    }
                                                    dialogSetTabDetail4.G(false);
                                                    if (!z4 || (handler3 = dialogSetTabDetail4.i) == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.28
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetTabDetail dialogSetTabDetail5 = DialogSetTabDetail.this;
                                                            WebTabBarAdapter webTabBarAdapter3 = dialogSetTabDetail5.o0;
                                                            if (webTabBarAdapter3 == null) {
                                                                return;
                                                            }
                                                            boolean z5 = dialogSetTabDetail5.P0;
                                                            int i19 = dialogSetTabDetail5.Q0;
                                                            boolean z6 = dialogSetTabDetail5.S0;
                                                            int i20 = MainApp.Z0;
                                                            webTabBarAdapter3.p = true;
                                                            webTabBarAdapter3.q = z5;
                                                            webTabBarAdapter3.r = i19;
                                                            webTabBarAdapter3.s = z6;
                                                            webTabBarAdapter3.t = i20;
                                                            webTabBarAdapter3.g();
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                        dialogSetTabDetail3.Z0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.27
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i18 = DialogSetTabDetail.e1;
                                                DialogSetTabDetail.this.F();
                                            }
                                        });
                                    }
                                });
                                dialogSetTabDetail2.g(dialogSetTabDetail2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.17
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogSetTabDetail dialogSetTabDetail3 = DialogSetTabDetail.this;
                                        if (dialogSetTabDetail3.g0 == null) {
                                            return;
                                        }
                                        dialogSetTabDetail3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetTabDetail dialogSetTabDetail, final int i, boolean z) {
        ArrayList arrayList = dialogSetTabDetail.j0;
        if (arrayList != null && arrayList.size() != 0) {
            int size = dialogSetTabDetail.j0.size();
            if (dialogSetTabDetail.k0 >= size) {
                dialogSetTabDetail.k0 = size - 1;
            }
            if (dialogSetTabDetail.k0 < 0) {
                dialogSetTabDetail.k0 = 0;
            }
            final int i2 = dialogSetTabDetail.k0;
            dialogSetTabDetail.o0.L(dialogSetTabDetail.j0, i2, false, 0, 0, z);
            if (i != 0 && size > 2) {
                dialogSetTabDetail.m0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyRecyclerView myRecyclerView = DialogSetTabDetail.this.m0;
                        if (myRecyclerView == null) {
                            return;
                        }
                        int i3 = i;
                        int i4 = i2;
                        if (i3 == 1) {
                            myRecyclerView.l0(i4);
                        } else {
                            myRecyclerView.i0(i4);
                        }
                    }
                }, 100L);
            }
        }
    }

    public static void C(DialogSetTabDetail dialogSetTabDetail, int i) {
        Runnable runnable = dialogSetTabDetail.c1;
        AppCompatTextView appCompatTextView = dialogSetTabDetail.E0;
        if (appCompatTextView != null) {
            int i2 = dialogSetTabDetail.a0;
            if (i < i2 || i > (i2 = dialogSetTabDetail.b0)) {
                i = i2;
            }
            if (!dialogSetTabDetail.W0 && dialogSetTabDetail.T0 != i) {
                dialogSetTabDetail.W0 = true;
                dialogSetTabDetail.T0 = i;
                a.t(new StringBuilder(), dialogSetTabDetail.T0, "%", appCompatTextView);
                if (dialogSetTabDetail.o0 != null) {
                    int round = Math.round((dialogSetTabDetail.T0 * MainApp.Z0) / 100.0f);
                    WebTabBarAdapter webTabBarAdapter = dialogSetTabDetail.o0;
                    if (webTabBarAdapter.t != round) {
                        webTabBarAdapter.t = round;
                        webTabBarAdapter.g();
                    }
                }
                if (dialogSetTabDetail.V0) {
                    dialogSetTabDetail.V0 = false;
                    dialogSetTabDetail.W0 = false;
                } else {
                    dialogSetTabDetail.E0.removeCallbacks(runnable);
                    dialogSetTabDetail.E0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public static void D(DialogSetTabDetail dialogSetTabDetail, int i) {
        Runnable runnable = dialogSetTabDetail.d1;
        AppCompatTextView appCompatTextView = dialogSetTabDetail.J0;
        if (appCompatTextView != null) {
            int i2 = dialogSetTabDetail.c0;
            if (i < i2 || i > (i2 = dialogSetTabDetail.d0)) {
                i = i2;
            }
            if (!dialogSetTabDetail.Y0 && dialogSetTabDetail.U0 != i) {
                dialogSetTabDetail.Y0 = true;
                dialogSetTabDetail.U0 = i;
                a.t(new StringBuilder(), dialogSetTabDetail.U0, "%", appCompatTextView);
                if (dialogSetTabDetail.q0 != null) {
                    int round = Math.round((dialogSetTabDetail.T0 * MainApp.Z0) / 100.0f);
                    dialogSetTabDetail.q0.height = Math.round((dialogSetTabDetail.U0 * MainApp.a1) / 100.0f);
                    dialogSetTabDetail.l0.requestLayout();
                    WebTabBarAdapter webTabBarAdapter = dialogSetTabDetail.o0;
                    if (webTabBarAdapter.t != round) {
                        webTabBarAdapter.t = round;
                        webTabBarAdapter.g();
                    }
                }
                if (dialogSetTabDetail.X0) {
                    dialogSetTabDetail.X0 = false;
                    dialogSetTabDetail.Y0 = false;
                } else {
                    dialogSetTabDetail.J0.removeCallbacks(runnable);
                    dialogSetTabDetail.J0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public final void E() {
        if (this.l0 != null && this.m0 != null) {
            this.z0.setText(MainConst.N[this.R0]);
            if (this.R0 == 0) {
                if (this.n0 != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.m0.getLayoutParams();
                    if (marginLayoutParams != null) {
                        marginLayoutParams.setMargins(0, 0, 0, 0);
                    }
                    this.m0.requestLayout();
                    this.l0.removeView(this.n0);
                    this.n0 = null;
                    return;
                }
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.m0.getLayoutParams();
            if (marginLayoutParams2 != null) {
                if (this.R0 == 3) {
                    marginLayoutParams2.setMargins(0, 0, MainApp.g1, 0);
                } else {
                    marginLayoutParams2.setMargins(MainApp.g1, 0, 0, 0);
                }
            }
            this.m0.requestLayout();
            MyButtonImage myButtonImage = this.n0;
            if (myButtonImage != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) myButtonImage.getLayoutParams();
                if (layoutParams != null) {
                    if (this.R0 == 3) {
                        layoutParams.gravity = 5;
                    } else {
                        layoutParams.gravity = 3;
                    }
                }
                this.n0.requestLayout();
                return;
            }
            MyButtonImage myButtonImage2 = new MyButtonImage(this.f0);
            this.n0 = myButtonImage2;
            myButtonImage2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int s0 = MainUtil.s0(0, false);
            if (s0 == 0) {
                this.n0.setImageResource(R.drawable.outline_add_black_24);
            } else {
                this.n0.setImageResource(R.drawable.outline_add_dark_24);
            }
            this.n0.setAlpha(MyIconView.i(s0));
            this.n0.setBgPreColor(MainUtil.P1(s0, 0));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.g1, -1);
            if (this.R0 == 3) {
                layoutParams2.gravity = 5;
            } else {
                layoutParams2.gravity = 3;
            }
            this.l0.addView(this.n0, layoutParams2);
            this.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.19
                /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ArrayList arrayList;
                    int i;
                    final DialogSetTabDetail dialogSetTabDetail = DialogSetTabDetail.this;
                    if (dialogSetTabDetail.p0 || (arrayList = dialogSetTabDetail.j0) == null || (i = dialogSetTabDetail.k0 + 1) > arrayList.size()) {
                        return;
                    }
                    dialogSetTabDetail.p0 = true;
                    ?? obj = new Object();
                    obj.j = "file:///android_asset/shortcut.html";
                    obj.k = "Soul";
                    dialogSetTabDetail.j0.add(i, obj);
                    ArrayList arrayList2 = dialogSetTabDetail.j0;
                    int size = arrayList2.size();
                    int i2 = 0;
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj2 = arrayList2.get(i3);
                        i3++;
                        ((WebTabAdapter.WebTabItem) obj2).h = i2;
                        i2++;
                    }
                    dialogSetTabDetail.o0.v(dialogSetTabDetail.j0, dialogSetTabDetail.k0, i, true, new WebTabBarAdapter.TabBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.21
                        @Override // com.mycompany.app.web.WebTabBarAdapter.TabBarChangeListener
                        public final void a() {
                            MyRecyclerView myRecyclerView = DialogSetTabDetail.this.m0;
                            if (myRecyclerView == null) {
                                return;
                            }
                            myRecyclerView.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabDetail.21.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                                    DialogSetTabDetail.B(DialogSetTabDetail.this, 1, true);
                                    DialogSetTabDetail.this.p0 = false;
                                }
                            }, 300L);
                        }
                    });
                }
            });
        }
    }

    public final void F() {
        DialogSetMsg dialogSetMsg = this.Z0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.Z0 = null;
        }
    }

    public final void G(boolean z) {
        int round = Math.round(MainApp.Z0 / 2.0f);
        int round2 = Math.round(MainApp.a1 / 2.0f);
        int round3 = Math.round((this.T0 * MainApp.Z0) / 100.0f);
        int round4 = Math.round((this.U0 * MainApp.a1) / 100.0f);
        if (round3 >= round && round3 <= (round = MainApp.Z0 * 2)) {
            round = round3;
        }
        if (round4 >= round2 && round4 <= (round2 = MainApp.a1 * 2)) {
            round2 = round4;
        }
        boolean z2 = PrefWeb.y;
        boolean z3 = this.P0;
        if (z2 != z3 || PrefWeb.z != this.Q0) {
            PrefWeb.y = z3;
            PrefWeb.z = this.Q0;
            PrefWeb r = PrefWeb.r(this.f0, false);
            if (z) {
                r.l("mTabAccent", PrefWeb.y);
                r.n(PrefWeb.z, "mTabColor");
            } else {
                r.q("mTabAccent");
                r.q("mTabColor");
            }
            r.a();
        }
        int i = PrefPdf.C;
        int i2 = this.R0;
        if (i != i2 || PrefPdf.D != this.S0 || PrefPdf.E != round || PrefPdf.F != round2) {
            PrefPdf.C = i2;
            PrefPdf.D = this.S0;
            PrefPdf.E = round;
            PrefPdf.F = round2;
            PrefPdf r2 = PrefPdf.r(this.f0, false);
            if (z) {
                r2.n(PrefPdf.C, "mTabAdd");
                r2.l("mTabClose", PrefPdf.D);
                r2.n(PrefPdf.E, "mTabWidth");
                r2.n(PrefPdf.F, "mTabHeight");
            } else {
                r2.q("mTabAdd");
                r2.q("mTabClose");
                r2.q("mTabWidth");
                r2.q("mTabHeight");
            }
            r2.a();
        }
        if (z) {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.f0 == null) {
            return;
        }
        F();
        MyPopupMenu myPopupMenu = this.a1;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.a1 = null;
        }
        GlideRequests glideRequests = this.b1;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.i0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.b1 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundFrame myRoundFrame = this.h0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.h0 = null;
        }
        MyRoundImage myRoundImage2 = this.i0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.i0 = null;
        }
        MyRecyclerView myRecyclerView = this.m0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.m0 = null;
        }
        MyButtonImage myButtonImage = this.n0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.n0 = null;
        }
        WebTabBarAdapter webTabBarAdapter = this.o0;
        if (webTabBarAdapter != null) {
            webTabBarAdapter.H();
            this.o0 = null;
        }
        MyLineFrame myLineFrame = this.r0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.r0 = null;
        }
        MySwitchView mySwitchView = this.s0;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.s0 = null;
        }
        MyRecyclerView myRecyclerView2 = this.u0;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.u0 = null;
        }
        MyLineRelative myLineRelative = this.w0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.w0 = null;
        }
        MyLineFrame myLineFrame2 = this.A0;
        if (myLineFrame2 != null) {
            myLineFrame2.g();
            this.A0 = null;
        }
        MySwitchView mySwitchView2 = this.B0;
        if (mySwitchView2 != null) {
            mySwitchView2.a();
            this.B0 = null;
        }
        MyButtonImage myButtonImage2 = this.G0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G0 = null;
        }
        MyButtonImage myButtonImage3 = this.H0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.H0 = null;
        }
        MyButtonImage myButtonImage4 = this.L0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.L0 = null;
        }
        MyButtonImage myButtonImage5 = this.M0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.M0 = null;
        }
        MyLineText myLineText = this.O0;
        if (myLineText != null) {
            myLineText.u();
            this.O0 = null;
        }
        this.e0 = null;
        this.f0 = null;
        this.j0 = null;
        this.l0 = null;
        this.q0 = null;
        this.t0 = null;
        this.v0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.C0 = null;
        this.D0 = null;
        this.E0 = null;
        this.F0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.N0 = null;
        super.dismiss();
    }
}
