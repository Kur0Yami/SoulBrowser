package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.view.View;
import com.mycompany.app.dialog.DialogSetItem;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingGesture extends SettingActivity {
    public static final /* synthetic */ int Z1 = 0;
    public MyPopupMenu X1;
    public DialogSetItem Y1;

    public static void O0(SettingGesture settingGesture, int i, int i2) {
        if (i2 >= 0 && i2 < 74) {
            DialogSetItem dialogSetItem = settingGesture.Y1;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                settingGesture.Y1 = null;
            }
            if (i == 4) {
                if (PrefZone.X != i2) {
                    PrefZone.X = i2;
                    PrefSet.f(settingGesture.f1, 15, i2, "mGesUpLt3");
                } else {
                    return;
                }
            } else if (i == 5) {
                if (PrefZone.Y != i2) {
                    PrefZone.Y = i2;
                    PrefSet.f(settingGesture.f1, 15, i2, "mGesUpRt3");
                } else {
                    return;
                }
            } else if (i == 6) {
                if (PrefZone.Z != i2) {
                    PrefZone.Z = i2;
                    PrefSet.f(settingGesture.f1, 15, i2, "mGesDnLt3");
                } else {
                    return;
                }
            } else if (i == 7) {
                if (PrefZone.a0 != i2) {
                    PrefZone.a0 = i2;
                    PrefSet.f(settingGesture.f1, 15, i2, "mGesDnRt3");
                } else {
                    return;
                }
            }
            SettingListAdapter settingListAdapter = settingGesture.N1;
            if (settingListAdapter != null) {
                settingListAdapter.F(i, MainUtil.n2(i2));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0047, code lost:
    
        if (com.mycompany.app.pref.PrefZone.W == r6) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean P0(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingGesture.P0(android.content.Context):boolean");
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String str;
        ArrayList arrayList;
        int i;
        boolean z;
        String string = getString(R.string.swipe);
        String string2 = getString(R.string.move_up);
        String string3 = getString(R.string.move_down);
        String string4 = getString(R.string.move_left);
        String string5 = getString(R.string.move_right);
        String D = a.D(string2, " + ", string4);
        String D2 = a.D(string2, " + ", string5);
        String D3 = a.D(string3, " + ", string4);
        String D4 = a.D(string3, " + ", string5);
        String str2 = getString(R.string.tab_gesture) + " " + getString(R.string.two_finger);
        String str3 = getString(R.string.two_finger_info_1) + "\n" + getString(R.string.two_finger_info_2);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new SettingListAdapter.SettingItem(0, true));
        if (MainApp.K1) {
            arrayList2.add(new SettingListAdapter.SettingItem(1, string, R.drawable.outline_arrow_range_dark_24, 0, 1, 0));
            arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.swipe_sense, 0, 0, 2));
            arrayList2.add(new SettingListAdapter.SettingItem(3, false));
            z = false;
            i = 1;
            arrayList2.add(new SettingListAdapter.SettingItem(4, D, R.drawable.outline_subdirectory_arrow_up_left_dark_24, MainUtil.n2(PrefZone.X), 1, 0));
            arrayList = arrayList2;
            str = str2;
            arrayList.add(new SettingListAdapter.SettingItem(5, D2, R.drawable.outline_subdirectory_arrow_up_right_dark_24, MainUtil.n2(PrefZone.Y), 0, 0));
            arrayList.add(new SettingListAdapter.SettingItem(6, D3, R.drawable.outline_subdirectory_arrow_left_dark_24, MainUtil.n2(PrefZone.Z), 0, 0));
            arrayList.add(new SettingListAdapter.SettingItem(7, D4, R.drawable.outline_subdirectory_arrow_right_dark_24, MainUtil.n2(PrefZone.a0), 2, 0));
        } else {
            str = str2;
            arrayList2.add(new SettingListAdapter.SettingItem(1, string, R.drawable.outline_arrow_range_black_24, 0, 1, 0));
            arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.swipe_sense, 0, 0, 2));
            arrayList2.add(new SettingListAdapter.SettingItem(3, false));
            arrayList = arrayList2;
            i = 1;
            arrayList.add(new SettingListAdapter.SettingItem(4, D, R.drawable.outline_subdirectory_arrow_up_left_black_24, MainUtil.n2(PrefZone.X), 1, 0));
            z = false;
            arrayList.add(new SettingListAdapter.SettingItem(5, D2, R.drawable.outline_subdirectory_arrow_up_right_black_24, MainUtil.n2(PrefZone.Y), 0, 0));
            arrayList.add(new SettingListAdapter.SettingItem(6, D3, R.drawable.outline_subdirectory_arrow_left_black_24, MainUtil.n2(PrefZone.Z), 0, 0));
            arrayList.add(new SettingListAdapter.SettingItem(7, D4, R.drawable.outline_subdirectory_arrow_right_black_24, MainUtil.n2(PrefZone.a0), 2, 0));
        }
        arrayList.add(new SettingListAdapter.SettingItem(8, z));
        boolean z2 = PrefWeb.E;
        ?? obj = new Object();
        obj.f17931a = 6;
        obj.b = 9;
        obj.d = str;
        obj.i = null;
        obj.k = z2;
        obj.u = i;
        arrayList.add(obj);
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(10, 0, str3, false, 2), 11, z);
        return arrayList;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.gesture, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGesture.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingGesture.Z1;
                final SettingGesture settingGesture = SettingGesture.this;
                if (settingGesture.O0 != null) {
                    settingGesture.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingGesture.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingGesture settingGesture2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingGesture2 = SettingGesture.this).N1) != null) {
                                settingListAdapter.E(settingGesture2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingGesture.P0(SettingGesture.this.f1);
                        }
                    });
                    Handler handler2 = settingGesture.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGesture.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingGesture.Z1;
                            final SettingGesture settingGesture2 = SettingGesture.this;
                            if (settingGesture2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingGesture2.D0(), false, settingGesture2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingGesture.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, final int i3, boolean z, int i4) {
                                    int i5 = SettingGesture.Z1;
                                    final SettingGesture settingGesture3 = SettingGesture.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 4 && i3 != 5 && i3 != 6 && i3 != 7) {
                                                if (i3 == 9) {
                                                    PrefWeb.E = z;
                                                    PrefSet.d(14, settingGesture3.f1, "mTabMulti", z);
                                                    return;
                                                }
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu = settingGesture3.X1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingGesture3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingGesture3.X1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.not_used));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingGesture3, settingGesture3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingGesture.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i6 = SettingGesture.Z1;
                                                            SettingGesture settingGesture4 = SettingGesture.this;
                                                            MyPopupMenu myPopupMenu3 = settingGesture4.X1;
                                                            if (myPopupMenu3 != null) {
                                                                settingGesture4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingGesture4.X1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7 = 0;
                                                            final int i8 = i3;
                                                            final SettingGesture settingGesture4 = SettingGesture.this;
                                                            if (i6 == 0) {
                                                                DialogSetItem dialogSetItem = settingGesture4.Y1;
                                                                if (dialogSetItem == null) {
                                                                    if (dialogSetItem != null) {
                                                                        dialogSetItem.dismiss();
                                                                        settingGesture4.Y1 = null;
                                                                    }
                                                                    if (i8 == 4) {
                                                                        i7 = PrefZone.X;
                                                                    } else if (i8 == 5) {
                                                                        i7 = PrefZone.Y;
                                                                    } else if (i8 == 6) {
                                                                        i7 = PrefZone.Z;
                                                                    } else if (i8 == 7) {
                                                                        i7 = PrefZone.a0;
                                                                    }
                                                                    DialogSetItem dialogSetItem2 = new DialogSetItem(settingGesture4, i7, null, null, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingGesture.6
                                                                        @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                                                        public final void a(int i9) {
                                                                            SettingGesture.O0(SettingGesture.this, i8, i9);
                                                                        }
                                                                    });
                                                                    settingGesture4.Y1 = dialogSetItem2;
                                                                    dialogSetItem2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingGesture.7
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int i9 = SettingGesture.Z1;
                                                                            SettingGesture settingGesture5 = SettingGesture.this;
                                                                            DialogSetItem dialogSetItem3 = settingGesture5.Y1;
                                                                            if (dialogSetItem3 != null) {
                                                                                dialogSetItem3.dismiss();
                                                                                settingGesture5.Y1 = null;
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                                return true;
                                                            }
                                                            SettingGesture.O0(settingGesture4, i8, 0);
                                                            return true;
                                                        }
                                                    });
                                                    settingGesture3.X1 = myPopupMenu2;
                                                    settingGesture3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        settingGesture3.startActivity(new Intent(settingGesture3.f1, (Class<?>) SettingSense.class));
                                        return;
                                    }
                                    settingGesture3.startActivity(new Intent(settingGesture3.f1, (Class<?>) SettingSwipe.class));
                                }
                            });
                            settingGesture2.N1 = settingListAdapter;
                            settingGesture2.L1.setAdapter(settingListAdapter);
                            settingGesture2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.X1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
            }
            DialogSetItem dialogSetItem = this.Y1;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                this.Y1 = null;
            }
        }
    }
}
