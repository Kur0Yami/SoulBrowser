package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogSetVideo;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingMedia extends SettingActivity {
    public static final int[] d2 = {1, 2, 3, 0};
    public static final int[] e2 = {R.string.not_used, R.string.top_bar, R.string.bot_bar, R.string.float_button};
    public MyPopupMenu X1;
    public DialogEditIcon Y1;
    public DialogSetVideo Z1;
    public boolean a2;
    public int b2;
    public int c2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefZone.n != 3) {
            PrefZone.n = 3;
            PrefSet.j(context, 15, "mDownPos");
            z = true;
        } else {
            z = false;
        }
        if (PrefEditor.j != 0 || PrefEditor.k != i || Float.compare(PrefEditor.l, f) != 0) {
            PrefEditor.j = 0;
            PrefEditor.k = i;
            PrefEditor.l = f;
            PrefEditor.m = PrefEditor.r(i, 0);
            PrefEditor s = PrefEditor.s(context);
            s.q("mIconAlpha");
            s.q("mIconColor");
            s.q("mIconPos");
            s.c();
            z = true;
        }
        if (!PrefZone.o) {
            PrefZone.o = true;
            PrefSet.j(context, 15, "mShowPip");
            z = true;
        }
        if (!PrefZone.p) {
            PrefZone.p = true;
            PrefSet.j(context, 15, "mShowFull");
            z = true;
        }
        if (!PrefZone.q) {
            PrefZone.q = true;
            PrefSet.j(context, 15, "mShowDown");
            z = true;
        }
        if (!TextUtils.isEmpty(PrefAlbum.J) || !TextUtils.isEmpty(PrefAlbum.K) || !TextUtils.isEmpty(PrefAlbum.L)) {
            PrefAlbum.J = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum.K = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum.L = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefAlbum r = PrefAlbum.r(context, false);
            r.q("mPlayName2");
            r.q("mPlayPkg2");
            r.q("mPlayCls2");
            r.c();
            z = true;
        }
        if (PrefZone.r != 3) {
            PrefZone.r = 3;
            PrefSet.j(context, 15, "mYouPos");
            z = true;
        }
        if (PrefEditor.v != 0 || PrefEditor.w != i || Float.compare(PrefEditor.x, f) != 0) {
            PrefEditor.v = 0;
            PrefEditor.w = i;
            PrefEditor.x = f;
            PrefEditor.y = PrefEditor.r(i, 0);
            PrefEditor s2 = PrefEditor.s(context);
            s2.q("mYpipAlpha");
            s2.q("mYpipColor");
            s2.q("mYpipPos");
            s2.c();
            z = true;
        }
        if (!PrefZone.s) {
            PrefZone.s = true;
            PrefSet.j(context, 15, "mYouPip");
            z = true;
        }
        if (!PrefZone.t) {
            PrefZone.t = true;
            PrefSet.j(context, 15, "mYouRate");
            z = true;
        }
        if (!PrefZtwo.T) {
            PrefZtwo.T = true;
            PrefSet.j(context, 16, "mAutoPlay");
            z = true;
        }
        if (!PrefZtwo.U) {
            PrefZtwo.U = true;
            PrefSet.j(context, 16, "mYouUnmute");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        int i3;
        if (PrefZone.n == 3) {
            i = R.string.drag_move_guide;
        } else {
            i = 0;
        }
        int r = PrefEditor.r(PrefEditor.k, PrefEditor.j);
        String str = getString(R.string.video_down_guide_1) + "\n" + getString(R.string.video_down_guide_2) + "\n" + getString(R.string.cast_info_6);
        if (MainApp.K1) {
            i2 = R.drawable.outline_youtube_activity_2_dark_24;
        } else {
            i2 = R.drawable.outline_youtube_activity_2_black_24;
        }
        int i4 = i2;
        if (PrefZone.r == 3) {
            i3 = R.string.drag_move_guide;
        } else {
            i3 = 0;
        }
        int r2 = PrefEditor.r(PrefEditor.w, PrefEditor.v);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        int i5 = R.string.video_manager;
        int i6 = PrefZone.n;
        int[] iArr = e2;
        arrayList.add(new SettingListAdapter.SettingItem(1, i5, iArr[i6], i, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.icon_color, r, 0, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.detail_setting, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(4, 0, str, false, 2));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.back_play, R.string.not_support_site, 1, PrefZone.G, true));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        arrayList.add(new SettingListAdapter.SettingItem(9, 0, "YouTube", i4, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.youtube_manager, iArr[PrefZone.r], i3, 1));
        arrayList.add(new SettingListAdapter.SettingItem(11, R.string.icon_color, r2, 0, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(12, R.string.detail_setting, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(13, false));
        arrayList.add(new SettingListAdapter.SettingItem(14, R.string.youtube_auto, 0, 1, PrefZtwo.T, true));
        a.u(arrayList, new SettingListAdapter.SettingItem(15, R.string.youtube_unmute, 0, 2, PrefZtwo.U, true), 16, false);
        return arrayList;
    }

    public final void P0(int i) {
        int i2;
        DialogEditIcon dialogEditIcon = this.Y1;
        if (dialogEditIcon != null || this.Z1 != null) {
            return;
        }
        if (dialogEditIcon != null) {
            dialogEditIcon.dismiss();
            this.Y1 = null;
        }
        if (i == 11) {
            i2 = 3;
        } else {
            i2 = 0;
        }
        this.c2 = i;
        DialogEditIcon dialogEditIcon2 = new DialogEditIcon(this, i2, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingMedia.6
            @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
            public final void a(int i3, String str) {
                SettingMedia settingMedia = SettingMedia.this;
                int i4 = settingMedia.c2;
                if (settingMedia.N1 == null) {
                    return;
                }
                if (i4 == 11) {
                    settingMedia.N1.D(new SettingListAdapter.SettingItem(11, R.string.icon_color, PrefEditor.r(PrefEditor.w, PrefEditor.v), 0, (a) null));
                } else {
                    settingMedia.N1.D(new SettingListAdapter.SettingItem(2, R.string.icon_color, PrefEditor.r(PrefEditor.k, PrefEditor.j), 0, (a) null));
                }
            }
        });
        this.Y1 = dialogEditIcon2;
        dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMedia.7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int[] iArr = SettingMedia.d2;
                SettingMedia settingMedia = SettingMedia.this;
                DialogEditIcon dialogEditIcon3 = settingMedia.Y1;
                if (dialogEditIcon3 != null) {
                    dialogEditIcon3.dismiss();
                    settingMedia.Y1 = null;
                }
            }
        });
    }

    public final void Q0(SettingListAdapter.ViewHolder viewHolder, int i) {
        int i2;
        boolean z;
        MyPopupMenu myPopupMenu = this.X1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 10) {
                    i2 = PrefZone.r;
                } else {
                    i2 = PrefZone.n;
                }
                this.b2 = i;
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < 4; i3++) {
                    int i4 = d2[i3];
                    int i5 = e2[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingMedia.5
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int[] iArr = SettingMedia.d2;
                        SettingMedia settingMedia = SettingMedia.this;
                        MyPopupMenu myPopupMenu3 = settingMedia.X1;
                        if (myPopupMenu3 != null) {
                            settingMedia.Z0 = null;
                            myPopupMenu3.a();
                            settingMedia.X1 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view, int i6) {
                        SettingMedia settingMedia = SettingMedia.this;
                        int i7 = 0;
                        if (settingMedia.b2 == 10) {
                            int i8 = SettingMedia.d2[i6 % 4];
                            if (PrefZone.r != i8) {
                                PrefZone.r = i8;
                                PrefSet.f(settingMedia.f1, 15, i8, "mYouPos");
                                SettingListAdapter settingListAdapter = settingMedia.N1;
                                if (settingListAdapter != null) {
                                    if (PrefZone.r == 3) {
                                        i7 = R.string.drag_move_guide;
                                    }
                                    settingListAdapter.F(10, SettingMedia.e2[i8]);
                                    settingMedia.N1.C(10, i7);
                                    return true;
                                }
                            }
                        } else {
                            int i9 = SettingMedia.d2[i6 % 4];
                            if (PrefZone.n != i9) {
                                PrefZone.n = i9;
                                PrefSet.f(settingMedia.f1, 15, i9, "mDownPos");
                                SettingListAdapter settingListAdapter2 = settingMedia.N1;
                                if (settingListAdapter2 != null) {
                                    if (PrefZone.n == 3) {
                                        i7 = R.string.drag_move_guide;
                                    }
                                    settingListAdapter2.F(1, SettingMedia.e2[i9]);
                                    settingMedia.N1.C(1, i7);
                                }
                            }
                        }
                        return true;
                    }
                });
                this.X1 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.media, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMedia.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingMedia.d2;
                final SettingMedia settingMedia = SettingMedia.this;
                if (settingMedia.O0 != null) {
                    settingMedia.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingMedia.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingMedia settingMedia2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingMedia2 = SettingMedia.this).N1) != null) {
                                settingListAdapter.E(settingMedia2.D0());
                                if (settingMedia2.a2 != PrefZone.G) {
                                    MainUtil.W4(settingMedia2.f1);
                                    Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                                    intent.setPackage(settingMedia2.getPackageName());
                                    settingMedia2.sendBroadcast(intent);
                                }
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            boolean z = PrefZone.G;
                            SettingMedia settingMedia2 = SettingMedia.this;
                            settingMedia2.a2 = z;
                            return SettingMedia.O0(settingMedia2.f1);
                        }
                    });
                    Handler handler2 = settingMedia.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMedia.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingMedia.d2;
                            final SettingMedia settingMedia2 = SettingMedia.this;
                            if (settingMedia2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingMedia2.D0(), false, settingMedia2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingMedia.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                    DialogSetVideo dialogSetVideo;
                                    DialogSetVideo dialogSetVideo2;
                                    int[] iArr3 = SettingMedia.d2;
                                    final SettingMedia settingMedia3 = SettingMedia.this;
                                    if (i != 1) {
                                        if (i != 2) {
                                            if (i != 3) {
                                                if (i != 6) {
                                                    if (i != 14) {
                                                        if (i != 15) {
                                                            switch (i) {
                                                                case 10:
                                                                    settingMedia3.Q0(viewHolder, i);
                                                                    return;
                                                                case 11:
                                                                    settingMedia3.P0(i);
                                                                    return;
                                                                case 12:
                                                                    if (settingMedia3.Y1 == null && (dialogSetVideo2 = settingMedia3.Z1) == null) {
                                                                        if (dialogSetVideo2 != null) {
                                                                            dialogSetVideo2.dismiss();
                                                                            settingMedia3.Z1 = null;
                                                                        }
                                                                        DialogSetVideo dialogSetVideo3 = new DialogSetVideo(settingMedia3, true);
                                                                        settingMedia3.Z1 = dialogSetVideo3;
                                                                        dialogSetVideo3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMedia.8
                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                int[] iArr4 = SettingMedia.d2;
                                                                                SettingMedia settingMedia4 = SettingMedia.this;
                                                                                DialogSetVideo dialogSetVideo4 = settingMedia4.Z1;
                                                                                if (dialogSetVideo4 != null) {
                                                                                    dialogSetVideo4.dismiss();
                                                                                    settingMedia4.Z1 = null;
                                                                                }
                                                                            }
                                                                        });
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                        }
                                                        PrefZtwo.U = z;
                                                        PrefSet.d(16, settingMedia3.f1, "mYouUnmute", z);
                                                        return;
                                                    }
                                                    PrefZtwo.T = z;
                                                    PrefSet.d(16, settingMedia3.f1, "mAutoPlay", z);
                                                    return;
                                                }
                                                PrefZone.G = z;
                                                PrefSet.d(15, settingMedia3.f1, "mBackPlay", z);
                                                if (!PrefZone.G) {
                                                    MainUtil.W4(settingMedia3.f1);
                                                    Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                                                    intent.setPackage(settingMedia3.getPackageName());
                                                    settingMedia3.sendBroadcast(intent);
                                                    return;
                                                }
                                                return;
                                            }
                                            if (settingMedia3.Y1 != null || (dialogSetVideo = settingMedia3.Z1) != null) {
                                                return;
                                            }
                                            if (dialogSetVideo != null) {
                                                dialogSetVideo.dismiss();
                                                settingMedia3.Z1 = null;
                                            }
                                            DialogSetVideo dialogSetVideo4 = new DialogSetVideo(settingMedia3, false);
                                            settingMedia3.Z1 = dialogSetVideo4;
                                            dialogSetVideo4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMedia.8
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int[] iArr4 = SettingMedia.d2;
                                                    SettingMedia settingMedia4 = SettingMedia.this;
                                                    DialogSetVideo dialogSetVideo42 = settingMedia4.Z1;
                                                    if (dialogSetVideo42 != null) {
                                                        dialogSetVideo42.dismiss();
                                                        settingMedia4.Z1 = null;
                                                    }
                                                }
                                            });
                                            return;
                                        }
                                        settingMedia3.P0(i);
                                        return;
                                    }
                                    settingMedia3.Q0(viewHolder, i);
                                }
                            });
                            settingMedia2.N1 = settingListAdapter;
                            settingMedia2.L1.setAdapter(settingListAdapter);
                            settingMedia2.M0();
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
            DialogEditIcon dialogEditIcon = this.Y1;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.Y1 = null;
            }
            DialogSetVideo dialogSetVideo = this.Z1;
            if (dialogSetVideo != null) {
                dialogSetVideo.dismiss();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu = this.X1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
            }
        }
    }
}
