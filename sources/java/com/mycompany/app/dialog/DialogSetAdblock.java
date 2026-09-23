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
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookAds;
import com.mycompany.app.main.MainActivity;
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
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetAdblock extends MyDialogBottom {
    public static final /* synthetic */ int t0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogAdsListener c0;
    public String d0;
    public String e0;
    public MyDialogLinear f0;
    public MyButtonImage g0;
    public MyRecyclerView h0;
    public MyLineText i0;
    public SettingListAdapter j0;
    public DialogTask k0;
    public DialogListBook l0;
    public boolean m0;
    public boolean n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;

    /* loaded from: classes3.dex */
    public interface DialogAdsListener {
        void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str);
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogSetAdblock dialogSetAdblock, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogSetAdblock);
            this.e = weakReference;
            DialogSetAdblock dialogSetAdblock2 = (DialogSetAdblock) weakReference.get();
            if (dialogSetAdblock2 != null) {
                this.f = str;
                this.g = z;
                if (dialogSetAdblock2.f0 == null) {
                    return;
                }
                dialogSetAdblock2.setCanceledOnTouchOutside(false);
                dialogSetAdblock2.f0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetAdblock dialogSetAdblock;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetAdblock = (DialogSetAdblock) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookAds.l(dialogSetAdblock.b0).k(str);
                    DbBookAds.b(dialogSetAdblock.b0, str);
                    return;
                }
                DataBookAds l = DataBookAds.l(dialogSetAdblock.b0);
                l.getClass();
                try {
                    ArrayList arrayList = l.f12905c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        l.f12905c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogSetAdblock.b0;
                DbBookAds dbBookAds = DbBookAds.f12924c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookAds.a(context).getWritableDatabase(), "DbBookAds_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetAdblock dialogSetAdblock;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetAdblock = (DialogSetAdblock) weakReference.get()) != null) {
                dialogSetAdblock.k0 = null;
                if (dialogSetAdblock.f0 == null) {
                    return;
                }
                dialogSetAdblock.setCanceledOnTouchOutside(true);
                dialogSetAdblock.f0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetAdblock dialogSetAdblock;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetAdblock = (DialogSetAdblock) weakReference.get()) != null) {
                dialogSetAdblock.k0 = null;
                if (dialogSetAdblock.f0 == null) {
                    return;
                }
                dialogSetAdblock.setCanceledOnTouchOutside(true);
                dialogSetAdblock.f0.setBlockTouch(false);
            }
        }
    }

    public DialogSetAdblock(MainActivity mainActivity, String str, DialogAdsListener dialogAdsListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogAdsListener;
        String S6 = MainUtil.S6(str);
        this.d0 = S6;
        this.e0 = MainUtil.I1(S6, true);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAdblock.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetAdblock dialogSetAdblock = DialogSetAdblock.this;
                Context context = dialogSetAdblock.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388613;
                    layoutParams.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(myButtonImage, layoutParams);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(u, layoutParams2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetAdblock.f0 = q;
                    dialogSetAdblock.g0 = myButtonImage;
                    dialogSetAdblock.h0 = u;
                    dialogSetAdblock.i0 = myLineText;
                    Handler handler2 = dialogSetAdblock.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAdblock.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            ArrayList arrayList;
                            final DialogSetAdblock dialogSetAdblock2 = DialogSetAdblock.this;
                            if (dialogSetAdblock2.f0 != null && dialogSetAdblock2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetAdblock2.h0.setBackgroundColor(-16777216);
                                    dialogSetAdblock2.g0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetAdblock2.g0.setBgPreColor(-12632257);
                                    dialogSetAdblock2.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetAdblock2.i0.setTextColor(-328966);
                                } else {
                                    dialogSetAdblock2.h0.setBackgroundColor(-460552);
                                    dialogSetAdblock2.g0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetAdblock2.g0.setBgPreColor(553648128);
                                    dialogSetAdblock2.i0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetAdblock2.i0.setTextColor(-14784824);
                                }
                                dialogSetAdblock2.i0.setText(R.string.refresh);
                                dialogSetAdblock2.m0 = PrefWeb.o;
                                DataBookAds l = DataBookAds.l(dialogSetAdblock2.b0);
                                String str2 = dialogSetAdblock2.e0;
                                l.getClass();
                                try {
                                    arrayList = l.f12905c;
                                } catch (Exception unused) {
                                }
                                if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                                    z = l.f12905c.contains(str2);
                                    dialogSetAdblock2.n0 = z;
                                    dialogSetAdblock2.o0 = DataBookAds.l(dialogSetAdblock2.b0).m(dialogSetAdblock2.d0);
                                    dialogSetAdblock2.p0 = PrefWeb.o;
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(new SettingListAdapter.SettingItem(0, R.string.ads_block, R.string.ads_block_info, 2, dialogSetAdblock2.m0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(1, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.ads_allow_site, 0, 1, dialogSetAdblock2.n0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(3, R.string.ads_allow_page, 0, 0, dialogSetAdblock2.o0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(4, R.string.ads_white, 0, 0, 0), 1);
                                    dialogSetAdblock2.j0 = new SettingListAdapter(arrayList2, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.3
                                        /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z2, int i3) {
                                            DialogListBook dialogListBook;
                                            final DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                            if (i2 != 0) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            int i4 = DialogSetAdblock.t0;
                                                            return;
                                                        }
                                                        if (dialogSetAdblock3.a0 == null || (dialogListBook = dialogSetAdblock3.l0) != null) {
                                                            return;
                                                        }
                                                        if (dialogListBook != null) {
                                                            dialogListBook.dismiss();
                                                            dialogSetAdblock3.l0 = null;
                                                        }
                                                        ?? obj = new Object();
                                                        obj.f16734a = 19;
                                                        obj.i = true;
                                                        obj.f = R.string.ads_white;
                                                        DialogListBook dialogListBook2 = new DialogListBook(dialogSetAdblock3.a0, obj, dialogSetAdblock3.d0, null);
                                                        dialogSetAdblock3.l0 = dialogListBook2;
                                                        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.7
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i5 = DialogSetAdblock.t0;
                                                                DialogSetAdblock dialogSetAdblock4 = DialogSetAdblock.this;
                                                                DialogListBook dialogListBook3 = dialogSetAdblock4.l0;
                                                                if (dialogListBook3 != null) {
                                                                    dialogListBook3.dismiss();
                                                                    dialogSetAdblock4.l0 = null;
                                                                }
                                                                dialogSetAdblock4.B(false);
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    dialogSetAdblock3.o0 = z2;
                                                    String str3 = dialogSetAdblock3.d0;
                                                    DialogTask dialogTask = dialogSetAdblock3.k0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogSetAdblock3.k0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogSetAdblock3, str3, z2);
                                                    dialogSetAdblock3.k0 = dialogTask2;
                                                    dialogTask2.b(dialogSetAdblock3.b0);
                                                    return;
                                                }
                                                dialogSetAdblock3.n0 = z2;
                                                String str4 = dialogSetAdblock3.e0;
                                                DialogTask dialogTask3 = dialogSetAdblock3.k0;
                                                if (dialogTask3 != null) {
                                                    dialogTask3.f12839c = true;
                                                }
                                                dialogSetAdblock3.k0 = null;
                                                DialogTask dialogTask4 = new DialogTask(dialogSetAdblock3, str4, z2);
                                                dialogSetAdblock3.k0 = dialogTask4;
                                                dialogTask4.b(dialogSetAdblock3.b0);
                                                return;
                                            }
                                            dialogSetAdblock3.m0 = z2;
                                            PrefWeb.o = z2;
                                            PrefSet.d(14, dialogSetAdblock3.b0, "mAdsBlock", z2);
                                        }
                                    });
                                    dialogSetAdblock2.h0.u0(true, false);
                                    dialogSetAdblock2.h0.setLayoutManager(t);
                                    dialogSetAdblock2.h0.setAdapter(dialogSetAdblock2.j0);
                                    dialogSetAdblock2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                            if (dialogSetAdblock3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogSetAdblock3.b0, (Class<?>) SettingClean.class);
                                            intent.putExtra("EXTRA_POPUP", true);
                                            intent.putExtra("EXTRA_PATH", dialogSetAdblock3.d0);
                                            dialogSetAdblock3.a0.t0(intent, 35);
                                        }
                                    });
                                    dialogSetAdblock2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.5
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                            dialogSetAdblock3.s0 = true;
                                            dialogSetAdblock3.dismiss();
                                        }
                                    });
                                    dialogSetAdblock2.g(dialogSetAdblock2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.6
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                            if (dialogSetAdblock3.f0 == null) {
                                                return;
                                            }
                                            dialogSetAdblock3.show();
                                        }
                                    });
                                }
                                z = false;
                                dialogSetAdblock2.n0 = z;
                                dialogSetAdblock2.o0 = DataBookAds.l(dialogSetAdblock2.b0).m(dialogSetAdblock2.d0);
                                dialogSetAdblock2.p0 = PrefWeb.o;
                                ArrayList arrayList22 = new ArrayList();
                                arrayList22.add(new SettingListAdapter.SettingItem(0, R.string.ads_block, R.string.ads_block_info, 2, dialogSetAdblock2.m0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(1, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(2, R.string.ads_allow_site, 0, 1, dialogSetAdblock2.n0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(3, R.string.ads_allow_page, 0, 0, dialogSetAdblock2.o0, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList22, new SettingListAdapter.SettingItem(4, R.string.ads_white, 0, 0, 0), 1);
                                dialogSetAdblock2.j0 = new SettingListAdapter(arrayList22, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.3
                                    /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z2, int i3) {
                                        DialogListBook dialogListBook;
                                        final DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                        if (i2 != 0) {
                                            if (i2 != 2) {
                                                if (i2 != 3) {
                                                    if (i2 != 4) {
                                                        int i4 = DialogSetAdblock.t0;
                                                        return;
                                                    }
                                                    if (dialogSetAdblock3.a0 == null || (dialogListBook = dialogSetAdblock3.l0) != null) {
                                                        return;
                                                    }
                                                    if (dialogListBook != null) {
                                                        dialogListBook.dismiss();
                                                        dialogSetAdblock3.l0 = null;
                                                    }
                                                    ?? obj = new Object();
                                                    obj.f16734a = 19;
                                                    obj.i = true;
                                                    obj.f = R.string.ads_white;
                                                    DialogListBook dialogListBook2 = new DialogListBook(dialogSetAdblock3.a0, obj, dialogSetAdblock3.d0, null);
                                                    dialogSetAdblock3.l0 = dialogListBook2;
                                                    dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.7
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i5 = DialogSetAdblock.t0;
                                                            DialogSetAdblock dialogSetAdblock4 = DialogSetAdblock.this;
                                                            DialogListBook dialogListBook3 = dialogSetAdblock4.l0;
                                                            if (dialogListBook3 != null) {
                                                                dialogListBook3.dismiss();
                                                                dialogSetAdblock4.l0 = null;
                                                            }
                                                            dialogSetAdblock4.B(false);
                                                        }
                                                    });
                                                    return;
                                                }
                                                dialogSetAdblock3.o0 = z2;
                                                String str3 = dialogSetAdblock3.d0;
                                                DialogTask dialogTask = dialogSetAdblock3.k0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogSetAdblock3.k0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogSetAdblock3, str3, z2);
                                                dialogSetAdblock3.k0 = dialogTask2;
                                                dialogTask2.b(dialogSetAdblock3.b0);
                                                return;
                                            }
                                            dialogSetAdblock3.n0 = z2;
                                            String str4 = dialogSetAdblock3.e0;
                                            DialogTask dialogTask3 = dialogSetAdblock3.k0;
                                            if (dialogTask3 != null) {
                                                dialogTask3.f12839c = true;
                                            }
                                            dialogSetAdblock3.k0 = null;
                                            DialogTask dialogTask4 = new DialogTask(dialogSetAdblock3, str4, z2);
                                            dialogSetAdblock3.k0 = dialogTask4;
                                            dialogTask4.b(dialogSetAdblock3.b0);
                                            return;
                                        }
                                        dialogSetAdblock3.m0 = z2;
                                        PrefWeb.o = z2;
                                        PrefSet.d(14, dialogSetAdblock3.b0, "mAdsBlock", z2);
                                    }
                                });
                                dialogSetAdblock2.h0.u0(true, false);
                                dialogSetAdblock2.h0.setLayoutManager(t2);
                                dialogSetAdblock2.h0.setAdapter(dialogSetAdblock2.j0);
                                dialogSetAdblock2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                        if (dialogSetAdblock3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetAdblock3.b0, (Class<?>) SettingClean.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        intent.putExtra("EXTRA_PATH", dialogSetAdblock3.d0);
                                        dialogSetAdblock3.a0.t0(intent, 35);
                                    }
                                });
                                dialogSetAdblock2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                        dialogSetAdblock3.s0 = true;
                                        dialogSetAdblock3.dismiss();
                                    }
                                });
                                dialogSetAdblock2.g(dialogSetAdblock2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetAdblock.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetAdblock dialogSetAdblock3 = DialogSetAdblock.this;
                                        if (dialogSetAdblock3.f0 == null) {
                                            return;
                                        }
                                        dialogSetAdblock3.show();
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
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(boolean r22) {
        /*
            r21 = this;
            r0 = r21
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            if (r1 != 0) goto L8
            goto L8d
        L8:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookAds r1 = com.mycompany.app.data.book.DataBookAds.l(r1)
            java.lang.String r2 = r0.e0
            r1.getClass()
            java.util.ArrayList r3 = r1.f12905c     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2d
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L1e
            goto L2d
        L1e:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L25
            goto L2d
        L25:
            java.util.ArrayList r1 = r1.f12905c     // Catch: java.lang.Exception -> L2d
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L2d
        L2b:
            r7 = r1
            goto L2f
        L2d:
            r1 = 0
            goto L2b
        L2f:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookAds r1 = com.mycompany.app.data.book.DataBookAds.l(r1)
            java.lang.String r2 = r0.d0
            boolean r13 = r1.m(r2)
            boolean r1 = r0.m0
            boolean r2 = com.mycompany.app.pref.PrefWeb.o
            if (r1 == r2) goto L58
            r0.m0 = r2
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r14 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r16 = com.mycompany.app.soulbrowser.R.string.ads_block
            int r17 = com.mycompany.app.soulbrowser.R.string.ads_block_info
            r20 = 1
            r18 = 2
            r15 = 0
            r19 = r2
            r14.<init>(r15, r16, r17, r18, r19, r20)
            r1.D(r14)
        L58:
            boolean r1 = r0.n0
            if (r1 == r7) goto L6e
            r0.n0 = r7
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r2 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r4 = com.mycompany.app.soulbrowser.R.string.ads_allow_site
            r8 = 1
            r6 = 1
            r3 = 2
            r5 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8)
            r1.D(r2)
        L6e:
            boolean r1 = r0.o0
            if (r1 == r13) goto L84
            r0.o0 = r13
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r8 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r10 = com.mycompany.app.soulbrowser.R.string.ads_allow_page
            r14 = 1
            r12 = 0
            r9 = 3
            r11 = 0
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r1.D(r8)
        L84:
            com.mycompany.app.dialog.DialogListBook r1 = r0.l0
            if (r1 == 0) goto L8d
            r2 = r22
            r1.s(r2)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetAdblock.B(boolean):void");
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
        DialogListBook dialogListBook = this.l0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.l0 = null;
        }
        DialogAdsListener dialogAdsListener = this.c0;
        if (dialogAdsListener != null) {
            if (this.p0 != PrefWeb.o) {
                z = true;
            } else {
                z = false;
            }
            dialogAdsListener.a(false, z, this.q0, !this.r0, this.s0, null);
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
        MyLineText myLineText = this.i0;
        if (myLineText != null) {
            myLineText.u();
            this.i0 = null;
        }
        SettingListAdapter settingListAdapter = this.j0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        super.dismiss();
    }
}
