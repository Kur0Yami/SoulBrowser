package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSetLock;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingSecure extends SettingActivity {
    public static final /* synthetic */ int d2 = 0;
    public MyPopupMenu X1;
    public MyPopupMenu Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogWebView b2;
    public DialogSetLock c2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        if (PrefSecret.F != 0) {
            PrefSecret.F = 0;
            PrefSet.j(context, 9, "mSecureDnt");
            z = true;
        } else {
            z = false;
        }
        if (PrefSecret.G != 0) {
            PrefSecret.G = 0;
            PrefSet.j(context, 9, "mSecureGpc");
            z = true;
        }
        if (PrefSecret.H != 2) {
            PrefSecret.H = 2;
            PrefSet.j(context, 9, "mSecureKey");
            z = true;
        }
        if (PrefSecret.q != 0) {
            PrefSecret.q = 0;
            PrefSet.j(context, 9, "mShotType");
            z = true;
        }
        if (PrefSecret.r) {
            PrefSecret.r = false;
            PrefSet.j(context, 9, "mShotSecret");
            return true;
        }
        return z;
    }

    public static String P0(Context context) {
        if (context == null) {
            return null;
        }
        if (!PrefSecret.u) {
            return context.getString(R.string.lock_reset_info);
        }
        StringBuilder sb = new StringBuilder();
        a.x(context, R.string.lock_reset_info, sb, "\n");
        return a.v(R.string.lock_secret_guide, context, sb);
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        boolean z;
        boolean z2;
        if (PrefSecret.s == 0) {
            z = true;
        } else {
            z = false;
        }
        if (PrefSecret.q == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        String str = getString(R.string.keyboard_secure_info_1) + "\n" + getString(R.string.keyboard_secure_info_2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        int[] iArr = MainConst.V;
        arrayList.add(new SettingListAdapter.SettingItem(1, "Do Not Track", iArr[PrefSecret.F], 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, "Global Privacy Control", iArr[PrefSecret.G], 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.keyboard_secure, iArr[PrefSecret.H], str, 3));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.app_lock, MainConst.Z[PrefSecret.s], 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.only_secret, 0, PrefSecret.u, z, z, 0));
        arrayList.add(new SettingListAdapter.SettingItem(getString(R.string.lock_reset_target), 8, 2, Q0(), z, P0(this.f1)));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.android_shot, MainConst.T[PrefSecret.q], 0, 1));
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(11, R.string.only_secret, 0, PrefSecret.r, z2, z2, 2), 12, false);
        return arrayList;
    }

    public final String Q0() {
        StringBuilder sb;
        int i = PrefSecret.v;
        if (i == 0) {
            return null;
        }
        if (i == 126) {
            return getString(R.string.quick_access) + ", " + getString(R.string.bookmark) + ", " + getString(R.string.down_list) + ", " + getString(R.string.history) + ", " + getString(R.string.tab_item);
        }
        if ((i & 2) == 2) {
            sb = new StringBuilder();
            sb.append(getString(R.string.quick_access));
        } else {
            sb = null;
        }
        if ((PrefSecret.v & 4) == 4) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.bookmark));
        }
        if ((PrefSecret.v & 8) == 8) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.down_list));
        }
        if ((PrefSecret.v & 16) == 16) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.recent_search));
        }
        if ((PrefSecret.v & 32) == 32) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.history));
        }
        if ((PrefSecret.v & 64) == 64) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.tab_item));
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    public final void R0(SettingListAdapter.ViewHolder viewHolder, final int i) {
        int i2;
        boolean z;
        MyPopupMenu myPopupMenu = this.Y1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Y1 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 1) {
                    i2 = PrefSecret.F;
                } else if (i == 2) {
                    i2 = PrefSecret.G;
                } else {
                    i2 = PrefSecret.H;
                }
                ArrayList arrayList = new ArrayList();
                final int length = MainConst.U.length;
                for (int i3 = 0; i3 < length; i3++) {
                    int i4 = MainConst.U[i3];
                    int i5 = MainConst.V[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSecure.7
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i6 = SettingSecure.d2;
                        SettingSecure settingSecure = SettingSecure.this;
                        MyPopupMenu myPopupMenu3 = settingSecure.Y1;
                        if (myPopupMenu3 != null) {
                            settingSecure.Z0 = null;
                            myPopupMenu3.a();
                            settingSecure.Y1 = null;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean b(android.view.View r6, int r7) {
                        /*
                            r5 = this;
                            int[] r6 = com.mycompany.app.main.MainConst.U
                            int r0 = r2
                            int r7 = r7 % r0
                            r6 = r6[r7]
                            r7 = 9
                            com.mycompany.app.setting.SettingSecure r0 = com.mycompany.app.setting.SettingSecure.this
                            int r1 = r3
                            r2 = 1
                            if (r1 != r2) goto L1f
                            int r3 = com.mycompany.app.pref.PrefSecret.F
                            if (r3 != r6) goto L15
                            goto L4a
                        L15:
                            com.mycompany.app.pref.PrefSecret.F = r6
                            android.content.Context r3 = r0.f1
                            java.lang.String r4 = "mSecureDnt"
                            com.mycompany.app.pref.PrefSet.f(r3, r7, r6, r4)
                            goto L3f
                        L1f:
                            r3 = 2
                            if (r1 != r3) goto L31
                            int r3 = com.mycompany.app.pref.PrefSecret.G
                            if (r3 != r6) goto L27
                            goto L4a
                        L27:
                            com.mycompany.app.pref.PrefSecret.G = r6
                            android.content.Context r3 = r0.f1
                            java.lang.String r4 = "mSecureGpc"
                            com.mycompany.app.pref.PrefSet.f(r3, r7, r6, r4)
                            goto L3f
                        L31:
                            int r3 = com.mycompany.app.pref.PrefSecret.H
                            if (r3 != r6) goto L36
                            goto L4a
                        L36:
                            com.mycompany.app.pref.PrefSecret.H = r6
                            android.content.Context r3 = r0.f1
                            java.lang.String r4 = "mSecureKey"
                            com.mycompany.app.pref.PrefSet.f(r3, r7, r6, r4)
                        L3f:
                            com.mycompany.app.setting.SettingListAdapter r7 = r0.N1
                            if (r7 == 0) goto L4a
                            int[] r0 = com.mycompany.app.main.MainConst.V
                            r6 = r0[r6]
                            r7.F(r1, r6)
                        L4a:
                            return r2
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingSecure.AnonymousClass7.b(android.view.View, int):boolean");
                    }
                });
                this.Y1 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        SettingListAdapter settingListAdapter;
        boolean z;
        if (i == 3 && i2 == -1 && (settingListAdapter = this.N1) != null) {
            if (PrefSecret.s == 0) {
                z = true;
            } else {
                z = false;
            }
            boolean z2 = z;
            settingListAdapter.D(new SettingListAdapter.SettingItem(6, R.string.app_lock, MainConst.Z[PrefSecret.s], 0, 1));
            this.N1.D(new SettingListAdapter.SettingItem(7, R.string.only_secret, 0, PrefSecret.u, z2, z2, 0));
            this.N1.D(new SettingListAdapter.SettingItem(getString(R.string.lock_reset_target), 8, 2, Q0(), z2, P0(this.f1)));
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o0(null, 3);
        F0(R.string.security, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSecure.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingSecure.d2;
                final SettingSecure settingSecure = SettingSecure.this;
                if (settingSecure.O0 != null) {
                    settingSecure.L0(16, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingSecure.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingSecure settingSecure2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingSecure2 = SettingSecure.this).N1) != null) {
                                settingListAdapter.E(settingSecure2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingSecure.O0(SettingSecure.this.f1);
                        }
                    });
                    settingSecure.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSecure.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingSecure settingSecure2 = SettingSecure.this;
                            MyPopupMenu myPopupMenu = settingSecure2.X1;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingSecure2.Z0 = null;
                                    myPopupMenu.a();
                                    settingSecure2.X1 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, "Do Not Track"));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, "Global Privacy Control"));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingSecure2, settingSecure2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSecure.6
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i2 = SettingSecure.d2;
                                        SettingSecure settingSecure3 = SettingSecure.this;
                                        MyPopupMenu myPopupMenu3 = settingSecure3.X1;
                                        if (myPopupMenu3 != null) {
                                            settingSecure3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingSecure3.X1 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i2) {
                                        String str;
                                        if (i2 == 0) {
                                            str = "https://www.google.com/search?q=Do Not Track (DNT)";
                                        } else {
                                            str = "https://www.google.com/search?q=Global Privacy Control (GPC)";
                                        }
                                        String str2 = str;
                                        int i3 = SettingSecure.d2;
                                        final SettingSecure settingSecure3 = SettingSecure.this;
                                        DialogWebView dialogWebView = settingSecure3.b2;
                                        if (dialogWebView == null && settingSecure3.c2 == null) {
                                            if (dialogWebView != null) {
                                                dialogWebView.dismiss();
                                                settingSecure3.b2 = null;
                                            }
                                            DialogWebView dialogWebView2 = new DialogWebView(settingSecure3, str2, str2, false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingSecure.10
                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void a(int i4, String str3, String str4) {
                                                    SettingSecure settingSecure4 = SettingSecure.this;
                                                    Intent o4 = MainUtil.o4(settingSecure4.f1);
                                                    o4.putExtra("EXTRA_PATH", str3);
                                                    o4.addFlags(67108864);
                                                    settingSecure4.startActivity(o4);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void c(String str3, String str4, String str5, long j) {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void d(WebNestView webNestView, String str3) {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void e() {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void f() {
                                                }
                                            });
                                            settingSecure3.b2 = dialogWebView2;
                                            dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSecure.11
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i4 = SettingSecure.d2;
                                                    SettingSecure settingSecure4 = SettingSecure.this;
                                                    DialogWebView dialogWebView3 = settingSecure4.b2;
                                                    if (dialogWebView3 != null) {
                                                        dialogWebView3.dismiss();
                                                        settingSecure4.b2 = null;
                                                    }
                                                }
                                            });
                                            return true;
                                        }
                                        return true;
                                    }
                                });
                                settingSecure2.X1 = myPopupMenu2;
                                settingSecure2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    Handler handler2 = settingSecure.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSecure.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingSecure.d2;
                            final SettingSecure settingSecure2 = SettingSecure.this;
                            if (settingSecure2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingSecure2.D0(), false, settingSecure2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingSecure.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    boolean z2;
                                    boolean z3;
                                    DialogSetLock dialogSetLock;
                                    boolean z4;
                                    int i5 = SettingSecure.d2;
                                    final SettingSecure settingSecure3 = SettingSecure.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 4) {
                                                if (i3 != 6) {
                                                    if (i3 != 7) {
                                                        if (i3 != 8) {
                                                            if (i3 != 10) {
                                                                if (i3 == 11) {
                                                                    PrefSecret.r = z;
                                                                    PrefSet.d(9, settingSecure3.f1, "mShotSecret", z);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            MyPopupMenu myPopupMenu = settingSecure3.Z1;
                                                            if (myPopupMenu == null) {
                                                                if (myPopupMenu != null) {
                                                                    settingSecure3.Z0 = null;
                                                                    myPopupMenu.a();
                                                                    settingSecure3.Z1 = null;
                                                                }
                                                                if (viewHolder != null && viewHolder.D != null) {
                                                                    ArrayList arrayList = new ArrayList();
                                                                    final int length = MainConst.S.length;
                                                                    for (int i6 = 0; i6 < length; i6++) {
                                                                        int i7 = MainConst.S[i6];
                                                                        int i8 = MainConst.T[i7];
                                                                        if (PrefSecret.q == i7) {
                                                                            z4 = true;
                                                                        } else {
                                                                            z4 = false;
                                                                        }
                                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i6, i8, z4));
                                                                    }
                                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingSecure3, settingSecure3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSecure.8
                                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                        public final void a() {
                                                                            int i9 = SettingSecure.d2;
                                                                            SettingSecure settingSecure4 = SettingSecure.this;
                                                                            MyPopupMenu myPopupMenu3 = settingSecure4.Z1;
                                                                            if (myPopupMenu3 != null) {
                                                                                settingSecure4.Z0 = null;
                                                                                myPopupMenu3.a();
                                                                                settingSecure4.Z1 = null;
                                                                            }
                                                                        }

                                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                        public final boolean b(View view, int i9) {
                                                                            boolean z5;
                                                                            int i10 = MainConst.S[i9 % length];
                                                                            if (PrefSecret.q != i10) {
                                                                                PrefSecret.q = i10;
                                                                                SettingSecure settingSecure4 = SettingSecure.this;
                                                                                PrefSet.f(settingSecure4.f1, 9, i10, "mShotType");
                                                                                SettingListAdapter settingListAdapter2 = settingSecure4.N1;
                                                                                if (settingListAdapter2 != null) {
                                                                                    if (PrefSecret.q == 0) {
                                                                                        z5 = true;
                                                                                    } else {
                                                                                        z5 = false;
                                                                                    }
                                                                                    settingListAdapter2.F(10, MainConst.T[i10]);
                                                                                    settingSecure4.N1.D(new SettingListAdapter.SettingItem(11, R.string.only_secret, 0, PrefSecret.r, z5, z5, 2));
                                                                                }
                                                                            }
                                                                            return true;
                                                                        }
                                                                    });
                                                                    settingSecure3.Z1 = myPopupMenu2;
                                                                    settingSecure3.Z0 = myPopupMenu2;
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        if (settingSecure3.b2 == null && (dialogSetLock = settingSecure3.c2) == null) {
                                                            if (dialogSetLock != null) {
                                                                dialogSetLock.dismiss();
                                                                settingSecure3.c2 = null;
                                                            }
                                                            final int i9 = PrefSecret.v;
                                                            DialogSetLock dialogSetLock2 = new DialogSetLock(settingSecure3);
                                                            settingSecure3.c2 = dialogSetLock2;
                                                            dialogSetLock2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSecure.12
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    SettingListAdapter settingListAdapter2;
                                                                    int i10 = i9;
                                                                    int i11 = PrefSecret.v;
                                                                    SettingSecure settingSecure4 = SettingSecure.this;
                                                                    if (i10 != i11 && (settingListAdapter2 = settingSecure4.N1) != null) {
                                                                        int i12 = SettingSecure.d2;
                                                                        settingListAdapter2.G(8, settingSecure4.Q0());
                                                                    }
                                                                    int i13 = SettingSecure.d2;
                                                                    DialogSetLock dialogSetLock3 = settingSecure4.c2;
                                                                    if (dialogSetLock3 != null) {
                                                                        dialogSetLock3.dismiss();
                                                                        settingSecure4.c2 = null;
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    if (PrefSecret.u != z) {
                                                        PrefSecret.u = z;
                                                        PrefSet.d(9, settingSecure3.f1, "mLockSecret2", z);
                                                        SettingListAdapter settingListAdapter2 = settingSecure3.N1;
                                                        if (settingListAdapter2 != null) {
                                                            if (PrefSecret.s == 0) {
                                                                z3 = true;
                                                            } else {
                                                                z3 = false;
                                                            }
                                                            settingListAdapter2.D(new SettingListAdapter.SettingItem(settingSecure3.getString(R.string.lock_reset_target), 8, 2, settingSecure3.Q0(), z3, SettingSecure.P0(settingSecure3.f1)));
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                MyPopupMenu myPopupMenu3 = settingSecure3.a2;
                                                if (myPopupMenu3 == null) {
                                                    if (myPopupMenu3 != null) {
                                                        settingSecure3.Z0 = null;
                                                        myPopupMenu3.a();
                                                        settingSecure3.a2 = null;
                                                    }
                                                    if (viewHolder != null && viewHolder.D != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        final int length2 = MainConst.Y.length;
                                                        for (int i10 = 0; i10 < length2; i10++) {
                                                            int i11 = MainConst.Y[i10];
                                                            int i12 = MainConst.Z[i11];
                                                            if (PrefSecret.s == i11) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i10, i12, z2));
                                                        }
                                                        MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingSecure3, settingSecure3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSecure.9
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i13 = SettingSecure.d2;
                                                                SettingSecure settingSecure4 = SettingSecure.this;
                                                                MyPopupMenu myPopupMenu5 = settingSecure4.a2;
                                                                if (myPopupMenu5 != null) {
                                                                    settingSecure4.Z0 = null;
                                                                    myPopupMenu5.a();
                                                                    settingSecure4.a2 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view, int i13) {
                                                                boolean z5;
                                                                int i14 = MainConst.Y[i13 % length2];
                                                                SettingSecure settingSecure4 = SettingSecure.this;
                                                                if (i14 != 4 && i14 != 0) {
                                                                    Intent i22 = MainUtil.i2(settingSecure4.f1, i14);
                                                                    i22.putExtra("EXTRA_TYPE", 1);
                                                                    settingSecure4.o0(i22, 3);
                                                                    return true;
                                                                }
                                                                if (PrefSecret.s != i14 && (i14 != 4 || MainUtil.e(settingSecure4.f1, true))) {
                                                                    PrefSecret.s = i14;
                                                                    PrefSecret.t = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefSecret.u(settingSecure4.f1);
                                                                    SettingListAdapter settingListAdapter3 = settingSecure4.N1;
                                                                    if (settingListAdapter3 != null) {
                                                                        if (PrefSecret.s == 0) {
                                                                            z5 = true;
                                                                        } else {
                                                                            z5 = false;
                                                                        }
                                                                        settingListAdapter3.F(6, MainConst.Z[i14]);
                                                                        settingSecure4.N1.D(new SettingListAdapter.SettingItem(7, R.string.only_secret, 0, PrefSecret.u, z5, z5, 0));
                                                                        SettingListAdapter settingListAdapter4 = settingSecure4.N1;
                                                                        String string = settingSecure4.getString(R.string.lock_reset_target);
                                                                        int i15 = SettingSecure.d2;
                                                                        settingListAdapter4.D(new SettingListAdapter.SettingItem(string, 8, 2, settingSecure4.Q0(), z5, SettingSecure.P0(settingSecure4.f1)));
                                                                    }
                                                                }
                                                                return true;
                                                            }
                                                        });
                                                        settingSecure3.a2 = myPopupMenu4;
                                                        settingSecure3.Z0 = myPopupMenu4;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            settingSecure3.R0(viewHolder, i3);
                                            return;
                                        }
                                        settingSecure3.R0(viewHolder, i3);
                                        return;
                                    }
                                    settingSecure3.R0(viewHolder, i3);
                                }
                            });
                            settingSecure2.N1 = settingListAdapter;
                            settingSecure2.L1.setAdapter(settingListAdapter);
                            settingSecure2.M0();
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
            MyPopupMenu myPopupMenu2 = this.Y1;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.Y1 = null;
            }
            MyPopupMenu myPopupMenu3 = this.Z1;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu4 = this.a2;
            if (myPopupMenu4 != null) {
                this.Z0 = null;
                myPopupMenu4.a();
                this.a2 = null;
            }
            DialogWebView dialogWebView = this.b2;
            if (dialogWebView != null) {
                dialogWebView.dismiss();
                this.b2 = null;
            }
            DialogSetLock dialogSetLock = this.c2;
            if (dialogSetLock != null) {
                dialogSetLock.dismiss();
                this.c2 = null;
                return;
            }
            return;
        }
        DialogWebView dialogWebView2 = this.b2;
        if (dialogWebView2 != null) {
            dialogWebView2.V();
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        DialogWebView dialogWebView = this.b2;
        if (dialogWebView != null) {
            dialogWebView.X();
        }
    }
}
