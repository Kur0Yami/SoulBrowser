package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
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
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
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
public class DialogDownPage extends MyDialogBottom {
    public static final /* synthetic */ int B0 = 0;
    public MainListLoader A0;
    public MainActivity a0;
    public Context b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyLineLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public MyEditText i0;
    public MyLineRelative j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public RelativeLayout n0;
    public String o0;
    public Bitmap p0;
    public String q0;
    public String r0;
    public DownPageListener s0;
    public String t0;
    public String u0;
    public boolean v0;
    public boolean w0;
    public ArrayList x0;
    public String y0;
    public MyPopupMenu z0;

    /* loaded from: classes3.dex */
    public interface DownPageListener {
        void a(String str, String str2, Bitmap bitmap);
    }

    public DialogDownPage(MainActivity mainActivity, String str, String str2, Bitmap bitmap, DownPageListener downPageListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.o0 = str;
        this.p0 = bitmap;
        this.q0 = str2;
        this.s0 = downPageListener;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownPage dialogDownPage = DialogDownPage.this;
                if (dialogDownPage.b0 != null) {
                    dialogDownPage.r0 = MainUtil.l3(186, dialogDownPage.q0, "Downpage");
                    ArrayList n = MainUri.n(dialogDownPage.b0);
                    dialogDownPage.x0 = n;
                    PrefPath.r = MainUri.m(dialogDownPage.b0, PrefPath.r, n);
                    dialogDownPage.y0 = MainUri.h(dialogDownPage.b0, MainUri.e());
                    Handler handler = dialogDownPage.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownPage.B(DialogDownPage.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogDownPage dialogDownPage) {
        Context context = dialogDownPage.b0;
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
            RelativeLayout relativeLayout = new RelativeLayout(context);
            g.addView(relativeLayout, -1, -2);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setOrientation(1);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            relativeLayout.addView(myLineLinear, -1, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i2 = MainApp.E1;
            appCompatTextView2.setPadding(i2, 0, i2, 0);
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
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams5.gravity = 8388691;
            layoutParams5.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout2.addView(myEditText, layoutParams5);
            dialogDownPage.c0 = q;
            dialogDownPage.n0 = relativeLayout;
            dialogDownPage.d0 = myRoundImage;
            dialogDownPage.e0 = appCompatTextView;
            dialogDownPage.f0 = myLineLinear;
            dialogDownPage.g0 = appCompatTextView2;
            dialogDownPage.h0 = j;
            dialogDownPage.i0 = myEditText;
            Handler handler = dialogDownPage.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    MyLineLinear myLineLinear2;
                    final DialogDownPage dialogDownPage2 = DialogDownPage.this;
                    Context context2 = dialogDownPage2.b0;
                    if (context2 != null && (myDialogLinear = dialogDownPage2.c0) != null && dialogDownPage2.n0 != null && (myLineLinear2 = dialogDownPage2.f0) != null) {
                        int i3 = R.id.down_icon_frame;
                        int i4 = R.id.down_path_title;
                        MyLineRelative myLineRelative = new MyLineRelative(context2);
                        myLineRelative.setPaddingRelative(MainApp.E1, 0, (int) MainUtil.G(context2, 6.0f), 0);
                        myLineRelative.setMinimumHeight(MainApp.h1);
                        myLineRelative.c(MainApp.E1);
                        myLineLinear2.addView(myLineRelative, -1, -2);
                        RelativeLayout relativeLayout2 = new RelativeLayout(context2);
                        int i5 = MainApp.E1;
                        relativeLayout2.setPadding(0, i5, 0, i5);
                        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams6.addRule(16, i3);
                        layoutParams6.addRule(15);
                        layoutParams6.setMarginEnd((int) MainUtil.G(context2, 10.0f));
                        myLineRelative.addView(relativeLayout2, layoutParams6);
                        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i4, 1, 14.0f);
                        k.setText(R.string.down_location);
                        relativeLayout2.addView(k, -2, -2);
                        AppCompatTextView i6 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i6.setEllipsize(TextUtils.TruncateAt.END);
                        i6.setTextSize(1, 16.0f);
                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i4);
                        h.topMargin = MainApp.F1;
                        relativeLayout2.addView(i6, h);
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
                        dialogDownPage2.j0 = myLineRelative;
                        dialogDownPage2.k0 = k;
                        dialogDownPage2.l0 = i6;
                        dialogDownPage2.m0 = C;
                        Handler handler2 = dialogDownPage2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.3
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r1v26, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                final DialogDownPage dialogDownPage3 = DialogDownPage.this;
                                if (dialogDownPage3.c0 != null && dialogDownPage3.b0 != null) {
                                    if (MainApp.K1) {
                                        dialogDownPage3.h0.setTextColor(-4079167);
                                        dialogDownPage3.k0.setTextColor(-4079167);
                                        dialogDownPage3.g0.setBackgroundColor(-12632257);
                                        dialogDownPage3.g0.setTextColor(-2434342);
                                        dialogDownPage3.e0.setTextColor(-328966);
                                        dialogDownPage3.i0.setTextColor(-328966);
                                        dialogDownPage3.l0.setTextColor(-328966);
                                        dialogDownPage3.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownPage3.m0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogDownPage3.m0.setTextColor(-328966);
                                    } else {
                                        dialogDownPage3.h0.setTextColor(-10395295);
                                        dialogDownPage3.k0.setTextColor(-10395295);
                                        dialogDownPage3.g0.setBackgroundColor(-460552);
                                        dialogDownPage3.g0.setTextColor(-12303292);
                                        dialogDownPage3.e0.setTextColor(-16777216);
                                        dialogDownPage3.i0.setTextColor(-16777216);
                                        dialogDownPage3.l0.setTextColor(-16777216);
                                        dialogDownPage3.j0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownPage3.m0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogDownPage3.m0.setTextColor(-14784824);
                                    }
                                    dialogDownPage3.k0.setText(R.string.save_location);
                                    dialogDownPage3.m0.setText(R.string.save);
                                    Bitmap bitmap = dialogDownPage3.p0;
                                    if (dialogDownPage3.d0 != null) {
                                        dialogDownPage3.p0 = bitmap;
                                        if (MainUtil.f6(bitmap)) {
                                            dialogDownPage3.d0.setIconSmall(true);
                                            dialogDownPage3.d0.setImageBitmap(bitmap);
                                        } else if (TextUtils.isEmpty(dialogDownPage3.o0)) {
                                            dialogDownPage3.d0.p(-460552, R.drawable.outline_public_black_24, dialogDownPage3.q0, null);
                                        } else {
                                            ?? obj = new Object();
                                            obj.f16550a = 18;
                                            obj.f16551c = 11;
                                            obj.g = dialogDownPage3.o0;
                                            Bitmap b = MainListLoader.b(obj);
                                            dialogDownPage3.p0 = b;
                                            if (MainUtil.f6(b)) {
                                                dialogDownPage3.d0.setIconSmall(true);
                                                dialogDownPage3.d0.setImageBitmap(b);
                                            } else {
                                                dialogDownPage3.A0 = new MainListLoader(dialogDownPage3.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogDownPage.9
                                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                    public final void a(MainItem.ChildItem childItem, View view) {
                                                        DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                                        MyRoundImage myRoundImage2 = dialogDownPage4.d0;
                                                        if (myRoundImage2 == null) {
                                                            return;
                                                        }
                                                        myRoundImage2.p(-460552, R.drawable.outline_public_black_24, dialogDownPage4.q0, null);
                                                    }

                                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                    public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap2) {
                                                        DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                                        if (dialogDownPage4.d0 == null) {
                                                            return;
                                                        }
                                                        dialogDownPage4.p0 = bitmap2;
                                                        if (MainUtil.f6(bitmap2)) {
                                                            dialogDownPage4.d0.setIconSmall(true);
                                                            dialogDownPage4.d0.setImageBitmap(bitmap2);
                                                        } else {
                                                            dialogDownPage4.d0.p(-460552, R.drawable.outline_public_black_24, dialogDownPage4.q0, null);
                                                        }
                                                    }
                                                });
                                                dialogDownPage3.d0.setTag(0);
                                                dialogDownPage3.A0.e(obj, dialogDownPage3.d0);
                                            }
                                        }
                                    }
                                    dialogDownPage3.e0.setText(dialogDownPage3.q0);
                                    dialogDownPage3.D(dialogDownPage3.r0);
                                    MainUtil.k7(dialogDownPage3.i0, false);
                                    dialogDownPage3.i0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogDownPage.4
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                            if (!dialogDownPage4.v0 && editable != null && !MainUtil.q5(dialogDownPage4.u0, editable.toString())) {
                                                dialogDownPage4.v0 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                        }
                                    });
                                    dialogDownPage3.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogDownPage.5
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                                            DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                            MyEditText myEditText2 = dialogDownPage4.i0;
                                            if (myEditText2 == null || dialogDownPage4.w0) {
                                                return true;
                                            }
                                            dialogDownPage4.w0 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                    DialogDownPage.C(DialogDownPage.this);
                                                    DialogDownPage.this.w0 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    dialogDownPage3.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownPage.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                            ArrayList arrayList = dialogDownPage4.x0;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                MyPopupMenu myPopupMenu = dialogDownPage4.z0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogDownPage4.Y = null;
                                                        myPopupMenu.a();
                                                        dialogDownPage4.z0 = null;
                                                    }
                                                    if (dialogDownPage4.a0 != null && view != null && dialogDownPage4.x0 != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        ArrayList arrayList3 = dialogDownPage4.x0;
                                                        int size = arrayList3.size();
                                                        int i7 = 0;
                                                        int i8 = 0;
                                                        while (i8 < size) {
                                                            Object obj2 = arrayList3.get(i8);
                                                            i8++;
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i7, MainUri.o(dialogDownPage4.b0, (String) obj2)));
                                                            i7++;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i7, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogDownPage4.a0, dialogDownPage4.c0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogDownPage.11
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i9 = DialogDownPage.B0;
                                                                DialogDownPage dialogDownPage5 = DialogDownPage.this;
                                                                MyPopupMenu myPopupMenu3 = dialogDownPage5.z0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogDownPage5.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogDownPage5.z0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view2, int i9) {
                                                                DialogDownPage dialogDownPage5 = DialogDownPage.this;
                                                                ArrayList arrayList4 = dialogDownPage5.x0;
                                                                if (arrayList4 != null && i9 < arrayList4.size()) {
                                                                    dialogDownPage5.E((String) dialogDownPage5.x0.get(i9));
                                                                    return true;
                                                                }
                                                                MainUtil.F4(dialogDownPage5.a0, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        dialogDownPage4.z0 = myPopupMenu2;
                                                        dialogDownPage4.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(dialogDownPage4.a0, MainUri.e());
                                        }
                                    });
                                    dialogDownPage3.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownPage.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                            AppCompatTextView appCompatTextView3 = dialogDownPage4.m0;
                                            if (appCompatTextView3 == null || dialogDownPage4.w0) {
                                                return;
                                            }
                                            dialogDownPage4.w0 = true;
                                            appCompatTextView3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.7.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                    DialogDownPage.C(DialogDownPage.this);
                                                    DialogDownPage.this.w0 = false;
                                                }
                                            });
                                        }
                                    });
                                    dialogDownPage3.g(dialogDownPage3.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownPage.8
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogDownPage dialogDownPage4 = DialogDownPage.this;
                                            if (dialogDownPage4.c0 != null && dialogDownPage4.b0 != null) {
                                                dialogDownPage4.show();
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

    public static void C(DialogDownPage dialogDownPage) {
        if (dialogDownPage.b0 != null && dialogDownPage.i0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogDownPage.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogDownPage.i0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogDownPage.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogDownPage.b0, R.string.long_name);
                return;
            }
            String b4 = MainUtil.b4(Q0, ".mht");
            if (TextUtils.isEmpty(b4)) {
                MainUtil.e8(dialogDownPage.b0, R.string.input_name);
                return;
            }
            String p3 = MainUtil.p3(b4);
            MainUri.e();
            MainUtil.X4(dialogDownPage.b0, dialogDownPage.i0);
            DownPageListener downPageListener = dialogDownPage.s0;
            if (downPageListener != null) {
                downPageListener.a(dialogDownPage.o0, p3, dialogDownPage.p0);
            }
            dialogDownPage.dismiss();
        }
    }

    public final void D(String str) {
        String str2;
        int i;
        if (this.i0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.t0 = str;
        }
        if (this.v0) {
            str2 = MainUtil.Q0(this.i0, true);
        } else {
            str2 = this.t0;
        }
        String p3 = MainUtil.p3(str2);
        if (TextUtils.isEmpty(MainUri.e())) {
            this.u0 = p3;
            this.i0.setText(p3);
            this.l0.setText(R.string.not_selected);
            this.l0.setTextColor(-769226);
            this.f0.setDrawLine(true);
            this.g0.setVisibility(8);
            return;
        }
        this.l0.setText(this.y0);
        AppCompatTextView appCompatTextView = this.l0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        if (TextUtils.isEmpty(p3)) {
            this.u0 = p3;
            this.i0.setText(p3);
            this.f0.setDrawLine(true);
            this.g0.setVisibility(8);
            return;
        }
        String b4 = MainUtil.b4(p3, ".mht");
        MainUri.e();
        this.f0.setDrawLine(true);
        this.g0.setVisibility(8);
        this.u0 = b4;
        this.i0.setText(b4);
    }

    public final void E(String str) {
        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
            return;
        }
        PrefPath.r = str;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.10
            @Override // java.lang.Runnable
            public final void run() {
                DialogDownPage dialogDownPage = DialogDownPage.this;
                if (dialogDownPage.b0 != null) {
                    String e = MainUri.e();
                    PrefSet.h(dialogDownPage.b0, e);
                    dialogDownPage.y0 = MainUri.h(dialogDownPage.b0, e);
                    Handler handler = dialogDownPage.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownPage.10.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogDownPage dialogDownPage2 = DialogDownPage.this;
                            int i = DialogDownPage.B0;
                            dialogDownPage2.D(null);
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.z0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.z0 = null;
        }
        MainListLoader mainListLoader = this.A0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.A0 = null;
        }
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
        }
        MyLineLinear myLineLinear = this.f0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.f0 = null;
        }
        MyEditText myEditText = this.i0;
        if (myEditText != null) {
            myEditText.c();
            this.i0 = null;
        }
        MyLineRelative myLineRelative = this.j0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.g0 = null;
        this.l0 = null;
        this.m0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.x0 = null;
        this.y0 = null;
        super.dismiss();
    }
}
