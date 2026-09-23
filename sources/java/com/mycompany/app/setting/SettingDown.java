package com.mycompany.app.setting;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPath;
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
public class SettingDown extends SettingActivity {
    public static final /* synthetic */ int j2 = 0;
    public String X1;
    public String Y1;
    public String Z1;
    public boolean a2;
    public ArrayList b2;
    public String c2;
    public MyPopupMenu d2;
    public MyPopupMenu e2;
    public MyPopupMenu f2;
    public DialogSeekSimple g2;
    public DialogSetDown h2;
    public DialogConfirm i2;

    /* renamed from: com.mycompany.app.setting.SettingDown$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingDown settingDown = SettingDown.this;
            if (settingDown.f1 != null) {
                String e = MainUri.e();
                PrefSet.h(settingDown.f1, e);
                settingDown.c2 = MainUri.h(settingDown.f1, e);
                Handler handler = settingDown.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDown.7.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingDown settingDown2 = SettingDown.this;
                        SettingListAdapter settingListAdapter = settingDown2.N1;
                        if (settingListAdapter == null) {
                            return;
                        }
                        String str = settingDown2.c2;
                        settingDown2.Y1 = str;
                        settingDown2.Z1 = str;
                        settingListAdapter.G(2, str);
                    }
                });
            }
        }
    }

    public static boolean O0(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (!TextUtils.isEmpty(PrefAlbum.G) || !TextUtils.isEmpty(PrefAlbum.H) || !TextUtils.isEmpty(PrefAlbum.I)) {
            PrefAlbum.G = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum.H = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum.I = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum r = PrefAlbum.r(context, false);
            r.q("mDappName2");
            r.q("mDappPkg2");
            r.q("mDappCls2");
            r.c();
            z = true;
        }
        if (PrefZone.j0 != 10) {
            PrefZone.j0 = 10;
            PrefSet.j(context, 15, "mMultiDown");
            z = true;
        }
        if (PrefZone.k0 != 10) {
            PrefZone.k0 = 10;
            PrefSet.j(context, 15, "mRetryDown");
            z = true;
        }
        if (PrefWeb.X != 2) {
            PrefWeb.X = 2;
            PrefSet.j(context, 14, "mDownLimit");
            z = true;
        }
        if (PrefWeb.Y != 2) {
            PrefWeb.Y = 2;
            PrefSet.j(context, 14, "mDownBack");
            z = true;
        }
        if (!PrefZone.l0) {
            PrefZone.l0 = true;
            PrefSet.j(context, 15, "mNotiDown");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String string;
        if (!TextUtils.isEmpty(PrefAlbum.G)) {
            string = PrefAlbum.G;
        } else {
            string = getString(R.string.default_title);
        }
        String str = string;
        String str2 = getString(R.string.down_expire_1) + "\n" + getString(R.string.down_limit_info);
        String str3 = getString(R.string.down_back_info_1) + "\n" + getString(R.string.down_back_info_2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.down_manager, str, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.down_location, this.Y1, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.fast_down, a.e(PrefZone.j0, "x"), R.string.not_support_site, 1));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.retry_count, a.e(PrefZone.k0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), R.string.retry_count_info, 0));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.down_limit, P0(PrefWeb.X), str2, false, false, 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.down_back_time, PrefWeb.Y + " " + getString(R.string.time_hour), str3, false, false, 0));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.down_noti, 0, 2, PrefZone.l0, true));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.report_site, 0, R.string.report_down, 1));
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(11, R.string.video_down_guide_3, (String) null, true, 2), 12, false);
        return arrayList;
    }

    public final String P0(int i) {
        if (i <= 0) {
            return getString(R.string.history_none);
        }
        if (i == 1) {
            return getString(R.string.not_allow);
        }
        return a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final void Q0() {
        DialogConfirm dialogConfirm = this.i2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.i2 = null;
        }
    }

    public final void R0() {
        if (this.f1 != null) {
            if (!TextUtils.isEmpty(MainUri.e())) {
                this.Y1 = this.c2;
            } else {
                this.Y1 = getString(R.string.not_selected);
            }
            if (this.N1 != null && !MainUtil.q5(this.Z1, this.Y1)) {
                String str = this.Y1;
                this.Z1 = str;
                this.N1.G(2, str);
            }
        }
    }

    public final void S0(final int i) {
        int i2;
        int i3;
        int i4;
        DialogSeekSimple dialogSeekSimple = this.g2;
        if (dialogSeekSimple != null || this.h2 != null || this.i2 != null) {
            return;
        }
        if (dialogSeekSimple != null) {
            dialogSeekSimple.dismiss();
            this.g2 = null;
        }
        int i5 = 4;
        if (i == 4) {
            i4 = PrefZone.j0;
            i2 = 1;
        } else {
            i2 = 5;
            if (i == 5) {
                i3 = PrefZone.k0;
            } else {
                i5 = 6;
                if (i == 6) {
                    i4 = PrefWeb.X;
                } else {
                    i3 = PrefWeb.Y;
                }
            }
            DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(this, i5, i3, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingDown.11
                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                public final void a(int i6) {
                    SettingDown settingDown = SettingDown.this;
                    int i7 = i;
                    if (i7 == 4) {
                        if (PrefZone.j0 != i6) {
                            PrefZone.j0 = i6;
                            PrefSet.f(settingDown.f1, 15, i6, "mMultiDown");
                            SettingListAdapter settingListAdapter = settingDown.N1;
                            if (settingListAdapter != null) {
                                int i8 = SettingDown.j2;
                                settingListAdapter.G(4, "x" + i6);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (i7 == 5) {
                        if (PrefZone.k0 != i6) {
                            PrefZone.k0 = i6;
                            PrefSet.f(settingDown.f1, 15, i6, "mRetryDown");
                            SettingListAdapter settingListAdapter2 = settingDown.N1;
                            if (settingListAdapter2 != null) {
                                int i9 = SettingDown.j2;
                                settingListAdapter2.G(5, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i6);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (i7 == 6) {
                        if (PrefWeb.X != i6) {
                            PrefWeb.X = i6;
                            PrefSet.f(settingDown.f1, 14, i6, "mDownLimit");
                            SettingListAdapter settingListAdapter3 = settingDown.N1;
                            if (settingListAdapter3 != null) {
                                int i10 = SettingDown.j2;
                                settingListAdapter3.G(6, settingDown.P0(i6));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (PrefWeb.Y != i6) {
                        PrefWeb.Y = i6;
                        PrefSet.f(settingDown.f1, 14, i6, "mDownBack");
                        SettingListAdapter settingListAdapter4 = settingDown.N1;
                        if (settingListAdapter4 != null) {
                            int i11 = SettingDown.j2;
                            settingListAdapter4.G(7, i6 + " " + settingDown.getString(R.string.time_hour));
                        }
                    }
                }
            });
            this.g2 = dialogSeekSimple2;
            dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDown.12
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i6 = SettingDown.j2;
                    SettingDown settingDown = SettingDown.this;
                    DialogSeekSimple dialogSeekSimple3 = settingDown.g2;
                    if (dialogSeekSimple3 != null) {
                        dialogSeekSimple3.dismiss();
                        settingDown.g2 = null;
                    }
                }
            });
        }
        int i6 = i2;
        i3 = i4;
        i5 = i6;
        DialogSeekSimple dialogSeekSimple22 = new DialogSeekSimple(this, i5, i3, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingDown.11
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i62) {
                SettingDown settingDown = SettingDown.this;
                int i7 = i;
                if (i7 == 4) {
                    if (PrefZone.j0 != i62) {
                        PrefZone.j0 = i62;
                        PrefSet.f(settingDown.f1, 15, i62, "mMultiDown");
                        SettingListAdapter settingListAdapter = settingDown.N1;
                        if (settingListAdapter != null) {
                            int i8 = SettingDown.j2;
                            settingListAdapter.G(4, "x" + i62);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i7 == 5) {
                    if (PrefZone.k0 != i62) {
                        PrefZone.k0 = i62;
                        PrefSet.f(settingDown.f1, 15, i62, "mRetryDown");
                        SettingListAdapter settingListAdapter2 = settingDown.N1;
                        if (settingListAdapter2 != null) {
                            int i9 = SettingDown.j2;
                            settingListAdapter2.G(5, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i62);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i7 == 6) {
                    if (PrefWeb.X != i62) {
                        PrefWeb.X = i62;
                        PrefSet.f(settingDown.f1, 14, i62, "mDownLimit");
                        SettingListAdapter settingListAdapter3 = settingDown.N1;
                        if (settingListAdapter3 != null) {
                            int i10 = SettingDown.j2;
                            settingListAdapter3.G(6, settingDown.P0(i62));
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (PrefWeb.Y != i62) {
                    PrefWeb.Y = i62;
                    PrefSet.f(settingDown.f1, 14, i62, "mDownBack");
                    SettingListAdapter settingListAdapter4 = settingDown.N1;
                    if (settingListAdapter4 != null) {
                        int i11 = SettingDown.j2;
                        settingListAdapter4.G(7, i62 + " " + settingDown.getString(R.string.time_hour));
                    }
                }
            }
        });
        this.g2 = dialogSeekSimple22;
        dialogSeekSimple22.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDown.12
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i62 = SettingDown.j2;
                SettingDown settingDown = SettingDown.this;
                DialogSeekSimple dialogSeekSimple3 = settingDown.g2;
                if (dialogSeekSimple3 != null) {
                    dialogSeekSimple3.dismiss();
                    settingDown.g2 = null;
                }
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 19 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            String a2 = MainUri.a(data);
            if (TextUtils.isEmpty(a2)) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            if (!TextUtils.isEmpty(a2) && !a2.equals(PrefPath.r)) {
                PrefPath.r = a2;
                m0(new AnonymousClass7());
            }
            this.a2 = true;
            MainUtil.z7(this.f1, data);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getStringExtra("EXTRA_PATH");
        o0(null, 19);
        F0(R.string.down_set, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDown.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingDown.j2;
                final SettingDown settingDown = SettingDown.this;
                if (settingDown.O0 != null) {
                    settingDown.L0(4, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingDown.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingDown settingDown2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingDown2 = SettingDown.this).N1) != null) {
                                settingListAdapter.E(settingDown2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingDown.O0(SettingDown.this.f1);
                        }
                    });
                    settingDown.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingDown.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i2 = SettingDown.j2;
                            final SettingDown settingDown2 = SettingDown.this;
                            if (settingDown2.g2 != null || settingDown2.h2 != null || settingDown2.i2 != null) {
                                return;
                            }
                            settingDown2.Q0();
                            DialogConfirm dialogConfirm = new DialogConfirm((Activity) settingDown2, settingDown2.getString(R.string.size_guide_1) + "\n" + settingDown2.getString(R.string.size_guide_2) + "\n\n" + settingDown2.getString(R.string.size_guide_3), false, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingDown.15
                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                public final void a(boolean z) {
                                    int i3 = SettingDown.j2;
                                    SettingDown.this.Q0();
                                }
                            });
                            settingDown2.i2 = dialogConfirm;
                            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDown.16
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i3 = SettingDown.j2;
                                    SettingDown.this.Q0();
                                }
                            });
                        }
                    });
                    settingDown.R0();
                    settingDown.a2 = true;
                    Handler handler2 = settingDown.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDown.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingDown.j2;
                            final SettingDown settingDown2 = SettingDown.this;
                            if (settingDown2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingDown2.D0(), false, settingDown2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingDown.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingDown.j2;
                                    final SettingDown settingDown3 = SettingDown.this;
                                    int i6 = 0;
                                    switch (i3) {
                                        case 1:
                                            MyPopupMenu myPopupMenu = settingDown3.f2;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingDown3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingDown3.f2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.default_title));
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.other_app));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingDown3, settingDown3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDown.10
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i7 = SettingDown.j2;
                                                            SettingDown settingDown4 = SettingDown.this;
                                                            MyPopupMenu myPopupMenu3 = settingDown4.f2;
                                                            if (myPopupMenu3 != null) {
                                                                settingDown4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingDown4.f2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            DialogSetDown dialogSetDown;
                                                            final SettingDown settingDown4 = SettingDown.this;
                                                            if (i7 != 0) {
                                                                int i8 = SettingDown.j2;
                                                                if (settingDown4.g2 == null && (dialogSetDown = settingDown4.h2) == null && settingDown4.i2 == null) {
                                                                    if (dialogSetDown != null) {
                                                                        dialogSetDown.dismiss();
                                                                        settingDown4.h2 = null;
                                                                    }
                                                                    DialogSetDown dialogSetDown2 = new DialogSetDown(settingDown4, "image/*", settingDown4.h0(), new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.setting.SettingDown.13
                                                                        @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                                                                        public final void a(String str, String str2, String str3) {
                                                                            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                                                                                PrefAlbum.G = str;
                                                                                PrefAlbum.H = str2;
                                                                                PrefAlbum.I = str3;
                                                                                SettingDown settingDown5 = SettingDown.this;
                                                                                PrefAlbum.t(settingDown5.f1);
                                                                                SettingListAdapter settingListAdapter2 = settingDown5.N1;
                                                                                if (settingListAdapter2 != null) {
                                                                                    settingListAdapter2.G(1, str);
                                                                                }
                                                                            }
                                                                        }
                                                                    });
                                                                    settingDown4.h2 = dialogSetDown2;
                                                                    dialogSetDown2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDown.14
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int i9 = SettingDown.j2;
                                                                            SettingDown settingDown5 = SettingDown.this;
                                                                            DialogSetDown dialogSetDown3 = settingDown5.h2;
                                                                            if (dialogSetDown3 != null) {
                                                                                dialogSetDown3.dismiss();
                                                                                settingDown5.h2 = null;
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                            } else {
                                                                if (!TextUtils.isEmpty(PrefAlbum.G) || !TextUtils.isEmpty(PrefAlbum.H) || !TextUtils.isEmpty(PrefAlbum.I)) {
                                                                    PrefAlbum.G = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefAlbum.H = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefAlbum.I = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefAlbum.t(settingDown4.f1);
                                                                }
                                                                SettingListAdapter settingListAdapter2 = settingDown4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(1, R.string.default_title);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDown3.f2 = myPopupMenu2;
                                                    settingDown3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 2:
                                            ArrayList arrayList2 = settingDown3.b2;
                                            if (arrayList2 != null && !arrayList2.isEmpty()) {
                                                MyPopupMenu myPopupMenu3 = settingDown3.d2;
                                                if (myPopupMenu3 == null) {
                                                    if (myPopupMenu3 != null) {
                                                        settingDown3.Z0 = null;
                                                        myPopupMenu3.a();
                                                        settingDown3.d2 = null;
                                                    }
                                                    if (viewHolder != null && viewHolder.D != null && settingDown3.b2 != null) {
                                                        ArrayList arrayList3 = new ArrayList();
                                                        ArrayList arrayList4 = settingDown3.b2;
                                                        int size = arrayList4.size();
                                                        int i7 = 0;
                                                        while (i7 < size) {
                                                            Object obj = arrayList4.get(i7);
                                                            i7++;
                                                            arrayList3.add(new MyPopupAdapter.PopMenuItem(i6, MainUri.o(settingDown3.f1, (String) obj)));
                                                            i6++;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i6, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingDown3, settingDown3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDown.8
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i8 = SettingDown.j2;
                                                                SettingDown settingDown4 = SettingDown.this;
                                                                MyPopupMenu myPopupMenu5 = settingDown4.d2;
                                                                if (myPopupMenu5 != null) {
                                                                    settingDown4.Z0 = null;
                                                                    myPopupMenu5.a();
                                                                    settingDown4.d2 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view, int i8) {
                                                                SettingDown settingDown4 = SettingDown.this;
                                                                ArrayList arrayList5 = settingDown4.b2;
                                                                if (arrayList5 != null && i8 < arrayList5.size()) {
                                                                    String str = (String) settingDown4.b2.get(i8);
                                                                    if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
                                                                        return true;
                                                                    }
                                                                    PrefPath.r = str;
                                                                    settingDown4.m0(new AnonymousClass7());
                                                                    return true;
                                                                }
                                                                MainUtil.F4(settingDown4, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        settingDown3.d2 = myPopupMenu4;
                                                        settingDown3.Z0 = myPopupMenu4;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(settingDown3, MainUri.e());
                                            return;
                                        case 3:
                                        case 9:
                                        default:
                                            return;
                                        case 4:
                                            settingDown3.S0(i3);
                                            return;
                                        case 5:
                                            settingDown3.S0(i3);
                                            return;
                                        case 6:
                                            MyPopupMenu myPopupMenu5 = settingDown3.e2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingDown3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingDown3.e2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    arrayList5.add(new MyPopupAdapter.PopMenuItem(0, R.string.not_allow));
                                                    arrayList5.add(new MyPopupAdapter.PopMenuItem(1, R.string.history_none));
                                                    arrayList5.add(new MyPopupAdapter.PopMenuItem(2, R.string.setting));
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingDown3, settingDown3.E1, viewHolder.D, arrayList5, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDown.9
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i8 = SettingDown.j2;
                                                            SettingDown settingDown4 = SettingDown.this;
                                                            MyPopupMenu myPopupMenu7 = settingDown4.e2;
                                                            if (myPopupMenu7 != null) {
                                                                settingDown4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingDown4.e2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i8) {
                                                            int i9;
                                                            SettingDown settingDown4 = SettingDown.this;
                                                            if (i8 == 2) {
                                                                int i10 = SettingDown.j2;
                                                                settingDown4.S0(6);
                                                                return true;
                                                            }
                                                            if (i8 == 0) {
                                                                i9 = 1;
                                                            } else {
                                                                i9 = 0;
                                                            }
                                                            if (PrefWeb.X != i9) {
                                                                PrefWeb.X = i9;
                                                                PrefSet.f(settingDown4.f1, 14, i9, "mDownLimit");
                                                                SettingListAdapter settingListAdapter2 = settingDown4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    int i11 = SettingDown.j2;
                                                                    settingListAdapter2.G(6, settingDown4.P0(i9));
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDown3.e2 = myPopupMenu6;
                                                    settingDown3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 7:
                                            settingDown3.S0(i3);
                                            return;
                                        case 8:
                                            PrefZone.l0 = z;
                                            PrefSet.d(15, settingDown3.f1, "mNotiDown", z);
                                            return;
                                        case 10:
                                            try {
                                                Intent intent = new Intent("android.intent.action.SENDTO");
                                                intent.setData(Uri.parse("mailto:"));
                                                intent.putExtra("android.intent.extra.EMAIL", new String[]{"soulbrowser.com@outlook.com"});
                                                intent.putExtra("android.intent.extra.SUBJECT", settingDown3.getString(R.string.download));
                                                intent.putExtra("android.intent.extra.TEXT", MainUtil.H0(settingDown3.f1, settingDown3.X1));
                                                settingDown3.startActivity(intent);
                                                return;
                                            } catch (ActivityNotFoundException unused) {
                                                MainUtil.e8(settingDown3, R.string.apps_none);
                                                return;
                                            } catch (Exception unused2) {
                                                MainUtil.e8(settingDown3, R.string.apps_none);
                                                return;
                                            }
                                    }
                                }
                            });
                            settingDown2.N1 = settingListAdapter;
                            settingDown2.L1.setAdapter(settingListAdapter);
                            settingDown2.M0();
                            settingDown2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingDown.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingDown settingDown3 = SettingDown.this;
                                    Context context = settingDown3.f1;
                                    if (context != null) {
                                        ArrayList n = MainUri.n(context);
                                        settingDown3.b2 = n;
                                        PrefPath.r = MainUri.m(settingDown3.f1, PrefPath.r, n);
                                        settingDown3.c2 = MainUri.h(settingDown3.f1, MainUri.e());
                                        Handler handler3 = settingDown3.O0;
                                        if (handler3 == null) {
                                            return;
                                        }
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDown.6.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SettingDown settingDown4 = SettingDown.this;
                                                int i3 = SettingDown.j2;
                                                settingDown4.R0();
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.X1 = null;
        this.Y1 = null;
        this.Z1 = null;
        this.b2 = null;
        this.c2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            DialogSeekSimple dialogSeekSimple = this.g2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.g2 = null;
            }
            DialogSetDown dialogSetDown = this.h2;
            if (dialogSetDown != null) {
                dialogSetDown.dismiss();
                this.h2 = null;
            }
            Q0();
            MyPopupMenu myPopupMenu = this.d2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.d2 = null;
            }
            MyPopupMenu myPopupMenu2 = this.e2;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.e2 = null;
            }
            MyPopupMenu myPopupMenu3 = this.f2;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.f2 = null;
                return;
            }
            return;
        }
        this.Z1 = this.Y1;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (!this.a2) {
            R0();
        }
        this.a2 = false;
    }
}
