package com.mycompany.app.dialog;

import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
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
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.dialog.DialogWebBookList;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogWebBookEdit extends MyDialogBottom {
    public static final /* synthetic */ int D0 = 0;
    public Bitmap A0;
    public long B0;
    public String C0;
    public MainActivity a0;
    public Context b0;
    public BookEditListener c0;
    public final boolean d0;
    public MainItem.ChildItem e0;
    public String f0;
    public String g0;
    public String h0;
    public String i0;
    public String j0;
    public final long k0;
    public MyDialogLinear l0;
    public MyRoundImage m0;
    public MyEditText n0;
    public AppCompatTextView o0;
    public MyEditText p0;
    public MyLineFrame q0;
    public AppCompatTextView r0;
    public AppCompatTextView s0;
    public MyLineText t0;
    public DialogWebBookList u0;
    public boolean v0;
    public boolean w0;
    public final boolean x0;
    public String y0;
    public String z0;

    /* loaded from: classes3.dex */
    public interface BookEditListener {
        void a(long j, String str, String str2);

        Bitmap getIcon();
    }

    public DialogWebBookEdit(MainActivity mainActivity, MainItem.ChildItem childItem, String str, String str2, BookEditListener bookEditListener) {
        super(mainActivity);
        String str3;
        String str4;
        long j;
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = bookEditListener;
        this.d0 = TextUtils.isEmpty(str);
        if (childItem != null) {
            str3 = childItem.e;
            str4 = childItem.z;
            j = childItem.y;
        } else {
            if (PrefSync.k) {
                str3 = PrefAlbum.N;
            } else {
                str3 = PrefAlbum.M;
            }
            this.x0 = true;
            str4 = null;
            j = 0;
        }
        str3 = TextUtils.isEmpty(str3) ? "/" : str3;
        this.e0 = childItem;
        this.f0 = str;
        this.g0 = str2;
        this.h0 = str3;
        this.i0 = str3;
        this.j0 = str4;
        this.k0 = j;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebBookEdit.B(DialogWebBookEdit.this);
            }
        });
    }

    public static void B(DialogWebBookEdit dialogWebBookEdit) {
        Context context = dialogWebBookEdit.b0;
        if (context != null) {
            int i = R.id.item_title_view;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i2 = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
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
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(MainApp.E1);
            myLineFrame.addView(myEditText, layoutParams2);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams3.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams3, context, 1);
            m.addView(g, -1, -2);
            int G2 = (int) MainUtil.G(context, 88.0f);
            int G3 = (int) MainUtil.G(context, 12.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            int i4 = MainApp.E1;
            frameLayout.setPadding(i4, G3, i4, G3);
            g.addView(frameLayout, -1, G2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.url);
            frameLayout.addView(j, -2, -2);
            MyEditText myEditText2 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
            myEditText2.setTextSize(1, 16.0f);
            if (i3 >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setHintTextColor(-8289919);
            myEditText2.setInputType(16);
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 8388691;
            frameLayout.addView(myEditText2, layoutParams4);
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            int i5 = MainApp.E1;
            myLineFrame2.setPadding(i5, i5, i5, i5);
            myLineFrame2.setMinimumHeight(MainApp.h1);
            myLineFrame2.d(MainApp.E1);
            g.addView(myLineFrame2, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams5.gravity = 16;
            myLineFrame2.addView(relativeLayout, layoutParams5);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setId(i);
            appCompatTextView.setTextSize(1, 14.0f);
            appCompatTextView.setText(R.string.save_location);
            relativeLayout.addView(appCompatTextView, -2, -2);
            AppCompatTextView i6 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
            i6.setEllipsize(TextUtils.TruncateAt.END);
            i6.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i);
            h.topMargin = MainApp.F1;
            relativeLayout.addView(i6, h);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.save);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogWebBookEdit.l0 = q;
            dialogWebBookEdit.m0 = myRoundImage;
            dialogWebBookEdit.n0 = myEditText;
            dialogWebBookEdit.o0 = j;
            dialogWebBookEdit.p0 = myEditText2;
            dialogWebBookEdit.q0 = myLineFrame2;
            dialogWebBookEdit.r0 = appCompatTextView;
            dialogWebBookEdit.s0 = i6;
            dialogWebBookEdit.t0 = myLineText;
            Handler handler = dialogWebBookEdit.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.2
                @Override // java.lang.Runnable
                public final void run() {
                    BookEditListener bookEditListener;
                    final DialogWebBookEdit dialogWebBookEdit2 = DialogWebBookEdit.this;
                    if (dialogWebBookEdit2.l0 != null && dialogWebBookEdit2.b0 != null) {
                        if (MainApp.K1) {
                            dialogWebBookEdit2.n0.setTextColor(-328966);
                            dialogWebBookEdit2.o0.setTextColor(-4079167);
                            dialogWebBookEdit2.p0.setTextColor(-328966);
                            dialogWebBookEdit2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogWebBookEdit2.r0.setTextColor(-4079167);
                            dialogWebBookEdit2.s0.setTextColor(-328966);
                            dialogWebBookEdit2.t0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogWebBookEdit2.t0.setTextColor(-328966);
                        } else {
                            dialogWebBookEdit2.n0.setTextColor(-16777216);
                            dialogWebBookEdit2.o0.setTextColor(-10395295);
                            dialogWebBookEdit2.p0.setTextColor(-16777216);
                            dialogWebBookEdit2.q0.setBackgroundResource(R.drawable.selector_normal);
                            dialogWebBookEdit2.r0.setTextColor(-10395295);
                            dialogWebBookEdit2.s0.setTextColor(-16777216);
                            dialogWebBookEdit2.t0.setBackgroundResource(R.drawable.selector_normal);
                            dialogWebBookEdit2.t0.setTextColor(-14784824);
                        }
                        if (!dialogWebBookEdit2.d0 && (bookEditListener = dialogWebBookEdit2.c0) != null) {
                            Bitmap icon = bookEditListener.getIcon();
                            if (!MainUtil.f6(icon)) {
                                icon = MainUtil.n4(MainUtil.O1(dialogWebBookEdit2.f0));
                            }
                            dialogWebBookEdit2.F(dialogWebBookEdit2.j0, dialogWebBookEdit2.g0, icon);
                        } else {
                            dialogWebBookEdit2.F(dialogWebBookEdit2.j0, dialogWebBookEdit2.g0, null);
                        }
                        dialogWebBookEdit2.G(dialogWebBookEdit2.h0);
                        dialogWebBookEdit2.n0.setElineColor(-14784824);
                        dialogWebBookEdit2.p0.setElineColor(-2434342);
                        dialogWebBookEdit2.n0.setText(dialogWebBookEdit2.g0);
                        dialogWebBookEdit2.p0.setText(dialogWebBookEdit2.f0);
                        dialogWebBookEdit2.n0.setSelectAllOnFocus(true);
                        dialogWebBookEdit2.n0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.3
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogWebBookEdit dialogWebBookEdit3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogWebBookEdit3 = DialogWebBookEdit.this).n0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-14784824);
                                dialogWebBookEdit3.p0.setElineColor(-2434342);
                            }
                        });
                        dialogWebBookEdit2.n0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                                if (dialogWebBookEdit3.w0 && dialogWebBookEdit3.m0 != null) {
                                    if (TextUtils.isEmpty(editable)) {
                                        dialogWebBookEdit3.m0.p(-460552, R.drawable.outline_public_black_24, null, null);
                                    } else {
                                        dialogWebBookEdit3.m0.p(-460552, R.drawable.outline_public_black_24, editable.toString(), null);
                                    }
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                            }
                        });
                        dialogWebBookEdit2.p0.setSelectAllOnFocus(true);
                        dialogWebBookEdit2.p0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.5
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogWebBookEdit dialogWebBookEdit3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogWebBookEdit3 = DialogWebBookEdit.this).n0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-2434342);
                                dialogWebBookEdit3.p0.setElineColor(-14784824);
                            }
                        });
                        dialogWebBookEdit2.p0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.6
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i7, KeyEvent keyEvent) {
                                DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                                MyEditText myEditText3 = dialogWebBookEdit3.p0;
                                if (myEditText3 == null || dialogWebBookEdit3.v0) {
                                    return true;
                                }
                                dialogWebBookEdit3.v0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.6.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogWebBookEdit dialogWebBookEdit4 = DialogWebBookEdit.this;
                                        DialogWebBookEdit.C(dialogWebBookEdit4, dialogWebBookEdit4.k0);
                                    }
                                });
                                return true;
                            }
                        });
                        dialogWebBookEdit2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                ArrayList arrayList;
                                final DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                                MainItem.ChildItem childItem = dialogWebBookEdit3.e0;
                                if (dialogWebBookEdit3.a0 == null || dialogWebBookEdit3.u0 != null) {
                                    return;
                                }
                                dialogWebBookEdit3.D();
                                if (childItem != null) {
                                    arrayList = new ArrayList();
                                    arrayList.add(childItem);
                                } else {
                                    arrayList = null;
                                }
                                DialogWebBookList dialogWebBookList = new DialogWebBookList(dialogWebBookEdit3.a0, dialogWebBookEdit3.i0, arrayList, 6, new DialogWebBookList.BookListListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.11
                                    @Override // com.mycompany.app.dialog.DialogWebBookList.BookListListener
                                    public final void a(String str) {
                                        int i7 = DialogWebBookEdit.D0;
                                        DialogWebBookEdit dialogWebBookEdit4 = DialogWebBookEdit.this;
                                        dialogWebBookEdit4.D();
                                        dialogWebBookEdit4.G(str);
                                    }

                                    @Override // com.mycompany.app.dialog.DialogWebBookList.BookListListener
                                    public final void b(int i7, String str) {
                                    }
                                });
                                dialogWebBookEdit3.u0 = dialogWebBookList;
                                dialogWebBookList.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.12
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i7 = DialogWebBookEdit.D0;
                                        DialogWebBookEdit.this.D();
                                    }
                                });
                            }
                        });
                        dialogWebBookEdit2.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                                MyLineText myLineText2 = dialogWebBookEdit3.t0;
                                if (myLineText2 == null || dialogWebBookEdit3.v0) {
                                    return;
                                }
                                dialogWebBookEdit3.v0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.8.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogWebBookEdit dialogWebBookEdit4 = DialogWebBookEdit.this;
                                        DialogWebBookEdit.C(dialogWebBookEdit4, dialogWebBookEdit4.k0);
                                    }
                                });
                            }
                        });
                        dialogWebBookEdit2.g(dialogWebBookEdit2.l0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                                if (dialogWebBookEdit3.l0 == null) {
                                    return;
                                }
                                dialogWebBookEdit3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogWebBookEdit dialogWebBookEdit, long j) {
        MyEditText myEditText = dialogWebBookEdit.n0;
        if (myEditText == null) {
            return;
        }
        String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(dialogWebBookEdit.n0);
            MainUtil.e8(dialogWebBookEdit.b0, R.string.input_name);
            dialogWebBookEdit.v0 = false;
            return;
        }
        String Q02 = MainUtil.Q0(dialogWebBookEdit.p0, true);
        if (TextUtils.isEmpty(Q02)) {
            MainUtil.b7(dialogWebBookEdit.p0);
            MainUtil.e8(dialogWebBookEdit.b0, R.string.input_url);
            dialogWebBookEdit.v0 = false;
            return;
        }
        dialogWebBookEdit.y0 = Q02;
        dialogWebBookEdit.z0 = Q0;
        dialogWebBookEdit.A0 = null;
        dialogWebBookEdit.B0 = j;
        dialogWebBookEdit.C0 = null;
        if (!dialogWebBookEdit.x0) {
            dialogWebBookEdit.E();
        } else {
            dialogWebBookEdit.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.13
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    DialogWebBookEdit dialogWebBookEdit2 = DialogWebBookEdit.this;
                    Context context = dialogWebBookEdit2.b0;
                    String str2 = dialogWebBookEdit2.i0;
                    String str3 = dialogWebBookEdit2.y0;
                    DbBookWeb dbBookWeb = DbBookWeb.f12966c;
                    final boolean z = false;
                    if (context != null && !TextUtils.isEmpty(str3)) {
                        if (PrefSync.k) {
                            str = "1";
                        } else {
                            str = "0";
                        }
                        String[] strArr = {str, str2, str3};
                        Cursor cursor = null;
                        try {
                            cursor = DbUtil.g(DbBookWeb.f(context).getWritableDatabase(), "DbBookWeb_table", null, "_secret=? AND _dir=? AND _path=?", strArr, null);
                            if (cursor != null) {
                                if (cursor.moveToFirst()) {
                                    z = true;
                                }
                            }
                        } catch (Exception unused) {
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                    Handler handler = dialogWebBookEdit2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.13.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogWebBookEdit dialogWebBookEdit3 = DialogWebBookEdit.this;
                            if (z) {
                                MyEditText myEditText2 = dialogWebBookEdit3.p0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.selectAll();
                                MainUtil.b7(dialogWebBookEdit3.p0);
                                MainUtil.e8(dialogWebBookEdit3.b0, R.string.already_added);
                                dialogWebBookEdit3.v0 = false;
                                return;
                            }
                            int i = DialogWebBookEdit.D0;
                            dialogWebBookEdit3.E();
                        }
                    });
                }
            });
        }
    }

    public final void D() {
        DialogWebBookList dialogWebBookList = this.u0;
        if (dialogWebBookList != null) {
            dialogWebBookList.dismiss();
            this.u0 = null;
        }
    }

    public final void E() {
        BookEditListener bookEditListener;
        MyDialogLinear myDialogLinear = this.l0;
        if (myDialogLinear == null) {
            return;
        }
        myDialogLinear.e(0, 0, true, false);
        if (!this.d0 && (bookEditListener = this.c0) != null) {
            this.A0 = bookEditListener.getIcon();
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.14
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                DialogWebBookEdit dialogWebBookEdit = DialogWebBookEdit.this;
                String str2 = dialogWebBookEdit.y0;
                String str3 = dialogWebBookEdit.z0;
                Bitmap bitmap = dialogWebBookEdit.A0;
                dialogWebBookEdit.y0 = null;
                dialogWebBookEdit.z0 = null;
                dialogWebBookEdit.A0 = null;
                if (dialogWebBookEdit.B0 == 0) {
                    if (!MainUtil.f6(bitmap)) {
                        bitmap = MainUtil.n3(dialogWebBookEdit.b0, str2);
                    }
                    Bitmap bitmap2 = bitmap;
                    if (dialogWebBookEdit.d0 && !MainUtil.f6(bitmap2)) {
                        dialogWebBookEdit.C0 = str2;
                    }
                    if (dialogWebBookEdit.x0) {
                        Context context = dialogWebBookEdit.b0;
                        String str4 = dialogWebBookEdit.i0;
                        DbBookWeb dbBookWeb = DbBookWeb.f12966c;
                        if (context != null && !TextUtils.isEmpty(str2)) {
                            if (TextUtils.isEmpty(str4)) {
                                str4 = "/";
                            }
                            String str5 = str4;
                            long currentTimeMillis = System.currentTimeMillis();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_isdir", (Integer) 0);
                            contentValues.put("_path", str2);
                            contentValues.put("_time", Long.valueOf(currentTimeMillis));
                            String[] strArr = {"_icon"};
                            if (PrefSync.k) {
                                str = "1";
                            } else {
                                str = "0";
                            }
                            DbBookWeb.v(context, strArr, new String[]{str, str2}, contentValues, str5, str2, str3, bitmap2);
                        }
                    } else {
                        MainItem.ChildItem u = DbBookWeb.u(dialogWebBookEdit.b0, dialogWebBookEdit.i0, str2, str3, bitmap2);
                        if (u != null) {
                            dialogWebBookEdit.B0 = u.y;
                        }
                    }
                } else {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("_dir", dialogWebBookEdit.i0);
                    contentValues2.put("_path", str2);
                    contentValues2.put("_title", str3);
                    if (!MainUtil.q5(dialogWebBookEdit.h0, dialogWebBookEdit.i0)) {
                        long currentTimeMillis2 = System.currentTimeMillis();
                        contentValues2.put("_time", Long.valueOf(currentTimeMillis2));
                        contentValues2.put("_rsv4", Long.valueOf(currentTimeMillis2));
                    }
                    DbUtil.i(DbBookWeb.f(dialogWebBookEdit.b0).getWritableDatabase(), "DbBookWeb_table", contentValues2, dialogWebBookEdit.B0);
                }
                Handler handler = dialogWebBookEdit.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.14.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebBookEdit dialogWebBookEdit2 = DialogWebBookEdit.this;
                        BookEditListener bookEditListener2 = dialogWebBookEdit2.c0;
                        if (bookEditListener2 != null) {
                            bookEditListener2.a(dialogWebBookEdit2.B0, dialogWebBookEdit2.i0, dialogWebBookEdit2.C0);
                        }
                        dialogWebBookEdit2.dismiss();
                    }
                });
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    public final void F(String str, String str2, Bitmap bitmap) {
        if (this.m0 == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            this.w0 = false;
            this.m0.setIconSmall(true);
            this.m0.setImageBitmap(bitmap);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.w0 = true;
            this.m0.p(-460552, R.drawable.outline_public_black_24, str2, null);
            return;
        }
        ?? obj = new Object();
        obj.f16554a = 1;
        obj.q = str;
        obj.s = str;
        obj.t = 2;
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.f20960a = true;
        Bitmap.Config config = Bitmap.Config.RGB_565;
        builder.a();
        builder.f = new Object();
        ImageLoader.f().c(obj, this.m0, new DisplayImageOptions(builder), new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogWebBookEdit.10
            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                DialogWebBookEdit dialogWebBookEdit = DialogWebBookEdit.this;
                if (dialogWebBookEdit.m0 == null) {
                    return;
                }
                dialogWebBookEdit.w0 = true;
                dialogWebBookEdit.m0.p(-460552, R.drawable.outline_public_black_24, MainUtil.Q0(dialogWebBookEdit.n0, true), null);
            }

            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap2) {
                DialogWebBookEdit dialogWebBookEdit = DialogWebBookEdit.this;
                MyRoundImage myRoundImage = dialogWebBookEdit.m0;
                if (myRoundImage == null) {
                    return;
                }
                dialogWebBookEdit.w0 = false;
                myRoundImage.setIconSmall(true);
                dialogWebBookEdit.m0.setImageBitmap(bitmap2);
            }
        });
    }

    public final void G(String str) {
        if (this.s0 == null) {
            return;
        }
        this.i0 = str;
        if (!TextUtils.isEmpty(str) && !str.equals("/")) {
            this.s0.setText(this.b0.getString(R.string.bookmark) + str);
            return;
        }
        this.s0.setText(R.string.bookmark);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        D();
        MyDialogLinear myDialogLinear = this.l0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.l0 = null;
        }
        MyRoundImage myRoundImage = this.m0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.m0 = null;
        }
        MyEditText myEditText = this.n0;
        if (myEditText != null) {
            myEditText.c();
            this.n0 = null;
        }
        MyEditText myEditText2 = this.p0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.p0 = null;
        }
        MyLineFrame myLineFrame = this.q0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.q0 = null;
        }
        MyLineText myLineText = this.t0;
        if (myLineText != null) {
            myLineText.u();
            this.t0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.j0 = null;
        this.r0 = null;
        this.s0 = null;
        this.o0 = null;
        this.h0 = null;
        this.i0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
