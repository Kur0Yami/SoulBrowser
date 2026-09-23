package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.mycompany.app.cast.CastLocal;
import com.mycompany.app.dialog.DialogCastGuide;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingCast extends SettingActivity {
    public static final /* synthetic */ int Z1 = 0;
    public DialogCastGuide X1;
    public boolean Y1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.setting.SettingCast$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements CastActivity.MyCastCheckListener {
        public AnonymousClass3() {
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        String string = getString(R.string.web_stream);
        String str = getString(R.string.video) + " " + string;
        String str2 = getString(R.string.image) + " " + string;
        boolean z = !PrefMain.s;
        if (MainApp.K1) {
            i = R.drawable.outline_help_dark_20;
        } else {
            i = R.drawable.outline_help_black_20;
        }
        int i2 = i;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.cast_on, 0, 1, PrefMain.s, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.repeat_play, 0, PrefMain.t, z, z, 2));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(4, 0, (String) null, i2, false));
        if (MainApp.K1) {
            arrayList.add(new SettingListAdapter.SettingItem(5, R.string.local_file, R.drawable.outline_live_tv_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(6, R.string.subtitle, R.drawable.outline_subtitles_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(7, str, R.drawable.baseline_play_arrow_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(8, str2, R.drawable.outline_image_dark_24, 2));
        } else {
            arrayList.add(new SettingListAdapter.SettingItem(5, R.string.local_file, R.drawable.outline_live_tv_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(6, R.string.subtitle, R.drawable.outline_subtitles_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(7, str, R.drawable.baseline_play_arrow_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(8, str2, R.drawable.outline_image_black_24, 2));
        }
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        return arrayList;
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.Y1) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.tv_cast, false, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingCast.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingCast.Z1;
                final SettingCast settingCast = SettingCast.this;
                if (settingCast.O0 == null) {
                    return;
                }
                SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingCast.D0(), false, settingCast.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingCast.2
                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                        RemoteMediaClient j;
                        DialogCastGuide dialogCastGuide;
                        int i4 = SettingCast.Z1;
                        final SettingCast settingCast2 = SettingCast.this;
                        int i5 = 1;
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if ((i2 == 5 || i2 == 6 || i2 == 7 || i2 == 8) && (dialogCastGuide = settingCast2.X1) == null) {
                                    if (dialogCastGuide != null) {
                                        dialogCastGuide.dismiss();
                                        settingCast2.X1 = null;
                                    }
                                    if (i2 == 5) {
                                        i5 = 0;
                                    } else if (i2 != 6) {
                                        if (i2 == 7) {
                                            i5 = 2;
                                        } else if (i2 == 8) {
                                            i5 = 3;
                                        } else {
                                            return;
                                        }
                                    }
                                    DialogCastGuide dialogCastGuide2 = new DialogCastGuide(settingCast2, i5);
                                    settingCast2.X1 = dialogCastGuide2;
                                    dialogCastGuide2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCast.5
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i6 = SettingCast.Z1;
                                            SettingCast settingCast3 = SettingCast.this;
                                            DialogCastGuide dialogCastGuide3 = settingCast3.X1;
                                            if (dialogCastGuide3 != null) {
                                                dialogCastGuide3.dismiss();
                                                settingCast3.X1 = null;
                                            }
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            PrefMain.t = z;
                            PrefSet.d(5, settingCast2.f1, "mCastLoop", z);
                            CastSession castSession = settingCast2.p1;
                            if (castSession != null && (j = castSession.j()) != null) {
                                try {
                                    j.z();
                                } catch (Exception unused) {
                                }
                                CastLocal.a().c();
                                return;
                            }
                            return;
                        }
                        settingCast2.Y1 = true;
                        settingCast2.m1 = new AnonymousClass3();
                        PrefMain.s = z;
                        PrefSet.d(5, settingCast2.f1, "mCastOn", z);
                        if (!PrefMain.s && settingCast2.o1 != null) {
                            try {
                                CastSession castSession2 = settingCast2.p1;
                                if (castSession2 != null && castSession2.c()) {
                                    settingCast2.o1.d().b(true);
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        SettingListAdapter settingListAdapter2 = settingCast2.N1;
                        if (settingListAdapter2 != null) {
                            boolean z2 = !PrefMain.s;
                            settingListAdapter2.D(new SettingListAdapter.SettingItem(2, R.string.repeat_play, 0, PrefMain.t, z2, z2, 2));
                        }
                        MyRecyclerView myRecyclerView = settingCast2.L1;
                        if (myRecyclerView != null) {
                            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingCast.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingCast settingCast3 = SettingCast.this;
                                    settingCast3.v0(settingCast3.j1, settingCast3.k1, null);
                                }
                            });
                        }
                    }
                });
                settingCast.N1 = settingListAdapter;
                settingCast.L1.setAdapter(settingListAdapter);
                settingCast.M0();
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        DialogCastGuide dialogCastGuide;
        super.onPause();
        if (isFinishing() && (dialogCastGuide = this.X1) != null) {
            dialogCastGuide.dismiss();
            this.X1 = null;
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.Y1 = false;
    }
}
