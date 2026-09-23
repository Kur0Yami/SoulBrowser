package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogEditVpn extends MyDialogBottom {
    public static final /* synthetic */ int t0 = 0;
    public Activity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public MyButtonImage f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public MyEditText[] k0;
    public MyLineText l0;
    public DialogTask m0;
    public HttpURLConnection n0;
    public boolean o0;
    public DialogConfirm p0;
    public boolean q0;
    public String r0;
    public String s0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public String g;

        public DialogTask(DialogEditVpn dialogEditVpn, String str) {
            WeakReference weakReference = new WeakReference(dialogEditVpn);
            this.e = weakReference;
            DialogEditVpn dialogEditVpn2 = (DialogEditVpn) weakReference.get();
            if (dialogEditVpn2 != null) {
                this.f = str;
                MyDialogLinear myDialogLinear = dialogEditVpn2.d0;
                if (myDialogLinear == null) {
                    return;
                }
                myDialogLinear.e(0, 0, true, false);
                dialogEditVpn2.d0.setBlockTouch(true);
                dialogEditVpn2.setCanceledOnTouchOutside(false);
                dialogEditVpn2.o0 = false;
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogEditVpn dialogEditVpn;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditVpn = (DialogEditVpn) weakReference.get()) != null && !this.f12839c && dialogEditVpn.b0 != null) {
                String str = this.f;
                int i = 0;
                ArrayList B = DialogEditVpn.B(dialogEditVpn, str, false);
                ArrayList B2 = DialogEditVpn.B(dialogEditVpn, str, true);
                if ((B != null && !B.isEmpty()) || (B2 != null && !B2.isEmpty())) {
                    ArrayList arrayList = new ArrayList();
                    if (B != null && !B.isEmpty()) {
                        arrayList.addAll(B);
                        if (B.size() == 1) {
                            arrayList.add("x");
                        }
                    } else {
                        arrayList.add("x");
                        arrayList.add("x");
                    }
                    if (B2 != null && !B2.isEmpty()) {
                        arrayList.addAll(B2);
                        if (B2.size() == 1) {
                            arrayList.add("x");
                        }
                    } else {
                        arrayList.add("x");
                        arrayList.add("x");
                    }
                    int size = arrayList.size();
                    StringBuilder sb = null;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        String str2 = (String) obj;
                        if (sb == null) {
                            sb = new StringBuilder();
                        } else {
                            sb.append(",");
                        }
                        sb.append(str2);
                    }
                    this.g = sb.toString();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogEditVpn dialogEditVpn;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogEditVpn = (DialogEditVpn) weakReference.get()) == null) {
                return;
            }
            dialogEditVpn.m0 = null;
            dialogEditVpn.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogEditVpn dialogEditVpn;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditVpn = (DialogEditVpn) weakReference.get()) != null) {
                dialogEditVpn.m0 = null;
                MyDialogLinear myDialogLinear = dialogEditVpn.d0;
                if (myDialogLinear == null) {
                    return;
                }
                myDialogLinear.e(0, 0, false, false);
                dialogEditVpn.d0.setBlockTouch(false);
                dialogEditVpn.setCanceledOnTouchOutside(true);
                String str = this.f;
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.g)) {
                    dialogEditVpn.r0 = str;
                    String str2 = this.g;
                    dialogEditVpn.s0 = str2;
                    dialogEditVpn.F(str2, true);
                    return;
                }
                if (dialogEditVpn.o0) {
                    MainUtil.e8(dialogEditVpn.b0, R.string.check_network);
                } else {
                    MainUtil.e8(dialogEditVpn.b0, R.string.invalid_url);
                }
            }
        }
    }

    public DialogEditVpn(Activity activity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = activity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditVpn.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditVpn.C(DialogEditVpn.this);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList B(com.mycompany.app.dialog.DialogEditVpn r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditVpn.B(com.mycompany.app.dialog.DialogEditVpn, java.lang.String, boolean):java.util.ArrayList");
    }

    public static void C(DialogEditVpn dialogEditVpn) {
        Context context = dialogEditVpn.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            int G = (int) MainUtil.G(context, 12.0f);
            int G2 = (int) MainUtil.G(context, 88.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setPadding(0, G, 0, G);
            g.addView(frameLayout, -1, G2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.setMarginStart(MainApp.E1);
            layoutParams2.setMarginEnd(MainApp.E1);
            frameLayout.addView(j, layoutParams2);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHintTextColor(-8289919);
            myEditText.setInputType(16);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams3.gravity = 8388691;
            layoutParams3.setMarginStart(MainApp.E1);
            layoutParams3.setMarginEnd(MainApp.i1);
            frameLayout.addView(myEditText, layoutParams3);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams4.gravity = 8388693;
            layoutParams4.setMarginEnd(MainApp.F1);
            frameLayout.addView(myButtonImage, layoutParams4);
            FrameLayout frameLayout2 = new FrameLayout(context);
            int i3 = MainApp.E1;
            frameLayout2.setPadding(i3, G, i3, G);
            g.addView(frameLayout2, -1, G2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout2.addView(j2, -2, -2);
            MyEditText myEditText2 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 17, true, 3);
            myEditText2.setTextSize(1, 16.0f);
            if (i >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setHintTextColor(-8289919);
            myEditText2.setInputType(2);
            myEditText2.setKeyListener(DigitsKeyListener.getInstance("0123456789."));
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams5.gravity = 8388691;
            frameLayout2.addView(myEditText2, layoutParams5);
            FrameLayout frameLayout3 = new FrameLayout(context);
            int i4 = MainApp.E1;
            frameLayout3.setPadding(i4, G, i4, G);
            g.addView(frameLayout3, -1, G2);
            AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout3.addView(j3, -2, -2);
            MyEditText myEditText3 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText3, 17, true, 3);
            myEditText3.setTextSize(1, 16.0f);
            if (i >= 29) {
                myEditText3.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText3.setHintTextColor(-8289919);
            myEditText3.setInputType(2);
            myEditText3.setKeyListener(DigitsKeyListener.getInstance("0123456789."));
            myEditText3.setImeOptions(268435456);
            myEditText3.setBackground(null);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.gravity = 8388691;
            frameLayout3.addView(myEditText3, layoutParams6);
            FrameLayout frameLayout4 = new FrameLayout(context);
            int i5 = MainApp.E1;
            frameLayout4.setPadding(i5, G, i5, G);
            g.addView(frameLayout4, -1, G2);
            AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout4.addView(j4, -2, -2);
            MyEditText myEditText4 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText4, 17, true, 3);
            myEditText4.setTextSize(1, 16.0f);
            if (i >= 29) {
                myEditText4.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText4.setHintTextColor(-8289919);
            myEditText4.setInputType(16);
            myEditText4.setImeOptions(268435456);
            myEditText4.setBackground(null);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams7.gravity = 8388691;
            frameLayout4.addView(myEditText4, layoutParams7);
            FrameLayout frameLayout5 = new FrameLayout(context);
            int i6 = MainApp.E1;
            frameLayout5.setPadding(i6, G, i6, G);
            g.addView(frameLayout5, -1, G2);
            AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            frameLayout5.addView(j5, -2, -2);
            MyEditText myEditText5 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText5, 17, true, 3);
            myEditText5.setTextSize(1, 16.0f);
            if (i >= 29) {
                myEditText5.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText5.setHintTextColor(-8289919);
            myEditText5.setInputType(16);
            myEditText5.setImeOptions(268435456);
            myEditText5.setBackground(null);
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams8.gravity = 8388691;
            frameLayout5.addView(myEditText5, layoutParams8);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.apply);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            q.addView(myLineText, -1, MainApp.g1);
            dialogEditVpn.d0 = q;
            dialogEditVpn.e0 = j;
            dialogEditVpn.f0 = myButtonImage;
            dialogEditVpn.g0 = j2;
            dialogEditVpn.h0 = j3;
            dialogEditVpn.i0 = j4;
            dialogEditVpn.j0 = j5;
            dialogEditVpn.l0 = myLineText;
            dialogEditVpn.k0 = r1;
            MyEditText[] myEditTextArr = {myEditText, myEditText2, myEditText3, myEditText4, myEditText5};
            Handler handler = dialogEditVpn.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditVpn.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditVpn dialogEditVpn2 = DialogEditVpn.this;
                    if (dialogEditVpn2.d0 != null && dialogEditVpn2.b0 != null) {
                        if (MainApp.K1) {
                            dialogEditVpn2.e0.setTextColor(-4079167);
                            dialogEditVpn2.g0.setTextColor(-4079167);
                            dialogEditVpn2.h0.setTextColor(-4079167);
                            dialogEditVpn2.i0.setTextColor(-4079167);
                            dialogEditVpn2.j0.setTextColor(-4079167);
                            dialogEditVpn2.f0.setImageResource(R.drawable.outline_search_dark_24);
                            dialogEditVpn2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditVpn2.l0.setTextColor(-328966);
                            dialogEditVpn2.f0.setBgPreColor(-12632257);
                            for (MyEditText myEditText6 : dialogEditVpn2.k0) {
                                myEditText6.setTextColor(-328966);
                            }
                        } else {
                            dialogEditVpn2.e0.setTextColor(-10395295);
                            dialogEditVpn2.g0.setTextColor(-16777216);
                            dialogEditVpn2.h0.setTextColor(-16777216);
                            dialogEditVpn2.i0.setTextColor(-16777216);
                            dialogEditVpn2.j0.setTextColor(-16777216);
                            dialogEditVpn2.f0.setImageResource(R.drawable.outline_search_black_24);
                            dialogEditVpn2.l0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditVpn2.l0.setTextColor(-14784824);
                            dialogEditVpn2.f0.setBgPreColor(-2039584);
                            for (MyEditText myEditText7 : dialogEditVpn2.k0) {
                                myEditText7.setTextColor(-16777216);
                            }
                        }
                        dialogEditVpn2.e0.setText(R.string.url);
                        dialogEditVpn2.g0.setText("IPv4 Primary");
                        dialogEditVpn2.h0.setText("IPv4 Secondary");
                        dialogEditVpn2.i0.setText("IPv6 Primary");
                        dialogEditVpn2.j0.setText("IPv6 Secondary");
                        dialogEditVpn2.k0[0].setHint("https://example.com/...");
                        dialogEditVpn2.k0[1].setHint("x.x.x.x");
                        dialogEditVpn2.k0[2].setHint("x.x.x.x");
                        dialogEditVpn2.k0[3].setHint("x:x:x:x:x:x:x:x");
                        dialogEditVpn2.k0[4].setHint("x:x:x:x:x:x:x:x");
                        if (!TextUtils.isEmpty(PrefTts.A)) {
                            dialogEditVpn2.k0[0].setText(PrefTts.A);
                        }
                        if (!TextUtils.isEmpty(PrefTts.B)) {
                            dialogEditVpn2.F(PrefTts.B, false);
                        }
                        MyEditText[] myEditTextArr2 = dialogEditVpn2.k0;
                        if (myEditTextArr2 != null && myEditTextArr2.length == 5) {
                            dialogEditVpn2.G(myEditTextArr2[0]);
                            for (MyEditText myEditText8 : dialogEditVpn2.k0) {
                                myEditText8.setSelectAllOnFocus(true);
                                myEditText8.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.6
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view, boolean z) {
                                        if (!z) {
                                            return;
                                        }
                                        int i7 = DialogEditVpn.t0;
                                        DialogEditVpn.this.G(view);
                                    }
                                });
                            }
                        }
                        dialogEditVpn2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditVpn dialogEditVpn3 = DialogEditVpn.this;
                                MyLineText myLineText2 = dialogEditVpn3.l0;
                                if (myLineText2 == null || dialogEditVpn3.q0) {
                                    return;
                                }
                                dialogEditVpn3.q0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditVpn.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogEditVpn dialogEditVpn4 = DialogEditVpn.this;
                                        int i7 = DialogEditVpn.t0;
                                        String D = dialogEditVpn4.D();
                                        if (!TextUtils.isEmpty(D)) {
                                            String I1 = MainUtil.I1(D, false);
                                            if (TextUtils.isEmpty(I1)) {
                                                MainUtil.e8(dialogEditVpn4.b0, R.string.invalid_url);
                                            } else if (I1.equals(dialogEditVpn4.r0) && !TextUtils.isEmpty(dialogEditVpn4.s0)) {
                                                dialogEditVpn4.F(dialogEditVpn4.s0, true);
                                            } else {
                                                DialogTask dialogTask = dialogEditVpn4.m0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogEditVpn4.m0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogEditVpn4, I1);
                                                dialogEditVpn4.m0 = dialogTask2;
                                                dialogTask2.b(dialogEditVpn4.b0);
                                            }
                                        }
                                        dialogEditVpn4.q0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditVpn2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditVpn dialogEditVpn3 = DialogEditVpn.this;
                                MyLineText myLineText2 = dialogEditVpn3.l0;
                                if (myLineText2 == null || dialogEditVpn3.q0) {
                                    return;
                                }
                                dialogEditVpn3.q0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditVpn.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        boolean z;
                                        int indexOf;
                                        DialogEditVpn dialogEditVpn4 = DialogEditVpn.this;
                                        int i7 = DialogEditVpn.t0;
                                        String D = dialogEditVpn4.D();
                                        if (!TextUtils.isEmpty(D)) {
                                            String str = null;
                                            StringBuilder sb = null;
                                            int i8 = 0;
                                            boolean z2 = true;
                                            while (true) {
                                                if (i8 < 4) {
                                                    if (sb == null) {
                                                        sb = new StringBuilder();
                                                    } else {
                                                        sb.append(",");
                                                    }
                                                    int i9 = i8 + 1;
                                                    String Q0 = MainUtil.Q0(dialogEditVpn4.k0[i9], true);
                                                    if (TextUtils.isEmpty(Q0)) {
                                                        sb.append("x");
                                                    } else {
                                                        if (i8 < 2) {
                                                            z = MainUtil.i6(Q0);
                                                        } else {
                                                            if (!TextUtils.isEmpty(Q0)) {
                                                                String k = android.support.v4.media.a.k(Q0, ":");
                                                                int i10 = 0;
                                                                int i11 = 0;
                                                                boolean z3 = false;
                                                                while (i10 < k.length() && (indexOf = k.indexOf(58, i10)) >= i10) {
                                                                    if (i11 == 8) {
                                                                        break;
                                                                    }
                                                                    if (i10 != indexOf) {
                                                                        String substring = k.substring(i10, indexOf);
                                                                        if (indexOf == k.length() - 1 && substring.indexOf(46) > 0) {
                                                                            if (!MainUtil.i6(substring)) {
                                                                                break;
                                                                            } else {
                                                                                i11++;
                                                                            }
                                                                        } else {
                                                                            try {
                                                                                int parseInt = Integer.parseInt(k.substring(i10, indexOf), 16);
                                                                                if (parseInt < 0 || parseInt > 65535) {
                                                                                    break;
                                                                                }
                                                                            } catch (NumberFormatException unused) {
                                                                            }
                                                                        }
                                                                    } else if (indexOf != 1 && indexOf != k.length() - 1 && z3) {
                                                                        break;
                                                                    } else {
                                                                        z3 = true;
                                                                    }
                                                                    i10 = indexOf + 1;
                                                                    i11++;
                                                                }
                                                                if (i11 == 8 || z3) {
                                                                    z = true;
                                                                }
                                                            }
                                                            z = false;
                                                        }
                                                        if (!z) {
                                                            MainUtil.b7(dialogEditVpn4.k0[i9]);
                                                            MainUtil.e8(dialogEditVpn4.b0, R.string.noti_invalid);
                                                            break;
                                                        } else {
                                                            sb.append(Q0);
                                                            z2 = false;
                                                        }
                                                    }
                                                    i8 = i9;
                                                } else if (z2) {
                                                    MainUtil.b7(dialogEditVpn4.k0[1]);
                                                    MainUtil.e8(dialogEditVpn4.b0, R.string.empty);
                                                } else {
                                                    str = sb.toString();
                                                }
                                            }
                                            if (!TextUtils.isEmpty(str)) {
                                                if (PrefTts.z != -1 || !MainUtil.q5(PrefTts.A, D) || !MainUtil.q5(PrefTts.B, str)) {
                                                    PrefTts.z = -1;
                                                    PrefTts.A = D;
                                                    PrefTts.B = str;
                                                    PrefTts r = PrefTts.r(dialogEditVpn4.b0, false);
                                                    r.n(PrefTts.z, "mVpnServer");
                                                    r.p("mVpnUrl", PrefTts.A);
                                                    r.p("mVpnIps", PrefTts.B);
                                                    r.a();
                                                    DialogSetFull.DialogApplyListener dialogApplyListener = dialogEditVpn4.c0;
                                                    if (dialogApplyListener != null) {
                                                        dialogApplyListener.a();
                                                    }
                                                }
                                                dialogEditVpn4.dismiss();
                                            }
                                        }
                                        dialogEditVpn4.q0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditVpn2.g(dialogEditVpn2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.5
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditVpn dialogEditVpn3 = DialogEditVpn.this;
                                if (dialogEditVpn3.d0 == null) {
                                    return;
                                }
                                dialogEditVpn3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final String D() {
        MyEditText myEditText;
        MyEditText[] myEditTextArr = this.k0;
        if (myEditTextArr != null && myEditTextArr.length == 5 && (myEditText = myEditTextArr[0]) != null) {
            String S6 = MainUtil.S6(MainUtil.Q0(myEditText, true));
            if (TextUtils.isEmpty(S6)) {
                MainUtil.b7(myEditText);
                MainUtil.e8(this.b0, R.string.input_url);
                return null;
            }
            if (S6.startsWith("https://") && S6.length() != 8) {
                if (S6.indexOf(47, 8) <= 8) {
                    MainUtil.b7(myEditText);
                    MainUtil.e8(this.b0, R.string.invalid_url);
                    return null;
                }
                return S6;
            }
            MainUtil.b7(myEditText);
            MainUtil.e8(this.b0, R.string.invalid_url);
        }
        return null;
    }

    public final void E() {
        DialogConfirm dialogConfirm = this.p0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.p0 = null;
        }
    }

    public final void F(String str, boolean z) {
        String[] split2;
        MyEditText[] myEditTextArr = this.k0;
        if (myEditTextArr != null && myEditTextArr.length == 5 && !TextUtils.isEmpty(str) && (split2 = str.split(",")) != null && split2.length == 4) {
            for (int i = 0; i < 4; i++) {
                String str2 = split2[i];
                if (!TextUtils.isEmpty(str2) && !"x".equals(str2)) {
                    this.k0[i + 1].setText(str2);
                } else {
                    this.k0[i + 1].setText((CharSequence) null);
                }
            }
            if (PrefTts.C && z && this.a0 != null && this.p0 == null) {
                E();
                StringBuilder sb = new StringBuilder();
                com.google.android.gms.internal.mlkit_vision_text_common.a.x(this.b0, R.string.vpn_ip_guide_1, sb, "\n");
                sb.append(this.b0.getString(R.string.vpn_ip_guide_2));
                DialogConfirm dialogConfirm = new DialogConfirm(this.a0, sb.toString(), true, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.8
                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                    public final void a(boolean z2) {
                        DialogEditVpn dialogEditVpn = DialogEditVpn.this;
                        if (z2) {
                            PrefTts.C = false;
                            PrefSet.d(12, dialogEditVpn.b0, "mVpnGuide", false);
                        }
                        int i2 = DialogEditVpn.t0;
                        dialogEditVpn.E();
                    }
                });
                this.p0 = dialogConfirm;
                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditVpn.9
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i2 = DialogEditVpn.t0;
                        DialogEditVpn.this.E();
                    }
                });
            }
        }
    }

    public final void G(View view) {
        MyEditText[] myEditTextArr;
        int i;
        if (view != null && (myEditTextArr = this.k0) != null) {
            for (MyEditText myEditText : myEditTextArr) {
                if (myEditText.equals(view)) {
                    i = -14784824;
                } else {
                    i = -2434342;
                }
                myEditText.setElineColor(i);
            }
        }
    }

    public final void H(boolean z) {
        if (z) {
            HttpURLConnection httpURLConnection = this.n0;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.n0 = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.n0;
        this.n0 = null;
        if (httpURLConnection2 == null) {
            return;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditVpn.7
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        E();
        H(false);
        DialogTask dialogTask = this.m0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.m0 = null;
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyEditText[] myEditTextArr = this.k0;
        if (myEditTextArr != null) {
            for (MyEditText myEditText : myEditTextArr) {
                if (myEditText != null) {
                    myEditText.c();
                }
            }
            this.k0 = null;
        }
        MyButtonImage myButtonImage = this.f0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.f0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.r0 = null;
        this.s0 = null;
        super.dismiss();
    }
}
