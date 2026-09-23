package com.mycompany.app.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingImage extends SettingActivity {
    public static final /* synthetic */ int Z1 = 0;
    public MyPopupMenu X1;
    public boolean Y1;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        if (!PrefImage.m) {
            PrefImage.m = true;
            PrefSet.j(context, 3, "mShowThumb");
            z = true;
        } else {
            z = false;
        }
        if (!PrefImage.n) {
            PrefImage.n = true;
            PrefSet.j(context, 3, "mShowGuide");
            z = true;
        }
        int i = MainApp.i1;
        int i2 = i * 2;
        if (PrefImage.D != 0 || PrefImage.E != 0 || PrefImage.F != i || PrefImage.G != i || PrefImage.H != i2 || PrefImage.I != i2) {
            PrefImage.D = 0;
            PrefImage.E = 0;
            PrefImage.F = i;
            PrefImage.G = i;
            PrefImage.H = i2;
            PrefImage.I = i2;
            PrefImage r = PrefImage.r(context, false);
            r.q("mTapLeft");
            r.q("mTapRight");
            r.q("mPortAreaLeft");
            r.q("mPortAreaRight");
            r.q("mLandAreaLeft");
            r.q("mLandAreaRight");
            r.c();
        }
        if (PrefImage.o) {
            PrefImage.o = false;
            PrefSet.j(context, 3, "mVolTurn");
            z = true;
        }
        if (PrefImage.p != 1) {
            PrefImage.p = 1;
            PrefSet.j(context, 3, "mScreenOff");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.show_thumb, R.string.show_thumb_info, 1, PrefImage.m, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.show_page_guide, 0, 2, PrefImage.n, true));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.tap_turn, 0, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.volume_turn, 0, 2, PrefImage.o, true));
        arrayList.add(new SettingListAdapter.SettingItem(6, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(7, R.string.screen_off, MainConst.K[PrefImage.p], MainConst.L[PrefImage.p], 3), 8, false);
        return arrayList;
    }

    @Override // android.app.Activity
    public final void finish() {
        boolean z;
        Intent intent = new Intent();
        if (this.Y1 != PrefImage.m) {
            z = true;
        } else {
            z = false;
        }
        intent.putExtra("EXTRA_THUMB", z);
        setResult(-1, intent);
        super.finish();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.Y1 = PrefImage.m;
        F0(R.string.setting, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingImage.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingImage.Z1;
                final SettingImage settingImage = SettingImage.this;
                if (settingImage.O0 != null) {
                    settingImage.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingImage.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingImage settingImage2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingImage2 = SettingImage.this).N1) != null) {
                                settingListAdapter.E(settingImage2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingImage.O0(SettingImage.this.f1);
                        }
                    });
                    Handler handler2 = settingImage.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingImage.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingImage.Z1;
                            final SettingImage settingImage2 = SettingImage.this;
                            if (settingImage2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingImage2.D0(), false, settingImage2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingImage.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    MyPopupMenu myPopupMenu;
                                    boolean z2;
                                    int i5 = SettingImage.Z1;
                                    final SettingImage settingImage3 = SettingImage.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 4) {
                                                if (i3 != 5) {
                                                    if (i3 == 7 && (myPopupMenu = settingImage3.X1) == null) {
                                                        if (myPopupMenu != null) {
                                                            settingImage3.Z0 = null;
                                                            myPopupMenu.a();
                                                            settingImage3.X1 = null;
                                                        }
                                                        if (viewHolder != null && viewHolder.D != null) {
                                                            ArrayList arrayList = new ArrayList();
                                                            int length = MainConst.K.length;
                                                            for (int i6 = 0; i6 < length; i6++) {
                                                                int i7 = MainConst.K[i6];
                                                                if (PrefImage.p == i6) {
                                                                    z2 = true;
                                                                } else {
                                                                    z2 = false;
                                                                }
                                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i6, i7, z2));
                                                            }
                                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingImage3, settingImage3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingImage.5
                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final void a() {
                                                                    int i8 = SettingImage.Z1;
                                                                    SettingImage settingImage4 = SettingImage.this;
                                                                    MyPopupMenu myPopupMenu3 = settingImage4.X1;
                                                                    if (myPopupMenu3 != null) {
                                                                        settingImage4.Z0 = null;
                                                                        myPopupMenu3.a();
                                                                        settingImage4.X1 = null;
                                                                    }
                                                                }

                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final boolean b(View view, int i8) {
                                                                    int[] iArr = MainConst.K;
                                                                    int length2 = i8 % iArr.length;
                                                                    if (PrefImage.p != length2) {
                                                                        PrefImage.p = length2;
                                                                        SettingImage settingImage4 = SettingImage.this;
                                                                        PrefSet.f(settingImage4.f1, 3, length2, "mScreenOff");
                                                                        SettingListAdapter settingListAdapter2 = settingImage4.N1;
                                                                        if (settingListAdapter2 != null) {
                                                                            settingListAdapter2.F(7, iArr[PrefImage.p]);
                                                                            settingImage4.N1.C(7, MainConst.L[PrefImage.p]);
                                                                        }
                                                                    }
                                                                    return true;
                                                                }
                                                            });
                                                            settingImage3.X1 = myPopupMenu2;
                                                            settingImage3.Z0 = myPopupMenu2;
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                PrefImage.o = z;
                                                PrefSet.d(3, settingImage3.f1, "mVolTurn", z);
                                                return;
                                            }
                                            settingImage3.startActivity(new Intent(settingImage3.f1, (Class<?>) SettingImageTap.class));
                                            return;
                                        }
                                        PrefImage.n = z;
                                        PrefSet.d(3, settingImage3.f1, "mShowGuide", z);
                                        return;
                                    }
                                    PrefImage.m = z;
                                    PrefSet.d(3, settingImage3.f1, "mShowThumb", z);
                                }
                            });
                            settingImage2.N1 = settingListAdapter;
                            settingImage2.L1.setAdapter(settingListAdapter);
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        MyPopupMenu myPopupMenu;
        super.onPause();
        if (isFinishing() && (myPopupMenu = this.X1) != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.X1 = null;
        }
    }
}
