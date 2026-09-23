package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingVideo extends SettingActivity {
    public static final /* synthetic */ int b2 = 0;
    public boolean X1;
    public MyPopupMenu Y1;
    public MyPopupMenu Z1;
    public DialogSeekSimple a2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        boolean z2 = true;
        if (!PrefVideo.m) {
            PrefVideo.m = true;
            PrefSet.j(context, 13, "mPipHome");
            z = true;
        } else {
            z = false;
        }
        if (!PrefVideo.n) {
            PrefVideo.n = true;
            PrefSet.j(context, 13, "mCutOut");
            z = true;
        }
        if (PrefPdf.v) {
            PrefPdf.v = false;
            PrefSet.j(context, 7, "mIconLong");
            z = true;
        }
        if (!PrefVideo.r) {
            PrefVideo.r = true;
            PrefSet.j(context, 13, "mDragBright");
            z = true;
        }
        if (!PrefVideo.q) {
            PrefVideo.q = true;
            PrefSet.j(context, 13, "mDragVolume");
            z = true;
        }
        if (!PrefVideo.s) {
            PrefVideo.s = true;
            PrefSet.j(context, 13, "mDragSeek");
            z = true;
        }
        if (PrefVideo.t != 100) {
            PrefVideo.t = 100;
            PrefSet.j(context, 13, "mSeekSense");
        } else {
            z2 = z;
        }
        int i = MainApp.i1;
        int i2 = i * 2;
        if (PrefVideo.A == 3 && PrefVideo.B == 3 && PrefVideo.C == 3 && PrefVideo.D == i && PrefVideo.E == i && PrefVideo.F == i2 && PrefVideo.G == i2) {
            return z2;
        }
        PrefVideo.A = 3;
        PrefVideo.B = 3;
        PrefVideo.C = 3;
        PrefVideo.D = i;
        PrefVideo.E = i;
        PrefVideo.F = i2;
        PrefVideo.G = i2;
        PrefVideo r = PrefVideo.r(context);
        r.q("mTapLeft");
        r.q("mTapRight");
        r.q("mTapCenter");
        r.q("mPortAreaLeft");
        r.q("mPortAreaRight");
        r.q("mLandAreaLeft");
        r.q("mLandAreaRight");
        r.c();
        return z2;
    }

    public static String P0(int i) {
        return i + "%";
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        ArrayList arrayList;
        int i5;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 26) {
            i = R.string.pip_info;
        } else {
            i = 0;
        }
        if (i6 >= 35 || i6 < 28) {
            i2 = 3;
        } else {
            i2 = 1;
        }
        if (this.X1) {
            i4 = 0;
            i3 = 1;
        } else {
            i3 = i2;
            i4 = 2;
        }
        String str2 = getString(R.string.drag_seek_info) + "\n" + getString(R.string.not_support_site);
        boolean z = !PrefVideo.s;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new SettingListAdapter.SettingItem(0, true));
        arrayList2.add(new SettingListAdapter.SettingItem(1, R.string.pip_home, i, i3, PrefVideo.m, true));
        if (i6 >= 35 || i6 < 28) {
            str = str2;
            arrayList = arrayList2;
        } else {
            str = str2;
            arrayList = arrayList2;
            arrayList.add(new SettingListAdapter.SettingItem(2, R.string.display_cutout, R.string.display_cutout_info, i4, PrefVideo.n, true));
        }
        if (this.X1) {
            int i7 = R.string.trans_icon;
            if (PrefPdf.v) {
                i5 = R.string.video_icon_long;
            } else {
                i5 = R.string.video_icon_tap;
            }
            arrayList.add(new SettingListAdapter.SettingItem(3, i7, i5, 0, 2));
        }
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.drag_bright, R.string.drag_bright_info, 1, PrefVideo.r, true));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.drag_volume, R.string.drag_volume_info, 2, PrefVideo.q, true));
        arrayList.add(new SettingListAdapter.SettingItem(7, false));
        arrayList.add(new SettingListAdapter.SettingItem(str, 8, R.string.drag_seek, PrefVideo.s));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.swipe_sense, 0, 2, P0(PrefVideo.t), z, z));
        arrayList.add(new SettingListAdapter.SettingItem(10, false));
        arrayList.add(new SettingListAdapter.SettingItem(11, R.string.double_tap, 0, R.string.not_support_site, 3));
        arrayList.add(new SettingListAdapter.SettingItem(12, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(13, R.string.lock_type, MainConst.Z[PrefSecret.D], R.string.touch_lock_info, 3), 14, false);
        return arrayList;
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        SettingListAdapter settingListAdapter;
        if (i == 3 && i2 == -1 && (settingListAdapter = this.N1) != null) {
            settingListAdapter.D(new SettingListAdapter.SettingItem(13, R.string.lock_type, MainConst.Z[PrefSecret.D], R.string.touch_lock_info, 3));
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getBooleanExtra("EXTRA_WEB", false);
        o0(null, 3);
        F0(R.string.setting, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideo.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingVideo.b2;
                final SettingVideo settingVideo = SettingVideo.this;
                if (settingVideo.O0 != null) {
                    settingVideo.L0(16, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingVideo.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingVideo settingVideo2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingVideo2 = SettingVideo.this).N1) != null) {
                                settingListAdapter.E(settingVideo2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingVideo.O0(SettingVideo.this.f1);
                        }
                    });
                    Handler handler2 = settingVideo.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideo.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingVideo.b2;
                            final SettingVideo settingVideo2 = SettingVideo.this;
                            if (settingVideo2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingVideo2.D0(), false, settingVideo2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingVideo.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    MyPopupMenu myPopupMenu;
                                    boolean z2;
                                    int i5 = SettingVideo.b2;
                                    final SettingVideo settingVideo3 = SettingVideo.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 3) {
                                                if (i3 != 5) {
                                                    if (i3 != 6) {
                                                        if (i3 != 8) {
                                                            if (i3 != 9) {
                                                                if (i3 != 11) {
                                                                    if (i3 == 13 && (myPopupMenu = settingVideo3.Z1) == null) {
                                                                        if (myPopupMenu != null) {
                                                                            settingVideo3.Z0 = null;
                                                                            myPopupMenu.a();
                                                                            settingVideo3.Z1 = null;
                                                                        }
                                                                        if (viewHolder != null && viewHolder.D != null) {
                                                                            ArrayList arrayList = new ArrayList();
                                                                            final int length = MainConst.Y.length;
                                                                            for (int i6 = 0; i6 < length; i6++) {
                                                                                int i7 = MainConst.Y[i6];
                                                                                int i8 = MainConst.Z[i7];
                                                                                if (PrefSecret.D == i7) {
                                                                                    z2 = true;
                                                                                } else {
                                                                                    z2 = false;
                                                                                }
                                                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i6, i8, z2));
                                                                            }
                                                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingVideo3, settingVideo3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingVideo.6
                                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                                public final void a() {
                                                                                    int i9 = SettingVideo.b2;
                                                                                    SettingVideo settingVideo4 = SettingVideo.this;
                                                                                    MyPopupMenu myPopupMenu3 = settingVideo4.Z1;
                                                                                    if (myPopupMenu3 != null) {
                                                                                        settingVideo4.Z0 = null;
                                                                                        myPopupMenu3.a();
                                                                                        settingVideo4.Z1 = null;
                                                                                    }
                                                                                }

                                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                                public final boolean b(View view, int i9) {
                                                                                    int i10 = MainConst.Y[i9 % length];
                                                                                    SettingVideo settingVideo4 = SettingVideo.this;
                                                                                    if (i10 != 4 && i10 != 0) {
                                                                                        Intent i22 = MainUtil.i2(settingVideo4.f1, i10);
                                                                                        i22.putExtra("EXTRA_PASS", 3);
                                                                                        i22.putExtra("EXTRA_TYPE", 1);
                                                                                        settingVideo4.o0(i22, 3);
                                                                                        return true;
                                                                                    }
                                                                                    if (PrefSecret.D != i10 && (i10 != 4 || MainUtil.e(settingVideo4.f1, true))) {
                                                                                        PrefSecret.D = i10;
                                                                                        PrefSecret.E = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                                        PrefSecret.w(settingVideo4.f1);
                                                                                        SettingListAdapter settingListAdapter2 = settingVideo4.N1;
                                                                                        if (settingListAdapter2 != null) {
                                                                                            settingListAdapter2.F(13, MainConst.Z[i10]);
                                                                                        }
                                                                                    }
                                                                                    return true;
                                                                                }
                                                                            });
                                                                            settingVideo3.Z1 = myPopupMenu2;
                                                                            settingVideo3.Z0 = myPopupMenu2;
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    return;
                                                                }
                                                                settingVideo3.startActivity(new Intent(settingVideo3.f1, (Class<?>) SettingVideoTap.class));
                                                                return;
                                                            }
                                                            DialogSeekSimple dialogSeekSimple = settingVideo3.a2;
                                                            if (dialogSeekSimple == null) {
                                                                if (dialogSeekSimple != null) {
                                                                    dialogSeekSimple.dismiss();
                                                                    settingVideo3.a2 = null;
                                                                }
                                                                DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingVideo3, 0, PrefVideo.t, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingVideo.7
                                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                    public final void a(int i9) {
                                                                        SettingVideo settingVideo4 = SettingVideo.this;
                                                                        if (settingVideo4.N1 == null || PrefVideo.t == i9) {
                                                                            return;
                                                                        }
                                                                        PrefVideo.t = i9;
                                                                        PrefSet.f(settingVideo4.f1, 13, i9, "mSeekSense");
                                                                        boolean z3 = !PrefVideo.s;
                                                                        settingVideo4.N1.D(new SettingListAdapter.SettingItem(9, R.string.swipe_sense, 0, 2, SettingVideo.P0(PrefVideo.t), z3, z3));
                                                                    }
                                                                });
                                                                settingVideo3.a2 = dialogSeekSimple2;
                                                                dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVideo.8
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int i9 = SettingVideo.b2;
                                                                        SettingVideo settingVideo4 = SettingVideo.this;
                                                                        DialogSeekSimple dialogSeekSimple3 = settingVideo4.a2;
                                                                        if (dialogSeekSimple3 != null) {
                                                                            dialogSeekSimple3.dismiss();
                                                                            settingVideo4.a2 = null;
                                                                        }
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        PrefVideo.s = z;
                                                        PrefSet.d(13, settingVideo3.f1, "mDragSeek", z);
                                                        SettingListAdapter settingListAdapter2 = settingVideo3.N1;
                                                        if (settingListAdapter2 != null) {
                                                            boolean z3 = !PrefVideo.s;
                                                            settingListAdapter2.D(new SettingListAdapter.SettingItem(9, R.string.swipe_sense, 0, 2, SettingVideo.P0(PrefVideo.t), z3, z3));
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    PrefVideo.q = z;
                                                    PrefSet.d(13, settingVideo3.f1, "mDragVolume", z);
                                                    return;
                                                }
                                                PrefVideo.r = z;
                                                PrefSet.d(13, settingVideo3.f1, "mDragBright", z);
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu3 = settingVideo3.Y1;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingVideo3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingVideo3.Y1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.video_icon_tap, !PrefPdf.v));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.video_icon_long, PrefPdf.v));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingVideo3, settingVideo3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingVideo.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i9 = SettingVideo.b2;
                                                            SettingVideo settingVideo4 = SettingVideo.this;
                                                            MyPopupMenu myPopupMenu5 = settingVideo4.Y1;
                                                            if (myPopupMenu5 != null) {
                                                                settingVideo4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingVideo4.Y1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i9) {
                                                            boolean z4;
                                                            int i10;
                                                            if (i9 == 1) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            if (PrefPdf.v != z4) {
                                                                PrefPdf.v = z4;
                                                                SettingVideo settingVideo4 = SettingVideo.this;
                                                                PrefSet.d(7, settingVideo4.f1, "mIconLong", z4);
                                                                SettingListAdapter settingListAdapter3 = settingVideo4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    int i11 = SettingVideo.b2;
                                                                    if (PrefPdf.v) {
                                                                        i10 = R.string.video_icon_long;
                                                                    } else {
                                                                        i10 = R.string.video_icon_tap;
                                                                    }
                                                                    settingListAdapter3.F(3, i10);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingVideo3.Y1 = myPopupMenu4;
                                                    settingVideo3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        PrefVideo.n = z;
                                        PrefSet.d(13, settingVideo3.f1, "mCutOut", z);
                                        return;
                                    }
                                    PrefVideo.m = z;
                                    PrefSet.d(13, settingVideo3.f1, "mPipHome", z);
                                }
                            });
                            settingVideo2.N1 = settingListAdapter;
                            settingVideo2.L1.setAdapter(settingListAdapter);
                            settingVideo2.M0();
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
            MyPopupMenu myPopupMenu = this.Y1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Y1 = null;
            }
            MyPopupMenu myPopupMenu2 = this.Z1;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.Z1 = null;
            }
            DialogSeekSimple dialogSeekSimple = this.a2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.a2 = null;
            }
        }
    }
}
