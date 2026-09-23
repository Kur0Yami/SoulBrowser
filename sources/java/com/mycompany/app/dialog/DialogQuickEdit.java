package com.mycompany.app.dialog;

import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
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
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.dialog.DialogQuickColor;
import com.mycompany.app.dialog.DialogQuickIcon;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebViewActivity;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogQuickEdit extends MyDialogBottom {
    public static final /* synthetic */ int G0 = 0;
    public MainListLoader A0;
    public MyPopupMenu B0;
    public Uri C0;
    public String D0;
    public DialogQuickIcon E0;
    public DialogQuickColor F0;
    public WebViewActivity a0;
    public Context b0;
    public QuickEditListener c0;
    public final boolean d0;
    public final boolean e0;
    public String f0;
    public String g0;
    public Bitmap h0;
    public boolean i0;
    public Bitmap j0;
    public boolean k0;
    public final int l0;
    public int m0;
    public List n0;
    public boolean o0;
    public boolean p0;
    public MyDialogLinear q0;
    public MyRoundImage r0;
    public MyLineView s0;
    public View t0;
    public MyEditText u0;
    public AppCompatTextView v0;
    public MyEditText w0;
    public MyLineText x0;
    public DialogTask y0;
    public boolean z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public final String h;
        public int i;
        public int j;
        public boolean k;

        public DialogTask(DialogQuickEdit dialogQuickEdit, String str, String str2, String str3) {
            int i;
            WeakReference weakReference = new WeakReference(dialogQuickEdit);
            this.e = weakReference;
            DialogQuickEdit dialogQuickEdit2 = (DialogQuickEdit) weakReference.get();
            if (dialogQuickEdit2 == null) {
                return;
            }
            this.f = str;
            this.g = str2;
            this.h = str3;
            this.i = dialogQuickEdit2.m0;
            dialogQuickEdit2.setCanceledOnTouchOutside(false);
            dialogQuickEdit2.u0.setEnabled(false);
            MyEditText myEditText = dialogQuickEdit2.w0;
            if (myEditText != null) {
                myEditText.setEnabled(false);
            }
            dialogQuickEdit2.q0.e(0, 0, true, false);
            dialogQuickEdit2.x0.setActivated(true);
            dialogQuickEdit2.x0.setText(R.string.cancel);
            MyLineText myLineText = dialogQuickEdit2.x0;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            myLineText.setTextColor(i);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogQuickEdit dialogQuickEdit;
            String str;
            boolean z;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogQuickEdit = (DialogQuickEdit) weakReference.get()) != null) {
                boolean z2 = dialogQuickEdit.e0;
                if (!this.f12839c) {
                    boolean z3 = dialogQuickEdit.d0;
                    String str2 = this.h;
                    String str3 = this.g;
                    try {
                        if (!z3 && !z2) {
                            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
                                this.j = DbBookQuick.j(dialogQuickEdit.b0);
                                ContentValues e = a.e("_path", str3, "_title", str2);
                                e.put("_order", Integer.valueOf(this.j));
                                e.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
                                if (MainUtil.f6(dialogQuickEdit.j0)) {
                                    this.i = 0;
                                    try {
                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                        dialogQuickEdit.j0.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                                        e.put("_icon", byteArrayOutputStream.toByteArray());
                                        byteArrayOutputStream.close();
                                        e.put("_rsv4", (Integer) 0);
                                        MainListLoader.g(str3, dialogQuickEdit.j0, PrefSync.k);
                                        DbUtil.e(DbBookQuick.i(dialogQuickEdit.b0).getWritableDatabase(), "DbBookQuick_table", e);
                                        this.k = true;
                                    } catch (Exception unused) {
                                        DbUtil.e(DbBookQuick.i(dialogQuickEdit.b0).getWritableDatabase(), "DbBookQuick_table", e);
                                        this.k = true;
                                    }
                                }
                                if (this.i == 0) {
                                    this.i = DbBookQuick.m();
                                }
                                e.put("_rsv4", Integer.valueOf(this.i));
                                DbUtil.e(DbBookQuick.i(dialogQuickEdit.b0).getWritableDatabase(), "DbBookQuick_table", e);
                                this.k = true;
                            }
                            return;
                        }
                        String str4 = this.f;
                        if (!TextUtils.isEmpty(str4)) {
                            if (z2 || (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2))) {
                                if (PrefSync.k) {
                                    str = "1";
                                } else {
                                    str = "0";
                                }
                                String[] strArr = {str, str4};
                                ContentValues contentValues = new ContentValues();
                                if (z2) {
                                    contentValues.put("_rsv6", Integer.valueOf(!dialogQuickEdit.p0 ? 1 : 0));
                                } else {
                                    contentValues.put("_path", str3);
                                }
                                contentValues.put("_title", str2);
                                if (MainUtil.f6(dialogQuickEdit.j0)) {
                                    this.i = 0;
                                    try {
                                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                        dialogQuickEdit.j0.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                                        contentValues.put("_icon", byteArrayOutputStream2.toByteArray());
                                        byteArrayOutputStream2.close();
                                        contentValues.put("_rsv4", (Integer) 0);
                                        MainListLoader.g(str3, dialogQuickEdit.j0, PrefSync.k);
                                    } catch (Exception unused2) {
                                    }
                                    z = true;
                                } else {
                                    if (this.i == 0) {
                                        this.i = DbBookQuick.m();
                                    }
                                    contentValues.put("_rsv4", Integer.valueOf(this.i));
                                    z = true;
                                    contentValues.put("_icon", new byte[1]);
                                }
                                DbUtil.h(DbBookQuick.i(dialogQuickEdit.b0).getWritableDatabase(), "DbBookQuick_table", contentValues, "_secret=? AND _path=?", strArr);
                                this.k = z;
                            }
                        }
                    } catch (Exception unused3) {
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogQuickEdit dialogQuickEdit;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogQuickEdit = (DialogQuickEdit) weakReference.get()) == null) {
                return;
            }
            dialogQuickEdit.y0 = null;
            dialogQuickEdit.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogQuickEdit dialogQuickEdit;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogQuickEdit = (DialogQuickEdit) weakReference.get()) != null) {
                dialogQuickEdit.y0 = null;
                if (!this.k) {
                    if (dialogQuickEdit.q0 != null) {
                        dialogQuickEdit.setCanceledOnTouchOutside(true);
                        dialogQuickEdit.u0.setEnabled(true);
                        MyEditText myEditText = dialogQuickEdit.w0;
                        if (myEditText != null) {
                            myEditText.setEnabled(true);
                        }
                        dialogQuickEdit.q0.e(0, 0, false, false);
                        dialogQuickEdit.x0.setActivated(false);
                        dialogQuickEdit.x0.setText(R.string.apply);
                        MyLineText myLineText = dialogQuickEdit.x0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -14784824;
                        }
                        myLineText.setTextColor(i);
                        MainUtil.e8(dialogQuickEdit.b0, R.string.update_fail);
                        return;
                    }
                    return;
                }
                if (dialogQuickEdit.d0) {
                    if (dialogQuickEdit.p0) {
                        QuickEditListener quickEditListener = dialogQuickEdit.c0;
                        if (quickEditListener != null) {
                            quickEditListener.b(this.f, this.g, this.h, this.i, dialogQuickEdit.n0);
                            return;
                        }
                        return;
                    }
                    QuickEditListener quickEditListener2 = dialogQuickEdit.c0;
                    if (quickEditListener2 != null) {
                        quickEditListener2.b(this.f, this.g, this.h, this.i, null);
                        return;
                    }
                    return;
                }
                QuickEditListener quickEditListener3 = dialogQuickEdit.c0;
                if (quickEditListener3 != null) {
                    quickEditListener3.a(this.g, this.i, this.j, this.h);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface QuickEditListener {
        void a(String str, int i, int i2, String str2);

        void b(String str, String str2, String str3, int i, List list);
    }

    public DialogQuickEdit(WebViewActivity webViewActivity, boolean z, String str, String str2, Bitmap bitmap, int i, boolean z2, List list, QuickEditListener quickEditListener) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = quickEditListener;
        this.d0 = z2;
        this.e0 = z;
        this.f0 = str;
        this.g0 = str2;
        this.h0 = bitmap;
        this.l0 = i;
        this.n0 = list;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogQuickEdit.B(DialogQuickEdit.this);
            }
        });
    }

    public static void B(DialogQuickEdit dialogQuickEdit) {
        View view;
        MyEditText myEditText;
        MyEditText myEditText2;
        Context context = dialogQuickEdit.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
            MyLineView myLineView = new MyLineView(context);
            myLineView.a((int) MainUtil.G(context, 2.0f));
            myLineView.setVisibility(8);
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart((int) MainUtil.G(context, 12.0f));
            myLineFrame.addView(myLineView, layoutParams2);
            AppCompatTextView appCompatTextView = null;
            if (PrefAlbum.m) {
                view = new View(context);
                view.setBackgroundResource(R.drawable.noti_dot_red);
                int i3 = MainApp.F1;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                int G2 = (int) MainUtil.G(context, 9.0f);
                layoutParams3.topMargin = G2;
                layoutParams3.setMarginStart(G2);
                myLineFrame.addView(view, layoutParams3);
            } else {
                view = null;
            }
            MyEditText myEditText3 = new MyEditText(context);
            myEditText3.setGravity(16);
            myEditText3.setSingleLine(true);
            myEditText3.setTextDirection(3);
            myEditText3.setTextSize(1, 16.0f);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 29) {
                myEditText3.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText3.setHint(R.string.name);
            myEditText3.setHintTextColor(-8289919);
            myEditText3.setImeOptions(268435456);
            myEditText3.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 16;
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(myEditText3, layoutParams4);
            if (!dialogQuickEdit.e0) {
                NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
                layoutParams5.weight = 1.0f;
                q.addView(m, layoutParams5);
                FrameLayout frameLayout = new FrameLayout(context);
                m.addView(frameLayout, -1, -2);
                int G3 = (int) MainUtil.G(context, 12.0f);
                int G4 = (int) MainUtil.G(context, 88.0f);
                FrameLayout frameLayout2 = new FrameLayout(context);
                int i5 = MainApp.E1;
                frameLayout2.setPadding(i5, G3, i5, G3);
                frameLayout.addView(frameLayout2, -1, G4);
                myEditText2 = myEditText3;
                AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                frameLayout2.addView(j, -2, -2);
                MyEditText myEditText4 = new MyEditText(context);
                com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText4, 16, true, 3);
                myEditText4.setTextSize(1, 16.0f);
                if (i4 >= 29) {
                    myEditText4.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditText4.setHintTextColor(-8289919);
                myEditText4.setInputType(16);
                myEditText4.setImeOptions(268435456);
                myEditText4.setBackground(null);
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                layoutParams6.gravity = 80;
                frameLayout2.addView(myEditText4, layoutParams6);
                MyLineFrame myLineFrame2 = new MyLineFrame(context);
                int i6 = MainApp.E1;
                myLineFrame2.setPadding(i6, G3, i6, G3);
                myLineFrame2.d(MainApp.E1);
                myLineFrame2.setVisibility(8);
                FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, G4);
                layoutParams7.topMargin = G4;
                frameLayout.addView(myLineFrame2, layoutParams7);
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                appCompatTextView2.setTextSize(1, 14.0f);
                myLineFrame2.addView(appCompatTextView2, -2, -2);
                MyEditText myEditText5 = new MyEditText(context);
                com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText5, 16, true, 3);
                myEditText5.setTextSize(1, 16.0f);
                if (i4 >= 29) {
                    myEditText5.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditText5.setHintTextColor(-8289919);
                myEditText5.setInputType(16);
                myEditText5.setImeOptions(268435456);
                myEditText5.setBackground(null);
                FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                layoutParams8.gravity = 80;
                myLineFrame2.addView(myEditText5, layoutParams8);
                myEditText = myEditText4;
                appCompatTextView = j;
            } else {
                myEditText = null;
                myEditText2 = myEditText3;
            }
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogQuickEdit.q0 = q;
            dialogQuickEdit.r0 = myRoundImage;
            dialogQuickEdit.s0 = myLineView;
            dialogQuickEdit.t0 = view;
            dialogQuickEdit.u0 = myEditText2;
            dialogQuickEdit.v0 = appCompatTextView;
            dialogQuickEdit.w0 = myEditText;
            dialogQuickEdit.x0 = r;
            Handler handler = dialogQuickEdit.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i7;
                    int i8;
                    final DialogQuickEdit dialogQuickEdit2 = DialogQuickEdit.this;
                    Bitmap bitmap = dialogQuickEdit2.h0;
                    dialogQuickEdit2.h0 = null;
                    if (dialogQuickEdit2.q0 != null && dialogQuickEdit2.b0 != null) {
                        if (MainApp.K1) {
                            dialogQuickEdit2.s0.setBackgroundResource(R.drawable.selector_overlay_dark);
                            dialogQuickEdit2.s0.c(MainApp.n1, -328966);
                            dialogQuickEdit2.u0.setTextColor(-328966);
                            dialogQuickEdit2.x0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogQuickEdit2.x0.setTextColor(-328966);
                        } else {
                            dialogQuickEdit2.s0.setBackgroundResource(R.drawable.selector_overlay);
                            dialogQuickEdit2.s0.setLineColor(-14784824);
                            dialogQuickEdit2.u0.setTextColor(-16777216);
                            dialogQuickEdit2.x0.setBackgroundResource(R.drawable.selector_normal);
                            dialogQuickEdit2.x0.setTextColor(-14784824);
                        }
                        dialogQuickEdit2.s0.setVisibility(0);
                        dialogQuickEdit2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                final DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                MyPopupMenu myPopupMenu = dialogQuickEdit3.B0;
                                if (myPopupMenu == null) {
                                    if (myPopupMenu != null) {
                                        dialogQuickEdit3.Y = null;
                                        myPopupMenu.a();
                                        dialogQuickEdit3.B0 = null;
                                    }
                                    if (dialogQuickEdit3.a0 != null && view2 != null) {
                                        if (PrefAlbum.m) {
                                            PrefAlbum.m = false;
                                            PrefSet.d(0, dialogQuickEdit3.b0, "mNotiQuick", false);
                                        }
                                        View view3 = dialogQuickEdit3.t0;
                                        if (view3 != null) {
                                            view3.setVisibility(8);
                                            dialogQuickEdit3.t0 = null;
                                        }
                                        dialogQuickEdit3.C0 = null;
                                        dialogQuickEdit3.D0 = null;
                                        ArrayList arrayList = new ArrayList();
                                        if (dialogQuickEdit3.e0) {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.default_title));
                                        } else {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.web_title));
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.camera));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.color_title));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogQuickEdit3.a0, dialogQuickEdit3.q0, view2, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.13
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i9 = DialogQuickEdit.G0;
                                                DialogQuickEdit dialogQuickEdit4 = DialogQuickEdit.this;
                                                MyPopupMenu myPopupMenu3 = dialogQuickEdit4.B0;
                                                if (myPopupMenu3 != null) {
                                                    dialogQuickEdit4.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogQuickEdit4.B0 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view4, int i9) {
                                                DialogQuickIcon dialogQuickIcon;
                                                int i10;
                                                final DialogQuickEdit dialogQuickEdit4 = DialogQuickEdit.this;
                                                MyEditText myEditText6 = dialogQuickEdit4.u0;
                                                if (myEditText6 != null) {
                                                    if (myEditText6.isFocused()) {
                                                        MainUtil.X4(dialogQuickEdit4.b0, dialogQuickEdit4.u0);
                                                    } else {
                                                        MyEditText myEditText7 = dialogQuickEdit4.w0;
                                                        if (myEditText7 != null && myEditText7.isFocused()) {
                                                            MainUtil.X4(dialogQuickEdit4.b0, dialogQuickEdit4.w0);
                                                        }
                                                    }
                                                    if (i9 == 1) {
                                                        MainUtil.O4(dialogQuickEdit4.a0, 9);
                                                        return true;
                                                    }
                                                    if (i9 == 2) {
                                                        if (!MainUtil.D4(dialogQuickEdit4.a0, 30)) {
                                                            dialogQuickEdit4.C0 = MainUtil.C4(9, dialogQuickEdit4.a0, false);
                                                            return true;
                                                        }
                                                    } else if (i9 == 3) {
                                                        if (dialogQuickEdit4.a0 != null && dialogQuickEdit4.E0 == null && dialogQuickEdit4.F0 == null) {
                                                            dialogQuickEdit4.D();
                                                            DialogQuickColor dialogQuickColor = new DialogQuickColor(dialogQuickEdit4.a0, dialogQuickEdit4.m0, new DialogQuickColor.QuickColorListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.16
                                                                @Override // com.mycompany.app.dialog.DialogQuickColor.QuickColorListener
                                                                public final void a(int i11) {
                                                                    int i12 = DialogQuickEdit.G0;
                                                                    DialogQuickEdit dialogQuickEdit5 = DialogQuickEdit.this;
                                                                    dialogQuickEdit5.D();
                                                                    if (dialogQuickEdit5.r0 == null) {
                                                                        return;
                                                                    }
                                                                    dialogQuickEdit5.p0 = false;
                                                                    dialogQuickEdit5.i0 = false;
                                                                    dialogQuickEdit5.j0 = null;
                                                                    dialogQuickEdit5.m0 = i11;
                                                                    dialogQuickEdit5.F(MainUtil.Q0(dialogQuickEdit5.u0, true));
                                                                }
                                                            });
                                                            dialogQuickEdit4.F0 = dialogQuickColor;
                                                            dialogQuickColor.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.17
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i11 = DialogQuickEdit.G0;
                                                                    DialogQuickEdit.this.D();
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    } else if (dialogQuickEdit4.e0) {
                                                        if (dialogQuickEdit4.r0 != null) {
                                                            dialogQuickEdit4.p0 = true;
                                                            dialogQuickEdit4.i0 = false;
                                                            dialogQuickEdit4.j0 = null;
                                                            dialogQuickEdit4.m0 = 0;
                                                            List list = dialogQuickEdit4.n0;
                                                            if (list != null && !list.isEmpty()) {
                                                                MyRoundImage myRoundImage2 = dialogQuickEdit4.r0;
                                                                List list2 = dialogQuickEdit4.n0;
                                                                boolean z = PrefSync.k;
                                                                if (MainApp.K1) {
                                                                    i10 = -11513776;
                                                                } else {
                                                                    i10 = -460552;
                                                                }
                                                                myRoundImage2.B(1, i10, list2, z);
                                                                return true;
                                                            }
                                                            dialogQuickEdit4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.12
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    DialogQuickEdit dialogQuickEdit5 = DialogQuickEdit.this;
                                                                    dialogQuickEdit5.n0 = DbBookQuick.n(dialogQuickEdit5.b0, dialogQuickEdit5.f0);
                                                                    MyRoundImage myRoundImage3 = dialogQuickEdit5.r0;
                                                                    if (myRoundImage3 == null) {
                                                                        return;
                                                                    }
                                                                    myRoundImage3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.12.1
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            int i11;
                                                                            DialogQuickEdit dialogQuickEdit6 = DialogQuickEdit.this;
                                                                            MyRoundImage myRoundImage4 = dialogQuickEdit6.r0;
                                                                            if (myRoundImage4 == null) {
                                                                                return;
                                                                            }
                                                                            List list3 = dialogQuickEdit6.n0;
                                                                            boolean z2 = PrefSync.k;
                                                                            if (MainApp.K1) {
                                                                                i11 = -11513776;
                                                                            } else {
                                                                                i11 = -460552;
                                                                            }
                                                                            myRoundImage4.B(1, i11, list3, z2);
                                                                        }
                                                                    });
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    } else if (dialogQuickEdit4.a0 != null && (dialogQuickIcon = dialogQuickEdit4.E0) == null && dialogQuickEdit4.F0 == null) {
                                                        if (dialogQuickIcon != null) {
                                                            dialogQuickIcon.dismiss();
                                                            dialogQuickEdit4.E0 = null;
                                                        }
                                                        MyEditText myEditText8 = dialogQuickEdit4.w0;
                                                        if (myEditText8 != null) {
                                                            String Q0 = MainUtil.Q0(myEditText8, true);
                                                            if (TextUtils.isEmpty(Q0)) {
                                                                MainUtil.b7(dialogQuickEdit4.w0);
                                                                MainUtil.e8(dialogQuickEdit4.b0, R.string.input_url);
                                                                return true;
                                                            }
                                                            DialogQuickIcon dialogQuickIcon2 = new DialogQuickIcon(dialogQuickEdit4.a0, Q0, new DialogQuickIcon.QuickLoadListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.14
                                                                @Override // com.mycompany.app.dialog.DialogQuickIcon.QuickLoadListener
                                                                public final void a(Bitmap bitmap2) {
                                                                    DialogQuickEdit dialogQuickEdit5 = DialogQuickEdit.this;
                                                                    if (dialogQuickEdit5.r0 != null && MainUtil.f6(bitmap2)) {
                                                                        dialogQuickEdit5.k0 = true;
                                                                        dialogQuickEdit5.i0 = true;
                                                                        dialogQuickEdit5.j0 = bitmap2;
                                                                        dialogQuickEdit5.m0 = 0;
                                                                        dialogQuickEdit5.r0.setBackColor(0);
                                                                        dialogQuickEdit5.r0.setImageBitmap(bitmap2);
                                                                    }
                                                                }
                                                            });
                                                            dialogQuickEdit4.E0 = dialogQuickIcon2;
                                                            dialogQuickIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.15
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i11 = DialogQuickEdit.G0;
                                                                    DialogQuickEdit dialogQuickEdit5 = DialogQuickEdit.this;
                                                                    DialogQuickIcon dialogQuickIcon3 = dialogQuickEdit5.E0;
                                                                    if (dialogQuickIcon3 != null) {
                                                                        dialogQuickIcon3.dismiss();
                                                                        dialogQuickEdit5.E0 = null;
                                                                    }
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    }
                                                }
                                                return true;
                                            }
                                        });
                                        dialogQuickEdit3.B0 = myPopupMenu2;
                                        dialogQuickEdit3.Y = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        dialogQuickEdit2.u0.setElineColor(-14784824);
                        dialogQuickEdit2.u0.setText(dialogQuickEdit2.g0);
                        dialogQuickEdit2.u0.setSelectAllOnFocus(true);
                        dialogQuickEdit2.u0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.4
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view2, boolean z) {
                                DialogQuickEdit dialogQuickEdit3;
                                MyEditText myEditText6;
                                if (z && (myEditText6 = (dialogQuickEdit3 = DialogQuickEdit.this).u0) != null) {
                                    myEditText6.setElineColor(-14784824);
                                    MyEditText myEditText7 = dialogQuickEdit3.w0;
                                    if (myEditText7 != null) {
                                        myEditText7.setElineColor(-2434342);
                                    }
                                }
                            }
                        });
                        dialogQuickEdit2.u0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogQuickEdit.5
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                String str;
                                DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                if (!dialogQuickEdit3.e0 && !dialogQuickEdit3.i0 && dialogQuickEdit3.r0 != null) {
                                    if (!TextUtils.isEmpty(editable)) {
                                        str = editable.toString();
                                    } else {
                                        str = null;
                                    }
                                    dialogQuickEdit3.F(str);
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
                            }
                        });
                        if (!dialogQuickEdit2.e0) {
                            AppCompatTextView appCompatTextView3 = dialogQuickEdit2.v0;
                            if (appCompatTextView3 != null) {
                                if (MainApp.K1) {
                                    appCompatTextView3.setTextColor(-4079167);
                                    dialogQuickEdit2.w0.setTextColor(-328966);
                                } else {
                                    appCompatTextView3.setTextColor(-10395295);
                                    dialogQuickEdit2.w0.setTextColor(-16777216);
                                }
                                dialogQuickEdit2.v0.setText(R.string.url);
                                dialogQuickEdit2.w0.setElineColor(-2434342);
                                dialogQuickEdit2.w0.setText(dialogQuickEdit2.f0);
                                dialogQuickEdit2.w0.setSelectAllOnFocus(true);
                                dialogQuickEdit2.w0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.6
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view2, boolean z) {
                                        DialogQuickEdit dialogQuickEdit3;
                                        MyEditText myEditText6;
                                        if (!z || (myEditText6 = (dialogQuickEdit3 = DialogQuickEdit.this).u0) == null) {
                                            return;
                                        }
                                        myEditText6.setElineColor(-2434342);
                                        dialogQuickEdit3.w0.setElineColor(-14784824);
                                    }
                                });
                                dialogQuickEdit2.w0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.7
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                                        DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                        MyEditText myEditText6 = dialogQuickEdit3.w0;
                                        if (myEditText6 == null || dialogQuickEdit3.z0) {
                                            return true;
                                        }
                                        dialogQuickEdit3.z0 = true;
                                        myEditText6.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                DialogQuickEdit.C(DialogQuickEdit.this);
                                                DialogQuickEdit.this.z0 = false;
                                            }
                                        });
                                        return true;
                                    }
                                });
                            } else {
                                return;
                            }
                        }
                        dialogQuickEdit2.x0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                MyLineText myLineText = dialogQuickEdit3.x0;
                                if (myLineText != null) {
                                    if (myLineText.isActivated()) {
                                        dialogQuickEdit3.E();
                                    } else {
                                        if (dialogQuickEdit3.z0) {
                                            return;
                                        }
                                        dialogQuickEdit3.z0 = true;
                                        dialogQuickEdit3.x0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.8.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                                DialogQuickEdit.C(DialogQuickEdit.this);
                                                DialogQuickEdit.this.z0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        List list = dialogQuickEdit2.n0;
                        if (list != null && !list.isEmpty()) {
                            dialogQuickEdit2.o0 = true;
                            dialogQuickEdit2.p0 = true;
                            MyRoundImage myRoundImage2 = dialogQuickEdit2.r0;
                            List list2 = dialogQuickEdit2.n0;
                            boolean z = PrefSync.k;
                            if (MainApp.K1) {
                                i8 = -11513776;
                            } else {
                                i8 = -460552;
                            }
                            myRoundImage2.B(1, i8, list2, z);
                        } else {
                            if (dialogQuickEdit2.d0) {
                                i7 = 33;
                            } else {
                                i7 = 18;
                            }
                            dialogQuickEdit2.G(dialogQuickEdit2.f0, dialogQuickEdit2.g0, bitmap, dialogQuickEdit2.l0, i7);
                            dialogQuickEdit2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickEdit.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                    dialogQuickEdit3.n0 = DbBookQuick.n(dialogQuickEdit3.b0, dialogQuickEdit3.f0);
                                }
                            });
                        }
                        dialogQuickEdit2.g(dialogQuickEdit2.q0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.10
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                DialogQuickEdit dialogQuickEdit3 = DialogQuickEdit.this;
                                if (dialogQuickEdit3.q0 == null) {
                                    return;
                                }
                                dialogQuickEdit3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogQuickEdit dialogQuickEdit) {
        int i = dialogQuickEdit.l0;
        MyEditText myEditText = dialogQuickEdit.u0;
        if (myEditText != null) {
            String Q0 = MainUtil.Q0(myEditText, true);
            if (dialogQuickEdit.e0) {
                if (!dialogQuickEdit.k0 && dialogQuickEdit.m0 == i && dialogQuickEdit.p0 == dialogQuickEdit.o0 && Q0.equals(dialogQuickEdit.g0)) {
                    dialogQuickEdit.dismiss();
                    return;
                }
                String str = dialogQuickEdit.f0;
                DialogTask dialogTask = dialogQuickEdit.y0;
                if (dialogTask != null) {
                    dialogTask.f12839c = true;
                }
                dialogQuickEdit.y0 = null;
                DialogTask dialogTask2 = new DialogTask(dialogQuickEdit, str, str, Q0);
                dialogQuickEdit.y0 = dialogTask2;
                dialogTask2.b(dialogQuickEdit.b0);
                return;
            }
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.b7(dialogQuickEdit.u0);
                MainUtil.e8(dialogQuickEdit.b0, R.string.input_name);
                return;
            }
            MyEditText myEditText2 = dialogQuickEdit.w0;
            if (myEditText2 == null) {
                return;
            }
            String Q02 = MainUtil.Q0(myEditText2, true);
            if (TextUtils.isEmpty(Q02)) {
                MainUtil.b7(dialogQuickEdit.w0);
                MainUtil.e8(dialogQuickEdit.b0, R.string.input_url);
                return;
            }
            if (dialogQuickEdit.d0 && Q02.equals(dialogQuickEdit.f0)) {
                if (!dialogQuickEdit.k0 && dialogQuickEdit.m0 == i && dialogQuickEdit.p0 == dialogQuickEdit.o0 && Q0.equals(dialogQuickEdit.g0)) {
                    dialogQuickEdit.dismiss();
                    return;
                }
            } else if (DbBookQuick.o(dialogQuickEdit.b0, Q02)) {
                dialogQuickEdit.w0.selectAll();
                MainUtil.b7(dialogQuickEdit.w0);
                MainUtil.e8(dialogQuickEdit.b0, R.string.already_added);
                return;
            }
            String str2 = dialogQuickEdit.f0;
            DialogTask dialogTask3 = dialogQuickEdit.y0;
            if (dialogTask3 != null) {
                dialogTask3.f12839c = true;
            }
            dialogQuickEdit.y0 = null;
            DialogTask dialogTask4 = new DialogTask(dialogQuickEdit, str2, Q02, Q0);
            dialogQuickEdit.y0 = dialogTask4;
            dialogTask4.b(dialogQuickEdit.b0);
        }
    }

    public final void D() {
        DialogQuickColor dialogQuickColor = this.F0;
        if (dialogQuickColor != null) {
            dialogQuickColor.dismiss();
            this.F0 = null;
        }
    }

    public final void E() {
        int i;
        MyDialogLinear myDialogLinear = this.q0;
        if (myDialogLinear != null && this.y0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.x0.setEnabled(false);
            this.x0.setActivated(true);
            this.x0.setText(R.string.canceling);
            MyLineText myLineText = this.x0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.y0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.y0 = null;
            return;
        }
        dismiss();
    }

    public final void F(String str) {
        MyRoundImage myRoundImage = this.r0;
        if (myRoundImage == null) {
            return;
        }
        if (this.e0) {
            if (this.m0 == 0) {
                this.m0 = -65536;
            }
            myRoundImage.o(0, DbBookQuick.f(this.m0));
        } else {
            if (this.m0 == 0 && TextUtils.isEmpty(str)) {
                this.r0.o(0, R.drawable.outline_public_black_24);
                return;
            }
            if (this.m0 == 0) {
                this.m0 = DbBookQuick.m();
            }
            this.r0.t(this.m0, str, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void G(String str, String str2, Bitmap bitmap, int i, int i2) {
        Bitmap b;
        if (this.r0 == null) {
            return;
        }
        this.p0 = false;
        if (TextUtils.isEmpty(str)) {
            this.i0 = false;
            this.j0 = null;
            F(str2);
            return;
        }
        if (MainUtil.f6(bitmap)) {
            this.i0 = true;
            this.j0 = bitmap;
            this.m0 = 0;
            this.r0.setBackColor(0);
            this.r0.setImageBitmap(bitmap);
            return;
        }
        int i3 = -460552;
        if (i != 0 && i != -460552) {
            this.i0 = false;
            this.j0 = null;
            this.m0 = i;
            F(str2);
            return;
        }
        ?? obj = new Object();
        obj.f16550a = i2;
        obj.g = str;
        obj.z = str;
        boolean z = PrefSync.k;
        obj.N = z;
        if (i2 == 0) {
            obj.f16551c = 1;
        } else {
            obj.f16551c = 11;
        }
        if (i2 == 33) {
            b = MainListLoader.c(str, z);
        } else {
            b = MainListLoader.b(obj);
        }
        if (MainUtil.f6(b)) {
            this.i0 = true;
            this.j0 = b;
            this.m0 = 0;
            this.r0.setBackColor(0);
            this.r0.setImageBitmap(b);
            return;
        }
        this.A0 = new MainListLoader(this.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogQuickEdit.11
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
                DialogQuickEdit dialogQuickEdit = DialogQuickEdit.this;
                if (!dialogQuickEdit.p0 && dialogQuickEdit.r0 != null) {
                    dialogQuickEdit.i0 = false;
                    dialogQuickEdit.j0 = null;
                    dialogQuickEdit.F(MainUtil.Q0(dialogQuickEdit.u0, true));
                }
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap2) {
                DialogQuickEdit dialogQuickEdit = DialogQuickEdit.this;
                if (!dialogQuickEdit.p0 && dialogQuickEdit.r0 != null) {
                    if (MainUtil.f6(bitmap2)) {
                        dialogQuickEdit.i0 = true;
                        dialogQuickEdit.j0 = bitmap2;
                        dialogQuickEdit.m0 = 0;
                        dialogQuickEdit.r0.setBackColor(0);
                        dialogQuickEdit.r0.setImageBitmap(bitmap2);
                        return;
                    }
                    dialogQuickEdit.i0 = false;
                    dialogQuickEdit.j0 = null;
                    dialogQuickEdit.F(MainUtil.Q0(dialogQuickEdit.u0, true));
                }
            }
        });
        if (this.e0) {
            this.r0.o(0, DbBookQuick.f(-65536));
        } else {
            MyRoundImage myRoundImage = this.r0;
            if (MainApp.K1) {
                i3 = -11513776;
            }
            myRoundImage.t(i3, str2, null);
        }
        this.r0.setTag(0);
        this.A0.e(obj, this.r0);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        E();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.y0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.y0 = null;
        DialogQuickIcon dialogQuickIcon = this.E0;
        if (dialogQuickIcon != null) {
            dialogQuickIcon.dismiss();
            this.E0 = null;
        }
        D();
        MyPopupMenu myPopupMenu = this.B0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.B0 = null;
        }
        MainListLoader mainListLoader = this.A0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.A0 = null;
        }
        MyDialogLinear myDialogLinear = this.q0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.q0 = null;
        }
        MyRoundImage myRoundImage = this.r0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.r0 = null;
        }
        MyLineView myLineView = this.s0;
        if (myLineView != null) {
            myLineView.b();
            this.s0 = null;
        }
        MyEditText myEditText = this.u0;
        if (myEditText != null) {
            myEditText.c();
            this.u0 = null;
        }
        MyEditText myEditText2 = this.w0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.w0 = null;
        }
        MyLineText myLineText = this.x0;
        if (myLineText != null) {
            myLineText.u();
            this.x0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.j0 = null;
        this.n0 = null;
        this.t0 = null;
        this.v0 = null;
        this.C0 = null;
        this.D0 = null;
        super.dismiss();
    }
}
