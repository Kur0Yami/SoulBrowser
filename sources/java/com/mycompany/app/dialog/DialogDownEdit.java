package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogDownEdit extends MyDialogBottom {
    public static final /* synthetic */ int F0 = 0;
    public ArrayList A0;
    public String B0;
    public MyPopupMenu C0;
    public String D0;
    public MainUri.UriItem E0;
    public MainActivity a0;
    public Context b0;
    public MyDialogLinear c0;
    public MyLineFrame d0;
    public MyRoundImage e0;
    public AppCompatTextView f0;
    public MyRoundImage g0;
    public MyLineLinear h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public MyEditText k0;
    public MyLineRelative l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public MyButtonImage o0;
    public AppCompatTextView p0;
    public RelativeLayout q0;
    public Bitmap r0;
    public String s0;
    public String t0;
    public DialogDownPage.DownPageListener u0;
    public String v0;
    public String w0;
    public boolean x0;
    public DialogPreview y0;
    public boolean z0;

    /* renamed from: com.mycompany.app.dialog.DialogDownEdit$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogDownEdit dialogDownEdit = DialogDownEdit.this;
            if (dialogDownEdit.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogDownEdit.b0, e);
                dialogDownEdit.B0 = MainUri.h(dialogDownEdit.b0, e);
                Handler handler = dialogDownEdit.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.10.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogDownEdit dialogDownEdit2 = DialogDownEdit.this;
                        int i = DialogDownEdit.F0;
                        dialogDownEdit2.F(null);
                    }
                });
            }
        }
    }

    public DialogDownEdit(MainActivity mainActivity, String str, Bitmap bitmap, DialogDownPage.DownPageListener downPageListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.r0 = bitmap;
        this.s0 = str;
        this.u0 = downPageListener;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownEdit dialogDownEdit = DialogDownEdit.this;
                if (dialogDownEdit.b0 != null) {
                    dialogDownEdit.t0 = MainUtil.l3(186, dialogDownEdit.s0, "Capture") + ".jpg";
                    ArrayList n = MainUri.n(dialogDownEdit.b0);
                    dialogDownEdit.A0 = n;
                    PrefPath.r = MainUri.m(dialogDownEdit.b0, PrefPath.r, n);
                    dialogDownEdit.B0 = MainUri.h(dialogDownEdit.b0, MainUri.e());
                    Handler handler = dialogDownEdit.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownEdit.B(DialogDownEdit.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogDownEdit dialogDownEdit) {
        Context context = dialogDownEdit.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            FrameLayout frameLayout = new FrameLayout(context);
            g.addView(frameLayout, -1, -2);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 80;
            frameLayout.addView(myLineFrame, layoutParams2);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i, i);
            layoutParams3.gravity = 8388627;
            layoutParams3.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams3);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(16);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setTextSize(1, 16.0f);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G);
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(appCompatTextView, layoutParams4);
            MyRoundImage myRoundImage2 = new MyRoundImage(context);
            myRoundImage2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            myRoundImage2.setVisibility(8);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 140.0f));
            int i2 = MainApp.E1;
            layoutParams5.setMargins(i2, i2, i2, i2);
            myLineFrame.addView(myRoundImage2, layoutParams5);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            g.addView(relativeLayout, -1, -2);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setOrientation(1);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            relativeLayout.addView(myLineLinear, -1, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i3 = MainApp.E1;
            appCompatTextView2.setPadding(i3, 0, i3, 0);
            appCompatTextView2.setGravity(16);
            appCompatTextView2.setTextSize(1, 14.0f);
            appCompatTextView2.setText(R.string.exist_file);
            appCompatTextView2.setVisibility(8);
            myLineLinear.addView(appCompatTextView2, -1, (int) MainUtil.G(context, 32.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            int G2 = (int) MainUtil.G(context, 12.0f);
            frameLayout2.setPaddingRelative(MainApp.E1, G2, (int) MainUtil.G(context, 10.0f), G2);
            myLineLinear.addView(frameLayout2, -1, (int) MainUtil.G(context, 88.0f));
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            frameLayout2.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.gravity = 8388691;
            layoutParams6.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout2.addView(myEditText, layoutParams6);
            dialogDownEdit.c0 = q;
            dialogDownEdit.d0 = myLineFrame;
            dialogDownEdit.q0 = relativeLayout;
            dialogDownEdit.e0 = myRoundImage;
            dialogDownEdit.f0 = appCompatTextView;
            dialogDownEdit.g0 = myRoundImage2;
            dialogDownEdit.h0 = myLineLinear;
            dialogDownEdit.i0 = appCompatTextView2;
            dialogDownEdit.j0 = j;
            dialogDownEdit.k0 = myEditText;
            Handler handler = dialogDownEdit.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    MyLineLinear myLineLinear2;
                    final DialogDownEdit dialogDownEdit2 = DialogDownEdit.this;
                    Context context2 = dialogDownEdit2.b0;
                    if (context2 != null && (myDialogLinear = dialogDownEdit2.c0) != null && dialogDownEdit2.q0 != null && (myLineLinear2 = dialogDownEdit2.h0) != null) {
                        int i4 = R.id.down_icon_frame;
                        int i5 = R.id.down_path_title;
                        MyLineRelative myLineRelative = new MyLineRelative(context2);
                        myLineRelative.setPaddingRelative(MainApp.E1, 0, (int) MainUtil.G(context2, 6.0f), 0);
                        myLineRelative.setMinimumHeight(MainApp.h1);
                        myLineRelative.c(MainApp.E1);
                        myLineLinear2.addView(myLineRelative, -1, -2);
                        int G3 = (int) MainUtil.G(context2, 88.0f);
                        LinearLayout linearLayout = new LinearLayout(context2);
                        linearLayout.setId(i4);
                        linearLayout.setBaselineAligned(false);
                        linearLayout.setOrientation(0);
                        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, G3);
                        layoutParams7.addRule(15);
                        layoutParams7.addRule(21);
                        layoutParams7.setMarginEnd(MainApp.G1);
                        myLineRelative.addView(linearLayout, layoutParams7);
                        MyButtonImage myButtonImage = new MyButtonImage(context2);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        myButtonImage.l(MainApp.j1, true);
                        myButtonImage.setBgPreRadius(MainApp.k1);
                        linearLayout.addView(myButtonImage, MainApp.g1, G3);
                        RelativeLayout relativeLayout2 = new RelativeLayout(context2);
                        int i6 = MainApp.E1;
                        relativeLayout2.setPadding(0, i6, 0, i6);
                        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams8.addRule(16, i4);
                        layoutParams8.addRule(15);
                        layoutParams8.setMarginEnd((int) MainUtil.G(context2, 10.0f));
                        myLineRelative.addView(relativeLayout2, layoutParams8);
                        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i5, 1, 14.0f);
                        k.setText(R.string.down_location);
                        relativeLayout2.addView(k, -2, -2);
                        AppCompatTextView i7 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i7.setEllipsize(TextUtils.TruncateAt.END);
                        i7.setTextSize(1, 16.0f);
                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i5);
                        h.topMargin = MainApp.F1;
                        relativeLayout2.addView(i7, h);
                        MyLineLinear myLineLinear3 = new MyLineLinear(context2);
                        myLineLinear3.setBaselineAligned(false);
                        myLineLinear3.setOrientation(0);
                        myLineLinear3.setLinePad(MainApp.E1);
                        myLineLinear3.setLineUp(true);
                        myDialogLinear.addView(myLineLinear3, -1, MainApp.g1);
                        AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context2, null, 17, 1, 16.0f);
                        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(C, R.string.download, 0, -1);
                        e.weight = 1.0f;
                        myLineLinear3.addView(C, e);
                        dialogDownEdit2.l0 = myLineRelative;
                        dialogDownEdit2.m0 = k;
                        dialogDownEdit2.n0 = i7;
                        dialogDownEdit2.o0 = myButtonImage;
                        dialogDownEdit2.p0 = C;
                        Handler handler2 = dialogDownEdit2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                final DialogDownEdit dialogDownEdit3 = DialogDownEdit.this;
                                if (dialogDownEdit3.c0 != null && dialogDownEdit3.b0 != null) {
                                    if (MainApp.K1) {
                                        dialogDownEdit3.j0.setTextColor(-4079167);
                                        dialogDownEdit3.m0.setTextColor(-4079167);
                                        dialogDownEdit3.i0.setBackgroundColor(-12632257);
                                        dialogDownEdit3.i0.setTextColor(-2434342);
                                        dialogDownEdit3.f0.setTextColor(-328966);
                                        dialogDownEdit3.k0.setTextColor(-328966);
                                        dialogDownEdit3.n0.setTextColor(-328966);
                                        dialogDownEdit3.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownEdit3.o0.setImageResource(R.drawable.baseline_play_arrow_dark_24);
                                        dialogDownEdit3.o0.k(-11513776, -12632257);
                                        dialogDownEdit3.p0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownEdit3.p0.setTextColor(-328966);
                                    } else {
                                        dialogDownEdit3.j0.setTextColor(-10395295);
                                        dialogDownEdit3.m0.setTextColor(-10395295);
                                        dialogDownEdit3.i0.setBackgroundColor(-460552);
                                        dialogDownEdit3.i0.setTextColor(-12303292);
                                        dialogDownEdit3.f0.setTextColor(-16777216);
                                        dialogDownEdit3.k0.setTextColor(-16777216);
                                        dialogDownEdit3.n0.setTextColor(-16777216);
                                        dialogDownEdit3.l0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownEdit3.o0.setImageResource(R.drawable.baseline_play_arrow_black_24);
                                        dialogDownEdit3.o0.k(-460552, -2039584);
                                        dialogDownEdit3.p0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownEdit3.p0.setTextColor(-14784824);
                                    }
                                    dialogDownEdit3.m0.setText(R.string.save_location);
                                    dialogDownEdit3.p0.setText(R.string.save);
                                    if (dialogDownEdit3.e0 != null) {
                                        if (MainUtil.f6(dialogDownEdit3.r0)) {
                                            dialogDownEdit3.g0.setImageBitmap(dialogDownEdit3.r0);
                                            dialogDownEdit3.g0.setVisibility(0);
                                            dialogDownEdit3.e0.setVisibility(8);
                                            dialogDownEdit3.f0.setVisibility(8);
                                        } else {
                                            dialogDownEdit3.e0.o(-460552, R.drawable.outline_image_black_24);
                                        }
                                    }
                                    dialogDownEdit3.f0.setText(dialogDownEdit3.s0);
                                    dialogDownEdit3.F(dialogDownEdit3.t0);
                                    MainUtil.k7(dialogDownEdit3.k0, false);
                                    dialogDownEdit3.k0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownEdit.4
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            if (!dialogDownEdit4.x0 && editable != null && !MainUtil.q5(dialogDownEdit4.w0, editable.toString())) {
                                                dialogDownEdit4.x0 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }
                                    });
                                    dialogDownEdit3.k0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.5
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                            DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            MyEditText myEditText2 = dialogDownEdit4.k0;
                                            if (myEditText2 == null || dialogDownEdit4.z0) {
                                                return true;
                                            }
                                            dialogDownEdit4.z0 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                    DialogDownEdit.C(DialogDownEdit.this);
                                                    DialogDownEdit.this.z0 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    dialogDownEdit3.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            ArrayList arrayList = dialogDownEdit4.A0;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                MyPopupMenu myPopupMenu = dialogDownEdit4.C0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogDownEdit4.Y = null;
                                                        myPopupMenu.a();
                                                        dialogDownEdit4.C0 = null;
                                                    }
                                                    if (dialogDownEdit4.a0 != null && view != null && dialogDownEdit4.A0 != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        ArrayList arrayList3 = dialogDownEdit4.A0;
                                                        int size = arrayList3.size();
                                                        int i8 = 0;
                                                        int i9 = 0;
                                                        while (i9 < size) {
                                                            Object obj = arrayList3.get(i9);
                                                            i9++;
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, MainUri.o(dialogDownEdit4.b0, (String) obj)));
                                                            i8++;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogDownEdit4.a0, dialogDownEdit4.c0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.13
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i10 = DialogDownEdit.F0;
                                                                DialogDownEdit dialogDownEdit5 = DialogDownEdit.this;
                                                                MyPopupMenu myPopupMenu3 = dialogDownEdit5.C0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogDownEdit5.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogDownEdit5.C0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view2, int i10) {
                                                                DialogDownEdit dialogDownEdit5 = DialogDownEdit.this;
                                                                ArrayList arrayList4 = dialogDownEdit5.A0;
                                                                if (arrayList4 != null && i10 < arrayList4.size()) {
                                                                    String str = (String) dialogDownEdit5.A0.get(i10);
                                                                    if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                                        return true;
                                                                    }
                                                                    PrefPath.r = str;
                                                                    dialogDownEdit5.s(new AnonymousClass10());
                                                                    return true;
                                                                }
                                                                MainUtil.F4(dialogDownEdit5.a0, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        dialogDownEdit4.C0 = myPopupMenu2;
                                                        dialogDownEdit4.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(dialogDownEdit4.a0, MainUri.e());
                                        }
                                    });
                                    dialogDownEdit3.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogPreview dialogPreview;
                                            final DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            if (dialogDownEdit4.a0 == null || (dialogPreview = dialogDownEdit4.y0) != null) {
                                                return;
                                            }
                                            if (dialogPreview != null) {
                                                dialogPreview.dismiss();
                                                dialogDownEdit4.y0 = null;
                                            }
                                            if (!MainUtil.f6(dialogDownEdit4.r0)) {
                                                MainUtil.e8(dialogDownEdit4.b0, R.string.image_fail);
                                                return;
                                            }
                                            DialogPreview dialogPreview2 = new DialogPreview(dialogDownEdit4.a0, null, null, dialogDownEdit4.r0, "image/*", null);
                                            dialogDownEdit4.y0 = dialogPreview2;
                                            dialogPreview2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.11
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i8 = DialogDownEdit.F0;
                                                    DialogDownEdit dialogDownEdit5 = DialogDownEdit.this;
                                                    DialogPreview dialogPreview3 = dialogDownEdit5.y0;
                                                    if (dialogPreview3 != null) {
                                                        dialogPreview3.dismiss();
                                                        dialogDownEdit5.y0 = null;
                                                    }
                                                }
                                            });
                                        }
                                    });
                                    dialogDownEdit3.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.8
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            AppCompatTextView appCompatTextView3 = dialogDownEdit4.p0;
                                            if (appCompatTextView3 == null || dialogDownEdit4.z0) {
                                                return;
                                            }
                                            dialogDownEdit4.z0 = true;
                                            appCompatTextView3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.8.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                                    DialogDownEdit.C(DialogDownEdit.this);
                                                    DialogDownEdit.this.z0 = false;
                                                }
                                            });
                                        }
                                    });
                                    dialogDownEdit3.E(dialogDownEdit3.p());
                                    dialogDownEdit3.g(dialogDownEdit3.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownEdit.9
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogDownEdit dialogDownEdit4 = DialogDownEdit.this;
                                            if (dialogDownEdit4.c0 != null && dialogDownEdit4.b0 != null) {
                                                dialogDownEdit4.show();
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

    public static void C(DialogDownEdit dialogDownEdit) {
        if (dialogDownEdit.b0 != null && dialogDownEdit.k0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogDownEdit.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogDownEdit.k0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogDownEdit.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogDownEdit.b0, R.string.long_name);
                return;
            }
            String b4 = MainUtil.b4(Q0, ".jpg");
            if (TextUtils.isEmpty(b4)) {
                MainUtil.e8(dialogDownEdit.b0, R.string.input_name);
                return;
            }
            String p3 = MainUtil.p3(b4);
            MainUri.e();
            MainUtil.X4(dialogDownEdit.b0, dialogDownEdit.k0);
            dialogDownEdit.D0 = p3;
            dialogDownEdit.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.12
                @Override // java.lang.Runnable
                public final void run() {
                    DialogDownEdit dialogDownEdit2 = DialogDownEdit.this;
                    String str = dialogDownEdit2.D0;
                    dialogDownEdit2.D0 = null;
                    if (dialogDownEdit2.u0 != null) {
                        dialogDownEdit2.E0 = MainUri.c(dialogDownEdit2.b0, MainUri.e(), null, str);
                    }
                    MyEditText myEditText = dialogDownEdit2.k0;
                    if (myEditText == null) {
                        return;
                    }
                    myEditText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownEdit.12.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                            DialogDownEdit dialogDownEdit3 = DialogDownEdit.this;
                            MainUri.UriItem uriItem = dialogDownEdit3.E0;
                            dialogDownEdit3.E0 = null;
                            DialogDownPage.DownPageListener downPageListener = dialogDownEdit3.u0;
                            if (downPageListener != null) {
                                if (uriItem != null) {
                                    downPageListener.a(null, uriItem.e, dialogDownEdit3.r0);
                                } else {
                                    downPageListener.a(null, null, dialogDownEdit3.r0);
                                }
                            }
                            DialogDownEdit.this.dismiss();
                        }
                    });
                }
            });
        }
    }

    public final boolean D(int i, int i2, Intent intent) {
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
                    s(new AnonymousClass10());
                }
                MainUtil.z7(this.b0, data);
            }
            return true;
        }
        return false;
    }

    public final void E(boolean z) {
        int i;
        if (z) {
            z = q();
        }
        MyLineFrame myLineFrame = this.d0;
        if (myLineFrame != null) {
            if (z) {
                i = 8;
            } else {
                i = 0;
            }
            myLineFrame.setVisibility(i);
        }
        DialogPreview dialogPreview = this.y0;
        if (dialogPreview != null) {
            dialogPreview.D(z);
        }
    }

    public final void F(String str) {
        String str2;
        int i;
        if (this.k0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.v0 = str;
        }
        if (this.x0) {
            str2 = MainUtil.Q0(this.k0, true);
        } else {
            str2 = this.v0;
        }
        String p3 = MainUtil.p3(str2);
        if (TextUtils.isEmpty(MainUri.e())) {
            this.w0 = p3;
            this.k0.setText(p3);
            this.n0.setText(R.string.not_selected);
            this.n0.setTextColor(-769226);
            this.h0.setDrawLine(true);
            this.i0.setVisibility(8);
            return;
        }
        this.n0.setText(this.B0);
        AppCompatTextView appCompatTextView = this.n0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        if (TextUtils.isEmpty(p3)) {
            this.w0 = p3;
            this.k0.setText(p3);
            this.h0.setDrawLine(true);
            this.i0.setVisibility(8);
            return;
        }
        String b4 = MainUtil.b4(p3, ".jpg");
        MainUri.e();
        this.h0.setDrawLine(true);
        this.i0.setVisibility(8);
        this.w0 = b4;
        this.k0.setText(b4);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogPreview dialogPreview = this.y0;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.y0 = null;
        }
        MyPopupMenu myPopupMenu = this.C0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.C0 = null;
        }
        MyLineFrame myLineFrame = this.d0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.d0 = null;
        }
        MyRoundImage myRoundImage = this.e0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.e0 = null;
        }
        MyRoundImage myRoundImage2 = this.g0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.g0 = null;
        }
        MyLineLinear myLineLinear = this.h0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.h0 = null;
        }
        MyEditText myEditText = this.k0;
        if (myEditText != null) {
            myEditText.c();
            this.k0 = null;
        }
        MyLineRelative myLineRelative = this.l0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.l0 = null;
        }
        MyButtonImage myButtonImage = this.o0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.o0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.i0 = null;
        this.n0 = null;
        this.p0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.A0 = null;
        this.B0 = null;
        super.dismiss();
    }
}
