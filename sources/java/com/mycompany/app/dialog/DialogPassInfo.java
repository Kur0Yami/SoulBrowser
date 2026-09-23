package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookPass;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyRoundImage;

/* loaded from: classes3.dex */
public class DialogPassInfo extends MyDialogBottom {
    public MyLineText A0;
    public MainListLoader B0;
    public boolean C0;
    public PassInfoListener D0;
    public Bitmap E0;
    public String F0;
    public String G0;
    public final float a0;
    public final float b0;
    public Context c0;
    public PassInfoListener d0;
    public final long e0;
    public String f0;
    public String g0;
    public String h0;
    public String i0;
    public MyDialogLinear j0;
    public MyLineRelative k0;
    public MyRoundImage l0;
    public MyButtonImage m0;
    public AppCompatTextView n0;
    public MyLineText o0;
    public AppCompatTextView p0;
    public AppCompatTextView q0;
    public MyButtonImage r0;
    public AppCompatTextView s0;
    public MyEditText t0;
    public MyButtonImage u0;
    public AppCompatTextView v0;
    public MyEditText w0;
    public MyLineView x0;
    public MyButtonCheck y0;
    public MyButtonImage z0;

    /* loaded from: classes3.dex */
    public interface PassInfoListener {
        void a(String str, String str2);

        void b(String str);

        Bitmap getIcon();
    }

    public DialogPassInfo(Activity activity, long j, String str, String str2, String str3, String str4, PassInfoListener passInfoListener) {
        super(activity);
        Context context = getContext();
        this.c0 = context;
        this.d0 = passInfoListener;
        this.e0 = j;
        this.f0 = str;
        this.g0 = str2;
        this.h0 = str3;
        this.i0 = str4;
        float G = MainUtil.G(context, 2.0f);
        this.a0 = G;
        this.b0 = G / 2.0f;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogPassInfo.B(DialogPassInfo.this);
            }
        });
    }

    public static void B(DialogPassInfo dialogPassInfo) {
        Context context = dialogPassInfo.c0;
        if (context != null) {
            int i = R.id.pass_icon_edit;
            int i2 = R.id.pass_host_copy;
            int i3 = R.id.pass_host_name;
            int i4 = R.id.pass_user_copy;
            int i5 = R.id.pass_user_name;
            int i6 = R.id.pass_pass_frame;
            int i7 = R.id.pass_pass_name;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineRelative myLineRelative = new MyLineRelative(context);
            myLineRelative.b(MainApp.E1);
            myLineRelative.setVisibility(8);
            q.addView(myLineRelative, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i8 = MainApp.f1;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i8, i8);
            layoutParams.addRule(15);
            layoutParams.setMarginStart(MainApp.E1);
            myLineRelative.addView(myRoundImage, layoutParams);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setId(i);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            myButtonImage.setVisibility(8);
            int i9 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i9, i9);
            layoutParams2.addRule(21);
            layoutParams2.addRule(15);
            layoutParams2.setMarginEnd(MainApp.F1);
            myLineRelative.addView(myButtonImage, layoutParams2);
            AppCompatTextView i10 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            i10.setEllipsize(TextUtils.TruncateAt.END);
            i10.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(16, i);
            layoutParams3.addRule(15);
            layoutParams3.setMarginStart(G);
            myLineRelative.addView(i10, layoutParams3);
            MyLineText myLineText = new MyLineText(context);
            int i11 = MainApp.E1;
            myLineText.setPadding(i11, i11, i11, i11);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.password_confirm);
            myLineText.q(MainApp.E1);
            myLineText.setVisibility(8);
            q.addView(myLineText, -1, -2);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams4.weight = 1.0f;
            q.addView(m, layoutParams4);
            LinearLayout linearLayout = new LinearLayout(context);
            int i12 = MainApp.E1;
            int i13 = MainApp.F1;
            linearLayout.setPaddingRelative(i12, i13, i13, i13);
            linearLayout.setOrientation(1);
            m.addView(linearLayout, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            int i14 = MainApp.F1;
            relativeLayout.setPadding(0, i14, 0, i14);
            linearLayout.addView(relativeLayout, -1, -2);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setId(i2);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(8);
            int i15 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i15, i15);
            layoutParams5.addRule(21);
            layoutParams5.addRule(15);
            relativeLayout.addView(myButtonImage2, layoutParams5);
            AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i3, 1, 14.0f);
            k.setText(R.string.site);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams6.addRule(16, i2);
            relativeLayout.addView(k, layoutParams6);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(16);
            appCompatTextView.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams7.addRule(3, i3);
            layoutParams7.addRule(16, i2);
            relativeLayout.addView(appCompatTextView, layoutParams7);
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            int i16 = MainApp.F1;
            relativeLayout2.setPadding(0, i16, 0, i16);
            linearLayout.addView(relativeLayout2, -1, -2);
            MyButtonImage myButtonImage3 = new MyButtonImage(context);
            myButtonImage3.setId(i4);
            myButtonImage3.setScaleType(scaleType);
            myButtonImage3.setVisibility(8);
            int i17 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i17, i17);
            layoutParams8.addRule(21);
            layoutParams8.addRule(15);
            relativeLayout2.addView(myButtonImage3, layoutParams8);
            AppCompatTextView k2 = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i5, 1, 14.0f);
            k2.setText(R.string.name);
            RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams9.addRule(16, i4);
            relativeLayout2.addView(k2, layoutParams9);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            int i18 = Build.VERSION.SDK_INT;
            if (i18 >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams10.addRule(3, i5);
            layoutParams10.addRule(16, i4);
            layoutParams10.setMarginEnd(MainApp.E1);
            relativeLayout2.addView(myEditText, layoutParams10);
            RelativeLayout relativeLayout3 = new RelativeLayout(context);
            int i19 = MainApp.F1;
            relativeLayout3.setPadding(0, i19, 0, i19);
            linearLayout.addView(relativeLayout3, -1, -2);
            RelativeLayout relativeLayout4 = new RelativeLayout(context);
            relativeLayout4.setId(i6);
            RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams11.addRule(21);
            layoutParams11.addRule(15);
            relativeLayout3.addView(relativeLayout4, layoutParams11);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            int i20 = MainApp.g1;
            relativeLayout4.addView(myButtonCheck, i20, i20);
            MyButtonImage myButtonImage4 = new MyButtonImage(context);
            myButtonImage4.setScaleType(scaleType);
            myButtonImage4.setVisibility(8);
            int i21 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(i21, i21);
            layoutParams12.setMarginStart(MainApp.g1);
            relativeLayout4.addView(myButtonImage4, layoutParams12);
            AppCompatTextView k3 = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i7, 1, 14.0f);
            k3.setText(R.string.password);
            RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams13.addRule(16, i6);
            relativeLayout3.addView(k3, layoutParams13);
            MyEditText myEditText2 = new MyEditText(context);
            myEditText2.setGravity(16);
            myEditText2.setSingleLine(true);
            myEditText2.setTextDirection(3);
            myEditText2.setTextSize(1, 16.0f);
            if (i18 >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams14.addRule(3, i7);
            layoutParams14.addRule(16, i6);
            layoutParams14.setMarginEnd(MainApp.E1);
            relativeLayout3.addView(myEditText2, layoutParams14);
            MyLineView myLineView = new MyLineView(context);
            myLineView.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams15.addRule(3, i7);
            layoutParams15.setMarginEnd(MainApp.E1);
            relativeLayout3.addView(myLineView, layoutParams15);
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.save);
            r.t(MainApp.E1);
            r.setVisibility(8);
            q.addView(r, -1, MainApp.g1);
            dialogPassInfo.j0 = q;
            dialogPassInfo.k0 = myLineRelative;
            dialogPassInfo.l0 = myRoundImage;
            dialogPassInfo.m0 = myButtonImage;
            dialogPassInfo.n0 = i10;
            dialogPassInfo.o0 = myLineText;
            dialogPassInfo.p0 = k;
            dialogPassInfo.q0 = appCompatTextView;
            dialogPassInfo.r0 = myButtonImage2;
            dialogPassInfo.s0 = k2;
            dialogPassInfo.t0 = myEditText;
            dialogPassInfo.u0 = myButtonImage3;
            dialogPassInfo.v0 = k3;
            dialogPassInfo.w0 = myEditText2;
            dialogPassInfo.x0 = myLineView;
            dialogPassInfo.y0 = myButtonCheck;
            dialogPassInfo.z0 = myButtonImage4;
            dialogPassInfo.A0 = r;
            Handler handler = dialogPassInfo.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v45, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPassInfo dialogPassInfo2 = DialogPassInfo.this;
                    if (dialogPassInfo2.j0 != null && dialogPassInfo2.c0 != null) {
                        int i22 = -12632257;
                        if (MainApp.K1) {
                            dialogPassInfo2.n0.setTextColor(-328966);
                            dialogPassInfo2.o0.setTextColor(-328966);
                            dialogPassInfo2.p0.setTextColor(-4079167);
                            dialogPassInfo2.q0.setTextColor(-328966);
                            dialogPassInfo2.s0.setTextColor(-4079167);
                            dialogPassInfo2.t0.setTextColor(-328966);
                            dialogPassInfo2.v0.setTextColor(-4079167);
                            dialogPassInfo2.w0.setTextColor(-328966);
                            dialogPassInfo2.m0.setImageResource(R.drawable.outline_edit_dark_24);
                            dialogPassInfo2.r0.setImageResource(R.drawable.outline_content_copy_dark_24);
                            dialogPassInfo2.u0.setImageResource(R.drawable.outline_content_copy_dark_24);
                            dialogPassInfo2.z0.setImageResource(R.drawable.outline_content_copy_dark_24);
                            dialogPassInfo2.y0.p(R.drawable.outline_visibility_off_dark_24, R.drawable.outline_visibility_dark_24);
                            dialogPassInfo2.A0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogPassInfo2.A0.setTextColor(-328966);
                            dialogPassInfo2.m0.setBgPreColor(-12632257);
                            dialogPassInfo2.r0.setBgPreColor(-12632257);
                            dialogPassInfo2.u0.setBgPreColor(-12632257);
                            dialogPassInfo2.y0.setBgPreColor(-12632257);
                            dialogPassInfo2.z0.setBgPreColor(-12632257);
                        } else {
                            dialogPassInfo2.n0.setTextColor(-16777216);
                            dialogPassInfo2.o0.setTextColor(-16777216);
                            dialogPassInfo2.p0.setTextColor(-10395295);
                            dialogPassInfo2.q0.setTextColor(-16777216);
                            dialogPassInfo2.s0.setTextColor(-10395295);
                            dialogPassInfo2.t0.setTextColor(-16777216);
                            dialogPassInfo2.v0.setTextColor(-10395295);
                            dialogPassInfo2.w0.setTextColor(-16777216);
                            dialogPassInfo2.m0.setImageResource(R.drawable.outline_edit_black_24);
                            dialogPassInfo2.r0.setImageResource(R.drawable.outline_content_copy_black_24);
                            dialogPassInfo2.u0.setImageResource(R.drawable.outline_content_copy_black_24);
                            dialogPassInfo2.z0.setImageResource(R.drawable.outline_content_copy_black_24);
                            dialogPassInfo2.y0.p(R.drawable.outline_visibility_off_black_24, R.drawable.outline_visibility_black_24);
                            dialogPassInfo2.A0.setBackgroundResource(R.drawable.selector_normal);
                            dialogPassInfo2.A0.setTextColor(-14784824);
                            dialogPassInfo2.m0.setBgPreColor(-2039584);
                            dialogPassInfo2.r0.setBgPreColor(-2039584);
                            dialogPassInfo2.u0.setBgPreColor(-2039584);
                            dialogPassInfo2.y0.setBgPreColor(-2039584);
                            dialogPassInfo2.z0.setBgPreColor(-2039584);
                        }
                        dialogPassInfo2.t0.setElineColor(-14784824);
                        dialogPassInfo2.w0.setDrawEline(false);
                        dialogPassInfo2.q0.setFocusable(true);
                        dialogPassInfo2.q0.setFocusableInTouchMode(true);
                        dialogPassInfo2.q0.setText(dialogPassInfo2.f0);
                        dialogPassInfo2.t0.setText(dialogPassInfo2.g0);
                        dialogPassInfo2.w0.setText(dialogPassInfo2.h0);
                        if (dialogPassInfo2.e0 == 0) {
                            dialogPassInfo2.o0.setVisibility(0);
                            dialogPassInfo2.x0.setVisibility(0);
                            dialogPassInfo2.A0.setVisibility(0);
                            MyLineView myLineView2 = dialogPassInfo2.x0;
                            if (!MainApp.K1) {
                                i22 = -2434342;
                            }
                            myLineView2.d(dialogPassInfo2.b0, i22);
                        } else {
                            dialogPassInfo2.k0.setVisibility(0);
                            dialogPassInfo2.m0.setVisibility(0);
                            dialogPassInfo2.r0.setVisibility(0);
                            dialogPassInfo2.u0.setVisibility(0);
                            dialogPassInfo2.z0.setVisibility(0);
                            dialogPassInfo2.t0.setDrawEline(false);
                            dialogPassInfo2.t0.setEnabled(false);
                            dialogPassInfo2.w0.setEnabled(false);
                            if (dialogPassInfo2.l0 != null) {
                                ?? obj = new Object();
                                obj.f16550a = 34;
                                obj.f16551c = 11;
                                String str = dialogPassInfo2.f0;
                                obj.g = str;
                                if (TextUtils.isEmpty(str)) {
                                    dialogPassInfo2.l0.o(-460552, R.drawable.outline_public_black_24);
                                } else {
                                    Bitmap b = MainListLoader.b(obj);
                                    if (MainUtil.f6(b)) {
                                        dialogPassInfo2.l0.setIconSmall(true);
                                        dialogPassInfo2.l0.setImageBitmap(b);
                                    } else {
                                        dialogPassInfo2.B0 = new MainListLoader(dialogPassInfo2.c0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.14
                                            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                            public final void a(MainItem.ChildItem childItem, View view) {
                                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                                MyRoundImage myRoundImage2 = dialogPassInfo3.l0;
                                                if (myRoundImage2 == null) {
                                                    return;
                                                }
                                                myRoundImage2.p(-460552, R.drawable.outline_public_black_24, dialogPassInfo3.f0, null);
                                            }

                                            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                                MyRoundImage myRoundImage2 = dialogPassInfo3.l0;
                                                if (myRoundImage2 == null) {
                                                    return;
                                                }
                                                myRoundImage2.setIconSmall(true);
                                                dialogPassInfo3.l0.setImageBitmap(bitmap);
                                            }
                                        });
                                        dialogPassInfo2.l0.setTag(0);
                                        dialogPassInfo2.B0.e(obj, dialogPassInfo2.l0);
                                    }
                                }
                            }
                            dialogPassInfo2.n0.setText(dialogPassInfo2.f0);
                            dialogPassInfo2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i23;
                                    DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                    MyButtonImage myButtonImage5 = dialogPassInfo3.m0;
                                    if (myButtonImage5 == null) {
                                        return;
                                    }
                                    myButtonImage5.setVisibility(8);
                                    dialogPassInfo3.r0.setVisibility(8);
                                    dialogPassInfo3.u0.setVisibility(8);
                                    dialogPassInfo3.z0.setVisibility(8);
                                    dialogPassInfo3.x0.setVisibility(0);
                                    dialogPassInfo3.A0.setVisibility(0);
                                    dialogPassInfo3.t0.setDrawEline(true);
                                    dialogPassInfo3.t0.setEnabled(true);
                                    dialogPassInfo3.w0.setEnabled(true);
                                    MyLineView myLineView3 = dialogPassInfo3.x0;
                                    if (MainApp.K1) {
                                        i23 = -12632257;
                                    } else {
                                        i23 = -2434342;
                                    }
                                    myLineView3.d(dialogPassInfo3.b0, i23);
                                }
                            });
                            dialogPassInfo2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                    MainUtil.s(R.string.copied_clipboard, dialogPassInfo3.c0, "Copied host", dialogPassInfo3.f0);
                                }
                            });
                            dialogPassInfo2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.5
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                    MainUtil.s(R.string.copied_clipboard, dialogPassInfo3.c0, "Copied username", dialogPassInfo3.g0);
                                }
                            });
                            dialogPassInfo2.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                    MainUtil.s(R.string.copied_clipboard, dialogPassInfo3.c0, "Copied password", dialogPassInfo3.h0);
                                }
                            });
                        }
                        dialogPassInfo2.w0.setInputType(129);
                        dialogPassInfo2.w0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        dialogPassInfo2.y0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                MyButtonCheck myButtonCheck2 = dialogPassInfo3.y0;
                                if (myButtonCheck2 != null) {
                                    if (myButtonCheck2.D) {
                                        myButtonCheck2.q(false, true);
                                        dialogPassInfo3.w0.setInputType(129);
                                        dialogPassInfo3.w0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                                    } else {
                                        myButtonCheck2.q(true, true);
                                        dialogPassInfo3.w0.setInputType(161);
                                        dialogPassInfo3.w0.setTransformationMethod(null);
                                    }
                                    String Q0 = MainUtil.Q0(dialogPassInfo3.w0, false);
                                    if (TextUtils.isEmpty(Q0)) {
                                        return;
                                    }
                                    dialogPassInfo3.w0.setSelection(Q0.length());
                                }
                            }
                        });
                        dialogPassInfo2.t0.setSelectAllOnFocus(true);
                        dialogPassInfo2.t0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.8
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogPassInfo dialogPassInfo3;
                                MyEditText myEditText3;
                                int i23;
                                if (!z || (myEditText3 = (dialogPassInfo3 = DialogPassInfo.this).t0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-14784824);
                                MyLineView myLineView3 = dialogPassInfo3.x0;
                                if (MainApp.K1) {
                                    i23 = -12632257;
                                } else {
                                    i23 = -2434342;
                                }
                                myLineView3.c(dialogPassInfo3.b0, i23);
                            }
                        });
                        dialogPassInfo2.t0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.9
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i23, KeyEvent keyEvent) {
                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                MyEditText myEditText3 = dialogPassInfo3.t0;
                                if (myEditText3 == null || dialogPassInfo3.C0) {
                                    return true;
                                }
                                dialogPassInfo3.C0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.9.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogPassInfo.C(DialogPassInfo.this);
                                    }
                                });
                                return true;
                            }
                        });
                        dialogPassInfo2.w0.setSelectAllOnFocus(true);
                        dialogPassInfo2.w0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.10
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogPassInfo dialogPassInfo3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogPassInfo3 = DialogPassInfo.this).t0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-2434342);
                                if (MainApp.K1) {
                                    dialogPassInfo3.x0.c(dialogPassInfo3.b0, -328966);
                                } else {
                                    dialogPassInfo3.x0.c(dialogPassInfo3.a0, -14784824);
                                }
                            }
                        });
                        dialogPassInfo2.w0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.11
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i23, KeyEvent keyEvent) {
                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                MyEditText myEditText3 = dialogPassInfo3.w0;
                                if (myEditText3 == null || dialogPassInfo3.C0) {
                                    return true;
                                }
                                dialogPassInfo3.C0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.11.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogPassInfo.C(DialogPassInfo.this);
                                    }
                                });
                                return true;
                            }
                        });
                        dialogPassInfo2.A0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                MyLineText myLineText2 = dialogPassInfo3.A0;
                                if (myLineText2 == null || dialogPassInfo3.C0) {
                                    return;
                                }
                                dialogPassInfo3.C0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.12.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogPassInfo.C(DialogPassInfo.this);
                                    }
                                });
                            }
                        });
                        dialogPassInfo2.g(dialogPassInfo2.j0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPassInfo.13
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                                if (dialogPassInfo3.j0 == null) {
                                    return;
                                }
                                dialogPassInfo3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogPassInfo dialogPassInfo) {
        Bitmap bitmap;
        if (dialogPassInfo.d0 == null) {
            return;
        }
        String Q0 = MainUtil.Q0(dialogPassInfo.t0, true);
        String Q02 = MainUtil.Q0(dialogPassInfo.w0, true);
        if (dialogPassInfo.e0 == 0) {
            bitmap = dialogPassInfo.d0.getIcon();
        } else {
            if (TextUtils.isEmpty(Q0)) {
                Q0 = null;
            } else {
                Q0 = Q0.replace(",", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            if (TextUtils.isEmpty(Q02)) {
                Q02 = null;
            } else {
                Q02 = Q02.replace(",", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            bitmap = null;
        }
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(dialogPassInfo.t0);
            MainUtil.e8(dialogPassInfo.c0, R.string.input_name);
            dialogPassInfo.C0 = false;
        } else {
            if (TextUtils.isEmpty(Q02)) {
                MainUtil.b7(dialogPassInfo.w0);
                MainUtil.e8(dialogPassInfo.c0, R.string.input_password);
                dialogPassInfo.C0 = false;
                return;
            }
            dialogPassInfo.D0 = dialogPassInfo.d0;
            dialogPassInfo.E0 = bitmap;
            dialogPassInfo.F0 = Q0;
            dialogPassInfo.G0 = Q02;
            dialogPassInfo.d0 = null;
            dialogPassInfo.j0.e(0, 0, true, false);
            dialogPassInfo.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.15
                @Override // java.lang.Runnable
                public final void run() {
                    DialogPassInfo dialogPassInfo2 = DialogPassInfo.this;
                    long j = dialogPassInfo2.e0;
                    if (j == 0) {
                        DbBookPass.i(dialogPassInfo2.c0, dialogPassInfo2.f0, dialogPassInfo2.E0, dialogPassInfo2.F0, dialogPassInfo2.G0, dialogPassInfo2.i0);
                    } else {
                        Context context = dialogPassInfo2.c0;
                        String str = dialogPassInfo2.F0;
                        String str2 = dialogPassInfo2.G0;
                        DbBookPass dbBookPass = DbBookPass.f12940c;
                        if (context != null && j > 0 && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                            DbUtil.i(DbBookPass.d(context).getWritableDatabase(), "DbBookPass_table", a.e("_user_val", str, "_pass_val", str2), j);
                        }
                    }
                    Handler handler = dialogPassInfo2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassInfo.15.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPassInfo dialogPassInfo3 = DialogPassInfo.this;
                            PassInfoListener passInfoListener = dialogPassInfo3.D0;
                            if (passInfoListener == null) {
                                return;
                            }
                            passInfoListener.a(dialogPassInfo3.F0, dialogPassInfo3.G0);
                            dialogPassInfo3.D0 = null;
                            dialogPassInfo3.E0 = null;
                            dialogPassInfo3.F0 = null;
                            dialogPassInfo3.G0 = null;
                            dialogPassInfo3.C0 = false;
                        }
                    });
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        PassInfoListener passInfoListener = this.d0;
        if (passInfoListener != null) {
            passInfoListener.b(this.f0);
            this.d0 = null;
        }
        MainListLoader mainListLoader = this.B0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.B0 = null;
        }
        MyDialogLinear myDialogLinear = this.j0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.j0 = null;
        }
        MyLineRelative myLineRelative = this.k0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.k0 = null;
        }
        MyRoundImage myRoundImage = this.l0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.l0 = null;
        }
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.m0 = null;
        }
        MyLineText myLineText = this.o0;
        if (myLineText != null) {
            myLineText.u();
            this.o0 = null;
        }
        MyButtonImage myButtonImage2 = this.r0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.r0 = null;
        }
        MyEditText myEditText = this.t0;
        if (myEditText != null) {
            myEditText.c();
            this.t0 = null;
        }
        MyButtonImage myButtonImage3 = this.u0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.u0 = null;
        }
        MyEditText myEditText2 = this.w0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.w0 = null;
        }
        MyLineView myLineView = this.x0;
        if (myLineView != null) {
            myLineView.b();
            this.x0 = null;
        }
        MyButtonCheck myButtonCheck = this.y0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.y0 = null;
        }
        MyButtonImage myButtonImage4 = this.z0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.z0 = null;
        }
        MyLineText myLineText2 = this.A0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.A0 = null;
        }
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.n0 = null;
        this.p0 = null;
        this.q0 = null;
        this.s0 = null;
        this.v0 = null;
        super.dismiss();
    }
}
