package com.mycompany.app.dialog;

import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookSearch;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.dialog.DialogQuickColor;
import com.mycompany.app.dialog.DialogQuickIcon;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundFrame;
import com.mycompany.app.view.MyRoundImage;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogEditSearch extends MyDialogBottom {
    public static final /* synthetic */ int z0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogEditUrl.EditUrlListener c0;
    public final long d0;
    public String e0;
    public String f0;
    public final int g0;
    public int h0;
    public Bitmap i0;
    public boolean j0;
    public MyDialogLinear k0;
    public MyRoundImage l0;
    public MyLineView m0;
    public MyEditText n0;
    public MyRoundFrame o0;
    public MyEditPure p0;
    public MyLineText q0;
    public DialogTask r0;
    public boolean s0;
    public MainListLoader t0;
    public MyPopupMenu u0;
    public Uri v0;
    public String w0;
    public DialogQuickIcon x0;
    public DialogQuickColor y0;

    /* renamed from: com.mycompany.app.dialog.DialogEditSearch$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyRoundFrame myRoundFrame = DialogEditSearch.this.o0;
            if (myRoundFrame == null) {
                return;
            }
            myRoundFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditSearch dialogEditSearch = DialogEditSearch.this;
                    MyEditPure myEditPure = dialogEditSearch.p0;
                    if (myEditPure == null) {
                        return;
                    }
                    myEditPure.requestFocus();
                    dialogEditSearch.o0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEditPure myEditPure2;
                            DialogEditSearch dialogEditSearch2 = DialogEditSearch.this;
                            Context context = dialogEditSearch2.b0;
                            if (context != null && (myEditPure2 = dialogEditSearch2.p0) != null) {
                                MainUtil.c8(context, myEditPure2);
                            }
                        }
                    }, 200L);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public long f;
        public final String g;
        public final String h;
        public int i;
        public final Bitmap j;
        public boolean k;

        public DialogTask(DialogEditSearch dialogEditSearch, String str, String str2) {
            int i;
            WeakReference weakReference = new WeakReference(dialogEditSearch);
            this.e = weakReference;
            DialogEditSearch dialogEditSearch2 = (DialogEditSearch) weakReference.get();
            if (dialogEditSearch2 != null) {
                this.f = dialogEditSearch2.d0;
                this.i = dialogEditSearch2.h0;
                Bitmap bitmap = dialogEditSearch2.i0;
                this.j = bitmap;
                this.g = str;
                this.h = str2;
                dialogEditSearch2.k0.e(0, 0, true, false);
                dialogEditSearch2.setCanceledOnTouchOutside(false);
                dialogEditSearch2.n0.setEnabled(false);
                dialogEditSearch2.p0.setEnabled(false);
                dialogEditSearch2.q0.setEnabled(false);
                MyLineText myLineText = dialogEditSearch2.q0;
                if (MainApp.K1) {
                    i = -8355712;
                } else {
                    i = -2434342;
                }
                myLineText.setTextColor(i);
                if (MainUtil.f6(bitmap)) {
                    Bitmap j4 = MainUtil.j4(dialogEditSearch2.l0, (MainApp.g1 / 2) / MainApp.f1);
                    if (MainUtil.f6(j4)) {
                        this.j = j4;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogEditSearch dialogEditSearch;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditSearch = (DialogEditSearch) weakReference.get()) != null && !this.f12839c) {
                String str = this.g;
                if (!TextUtils.isEmpty(str)) {
                    String str2 = this.h;
                    if (!TextUtils.isEmpty(str2)) {
                        ContentValues e = a.e("_title", str, "_text", str2);
                        Bitmap bitmap = this.j;
                        int i = 0;
                        if (MainUtil.f6(bitmap)) {
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                                e.put("_icon", byteArrayOutputStream.toByteArray());
                                byteArrayOutputStream.close();
                                e.put("_color", (Integer) 0);
                                DbBookSearch.j(str2, bitmap);
                            } catch (Exception unused) {
                            }
                        } else {
                            if (this.f > 0) {
                                e.put("_icon", new byte[1]);
                            }
                            if (this.i == 0) {
                                DbBookSearch dbBookSearch = DbBookSearch.f12950c;
                                int[] iArr = MainConst.b0;
                                int length = iArr.length;
                                int i2 = DbBookSearch.f % length;
                                if (i2 >= 0) {
                                    i = i2;
                                }
                                int i3 = iArr[i];
                                DbBookSearch.f = (i + 3) % length;
                                this.i = i3;
                            }
                            e.put("_color", Integer.valueOf(this.i));
                        }
                        SQLiteDatabase writableDatabase = DbBookSearch.f(dialogEditSearch.b0).getWritableDatabase();
                        long j = this.f;
                        if (j > 0) {
                            DbUtil.i(writableDatabase, "DbBookSearch_table", e, j);
                        } else {
                            this.f = DbUtil.e(writableDatabase, "DbBookSearch_table", e);
                        }
                        this.k = true;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogEditSearch dialogEditSearch;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogEditSearch = (DialogEditSearch) weakReference.get()) != null) {
                if (!this.k) {
                    MyDialogLinear myDialogLinear = dialogEditSearch.k0;
                    if (myDialogLinear != null) {
                        myDialogLinear.e(0, 0, false, false);
                        dialogEditSearch.setCanceledOnTouchOutside(true);
                        dialogEditSearch.n0.setEnabled(true);
                        dialogEditSearch.p0.setEnabled(true);
                        dialogEditSearch.q0.setEnabled(true);
                        MyLineText myLineText = dialogEditSearch.q0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -14784824;
                        }
                        myLineText.setTextColor(i);
                        MainUtil.e8(dialogEditSearch.b0, R.string.update_fail);
                        return;
                    }
                    return;
                }
                dialogEditSearch.r0 = null;
                DialogEditUrl.EditUrlListener editUrlListener = dialogEditSearch.c0;
                if (editUrlListener != null) {
                    editUrlListener.a(this.f, null, null);
                }
            }
        }
    }

    public DialogEditSearch(MainActivity mainActivity, long j, String str, String str2, int i, DialogEditUrl.EditUrlListener editUrlListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = editUrlListener;
        this.d0 = j;
        this.e0 = str;
        this.f0 = str2;
        this.g0 = i;
        this.h0 = i;
        if (i == 0) {
            this.h0 = -65536;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditSearch.B(DialogEditSearch.this);
            }
        });
    }

    public static void B(DialogEditSearch dialogEditSearch) {
        Context context = dialogEditSearch.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 12.0f);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setPadding(0, 0, 0, G);
            linearLayout.setOrientation(1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            q.addView(linearLayout, layoutParams);
            int G2 = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            linearLayout.addView(myLineFrame, -1, G2);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams2);
            MyLineView myLineView = new MyLineView(context);
            myLineView.a(MainUtil.G(context, 2.0f));
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams3.gravity = 8388627;
            layoutParams3.setMarginStart(MainApp.F1 + MainApp.G1);
            myLineFrame.addView(myLineView, layoutParams3);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHint(R.string.name);
            myEditText.setHintTextColor(-8289919);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 8388627;
            layoutParams4.setMarginStart(G2);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(myEditText, layoutParams4);
            MyRoundFrame myRoundFrame = new MyRoundFrame(context);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.topMargin = G;
            layoutParams5.setMarginStart(MainApp.E1);
            layoutParams5.setMarginEnd(MainApp.E1);
            linearLayout.addView(myRoundFrame, layoutParams5);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            myEditPure.setGravity(8388659);
            myEditPure.setMinLines(5);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (i3 >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setImeOptions(268435456);
            myEditPure.setBackground(null);
            myRoundFrame.addView(myEditPure, -1, -2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.save);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogEditSearch.k0 = q;
            dialogEditSearch.l0 = myRoundImage;
            dialogEditSearch.m0 = myLineView;
            dialogEditSearch.n0 = myEditText;
            dialogEditSearch.o0 = myRoundFrame;
            dialogEditSearch.p0 = myEditPure;
            dialogEditSearch.q0 = myLineText;
            Handler handler = dialogEditSearch.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditSearch dialogEditSearch2 = DialogEditSearch.this;
                    if (dialogEditSearch2.k0 != null && dialogEditSearch2.b0 != null) {
                        if (MainApp.K1) {
                            dialogEditSearch2.m0.setBackgroundResource(R.drawable.selector_overlay_dark);
                            dialogEditSearch2.n0.setTextColor(-328966);
                            dialogEditSearch2.o0.setBgColor(-13816531);
                            dialogEditSearch2.p0.setTextColor(-328966);
                            dialogEditSearch2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditSearch2.q0.setTextColor(-328966);
                        } else {
                            dialogEditSearch2.m0.setBackgroundResource(R.drawable.selector_overlay);
                            dialogEditSearch2.n0.setTextColor(-16777216);
                            dialogEditSearch2.o0.setBgColor(-460552);
                            dialogEditSearch2.p0.setTextColor(-16777216);
                            dialogEditSearch2.q0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditSearch2.q0.setTextColor(-14784824);
                        }
                        if (MainApp.K1) {
                            dialogEditSearch2.m0.c(MainApp.n1, -328966);
                        } else {
                            dialogEditSearch2.m0.setLineColor(-14784824);
                        }
                        dialogEditSearch2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final DialogEditSearch dialogEditSearch3 = DialogEditSearch.this;
                                MyPopupMenu myPopupMenu = dialogEditSearch3.u0;
                                if (myPopupMenu == null) {
                                    if (myPopupMenu != null) {
                                        dialogEditSearch3.Y = null;
                                        myPopupMenu.a();
                                        dialogEditSearch3.u0 = null;
                                    }
                                    if (dialogEditSearch3.a0 != null && view != null) {
                                        if (PrefAlbum.m) {
                                            PrefAlbum.m = false;
                                            PrefSet.d(0, dialogEditSearch3.b0, "mNotiQuick", false);
                                        }
                                        dialogEditSearch3.v0 = null;
                                        dialogEditSearch3.w0 = null;
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.web_title));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.camera));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.color_title));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogEditSearch3.a0, dialogEditSearch3.k0, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.10
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i4 = DialogEditSearch.z0;
                                                DialogEditSearch dialogEditSearch4 = DialogEditSearch.this;
                                                MyPopupMenu myPopupMenu3 = dialogEditSearch4.u0;
                                                if (myPopupMenu3 != null) {
                                                    dialogEditSearch4.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogEditSearch4.u0 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view2, int i4) {
                                                DialogQuickIcon dialogQuickIcon;
                                                final DialogEditSearch dialogEditSearch4 = DialogEditSearch.this;
                                                MyEditText myEditText2 = dialogEditSearch4.n0;
                                                if (myEditText2 != null) {
                                                    if (myEditText2.isFocused()) {
                                                        MainUtil.X4(dialogEditSearch4.b0, dialogEditSearch4.n0);
                                                    } else if (dialogEditSearch4.p0.isFocused()) {
                                                        MainUtil.X4(dialogEditSearch4.b0, dialogEditSearch4.p0);
                                                    }
                                                    if (i4 == 1) {
                                                        MainUtil.O4(dialogEditSearch4.a0, 9);
                                                        return true;
                                                    }
                                                    if (i4 == 2) {
                                                        if (!MainUtil.D4(dialogEditSearch4.a0, 30)) {
                                                            dialogEditSearch4.v0 = MainUtil.C4(9, dialogEditSearch4.a0, false);
                                                            return true;
                                                        }
                                                    } else if (i4 == 3) {
                                                        if (dialogEditSearch4.a0 != null && dialogEditSearch4.x0 == null && dialogEditSearch4.y0 == null) {
                                                            dialogEditSearch4.C();
                                                            DialogQuickColor dialogQuickColor = new DialogQuickColor(dialogEditSearch4.a0, dialogEditSearch4.h0, new DialogQuickColor.QuickColorListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.13
                                                                @Override // com.mycompany.app.dialog.DialogQuickColor.QuickColorListener
                                                                public final void a(int i5) {
                                                                    int i6 = DialogEditSearch.z0;
                                                                    DialogEditSearch dialogEditSearch5 = DialogEditSearch.this;
                                                                    dialogEditSearch5.C();
                                                                    if (dialogEditSearch5.l0 == null) {
                                                                        return;
                                                                    }
                                                                    dialogEditSearch5.i0 = null;
                                                                    dialogEditSearch5.h0 = i5;
                                                                    dialogEditSearch5.D();
                                                                }
                                                            });
                                                            dialogEditSearch4.y0 = dialogQuickColor;
                                                            dialogQuickColor.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.14
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i5 = DialogEditSearch.z0;
                                                                    DialogEditSearch.this.C();
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    } else if (dialogEditSearch4.a0 != null && (dialogQuickIcon = dialogEditSearch4.x0) == null && dialogEditSearch4.y0 == null) {
                                                        if (dialogQuickIcon != null) {
                                                            dialogQuickIcon.dismiss();
                                                            dialogEditSearch4.x0 = null;
                                                        }
                                                        MyEditPure myEditPure2 = dialogEditSearch4.p0;
                                                        if (myEditPure2 != null) {
                                                            String Q0 = MainUtil.Q0(myEditPure2, true);
                                                            if (TextUtils.isEmpty(Q0)) {
                                                                MainUtil.b7(dialogEditSearch4.p0);
                                                                MainUtil.e8(dialogEditSearch4.b0, R.string.input_url);
                                                                return true;
                                                            }
                                                            DialogQuickIcon dialogQuickIcon2 = new DialogQuickIcon(dialogEditSearch4.a0, Q0, new DialogQuickIcon.QuickLoadListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.11
                                                                @Override // com.mycompany.app.dialog.DialogQuickIcon.QuickLoadListener
                                                                public final void a(Bitmap bitmap) {
                                                                    DialogEditSearch dialogEditSearch5 = DialogEditSearch.this;
                                                                    if (dialogEditSearch5.l0 != null && MainUtil.f6(bitmap)) {
                                                                        dialogEditSearch5.j0 = true;
                                                                        dialogEditSearch5.i0 = bitmap;
                                                                        dialogEditSearch5.h0 = 0;
                                                                        dialogEditSearch5.l0.setBackColor(0);
                                                                        dialogEditSearch5.l0.setImageBitmap(bitmap);
                                                                    }
                                                                }
                                                            });
                                                            dialogEditSearch4.x0 = dialogQuickIcon2;
                                                            dialogQuickIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.12
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i5 = DialogEditSearch.z0;
                                                                    DialogEditSearch dialogEditSearch5 = DialogEditSearch.this;
                                                                    DialogQuickIcon dialogQuickIcon3 = dialogEditSearch5.x0;
                                                                    if (dialogQuickIcon3 != null) {
                                                                        dialogQuickIcon3.dismiss();
                                                                        dialogEditSearch5.x0 = null;
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
                                        dialogEditSearch3.u0 = myPopupMenu2;
                                        dialogEditSearch3.Y = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        dialogEditSearch2.E(dialogEditSearch2.g0, 35, dialogEditSearch2.f0);
                        if (!TextUtils.isEmpty(dialogEditSearch2.e0)) {
                            dialogEditSearch2.n0.setText(dialogEditSearch2.e0);
                        }
                        dialogEditSearch2.n0.setElineColor(-14784824);
                        dialogEditSearch2.n0.setSelectAllOnFocus(true);
                        dialogEditSearch2.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditSearch dialogEditSearch3 = DialogEditSearch.this;
                                MyEditText myEditText2 = dialogEditSearch3.n0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.requestFocus();
                                dialogEditSearch3.n0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditText myEditText3;
                                        DialogEditSearch dialogEditSearch4 = DialogEditSearch.this;
                                        Context context2 = dialogEditSearch4.b0;
                                        if (context2 != null && (myEditText3 = dialogEditSearch4.n0) != null) {
                                            MainUtil.c8(context2, myEditText3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        if (!TextUtils.isEmpty(dialogEditSearch2.f0)) {
                            dialogEditSearch2.p0.setText(dialogEditSearch2.f0);
                        }
                        dialogEditSearch2.p0.setHint("https://...");
                        dialogEditSearch2.p0.setHintTextColor(-8289919);
                        dialogEditSearch2.p0.setSelectAllOnFocus(true);
                        dialogEditSearch2.o0.setOnClickListener(new AnonymousClass5());
                        dialogEditSearch2.p0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.6
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyEditPure myEditPure2;
                                DialogEditSearch dialogEditSearch3 = DialogEditSearch.this;
                                Context context2 = dialogEditSearch3.b0;
                                if (context2 != null && (myEditPure2 = dialogEditSearch3.p0) != null) {
                                    MainUtil.c8(context2, myEditPure2);
                                }
                            }
                        }, 200L);
                        dialogEditSearch2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditSearch dialogEditSearch3 = DialogEditSearch.this;
                                MyLineText myLineText2 = dialogEditSearch3.q0;
                                if (myLineText2 == null || dialogEditSearch3.s0) {
                                    return;
                                }
                                dialogEditSearch3.s0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditSearch.7.1
                                    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7  */
                                    /* JADX WARN: Removed duplicated region for block: B:37:0x00aa  */
                                    @Override // java.lang.Runnable
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                        To view partially-correct add '--show-bad-code' argument
                                    */
                                    public final void run() {
                                        /*
                                            r14 = this;
                                            com.mycompany.app.dialog.DialogEditSearch$7 r0 = com.mycompany.app.dialog.DialogEditSearch.AnonymousClass7.this
                                            com.mycompany.app.dialog.DialogEditSearch r0 = com.mycompany.app.dialog.DialogEditSearch.this
                                            com.mycompany.app.view.MyEditText r1 = r0.n0
                                            r2 = 0
                                            if (r1 != 0) goto Lb
                                            goto Ld7
                                        Lb:
                                            r3 = 1
                                            java.lang.String r1 = com.mycompany.app.main.MainUtil.Q0(r1, r3)
                                            boolean r4 = android.text.TextUtils.isEmpty(r1)
                                            if (r4 == 0) goto L24
                                            com.mycompany.app.view.MyEditText r1 = r0.n0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.b0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.input_name
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Ld7
                                        L24:
                                            com.mycompany.app.view.MyEditPure r4 = r0.p0
                                            java.lang.String r4 = com.mycompany.app.main.MainUtil.Q0(r4, r3)
                                            boolean r5 = android.text.TextUtils.isEmpty(r4)
                                            if (r5 == 0) goto L3e
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.b0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.input_url
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Ld7
                                        L3e:
                                            boolean r5 = android.webkit.URLUtil.isNetworkUrl(r4)
                                            if (r5 != 0) goto L52
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.b0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.invalid_url
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Ld7
                                        L52:
                                            long r5 = r0.d0
                                            r7 = 0
                                            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                                            r6 = 0
                                            if (r5 <= 0) goto L79
                                            java.lang.String r5 = r0.f0
                                            boolean r5 = r4.equals(r5)
                                            if (r5 == 0) goto L79
                                            boolean r5 = r0.j0
                                            if (r5 != 0) goto Lc3
                                            int r5 = r0.h0
                                            int r7 = r0.g0
                                            if (r5 != r7) goto Lc3
                                            java.lang.String r5 = r0.e0
                                            boolean r5 = r1.equals(r5)
                                            if (r5 == 0) goto Lc3
                                            r0.dismiss()
                                            goto Ld7
                                        L79:
                                            android.content.Context r5 = r0.b0
                                            com.mycompany.app.db.book.DbBookSearch r7 = com.mycompany.app.db.book.DbBookSearch.f12950c
                                            if (r5 == 0) goto Lae
                                            boolean r7 = android.text.TextUtils.isEmpty(r4)
                                            if (r7 == 0) goto L86
                                            goto Lae
                                        L86:
                                            java.lang.String[] r12 = new java.lang.String[]{r4}
                                            com.mycompany.app.db.book.DbBookSearch r5 = com.mycompany.app.db.book.DbBookSearch.f(r5)     // Catch: java.lang.Exception -> La6
                                            android.database.sqlite.SQLiteDatabase r8 = r5.getWritableDatabase()     // Catch: java.lang.Exception -> La6
                                            java.lang.String r9 = "DbBookSearch_table"
                                            java.lang.String r11 = "_text=?"
                                            r13 = 0
                                            r10 = 0
                                            android.database.Cursor r5 = com.mycompany.app.db.DbUtil.g(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Exception -> La6
                                            if (r5 == 0) goto La7
                                            boolean r7 = r5.moveToFirst()     // Catch: java.lang.Exception -> La7
                                            if (r7 == 0) goto La7
                                            r7 = r3
                                            goto La8
                                        La6:
                                            r5 = r6
                                        La7:
                                            r7 = r2
                                        La8:
                                            if (r5 == 0) goto Laf
                                            r5.close()
                                            goto Laf
                                        Lae:
                                            r7 = r2
                                        Laf:
                                            if (r7 == 0) goto Lc3
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            r1.selectAll()
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.b0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.already_added
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Ld7
                                        Lc3:
                                            com.mycompany.app.dialog.DialogEditSearch$DialogTask r5 = r0.r0
                                            if (r5 == 0) goto Lc9
                                            r5.f12839c = r3
                                        Lc9:
                                            r0.r0 = r6
                                            com.mycompany.app.dialog.DialogEditSearch$DialogTask r3 = new com.mycompany.app.dialog.DialogEditSearch$DialogTask
                                            r3.<init>(r0, r1, r4)
                                            r0.r0 = r3
                                            android.content.Context r1 = r0.b0
                                            r3.b(r1)
                                        Ld7:
                                            r0.s0 = r2
                                            return
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditSearch.AnonymousClass7.AnonymousClass1.run():void");
                                    }
                                });
                            }
                        });
                        dialogEditSearch2.g(dialogEditSearch2.k0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.8
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditSearch dialogEditSearch3 = DialogEditSearch.this;
                                if (dialogEditSearch3.k0 == null) {
                                    return;
                                }
                                dialogEditSearch3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        DialogQuickColor dialogQuickColor = this.y0;
        if (dialogQuickColor != null) {
            dialogQuickColor.dismiss();
            this.y0 = null;
        }
    }

    public final void D() {
        MyRoundImage myRoundImage = this.l0;
        if (myRoundImage == null) {
            return;
        }
        if (this.h0 == 0) {
            this.h0 = -65536;
        }
        myRoundImage.o(this.h0, R.drawable.outline_search_white_24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void E(int i, int i2, String str) {
        if (this.l0 == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.i0 = null;
            D();
            return;
        }
        if (i != 0 && i != -460552) {
            this.i0 = null;
            this.h0 = i;
            D();
            return;
        }
        ?? obj = new Object();
        obj.f16550a = i2;
        obj.g = str;
        obj.z = str;
        if (i2 == 0) {
            obj.f16551c = 1;
        } else {
            obj.f16551c = 11;
        }
        Bitmap b = DbBookSearch.b(str);
        if (MainUtil.f6(b)) {
            this.i0 = b;
            this.h0 = 0;
            this.l0.setBackColor(0);
            this.l0.setImageBitmap(b);
            return;
        }
        this.t0 = new MainListLoader(this.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogEditSearch.9
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
                DialogEditSearch dialogEditSearch = DialogEditSearch.this;
                if (dialogEditSearch.l0 == null) {
                    return;
                }
                dialogEditSearch.i0 = null;
                dialogEditSearch.D();
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                DialogEditSearch dialogEditSearch = DialogEditSearch.this;
                if (dialogEditSearch.l0 == null) {
                    return;
                }
                if (MainUtil.f6(bitmap)) {
                    dialogEditSearch.i0 = bitmap;
                    dialogEditSearch.h0 = 0;
                    dialogEditSearch.l0.setBackColor(0);
                    dialogEditSearch.l0.setImageBitmap(bitmap);
                    return;
                }
                dialogEditSearch.i0 = null;
                dialogEditSearch.D();
            }
        });
        this.l0.o(this.h0, R.drawable.outline_search_white_24);
        this.l0.setTag(0);
        this.t0.e(obj, this.l0);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.r0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.r0 = null;
        DialogQuickIcon dialogQuickIcon = this.x0;
        if (dialogQuickIcon != null) {
            dialogQuickIcon.dismiss();
            this.x0 = null;
        }
        C();
        MyPopupMenu myPopupMenu = this.u0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.u0 = null;
        }
        MainListLoader mainListLoader = this.t0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.t0 = null;
        }
        MyDialogLinear myDialogLinear = this.k0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.k0 = null;
        }
        MyRoundImage myRoundImage = this.l0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.l0 = null;
        }
        MyLineView myLineView = this.m0;
        if (myLineView != null) {
            myLineView.b();
            this.m0 = null;
        }
        MyEditText myEditText = this.n0;
        if (myEditText != null) {
            myEditText.c();
            this.n0 = null;
        }
        MyRoundFrame myRoundFrame = this.o0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.o0 = null;
        }
        MyLineText myLineText = this.q0;
        if (myLineText != null) {
            myLineText.u();
            this.q0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.p0 = null;
        this.v0 = null;
        this.w0 = null;
        super.dismiss();
    }
}
