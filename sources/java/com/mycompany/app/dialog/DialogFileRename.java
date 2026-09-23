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
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DialogFileRename extends MyDialogBottom {
    public Context a0;
    public final int b0;
    public MainItem.ChildItem c0;
    public final boolean d0;
    public FileRenameListener e0;
    public MyDialogLinear f0;
    public MyRoundImage g0;
    public AppCompatTextView h0;
    public MyEditText i0;
    public MyLineText j0;
    public DialogTask k0;
    public MainListLoader l0;
    public boolean m0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public int f;
        public final long g;
        public final String h;
        public final String i;
        public String j;
        public String k;
        public boolean l;

        public DialogTask(DialogFileRename dialogFileRename, String str) {
            WeakReference weakReference = new WeakReference(dialogFileRename);
            this.e = weakReference;
            DialogFileRename dialogFileRename2 = (DialogFileRename) weakReference.get();
            if (dialogFileRename2 == null) {
                return;
            }
            MainItem.ChildItem childItem = dialogFileRename2.c0;
            this.f = childItem.f16550a;
            this.g = childItem.y;
            this.h = childItem.g;
            this.i = childItem.h;
            this.k = str;
            DialogFileRename.D(dialogFileRename2, true);
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 440
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogFileRename.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogFileRename dialogFileRename;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogFileRename = (DialogFileRename) weakReference.get()) == null) {
                return;
            }
            dialogFileRename.k0 = null;
            dialogFileRename.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogFileRename dialogFileRename;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogFileRename = (DialogFileRename) weakReference.get()) != null) {
                dialogFileRename.k0 = null;
                if (!this.l) {
                    MainUtil.e8(dialogFileRename.a0, R.string.fail);
                    DialogFileRename.D(dialogFileRename, false);
                    return;
                }
                MainUtil.e8(dialogFileRename.a0, R.string.success);
                FileRenameListener fileRenameListener = dialogFileRename.e0;
                if (fileRenameListener != null) {
                    fileRenameListener.a(this.f, this.j, this.g);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface FileRenameListener {
        void a(int i, String str, long j);
    }

    public DialogFileRename(Activity activity, int i, MainItem.ChildItem childItem, FileRenameListener fileRenameListener) {
        super(activity);
        if (childItem != null && !TextUtils.isEmpty(childItem.g)) {
            this.a0 = getContext();
            this.b0 = i;
            this.c0 = childItem;
            this.e0 = fileRenameListener;
            if (i == 1) {
                this.d0 = true;
            } else if (i == 32 && childItem.f16550a == 8) {
                this.d0 = true;
            }
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogFileRename.B(DialogFileRename.this);
                    }
                });
            }
        }
    }

    public static void B(DialogFileRename dialogFileRename) {
        Context context = dialogFileRename.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            q.addView(frameLayout, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            frameLayout.addView(myRoundImage, layoutParams);
            AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            i2.setEllipsize(TextUtils.TruncateAt.END);
            i2.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(MainApp.E1);
            frameLayout.addView(i2, layoutParams2);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            myEditText.b(0);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, G);
            layoutParams3.setMarginStart(MainApp.E1);
            layoutParams3.setMarginEnd(MainApp.E1);
            q.addView(myEditText, layoutParams3);
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogFileRename.f0 = q;
            dialogFileRename.g0 = myRoundImage;
            dialogFileRename.h0 = i2;
            dialogFileRename.i0 = myEditText;
            dialogFileRename.j0 = r;
            Handler handler = dialogFileRename.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.2
                /* JADX WARN: Type inference failed for: r3v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogFileRename dialogFileRename2 = DialogFileRename.this;
                    int i3 = dialogFileRename2.b0;
                    if (dialogFileRename2.f0 != null && dialogFileRename2.a0 != null) {
                        if (MainApp.K1) {
                            dialogFileRename2.h0.setTextColor(-328966);
                            dialogFileRename2.i0.setTextColor(-328966);
                            dialogFileRename2.j0.setTextColor(-328966);
                            dialogFileRename2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogFileRename2.h0.setTextColor(-16777216);
                            dialogFileRename2.i0.setTextColor(-16777216);
                            dialogFileRename2.j0.setTextColor(-14784824);
                            dialogFileRename2.j0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        MainItem.ChildItem childItem = dialogFileRename2.c0;
                        MyRoundImage myRoundImage2 = dialogFileRename2.g0;
                        if (myRoundImage2 != null && childItem != null) {
                            if (i3 == 32 && childItem.d != 3) {
                                myRoundImage2.o(childItem.v, childItem.w);
                            } else {
                                int i4 = childItem.f16551c;
                                if (i4 != 1 && i4 != 2 && i4 != 3 && i4 != 4 && i4 != 5 && i4 != 6 && i4 != 11) {
                                    myRoundImage2.o(childItem.v, childItem.w);
                                } else {
                                    ?? obj = new Object();
                                    if (i4 == 11) {
                                        obj.f16550a = i3;
                                        obj.f16551c = i4;
                                        String str = childItem.z;
                                        obj.g = str;
                                        obj.z = str;
                                        obj.y = childItem.y;
                                        obj.J = childItem.J;
                                        obj.v = childItem.v;
                                        obj.w = childItem.w;
                                        childItem = obj;
                                    }
                                    if (TextUtils.isEmpty(childItem.g)) {
                                        dialogFileRename2.g0.o(childItem.v, childItem.w);
                                    } else {
                                        Bitmap b = MainListLoader.b(childItem);
                                        if (MainUtil.f6(b)) {
                                            if (childItem.f16551c == 4) {
                                                dialogFileRename2.g0.setBackColor(-460552);
                                            }
                                            dialogFileRename2.g0.setImageBitmap(b);
                                        } else {
                                            dialogFileRename2.l0 = new MainListLoader(dialogFileRename2.a0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogFileRename.7
                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void a(MainItem.ChildItem childItem2, View view) {
                                                }

                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void b(MainItem.ChildItem childItem2, View view, Bitmap bitmap) {
                                                    DialogFileRename dialogFileRename3 = DialogFileRename.this;
                                                    if (childItem2 != null && childItem2.f16551c == 4) {
                                                        dialogFileRename3.g0.setBackColor(-460552);
                                                    }
                                                    dialogFileRename3.g0.r(null, true);
                                                    dialogFileRename3.g0.setImageBitmap(bitmap);
                                                }
                                            });
                                            dialogFileRename2.g0.o(childItem.v, childItem.w);
                                            dialogFileRename2.g0.setTag(Integer.valueOf(childItem.J));
                                            dialogFileRename2.l0.e(childItem, dialogFileRename2.g0);
                                        }
                                    }
                                }
                            }
                        }
                        dialogFileRename2.h0.setText(dialogFileRename2.c0.h);
                        dialogFileRename2.i0.setText(dialogFileRename2.c0.h);
                        MainUtil.k7(dialogFileRename2.i0, dialogFileRename2.d0);
                        dialogFileRename2.j0.setText(R.string.rename);
                        dialogFileRename2.i0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogFileRename dialogFileRename3 = DialogFileRename.this;
                                MyEditText myEditText2 = dialogFileRename3.i0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.requestFocus();
                                dialogFileRename3.i0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditText myEditText3;
                                        DialogFileRename dialogFileRename4 = DialogFileRename.this;
                                        Context context2 = dialogFileRename4.a0;
                                        if (context2 != null && (myEditText3 = dialogFileRename4.i0) != null) {
                                            MainUtil.c8(context2, myEditText3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        dialogFileRename2.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogFileRename.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                                DialogFileRename dialogFileRename3 = DialogFileRename.this;
                                MyEditText myEditText2 = dialogFileRename3.i0;
                                if (myEditText2 == null || dialogFileRename3.m0) {
                                    return true;
                                }
                                dialogFileRename3.m0 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogFileRename.C(DialogFileRename.this);
                                        DialogFileRename.this.m0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogFileRename2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogFileRename.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogFileRename dialogFileRename3 = DialogFileRename.this;
                                MyLineText myLineText = dialogFileRename3.j0;
                                if (myLineText != null) {
                                    if (myLineText.isActivated()) {
                                        dialogFileRename3.E();
                                    } else {
                                        if (dialogFileRename3.m0) {
                                            return;
                                        }
                                        dialogFileRename3.m0 = true;
                                        dialogFileRename3.j0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogFileRename.5.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                DialogFileRename.C(DialogFileRename.this);
                                                DialogFileRename.this.m0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogFileRename2.g(dialogFileRename2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogFileRename.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogFileRename dialogFileRename3 = DialogFileRename.this;
                                if (dialogFileRename3.f0 == null) {
                                    return;
                                }
                                dialogFileRename3.setCanceledOnTouchOutside(true);
                                dialogFileRename3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogFileRename dialogFileRename) {
        MyEditText myEditText;
        String str;
        if (dialogFileRename.c0 != null && (myEditText = dialogFileRename.i0) != null) {
            String Q0 = MainUtil.Q0(myEditText, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogFileRename.a0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogFileRename.a0, R.string.long_name);
                return;
            }
            String str2 = dialogFileRename.c0.h;
            if (dialogFileRename.d0) {
                if (dialogFileRename.b0 == 1) {
                    str = ".album";
                } else {
                    str = ".mht";
                }
                Q0 = MainUtil.b4(Q0, str);
                if (TextUtils.isEmpty(Q0)) {
                    MainUtil.e8(dialogFileRename.a0, R.string.input_name);
                    return;
                }
                str2 = android.support.v4.media.a.p(new StringBuilder(), dialogFileRename.c0.h, str);
            } else if ("mht".equalsIgnoreCase(MainUtil.V0(Q0))) {
                MainUtil.e8(dialogFileRename.a0, R.string.noti_invalid);
                return;
            }
            if (Q0.equalsIgnoreCase(str2)) {
                MainUtil.e8(dialogFileRename.a0, R.string.same_name);
                return;
            }
            String p3 = MainUtil.p3(Q0);
            DialogTask dialogTask = dialogFileRename.k0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogFileRename.k0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogFileRename, p3);
            dialogFileRename.k0 = dialogTask2;
            dialogTask2.b(dialogFileRename.a0);
        }
    }

    public static void D(DialogFileRename dialogFileRename, boolean z) {
        MyDialogLinear myDialogLinear = dialogFileRename.f0;
        if (myDialogLinear == null) {
            return;
        }
        int i = -328966;
        if (z) {
            dialogFileRename.setCanceledOnTouchOutside(false);
            dialogFileRename.f0.e(0, 0, true, false);
            dialogFileRename.j0.setActivated(true);
            dialogFileRename.j0.setText(R.string.cancel);
            MyLineText myLineText = dialogFileRename.j0;
            if (!MainApp.K1) {
                i = -16777216;
            }
            myLineText.setTextColor(i);
            dialogFileRename.i0.setEnabled(false);
            return;
        }
        myDialogLinear.e(0, 0, false, false);
        dialogFileRename.j0.setText(R.string.rename);
        MyLineText myLineText2 = dialogFileRename.j0;
        if (!MainApp.K1) {
            i = -14784824;
        }
        myLineText2.setTextColor(i);
        dialogFileRename.j0.setActivated(false);
        dialogFileRename.i0.setEnabled(true);
        dialogFileRename.setCanceledOnTouchOutside(true);
    }

    public final void E() {
        int i;
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null && this.k0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.j0.setEnabled(false);
            this.j0.setActivated(true);
            this.j0.setText(R.string.canceling);
            MyLineText myLineText = this.j0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.k0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.k0 = null;
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
        DialogTask dialogTask = this.k0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.k0 = null;
        MainListLoader mainListLoader = this.l0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.l0 = null;
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
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.e0 = null;
        this.h0 = null;
        super.dismiss();
    }
}
