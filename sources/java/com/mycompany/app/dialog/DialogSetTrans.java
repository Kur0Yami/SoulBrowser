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
import com.mycompany.app.data.book.DataBookTrans;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookTrans;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.setting.SettingTrans;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetTrans extends MyDialogBottom {
    public static final /* synthetic */ int u0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public String d0;
    public String e0;
    public MyDialogLinear f0;
    public View g0;
    public MyButtonImage h0;
    public MyRecyclerView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public MyPopupMenu l0;
    public DialogTransLang m0;
    public DialogTask n0;
    public DialogListBook o0;
    public int p0;
    public String q0;
    public boolean r0;
    public boolean s0;
    public boolean t0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogSetTrans dialogSetTrans, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogSetTrans);
            this.e = weakReference;
            DialogSetTrans dialogSetTrans2 = (DialogSetTrans) weakReference.get();
            if (dialogSetTrans2 != null) {
                this.f = str;
                this.g = z;
                if (dialogSetTrans2.f0 == null) {
                    return;
                }
                dialogSetTrans2.setCanceledOnTouchOutside(false);
                dialogSetTrans2.f0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetTrans dialogSetTrans;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTrans = (DialogSetTrans) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookTrans.l(dialogSetTrans.b0).k(str);
                    DbBookTrans.d(dialogSetTrans.b0, str);
                    return;
                }
                DataBookTrans l = DataBookTrans.l(dialogSetTrans.b0);
                l.getClass();
                try {
                    ArrayList arrayList = l.f12916c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        l.f12916c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogSetTrans.b0;
                DbBookTrans dbBookTrans = DbBookTrans.f12962c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookTrans.b(context).getWritableDatabase(), "DbBookTrans_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetTrans dialogSetTrans;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTrans = (DialogSetTrans) weakReference.get()) != null) {
                dialogSetTrans.n0 = null;
                if (dialogSetTrans.f0 == null) {
                    return;
                }
                dialogSetTrans.setCanceledOnTouchOutside(true);
                dialogSetTrans.f0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetTrans dialogSetTrans;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTrans = (DialogSetTrans) weakReference.get()) != null) {
                dialogSetTrans.n0 = null;
                if (dialogSetTrans.f0 == null) {
                    return;
                }
                dialogSetTrans.setCanceledOnTouchOutside(true);
                dialogSetTrans.f0.setBlockTouch(false);
            }
        }
    }

    public DialogSetTrans(WebViewActivity webViewActivity, String str, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        String S6 = MainUtil.S6(str);
        this.d0 = S6;
        this.e0 = MainUtil.I1(S6, true);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTrans.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTrans dialogSetTrans = DialogSetTrans.this;
                Context context = dialogSetTrans.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    View view = new View(context);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) MainUtil.G(context, 176.0f), MainApp.E1);
                    layoutParams.gravity = 17;
                    myLineFrame.addView(view, layoutParams);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
                    layoutParams2.gravity = 8388613;
                    layoutParams2.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(myButtonImage, layoutParams2);
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
                    dialogSetTrans.f0 = q;
                    dialogSetTrans.g0 = view;
                    dialogSetTrans.h0 = myButtonImage;
                    dialogSetTrans.i0 = u;
                    dialogSetTrans.j0 = myLineText;
                    Handler handler2 = dialogSetTrans.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTrans.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            ArrayList arrayList;
                            final DialogSetTrans dialogSetTrans2 = DialogSetTrans.this;
                            if (dialogSetTrans2.f0 != null && dialogSetTrans2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetTrans2.i0.setBackgroundColor(-16777216);
                                    dialogSetTrans2.g0.setBackgroundResource(R.drawable.trans_logo_regular_white);
                                    dialogSetTrans2.h0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetTrans2.h0.setBgPreColor(-12632257);
                                    dialogSetTrans2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetTrans2.j0.setTextColor(-328966);
                                } else {
                                    dialogSetTrans2.i0.setBackgroundColor(-460552);
                                    dialogSetTrans2.g0.setBackgroundResource(R.drawable.trans_logo_regular_color);
                                    dialogSetTrans2.h0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetTrans2.h0.setBgPreColor(553648128);
                                    dialogSetTrans2.j0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetTrans2.j0.setTextColor(-14784824);
                                }
                                dialogSetTrans2.j0.setText(R.string.translate);
                                dialogSetTrans2.p0 = PrefAlbum.u;
                                dialogSetTrans2.q0 = PrefAlbum.y;
                                dialogSetTrans2.r0 = PrefAlbum.v;
                                DataBookTrans l = DataBookTrans.l(dialogSetTrans2.b0);
                                String str2 = dialogSetTrans2.e0;
                                l.getClass();
                                try {
                                    arrayList = l.f12916c;
                                } catch (Exception unused) {
                                }
                                if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                                    z = l.f12916c.contains(str2);
                                    dialogSetTrans2.s0 = z;
                                    dialogSetTrans2.t0 = DataBookTrans.l(dialogSetTrans2.b0).m(dialogSetTrans2.d0);
                                    int i2 = SettingTrans.j2[PrefAlbum.u];
                                    int i3 = SettingTrans.k2[PrefAlbum.u];
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(new SettingListAdapter.SettingItem(0, R.string.trans_detect, i2, i3, 0));
                                    arrayList2.add(new SettingListAdapter.SettingItem(1, R.string.locale, PrefAlbum.y, 0, 0));
                                    arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.trans_icon_always, 0, 2, PrefAlbum.v, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(3, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(4, R.string.trans_block_site, 0, 1, dialogSetTrans2.s0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(5, R.string.trans_block_page, 0, 0, dialogSetTrans2.t0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(6, R.string.trans_except, 0, 0, 0), 1);
                                    dialogSetTrans2.k0 = new SettingListAdapter(arrayList2, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.3
                                        /* JADX WARN: Type inference failed for: r11v17, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z2, int i5) {
                                            MyPopupMenu myPopupMenu;
                                            boolean z3;
                                            DialogListBook dialogListBook;
                                            int i6 = DialogSetTrans.u0;
                                            final DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                            if (i4 != 0) {
                                                if (i4 != 1) {
                                                    if (i4 != 2) {
                                                        if (i4 != 4) {
                                                            if (i4 != 5) {
                                                                if (i4 == 6 && dialogSetTrans3.a0 != null && dialogSetTrans3.m0 == null && (dialogListBook = dialogSetTrans3.o0) == null) {
                                                                    if (dialogListBook != null) {
                                                                        dialogListBook.dismiss();
                                                                        dialogSetTrans3.o0 = null;
                                                                    }
                                                                    ?? obj = new Object();
                                                                    obj.f16734a = 30;
                                                                    obj.i = true;
                                                                    obj.f = R.string.trans_except;
                                                                    DialogListBook dialogListBook2 = new DialogListBook(dialogSetTrans3.a0, obj, dialogSetTrans3.d0, null);
                                                                    dialogSetTrans3.o0 = dialogListBook2;
                                                                    dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.10
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int i7 = DialogSetTrans.u0;
                                                                            DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                                            DialogListBook dialogListBook3 = dialogSetTrans4.o0;
                                                                            if (dialogListBook3 != null) {
                                                                                dialogListBook3.dismiss();
                                                                                dialogSetTrans4.o0 = null;
                                                                            }
                                                                            dialogSetTrans4.C(false);
                                                                        }
                                                                    });
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            dialogSetTrans3.t0 = z2;
                                                            String str3 = dialogSetTrans3.d0;
                                                            DialogTask dialogTask = dialogSetTrans3.n0;
                                                            if (dialogTask != null) {
                                                                dialogTask.f12839c = true;
                                                            }
                                                            dialogSetTrans3.n0 = null;
                                                            DialogTask dialogTask2 = new DialogTask(dialogSetTrans3, str3, z2);
                                                            dialogSetTrans3.n0 = dialogTask2;
                                                            dialogTask2.b(dialogSetTrans3.b0);
                                                            return;
                                                        }
                                                        dialogSetTrans3.s0 = z2;
                                                        String str4 = dialogSetTrans3.e0;
                                                        DialogTask dialogTask3 = dialogSetTrans3.n0;
                                                        if (dialogTask3 != null) {
                                                            dialogTask3.f12839c = true;
                                                        }
                                                        dialogSetTrans3.n0 = null;
                                                        DialogTask dialogTask4 = new DialogTask(dialogSetTrans3, str4, z2);
                                                        dialogSetTrans3.n0 = dialogTask4;
                                                        dialogTask4.b(dialogSetTrans3.b0);
                                                        return;
                                                    }
                                                    PrefAlbum.v = z2;
                                                    PrefSet.d(0, dialogSetTrans3.b0, "mTransIcon", z2);
                                                    return;
                                                }
                                                if (dialogSetTrans3.a0 != null && dialogSetTrans3.m0 == null && dialogSetTrans3.o0 == null) {
                                                    dialogSetTrans3.B();
                                                    DialogTransLang dialogTransLang = new DialogTransLang(dialogSetTrans3.a0, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.8
                                                        @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                        public final void a(String str5) {
                                                            int i7 = DialogSetTrans.u0;
                                                            DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                            dialogSetTrans4.B();
                                                            SettingListAdapter settingListAdapter = dialogSetTrans4.k0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.G(1, PrefAlbum.y);
                                                            }
                                                        }
                                                    });
                                                    dialogSetTrans3.m0 = dialogTransLang;
                                                    dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.9
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i7 = DialogSetTrans.u0;
                                                            DialogSetTrans.this.B();
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            if (dialogSetTrans3.a0 != null && (myPopupMenu = dialogSetTrans3.l0) == null) {
                                                if (myPopupMenu != null) {
                                                    dialogSetTrans3.Y = null;
                                                    myPopupMenu.a();
                                                    dialogSetTrans3.l0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    int[] iArr = SettingTrans.i2;
                                                    for (int i7 = 0; i7 < 3; i7++) {
                                                        int i8 = SettingTrans.i2[i7];
                                                        int i9 = SettingTrans.j2[i8];
                                                        if (PrefAlbum.u == i8) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i7, i9, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTrans3.a0, dialogSetTrans3.f0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i10 = DialogSetTrans.u0;
                                                            DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                            MyPopupMenu myPopupMenu3 = dialogSetTrans4.l0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogSetTrans4.Y = null;
                                                                myPopupMenu3.a();
                                                                dialogSetTrans4.l0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view2, int i10) {
                                                            int i11 = SettingTrans.i2[i10 % 3];
                                                            if (PrefAlbum.u != i11) {
                                                                DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                                dialogSetTrans4.p0 = i11;
                                                                PrefAlbum.u = i11;
                                                                PrefSet.f(dialogSetTrans4.b0, 0, i11, "mTransMode2");
                                                                SettingListAdapter settingListAdapter = dialogSetTrans4.k0;
                                                                if (settingListAdapter != null) {
                                                                    settingListAdapter.F(0, SettingTrans.j2[i11]);
                                                                    dialogSetTrans4.k0.C(0, SettingTrans.k2[i11]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogSetTrans3.l0 = myPopupMenu2;
                                                    dialogSetTrans3.Y = myPopupMenu2;
                                                }
                                            }
                                        }
                                    });
                                    dialogSetTrans2.i0.u0(true, false);
                                    dialogSetTrans2.i0.setLayoutManager(t);
                                    dialogSetTrans2.i0.setAdapter(dialogSetTrans2.k0);
                                    dialogSetTrans2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                            if (dialogSetTrans3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogSetTrans3.b0, (Class<?>) SettingTrans.class);
                                            intent.putExtra("EXTRA_PATH", dialogSetTrans3.d0);
                                            dialogSetTrans3.a0.startActivity(intent);
                                        }
                                    });
                                    dialogSetTrans2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.5
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            DialogSetFull.DialogApplyListener dialogApplyListener2 = DialogSetTrans.this.c0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                        }
                                    });
                                    dialogSetTrans2.g(dialogSetTrans2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.6
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view2) {
                                            DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                            if (dialogSetTrans3.f0 == null) {
                                                return;
                                            }
                                            dialogSetTrans3.show();
                                        }
                                    });
                                }
                                z = false;
                                dialogSetTrans2.s0 = z;
                                dialogSetTrans2.t0 = DataBookTrans.l(dialogSetTrans2.b0).m(dialogSetTrans2.d0);
                                int i22 = SettingTrans.j2[PrefAlbum.u];
                                int i32 = SettingTrans.k2[PrefAlbum.u];
                                ArrayList arrayList22 = new ArrayList();
                                arrayList22.add(new SettingListAdapter.SettingItem(0, R.string.trans_detect, i22, i32, 0));
                                arrayList22.add(new SettingListAdapter.SettingItem(1, R.string.locale, PrefAlbum.y, 0, 0));
                                arrayList22.add(new SettingListAdapter.SettingItem(2, R.string.trans_icon_always, 0, 2, PrefAlbum.v, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(3, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(4, R.string.trans_block_site, 0, 1, dialogSetTrans2.s0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(5, R.string.trans_block_page, 0, 0, dialogSetTrans2.t0, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList22, new SettingListAdapter.SettingItem(6, R.string.trans_except, 0, 0, 0), 1);
                                dialogSetTrans2.k0 = new SettingListAdapter(arrayList22, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.3
                                    /* JADX WARN: Type inference failed for: r11v17, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z2, int i5) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z3;
                                        DialogListBook dialogListBook;
                                        int i6 = DialogSetTrans.u0;
                                        final DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                        if (i4 != 0) {
                                            if (i4 != 1) {
                                                if (i4 != 2) {
                                                    if (i4 != 4) {
                                                        if (i4 != 5) {
                                                            if (i4 == 6 && dialogSetTrans3.a0 != null && dialogSetTrans3.m0 == null && (dialogListBook = dialogSetTrans3.o0) == null) {
                                                                if (dialogListBook != null) {
                                                                    dialogListBook.dismiss();
                                                                    dialogSetTrans3.o0 = null;
                                                                }
                                                                ?? obj = new Object();
                                                                obj.f16734a = 30;
                                                                obj.i = true;
                                                                obj.f = R.string.trans_except;
                                                                DialogListBook dialogListBook2 = new DialogListBook(dialogSetTrans3.a0, obj, dialogSetTrans3.d0, null);
                                                                dialogSetTrans3.o0 = dialogListBook2;
                                                                dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.10
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int i7 = DialogSetTrans.u0;
                                                                        DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                                        DialogListBook dialogListBook3 = dialogSetTrans4.o0;
                                                                        if (dialogListBook3 != null) {
                                                                            dialogListBook3.dismiss();
                                                                            dialogSetTrans4.o0 = null;
                                                                        }
                                                                        dialogSetTrans4.C(false);
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        dialogSetTrans3.t0 = z2;
                                                        String str3 = dialogSetTrans3.d0;
                                                        DialogTask dialogTask = dialogSetTrans3.n0;
                                                        if (dialogTask != null) {
                                                            dialogTask.f12839c = true;
                                                        }
                                                        dialogSetTrans3.n0 = null;
                                                        DialogTask dialogTask2 = new DialogTask(dialogSetTrans3, str3, z2);
                                                        dialogSetTrans3.n0 = dialogTask2;
                                                        dialogTask2.b(dialogSetTrans3.b0);
                                                        return;
                                                    }
                                                    dialogSetTrans3.s0 = z2;
                                                    String str4 = dialogSetTrans3.e0;
                                                    DialogTask dialogTask3 = dialogSetTrans3.n0;
                                                    if (dialogTask3 != null) {
                                                        dialogTask3.f12839c = true;
                                                    }
                                                    dialogSetTrans3.n0 = null;
                                                    DialogTask dialogTask4 = new DialogTask(dialogSetTrans3, str4, z2);
                                                    dialogSetTrans3.n0 = dialogTask4;
                                                    dialogTask4.b(dialogSetTrans3.b0);
                                                    return;
                                                }
                                                PrefAlbum.v = z2;
                                                PrefSet.d(0, dialogSetTrans3.b0, "mTransIcon", z2);
                                                return;
                                            }
                                            if (dialogSetTrans3.a0 != null && dialogSetTrans3.m0 == null && dialogSetTrans3.o0 == null) {
                                                dialogSetTrans3.B();
                                                DialogTransLang dialogTransLang = new DialogTransLang(dialogSetTrans3.a0, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.8
                                                    @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                    public final void a(String str5) {
                                                        int i7 = DialogSetTrans.u0;
                                                        DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                        dialogSetTrans4.B();
                                                        SettingListAdapter settingListAdapter = dialogSetTrans4.k0;
                                                        if (settingListAdapter != null) {
                                                            settingListAdapter.G(1, PrefAlbum.y);
                                                        }
                                                    }
                                                });
                                                dialogSetTrans3.m0 = dialogTransLang;
                                                dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i7 = DialogSetTrans.u0;
                                                        DialogSetTrans.this.B();
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        }
                                        if (dialogSetTrans3.a0 != null && (myPopupMenu = dialogSetTrans3.l0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetTrans3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetTrans3.l0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList3 = new ArrayList();
                                                int[] iArr = SettingTrans.i2;
                                                for (int i7 = 0; i7 < 3; i7++) {
                                                    int i8 = SettingTrans.i2[i7];
                                                    int i9 = SettingTrans.j2[i8];
                                                    if (PrefAlbum.u == i8) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(i7, i9, z3));
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTrans3.a0, dialogSetTrans3.f0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.7
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i10 = DialogSetTrans.u0;
                                                        DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                        MyPopupMenu myPopupMenu3 = dialogSetTrans4.l0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogSetTrans4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogSetTrans4.l0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view2, int i10) {
                                                        int i11 = SettingTrans.i2[i10 % 3];
                                                        if (PrefAlbum.u != i11) {
                                                            DialogSetTrans dialogSetTrans4 = DialogSetTrans.this;
                                                            dialogSetTrans4.p0 = i11;
                                                            PrefAlbum.u = i11;
                                                            PrefSet.f(dialogSetTrans4.b0, 0, i11, "mTransMode2");
                                                            SettingListAdapter settingListAdapter = dialogSetTrans4.k0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.F(0, SettingTrans.j2[i11]);
                                                                dialogSetTrans4.k0.C(0, SettingTrans.k2[i11]);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetTrans3.l0 = myPopupMenu2;
                                                dialogSetTrans3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogSetTrans2.i0.u0(true, false);
                                dialogSetTrans2.i0.setLayoutManager(t2);
                                dialogSetTrans2.i0.setAdapter(dialogSetTrans2.k0);
                                dialogSetTrans2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                        if (dialogSetTrans3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetTrans3.b0, (Class<?>) SettingTrans.class);
                                        intent.putExtra("EXTRA_PATH", dialogSetTrans3.d0);
                                        dialogSetTrans3.a0.startActivity(intent);
                                    }
                                });
                                dialogSetTrans2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetFull.DialogApplyListener dialogApplyListener2 = DialogSetTrans.this.c0;
                                        if (dialogApplyListener2 != null) {
                                            dialogApplyListener2.a();
                                        }
                                    }
                                });
                                dialogSetTrans2.g(dialogSetTrans2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTrans.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogSetTrans dialogSetTrans3 = DialogSetTrans.this;
                                        if (dialogSetTrans3.f0 == null) {
                                            return;
                                        }
                                        dialogSetTrans3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        DialogTransLang dialogTransLang = this.m0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.m0 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(boolean r22) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetTrans.C(boolean):void");
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.n0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.n0 = null;
        MyPopupMenu myPopupMenu = this.l0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.l0 = null;
        }
        B();
        DialogListBook dialogListBook = this.o0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.o0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyButtonImage myButtonImage = this.h0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h0 = null;
        }
        MyRecyclerView myRecyclerView = this.i0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.i0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        SettingListAdapter settingListAdapter = this.k0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        super.dismiss();
    }
}
