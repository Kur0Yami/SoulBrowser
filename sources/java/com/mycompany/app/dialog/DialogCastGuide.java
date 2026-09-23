package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyArrowView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCircleView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebTabBarAdapter;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogCastGuide extends MyDialogBottom {
    public Context a0;
    public final int b0;
    public MyDialogLinear c0;
    public ImageView d0;
    public AppCompatTextView e0;
    public AppCompatTextView f0;
    public FrameLayout g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public MyRecyclerView k0;
    public MenuIconAdapter l0;

    /* renamed from: com.mycompany.app.dialog.DialogCastGuide$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogCastGuide$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogCastGuide$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogCastGuide$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements MenuIconAdapter.MenuListener {
        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
        }

        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
        public final void b(View view, int i, int i2) {
        }
    }

    public DialogCastGuide(MainActivity mainActivity, int i) {
        super(mainActivity);
        this.a0 = getContext();
        this.b0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCastGuide.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogCastGuide dialogCastGuide = DialogCastGuide.this;
                Context context = dialogCastGuide.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i2 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView i3 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i3.setEllipsize(TextUtils.TruncateAt.END);
                    i3.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i3, R.string.tip, -1, -2);
                    d.gravity = 8388627;
                    d.setMarginStart(MainApp.i1);
                    d.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(i3, d);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(m, layoutParams2);
                    int G = (int) MainUtil.G(context, 24.0f);
                    int G2 = (int) MainUtil.G(context, 32.0f);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i4 = MainApp.E1;
                    linearLayout.setPadding(i4, G, i4, G2);
                    linearLayout.setOrientation(1);
                    m.addView(linearLayout, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView.setTextSize(1, 14.0f);
                    linearLayout.addView(appCompatTextView, -1, -2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams3.topMargin = MainApp.E1;
                    linearLayout.addView(frameLayout, layoutParams3);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView2.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams4.topMargin = G2;
                    linearLayout.addView(appCompatTextView2, layoutParams4);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView3.setTextSize(1, 14.0f);
                    appCompatTextView3.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams5.topMargin = G2;
                    linearLayout.addView(appCompatTextView3, layoutParams5);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.ok);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogCastGuide.c0 = q;
                    dialogCastGuide.d0 = imageView;
                    dialogCastGuide.e0 = i3;
                    dialogCastGuide.f0 = appCompatTextView;
                    dialogCastGuide.g0 = frameLayout;
                    dialogCastGuide.h0 = appCompatTextView2;
                    dialogCastGuide.i0 = appCompatTextView3;
                    dialogCastGuide.j0 = myLineText;
                    Handler handler2 = dialogCastGuide.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCastGuide.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r24v1, types: [java.lang.Object, com.mycompany.app.main.MenuIconAdapter$MenuListener] */
                        /* JADX WARN: Type inference failed for: r4v24, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
                        /* JADX WARN: Type inference failed for: r4v62, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v63, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r4v64, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r6v33, types: [android.widget.LinearLayout, com.mycompany.app.view.MyBarView, android.view.View] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i5;
                            int i6;
                            int i7;
                            int i8;
                            int i9;
                            int i10;
                            int i11;
                            MyIconView myIconView;
                            final DialogCastGuide dialogCastGuide2 = DialogCastGuide.this;
                            if (dialogCastGuide2.c0 != null && dialogCastGuide2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogCastGuide2.d0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                    dialogCastGuide2.e0.setTextColor(-328966);
                                    dialogCastGuide2.f0.setTextColor(-328966);
                                    dialogCastGuide2.h0.setTextColor(-328966);
                                    dialogCastGuide2.i0.setTextColor(-328966);
                                    dialogCastGuide2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogCastGuide2.j0.setTextColor(-328966);
                                } else {
                                    dialogCastGuide2.d0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                    dialogCastGuide2.e0.setTextColor(-16777216);
                                    dialogCastGuide2.f0.setTextColor(-16777216);
                                    dialogCastGuide2.h0.setTextColor(-16777216);
                                    dialogCastGuide2.i0.setTextColor(-16777216);
                                    dialogCastGuide2.j0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogCastGuide2.j0.setTextColor(-14784824);
                                }
                                int i12 = dialogCastGuide2.b0;
                                int i13 = -460552;
                                if (i12 == 0) {
                                    StringBuilder sb = new StringBuilder("2. ");
                                    sb.append(dialogCastGuide2.a0.getString(R.string.local_cast_guide_2));
                                    StringBuilder sb2 = new StringBuilder();
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.local_cast_guide_3, sb2, "\n");
                                    sb2.append(dialogCastGuide2.a0.getString(R.string.local_cast_guide_4));
                                    dialogCastGuide2.f0.setText("1. " + dialogCastGuide2.a0.getString(R.string.local_cast_guide_1));
                                    dialogCastGuide2.h0.setText(sb.toString());
                                    dialogCastGuide2.i0.setText(sb2.toString());
                                    dialogCastGuide2.i0.setVisibility(0);
                                    FrameLayout frameLayout2 = dialogCastGuide2.g0;
                                    if (frameLayout2 != null) {
                                        int[] iArr = {21, 22, 23, 24, 25};
                                        if (MainApp.K1) {
                                            i7 = R.drawable.outline_live_tv_dark_24;
                                            i8 = 1;
                                        } else {
                                            i7 = R.drawable.outline_live_tv_black_24;
                                            i8 = 0;
                                        }
                                        ?? linearLayout2 = new LinearLayout(dialogCastGuide2.a0);
                                        linearLayout2.a(dialogCastGuide2.a0, iArr, null, null, 0, false, 0, 0, false, i8, 0, 0, 0);
                                        int i14 = i8;
                                        if (MainApp.K1) {
                                            i13 = -16777216;
                                        }
                                        linearLayout2.setBackgroundColor(i13);
                                        int[] iArr2 = linearLayout2.g;
                                        if (iArr2 != null) {
                                            i9 = iArr2.length;
                                        } else {
                                            i9 = 0;
                                        }
                                        if (i9 != 0) {
                                            MyIconView[] myIconViewArr = linearLayout2.j;
                                            if (myIconViewArr != null) {
                                                i11 = myIconViewArr.length;
                                            } else {
                                                i11 = 0;
                                            }
                                            if (i9 == i11) {
                                                int i15 = 0;
                                                while (true) {
                                                    if (i15 >= i9) {
                                                        break;
                                                    }
                                                    if (24 == linearLayout2.g[i15] && (myIconView = linearLayout2.j[i15]) != null) {
                                                        myIconView.setImageResource(i7);
                                                        linearLayout2.e(myIconView, 24, i14);
                                                        break;
                                                    }
                                                    i15++;
                                                }
                                            }
                                        }
                                        View view = new View(dialogCastGuide2.a0);
                                        View view2 = new View(dialogCastGuide2.a0);
                                        View view3 = new View(dialogCastGuide2.a0);
                                        View view4 = new View(dialogCastGuide2.a0);
                                        MyButtonImage myButtonImage = new MyButtonImage(dialogCastGuide2.a0);
                                        myButtonImage.l(MainApp.G1 * 5, false);
                                        myButtonImage.m(-65536, MainApp.G1 / 2);
                                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, MainApp.Y0);
                                        layoutParams6.weight = 1.0f;
                                        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, MainApp.Y0);
                                        layoutParams7.weight = 1.0f;
                                        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, MainApp.Y0);
                                        layoutParams8.weight = 1.0f;
                                        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, MainApp.Y0);
                                        layoutParams9.weight = 1.0f;
                                        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, MainApp.Y0);
                                        layoutParams10.weight = 1.0f;
                                        LinearLayout linearLayout3 = new LinearLayout(dialogCastGuide2.a0);
                                        linearLayout3.setOrientation(0);
                                        linearLayout3.addView(view, layoutParams6);
                                        linearLayout3.addView(view2, layoutParams7);
                                        linearLayout3.addView(view3, layoutParams8);
                                        linearLayout3.addView(myButtonImage, layoutParams9);
                                        linearLayout3.addView(view4, layoutParams10);
                                        FrameLayout frameLayout3 = new FrameLayout(dialogCastGuide2.a0);
                                        if (MainApp.K1) {
                                            i10 = -16777216;
                                        } else {
                                            i10 = -1;
                                        }
                                        frameLayout3.setBackgroundColor(i10);
                                        frameLayout3.addView((View) linearLayout2, -1, MainApp.Y0);
                                        frameLayout3.addView(linearLayout3, -1, MainApp.Y0);
                                        frameLayout2.addView(frameLayout3, -1, -2);
                                        frameLayout2.setVisibility(0);
                                    }
                                } else if (i12 == 1) {
                                    StringBuilder sb3 = new StringBuilder("1. ");
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.subtitle_info_1, sb3, "\n");
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.subtitle_info_2, sb3, "\n");
                                    sb3.append(dialogCastGuide2.a0.getString(R.string.subtitle_info_3));
                                    StringBuilder sb4 = new StringBuilder("2. ");
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.subtitle_info_4, sb4, "\n");
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.subtitle_info_5, sb4, "\n");
                                    sb4.append(dialogCastGuide2.a0.getString(R.string.subtitle_info_6));
                                    dialogCastGuide2.f0.setText(sb3.toString());
                                    dialogCastGuide2.h0.setText(sb4.toString());
                                    dialogCastGuide2.i0.setText(R.string.subtitle_info_7);
                                    dialogCastGuide2.i0.setVisibility(0);
                                } else if (i12 == 2) {
                                    StringBuilder sb5 = new StringBuilder("1. ");
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.video_down_guide_0, sb5, "\n");
                                    sb5.append(dialogCastGuide2.a0.getString(R.string.video_down_guide_1));
                                    StringBuilder sb6 = new StringBuilder();
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.cast_info_6, sb6, "\n");
                                    sb6.append(dialogCastGuide2.a0.getString(R.string.cast_info_7));
                                    dialogCastGuide2.f0.setText(sb5.toString());
                                    dialogCastGuide2.h0.setText(sb6.toString());
                                    FrameLayout frameLayout4 = dialogCastGuide2.g0;
                                    if (frameLayout4 != null) {
                                        MyButtonImage myButtonImage2 = new MyButtonImage(dialogCastGuide2.a0);
                                        MyButtonImage myButtonImage3 = new MyButtonImage(dialogCastGuide2.a0);
                                        MyButtonImage myButtonImage4 = new MyButtonImage(dialogCastGuide2.a0);
                                        if (MainApp.K1) {
                                            myButtonImage2.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                            myButtonImage3.setImageResource(R.drawable.outline_fullscreen_dark_24);
                                            myButtonImage4.setImageResource(R.drawable.outline_download_dark_24);
                                            myButtonImage2.k(-11513776, -12632257);
                                            myButtonImage3.k(-11513776, -12632257);
                                            myButtonImage4.k(-11513776, -12632257);
                                        } else {
                                            myButtonImage2.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                            myButtonImage3.setImageResource(R.drawable.outline_fullscreen_black_24);
                                            myButtonImage4.setImageResource(R.drawable.outline_download_black_24);
                                            myButtonImage2.k(-460552, -2039584);
                                            myButtonImage3.k(-460552, -2039584);
                                            myButtonImage4.k(-460552, -2039584);
                                        }
                                        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                                        myButtonImage2.setScaleType(scaleType);
                                        myButtonImage3.setScaleType(scaleType);
                                        myButtonImage4.setScaleType(scaleType);
                                        myButtonImage2.l(MainApp.j1, true);
                                        myButtonImage3.l(MainApp.j1, true);
                                        myButtonImage4.l(MainApp.j1, true);
                                        myButtonImage2.setOnClickListener(new Object());
                                        myButtonImage3.setOnClickListener(new Object());
                                        myButtonImage4.setOnClickListener(new Object());
                                        MyButtonImage myButtonImage5 = new MyButtonImage(dialogCastGuide2.a0);
                                        myButtonImage5.l(MainApp.G1 * 5, false);
                                        myButtonImage5.m(-65536, MainApp.G1 / 2);
                                        int i16 = MainApp.g1;
                                        ViewGroup.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i16, i16);
                                        int i17 = MainApp.g1;
                                        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i17, i17);
                                        int i18 = MainApp.g1;
                                        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i18, i18);
                                        layoutParams12.setMarginStart(MainApp.g1 + MainApp.E1);
                                        layoutParams13.setMarginStart((MainApp.g1 + MainApp.E1) * 2);
                                        FrameLayout frameLayout5 = new FrameLayout(dialogCastGuide2.a0);
                                        if (MainApp.K1) {
                                            i6 = -16777216;
                                        } else {
                                            i6 = -1;
                                        }
                                        frameLayout5.setBackgroundColor(i6);
                                        int i19 = MainApp.E1;
                                        frameLayout5.setPadding(i19, 0, i19, 0);
                                        frameLayout5.addView(myButtonImage2, layoutParams11);
                                        frameLayout5.addView(myButtonImage3, layoutParams12);
                                        frameLayout5.addView(myButtonImage4, layoutParams13);
                                        frameLayout5.addView(myButtonImage5, layoutParams12);
                                        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, -2);
                                        layoutParams14.gravity = 1;
                                        frameLayout4.addView(frameLayout5, layoutParams14);
                                        frameLayout4.setVisibility(0);
                                    }
                                } else if (i12 == 3) {
                                    String format = String.format(Locale.US, dialogCastGuide2.a0.getString(R.string.image_cast_guide_2), dialogCastGuide2.a0.getString(R.string.only_image), dialogCastGuide2.a0.getString(R.string.downall_image));
                                    StringBuilder sb7 = new StringBuilder("2. ");
                                    sb7.append(dialogCastGuide2.a0.getString(R.string.image_cast_guide_3));
                                    dialogCastGuide2.f0.setText("1. " + dialogCastGuide2.a0.getString(R.string.image_cast_guide_1) + "\n" + format);
                                    dialogCastGuide2.h0.setText(sb7.toString());
                                    FrameLayout frameLayout6 = dialogCastGuide2.g0;
                                    if (frameLayout6 != null) {
                                        MyRecyclerView myRecyclerView = new MyRecyclerView(dialogCastGuide2.a0);
                                        dialogCastGuide2.k0 = myRecyclerView;
                                        dialogCastGuide2.l0 = new MenuIconAdapter(myRecyclerView, null, 0, false, new Object());
                                        dialogCastGuide2.k0.setLayoutManager(new GridLayoutManager(5));
                                        dialogCastGuide2.k0.setAdapter(dialogCastGuide2.l0);
                                        Handler handler3 = dialogCastGuide2.i;
                                        if (handler3 != null) {
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCastGuide.9
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MenuIconAdapter menuIconAdapter = DialogCastGuide.this.l0;
                                                    if (menuIconAdapter == null) {
                                                        return;
                                                    }
                                                    menuIconAdapter.H(new int[]{3, 4, 5, 7, 8}, true);
                                                }
                                            });
                                            View view5 = new View(dialogCastGuide2.a0);
                                            View view6 = new View(dialogCastGuide2.a0);
                                            View view7 = new View(dialogCastGuide2.a0);
                                            int i20 = MainApp.g1;
                                            int i21 = (i20 / 2) - MainApp.F1;
                                            MyButtonImage myButtonImage6 = new MyButtonImage(dialogCastGuide2.a0);
                                            float f = i21;
                                            myButtonImage6.l(f, false);
                                            myButtonImage6.m(-65536, MainApp.G1 / 2);
                                            MyButtonImage myButtonImage7 = new MyButtonImage(dialogCastGuide2.a0);
                                            myButtonImage7.l(f, false);
                                            myButtonImage7.m(-65536, MainApp.G1 / 2);
                                            LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(0, i20);
                                            layoutParams15.weight = 1.0f;
                                            LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(0, i20);
                                            layoutParams16.weight = 1.0f;
                                            LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(0, i20);
                                            layoutParams17.weight = 1.0f;
                                            LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(0, i20);
                                            layoutParams18.weight = 1.0f;
                                            LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(0, i20);
                                            layoutParams19.weight = 1.0f;
                                            LinearLayout linearLayout4 = new LinearLayout(dialogCastGuide2.a0);
                                            linearLayout4.setOrientation(0);
                                            linearLayout4.addView(view5, layoutParams15);
                                            linearLayout4.addView(view6, layoutParams16);
                                            linearLayout4.addView(view7, layoutParams17);
                                            linearLayout4.addView(myButtonImage6, layoutParams18);
                                            linearLayout4.addView(myButtonImage7, layoutParams19);
                                            FrameLayout frameLayout7 = new FrameLayout(dialogCastGuide2.a0);
                                            if (MainApp.K1) {
                                                i5 = -16777216;
                                            } else {
                                                i5 = -1;
                                            }
                                            frameLayout7.setBackgroundColor(i5);
                                            frameLayout7.addView(dialogCastGuide2.k0, -1, -2);
                                            frameLayout7.addView(linearLayout4, -1, -2);
                                            frameLayout6.addView(frameLayout7, -1, -2);
                                            frameLayout6.setVisibility(0);
                                        }
                                    }
                                } else {
                                    int i22 = -1;
                                    if (i12 == 4) {
                                        StringBuilder sb8 = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.quick_guide_1, sb8, "\n\n");
                                        sb8.append(dialogCastGuide2.a0.getString(R.string.quick_guide_2));
                                        dialogCastGuide2.f0.setText(sb8.toString());
                                        dialogCastGuide2.h0.setVisibility(8);
                                        FrameLayout frameLayout8 = dialogCastGuide2.g0;
                                        if (frameLayout8 != null) {
                                            FrameLayout frameLayout9 = new FrameLayout(dialogCastGuide2.a0);
                                            if (MainApp.K1) {
                                                i22 = -16777216;
                                            }
                                            frameLayout9.setBackgroundColor(i22);
                                            int i23 = MainApp.E1;
                                            frameLayout9.setPadding(i23, 0, i23, i23);
                                            dialogCastGuide2.C(frameLayout9, 0, "Google", R.drawable.baseline_search_google);
                                            dialogCastGuide2.C(frameLayout9, 1, "YouTube", R.drawable.baseline_search_youtube);
                                            dialogCastGuide2.C(frameLayout9, 2, "Facebook", R.drawable.ic_facebook);
                                            dialogCastGuide2.C(frameLayout9, 3, "Instagram", R.drawable.ic_instagram);
                                            MyButtonImage myButtonImage8 = new MyButtonImage(dialogCastGuide2.a0);
                                            myButtonImage8.l(dialogCastGuide2.B(20), false);
                                            myButtonImage8.m(-65536, MainApp.G1 / 2);
                                            int B = dialogCastGuide2.B(48);
                                            FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(B, B);
                                            layoutParams20.topMargin = dialogCastGuide2.B(40);
                                            layoutParams20.setMarginStart(dialogCastGuide2.B(152));
                                            frameLayout9.addView(myButtonImage8, layoutParams20);
                                            MyArrowView myArrowView = new MyArrowView(dialogCastGuide2.a0);
                                            myArrowView.a();
                                            FrameLayout.LayoutParams layoutParams21 = new FrameLayout.LayoutParams(dialogCastGuide2.B(80), dialogCastGuide2.B(32));
                                            layoutParams21.topMargin = dialogCastGuide2.B(12);
                                            layoutParams21.gravity = 1;
                                            frameLayout9.addView(myArrowView, layoutParams21);
                                            FrameLayout.LayoutParams layoutParams22 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams22.gravity = 1;
                                            frameLayout8.addView(frameLayout9, layoutParams22);
                                            LinearLayout.LayoutParams layoutParams23 = (LinearLayout.LayoutParams) frameLayout8.getLayoutParams();
                                            if (layoutParams23 != null) {
                                                layoutParams23.topMargin = dialogCastGuide2.B(32);
                                            }
                                            frameLayout8.setVisibility(0);
                                        }
                                    } else if (i12 == 5) {
                                        StringBuilder sb9 = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogCastGuide2.a0, R.string.tab_guide_1, sb9, "\n\n");
                                        sb9.append(dialogCastGuide2.a0.getString(R.string.tab_guide_2));
                                        dialogCastGuide2.f0.setText(sb9.toString());
                                        dialogCastGuide2.h0.setVisibility(8);
                                        FrameLayout frameLayout10 = dialogCastGuide2.g0;
                                        if (frameLayout10 != null) {
                                            ArrayList arrayList = new ArrayList();
                                            for (int i24 = 0; i24 < 2; i24++) {
                                                ?? obj = new Object();
                                                obj.h = i24;
                                                obj.j = "file:///android_asset/shortcut.html";
                                                obj.k = "Soul";
                                                arrayList.add(obj);
                                            }
                                            MyRecyclerView myRecyclerView2 = new MyRecyclerView(dialogCastGuide2.a0);
                                            WebTabBarAdapter webTabBarAdapter = new WebTabBarAdapter(dialogCastGuide2.a0, arrayList, -1, false, 0, 0, null);
                                            int i25 = MainApp.Z0;
                                            webTabBarAdapter.p = true;
                                            webTabBarAdapter.q = true;
                                            webTabBarAdapter.r = 5;
                                            webTabBarAdapter.s = true;
                                            webTabBarAdapter.t = i25;
                                            myRecyclerView2.setLayoutManager(new LinearLayoutManager(0));
                                            myRecyclerView2.setAdapter(webTabBarAdapter);
                                            FrameLayout frameLayout11 = new FrameLayout(dialogCastGuide2.a0);
                                            if (MainApp.K1) {
                                                i22 = -16777216;
                                            }
                                            frameLayout11.setBackgroundColor(i22);
                                            int i26 = MainApp.E1;
                                            frameLayout11.setPadding(i26, 0, i26, MainApp.F1);
                                            FrameLayout.LayoutParams layoutParams24 = new FrameLayout.LayoutParams(-2, MainApp.a1);
                                            int i27 = MainApp.G1 * 10;
                                            layoutParams24.topMargin = i27;
                                            frameLayout11.addView(myRecyclerView2, layoutParams24);
                                            MyButtonImage myButtonImage9 = new MyButtonImage(dialogCastGuide2.a0);
                                            myButtonImage9.l(MainApp.a1 / 2, false);
                                            myButtonImage9.m(-65536, MainApp.G1 / 2);
                                            int i28 = MainApp.a1;
                                            FrameLayout.LayoutParams layoutParams25 = new FrameLayout.LayoutParams(i28, i28);
                                            layoutParams25.topMargin = i27;
                                            layoutParams25.setMarginStart(dialogCastGuide2.B(38) + MainApp.Z0);
                                            frameLayout11.addView(myButtonImage9, layoutParams25);
                                            MyArrowView myArrowView2 = new MyArrowView(dialogCastGuide2.a0);
                                            myArrowView2.a();
                                            FrameLayout.LayoutParams layoutParams26 = new FrameLayout.LayoutParams(dialogCastGuide2.B(118), i27 - MainApp.F1);
                                            layoutParams26.topMargin = MainApp.F1;
                                            layoutParams26.gravity = 1;
                                            frameLayout11.addView(myArrowView2, layoutParams26);
                                            FrameLayout.LayoutParams layoutParams27 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams27.gravity = 1;
                                            frameLayout10.addView(frameLayout11, layoutParams27);
                                            LinearLayout.LayoutParams layoutParams28 = (LinearLayout.LayoutParams) frameLayout10.getLayoutParams();
                                            if (layoutParams28 != null) {
                                                int i29 = MainApp.E1;
                                                layoutParams28.topMargin = i29 + i29;
                                            }
                                            frameLayout10.setVisibility(0);
                                        }
                                    }
                                }
                                dialogCastGuide2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogCastGuide.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view8) {
                                        DialogCastGuide.this.dismiss();
                                    }
                                });
                                dialogCastGuide2.g(dialogCastGuide2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogCastGuide.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view8) {
                                        DialogCastGuide dialogCastGuide3 = DialogCastGuide.this;
                                        if (dialogCastGuide3.c0 == null) {
                                            return;
                                        }
                                        dialogCastGuide3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final int B(int i) {
        return Math.round(MainUtil.G(this.a0, i));
    }

    public final void C(FrameLayout frameLayout, int i, String str, int i2) {
        int i3;
        FrameLayout frameLayout2 = new FrameLayout(this.a0);
        MyCircleView myCircleView = new MyCircleView(this.a0);
        MyRoundImage myRoundImage = new MyRoundImage(this.a0);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this.a0, null);
        if (MainApp.K1) {
            appCompatTextView.setTextColor(-328966);
        } else {
            appCompatTextView.setTextColor(-16777216);
        }
        if (MainApp.K1) {
            i3 = -14606047;
        } else {
            i3 = -592138;
        }
        myCircleView.setColor(i3);
        myRoundImage.setImageResource(i2);
        appCompatTextView.setTextSize(1, 12.0f);
        appCompatTextView.setGravity(1);
        appCompatTextView.setText(str);
        int B = B(40);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(B, B);
        layoutParams.gravity = 1;
        frameLayout2.addView(myCircleView, layoutParams);
        int B2 = B(24);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(B2, B2);
        layoutParams2.topMargin = B(8);
        layoutParams2.gravity = 1;
        frameLayout2.addView(myRoundImage, layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = B(44);
        frameLayout2.addView(appCompatTextView, layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(B(64), -2);
        layoutParams4.topMargin = B(44);
        layoutParams4.setMarginStart(B(72) * i);
        frameLayout.addView(frameLayout2, layoutParams4);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRecyclerView myRecyclerView = this.k0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k0 = null;
        }
        MenuIconAdapter menuIconAdapter = this.l0;
        if (menuIconAdapter != null) {
            menuIconAdapter.D();
            this.l0 = null;
        }
        this.a0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        super.dismiss();
    }
}
