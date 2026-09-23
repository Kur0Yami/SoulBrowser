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
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookTmem;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookTmem;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.setting.SettingMemory;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetTmem extends MyDialogBottom {
    public static final /* synthetic */ int p0 = 0;
    public MainActivity a0;
    public Context b0;
    public String c0;
    public String d0;
    public MyDialogLinear e0;
    public MyButtonImage f0;
    public MyRecyclerView g0;
    public SettingListAdapter h0;
    public DialogTask i0;
    public MyPopupMenu j0;
    public DialogSeekSimple k0;
    public DialogListBook l0;
    public int m0;
    public boolean n0;
    public boolean o0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogSetTmem dialogSetTmem, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogSetTmem);
            this.e = weakReference;
            DialogSetTmem dialogSetTmem2 = (DialogSetTmem) weakReference.get();
            if (dialogSetTmem2 != null) {
                this.f = str;
                this.g = z;
                if (dialogSetTmem2.e0 == null) {
                    return;
                }
                dialogSetTmem2.setCanceledOnTouchOutside(false);
                dialogSetTmem2.e0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetTmem dialogSetTmem;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTmem = (DialogSetTmem) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookTmem.l(dialogSetTmem.b0).k(str);
                    DbBookTmem.d(dialogSetTmem.b0, str);
                    return;
                }
                DataBookTmem l = DataBookTmem.l(dialogSetTmem.b0);
                l.getClass();
                try {
                    ArrayList arrayList = l.f12915c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        l.f12915c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogSetTmem.b0;
                DbBookTmem dbBookTmem = DbBookTmem.f12961c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookTmem.b(context).getWritableDatabase(), "DbBookTmem_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetTmem dialogSetTmem;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTmem = (DialogSetTmem) weakReference.get()) != null) {
                dialogSetTmem.i0 = null;
                if (dialogSetTmem.e0 == null) {
                    return;
                }
                dialogSetTmem.setCanceledOnTouchOutside(true);
                dialogSetTmem.e0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetTmem dialogSetTmem;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetTmem = (DialogSetTmem) weakReference.get()) != null) {
                dialogSetTmem.i0 = null;
                if (dialogSetTmem.e0 == null) {
                    return;
                }
                dialogSetTmem.setCanceledOnTouchOutside(true);
                dialogSetTmem.e0.setBlockTouch(false);
            }
        }
    }

    public DialogSetTmem(MainActivity mainActivity, String str) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        String S6 = MainUtil.S6(str);
        this.c0 = S6;
        this.d0 = MainUtil.I1(S6, true);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTmem.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTmem dialogSetTmem = DialogSetTmem.this;
                Context context = dialogSetTmem.b0;
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
                    dialogSetTmem.e0 = q;
                    dialogSetTmem.f0 = myButtonImage;
                    dialogSetTmem.g0 = u;
                    Handler handler2 = dialogSetTmem.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTmem.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            ArrayList arrayList;
                            final DialogSetTmem dialogSetTmem2 = DialogSetTmem.this;
                            if (dialogSetTmem2.e0 != null && dialogSetTmem2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetTmem2.g0.setBackgroundColor(-16777216);
                                    dialogSetTmem2.f0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetTmem2.f0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetTmem2.g0.setBackgroundColor(-460552);
                                    dialogSetTmem2.f0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetTmem2.f0.setBgPreColor(553648128);
                                }
                                dialogSetTmem2.m0 = PrefZtwo.G;
                                DataBookTmem l = DataBookTmem.l(dialogSetTmem2.b0);
                                String str2 = dialogSetTmem2.d0;
                                l.getClass();
                                try {
                                    arrayList = l.f12915c;
                                } catch (Exception unused) {
                                }
                                if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                                    z = l.f12915c.contains(str2);
                                    dialogSetTmem2.n0 = z;
                                    dialogSetTmem2.o0 = DataBookTmem.l(dialogSetTmem2.b0).m(dialogSetTmem2.c0);
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(new SettingListAdapter.SettingItem(0, R.string.mem_limit, dialogSetTmem2.C(PrefZtwo.G), DialogSetTmem.D(dialogSetTmem2.b0), false, false, 2));
                                    arrayList2.add(new SettingListAdapter.SettingItem(1, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.mem_block_site, 0, 1, dialogSetTmem2.n0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(3, R.string.mem_block_page, 0, 0, dialogSetTmem2.o0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(4, R.string.mem_block_list, 0, 0, 0), 1);
                                    dialogSetTmem2.h0 = new SettingListAdapter(arrayList2, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.3
                                        /* JADX WARN: Type inference failed for: r10v11, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z2, int i3) {
                                            MyPopupMenu myPopupMenu;
                                            DialogListBook dialogListBook;
                                            final DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                            if (i2 != 0) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            int i4 = DialogSetTmem.p0;
                                                            return;
                                                        }
                                                        if (dialogSetTmem3.a0 != null && dialogSetTmem3.k0 == null && (dialogListBook = dialogSetTmem3.l0) == null) {
                                                            if (dialogListBook != null) {
                                                                dialogListBook.dismiss();
                                                                dialogSetTmem3.l0 = null;
                                                            }
                                                            ?? obj = new Object();
                                                            obj.f16734a = 29;
                                                            obj.i = true;
                                                            obj.f = R.string.mem_block_list;
                                                            DialogListBook dialogListBook2 = new DialogListBook(dialogSetTmem3.a0, obj, dialogSetTmem3.c0, null);
                                                            dialogSetTmem3.l0 = dialogListBook2;
                                                            dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.9
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i5 = DialogSetTmem.p0;
                                                                    DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                                    DialogListBook dialogListBook3 = dialogSetTmem4.l0;
                                                                    if (dialogListBook3 != null) {
                                                                        dialogListBook3.dismiss();
                                                                        dialogSetTmem4.l0 = null;
                                                                    }
                                                                    dialogSetTmem4.E(false);
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    dialogSetTmem3.o0 = z2;
                                                    String str3 = dialogSetTmem3.c0;
                                                    DialogTask dialogTask = dialogSetTmem3.i0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogSetTmem3.i0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogSetTmem3, str3, z2);
                                                    dialogSetTmem3.i0 = dialogTask2;
                                                    dialogTask2.b(dialogSetTmem3.b0);
                                                    return;
                                                }
                                                dialogSetTmem3.n0 = z2;
                                                String str4 = dialogSetTmem3.d0;
                                                DialogTask dialogTask3 = dialogSetTmem3.i0;
                                                if (dialogTask3 != null) {
                                                    dialogTask3.f12839c = true;
                                                }
                                                dialogSetTmem3.i0 = null;
                                                DialogTask dialogTask4 = new DialogTask(dialogSetTmem3, str4, z2);
                                                dialogSetTmem3.i0 = dialogTask4;
                                                dialogTask4.b(dialogSetTmem3.b0);
                                                return;
                                            }
                                            if (dialogSetTmem3.a0 != null && (myPopupMenu = dialogSetTmem3.j0) == null) {
                                                if (myPopupMenu != null) {
                                                    dialogSetTmem3.Y = null;
                                                    myPopupMenu.a();
                                                    dialogSetTmem3.j0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_none));
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(1, R.string.setting));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTmem3.a0, dialogSetTmem3.e0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i5 = DialogSetTmem.p0;
                                                            DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                            MyPopupMenu myPopupMenu3 = dialogSetTmem4.j0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogSetTmem4.Y = null;
                                                                myPopupMenu3.a();
                                                                dialogSetTmem4.j0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i5) {
                                                            DialogSeekSimple dialogSeekSimple;
                                                            final DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                            if (dialogSetTmem4.h0 != null) {
                                                                if (i5 != 0) {
                                                                    if (dialogSetTmem4.a0 != null && (dialogSeekSimple = dialogSetTmem4.k0) == null && dialogSetTmem4.l0 == null) {
                                                                        if (dialogSeekSimple != null) {
                                                                            dialogSeekSimple.dismiss();
                                                                            dialogSetTmem4.k0 = null;
                                                                        }
                                                                        int i6 = PrefZtwo.G;
                                                                        if (i6 < 3) {
                                                                            i6 = 5;
                                                                        }
                                                                        DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(dialogSetTmem4.a0, 11, i6, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.7
                                                                            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                            public final void a(int i7) {
                                                                                DialogSetTmem.B(DialogSetTmem.this, i7);
                                                                            }
                                                                        });
                                                                        dialogSetTmem4.k0 = dialogSeekSimple2;
                                                                        dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.8
                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                int i7 = DialogSetTmem.p0;
                                                                                DialogSetTmem dialogSetTmem5 = DialogSetTmem.this;
                                                                                DialogSeekSimple dialogSeekSimple3 = dialogSetTmem5.k0;
                                                                                if (dialogSeekSimple3 != null) {
                                                                                    dialogSeekSimple3.dismiss();
                                                                                    dialogSetTmem5.k0 = null;
                                                                                }
                                                                            }
                                                                        });
                                                                        return true;
                                                                    }
                                                                } else {
                                                                    DialogSetTmem.B(dialogSetTmem4, i5);
                                                                    return true;
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogSetTmem3.j0 = myPopupMenu2;
                                                    dialogSetTmem3.Y = myPopupMenu2;
                                                }
                                            }
                                        }
                                    });
                                    dialogSetTmem2.g0.u0(true, false);
                                    dialogSetTmem2.g0.setLayoutManager(t);
                                    dialogSetTmem2.g0.setAdapter(dialogSetTmem2.h0);
                                    dialogSetTmem2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                            if (dialogSetTmem3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogSetTmem3.b0, (Class<?>) SettingMemory.class);
                                            intent.putExtra("EXTRA_NOTI", true);
                                            intent.putExtra("EXTRA_INDEX", 7);
                                            intent.putExtra("EXTRA_PATH", dialogSetTmem3.c0);
                                            dialogSetTmem3.a0.startActivity(intent);
                                        }
                                    });
                                    dialogSetTmem2.g(dialogSetTmem2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.5
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                            if (dialogSetTmem3.e0 == null) {
                                                return;
                                            }
                                            dialogSetTmem3.show();
                                        }
                                    });
                                }
                                z = false;
                                dialogSetTmem2.n0 = z;
                                dialogSetTmem2.o0 = DataBookTmem.l(dialogSetTmem2.b0).m(dialogSetTmem2.c0);
                                ArrayList arrayList22 = new ArrayList();
                                arrayList22.add(new SettingListAdapter.SettingItem(0, R.string.mem_limit, dialogSetTmem2.C(PrefZtwo.G), DialogSetTmem.D(dialogSetTmem2.b0), false, false, 2));
                                arrayList22.add(new SettingListAdapter.SettingItem(1, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(2, R.string.mem_block_site, 0, 1, dialogSetTmem2.n0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(3, R.string.mem_block_page, 0, 0, dialogSetTmem2.o0, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList22, new SettingListAdapter.SettingItem(4, R.string.mem_block_list, 0, 0, 0), 1);
                                dialogSetTmem2.h0 = new SettingListAdapter(arrayList22, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.3
                                    /* JADX WARN: Type inference failed for: r10v11, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z2, int i3) {
                                        MyPopupMenu myPopupMenu;
                                        DialogListBook dialogListBook;
                                        final DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                        if (i2 != 0) {
                                            if (i2 != 2) {
                                                if (i2 != 3) {
                                                    if (i2 != 4) {
                                                        int i4 = DialogSetTmem.p0;
                                                        return;
                                                    }
                                                    if (dialogSetTmem3.a0 != null && dialogSetTmem3.k0 == null && (dialogListBook = dialogSetTmem3.l0) == null) {
                                                        if (dialogListBook != null) {
                                                            dialogListBook.dismiss();
                                                            dialogSetTmem3.l0 = null;
                                                        }
                                                        ?? obj = new Object();
                                                        obj.f16734a = 29;
                                                        obj.i = true;
                                                        obj.f = R.string.mem_block_list;
                                                        DialogListBook dialogListBook2 = new DialogListBook(dialogSetTmem3.a0, obj, dialogSetTmem3.c0, null);
                                                        dialogSetTmem3.l0 = dialogListBook2;
                                                        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.9
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i5 = DialogSetTmem.p0;
                                                                DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                                DialogListBook dialogListBook3 = dialogSetTmem4.l0;
                                                                if (dialogListBook3 != null) {
                                                                    dialogListBook3.dismiss();
                                                                    dialogSetTmem4.l0 = null;
                                                                }
                                                                dialogSetTmem4.E(false);
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    return;
                                                }
                                                dialogSetTmem3.o0 = z2;
                                                String str3 = dialogSetTmem3.c0;
                                                DialogTask dialogTask = dialogSetTmem3.i0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogSetTmem3.i0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogSetTmem3, str3, z2);
                                                dialogSetTmem3.i0 = dialogTask2;
                                                dialogTask2.b(dialogSetTmem3.b0);
                                                return;
                                            }
                                            dialogSetTmem3.n0 = z2;
                                            String str4 = dialogSetTmem3.d0;
                                            DialogTask dialogTask3 = dialogSetTmem3.i0;
                                            if (dialogTask3 != null) {
                                                dialogTask3.f12839c = true;
                                            }
                                            dialogSetTmem3.i0 = null;
                                            DialogTask dialogTask4 = new DialogTask(dialogSetTmem3, str4, z2);
                                            dialogSetTmem3.i0 = dialogTask4;
                                            dialogTask4.b(dialogSetTmem3.b0);
                                            return;
                                        }
                                        if (dialogSetTmem3.a0 != null && (myPopupMenu = dialogSetTmem3.j0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetTmem3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetTmem3.j0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList3 = new ArrayList();
                                                arrayList3.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_none));
                                                arrayList3.add(new MyPopupAdapter.PopMenuItem(1, R.string.setting));
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTmem3.a0, dialogSetTmem3.e0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.6
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i5 = DialogSetTmem.p0;
                                                        DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                        MyPopupMenu myPopupMenu3 = dialogSetTmem4.j0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogSetTmem4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogSetTmem4.j0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i5) {
                                                        DialogSeekSimple dialogSeekSimple;
                                                        final DialogSetTmem dialogSetTmem4 = DialogSetTmem.this;
                                                        if (dialogSetTmem4.h0 != null) {
                                                            if (i5 != 0) {
                                                                if (dialogSetTmem4.a0 != null && (dialogSeekSimple = dialogSetTmem4.k0) == null && dialogSetTmem4.l0 == null) {
                                                                    if (dialogSeekSimple != null) {
                                                                        dialogSeekSimple.dismiss();
                                                                        dialogSetTmem4.k0 = null;
                                                                    }
                                                                    int i6 = PrefZtwo.G;
                                                                    if (i6 < 3) {
                                                                        i6 = 5;
                                                                    }
                                                                    DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(dialogSetTmem4.a0, 11, i6, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.7
                                                                        @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                        public final void a(int i7) {
                                                                            DialogSetTmem.B(DialogSetTmem.this, i7);
                                                                        }
                                                                    });
                                                                    dialogSetTmem4.k0 = dialogSeekSimple2;
                                                                    dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.8
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int i7 = DialogSetTmem.p0;
                                                                            DialogSetTmem dialogSetTmem5 = DialogSetTmem.this;
                                                                            DialogSeekSimple dialogSeekSimple3 = dialogSetTmem5.k0;
                                                                            if (dialogSeekSimple3 != null) {
                                                                                dialogSeekSimple3.dismiss();
                                                                                dialogSetTmem5.k0 = null;
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                            } else {
                                                                DialogSetTmem.B(dialogSetTmem4, i5);
                                                                return true;
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetTmem3.j0 = myPopupMenu2;
                                                dialogSetTmem3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogSetTmem2.g0.u0(true, false);
                                dialogSetTmem2.g0.setLayoutManager(t2);
                                dialogSetTmem2.g0.setAdapter(dialogSetTmem2.h0);
                                dialogSetTmem2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                        if (dialogSetTmem3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetTmem3.b0, (Class<?>) SettingMemory.class);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        intent.putExtra("EXTRA_INDEX", 7);
                                        intent.putExtra("EXTRA_PATH", dialogSetTmem3.c0);
                                        dialogSetTmem3.a0.startActivity(intent);
                                    }
                                });
                                dialogSetTmem2.g(dialogSetTmem2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTmem.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetTmem dialogSetTmem3 = DialogSetTmem.this;
                                        if (dialogSetTmem3.e0 == null) {
                                            return;
                                        }
                                        dialogSetTmem3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetTmem dialogSetTmem, int i) {
        if (dialogSetTmem.h0 == null || PrefZtwo.G == i) {
            return;
        }
        PrefZtwo.G = i;
        PrefSet.f(dialogSetTmem.b0, 16, i, "mTabMemory");
        dialogSetTmem.h0.D(new SettingListAdapter.SettingItem(0, R.string.mem_limit, dialogSetTmem.C(PrefZtwo.G), D(dialogSetTmem.b0), false, false, 2));
    }

    public static String D(Context context) {
        if (context == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (PrefZtwo.G > 2) {
            com.google.android.gms.internal.mlkit_vision_text_common.a.x(context, R.string.limit_info_2, sb, "\n");
        }
        return com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.tab_tip, context, sb);
    }

    public final String C(int i) {
        Context context = this.b0;
        if (context == null) {
            return null;
        }
        if (i < 3) {
            return context.getString(R.string.history_none);
        }
        return android.support.v4.media.a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(boolean r23) {
        /*
            r22 = this;
            r0 = r22
            com.mycompany.app.setting.SettingListAdapter r1 = r0.h0
            if (r1 != 0) goto L8
            goto L95
        L8:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookTmem r1 = com.mycompany.app.data.book.DataBookTmem.l(r1)
            java.lang.String r2 = r0.d0
            r1.getClass()
            java.util.ArrayList r3 = r1.f12915c     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2d
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L1e
            goto L2d
        L1e:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L25
            goto L2d
        L25:
            java.util.ArrayList r1 = r1.f12915c     // Catch: java.lang.Exception -> L2d
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L2d
        L2b:
            r7 = r1
            goto L2f
        L2d:
            r1 = 0
            goto L2b
        L2f:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookTmem r1 = com.mycompany.app.data.book.DataBookTmem.l(r1)
            java.lang.String r2 = r0.c0
            boolean r13 = r1.m(r2)
            int r1 = r0.m0
            int r2 = com.mycompany.app.pref.PrefZtwo.G
            if (r1 == r2) goto L60
            r0.m0 = r2
            com.mycompany.app.setting.SettingListAdapter r1 = r0.h0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r14 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r16 = com.mycompany.app.soulbrowser.R.string.mem_limit
            java.lang.String r17 = r0.C(r2)
            android.content.Context r2 = r0.b0
            java.lang.String r18 = D(r2)
            r20 = 0
            r21 = 2
            r15 = 0
            r19 = 0
            r14.<init>(r15, r16, r17, r18, r19, r20, r21)
            r1.D(r14)
        L60:
            boolean r1 = r0.n0
            if (r1 == r7) goto L76
            r0.n0 = r7
            com.mycompany.app.setting.SettingListAdapter r1 = r0.h0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r2 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r4 = com.mycompany.app.soulbrowser.R.string.mem_block_site
            r8 = 1
            r6 = 1
            r3 = 2
            r5 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8)
            r1.D(r2)
        L76:
            boolean r1 = r0.o0
            if (r1 == r13) goto L8c
            r0.o0 = r13
            com.mycompany.app.setting.SettingListAdapter r1 = r0.h0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r8 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r10 = com.mycompany.app.soulbrowser.R.string.mem_block_page
            r14 = 1
            r12 = 0
            r9 = 3
            r11 = 0
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r1.D(r8)
        L8c:
            com.mycompany.app.dialog.DialogListBook r1 = r0.l0
            if (r1 == 0) goto L95
            r2 = r23
            r1.s(r2)
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetTmem.E(boolean):void");
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.i0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.i0 = null;
        DialogSeekSimple dialogSeekSimple = this.k0;
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.k0 = null;
        }
        DialogListBook dialogListBook = this.l0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.l0 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.f0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.f0 = null;
        }
        MyRecyclerView myRecyclerView = this.g0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.g0 = null;
        }
        SettingListAdapter settingListAdapter = this.h0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        super.dismiss();
    }
}
