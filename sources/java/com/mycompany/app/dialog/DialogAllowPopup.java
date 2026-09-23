package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookPop;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookPop;
import com.mycompany.app.dialog.DialogSetAdblock;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingClean;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogAllowPopup extends MyDialogBottom {
    public static final /* synthetic */ int s0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public DialogSetAdblock.DialogAdsListener c0;
    public String d0;
    public String e0;
    public MyDialogLinear f0;
    public MyButtonImage g0;
    public MyRecyclerView h0;
    public SettingListAdapter i0;
    public MyPopupMenu j0;
    public DialogTask k0;
    public DialogListBook l0;
    public int m0;
    public boolean n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogAllowPopup dialogAllowPopup, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogAllowPopup);
            this.e = weakReference;
            DialogAllowPopup dialogAllowPopup2 = (DialogAllowPopup) weakReference.get();
            if (dialogAllowPopup2 != null) {
                this.f = str;
                this.g = z;
                if (dialogAllowPopup2.f0 == null) {
                    return;
                }
                dialogAllowPopup2.setCanceledOnTouchOutside(false);
                dialogAllowPopup2.f0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogAllowPopup dialogAllowPopup;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogAllowPopup = (DialogAllowPopup) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookPop.l(dialogAllowPopup.b0).k(str);
                    DbBookPop.b(dialogAllowPopup.b0, str);
                    return;
                }
                DataBookPop l = DataBookPop.l(dialogAllowPopup.b0);
                l.getClass();
                try {
                    ArrayList arrayList = l.f12911c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        l.f12911c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogAllowPopup.b0;
                DbBookPop dbBookPop = DbBookPop.f12945c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookPop.a(context).getWritableDatabase(), "DbBookPop_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogAllowPopup dialogAllowPopup;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogAllowPopup = (DialogAllowPopup) weakReference.get()) != null) {
                dialogAllowPopup.k0 = null;
                if (dialogAllowPopup.f0 == null) {
                    return;
                }
                dialogAllowPopup.setCanceledOnTouchOutside(true);
                dialogAllowPopup.f0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogAllowPopup dialogAllowPopup;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogAllowPopup = (DialogAllowPopup) weakReference.get()) != null) {
                dialogAllowPopup.k0 = null;
                if (dialogAllowPopup.f0 == null) {
                    return;
                }
                dialogAllowPopup.setCanceledOnTouchOutside(true);
                dialogAllowPopup.f0.setBlockTouch(false);
            }
        }
    }

    public DialogAllowPopup(WebViewActivity webViewActivity, String str, DialogSetAdblock.DialogAdsListener dialogAdsListener) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogAdsListener;
        String S6 = MainUtil.S6(str);
        this.d0 = S6;
        this.e0 = MainUtil.I1(S6, true);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogAllowPopup.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogAllowPopup dialogAllowPopup = DialogAllowPopup.this;
                Context context = dialogAllowPopup.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388613;
                    layoutParams.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(myButtonImage, layoutParams);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.u0(true, false);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(myRecyclerView, layoutParams2);
                    dialogAllowPopup.f0 = q;
                    dialogAllowPopup.g0 = myButtonImage;
                    dialogAllowPopup.h0 = myRecyclerView;
                    Handler handler2 = dialogAllowPopup.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogAllowPopup.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            ArrayList arrayList;
                            final DialogAllowPopup dialogAllowPopup2 = DialogAllowPopup.this;
                            if (dialogAllowPopup2.f0 != null && dialogAllowPopup2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogAllowPopup2.h0.setBackgroundColor(-16777216);
                                    dialogAllowPopup2.g0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogAllowPopup2.g0.setBgPreColor(-12632257);
                                } else {
                                    dialogAllowPopup2.h0.setBackgroundColor(-460552);
                                    dialogAllowPopup2.g0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogAllowPopup2.g0.setBgPreColor(553648128);
                                }
                                dialogAllowPopup2.m0 = PrefWeb.q;
                                DataBookPop l = DataBookPop.l(dialogAllowPopup2.b0);
                                String str2 = dialogAllowPopup2.e0;
                                l.getClass();
                                try {
                                    arrayList = l.f12911c;
                                } catch (Exception unused) {
                                }
                                if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                                    z = l.f12911c.contains(str2);
                                    dialogAllowPopup2.n0 = z;
                                    dialogAllowPopup2.o0 = DataBookPop.l(dialogAllowPopup2.b0).m(dialogAllowPopup2.d0);
                                    dialogAllowPopup2.p0 = PrefWeb.o;
                                    ArrayList arrayList2 = new ArrayList();
                                    int i2 = R.string.pop_block;
                                    int[] iArr = SettingClean.y2;
                                    int i3 = dialogAllowPopup2.m0;
                                    arrayList2.add(new SettingListAdapter.SettingItem(0, i2, iArr[i3], SettingClean.z2[i3], 2));
                                    arrayList2.add(new SettingListAdapter.SettingItem(1, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.pop_allow_site, 0, 1, dialogAllowPopup2.n0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(3, R.string.pop_allow_page, 0, 0, dialogAllowPopup2.o0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(4, R.string.pop_white, 0, 0, 0), 1);
                                    dialogAllowPopup2.i0 = new SettingListAdapter(arrayList2, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.3
                                        /* JADX WARN: Type inference failed for: r11v9, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z2, int i5) {
                                            MyPopupMenu myPopupMenu;
                                            boolean z3;
                                            DialogListBook dialogListBook;
                                            final DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                            if (i4 != 0) {
                                                if (i4 != 2) {
                                                    if (i4 != 3) {
                                                        if (i4 != 4) {
                                                            int i6 = DialogAllowPopup.s0;
                                                            return;
                                                        }
                                                        if (dialogAllowPopup3.a0 != null && (dialogListBook = dialogAllowPopup3.l0) == null) {
                                                            if (dialogListBook != null) {
                                                                dialogListBook.dismiss();
                                                                dialogAllowPopup3.l0 = null;
                                                            }
                                                            ?? obj = new Object();
                                                            obj.f16734a = 21;
                                                            obj.i = true;
                                                            obj.f = R.string.pop_white;
                                                            DialogListBook dialogListBook2 = new DialogListBook(dialogAllowPopup3.a0, obj, dialogAllowPopup3.d0, null);
                                                            dialogAllowPopup3.l0 = dialogListBook2;
                                                            dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.7
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i7 = DialogAllowPopup.s0;
                                                                    DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                                    DialogListBook dialogListBook3 = dialogAllowPopup4.l0;
                                                                    if (dialogListBook3 != null) {
                                                                        dialogListBook3.dismiss();
                                                                        dialogAllowPopup4.l0 = null;
                                                                    }
                                                                    dialogAllowPopup4.B(false);
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    dialogAllowPopup3.o0 = z2;
                                                    String str3 = dialogAllowPopup3.d0;
                                                    DialogTask dialogTask = dialogAllowPopup3.k0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogAllowPopup3.k0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogAllowPopup3, str3, z2);
                                                    dialogAllowPopup3.k0 = dialogTask2;
                                                    dialogTask2.b(dialogAllowPopup3.b0);
                                                    return;
                                                }
                                                dialogAllowPopup3.n0 = z2;
                                                String str4 = dialogAllowPopup3.e0;
                                                DialogTask dialogTask3 = dialogAllowPopup3.k0;
                                                if (dialogTask3 != null) {
                                                    dialogTask3.f12839c = true;
                                                }
                                                dialogAllowPopup3.k0 = null;
                                                DialogTask dialogTask4 = new DialogTask(dialogAllowPopup3, str4, z2);
                                                dialogAllowPopup3.k0 = dialogTask4;
                                                dialogTask4.b(dialogAllowPopup3.b0);
                                                return;
                                            }
                                            if (dialogAllowPopup3.a0 != null && (myPopupMenu = dialogAllowPopup3.j0) == null) {
                                                if (myPopupMenu != null) {
                                                    dialogAllowPopup3.Y = null;
                                                    myPopupMenu.a();
                                                    dialogAllowPopup3.j0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    int[] iArr2 = SettingClean.v2;
                                                    for (int i7 = 0; i7 < 4; i7++) {
                                                        int i8 = SettingClean.A2[i7];
                                                        int i9 = SettingClean.y2[i8];
                                                        if (dialogAllowPopup3.m0 == i8) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i7, i9, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogAllowPopup3.a0, dialogAllowPopup3.f0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i10 = DialogAllowPopup.s0;
                                                            DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                            MyPopupMenu myPopupMenu3 = dialogAllowPopup4.j0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogAllowPopup4.Y = null;
                                                                myPopupMenu3.a();
                                                                dialogAllowPopup4.j0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i10) {
                                                            int i11 = SettingClean.A2[i10 % 4];
                                                            DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                            if (dialogAllowPopup4.m0 != i11) {
                                                                dialogAllowPopup4.m0 = i11;
                                                                PrefWeb.q = i11;
                                                                PrefSet.f(dialogAllowPopup4.b0, 14, i11, "mPopBlock2");
                                                                SettingListAdapter settingListAdapter = dialogAllowPopup4.i0;
                                                                if (settingListAdapter != null) {
                                                                    settingListAdapter.F(0, SettingClean.y2[i11]);
                                                                    dialogAllowPopup4.i0.C(0, SettingClean.z2[i11]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogAllowPopup3.j0 = myPopupMenu2;
                                                    dialogAllowPopup3.Y = myPopupMenu2;
                                                }
                                            }
                                        }
                                    });
                                    dialogAllowPopup2.h0.setLayoutManager(t);
                                    dialogAllowPopup2.h0.setAdapter(dialogAllowPopup2.i0);
                                    dialogAllowPopup2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                            if (dialogAllowPopup3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogAllowPopup3.b0, (Class<?>) SettingClean.class);
                                            intent.putExtra("EXTRA_POPUP", true);
                                            intent.putExtra("EXTRA_NOTI", true);
                                            intent.putExtra("EXTRA_INDEX", 11);
                                            intent.putExtra("EXTRA_PATH", dialogAllowPopup3.d0);
                                            dialogAllowPopup3.a0.t0(intent, 35);
                                        }
                                    });
                                    dialogAllowPopup2.g(dialogAllowPopup2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.5
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                            if (dialogAllowPopup3.f0 == null) {
                                                return;
                                            }
                                            dialogAllowPopup3.show();
                                        }
                                    });
                                }
                                z = false;
                                dialogAllowPopup2.n0 = z;
                                dialogAllowPopup2.o0 = DataBookPop.l(dialogAllowPopup2.b0).m(dialogAllowPopup2.d0);
                                dialogAllowPopup2.p0 = PrefWeb.o;
                                ArrayList arrayList22 = new ArrayList();
                                int i22 = R.string.pop_block;
                                int[] iArr2 = SettingClean.y2;
                                int i32 = dialogAllowPopup2.m0;
                                arrayList22.add(new SettingListAdapter.SettingItem(0, i22, iArr2[i32], SettingClean.z2[i32], 2));
                                arrayList22.add(new SettingListAdapter.SettingItem(1, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(2, R.string.pop_allow_site, 0, 1, dialogAllowPopup2.n0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(3, R.string.pop_allow_page, 0, 0, dialogAllowPopup2.o0, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList22, new SettingListAdapter.SettingItem(4, R.string.pop_white, 0, 0, 0), 1);
                                dialogAllowPopup2.i0 = new SettingListAdapter(arrayList22, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.3
                                    /* JADX WARN: Type inference failed for: r11v9, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z2, int i5) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z3;
                                        DialogListBook dialogListBook;
                                        final DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                        if (i4 != 0) {
                                            if (i4 != 2) {
                                                if (i4 != 3) {
                                                    if (i4 != 4) {
                                                        int i6 = DialogAllowPopup.s0;
                                                        return;
                                                    }
                                                    if (dialogAllowPopup3.a0 != null && (dialogListBook = dialogAllowPopup3.l0) == null) {
                                                        if (dialogListBook != null) {
                                                            dialogListBook.dismiss();
                                                            dialogAllowPopup3.l0 = null;
                                                        }
                                                        ?? obj = new Object();
                                                        obj.f16734a = 21;
                                                        obj.i = true;
                                                        obj.f = R.string.pop_white;
                                                        DialogListBook dialogListBook2 = new DialogListBook(dialogAllowPopup3.a0, obj, dialogAllowPopup3.d0, null);
                                                        dialogAllowPopup3.l0 = dialogListBook2;
                                                        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.7
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i7 = DialogAllowPopup.s0;
                                                                DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                                DialogListBook dialogListBook3 = dialogAllowPopup4.l0;
                                                                if (dialogListBook3 != null) {
                                                                    dialogListBook3.dismiss();
                                                                    dialogAllowPopup4.l0 = null;
                                                                }
                                                                dialogAllowPopup4.B(false);
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    return;
                                                }
                                                dialogAllowPopup3.o0 = z2;
                                                String str3 = dialogAllowPopup3.d0;
                                                DialogTask dialogTask = dialogAllowPopup3.k0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogAllowPopup3.k0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogAllowPopup3, str3, z2);
                                                dialogAllowPopup3.k0 = dialogTask2;
                                                dialogTask2.b(dialogAllowPopup3.b0);
                                                return;
                                            }
                                            dialogAllowPopup3.n0 = z2;
                                            String str4 = dialogAllowPopup3.e0;
                                            DialogTask dialogTask3 = dialogAllowPopup3.k0;
                                            if (dialogTask3 != null) {
                                                dialogTask3.f12839c = true;
                                            }
                                            dialogAllowPopup3.k0 = null;
                                            DialogTask dialogTask4 = new DialogTask(dialogAllowPopup3, str4, z2);
                                            dialogAllowPopup3.k0 = dialogTask4;
                                            dialogTask4.b(dialogAllowPopup3.b0);
                                            return;
                                        }
                                        if (dialogAllowPopup3.a0 != null && (myPopupMenu = dialogAllowPopup3.j0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogAllowPopup3.Y = null;
                                                myPopupMenu.a();
                                                dialogAllowPopup3.j0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList3 = new ArrayList();
                                                int[] iArr22 = SettingClean.v2;
                                                for (int i7 = 0; i7 < 4; i7++) {
                                                    int i8 = SettingClean.A2[i7];
                                                    int i9 = SettingClean.y2[i8];
                                                    if (dialogAllowPopup3.m0 == i8) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(i7, i9, z3));
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogAllowPopup3.a0, dialogAllowPopup3.f0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.6
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i10 = DialogAllowPopup.s0;
                                                        DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                        MyPopupMenu myPopupMenu3 = dialogAllowPopup4.j0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogAllowPopup4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogAllowPopup4.j0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i10) {
                                                        int i11 = SettingClean.A2[i10 % 4];
                                                        DialogAllowPopup dialogAllowPopup4 = DialogAllowPopup.this;
                                                        if (dialogAllowPopup4.m0 != i11) {
                                                            dialogAllowPopup4.m0 = i11;
                                                            PrefWeb.q = i11;
                                                            PrefSet.f(dialogAllowPopup4.b0, 14, i11, "mPopBlock2");
                                                            SettingListAdapter settingListAdapter = dialogAllowPopup4.i0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.F(0, SettingClean.y2[i11]);
                                                                dialogAllowPopup4.i0.C(0, SettingClean.z2[i11]);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogAllowPopup3.j0 = myPopupMenu2;
                                                dialogAllowPopup3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogAllowPopup2.h0.setLayoutManager(t2);
                                dialogAllowPopup2.h0.setAdapter(dialogAllowPopup2.i0);
                                dialogAllowPopup2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                        if (dialogAllowPopup3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogAllowPopup3.b0, (Class<?>) SettingClean.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        intent.putExtra("EXTRA_INDEX", 11);
                                        intent.putExtra("EXTRA_PATH", dialogAllowPopup3.d0);
                                        dialogAllowPopup3.a0.t0(intent, 35);
                                    }
                                });
                                dialogAllowPopup2.g(dialogAllowPopup2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogAllowPopup.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogAllowPopup dialogAllowPopup3 = DialogAllowPopup.this;
                                        if (dialogAllowPopup3.f0 == null) {
                                            return;
                                        }
                                        dialogAllowPopup3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(boolean r21) {
        /*
            r20 = this;
            r0 = r20
            com.mycompany.app.setting.SettingListAdapter r1 = r0.i0
            if (r1 != 0) goto L8
            goto L8f
        L8:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookPop r1 = com.mycompany.app.data.book.DataBookPop.l(r1)
            java.lang.String r2 = r0.e0
            r1.getClass()
            java.util.ArrayList r3 = r1.f12911c     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2d
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L1e
            goto L2d
        L1e:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L25
            goto L2d
        L25:
            java.util.ArrayList r1 = r1.f12911c     // Catch: java.lang.Exception -> L2d
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L2d
        L2b:
            r7 = r1
            goto L2f
        L2d:
            r1 = 0
            goto L2b
        L2f:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookPop r1 = com.mycompany.app.data.book.DataBookPop.l(r1)
            java.lang.String r2 = r0.d0
            boolean r13 = r1.m(r2)
            int r1 = r0.m0
            int r2 = com.mycompany.app.pref.PrefWeb.q
            if (r1 == r2) goto L5a
            r0.m0 = r2
            com.mycompany.app.setting.SettingListAdapter r1 = r0.i0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r14 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r16 = com.mycompany.app.soulbrowser.R.string.pop_block
            int[] r3 = com.mycompany.app.setting.SettingClean.y2
            r17 = r3[r2]
            int[] r3 = com.mycompany.app.setting.SettingClean.z2
            r18 = r3[r2]
            r19 = 3
            r15 = 0
            r14.<init>(r15, r16, r17, r18, r19)
            r1.D(r14)
        L5a:
            boolean r1 = r0.n0
            if (r1 == r7) goto L70
            r0.n0 = r7
            com.mycompany.app.setting.SettingListAdapter r1 = r0.i0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r2 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r4 = com.mycompany.app.soulbrowser.R.string.pop_allow_site
            r8 = 1
            r6 = 1
            r3 = 2
            r5 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8)
            r1.D(r2)
        L70:
            boolean r1 = r0.o0
            if (r1 == r13) goto L86
            r0.o0 = r13
            com.mycompany.app.setting.SettingListAdapter r1 = r0.i0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r8 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r10 = com.mycompany.app.soulbrowser.R.string.pop_allow_page
            r14 = 1
            r12 = 0
            r9 = 3
            r11 = 0
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r1.D(r8)
        L86:
            com.mycompany.app.dialog.DialogListBook r1 = r0.l0
            if (r1 == 0) goto L8f
            r2 = r21
            r1.s(r2)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogAllowPopup.B(boolean):void");
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z;
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.k0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.k0 = null;
        MyPopupMenu myPopupMenu = this.j0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.j0 = null;
        }
        DialogListBook dialogListBook = this.l0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.l0 = null;
        }
        DialogSetAdblock.DialogAdsListener dialogAdsListener = this.c0;
        if (dialogAdsListener != null) {
            if (this.p0 != PrefWeb.o) {
                z = true;
            } else {
                z = false;
            }
            dialogAdsListener.a(false, z, this.q0, !this.r0, false, null);
            this.c0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyButtonImage myButtonImage = this.g0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.g0 = null;
        }
        MyRecyclerView myRecyclerView = this.h0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.h0 = null;
        }
        SettingListAdapter settingListAdapter = this.i0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        super.dismiss();
    }
}
