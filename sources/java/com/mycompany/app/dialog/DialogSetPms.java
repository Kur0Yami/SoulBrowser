package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.data.book.DataBookPms;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookPms;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetPms extends MyDialogBottom {
    public static final /* synthetic */ int m0 = 0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public MyDialogLinear c0;
    public MyLineFrame d0;
    public MyRoundImage e0;
    public AppCompatTextView f0;
    public MyRecyclerView g0;
    public MyLineText h0;
    public SettingListAdapter i0;
    public MainItem.ChildItem j0;
    public int k0;
    public int l0;

    /* renamed from: com.mycompany.app.dialog.DialogSetPms$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i;
            DialogSetPms dialogSetPms = DialogSetPms.this;
            MainItem.ChildItem childItem = dialogSetPms.j0;
            if (childItem != null) {
                if (childItem.T == dialogSetPms.k0 && childItem.U == dialogSetPms.l0) {
                    dialogSetPms.dismiss();
                    return;
                }
                MyLineText myLineText = dialogSetPms.h0;
                if (myLineText == null) {
                    return;
                }
                if (MainApp.K1) {
                    i = -8355712;
                } else {
                    i = -2434342;
                }
                myLineText.setTextColor(i);
                dialogSetPms.h0.setEnabled(false);
                dialogSetPms.c0.e(0, 0, true, false);
                dialogSetPms.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPms.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogSetPms dialogSetPms2 = DialogSetPms.this;
                        MainItem.ChildItem childItem2 = dialogSetPms2.j0;
                        if (childItem2 != null) {
                            int i2 = dialogSetPms2.k0;
                            childItem2.T = i2;
                            childItem2.U = dialogSetPms2.l0;
                            childItem2.F = DbBookPms.a(dialogSetPms2.a0, i2);
                            childItem2.G = DbBookPms.a(dialogSetPms2.a0, dialogSetPms2.l0);
                            DataBookPms.k(dialogSetPms2.a0).j(childItem2);
                            Context context = dialogSetPms2.a0;
                            long j = childItem2.y;
                            int i3 = dialogSetPms2.k0;
                            int i4 = dialogSetPms2.l0;
                            if (context != null && j > 0) {
                                SQLiteDatabase writableDatabase = DbBookPms.b(context).getWritableDatabase();
                                if (DbUtil.c(writableDatabase, "DbBookPms_table", j) == 1) {
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("_time", Long.valueOf(System.currentTimeMillis()));
                                    contentValues.put("_allow", Integer.valueOf(i3));
                                    contentValues.put("_block", Integer.valueOf(i4));
                                    DbUtil.i(writableDatabase, "DbBookPms_table", contentValues, j);
                                }
                            }
                            Handler handler = dialogSetPms2.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPms.4.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    DialogSetFull.DialogApplyListener dialogApplyListener = DialogSetPms.this.b0;
                                    if (dialogApplyListener != null) {
                                        dialogApplyListener.a();
                                    }
                                    DialogSetPms.this.dismiss();
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public DialogSetPms(Activity activity, MainItem.ChildItem childItem, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.j0 = childItem;
        this.k0 = childItem.T;
        this.l0 = childItem.U;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPms.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetPms dialogSetPms = DialogSetPms.this;
                Context context = dialogSetPms.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(myRoundImage, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setMaxLines(2);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    appCompatTextView.setTextSize(1, 16.0f);
                    int G = (int) MainUtil.G(context, 72.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, G);
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(appCompatTextView, layoutParams2);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams3.weight = 1.0f;
                    q.addView(u, layoutParams3);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetPms.c0 = q;
                    dialogSetPms.d0 = myLineFrame;
                    dialogSetPms.e0 = myRoundImage;
                    dialogSetPms.f0 = appCompatTextView;
                    dialogSetPms.g0 = u;
                    dialogSetPms.h0 = myLineText;
                    Handler handler2 = dialogSetPms.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPms.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            boolean z5;
                            boolean z6;
                            boolean z7;
                            boolean z8;
                            boolean z9;
                            boolean z10;
                            boolean z11;
                            final DialogSetPms dialogSetPms2 = DialogSetPms.this;
                            if (dialogSetPms2.c0 != null && dialogSetPms2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetPms2.f0.setTextColor(-328966);
                                    dialogSetPms2.h0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetPms2.h0.setTextColor(-328966);
                                } else {
                                    dialogSetPms2.f0.setTextColor(-16777216);
                                    dialogSetPms2.h0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetPms2.h0.setTextColor(-14784824);
                                }
                                MainItem.ChildItem childItem2 = dialogSetPms2.j0;
                                if (childItem2 != null) {
                                    dialogSetPms2.e0.o(-460552, R.drawable.outline_public_black_24);
                                    dialogSetPms2.f0.setText(childItem2.h);
                                    dialogSetPms2.h0.setText(R.string.apply);
                                    int i2 = dialogSetPms2.k0;
                                    boolean z12 = false;
                                    if ((i2 & 2) == 2) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if ((i2 & 4) == 4) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if ((i2 & 16) == 16) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if ((i2 & 8) == 8) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    int i3 = dialogSetPms2.l0;
                                    if ((i3 & 2) == 2) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    if ((i3 & 4) == 4) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if ((i3 & 16) == 16) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if ((i3 & 8) == 8) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    if (!z && !z5) {
                                        z9 = false;
                                    } else {
                                        z9 = true;
                                    }
                                    if (!z2 && !z6) {
                                        z10 = false;
                                    } else {
                                        z10 = true;
                                    }
                                    if (!z3 && !z7) {
                                        z11 = false;
                                    } else {
                                        z11 = true;
                                    }
                                    if (z4 || z8) {
                                        z12 = true;
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    if (z9) {
                                        arrayList.add(new SettingListAdapter.SettingItem(0, R.string.camera, 0, 0, z, true));
                                    }
                                    if (z10) {
                                        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.audio, 0, 0, z2, true));
                                    }
                                    if (z11) {
                                        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.media, 0, 0, z3, true));
                                    }
                                    if (z12) {
                                        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.location, 0, 0, z4, true));
                                    }
                                    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                    dialogSetPms2.i0 = new SettingListAdapter(arrayList, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetPms.3
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z13, int i5) {
                                            DialogSetPms dialogSetPms3 = DialogSetPms.this;
                                            if (i4 != 0) {
                                                if (i4 != 1) {
                                                    if (i4 != 2) {
                                                        if (i4 != 3) {
                                                            int i6 = DialogSetPms.m0;
                                                            dialogSetPms3.getClass();
                                                            return;
                                                        } else if (z13) {
                                                            dialogSetPms3.k0 |= 8;
                                                            dialogSetPms3.l0 &= -9;
                                                            return;
                                                        } else {
                                                            dialogSetPms3.k0 &= -9;
                                                            dialogSetPms3.l0 |= 8;
                                                            return;
                                                        }
                                                    }
                                                    if (z13) {
                                                        dialogSetPms3.k0 |= 16;
                                                        dialogSetPms3.l0 &= -17;
                                                        return;
                                                    } else {
                                                        dialogSetPms3.k0 &= -17;
                                                        dialogSetPms3.l0 |= 16;
                                                        return;
                                                    }
                                                }
                                                if (z13) {
                                                    dialogSetPms3.k0 |= 4;
                                                    dialogSetPms3.l0 &= -5;
                                                    return;
                                                } else {
                                                    dialogSetPms3.k0 &= -5;
                                                    dialogSetPms3.l0 |= 4;
                                                    return;
                                                }
                                            }
                                            if (z13) {
                                                dialogSetPms3.k0 |= 2;
                                                dialogSetPms3.l0 &= -3;
                                            } else {
                                                dialogSetPms3.k0 &= -3;
                                                dialogSetPms3.l0 |= 2;
                                            }
                                        }
                                    });
                                    dialogSetPms2.g0.setLayoutManager(linearLayoutManager);
                                    dialogSetPms2.g0.setAdapter(dialogSetPms2.i0);
                                    dialogSetPms2.h0.setOnClickListener(new AnonymousClass4());
                                    dialogSetPms2.g(dialogSetPms2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetPms.5
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSetPms dialogSetPms3 = DialogSetPms.this;
                                            if (dialogSetPms3.c0 == null) {
                                                return;
                                            }
                                            dialogSetPms3.show();
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
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
        MyRecyclerView myRecyclerView = this.g0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.g0 = null;
        }
        MyLineText myLineText = this.h0;
        if (myLineText != null) {
            myLineText.u();
            this.h0 = null;
        }
        SettingListAdapter settingListAdapter = this.i0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.j0 = null;
        super.dismiss();
    }
}
