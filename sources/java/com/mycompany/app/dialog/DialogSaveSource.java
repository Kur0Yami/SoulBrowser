package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
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
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.subtitle.Subtitle;
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
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

/* loaded from: classes3.dex */
public class DialogSaveSource extends MyDialogBottom {
    public static final /* synthetic */ int C0 = 0;
    public String A0;
    public MyPopupMenu B0;
    public MainActivity a0;
    public Context b0;
    public DialogDownPage.DownPageListener c0;
    public MyDialogLinear d0;
    public MyRoundImage e0;
    public AppCompatTextView f0;
    public MyLineLinear g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyEditText j0;
    public MyLineRelative k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public RelativeLayout o0;
    public String p0;
    public String q0;
    public boolean r0;
    public DialogTask s0;
    public String t0;
    public String u0;
    public String v0;
    public List w0;
    public boolean x0;
    public boolean y0;
    public ArrayList z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogSaveSource$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogSaveSource dialogSaveSource = DialogSaveSource.this;
            if (dialogSaveSource.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogSaveSource.b0, e);
                dialogSaveSource.A0 = MainUri.h(dialogSaveSource.b0, e);
                Handler handler = dialogSaveSource.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogSaveSource dialogSaveSource2 = DialogSaveSource.this;
                        int i = DialogSaveSource.C0;
                        dialogSaveSource2.F(null);
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public String g;
        public boolean h;

        public DialogTask(DialogSaveSource dialogSaveSource, String str) {
            WeakReference weakReference = new WeakReference(dialogSaveSource);
            this.e = weakReference;
            DialogSaveSource dialogSaveSource2 = (DialogSaveSource) weakReference.get();
            if (dialogSaveSource2 == null) {
                return;
            }
            this.f = str;
            dialogSaveSource2.y0 = false;
            dialogSaveSource2.d0.e(0, 0, true, false);
            dialogSaveSource2.j0.setEnabled(false);
            dialogSaveSource2.k0.setEnabled(false);
            dialogSaveSource2.n0.setEnabled(true);
            dialogSaveSource2.n0.setText(R.string.cancel);
            dialogSaveSource2.setCanceledOnTouchOutside(false);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSaveSource dialogSaveSource;
            MainUri.UriItem c2;
            OutputStream outputStream;
            BufferedWriter bufferedWriter;
            boolean z;
            boolean z2;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSaveSource = (DialogSaveSource) weakReference.get()) != null && !this.f12839c && (c2 = MainUri.c(dialogSaveSource.b0, MainUri.e(), null, this.f)) != null) {
                try {
                    outputStream = dialogSaveSource.b0.getContentResolver().openOutputStream(c2.b);
                    try {
                        bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, StandardCharsets.UTF_8));
                        try {
                            List list = dialogSaveSource.w0;
                            if (list != null && list.size() != 0) {
                                int size = list.size() - 1;
                                Iterator it = list.iterator();
                                int i = 0;
                                while (true) {
                                    if (it.hasNext()) {
                                        String str = (String) it.next();
                                        if (DialogSaveSource.C(dialogSaveSource)) {
                                            z2 = true;
                                            break;
                                        }
                                        if (!TextUtils.isEmpty(str)) {
                                            bufferedWriter.write(str);
                                            bufferedWriter.write("\n");
                                        } else if (i != 0 && i != size) {
                                            bufferedWriter.write("\n");
                                        }
                                        i++;
                                    } else {
                                        z2 = false;
                                        break;
                                    }
                                }
                            } else {
                                Scanner scanner = new Scanner(dialogSaveSource.v0);
                                while (true) {
                                    if (scanner.hasNextLine()) {
                                        if (DialogSaveSource.C(dialogSaveSource)) {
                                            z = true;
                                            break;
                                        }
                                        String nextLine = scanner.nextLine();
                                        if (!TextUtils.isEmpty(nextLine)) {
                                            bufferedWriter.write(nextLine);
                                        }
                                        bufferedWriter.write("\n");
                                    } else {
                                        z = false;
                                        break;
                                    }
                                }
                                scanner.close();
                                z2 = z;
                            }
                            this.h = !z2;
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        bufferedWriter = null;
                    }
                } catch (Exception unused3) {
                    outputStream = null;
                    bufferedWriter = null;
                }
                if (bufferedWriter != null) {
                    try {
                        bufferedWriter.close();
                    } catch (Exception unused4) {
                        this.h = false;
                    }
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused5) {
                        this.h = false;
                    }
                }
                if (this.h) {
                    String str2 = c2.e;
                    this.g = str2;
                    MainUri.UriItem j = MainUri.j(dialogSaveSource.b0, str2, MainUri.e());
                    if (j != null) {
                        DbBookDown.i(dialogSaveSource.b0, this.g, null, j);
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSaveSource dialogSaveSource;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogSaveSource = (DialogSaveSource) weakReference.get()) == null) {
                return;
            }
            dialogSaveSource.s0 = null;
            MainUtil.e8(dialogSaveSource.b0, R.string.cancelled);
            dialogSaveSource.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSaveSource dialogSaveSource;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSaveSource = (DialogSaveSource) weakReference.get()) != null) {
                dialogSaveSource.s0 = null;
                if (DialogSaveSource.C(dialogSaveSource)) {
                    MainUtil.e8(dialogSaveSource.b0, R.string.cancelled);
                    dialogSaveSource.dismiss();
                    return;
                }
                if (!this.h) {
                    if (dialogSaveSource.d0 == null) {
                        return;
                    }
                    MainUtil.e8(dialogSaveSource.b0, R.string.fail);
                    dialogSaveSource.d0.e(0, 0, false, false);
                    dialogSaveSource.j0.setEnabled(true);
                    dialogSaveSource.k0.setEnabled(true);
                    dialogSaveSource.n0.setEnabled(true);
                    dialogSaveSource.n0.setText(R.string.retry);
                    dialogSaveSource.setCanceledOnTouchOutside(true);
                    return;
                }
                DialogDownPage.DownPageListener downPageListener = dialogSaveSource.c0;
                if (downPageListener != null) {
                    downPageListener.a(null, this.g, null);
                }
                dialogSaveSource.dismiss();
            }
        }
    }

    public DialogSaveSource(MainActivity mainActivity, String str, String str2, List list, DialogDownPage.DownPageListener downPageListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = downPageListener;
        this.t0 = str;
        this.v0 = str2;
        this.w0 = list;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogSaveSource dialogSaveSource = DialogSaveSource.this;
                if (dialogSaveSource.b0 != null) {
                    dialogSaveSource.u0 = MainUtil.l3(186, dialogSaveSource.t0, "Source");
                    ArrayList n = MainUri.n(dialogSaveSource.b0);
                    dialogSaveSource.z0 = n;
                    PrefPath.r = MainUri.m(dialogSaveSource.b0, PrefPath.r, n);
                    dialogSaveSource.A0 = MainUri.h(dialogSaveSource.b0, MainUri.e());
                    Handler handler = dialogSaveSource.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogSaveSource.B(DialogSaveSource.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSaveSource dialogSaveSource) {
        Context context = dialogSaveSource.b0;
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
            dialogSaveSource.d0 = q;
            dialogSaveSource.o0 = relativeLayout;
            dialogSaveSource.e0 = myRoundImage;
            dialogSaveSource.f0 = appCompatTextView;
            dialogSaveSource.g0 = myLineLinear;
            dialogSaveSource.h0 = appCompatTextView2;
            dialogSaveSource.i0 = j;
            dialogSaveSource.j0 = myEditText;
            Handler handler = dialogSaveSource.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    MyLineLinear myLineLinear2;
                    final DialogSaveSource dialogSaveSource2 = DialogSaveSource.this;
                    Context context2 = dialogSaveSource2.b0;
                    if (context2 != null && (myDialogLinear = dialogSaveSource2.d0) != null && dialogSaveSource2.o0 != null && (myLineLinear2 = dialogSaveSource2.g0) != null) {
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
                        dialogSaveSource2.k0 = myLineRelative;
                        dialogSaveSource2.l0 = k;
                        dialogSaveSource2.m0 = i6;
                        dialogSaveSource2.n0 = C;
                        Handler handler2 = dialogSaveSource2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                final DialogSaveSource dialogSaveSource3 = DialogSaveSource.this;
                                if (dialogSaveSource3.d0 != null && dialogSaveSource3.b0 != null) {
                                    if (MainApp.K1) {
                                        dialogSaveSource3.i0.setTextColor(-4079167);
                                        dialogSaveSource3.l0.setTextColor(-4079167);
                                        dialogSaveSource3.e0.o(-460552, R.drawable.outline_sticky_note_dark_24);
                                        dialogSaveSource3.h0.setBackgroundColor(-12632257);
                                        dialogSaveSource3.h0.setTextColor(-2434342);
                                        dialogSaveSource3.f0.setTextColor(-328966);
                                        dialogSaveSource3.j0.setTextColor(-328966);
                                        dialogSaveSource3.m0.setTextColor(-328966);
                                        dialogSaveSource3.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogSaveSource3.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogSaveSource3.n0.setTextColor(-328966);
                                    } else {
                                        dialogSaveSource3.i0.setTextColor(-10395295);
                                        dialogSaveSource3.l0.setTextColor(-10395295);
                                        dialogSaveSource3.e0.o(-460552, R.drawable.outline_sticky_note_black_24);
                                        dialogSaveSource3.h0.setBackgroundColor(-460552);
                                        dialogSaveSource3.h0.setTextColor(-12303292);
                                        dialogSaveSource3.f0.setTextColor(-16777216);
                                        dialogSaveSource3.j0.setTextColor(-16777216);
                                        dialogSaveSource3.m0.setTextColor(-16777216);
                                        dialogSaveSource3.k0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogSaveSource3.n0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogSaveSource3.n0.setTextColor(-14784824);
                                    }
                                    dialogSaveSource3.l0.setText(R.string.save_location);
                                    dialogSaveSource3.n0.setText(R.string.save);
                                    dialogSaveSource3.f0.setText(dialogSaveSource3.t0);
                                    dialogSaveSource3.F(dialogSaveSource3.u0);
                                    MainUtil.k7(dialogSaveSource3.j0, false);
                                    dialogSaveSource3.j0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogSaveSource.4
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogSaveSource dialogSaveSource4 = DialogSaveSource.this;
                                            if (!dialogSaveSource4.r0 && editable != null && !MainUtil.q5(dialogSaveSource4.q0, editable.toString())) {
                                                dialogSaveSource4.r0 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                        }
                                    });
                                    dialogSaveSource3.j0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogSaveSource.5
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                                            DialogSaveSource dialogSaveSource4 = DialogSaveSource.this;
                                            MyEditText myEditText2 = dialogSaveSource4.j0;
                                            if (myEditText2 == null || dialogSaveSource4.x0) {
                                                return true;
                                            }
                                            dialogSaveSource4.x0 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                    DialogSaveSource.D(DialogSaveSource.this);
                                                    DialogSaveSource.this.x0 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    dialogSaveSource3.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSaveSource.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogSaveSource dialogSaveSource4 = DialogSaveSource.this;
                                            ArrayList arrayList = dialogSaveSource4.z0;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                MyPopupMenu myPopupMenu = dialogSaveSource4.B0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogSaveSource4.Y = null;
                                                        myPopupMenu.a();
                                                        dialogSaveSource4.B0 = null;
                                                    }
                                                    if (dialogSaveSource4.a0 != null && view != null && dialogSaveSource4.z0 != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        ArrayList arrayList3 = dialogSaveSource4.z0;
                                                        int size = arrayList3.size();
                                                        int i7 = 0;
                                                        int i8 = 0;
                                                        while (i8 < size) {
                                                            Object obj = arrayList3.get(i8);
                                                            i8++;
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i7, MainUri.o(dialogSaveSource4.b0, (String) obj)));
                                                            i7++;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i7, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSaveSource4.a0, dialogSaveSource4.d0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSaveSource.10
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i9 = DialogSaveSource.C0;
                                                                DialogSaveSource dialogSaveSource5 = DialogSaveSource.this;
                                                                MyPopupMenu myPopupMenu3 = dialogSaveSource5.B0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogSaveSource5.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogSaveSource5.B0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view2, int i9) {
                                                                DialogSaveSource dialogSaveSource5 = DialogSaveSource.this;
                                                                ArrayList arrayList4 = dialogSaveSource5.z0;
                                                                if (arrayList4 != null && i9 < arrayList4.size()) {
                                                                    String str = (String) dialogSaveSource5.z0.get(i9);
                                                                    if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                                        return true;
                                                                    }
                                                                    PrefPath.r = str;
                                                                    dialogSaveSource5.s(new AnonymousClass9());
                                                                    return true;
                                                                }
                                                                MainUtil.F4(dialogSaveSource5.a0, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        dialogSaveSource4.B0 = myPopupMenu2;
                                                        dialogSaveSource4.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(dialogSaveSource4.a0, MainUri.e());
                                        }
                                    });
                                    dialogSaveSource3.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSaveSource.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSaveSource dialogSaveSource4 = DialogSaveSource.this;
                                            AppCompatTextView appCompatTextView3 = dialogSaveSource4.n0;
                                            if (appCompatTextView3 == null || dialogSaveSource4.x0) {
                                                return;
                                            }
                                            dialogSaveSource4.x0 = true;
                                            appCompatTextView3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveSource.7.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                    DialogSaveSource.D(DialogSaveSource.this);
                                                    DialogSaveSource.this.x0 = false;
                                                }
                                            });
                                        }
                                    });
                                    dialogSaveSource3.g(dialogSaveSource3.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSaveSource.8
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSaveSource dialogSaveSource4 = DialogSaveSource.this;
                                            if (dialogSaveSource4.d0 != null && dialogSaveSource4.b0 != null) {
                                                dialogSaveSource4.show();
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

    public static boolean C(DialogSaveSource dialogSaveSource) {
        if (!dialogSaveSource.y0) {
            DialogTask dialogTask = dialogSaveSource.s0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public static void D(DialogSaveSource dialogSaveSource) {
        if (dialogSaveSource.b0 != null && dialogSaveSource.j0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogSaveSource.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogSaveSource.j0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogSaveSource.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogSaveSource.b0, R.string.long_name);
                return;
            }
            String p3 = MainUtil.p3(Q0);
            MainUri.e();
            MainUtil.X4(dialogSaveSource.b0, dialogSaveSource.j0);
            DialogTask dialogTask = dialogSaveSource.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogSaveSource.s0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogSaveSource, p3);
            dialogSaveSource.s0 = dialogTask2;
            dialogTask2.b(dialogSaveSource.b0);
        }
    }

    public final boolean E(int i, int i2, Intent intent) {
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
                    s(new AnonymousClass9());
                }
                MainUtil.z7(this.b0, data);
            }
            return true;
        }
        return false;
    }

    public final void F(String str) {
        String str2;
        int i;
        if (this.j0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.p0 = str;
        }
        if (this.r0) {
            str2 = MainUtil.Q0(this.j0, true);
        } else {
            str2 = this.p0;
        }
        String p3 = MainUtil.p3(str2);
        if (TextUtils.isEmpty(MainUri.e())) {
            this.q0 = p3;
            this.j0.setText(p3);
            this.m0.setText(R.string.not_selected);
            this.m0.setTextColor(-769226);
            this.g0.setDrawLine(true);
            this.h0.setVisibility(8);
            return;
        }
        this.m0.setText(this.A0);
        AppCompatTextView appCompatTextView = this.m0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        appCompatTextView.setTextColor(i);
        if (TextUtils.isEmpty(p3)) {
            this.q0 = p3;
            this.j0.setText(p3);
            this.g0.setDrawLine(true);
            this.h0.setVisibility(8);
            return;
        }
        if (!TextUtils.isEmpty(p3)) {
            for (int i2 = 0; i2 < 10; i2++) {
                if (p3.endsWith(Subtitle.b[i2])) {
                    break;
                }
            }
        }
        p3 = MainUtil.b4(p3, ".txt");
        MainUri.e();
        this.g0.setDrawLine(true);
        this.h0.setVisibility(8);
        this.q0 = p3;
        this.j0.setText(p3);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        int i;
        if (this.n0 != null && this.s0 != null) {
            this.j0.setEnabled(false);
            this.k0.setEnabled(false);
            this.n0.setEnabled(false);
            this.n0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.n0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView.setTextColor(i);
            this.y0 = true;
            DialogTask dialogTask = this.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.s0 = null;
            return;
        }
        dismiss();
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
        MyPopupMenu myPopupMenu = this.B0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.B0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRoundImage myRoundImage = this.e0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.e0 = null;
        }
        MyLineLinear myLineLinear = this.g0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.g0 = null;
        }
        MyEditText myEditText = this.j0;
        if (myEditText != null) {
            myEditText.c();
            this.j0 = null;
        }
        MyLineRelative myLineRelative = this.k0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.h0 = null;
        this.m0 = null;
        this.n0 = null;
        this.p0 = null;
        this.q0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.z0 = null;
        this.A0 = null;
        super.dismiss();
    }
}
