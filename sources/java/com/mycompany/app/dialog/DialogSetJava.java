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
import com.mycompany.app.data.book.DataBookJava;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookJava;
import com.mycompany.app.dialog.DialogSetAdblock;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingAdvanced;
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
public class DialogSetJava extends MyDialogBottom {
    public static final /* synthetic */ int s0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogSetAdblock.DialogAdsListener c0;
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
    public String r0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogSetJava dialogSetJava, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogSetJava);
            this.e = weakReference;
            DialogSetJava dialogSetJava2 = (DialogSetJava) weakReference.get();
            if (dialogSetJava2 != null) {
                this.f = str;
                this.g = z;
                if (dialogSetJava2.f0 == null) {
                    return;
                }
                dialogSetJava2.setCanceledOnTouchOutside(false);
                dialogSetJava2.f0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetJava dialogSetJava;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetJava = (DialogSetJava) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookJava.l(dialogSetJava.b0).k(str);
                    DbBookJava.b(dialogSetJava.b0, str);
                    return;
                }
                DataBookJava l = DataBookJava.l(dialogSetJava.b0);
                l.getClass();
                try {
                    ArrayList arrayList = l.f12907c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        l.f12907c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogSetJava.b0;
                DbBookJava dbBookJava = DbBookJava.f12934c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookJava.a(context).getWritableDatabase(), "DbBookJava_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetJava dialogSetJava;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetJava = (DialogSetJava) weakReference.get()) != null) {
                dialogSetJava.k0 = null;
                if (dialogSetJava.f0 == null) {
                    return;
                }
                dialogSetJava.setCanceledOnTouchOutside(true);
                dialogSetJava.f0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetJava dialogSetJava;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetJava = (DialogSetJava) weakReference.get()) != null) {
                dialogSetJava.k0 = null;
                if (dialogSetJava.f0 == null) {
                    return;
                }
                dialogSetJava.setCanceledOnTouchOutside(true);
                dialogSetJava.f0.setBlockTouch(false);
            }
        }
    }

    public DialogSetJava(MainActivity mainActivity, String str, DialogSetAdblock.DialogAdsListener dialogAdsListener) {
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
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetJava.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetJava dialogSetJava = DialogSetJava.this;
                Context context = dialogSetJava.b0;
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
                    dialogSetJava.f0 = q;
                    dialogSetJava.g0 = myButtonImage;
                    dialogSetJava.h0 = u;
                    dialogSetJava.i0 = myLineText;
                    Handler handler2 = dialogSetJava.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetJava.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            ArrayList arrayList;
                            final DialogSetJava dialogSetJava2 = DialogSetJava.this;
                            if (dialogSetJava2.f0 != null && dialogSetJava2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetJava2.h0.setBackgroundColor(-16777216);
                                    dialogSetJava2.g0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetJava2.g0.setBgPreColor(-12632257);
                                    dialogSetJava2.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetJava2.i0.setTextColor(-328966);
                                } else {
                                    dialogSetJava2.h0.setBackgroundColor(-460552);
                                    dialogSetJava2.g0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetJava2.g0.setBgPreColor(553648128);
                                    dialogSetJava2.i0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetJava2.i0.setTextColor(-14784824);
                                }
                                dialogSetJava2.i0.setText(R.string.refresh);
                                dialogSetJava2.m0 = PrefWeb.H;
                                DataBookJava l = DataBookJava.l(dialogSetJava2.b0);
                                String str2 = dialogSetJava2.e0;
                                l.getClass();
                                try {
                                    arrayList = l.f12907c;
                                } catch (Exception unused) {
                                }
                                if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                                    z = l.f12907c.contains(str2);
                                    dialogSetJava2.n0 = z;
                                    boolean m = DataBookJava.l(dialogSetJava2.b0).m(dialogSetJava2.d0);
                                    dialogSetJava2.o0 = m;
                                    if (!PrefWeb.H && !dialogSetJava2.n0 && !m) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    dialogSetJava2.p0 = z2;
                                    StringBuilder sb = new StringBuilder();
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogSetJava2.b0, R.string.java_script_info, sb, "\n");
                                    dialogSetJava2.r0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.dark_mode_info_2, dialogSetJava2.b0, sb);
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(new SettingListAdapter.SettingItem(0, R.string.java_script, 2, 0, dialogSetJava2.r0, dialogSetJava2.m0));
                                    arrayList2.add(new SettingListAdapter.SettingItem(1, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.js_block_site, 0, 1, dialogSetJava2.n0, true));
                                    arrayList2.add(new SettingListAdapter.SettingItem(3, R.string.js_block_page, 0, 0, dialogSetJava2.o0, true));
                                    MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList2, new SettingListAdapter.SettingItem(4, R.string.js_black, 0, 0, 0), 1);
                                    dialogSetJava2.j0 = new SettingListAdapter(arrayList2, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetJava.3
                                        /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                        @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                        public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z3, int i3) {
                                            DialogListBook dialogListBook;
                                            final DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                            if (i2 != 0) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            int i4 = DialogSetJava.s0;
                                                            return;
                                                        }
                                                        if (dialogSetJava3.a0 == null || (dialogListBook = dialogSetJava3.l0) != null) {
                                                            return;
                                                        }
                                                        if (dialogListBook != null) {
                                                            dialogListBook.dismiss();
                                                            dialogSetJava3.l0 = null;
                                                        }
                                                        ?? obj = new Object();
                                                        obj.f16734a = 28;
                                                        obj.i = true;
                                                        obj.f = R.string.js_black;
                                                        DialogListBook dialogListBook2 = new DialogListBook(dialogSetJava3.a0, obj, dialogSetJava3.d0, null);
                                                        dialogSetJava3.l0 = dialogListBook2;
                                                        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetJava.7
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i5 = DialogSetJava.s0;
                                                                DialogSetJava dialogSetJava4 = DialogSetJava.this;
                                                                DialogListBook dialogListBook3 = dialogSetJava4.l0;
                                                                if (dialogListBook3 != null) {
                                                                    dialogListBook3.dismiss();
                                                                    dialogSetJava4.l0 = null;
                                                                }
                                                                dialogSetJava4.B(false);
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    dialogSetJava3.o0 = z3;
                                                    String str3 = dialogSetJava3.d0;
                                                    DialogTask dialogTask = dialogSetJava3.k0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogSetJava3.k0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogSetJava3, str3, z3);
                                                    dialogSetJava3.k0 = dialogTask2;
                                                    dialogTask2.b(dialogSetJava3.b0);
                                                    return;
                                                }
                                                dialogSetJava3.n0 = z3;
                                                String str4 = dialogSetJava3.e0;
                                                DialogTask dialogTask3 = dialogSetJava3.k0;
                                                if (dialogTask3 != null) {
                                                    dialogTask3.f12839c = true;
                                                }
                                                dialogSetJava3.k0 = null;
                                                DialogTask dialogTask4 = new DialogTask(dialogSetJava3, str4, z3);
                                                dialogSetJava3.k0 = dialogTask4;
                                                dialogTask4.b(dialogSetJava3.b0);
                                                return;
                                            }
                                            dialogSetJava3.m0 = z3;
                                            PrefWeb.H = z3;
                                            PrefSet.d(14, dialogSetJava3.b0, "mEnableJs", z3);
                                        }
                                    });
                                    dialogSetJava2.h0.u0(true, false);
                                    dialogSetJava2.h0.setLayoutManager(t);
                                    dialogSetJava2.h0.setAdapter(dialogSetJava2.j0);
                                    dialogSetJava2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetJava.4
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                            if (dialogSetJava3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogSetJava3.b0, (Class<?>) SettingAdvanced.class);
                                            intent.putExtra("EXTRA_NOTI", true);
                                            intent.putExtra("EXTRA_INDEX", 8);
                                            intent.putExtra("EXTRA_PATH", dialogSetJava3.d0);
                                            dialogSetJava3.a0.startActivity(intent);
                                        }
                                    });
                                    dialogSetJava2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetJava.5
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                            dialogSetJava3.q0 = true;
                                            dialogSetJava3.dismiss();
                                        }
                                    });
                                    dialogSetJava2.g(dialogSetJava2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetJava.6
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                            if (dialogSetJava3.f0 == null) {
                                                return;
                                            }
                                            dialogSetJava3.show();
                                        }
                                    });
                                }
                                z = false;
                                dialogSetJava2.n0 = z;
                                boolean m2 = DataBookJava.l(dialogSetJava2.b0).m(dialogSetJava2.d0);
                                dialogSetJava2.o0 = m2;
                                if (!PrefWeb.H) {
                                }
                                z2 = false;
                                dialogSetJava2.p0 = z2;
                                StringBuilder sb2 = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogSetJava2.b0, R.string.java_script_info, sb2, "\n");
                                dialogSetJava2.r0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.dark_mode_info_2, dialogSetJava2.b0, sb2);
                                ArrayList arrayList22 = new ArrayList();
                                arrayList22.add(new SettingListAdapter.SettingItem(0, R.string.java_script, 2, 0, dialogSetJava2.r0, dialogSetJava2.m0));
                                arrayList22.add(new SettingListAdapter.SettingItem(1, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(2, R.string.js_block_site, 0, 1, dialogSetJava2.n0, true));
                                arrayList22.add(new SettingListAdapter.SettingItem(3, R.string.js_block_page, 0, 0, dialogSetJava2.o0, true));
                                MyManagerLinear t2 = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList22, new SettingListAdapter.SettingItem(4, R.string.js_black, 0, 0, 0), 1);
                                dialogSetJava2.j0 = new SettingListAdapter(arrayList22, true, t2, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetJava.3
                                    /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z3, int i3) {
                                        DialogListBook dialogListBook;
                                        final DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                        if (i2 != 0) {
                                            if (i2 != 2) {
                                                if (i2 != 3) {
                                                    if (i2 != 4) {
                                                        int i4 = DialogSetJava.s0;
                                                        return;
                                                    }
                                                    if (dialogSetJava3.a0 == null || (dialogListBook = dialogSetJava3.l0) != null) {
                                                        return;
                                                    }
                                                    if (dialogListBook != null) {
                                                        dialogListBook.dismiss();
                                                        dialogSetJava3.l0 = null;
                                                    }
                                                    ?? obj = new Object();
                                                    obj.f16734a = 28;
                                                    obj.i = true;
                                                    obj.f = R.string.js_black;
                                                    DialogListBook dialogListBook2 = new DialogListBook(dialogSetJava3.a0, obj, dialogSetJava3.d0, null);
                                                    dialogSetJava3.l0 = dialogListBook2;
                                                    dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetJava.7
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i5 = DialogSetJava.s0;
                                                            DialogSetJava dialogSetJava4 = DialogSetJava.this;
                                                            DialogListBook dialogListBook3 = dialogSetJava4.l0;
                                                            if (dialogListBook3 != null) {
                                                                dialogListBook3.dismiss();
                                                                dialogSetJava4.l0 = null;
                                                            }
                                                            dialogSetJava4.B(false);
                                                        }
                                                    });
                                                    return;
                                                }
                                                dialogSetJava3.o0 = z3;
                                                String str3 = dialogSetJava3.d0;
                                                DialogTask dialogTask = dialogSetJava3.k0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogSetJava3.k0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogSetJava3, str3, z3);
                                                dialogSetJava3.k0 = dialogTask2;
                                                dialogTask2.b(dialogSetJava3.b0);
                                                return;
                                            }
                                            dialogSetJava3.n0 = z3;
                                            String str4 = dialogSetJava3.e0;
                                            DialogTask dialogTask3 = dialogSetJava3.k0;
                                            if (dialogTask3 != null) {
                                                dialogTask3.f12839c = true;
                                            }
                                            dialogSetJava3.k0 = null;
                                            DialogTask dialogTask4 = new DialogTask(dialogSetJava3, str4, z3);
                                            dialogSetJava3.k0 = dialogTask4;
                                            dialogTask4.b(dialogSetJava3.b0);
                                            return;
                                        }
                                        dialogSetJava3.m0 = z3;
                                        PrefWeb.H = z3;
                                        PrefSet.d(14, dialogSetJava3.b0, "mEnableJs", z3);
                                    }
                                });
                                dialogSetJava2.h0.u0(true, false);
                                dialogSetJava2.h0.setLayoutManager(t2);
                                dialogSetJava2.h0.setAdapter(dialogSetJava2.j0);
                                dialogSetJava2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetJava.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                        if (dialogSetJava3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetJava3.b0, (Class<?>) SettingAdvanced.class);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        intent.putExtra("EXTRA_INDEX", 8);
                                        intent.putExtra("EXTRA_PATH", dialogSetJava3.d0);
                                        dialogSetJava3.a0.startActivity(intent);
                                    }
                                });
                                dialogSetJava2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetJava.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                        dialogSetJava3.q0 = true;
                                        dialogSetJava3.dismiss();
                                    }
                                });
                                dialogSetJava2.g(dialogSetJava2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetJava.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetJava dialogSetJava3 = DialogSetJava.this;
                                        if (dialogSetJava3.f0 == null) {
                                            return;
                                        }
                                        dialogSetJava3.show();
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
    public final void B(boolean r22) {
        /*
            r21 = this;
            r0 = r21
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            if (r1 != 0) goto L8
            goto L8f
        L8:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookJava r1 = com.mycompany.app.data.book.DataBookJava.l(r1)
            java.lang.String r2 = r0.e0
            r1.getClass()
            java.util.ArrayList r3 = r1.f12907c     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2d
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L1e
            goto L2d
        L1e:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L25
            goto L2d
        L25:
            java.util.ArrayList r1 = r1.f12907c     // Catch: java.lang.Exception -> L2d
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L2d
        L2b:
            r7 = r1
            goto L2f
        L2d:
            r1 = 0
            goto L2b
        L2f:
            android.content.Context r1 = r0.b0
            com.mycompany.app.data.book.DataBookJava r1 = com.mycompany.app.data.book.DataBookJava.l(r1)
            java.lang.String r2 = r0.d0
            boolean r13 = r1.m(r2)
            boolean r1 = r0.m0
            boolean r2 = com.mycompany.app.pref.PrefWeb.H
            if (r1 == r2) goto L5a
            r0.m0 = r2
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r14 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r16 = com.mycompany.app.soulbrowser.R.string.java_script
            java.lang.String r3 = r0.r0
            r17 = 2
            r18 = 0
            r15 = 0
            r20 = r2
            r19 = r3
            r14.<init>(r15, r16, r17, r18, r19, r20)
            r1.D(r14)
        L5a:
            boolean r1 = r0.n0
            if (r1 == r7) goto L70
            r0.n0 = r7
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r2 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r4 = com.mycompany.app.soulbrowser.R.string.js_block_site
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
            com.mycompany.app.setting.SettingListAdapter r1 = r0.j0
            com.mycompany.app.setting.SettingListAdapter$SettingItem r8 = new com.mycompany.app.setting.SettingListAdapter$SettingItem
            int r10 = com.mycompany.app.soulbrowser.R.string.js_block_page
            r14 = 1
            r12 = 0
            r9 = 3
            r11 = 0
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r1.D(r8)
        L86:
            com.mycompany.app.dialog.DialogListBook r1 = r0.l0
            if (r1 == 0) goto L8f
            r2 = r22
            r1.s(r2)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetJava.B(boolean):void");
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z;
        boolean z2;
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
        DialogSetAdblock.DialogAdsListener dialogAdsListener = this.c0;
        if (dialogAdsListener != null) {
            if (PrefWeb.H && !this.n0 && !this.o0) {
                z = true;
            } else {
                z = false;
            }
            if (this.p0 != z) {
                z2 = true;
            } else {
                z2 = false;
            }
            dialogAdsListener.a(z2, z, false, false, this.q0, null);
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
        this.r0 = null;
        super.dismiss();
    }
}
