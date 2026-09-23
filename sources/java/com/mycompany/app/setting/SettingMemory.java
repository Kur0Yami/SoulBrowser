package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingMemory extends SettingActivity {
    public static final /* synthetic */ int d2 = 0;
    public boolean X1;
    public String Y1;
    public MyPopupMenu Z1;
    public DialogSeekSimple a2;
    public DialogListBook b2;
    public int c2;

    public static void O0(SettingMemory settingMemory, int i) {
        if (settingMemory.N1 != null) {
            int i2 = settingMemory.c2;
            if (i2 == 3) {
                if (PrefZtwo.H != i) {
                    PrefZtwo.H = i;
                    PrefSet.f(settingMemory.f1, 16, i, "mPageMemory");
                    boolean z = !PrefZtwo.E;
                    settingMemory.N1.D(new SettingListAdapter.SettingItem(3, R.string.mem_limit, settingMemory.R0(PrefZtwo.H), S0(settingMemory.f1), z, z, 2));
                    return;
                }
                return;
            }
            if (i2 == 6) {
                if (PrefZtwo.F != i) {
                    PrefZtwo.F = i;
                    PrefSet.f(settingMemory.f1, 16, i, "mTabLimit");
                    settingMemory.N1.D(new SettingListAdapter.SettingItem(6, R.string.open_limit, settingMemory.R0(PrefZtwo.F), U0(settingMemory.f1), false, false, 1));
                    return;
                }
                return;
            }
            if (i2 == 7) {
                if (PrefZtwo.G != i) {
                    PrefZtwo.G = i;
                    PrefSet.f(settingMemory.f1, 16, i, "mTabMemory");
                    settingMemory.N1.D(new SettingListAdapter.SettingItem(7, R.string.mem_limit, settingMemory.R0(PrefZtwo.G), T0(settingMemory.f1), false, false, 0));
                    return;
                }
                return;
            }
            if (PrefZtwo.I == i) {
                return;
            }
            PrefZtwo.I = i;
            PrefSet.f(settingMemory.f1, 16, i, "mDayMemory");
            settingMemory.N1.D(new SettingListAdapter.SettingItem(10, R.string.mem_keep, R.string.mem_keep_info, 3, settingMemory.Q0(PrefZtwo.I), false, false));
        }
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        boolean z2 = !MainConst.b;
        if (PrefZtwo.E != z2) {
            PrefZtwo.E = z2;
            PrefSet.j(context, 16, "mAddPage");
            z = true;
        } else {
            z = false;
        }
        if (PrefZtwo.H != 5) {
            PrefZtwo.H = 5;
            PrefSet.j(context, 16, "mPageMemory");
            z = true;
        }
        if (PrefZtwo.F != 0) {
            PrefZtwo.F = 0;
            PrefSet.j(context, 16, "mTabLimit");
            z = true;
        }
        if (PrefZtwo.G != 5) {
            PrefZtwo.G = 5;
            PrefSet.j(context, 16, "mTabMemory");
            z = true;
        }
        if (PrefZtwo.I != 2) {
            PrefZtwo.I = 2;
            PrefSet.j(context, 16, "mDayMemory");
            return true;
        }
        return z;
    }

    public static String S0(Context context) {
        if (context == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (PrefZtwo.H > 2) {
            a.x(context, R.string.limit_info_3, sb, "\n");
        }
        return a.v(R.string.without_load_info, context, sb);
    }

    public static String T0(Context context) {
        if (context == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (PrefZtwo.G > 2) {
            a.x(context, R.string.limit_info_2, sb, "\n");
        }
        return a.v(R.string.tab_tip, context, sb);
    }

    public static String U0(Context context) {
        if (context == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (PrefZtwo.F > 2) {
            a.x(context, R.string.limit_info_1, sb, "\n");
        }
        return a.v(R.string.tab_tip, context, sb);
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        if (MainApp.K1) {
            i = R.drawable.outline_description_dark_24;
            i2 = R.drawable.outline_filter_none_dark_24;
        } else {
            i = R.drawable.outline_description_black_24;
            i2 = R.drawable.outline_filter_none_black_24;
        }
        int i3 = i;
        String str = getString(R.string.not_support_site) + "\n" + getString(R.string.memory_warning_1);
        boolean z = !PrefZtwo.E;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.page, (String) null, i3, false));
        arrayList.add(new SettingListAdapter.SettingItem(str, 2, R.string.without_load, PrefZtwo.E));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.mem_limit, R0(PrefZtwo.H), S0(this.f1), z, z, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.tab_item, (String) null, i2, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.open_limit, R0(PrefZtwo.F), U0(this.f1), false, false, 1));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.mem_limit, R0(PrefZtwo.G), T0(this.f1), false, false, 0));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.mem_block_list, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(10, R.string.mem_keep, R.string.mem_keep_info, 3, Q0(PrefZtwo.I), false, false), 11, false);
        return arrayList;
    }

    public final String Q0(int i) {
        if (i < 1) {
            return getString(R.string.history_none);
        }
        return i + " " + getString(R.string.time_day);
    }

    public final String R0(int i) {
        if (i < 3) {
            return getString(R.string.history_none);
        }
        return android.support.v4.media.a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListBook dialogListBook = this.b2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        this.Y1 = getIntent().getStringExtra("EXTRA_PATH");
        F0(R.string.mem_save, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMemory.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingMemory.d2;
                final SettingMemory settingMemory = SettingMemory.this;
                if (settingMemory.O0 != null) {
                    settingMemory.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingMemory.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingMemory settingMemory2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingMemory2 = SettingMemory.this).N1) != null) {
                                settingListAdapter.E(settingMemory2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingMemory.P0(SettingMemory.this.f1);
                        }
                    });
                    Handler handler2 = settingMemory.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMemory.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingMemory.d2;
                            final SettingMemory settingMemory2 = SettingMemory.this;
                            if (settingMemory2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingMemory2.D0(), false, settingMemory2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingMemory.4
                                /* JADX WARN: Type inference failed for: r11v5, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    DialogListBook dialogListBook;
                                    int i5 = SettingMemory.d2;
                                    final SettingMemory settingMemory3 = SettingMemory.this;
                                    if (i3 != 2) {
                                        if (i3 != 3 && i3 != 6 && i3 != 7) {
                                            if (i3 != 8) {
                                                if (i3 != 10) {
                                                    return;
                                                }
                                            } else {
                                                if (settingMemory3.a2 == null && (dialogListBook = settingMemory3.b2) == null) {
                                                    if (dialogListBook != null) {
                                                        dialogListBook.dismiss();
                                                        settingMemory3.b2 = null;
                                                    }
                                                    ?? obj = new Object();
                                                    obj.f16734a = 29;
                                                    obj.i = true;
                                                    obj.f = R.string.mem_block_list;
                                                    DialogListBook dialogListBook2 = new DialogListBook(settingMemory3, obj, settingMemory3.Y1, null);
                                                    settingMemory3.b2 = dialogListBook2;
                                                    dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMemory.8
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i6 = SettingMemory.d2;
                                                            SettingMemory settingMemory4 = SettingMemory.this;
                                                            DialogListBook dialogListBook3 = settingMemory4.b2;
                                                            if (dialogListBook3 != null) {
                                                                dialogListBook3.dismiss();
                                                                settingMemory4.b2 = null;
                                                            }
                                                            settingMemory4.C0(null);
                                                        }
                                                    });
                                                    settingMemory3.b2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingMemory.9
                                                        @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
                                                        public final void a() {
                                                            SettingMemory settingMemory4 = SettingMemory.this;
                                                            settingMemory4.C0(settingMemory4.b2);
                                                        }
                                                    };
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                        MyPopupMenu myPopupMenu = settingMemory3.Z1;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                settingMemory3.Z0 = null;
                                                myPopupMenu.a();
                                                settingMemory3.Z1 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                settingMemory3.c2 = i3;
                                                ArrayList arrayList = new ArrayList();
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_none));
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.setting));
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingMemory3, settingMemory3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingMemory.5
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i6 = SettingMemory.d2;
                                                        SettingMemory settingMemory4 = SettingMemory.this;
                                                        MyPopupMenu myPopupMenu3 = settingMemory4.Z1;
                                                        if (myPopupMenu3 != null) {
                                                            settingMemory4.Z0 = null;
                                                            myPopupMenu3.a();
                                                            settingMemory4.Z1 = null;
                                                        }
                                                    }

                                                    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
                                                    
                                                        if (r6 < 3) goto L33;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
                                                    
                                                        r0 = r6;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
                                                    
                                                        if (r6 < 3) goto L33;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:25:0x003e, code lost:
                                                    
                                                        if (r6 < 3) goto L33;
                                                     */
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                        To view partially-correct add '--show-bad-code' argument
                                                    */
                                                    public final boolean b(android.view.View r5, int r6) {
                                                        /*
                                                            r4 = this;
                                                            com.mycompany.app.setting.SettingMemory r5 = com.mycompany.app.setting.SettingMemory.this
                                                            com.mycompany.app.setting.SettingListAdapter r0 = r5.N1
                                                            r1 = 1
                                                            if (r0 != 0) goto L8
                                                            goto L15
                                                        L8:
                                                            if (r6 == 0) goto L5d
                                                            int r6 = com.mycompany.app.setting.SettingMemory.d2
                                                            com.mycompany.app.dialog.DialogSeekSimple r6 = r5.a2
                                                            if (r6 == 0) goto L11
                                                            goto L15
                                                        L11:
                                                            com.mycompany.app.dialog.DialogListBook r0 = r5.b2
                                                            if (r0 == 0) goto L16
                                                        L15:
                                                            return r1
                                                        L16:
                                                            if (r6 == 0) goto L1e
                                                            r6.dismiss()
                                                            r6 = 0
                                                            r5.a2 = r6
                                                        L1e:
                                                            int r6 = r5.c2
                                                            r0 = 5
                                                            r2 = 3
                                                            if (r6 != r2) goto L2d
                                                            int r6 = com.mycompany.app.pref.PrefZtwo.H
                                                            r3 = 9
                                                            if (r6 >= r2) goto L2b
                                                            goto L48
                                                        L2b:
                                                            r0 = r6
                                                            goto L48
                                                        L2d:
                                                            r3 = 6
                                                            if (r6 != r3) goto L37
                                                            int r6 = com.mycompany.app.pref.PrefZtwo.F
                                                            r3 = 10
                                                            if (r6 >= r2) goto L2b
                                                            goto L48
                                                        L37:
                                                            r3 = 7
                                                            if (r6 != r3) goto L41
                                                            int r6 = com.mycompany.app.pref.PrefZtwo.G
                                                            r3 = 11
                                                            if (r6 >= r2) goto L2b
                                                            goto L48
                                                        L41:
                                                            int r0 = com.mycompany.app.pref.PrefZtwo.I
                                                            r3 = 12
                                                            if (r0 >= r1) goto L48
                                                            r0 = 2
                                                        L48:
                                                            com.mycompany.app.dialog.DialogSeekSimple r6 = new com.mycompany.app.dialog.DialogSeekSimple
                                                            com.mycompany.app.setting.SettingMemory$6 r2 = new com.mycompany.app.setting.SettingMemory$6
                                                            r2.<init>()
                                                            r6.<init>(r5, r3, r0, r2)
                                                            r5.a2 = r6
                                                            com.mycompany.app.setting.SettingMemory$7 r0 = new com.mycompany.app.setting.SettingMemory$7
                                                            r0.<init>()
                                                            r6.setOnDismissListener(r0)
                                                            return r1
                                                        L5d:
                                                            com.mycompany.app.setting.SettingMemory.O0(r5, r6)
                                                            return r1
                                                        */
                                                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingMemory.AnonymousClass5.b(android.view.View, int):boolean");
                                                    }
                                                });
                                                settingMemory3.Z1 = myPopupMenu2;
                                                settingMemory3.Z0 = myPopupMenu2;
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    PrefZtwo.E = z;
                                    PrefSet.d(16, settingMemory3.f1, "mAddPage", z);
                                    SettingListAdapter settingListAdapter2 = settingMemory3.N1;
                                    if (settingListAdapter2 != null) {
                                        boolean z2 = !PrefZtwo.E;
                                        settingListAdapter2.D(new SettingListAdapter.SettingItem(3, R.string.mem_limit, settingMemory3.R0(PrefZtwo.H), SettingMemory.S0(settingMemory3.f1), z2, z2, 2));
                                    }
                                }
                            });
                            settingMemory2.N1 = settingListAdapter;
                            settingMemory2.L1.setAdapter(settingListAdapter);
                            settingMemory2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.Y1 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            DialogSeekSimple dialogSeekSimple = this.a2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.a2 = null;
            }
            DialogListBook dialogListBook = this.b2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.b2 = null;
            }
            MyPopupMenu myPopupMenu = this.Z1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
                return;
            }
            return;
        }
        DialogListBook dialogListBook2 = this.b2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        DialogListBook dialogListBook;
        super.onResume();
        if (!this.X1 && (dialogListBook = this.b2) != null) {
            dialogListBook.s(true);
        }
        this.X1 = false;
    }
}
