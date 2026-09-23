package com.mycompany.app.dialog;

import android.content.Context;
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
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
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
import java.io.BufferedWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogPassSave extends MyDialogBottom {
    public static final /* synthetic */ int z0 = 0;
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
    public String p0;
    public String q0;
    public boolean r0;
    public DialogTask s0;
    public ArrayList t0;
    public boolean u0;
    public boolean v0;
    public ArrayList w0;
    public String x0;
    public MyPopupMenu y0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public boolean g;

        public DialogTask(DialogPassSave dialogPassSave, String str) {
            WeakReference weakReference = new WeakReference(dialogPassSave);
            this.e = weakReference;
            DialogPassSave dialogPassSave2 = (DialogPassSave) weakReference.get();
            if (dialogPassSave2 == null) {
                return;
            }
            this.f = str;
            dialogPassSave2.v0 = false;
            dialogPassSave2.t0 = null;
            dialogPassSave2.c0.e(0, 0, true, false);
            dialogPassSave2.i0.setEnabled(false);
            dialogPassSave2.j0.setEnabled(false);
            dialogPassSave2.m0.setEnabled(true);
            dialogPassSave2.m0.setText(R.string.cancel);
            dialogPassSave2.setCanceledOnTouchOutside(false);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v0, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogPassSave.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogPassSave dialogPassSave;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogPassSave = (DialogPassSave) weakReference.get()) == null) {
                return;
            }
            dialogPassSave.s0 = null;
            dialogPassSave.t0 = null;
            MainUtil.e8(dialogPassSave.b0, R.string.cancelled);
            dialogPassSave.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogPassSave dialogPassSave;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogPassSave = (DialogPassSave) weakReference.get()) != null) {
                dialogPassSave.s0 = null;
                if (dialogPassSave.v0) {
                    dialogPassSave.t0 = null;
                    MainUtil.e8(dialogPassSave.b0, R.string.cancelled);
                    dialogPassSave.dismiss();
                    return;
                }
                ArrayList arrayList = dialogPassSave.t0;
                if (arrayList != null && !arrayList.isEmpty()) {
                    if (!this.g) {
                        if (dialogPassSave.c0 == null) {
                            return;
                        }
                        MainUtil.e8(dialogPassSave.b0, R.string.fail);
                        dialogPassSave.t0 = null;
                        dialogPassSave.c0.e(0, 0, false, false);
                        dialogPassSave.i0.setEnabled(true);
                        dialogPassSave.j0.setEnabled(true);
                        dialogPassSave.m0.setEnabled(true);
                        dialogPassSave.m0.setText(R.string.retry);
                        dialogPassSave.setCanceledOnTouchOutside(true);
                        return;
                    }
                    dialogPassSave.t0 = null;
                    MainUtil.e8(dialogPassSave.b0, R.string.success);
                    dialogPassSave.dismiss();
                    return;
                }
                dialogPassSave.t0 = null;
                MainUtil.e8(dialogPassSave.b0, R.string.no_password);
                dialogPassSave.dismiss();
            }
        }
    }

    public DialogPassSave(MainActivity mainActivity) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogPassSave dialogPassSave = DialogPassSave.this;
                Context context = dialogPassSave.b0;
                if (context != null) {
                    ArrayList n = MainUri.n(context);
                    dialogPassSave.w0 = n;
                    PrefPath.r = MainUri.m(dialogPassSave.b0, PrefPath.r, n);
                    dialogPassSave.x0 = MainUri.h(dialogPassSave.b0, MainUri.e());
                    Handler handler = dialogPassSave.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogPassSave.B(DialogPassSave.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogPassSave dialogPassSave) {
        Context context = dialogPassSave.b0;
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
            dialogPassSave.c0 = q;
            dialogPassSave.n0 = relativeLayout;
            dialogPassSave.d0 = myRoundImage;
            dialogPassSave.e0 = appCompatTextView;
            dialogPassSave.f0 = myLineLinear;
            dialogPassSave.g0 = appCompatTextView2;
            dialogPassSave.h0 = j;
            dialogPassSave.i0 = myEditText;
            Handler handler = dialogPassSave.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    MyLineLinear myLineLinear2;
                    final DialogPassSave dialogPassSave2 = DialogPassSave.this;
                    Context context2 = dialogPassSave2.b0;
                    if (context2 != null && (myDialogLinear = dialogPassSave2.c0) != null && dialogPassSave2.n0 != null && (myLineLinear2 = dialogPassSave2.f0) != null) {
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
                        dialogPassSave2.j0 = myLineRelative;
                        dialogPassSave2.k0 = k;
                        dialogPassSave2.l0 = i6;
                        dialogPassSave2.m0 = C;
                        Handler handler2 = dialogPassSave2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                String C2;
                                String str;
                                final DialogPassSave dialogPassSave3 = DialogPassSave.this;
                                if (dialogPassSave3.c0 != null && dialogPassSave3.b0 != null) {
                                    int i7 = -16777216;
                                    if (MainApp.K1) {
                                        dialogPassSave3.h0.setTextColor(-4079167);
                                        dialogPassSave3.k0.setTextColor(-4079167);
                                        dialogPassSave3.d0.o(-460552, R.drawable.outline_lock_dark_24);
                                        dialogPassSave3.g0.setBackgroundColor(-12632257);
                                        dialogPassSave3.g0.setTextColor(-2434342);
                                        dialogPassSave3.e0.setTextColor(-328966);
                                        dialogPassSave3.i0.setTextColor(-328966);
                                        dialogPassSave3.l0.setTextColor(-328966);
                                        dialogPassSave3.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogPassSave3.m0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogPassSave3.m0.setTextColor(-328966);
                                    } else {
                                        dialogPassSave3.h0.setTextColor(-10395295);
                                        dialogPassSave3.k0.setTextColor(-10395295);
                                        dialogPassSave3.d0.o(-460552, R.drawable.outline_lock_black_24);
                                        dialogPassSave3.g0.setBackgroundColor(-460552);
                                        dialogPassSave3.g0.setTextColor(-12303292);
                                        dialogPassSave3.e0.setTextColor(-16777216);
                                        dialogPassSave3.i0.setTextColor(-16777216);
                                        dialogPassSave3.l0.setTextColor(-16777216);
                                        dialogPassSave3.j0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogPassSave3.m0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogPassSave3.m0.setTextColor(-14784824);
                                    }
                                    dialogPassSave3.k0.setText(R.string.save_location);
                                    dialogPassSave3.m0.setText(R.string.save);
                                    String m3 = MainUtil.m3(System.currentTimeMillis());
                                    if (!TextUtils.isEmpty(m3) && m3.endsWith(".")) {
                                        m3 = android.support.v4.media.a.d(1, 0, m3);
                                    }
                                    if (TextUtils.isEmpty(m3)) {
                                        C2 = "Soul_passwords";
                                    } else {
                                        C2 = android.support.v4.media.a.C("Soul_passwords_", m3);
                                    }
                                    dialogPassSave3.o0 = C2;
                                    dialogPassSave3.e0.setText(C2);
                                    String str2 = dialogPassSave3.o0;
                                    if (dialogPassSave3.i0 != null) {
                                        if (!TextUtils.isEmpty(str2)) {
                                            dialogPassSave3.p0 = str2;
                                        }
                                        if (dialogPassSave3.r0) {
                                            str = MainUtil.Q0(dialogPassSave3.i0, true);
                                        } else {
                                            str = dialogPassSave3.p0;
                                        }
                                        String p3 = MainUtil.p3(str);
                                        if (TextUtils.isEmpty(MainUri.e())) {
                                            dialogPassSave3.q0 = p3;
                                            dialogPassSave3.i0.setText(p3);
                                            dialogPassSave3.l0.setText(R.string.not_selected);
                                            dialogPassSave3.l0.setTextColor(-769226);
                                            dialogPassSave3.f0.setDrawLine(true);
                                            dialogPassSave3.g0.setVisibility(8);
                                        } else {
                                            dialogPassSave3.l0.setText(dialogPassSave3.x0);
                                            AppCompatTextView appCompatTextView3 = dialogPassSave3.l0;
                                            if (MainApp.K1) {
                                                i7 = -328966;
                                            }
                                            appCompatTextView3.setTextColor(i7);
                                            if (TextUtils.isEmpty(p3)) {
                                                dialogPassSave3.q0 = p3;
                                                dialogPassSave3.i0.setText(p3);
                                                dialogPassSave3.f0.setDrawLine(true);
                                                dialogPassSave3.g0.setVisibility(8);
                                            } else {
                                                MainUri.e();
                                                dialogPassSave3.f0.setDrawLine(true);
                                                dialogPassSave3.g0.setVisibility(8);
                                                dialogPassSave3.q0 = p3;
                                                dialogPassSave3.i0.setText(p3);
                                            }
                                        }
                                    }
                                    MainUtil.k7(dialogPassSave3.i0, false);
                                    dialogPassSave3.i0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogPassSave.4
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogPassSave dialogPassSave4 = DialogPassSave.this;
                                            if (!dialogPassSave4.r0 && editable != null && !MainUtil.q5(dialogPassSave4.q0, editable.toString())) {
                                                dialogPassSave4.r0 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }
                                    });
                                    dialogPassSave3.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPassSave.5
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                            DialogPassSave dialogPassSave4 = DialogPassSave.this;
                                            MyEditText myEditText2 = dialogPassSave4.i0;
                                            if (myEditText2 == null || dialogPassSave4.u0) {
                                                return true;
                                            }
                                            dialogPassSave4.u0 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                    DialogPassSave.C(DialogPassSave.this);
                                                    DialogPassSave.this.u0 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    dialogPassSave3.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassSave.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogPassSave dialogPassSave4 = DialogPassSave.this;
                                            ArrayList arrayList = dialogPassSave4.w0;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                MyPopupMenu myPopupMenu = dialogPassSave4.y0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogPassSave4.Y = null;
                                                        myPopupMenu.a();
                                                        dialogPassSave4.y0 = null;
                                                    }
                                                    if (dialogPassSave4.a0 != null && view != null && dialogPassSave4.w0 != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        ArrayList arrayList3 = dialogPassSave4.w0;
                                                        int size = arrayList3.size();
                                                        int i8 = 0;
                                                        int i9 = 0;
                                                        while (i9 < size) {
                                                            Object obj = arrayList3.get(i9);
                                                            i9++;
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, MainUri.o(dialogPassSave4.b0, (String) obj)));
                                                            i8++;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogPassSave4.a0, dialogPassSave4.c0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogPassSave.10
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i10 = DialogPassSave.z0;
                                                                DialogPassSave dialogPassSave5 = DialogPassSave.this;
                                                                MyPopupMenu myPopupMenu3 = dialogPassSave5.y0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogPassSave5.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogPassSave5.y0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view2, int i10) {
                                                                DialogPassSave dialogPassSave5 = DialogPassSave.this;
                                                                ArrayList arrayList4 = dialogPassSave5.w0;
                                                                if (arrayList4 != null && i10 < arrayList4.size()) {
                                                                    dialogPassSave5.E((String) dialogPassSave5.w0.get(i10));
                                                                    return true;
                                                                }
                                                                MainUtil.F4(dialogPassSave5.a0, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        dialogPassSave4.y0 = myPopupMenu2;
                                                        dialogPassSave4.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(dialogPassSave4.a0, MainUri.e());
                                        }
                                    });
                                    dialogPassSave3.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPassSave.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogPassSave dialogPassSave4 = DialogPassSave.this;
                                            AppCompatTextView appCompatTextView4 = dialogPassSave4.m0;
                                            if (appCompatTextView4 == null || dialogPassSave4.u0) {
                                                return;
                                            }
                                            dialogPassSave4.u0 = true;
                                            appCompatTextView4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.7.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                    DialogPassSave dialogPassSave5 = DialogPassSave.this;
                                                    if (dialogPassSave5.s0 != null) {
                                                        dialogPassSave5.D();
                                                    } else {
                                                        DialogPassSave.C(dialogPassSave5);
                                                    }
                                                    DialogPassSave.this.u0 = false;
                                                }
                                            });
                                        }
                                    });
                                    dialogPassSave3.g(dialogPassSave3.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPassSave.8
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogPassSave dialogPassSave4 = DialogPassSave.this;
                                            if (dialogPassSave4.c0 != null && dialogPassSave4.b0 != null) {
                                                dialogPassSave4.show();
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

    public static void C(DialogPassSave dialogPassSave) {
        if (dialogPassSave.b0 != null && dialogPassSave.i0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogPassSave.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogPassSave.i0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogPassSave.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogPassSave.b0, R.string.long_name);
                return;
            }
            String p3 = MainUtil.p3(Q0.concat(".csv"));
            MainUri.e();
            MainUtil.X4(dialogPassSave.b0, dialogPassSave.i0);
            DialogTask dialogTask = dialogPassSave.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogPassSave.s0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogPassSave, p3);
            dialogPassSave.s0 = dialogTask2;
            dialogTask2.b(dialogPassSave.b0);
        }
    }

    public final void D() {
        int i;
        if (this.m0 != null && this.s0 != null) {
            this.i0.setEnabled(false);
            this.j0.setEnabled(false);
            this.m0.setEnabled(false);
            this.m0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.m0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView.setTextColor(i);
            this.v0 = true;
            DialogTask dialogTask = this.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.s0 = null;
            return;
        }
        dismiss();
    }

    public final void E(String str) {
        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
            return;
        }
        PrefPath.r = str;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogPassSave dialogPassSave = DialogPassSave.this;
                if (dialogPassSave.b0 != null) {
                    String e = MainUri.e();
                    PrefSet.h(dialogPassSave.b0, e);
                    dialogPassSave.x0 = MainUri.h(dialogPassSave.b0, e);
                    Handler handler = dialogPassSave.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPassSave.9.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            DialogPassSave dialogPassSave2 = DialogPassSave.this;
                            AppCompatTextView appCompatTextView = dialogPassSave2.l0;
                            if (appCompatTextView == null) {
                                return;
                            }
                            appCompatTextView.setText(dialogPassSave2.x0);
                            AppCompatTextView appCompatTextView2 = dialogPassSave2.l0;
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
        });
    }

    public final boolean F(BufferedWriter bufferedWriter, List list) {
        DialogTask dialogTask;
        if (list != null && !list.isEmpty()) {
            try {
                bufferedWriter.write("name,url,username,password\n");
                Iterator it = list.iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        return true;
                    }
                    MainItem.ChildItem childItem = (MainItem.ChildItem) it.next();
                    if (!this.v0 && ((dialogTask = this.s0) == null || !dialogTask.f12839c)) {
                        z = false;
                    }
                    if (z) {
                        break;
                    }
                    bufferedWriter.write(childItem.g + "," + childItem.e + "," + childItem.q + "," + childItem.G + "\n");
                }
            } catch (Exception | OutOfMemoryError unused) {
            }
        }
        return false;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        D();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.s0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.s0 = null;
        MyPopupMenu myPopupMenu = this.y0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.y0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
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
        this.t0 = null;
        this.w0 = null;
        this.x0 = null;
        super.dismiss();
    }
}
