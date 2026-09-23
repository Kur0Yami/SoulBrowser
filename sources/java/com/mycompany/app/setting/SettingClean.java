package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogGuideArea;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SettingClean extends SettingActivity {
    public static final int[] A2;
    public static final int[] B2;
    public static final int[] C2;
    public static final int[] v2;
    public static final int[] w2;
    public static final int[] x2;
    public static final int[] y2;
    public static final int[] z2;
    public boolean X1;
    public boolean Y1;
    public String Z1;
    public MyPopupMenu a2;
    public DialogConfirm b2;
    public DialogGuideArea c2;
    public DialogListBook d2;
    public MyPopupMenu e2;
    public MyPopupMenu f2;
    public MyPopupMenu g2;
    public String h2;
    public String i2;
    public String j2;
    public boolean k2;
    public long l2;
    public long m2;
    public boolean n2;
    public boolean o2;
    public boolean p2;
    public boolean q2;
    public ArrayList r2;
    public MyPopupMenu s2;
    public boolean t2;
    public DialogSetMsg u2;

    static {
        int i = R.string.not_used;
        v2 = new int[]{i, R.string.check_once, R.string.check_keep};
        w2 = new int[]{0, R.string.over_block_info, R.string.fast_down_guide};
        x2 = new int[]{1, 2, 0};
        y2 = new int[]{i, R.string.level_weak, R.string.normal_rate, R.string.level_strong};
        z2 = new int[]{0, R.string.pop_block_info3, R.string.pop_block_info2, R.string.pop_block_info1};
        A2 = new int[]{3, 2, 1, 0};
        B2 = new int[]{i, R.string.app_site, R.string.always_block};
        C2 = new int[]{2, 1, 0};
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        boolean z3 = true;
        if (!PrefWeb.o) {
            PrefWeb.o = true;
            PrefSet.j(context, 14, "mAdsBlock");
            z = true;
        } else {
            z = false;
        }
        if (PrefTts.t) {
            PrefTts.t = false;
            PrefSet.j(context, 12, "mCheckEle3");
            z = true;
        }
        if (!PrefWeb.p) {
            PrefWeb.p = true;
            PrefSet.j(context, 14, "mAreaBlock");
            z = true;
        }
        if (PrefTts.u != 0) {
            PrefTts.u = 0;
            PrefSet.j(context, 12, "mCheckOver2");
            z = true;
        }
        if (PrefWeb.q != 1) {
            PrefWeb.q = 1;
            PrefSet.j(context, 14, "mPopBlock2");
            z = true;
        }
        if (PrefPdf.w != 2) {
            PrefPdf.w = 2;
            PrefSet.j(context, 7, "mAppBlock2");
        } else {
            z3 = z;
        }
        if (PrefPdf.J == 0) {
            PrefPdf.J = System.currentTimeMillis();
            PrefSet.j(context, 7, "mFilterTime");
        }
        if (PrefPdf.K != 7) {
            PrefPdf.K = 7;
            PrefSet.j(context, 7, "mFilterDay");
        }
        return z3;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        if (TextUtils.isEmpty(this.h2)) {
            this.h2 = getString(R.string.check_element) + " " + getString(R.string.check_ele_info_0);
        }
        if (TextUtils.isEmpty(this.i2)) {
            this.i2 = getString(R.string.memory_warning_1);
        }
        boolean z = !PrefWeb.o;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.ads_block, R.string.ads_block_info, 1, PrefWeb.o, true));
        arrayList.add(new SettingListAdapter.SettingItem(this.h2, this.i2, PrefTts.t, z, z));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.ads_filter, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.ads_white, 0, R.string.guide_ads_allow, 2));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.block_area, R.string.area_info_13, 3, PrefWeb.p, true));
        arrayList.add(new SettingListAdapter.SettingItem(7, false));
        int i = R.string.over_block;
        int i2 = PrefTts.u;
        arrayList.add(new SettingListAdapter.SettingItem(8, i, v2[i2], w2[i2], 1));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.over_white, 0, R.string.guide_over_allow, 2));
        arrayList.add(new SettingListAdapter.SettingItem(10, false));
        int i3 = R.string.pop_block;
        int i4 = PrefWeb.q;
        arrayList.add(new SettingListAdapter.SettingItem(11, i3, y2[i4], z2[i4], 1));
        arrayList.add(new SettingListAdapter.SettingItem(12, R.string.pop_white, 0, R.string.guide_pop_allow, 2));
        arrayList.add(new SettingListAdapter.SettingItem(13, false));
        arrayList.add(new SettingListAdapter.SettingItem(14, R.string.app_block, B2[PrefPdf.w], Q0(), 3));
        arrayList.add(new SettingListAdapter.SettingItem(15, false));
        arrayList.add(new SettingListAdapter.SettingItem(16, R.string.blocked_link, 0, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(17, R.string.lock_type, MainConst.Z[PrefSecret.B], 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(18, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(19, R.string.blocked_image, 0, 0, 3), 20, false);
        return arrayList;
    }

    public final void O0(File file, boolean z) {
        File[] listFiles;
        boolean z3;
        try {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length > 0) {
                for (File file2 : listFiles) {
                    if (this.f1 != null) {
                        if (file2.isDirectory()) {
                            O0(file2, false);
                        } else {
                            ArrayList arrayList = this.r2;
                            if (arrayList != null) {
                                z3 = arrayList.contains(file2.getPath());
                            } else {
                                z3 = false;
                            }
                            if (!z3) {
                                file2.delete();
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
            if (!z) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    public final String Q0() {
        if (PrefPdf.w == 0) {
            return null;
        }
        if (TextUtils.isEmpty(this.j2)) {
            this.j2 = getString(R.string.app_block_info1);
        }
        if (PrefPdf.w == 2) {
            return this.j2;
        }
        return this.j2 + "\n" + getString(R.string.app_block_info2);
    }

    public final void R0() {
        DialogConfirm dialogConfirm = this.b2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.b2 = null;
        }
    }

    public final boolean S0() {
        if (this.b2 != null || this.c2 != null || this.d2 != null || this.u2 != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
    public final void T0(int i) {
        if (S0()) {
            return;
        }
        DialogListBook dialogListBook = this.d2;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.d2 = null;
        }
        ?? obj = new Object();
        obj.f16734a = i;
        obj.i = true;
        if (i == 19) {
            obj.f = R.string.ads_white;
        } else if (i == 20) {
            obj.f = R.string.over_white;
        } else if (i == 21) {
            obj.f = R.string.pop_white;
        } else if (i == 22) {
            obj.f = R.string.blocked_link;
        } else if (i == 23) {
            obj.f = R.string.blocked_image;
        } else {
            obj.f = R.string.ads_filter;
            this.q2 = true;
            this.n2 = true;
            this.o2 = false;
        }
        DialogListBook dialogListBook2 = new DialogListBook(this, obj, this.Z1, null);
        this.d2 = dialogListBook2;
        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingClean.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int[] iArr = SettingClean.v2;
                SettingClean settingClean = SettingClean.this;
                DialogListBook dialogListBook3 = settingClean.d2;
                if (dialogListBook3 != null) {
                    dialogListBook3.dismiss();
                    settingClean.d2 = null;
                }
                settingClean.C0(null);
                if (settingClean.q2) {
                    settingClean.q2 = false;
                    settingClean.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingClean.11.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            SettingClean settingClean2 = SettingClean.this;
                            long d = DbBookFilter.d(settingClean2.f1);
                            if (settingClean2.l2 != d) {
                                settingClean2.p2 = true;
                            }
                            settingClean2.o2 = true;
                            if (settingClean2.m2 != d) {
                                settingClean2.m2 = d;
                                if (!PrefPdf.I && settingClean2.f1 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    Cursor cursor = null;
                                    try {
                                        cursor = DbUtil.g(DbBookFilter.f(settingClean2.f1).getWritableDatabase(), "DbBookFilter_table", new String[]{"_path"}, null, null, null);
                                        if (cursor != null && cursor.moveToFirst()) {
                                            int columnIndex = cursor.getColumnIndex("_path");
                                            do {
                                                String a4 = MainUtil.a4(settingClean2.f1, cursor.getString(columnIndex));
                                                if (!TextUtils.isEmpty(a4)) {
                                                    arrayList.add(a4);
                                                }
                                                if (settingClean2.f1 == null) {
                                                    break;
                                                }
                                            } while (cursor.moveToNext());
                                        }
                                    } catch (Exception unused) {
                                    }
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    Context context = settingClean2.f1;
                                    if (context != null) {
                                        String a42 = MainUtil.a4(context, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                                        if (!TextUtils.isEmpty(a42)) {
                                            arrayList.add(a42);
                                        }
                                        String G0 = MainUtil.G0(settingClean2.f1, ".filter");
                                        if (!TextUtils.isEmpty(G0)) {
                                            settingClean2.r2 = arrayList;
                                            settingClean2.O0(new File(G0), true);
                                        }
                                    }
                                }
                            }
                        }
                    });
                }
            }
        });
        this.d2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingClean.12
            @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
            public final void a() {
                SettingClean settingClean = SettingClean.this;
                settingClean.C0(settingClean.d2);
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r9.l2 != com.mycompany.app.db.book.DbBookFilter.d(r9.f1)) goto L11;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void finish() {
        /*
            r9 = this;
            boolean r0 = r9.p2
            r1 = -1
            r2 = 62
            java.lang.String r3 = "EXTRA_TYPE"
            java.lang.String r4 = "EXTRA_FILTER"
            if (r0 == 0) goto Lc
            goto L20
        Lc:
            boolean r0 = r9.n2
            if (r0 == 0) goto L34
            boolean r0 = r9.o2
            if (r0 != 0) goto L34
            android.content.Context r0 = r9.f1
            long r5 = com.mycompany.app.db.book.DbBookFilter.d(r0)
            long r7 = r9.l2
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 == 0) goto L34
        L20:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            r5 = 1
            r0.putExtra(r4, r5)
            boolean r4 = r9.Y1
            if (r4 == 0) goto L30
            r0.putExtra(r3, r2)
        L30:
            r9.setResult(r1, r0)
            goto L51
        L34:
            boolean r0 = r9.k2
            boolean r5 = com.mycompany.app.pref.PrefTts.t
            if (r0 == r5) goto L51
            r9.k2 = r5
            if (r5 == 0) goto L51
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            r5 = 0
            r0.putExtra(r4, r5)
            boolean r4 = r9.Y1
            if (r4 == 0) goto L4e
            r0.putExtra(r3, r2)
        L4e:
            r9.setResult(r1, r0)
        L51:
            super.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingClean.finish():void");
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogListBook dialogListBook = this.d2;
        if (dialogListBook == null || !dialogListBook.p(i, i2, intent)) {
            if (i == 3) {
                if (i2 == -1) {
                    if (this.t2) {
                        this.t2 = false;
                        PrefSecret.B = 0;
                        PrefSecret.C = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        PrefSecret r = PrefSecret.r(this.f1, false);
                        r.q("mLinkLockType");
                        r.q("mLinkLockCode");
                        r.a();
                    }
                    SettingListAdapter settingListAdapter = this.N1;
                    if (settingListAdapter != null) {
                        settingListAdapter.D(new SettingListAdapter.SettingItem(17, R.string.lock_type, MainConst.Z[PrefSecret.B], 0, 2));
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == 2 && i2 == -1 && PrefSecret.B != 0) {
                T0(22);
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListBook dialogListBook = this.d2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        this.Y1 = getIntent().getBooleanExtra("EXTRA_POPUP", false);
        this.Z1 = getIntent().getStringExtra("EXTRA_PATH");
        this.k2 = PrefTts.t;
        o0(null, 9);
        o0(null, 3);
        o0(null, 2);
        F0(R.string.clean_mode, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingClean.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                int[] iArr = SettingClean.v2;
                final SettingClean settingClean = SettingClean.this;
                if (settingClean.O0 != null) {
                    settingClean.L0(16, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingClean.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingClean settingClean2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingClean2 = SettingClean.this).N1) != null) {
                                settingListAdapter.E(settingClean2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingClean.P0(SettingClean.this.f1);
                        }
                    });
                    settingClean.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingClean.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            boolean z = PrefAlbum.p;
                            final SettingClean settingClean2 = SettingClean.this;
                            if (z) {
                                PrefAlbum.p = false;
                                PrefSet.d(0, settingClean2.f1, "mNotiClea2", false);
                                MyButtonImage myButtonImage2 = settingClean2.J1;
                                if (myButtonImage2 != null) {
                                    myButtonImage2.setNoti(false);
                                }
                            }
                            MyPopupMenu myPopupMenu = settingClean2.a2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingClean2.Z0 = null;
                                    myPopupMenu.a();
                                    settingClean2.a2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.ads_block));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.check_element));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.block_area));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.over_block));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingClean2, settingClean2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingClean.7
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int[] iArr2 = SettingClean.v2;
                                        SettingClean settingClean3 = SettingClean.this;
                                        MyPopupMenu myPopupMenu3 = settingClean3.a2;
                                        if (myPopupMenu3 != null) {
                                            settingClean3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingClean3.a2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i) {
                                        final SettingClean settingClean3 = SettingClean.this;
                                        if (i == 2) {
                                            int[] iArr2 = SettingClean.v2;
                                            if (!settingClean3.S0()) {
                                                DialogGuideArea dialogGuideArea = settingClean3.c2;
                                                if (dialogGuideArea != null) {
                                                    dialogGuideArea.dismiss();
                                                    settingClean3.c2 = null;
                                                }
                                                DialogGuideArea dialogGuideArea2 = new DialogGuideArea(settingClean3, 3, null);
                                                settingClean3.c2 = dialogGuideArea2;
                                                dialogGuideArea2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingClean.10
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr3 = SettingClean.v2;
                                                        SettingClean settingClean4 = SettingClean.this;
                                                        DialogGuideArea dialogGuideArea3 = settingClean4.c2;
                                                        if (dialogGuideArea3 != null) {
                                                            dialogGuideArea3.dismiss();
                                                            settingClean4.c2 = null;
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                        } else {
                                            int[] iArr3 = SettingClean.v2;
                                            if (!settingClean3.S0()) {
                                                settingClean3.R0();
                                                StringBuilder sb = new StringBuilder();
                                                if (i == 0) {
                                                    sb.append(settingClean3.getString(R.string.filter_guide_1));
                                                    sb.append("\n");
                                                    sb.append(settingClean3.getString(R.string.filter_guide_2));
                                                    sb.append("\n");
                                                    sb.append(settingClean3.getString(R.string.filter_guide_3));
                                                } else if (i == 1) {
                                                    sb.append(settingClean3.getString(R.string.check_ele_info_1));
                                                    sb.append("\n");
                                                    sb.append(settingClean3.getString(R.string.show_thumb_info));
                                                } else {
                                                    sb.append(settingClean3.getString(R.string.over_block_guide_1));
                                                    sb.append("\n");
                                                    sb.append(settingClean3.getString(R.string.over_block_guide_2));
                                                    sb.append("\n");
                                                    sb.append(settingClean3.getString(R.string.over_block_guide_3));
                                                }
                                                String string = settingClean3.getString(R.string.block_area);
                                                StringBuilder sb2 = new StringBuilder();
                                                Locale locale = Locale.US;
                                                sb2.append(String.format(locale, settingClean3.getString(R.string.area_recom_1), string));
                                                sb2.append("\n");
                                                sb2.append(String.format(locale, settingClean3.getString(R.string.area_recom_2), string));
                                                DialogConfirm dialogConfirm = new DialogConfirm(settingClean3, sb.toString(), sb2.toString(), new DialogConfirm.DialogConfBtnListener() { // from class: com.mycompany.app.setting.SettingClean.8
                                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                    public final void a(boolean z3) {
                                                        int[] iArr4 = SettingClean.v2;
                                                        SettingClean.this.R0();
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                    public final void b() {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                                    public final void onCancel() {
                                                        int[] iArr4 = SettingClean.v2;
                                                        SettingClean.this.R0();
                                                    }
                                                });
                                                settingClean3.b2 = dialogConfirm;
                                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingClean.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr4 = SettingClean.v2;
                                                        SettingClean.this.R0();
                                                    }
                                                });
                                                return true;
                                            }
                                        }
                                        return true;
                                    }
                                });
                                settingClean2.a2 = myPopupMenu2;
                                settingClean2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    if (PrefAlbum.p && (myButtonImage = settingClean.J1) != null) {
                        myButtonImage.setNoti(true);
                    }
                    Handler handler2 = settingClean.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingClean.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingClean.v2;
                            final SettingClean settingClean2 = SettingClean.this;
                            if (settingClean2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingClean2.D0(), false, settingClean2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingClean.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                    boolean z3;
                                    boolean z4;
                                    boolean z5;
                                    boolean z6;
                                    int[] iArr3 = SettingClean.v2;
                                    final SettingClean settingClean3 = SettingClean.this;
                                    switch (i) {
                                        case 1:
                                            PrefWeb.o = z;
                                            PrefSet.d(14, settingClean3.f1, "mAdsBlock", z);
                                            SettingListAdapter settingListAdapter2 = settingClean3.N1;
                                            if (settingListAdapter2 != null) {
                                                boolean z7 = !PrefWeb.o;
                                                settingListAdapter2.D(new SettingListAdapter.SettingItem(settingClean3.h2, settingClean3.i2, PrefTts.t, z7, z7));
                                                return;
                                            }
                                            return;
                                        case 2:
                                            PrefTts.t = z;
                                            PrefSet.d(12, settingClean3.f1, "mCheckEle3", z);
                                            return;
                                        case 3:
                                            settingClean3.T0(25);
                                            return;
                                        case 4:
                                            settingClean3.T0(19);
                                            return;
                                        case 5:
                                        case 7:
                                        case 10:
                                        case 13:
                                        case 15:
                                        case 18:
                                        default:
                                            return;
                                        case 6:
                                            PrefWeb.p = z;
                                            PrefSet.d(14, settingClean3.f1, "mAreaBlock", z);
                                            return;
                                        case 8:
                                            MyPopupMenu myPopupMenu = settingClean3.e2;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingClean3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingClean3.e2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    for (int i3 = 0; i3 < 3; i3++) {
                                                        int i4 = SettingClean.x2[i3];
                                                        int i5 = SettingClean.v2[i4];
                                                        if (PrefTts.u == i4) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingClean3, settingClean3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingClean.13
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingClean.v2;
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            MyPopupMenu myPopupMenu3 = settingClean4.e2;
                                                            if (myPopupMenu3 != null) {
                                                                settingClean4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingClean4.e2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7 = SettingClean.x2[i6 % 3];
                                                            if (PrefTts.u != i7) {
                                                                PrefTts.u = i7;
                                                                SettingClean settingClean4 = SettingClean.this;
                                                                PrefSet.f(settingClean4.f1, 12, i7, "mCheckOver2");
                                                                SettingListAdapter settingListAdapter3 = settingClean4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.F(8, SettingClean.v2[i7]);
                                                                    settingClean4.N1.C(8, SettingClean.w2[i7]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingClean3.e2 = myPopupMenu2;
                                                    settingClean3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 9:
                                            settingClean3.T0(20);
                                            return;
                                        case 11:
                                            MyPopupMenu myPopupMenu3 = settingClean3.f2;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingClean3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingClean3.f2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    for (int i6 = 0; i6 < 4; i6++) {
                                                        int i7 = SettingClean.A2[i6];
                                                        int i8 = SettingClean.y2[i7];
                                                        if (PrefWeb.q == i7) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i6, i8, z4));
                                                    }
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingClean3, settingClean3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingClean.14
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingClean.v2;
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            MyPopupMenu myPopupMenu5 = settingClean4.f2;
                                                            if (myPopupMenu5 != null) {
                                                                settingClean4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingClean4.f2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i9) {
                                                            int i10 = SettingClean.A2[i9 % 4];
                                                            if (PrefWeb.q != i10) {
                                                                PrefWeb.q = i10;
                                                                SettingClean settingClean4 = SettingClean.this;
                                                                PrefSet.f(settingClean4.f1, 14, i10, "mPopBlock2");
                                                                SettingListAdapter settingListAdapter3 = settingClean4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.F(11, SettingClean.y2[i10]);
                                                                    settingClean4.N1.C(11, SettingClean.z2[i10]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingClean3.f2 = myPopupMenu4;
                                                    settingClean3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 12:
                                            settingClean3.T0(21);
                                            return;
                                        case 14:
                                            MyPopupMenu myPopupMenu5 = settingClean3.g2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingClean3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingClean3.g2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    for (int i9 = 0; i9 < 3; i9++) {
                                                        int i10 = SettingClean.C2[i9];
                                                        int i11 = SettingClean.B2[i10];
                                                        if (PrefPdf.w == i10) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i9, i11, z5));
                                                    }
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingClean3, settingClean3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingClean.15
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingClean.v2;
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            MyPopupMenu myPopupMenu7 = settingClean4.g2;
                                                            if (myPopupMenu7 != null) {
                                                                settingClean4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingClean4.g2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i12) {
                                                            int i13 = SettingClean.C2[i12 % 3];
                                                            if (PrefPdf.w != i13) {
                                                                PrefPdf.w = i13;
                                                                SettingClean settingClean4 = SettingClean.this;
                                                                PrefSet.f(settingClean4.f1, 7, i13, "mAppBlock2");
                                                                SettingListAdapter settingListAdapter3 = settingClean4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.F(14, SettingClean.B2[i13]);
                                                                    SettingListAdapter settingListAdapter4 = settingClean4.N1;
                                                                    String Q0 = settingClean4.Q0();
                                                                    int v = settingListAdapter4.v(14);
                                                                    SettingListAdapter.SettingItem w = settingListAdapter4.w(v);
                                                                    if (w != null && w.b == 14) {
                                                                        w.i = Q0;
                                                                        w.h = 0;
                                                                        SettingListAdapter.ViewHolder x = settingListAdapter4.x(v);
                                                                        if (x != null && x.y != null) {
                                                                            if (!TextUtils.isEmpty(w.i)) {
                                                                                x.y.setText(w.i);
                                                                                x.y.setVisibility(0);
                                                                                return true;
                                                                            }
                                                                            x.y.setVisibility(8);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingClean3.g2 = myPopupMenu6;
                                                    settingClean3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 16:
                                            int i12 = PrefSecret.B;
                                            if (i12 == 0) {
                                                if (!settingClean3.S0()) {
                                                    DialogSetMsg dialogSetMsg = settingClean3.u2;
                                                    if (dialogSetMsg != null) {
                                                        dialogSetMsg.dismiss();
                                                        settingClean3.u2 = null;
                                                    }
                                                    DialogSetMsg dialogSetMsg2 = new DialogSetMsg(settingClean3, R.string.password_lock_1, 0, (DialogSetFull.DialogApplyListener) null);
                                                    settingClean3.u2 = dialogSetMsg2;
                                                    dialogSetMsg2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingClean.17
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int[] iArr4 = SettingClean.v2;
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            DialogSetMsg dialogSetMsg3 = settingClean4.u2;
                                                            if (dialogSetMsg3 != null) {
                                                                dialogSetMsg3.dismiss();
                                                                settingClean4.u2 = null;
                                                            }
                                                            settingClean4.N0(17);
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            Intent i22 = MainUtil.i2(settingClean3.f1, i12);
                                            i22.putExtra("EXTRA_PASS", 2);
                                            i22.putExtra("EXTRA_TYPE", 2);
                                            settingClean3.o0(i22, 2);
                                            return;
                                        case 17:
                                            MyPopupMenu myPopupMenu7 = settingClean3.s2;
                                            if (myPopupMenu7 == null) {
                                                if (myPopupMenu7 != null) {
                                                    settingClean3.Z0 = null;
                                                    myPopupMenu7.a();
                                                    settingClean3.s2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    settingClean3.t2 = false;
                                                    ArrayList arrayList4 = new ArrayList();
                                                    final int length = MainConst.Y.length;
                                                    for (int i13 = 0; i13 < length; i13++) {
                                                        int i14 = MainConst.Y[i13];
                                                        int i15 = MainConst.Z[i14];
                                                        if (PrefSecret.B == i14) {
                                                            z6 = true;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        arrayList4.add(new MyPopupAdapter.PopMenuItem(i13, i15, z6));
                                                    }
                                                    MyPopupMenu myPopupMenu8 = new MyPopupMenu(settingClean3, settingClean3.E1, viewHolder.D, arrayList4, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingClean.16
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingClean.v2;
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            MyPopupMenu myPopupMenu9 = settingClean4.s2;
                                                            if (myPopupMenu9 != null) {
                                                                settingClean4.Z0 = null;
                                                                myPopupMenu9.a();
                                                                settingClean4.s2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i16) {
                                                            int i17 = MainConst.Y[i16 % length];
                                                            SettingClean settingClean4 = SettingClean.this;
                                                            if (i17 == 4) {
                                                                if (PrefSecret.B != i17 && MainUtil.e(settingClean4.f1, true)) {
                                                                    PrefSecret.B = i17;
                                                                    PrefSecret.C = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefSecret.t(settingClean4.f1);
                                                                    SettingListAdapter settingListAdapter3 = settingClean4.N1;
                                                                    if (settingListAdapter3 != null) {
                                                                        settingListAdapter3.F(17, MainConst.Z[i17]);
                                                                        return true;
                                                                    }
                                                                }
                                                            } else if (i17 == 0) {
                                                                int i18 = PrefSecret.B;
                                                                if (i18 != i17) {
                                                                    settingClean4.t2 = true;
                                                                    Intent i23 = MainUtil.i2(settingClean4.f1, i18);
                                                                    i23.putExtra("EXTRA_PASS", 2);
                                                                    i23.putExtra("EXTRA_TYPE", 2);
                                                                    settingClean4.o0(i23, 3);
                                                                    return true;
                                                                }
                                                            } else {
                                                                Intent i24 = MainUtil.i2(settingClean4.f1, i17);
                                                                i24.putExtra("EXTRA_PASS", 2);
                                                                i24.putExtra("EXTRA_TYPE", 1);
                                                                settingClean4.o0(i24, 3);
                                                                return true;
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingClean3.s2 = myPopupMenu8;
                                                    settingClean3.Z0 = myPopupMenu8;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 19:
                                            settingClean3.T0(23);
                                            return;
                                    }
                                }
                            });
                            settingClean2.N1 = settingListAdapter;
                            settingClean2.L1.setAdapter(settingListAdapter);
                            settingClean2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingClean.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingClean settingClean3 = SettingClean.this;
                                    settingClean3.l2 = DbBookFilter.d(settingClean3.f1);
                                    settingClean3.m2 = settingClean3.l2;
                                }
                            });
                            settingClean2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.Z1 = null;
        this.h2 = null;
        this.i2 = null;
        this.j2 = null;
        this.r2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            R0();
            DialogGuideArea dialogGuideArea = this.c2;
            if (dialogGuideArea != null) {
                dialogGuideArea.dismiss();
                this.c2 = null;
            }
            DialogListBook dialogListBook = this.d2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.d2 = null;
            }
            DialogSetMsg dialogSetMsg = this.u2;
            if (dialogSetMsg != null) {
                dialogSetMsg.dismiss();
                this.u2 = null;
            }
            MyPopupMenu myPopupMenu = this.a2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.a2 = null;
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
            }
            MyPopupMenu myPopupMenu4 = this.g2;
            if (myPopupMenu4 != null) {
                this.Z0 = null;
                myPopupMenu4.a();
                this.g2 = null;
            }
            MyPopupMenu myPopupMenu5 = this.s2;
            if (myPopupMenu5 != null) {
                this.Z0 = null;
                myPopupMenu5.a();
                this.s2 = null;
                return;
            }
            return;
        }
        DialogListBook dialogListBook2 = this.d2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        DialogListBook dialogListBook;
        super.onResume();
        if (!this.X1 && (dialogListBook = this.d2) != null) {
            dialogListBook.s(true);
        }
        this.X1 = false;
    }
}
