package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogWebBookMove extends MyDialogBottom {
    public Context a0;
    public BookMoveListener b0;
    public String c0;
    public List d0;
    public final int e0;
    public MyDialogLinear f0;
    public MyRoundImage g0;
    public AppCompatTextView h0;
    public MyEditText i0;
    public LinearLayout j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyProgressBar m0;
    public MyLineText n0;
    public DialogTask o0;
    public MainListLoader p0;
    public boolean q0;
    public String r0;

    /* loaded from: classes3.dex */
    public interface BookMoveListener {
        void a();

        void b(ArrayList arrayList, String str);
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final String g;
        public final String h;
        public final int i;
        public int j;
        public int k;
        public ArrayList l;

        public DialogTask(DialogWebBookMove dialogWebBookMove, List list, String str, String str2, int i) {
            WeakReference weakReference = new WeakReference(dialogWebBookMove);
            this.e = weakReference;
            if (((DialogWebBookMove) weakReference.get()) == null) {
                return;
            }
            this.f = list;
            this.g = str;
            this.h = str2;
            this.i = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:184:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01f1  */
        /* JADX WARN: Type inference failed for: r2v10, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1034
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookMove.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogWebBookMove dialogWebBookMove;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookMove = (DialogWebBookMove) weakReference.get()) != null) {
                dialogWebBookMove.o0 = null;
                BookMoveListener bookMoveListener = dialogWebBookMove.b0;
                if (bookMoveListener != null) {
                    bookMoveListener.b(this.l, dialogWebBookMove.c0);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogWebBookMove dialogWebBookMove;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookMove = (DialogWebBookMove) weakReference.get()) != null) {
                dialogWebBookMove.o0 = null;
                BookMoveListener bookMoveListener = dialogWebBookMove.b0;
                if (bookMoveListener != null) {
                    bookMoveListener.b(this.l, dialogWebBookMove.c0);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void g() {
            DialogWebBookMove dialogWebBookMove;
            AppCompatTextView appCompatTextView;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogWebBookMove = (DialogWebBookMove) weakReference.get()) == null || (appCompatTextView = dialogWebBookMove.l0) == null) {
                return;
            }
            int i = this.k;
            int i2 = this.j;
            if (i > i2) {
                this.k = i2;
            }
            appCompatTextView.setText(MainUtil.h3(this.k, i2));
            dialogWebBookMove.m0.setMax(this.j);
            dialogWebBookMove.m0.setProgress(this.k);
        }
    }

    public DialogWebBookMove(Activity activity, List list, String str, int i, BookMoveListener bookMoveListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = bookMoveListener;
        this.c0 = str;
        this.d0 = list;
        this.e0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebBookMove.B(DialogWebBookMove.this);
            }
        });
    }

    public static void B(DialogWebBookMove dialogWebBookMove) {
        MyRoundImage myRoundImage;
        AppCompatTextView i;
        Context context = dialogWebBookMove.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            int i2 = dialogWebBookMove.e0;
            if (i2 != 2 && i2 != 4) {
                myRoundImage = null;
                i = null;
            } else {
                MyLineFrame myLineFrame = new MyLineFrame(context);
                myLineFrame.a(MainApp.E1);
                q.addView(myLineFrame, -1, G);
                myRoundImage = new MyRoundImage(context);
                myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                int i3 = MainApp.f1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
                layoutParams.gravity = 8388627;
                layoutParams.setMarginStart(MainApp.E1);
                myLineFrame.addView(myRoundImage, layoutParams);
                i = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                i.setEllipsize(TextUtils.TruncateAt.END);
                i.setTextSize(1, 16.0f);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams2.gravity = 16;
                layoutParams2.setMarginStart(G);
                layoutParams2.setMarginEnd(MainApp.E1);
                myLineFrame.addView(i, layoutParams2);
            }
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams3.weight = 1.0f;
            q.addView(m, layoutParams3);
            FrameLayout frameLayout = new FrameLayout(context);
            m.addView(frameLayout, -1, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHintTextColor(-8289919);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            myEditText.setVisibility(8);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G);
            layoutParams4.setMarginStart(MainApp.E1);
            layoutParams4.setMarginEnd(MainApp.E1);
            frameLayout.addView(myEditText, layoutParams4);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            linearLayout.setOrientation(1);
            linearLayout.setVisibility(8);
            frameLayout.addView(linearLayout, -1, -2);
            FrameLayout frameLayout2 = new FrameLayout(context);
            int i4 = MainApp.F1;
            frameLayout2.setPadding(0, i4, 0, i4);
            linearLayout.addView(frameLayout2, -1, -2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j.setText(R.string.total);
            frameLayout2.addView(j, -2, -2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams5.gravity = 8388613;
            frameLayout2.addView(j2, layoutParams5);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            linearLayout.addView(myProgressBar, -1, (int) MainUtil.G(context, 12.0f));
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogWebBookMove.f0 = q;
            dialogWebBookMove.g0 = myRoundImage;
            dialogWebBookMove.h0 = i;
            dialogWebBookMove.i0 = myEditText;
            dialogWebBookMove.j0 = linearLayout;
            dialogWebBookMove.k0 = j;
            dialogWebBookMove.l0 = j2;
            dialogWebBookMove.m0 = myProgressBar;
            dialogWebBookMove.n0 = myLineText;
            Handler handler = dialogWebBookMove.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogWebBookMove dialogWebBookMove2 = DialogWebBookMove.this;
                    int i5 = dialogWebBookMove2.e0;
                    if (dialogWebBookMove2.f0 != null && dialogWebBookMove2.a0 != null && dialogWebBookMove2.d0 != null) {
                        if (MainApp.K1) {
                            AppCompatTextView appCompatTextView = dialogWebBookMove2.h0;
                            if (appCompatTextView != null) {
                                appCompatTextView.setTextColor(-328966);
                            }
                            dialogWebBookMove2.i0.setTextColor(-328966);
                            dialogWebBookMove2.k0.setTextColor(-328966);
                            dialogWebBookMove2.l0.setTextColor(-328966);
                            dialogWebBookMove2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogWebBookMove2.n0.setTextColor(-328966);
                        } else {
                            AppCompatTextView appCompatTextView2 = dialogWebBookMove2.h0;
                            if (appCompatTextView2 != null) {
                                appCompatTextView2.setTextColor(-16777216);
                            }
                            dialogWebBookMove2.i0.setTextColor(-16777216);
                            dialogWebBookMove2.k0.setTextColor(-16777216);
                            dialogWebBookMove2.l0.setTextColor(-16777216);
                            dialogWebBookMove2.n0.setBackgroundResource(R.drawable.selector_normal);
                            dialogWebBookMove2.n0.setTextColor(-14784824);
                        }
                        String str = ((MainItem.ChildItem) dialogWebBookMove2.d0.get(0)).h;
                        if (i5 == 2) {
                            if (dialogWebBookMove2.h0 != null) {
                                if (dialogWebBookMove2.d0.size() == 1) {
                                    dialogWebBookMove2.h0.setText(str);
                                } else {
                                    dialogWebBookMove2.h0.setText(dialogWebBookMove2.d0.size() + dialogWebBookMove2.a0.getString(R.string.items));
                                }
                                dialogWebBookMove2.E(dialogWebBookMove2.d0);
                                dialogWebBookMove2.n0.setText(R.string.delete);
                                dialogWebBookMove2.n0.setDrawLine(false);
                            } else {
                                return;
                            }
                        } else if (i5 == 4) {
                            AppCompatTextView appCompatTextView3 = dialogWebBookMove2.h0;
                            if (appCompatTextView3 != null) {
                                appCompatTextView3.setText(str);
                                dialogWebBookMove2.E(dialogWebBookMove2.d0);
                                dialogWebBookMove2.n0.setText(R.string.rename);
                                dialogWebBookMove2.i0.setVisibility(0);
                                dialogWebBookMove2.i0.setText(str);
                                dialogWebBookMove2.i0.setSelectAllOnFocus(true);
                                dialogWebBookMove2.i0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogWebBookMove dialogWebBookMove3 = DialogWebBookMove.this;
                                        MyEditText myEditText2 = dialogWebBookMove3.i0;
                                        if (myEditText2 == null) {
                                            return;
                                        }
                                        myEditText2.requestFocus();
                                        dialogWebBookMove3.i0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MyEditText myEditText3;
                                                DialogWebBookMove dialogWebBookMove4 = DialogWebBookMove.this;
                                                Context context2 = dialogWebBookMove4.a0;
                                                if (context2 != null && (myEditText3 = dialogWebBookMove4.i0) != null) {
                                                    MainUtil.c8(context2, myEditText3);
                                                }
                                            }
                                        }, 200L);
                                    }
                                });
                                dialogWebBookMove2.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebBookMove.4
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i6, KeyEvent keyEvent) {
                                        DialogWebBookMove dialogWebBookMove3 = DialogWebBookMove.this;
                                        MyEditText myEditText2 = dialogWebBookMove3.i0;
                                        if (myEditText2 == null || dialogWebBookMove3.q0) {
                                            return true;
                                        }
                                        dialogWebBookMove3.q0 = true;
                                        myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogWebBookMove dialogWebBookMove4 = DialogWebBookMove.this;
                                                List list = dialogWebBookMove4.d0;
                                                if (list != null) {
                                                    String str2 = ((MainItem.ChildItem) list.get(0)).h;
                                                    List list2 = dialogWebBookMove4.d0;
                                                    dialogWebBookMove4.D(dialogWebBookMove4.e0, dialogWebBookMove4.c0, str2, list2);
                                                }
                                                dialogWebBookMove4.q0 = false;
                                            }
                                        });
                                        return true;
                                    }
                                });
                            } else {
                                return;
                            }
                        }
                        dialogWebBookMove2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookMove.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogWebBookMove dialogWebBookMove3 = DialogWebBookMove.this;
                                MyLineText myLineText2 = dialogWebBookMove3.n0;
                                if (myLineText2 != null) {
                                    if (myLineText2.isActivated()) {
                                        dialogWebBookMove3.C();
                                    } else {
                                        if (dialogWebBookMove3.q0) {
                                            return;
                                        }
                                        dialogWebBookMove3.q0 = true;
                                        dialogWebBookMove3.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookMove.5.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogWebBookMove dialogWebBookMove4 = DialogWebBookMove.this;
                                                List list = dialogWebBookMove4.d0;
                                                if (list != null) {
                                                    String str2 = ((MainItem.ChildItem) list.get(0)).h;
                                                    List list2 = dialogWebBookMove4.d0;
                                                    dialogWebBookMove4.D(dialogWebBookMove4.e0, dialogWebBookMove4.c0, str2, list2);
                                                }
                                                dialogWebBookMove4.q0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        if (i5 == 3) {
                            dialogWebBookMove2.D(i5, dialogWebBookMove2.c0, str, dialogWebBookMove2.d0);
                        }
                        dialogWebBookMove2.g(dialogWebBookMove2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebBookMove.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogWebBookMove dialogWebBookMove3 = DialogWebBookMove.this;
                                if (dialogWebBookMove3.f0 == null) {
                                    return;
                                }
                                dialogWebBookMove3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        int i;
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null && this.o0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.n0.setEnabled(false);
            this.n0.setActivated(true);
            this.n0.setText(R.string.canceling);
            MyLineText myLineText = this.n0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.o0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.o0 = null;
            return;
        }
        dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(int r11, java.lang.String r12, java.lang.String r13, java.util.List r14) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookMove.D(int, java.lang.String, java.lang.String, java.util.List):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void E(List list) {
        if (this.g0 != null && list != null && !list.isEmpty()) {
            if (list.size() != 1) {
                this.g0.o(-460552, R.drawable.outline_public_black_24);
                return;
            }
            MainItem.ChildItem childItem = (MainItem.ChildItem) list.get(0);
            if (childItem != null) {
                int i = childItem.f16551c;
                if (i != 11) {
                    this.g0.o(childItem.v, childItem.w);
                    return;
                }
                ?? obj = new Object();
                obj.f16550a = 17;
                obj.f16551c = i;
                String str = childItem.z;
                obj.g = str;
                obj.z = str;
                obj.y = childItem.y;
                obj.J = childItem.J;
                obj.v = childItem.v;
                obj.w = childItem.w;
                obj.h = childItem.h;
                if (TextUtils.isEmpty(str)) {
                    this.g0.p(childItem.v, childItem.w, childItem.h, null);
                    return;
                }
                Bitmap b = MainListLoader.b(obj);
                if (MainUtil.f6(b)) {
                    this.g0.setIconSmall(true);
                    this.g0.setImageBitmap(b);
                } else {
                    this.p0 = new MainListLoader(this.a0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogWebBookMove.7
                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                        public final void a(MainItem.ChildItem childItem2, View view) {
                            MyRoundImage myRoundImage = DialogWebBookMove.this.g0;
                            if (myRoundImage != null && childItem2 != null) {
                                myRoundImage.p(childItem2.v, childItem2.w, childItem2.h, null);
                            }
                        }

                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                        public final void b(MainItem.ChildItem childItem2, View view, Bitmap bitmap) {
                            DialogWebBookMove dialogWebBookMove = DialogWebBookMove.this;
                            MyRoundImage myRoundImage = dialogWebBookMove.g0;
                            if (myRoundImage == null) {
                                return;
                            }
                            myRoundImage.setIconSmall(true);
                            dialogWebBookMove.g0.setImageBitmap(bitmap);
                        }
                    });
                    this.g0.setTag(Integer.valueOf(obj.J));
                    this.p0.e(obj, this.g0);
                }
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        C();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.o0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.o0 = null;
        MainListLoader mainListLoader = this.p0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.p0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyRoundImage myRoundImage = this.g0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.g0 = null;
        }
        MyEditText myEditText = this.i0;
        if (myEditText != null) {
            myEditText.c();
            this.i0 = null;
        }
        MyProgressBar myProgressBar = this.m0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.m0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.h0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.r0 = null;
        super.dismiss();
    }
}
