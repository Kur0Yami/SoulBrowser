package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSeekWeb;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingWeb extends SettingActivity {
    public static final int[] h2 = {1, 2, 0};
    public static final int[] i2 = {R.string.not_used, R.string.web_page, R.string.only_text};
    public static final int[] j2 = {1, 2, 0};
    public boolean X1;
    public String Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogSeekWeb b2;
    public DialogListBook c2;
    public int d2;
    public String e2;
    public String f2;
    public String g2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        boolean z2 = true;
        if (PrefZone.u) {
            PrefZone.u = false;
            PrefSet.j(context, 15, "mHideImage");
            z = true;
        } else {
            z = false;
        }
        if (PrefZtwo.A != 1) {
            PrefZtwo.A = 1;
            PrefSet.j(context, 16, "mWebScale");
            z = true;
        }
        if (PrefZtwo.S != 0) {
            PrefZtwo.S = 0;
            PrefSet.j(context, 16, "mReadMode");
            z = true;
        }
        if (PrefZtri.k || PrefZtri.p != 200) {
            PrefZtri.k = false;
            PrefZtri.p = HttpStatusCodes.STATUS_CODE_OK;
            PrefZtri r = PrefZtri.r(context);
            r.q("mZoomIcon");
            r.q("mZoomSize");
            r.c();
            z = true;
        }
        if (PrefZone.w != 100) {
            PrefZone.w = 100;
            PrefSet.j(context, 15, "mTextSize");
            z = true;
        }
        if (PrefEditor.r != 0 || PrefEditor.s != i || Float.compare(PrefEditor.t, f) != 0) {
            PrefEditor.r = 0;
            PrefEditor.s = i;
            PrefEditor.t = f;
            PrefEditor.u = PrefEditor.r(i, 0);
            PrefEditor s = PrefEditor.s(context);
            s.q("mZoomAlpha");
            s.q("mZoomColor");
            s.q("mZoomPos");
            s.c();
            z = true;
        }
        if (PrefZone.k || PrefZone.m || !TextUtils.isEmpty(PrefZone.l)) {
            PrefZone.k = false;
            PrefZone.l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefZone.m = false;
            PrefZone r2 = PrefZone.r(context, false);
            r2.q("mUserFont");
            r2.q("mFontPath");
            r2.q("mFontBold");
            r2.c();
            z = true;
        }
        if (PrefPdf.L) {
            PrefPdf.L = false;
            PrefSet.j(context, 7, "mUserScript");
        } else {
            z2 = z;
        }
        if (PrefPdf.M != 0) {
            PrefPdf.M = 0L;
            PrefSet.j(context, 7, "mScriptTime");
        }
        if (PrefPdf.N != 7) {
            PrefPdf.N = 7;
            PrefSet.j(context, 7, "mScriptDay");
        }
        return z2;
    }

    public static String R0() {
        StringBuilder sb = new StringBuilder();
        sb.append(PrefZone.w);
        sb.append("%");
        if (PrefZtri.k) {
            sb.append(" (");
            sb.append(PrefZtri.p);
            sb.append("%)");
        }
        return sb.toString();
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String string;
        String str;
        if (PrefZone.k) {
            str = PrefZone.l;
            string = P0(str);
        } else {
            string = getString(R.string.font_default);
            str = null;
        }
        String str2 = str;
        String str3 = string;
        this.e2 = str2;
        this.f2 = str3;
        this.g2 = getString(R.string.user_script_info) + "\n" + getString(R.string.dark_mode_info_2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.show_image, R.string.show_image_info, 1, PrefZone.u ^ true, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.free_scale, i2[PrefZtwo.A], 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.reader_mode, Q0(PrefZtwo.S), 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.text_size, R0(), 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(str3, R.string.font, R.string.font_info_1, str2, 2));
        arrayList.add(new SettingListAdapter.SettingItem(7, false));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.user_script_on, 0, 1, PrefPdf.L, true));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.user_script_list, 0, 0, 0));
        a.u(arrayList, new SettingListAdapter.SettingItem(this.g2, PrefPdf.L), 11, false);
        return arrayList;
    }

    public final String P0(String str) {
        boolean startsWith;
        String j1;
        int i;
        if (TextUtils.isEmpty(str)) {
            startsWith = false;
        } else {
            startsWith = str.startsWith("app://");
        }
        if (startsWith) {
            int lastIndexOf = str.lastIndexOf(44);
            if (lastIndexOf > 0 && (i = lastIndexOf + 1) < str.length()) {
                j1 = str.substring(i);
            } else {
                j1 = null;
            }
        } else {
            j1 = MainUtil.j1(this.f1, str);
        }
        if (TextUtils.isEmpty(j1)) {
            return getString(R.string.no_title);
        }
        return j1;
    }

    public final String Q0(int i) {
        if (i == 1) {
            return "TEXT";
        }
        if (i == 2) {
            return "HTML";
        }
        return getString(R.string.check_brfore);
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.X1) {
            int i = this.d2;
            int i3 = PrefZtwo.S;
            if (i != i3) {
                this.d2 = i3;
                Intent intent = new Intent();
                intent.putExtra("EXTRA_TYPE", 31);
                setResult(-1, intent);
            }
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i3, Intent intent) {
        String string;
        String str;
        DialogListBook dialogListBook = this.c2;
        if ((dialogListBook == null || !dialogListBook.p(i, i3, intent)) && i == 7 && this.N1 != null) {
            if (PrefZone.k) {
                str = PrefZone.l;
                string = P0(str);
            } else {
                string = getString(R.string.font_default);
                str = null;
            }
            String str2 = str;
            String str3 = string;
            if (!MainUtil.q5(this.e2, str2) || !MainUtil.q5(this.f2, str3)) {
                this.N1.D(new SettingListAdapter.SettingItem(str3, R.string.font, R.string.font_info_1, str2, 0));
            }
            this.e2 = str2;
            this.f2 = str3;
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogSeekWeb dialogSeekWeb = this.b2;
        if (dialogSeekWeb != null) {
            dialogSeekWeb.H(h0());
        }
        DialogListBook dialogListBook = this.c2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getBooleanExtra("EXTRA_POPUP", false);
        this.Y1 = getIntent().getStringExtra("EXTRA_PATH");
        this.d2 = PrefZtwo.S;
        o0(null, 7);
        o0(null, 9);
        F0(R.string.web_content, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingWeb.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingWeb.h2;
                final SettingWeb settingWeb = SettingWeb.this;
                if (settingWeb.O0 != null) {
                    settingWeb.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingWeb.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingWeb settingWeb2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingWeb2 = SettingWeb.this).N1) != null) {
                                settingListAdapter.E(settingWeb2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingWeb.O0(SettingWeb.this.f1);
                        }
                    });
                    Handler handler2 = settingWeb.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingWeb.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingWeb.h2;
                            final SettingWeb settingWeb2 = SettingWeb.this;
                            if (settingWeb2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingWeb2.D0(), false, settingWeb2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingWeb.4
                                /* JADX WARN: Type inference failed for: r8v15, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i3) {
                                    boolean z2;
                                    boolean z3;
                                    MyMainRelative myMainRelative;
                                    DialogListBook dialogListBook;
                                    int[] iArr3 = SettingWeb.h2;
                                    final SettingWeb settingWeb3 = SettingWeb.this;
                                    if (i != 1) {
                                        if (i != 2) {
                                            if (i != 3) {
                                                if (i != 5) {
                                                    if (i != 6) {
                                                        if (i != 8) {
                                                            if (i == 9 && settingWeb3.b2 == null && (dialogListBook = settingWeb3.c2) == null) {
                                                                if (dialogListBook != null) {
                                                                    dialogListBook.dismiss();
                                                                    settingWeb3.c2 = null;
                                                                }
                                                                ?? obj = new Object();
                                                                obj.f16734a = 27;
                                                                obj.i = true;
                                                                obj.f = R.string.user_script_title;
                                                                DialogListBook dialogListBook2 = new DialogListBook(settingWeb3, obj, null, null);
                                                                settingWeb3.c2 = dialogListBook2;
                                                                dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingWeb.10
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int[] iArr4 = SettingWeb.h2;
                                                                        SettingWeb settingWeb4 = SettingWeb.this;
                                                                        DialogListBook dialogListBook3 = settingWeb4.c2;
                                                                        if (dialogListBook3 != null) {
                                                                            dialogListBook3.dismiss();
                                                                            settingWeb4.c2 = null;
                                                                        }
                                                                        settingWeb4.C0(null);
                                                                    }
                                                                });
                                                                settingWeb3.c2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingWeb.11
                                                                    @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
                                                                    public final void a() {
                                                                        SettingWeb settingWeb4 = SettingWeb.this;
                                                                        settingWeb4.C0(settingWeb4.c2);
                                                                    }
                                                                };
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        PrefPdf.L = z;
                                                        PrefSet.d(7, settingWeb3.f1, "mUserScript", z);
                                                        SettingListAdapter settingListAdapter2 = settingWeb3.N1;
                                                        if (settingListAdapter2 != null) {
                                                            settingListAdapter2.D(new SettingListAdapter.SettingItem(settingWeb3.g2, PrefPdf.L));
                                                            if (PrefPdf.L && (myMainRelative = settingWeb3.E1) != null) {
                                                                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingWeb.5
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        if (PrefPdf.L) {
                                                                            SettingWeb settingWeb4 = SettingWeb.this;
                                                                            if (settingWeb4.E1 == null) {
                                                                                return;
                                                                            }
                                                                            settingWeb4.N0(10);
                                                                        }
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    settingWeb3.o0(new Intent(settingWeb3.f1, (Class<?>) SettingFont.class), 7);
                                                    return;
                                                }
                                                DialogSeekWeb dialogSeekWeb = settingWeb3.b2;
                                                if (dialogSeekWeb == null && settingWeb3.c2 == null) {
                                                    if (dialogSeekWeb != null) {
                                                        dialogSeekWeb.dismiss();
                                                        settingWeb3.b2 = null;
                                                    }
                                                    DialogSeekWeb dialogSeekWeb2 = new DialogSeekWeb(settingWeb3, settingWeb3.Y1, new DialogSetImage.ChangedListener() { // from class: com.mycompany.app.setting.SettingWeb.8
                                                        @Override // com.mycompany.app.dialog.DialogSetImage.ChangedListener
                                                        public final void a() {
                                                            SettingListAdapter settingListAdapter3 = SettingWeb.this.N1;
                                                            if (settingListAdapter3 != null) {
                                                                settingListAdapter3.G(5, SettingWeb.R0());
                                                            }
                                                        }
                                                    });
                                                    settingWeb3.b2 = dialogSeekWeb2;
                                                    dialogSeekWeb2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingWeb.9
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            SettingWeb settingWeb4 = SettingWeb.this;
                                                            DialogSeekWeb dialogSeekWeb3 = settingWeb4.b2;
                                                            if (dialogSeekWeb3 != null) {
                                                                settingWeb4.Y1 = dialogSeekWeb3.h0;
                                                            }
                                                            if (dialogSeekWeb3 != null) {
                                                                dialogSeekWeb3.dismiss();
                                                                settingWeb4.b2 = null;
                                                            }
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu = settingWeb3.a2;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingWeb3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingWeb3.a2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    for (int i4 = 0; i4 < 3; i4++) {
                                                        int i5 = SettingWeb.j2[i4];
                                                        String Q0 = settingWeb3.Q0(i5);
                                                        if (PrefZtwo.S == i5) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(Q0, i4, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingWeb3, settingWeb3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingWeb.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingWeb.h2;
                                                            SettingWeb settingWeb4 = SettingWeb.this;
                                                            MyPopupMenu myPopupMenu3 = settingWeb4.a2;
                                                            if (myPopupMenu3 != null) {
                                                                settingWeb4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingWeb4.a2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7 = SettingWeb.j2[i6 % 3];
                                                            if (PrefZtwo.S != i7) {
                                                                PrefZtwo.S = i7;
                                                                SettingWeb settingWeb4 = SettingWeb.this;
                                                                PrefSet.f(settingWeb4.f1, 16, i7, "mReadMode");
                                                                SettingListAdapter settingListAdapter3 = settingWeb4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.G(3, settingWeb4.Q0(i7));
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingWeb3.a2 = myPopupMenu2;
                                                    settingWeb3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu3 = settingWeb3.Z1;
                                        if (myPopupMenu3 == null) {
                                            if (myPopupMenu3 != null) {
                                                settingWeb3.Z0 = null;
                                                myPopupMenu3.a();
                                                settingWeb3.Z1 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                for (int i6 = 0; i6 < 3; i6++) {
                                                    int i7 = SettingWeb.h2[i6];
                                                    int i8 = SettingWeb.i2[i7];
                                                    if (PrefZtwo.A == i7) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i6, i8, z2));
                                                }
                                                MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingWeb3, settingWeb3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingWeb.6
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int[] iArr4 = SettingWeb.h2;
                                                        SettingWeb settingWeb4 = SettingWeb.this;
                                                        MyPopupMenu myPopupMenu5 = settingWeb4.Z1;
                                                        if (myPopupMenu5 != null) {
                                                            settingWeb4.Z0 = null;
                                                            myPopupMenu5.a();
                                                            settingWeb4.Z1 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i9) {
                                                        int i10 = SettingWeb.h2[i9 % 3];
                                                        if (PrefZtwo.A != i10) {
                                                            PrefZtwo.A = i10;
                                                            SettingWeb settingWeb4 = SettingWeb.this;
                                                            PrefSet.f(settingWeb4.f1, 16, i10, "mWebScale");
                                                            SettingListAdapter settingListAdapter3 = settingWeb4.N1;
                                                            if (settingListAdapter3 != null) {
                                                                settingListAdapter3.F(2, SettingWeb.i2[i10]);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                settingWeb3.Z1 = myPopupMenu4;
                                                settingWeb3.Z0 = myPopupMenu4;
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    boolean z4 = !z;
                                    PrefZone.u = z4;
                                    PrefSet.d(15, settingWeb3.f1, "mHideImage", z4);
                                }
                            });
                            settingWeb2.N1 = settingListAdapter;
                            settingWeb2.L1.setAdapter(settingListAdapter);
                            settingWeb2.M0();
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
        this.e2 = null;
        this.f2 = null;
        this.g2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        WebNestView webNestView;
        super.onPause();
        if (isFinishing()) {
            DialogSeekWeb dialogSeekWeb = this.b2;
            if (dialogSeekWeb != null) {
                dialogSeekWeb.dismiss();
                this.b2 = null;
            }
            DialogListBook dialogListBook = this.c2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.c2 = null;
            }
            MyPopupMenu myPopupMenu = this.Z1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu2 = this.a2;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.a2 = null;
                return;
            }
            return;
        }
        DialogSeekWeb dialogSeekWeb2 = this.b2;
        if (dialogSeekWeb2 != null && (webNestView = dialogSeekWeb2.t0) != null) {
            webNestView.C();
        }
        DialogListBook dialogListBook2 = this.c2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        WebNestView webNestView;
        super.onResume();
        DialogSeekWeb dialogSeekWeb = this.b2;
        if (dialogSeekWeb != null && (webNestView = dialogSeekWeb.t0) != null) {
            webNestView.onResume();
        }
        DialogListBook dialogListBook = this.c2;
        if (dialogListBook != null) {
            dialogListBook.s(true);
        }
    }
}
