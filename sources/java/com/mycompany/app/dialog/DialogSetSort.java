package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetSort extends MyDialogBottom {
    public static final int[] A0;
    public static final int[] B0;
    public static final int[] C0;
    public static final int[] o0;
    public static final int[] p0;
    public static final int[] q0;
    public static final int[] r0;
    public static final int[] s0;
    public static final int[] t0;
    public static final int[] u0;
    public static final int[] v0;
    public static final int[] w0;
    public static final int[] x0;
    public static final int[] y0;
    public static final int[] z0;
    public MainActivity a0;
    public Context b0;
    public final int c0;
    public DialogSetFull.DialogApplyListener d0;
    public int e0;
    public int f0;
    public boolean g0;
    public MyDialogLinear h0;
    public MyRecyclerView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public MyPopupMenu l0;
    public MyPopupMenu m0;
    public MyPopupMenu n0;

    static {
        int i = R.string.not_used;
        int i2 = R.string.folder_dir;
        int i3 = R.string.file;
        int i4 = R.string.sort_data;
        int i5 = R.string.sort_ext;
        int i6 = R.string.sort_time;
        o0 = new int[]{i, i2, i3, i4, i5, i6, R.string.domain_name, R.string.permission};
        p0 = new int[]{1, 0};
        q0 = new int[]{1, 4, 0};
        r0 = new int[]{2, 0};
        s0 = new int[]{1, 3, 0};
        t0 = new int[]{6, 0};
        u0 = new int[]{3, 0};
        v0 = new int[]{7, 0};
        w0 = new int[]{5, 6, 0};
        x0 = new int[]{R.string.sort_name, i4, i5, i6, R.string.sort_size};
        y0 = new int[]{0, 1, 2, 3, 4};
        z0 = new int[]{0, 3, 4};
        A0 = new int[]{0, 2, 3, 4};
        B0 = new int[]{0, 1, 3};
        C0 = new int[]{0, 3};
    }

    public DialogSetSort(MainActivity mainActivity, int i, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.d0 = dialogApplyListener;
        this.c0 = i;
        this.e0 = PrefUtil.d(i);
        this.f0 = PrefUtil.e(i);
        this.g0 = PrefUtil.f(i);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSort.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetSort dialogSetSort = DialogSetSort.this;
                Context context = dialogSetSort.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetSort.h0 = q;
                    dialogSetSort.i0 = u;
                    dialogSetSort.j0 = myLineText;
                    Handler handler2 = dialogSetSort.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSort.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            final DialogSetSort dialogSetSort2 = DialogSetSort.this;
                            if (dialogSetSort2.h0 != null && dialogSetSort2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetSort2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetSort2.j0.setTextColor(-328966);
                                } else {
                                    dialogSetSort2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetSort2.j0.setTextColor(-14784824);
                                }
                                int i3 = dialogSetSort2.f0;
                                int[] iArr = DialogSetSort.x0;
                                dialogSetSort2.f0 = i3 % 5;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.sort_by, iArr[dialogSetSort2.f0], 0, 0));
                                int i4 = R.string.order_by;
                                if (dialogSetSort2.g0) {
                                    i2 = R.string.order_descend;
                                } else {
                                    i2 = R.string.order_ascend;
                                }
                                arrayList.add(new SettingListAdapter.SettingItem(1, i4, i2, 0, 0));
                                int i5 = dialogSetSort2.c0;
                                if (i5 != 0 && i5 != 13 && i5 != 25 && i5 != 27 && i5 != 43) {
                                    int i6 = dialogSetSort2.e0;
                                    int[] iArr2 = DialogSetSort.o0;
                                    int i7 = i6 % 8;
                                    dialogSetSort2.e0 = i7;
                                    arrayList.add(new SettingListAdapter.SettingItem(2, R.string.group_by, iArr2[i7], 0, 0));
                                }
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetSort2.k0 = new SettingListAdapter(arrayList, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetSort.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i8, boolean z, int i9) {
                                        final int[] iArr3;
                                        boolean z2;
                                        MyPopupMenu myPopupMenu;
                                        final int[] iArr4;
                                        boolean z3;
                                        final DialogSetSort dialogSetSort3 = DialogSetSort.this;
                                        int i10 = dialogSetSort3.c0;
                                        if (i8 != 0) {
                                            if (i8 != 1) {
                                                if (i8 == 2 && (myPopupMenu = dialogSetSort3.n0) == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogSetSort3.Y = null;
                                                        myPopupMenu.a();
                                                        dialogSetSort3.n0 = null;
                                                    }
                                                    if (viewHolder != null && viewHolder.D != null) {
                                                        if (i10 != 1 && i10 != 2) {
                                                            if (i10 == 3) {
                                                                iArr4 = DialogSetSort.q0;
                                                            } else if (i10 != 14 && i10 != 15 && i10 != 16) {
                                                                if (i10 == 32) {
                                                                    iArr4 = DialogSetSort.s0;
                                                                } else if (i10 != 19 && i10 != 20 && i10 != 21 && i10 != 22 && i10 != 23 && i10 != 26 && i10 != 28 && i10 != 29 && i10 != 30) {
                                                                    if (i10 == 24) {
                                                                        iArr4 = DialogSetSort.u0;
                                                                    } else if (i10 == 31) {
                                                                        iArr4 = DialogSetSort.v0;
                                                                    } else {
                                                                        iArr4 = DialogSetSort.w0;
                                                                    }
                                                                } else {
                                                                    iArr4 = DialogSetSort.t0;
                                                                }
                                                            } else {
                                                                iArr4 = DialogSetSort.r0;
                                                            }
                                                        } else {
                                                            iArr4 = DialogSetSort.p0;
                                                        }
                                                        ArrayList arrayList2 = new ArrayList();
                                                        final int length = iArr4.length;
                                                        for (int i11 = 0; i11 < length; i11++) {
                                                            int i12 = iArr4[i11];
                                                            int i13 = DialogSetSort.o0[i12];
                                                            if (i12 == dialogSetSort3.e0) {
                                                                z3 = true;
                                                            } else {
                                                                z3 = false;
                                                            }
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i11, i13, z3));
                                                        }
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetSort3.a0, dialogSetSort3.h0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSort.8
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int[] iArr5 = DialogSetSort.o0;
                                                                DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                                MyPopupMenu myPopupMenu3 = dialogSetSort4.n0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogSetSort4.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogSetSort4.n0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view, int i14) {
                                                                int i15 = iArr4[i14 % length];
                                                                DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                                if (dialogSetSort4.e0 != i15) {
                                                                    dialogSetSort4.e0 = i15;
                                                                    SettingListAdapter settingListAdapter = dialogSetSort4.k0;
                                                                    if (settingListAdapter != null) {
                                                                        settingListAdapter.F(2, DialogSetSort.o0[i15]);
                                                                    }
                                                                }
                                                                return true;
                                                            }
                                                        });
                                                        dialogSetSort3.n0 = myPopupMenu2;
                                                        dialogSetSort3.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu3 = dialogSetSort3.m0;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    dialogSetSort3.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogSetSort3.m0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(0, R.string.order_ascend, !dialogSetSort3.g0));
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(1, R.string.order_descend, dialogSetSort3.g0));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(dialogSetSort3.a0, dialogSetSort3.h0, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSort.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = DialogSetSort.o0;
                                                            DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                            MyPopupMenu myPopupMenu5 = dialogSetSort4.m0;
                                                            if (myPopupMenu5 != null) {
                                                                dialogSetSort4.Y = null;
                                                                myPopupMenu5.a();
                                                                dialogSetSort4.m0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i14) {
                                                            boolean z4;
                                                            int i15;
                                                            if (i14 != 0) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                            if (dialogSetSort4.g0 != z4) {
                                                                dialogSetSort4.g0 = z4;
                                                                SettingListAdapter settingListAdapter = dialogSetSort4.k0;
                                                                if (settingListAdapter != null) {
                                                                    if (z4) {
                                                                        i15 = R.string.order_descend;
                                                                    } else {
                                                                        i15 = R.string.order_ascend;
                                                                    }
                                                                    settingListAdapter.F(1, i15);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogSetSort3.m0 = myPopupMenu4;
                                                    dialogSetSort3.Y = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu5 = dialogSetSort3.l0;
                                        if (myPopupMenu5 == null) {
                                            if (myPopupMenu5 != null) {
                                                dialogSetSort3.Y = null;
                                                myPopupMenu5.a();
                                                dialogSetSort3.l0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList4 = new ArrayList();
                                                if (i10 == 0) {
                                                    iArr3 = DialogSetSort.y0;
                                                } else if (i10 != 1 && i10 != 2) {
                                                    if (i10 != 3 && i10 != 13) {
                                                        if (i10 != 25 && i10 != 24) {
                                                            iArr3 = DialogSetSort.C0;
                                                        } else {
                                                            iArr3 = DialogSetSort.B0;
                                                        }
                                                    } else {
                                                        iArr3 = DialogSetSort.A0;
                                                    }
                                                } else {
                                                    iArr3 = DialogSetSort.z0;
                                                }
                                                final int length2 = iArr3.length;
                                                for (int i14 = 0; i14 < length2; i14++) {
                                                    int i15 = iArr3[i14];
                                                    int i16 = DialogSetSort.x0[i15];
                                                    if (i15 == dialogSetSort3.f0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    arrayList4.add(new MyPopupAdapter.PopMenuItem(i14, i16, z2));
                                                }
                                                MyPopupMenu myPopupMenu6 = new MyPopupMenu(dialogSetSort3.a0, dialogSetSort3.h0, viewHolder.D, arrayList4, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSort.6
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int[] iArr5 = DialogSetSort.o0;
                                                        DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                        MyPopupMenu myPopupMenu7 = dialogSetSort4.l0;
                                                        if (myPopupMenu7 != null) {
                                                            dialogSetSort4.Y = null;
                                                            myPopupMenu7.a();
                                                            dialogSetSort4.l0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i17) {
                                                        int i18 = iArr3[i17 % length2];
                                                        DialogSetSort dialogSetSort4 = DialogSetSort.this;
                                                        if (dialogSetSort4.f0 != i18) {
                                                            dialogSetSort4.f0 = i18;
                                                            SettingListAdapter settingListAdapter = dialogSetSort4.k0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.F(0, DialogSetSort.x0[i18]);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetSort3.l0 = myPopupMenu6;
                                                dialogSetSort3.Y = myPopupMenu6;
                                            }
                                        }
                                    }
                                });
                                dialogSetSort2.i0.setLayoutManager(linearLayoutManager);
                                dialogSetSort2.i0.setAdapter(dialogSetSort2.k0);
                                dialogSetSort2.j0.setText(R.string.apply);
                                dialogSetSort2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetSort.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetSort dialogSetSort3 = DialogSetSort.this;
                                        Context context2 = dialogSetSort3.b0;
                                        int i8 = dialogSetSort3.c0;
                                        int i9 = dialogSetSort3.e0;
                                        int i10 = dialogSetSort3.f0;
                                        boolean z = dialogSetSort3.g0;
                                        if (i8 == 0) {
                                            PrefList.w = i10;
                                            PrefList.x = z;
                                            PrefList r = PrefList.r(context2, false);
                                            r.n(PrefList.w, "mFileItem");
                                            r.l("mFileRvse", PrefList.x);
                                            r.a();
                                        } else if (i8 == 1) {
                                            PrefList.k = i9;
                                            PrefList.l = i10;
                                            PrefList.m = z;
                                            PrefList r2 = PrefList.r(context2, false);
                                            r2.n(PrefList.k, "mAlbumFold2");
                                            r2.n(PrefList.l, "mAlbumItem");
                                            r2.l("mAlbumRvse", PrefList.m);
                                            r2.a();
                                        } else if (i8 == 2) {
                                            PrefList.k = i9;
                                            PrefList.l = i10;
                                            PrefList.m = z;
                                            PrefList r3 = PrefList.r(context2, false);
                                            r3.n(PrefList.k, "mAlbumFold2");
                                            r3.n(PrefList.l, "mAlbumItem");
                                            r3.l("mAlbumRvse", PrefList.m);
                                            r3.a();
                                        } else if (i8 == 3) {
                                            PrefList.k = i9;
                                            PrefList.l = i10;
                                            PrefList.m = z;
                                            PrefList r4 = PrefList.r(context2, false);
                                            r4.n(PrefList.k, "mAlbumFold2");
                                            r4.n(PrefList.l, "mAlbumItem");
                                            r4.l("mAlbumRvse", PrefList.m);
                                            r4.a();
                                        } else if (i8 == 13) {
                                            PrefList.s = i10;
                                            PrefList.t = z;
                                            PrefList r5 = PrefList.r(context2, false);
                                            r5.n(PrefList.s, "mCastItem");
                                            r5.l("mCastRvse", PrefList.t);
                                            r5.a();
                                        } else if (i8 == 14) {
                                            PrefList.A = i9;
                                            PrefList.B = i10;
                                            PrefList.C = z;
                                            PrefList r6 = PrefList.r(context2, false);
                                            r6.n(PrefList.A, "mBookAlbumFold2");
                                            r6.n(PrefList.B, "mBookAlbumItem");
                                            r6.l("mBookAlbumRvse", PrefList.C);
                                            r6.a();
                                        } else if (i8 == 15) {
                                            PrefList.A = i9;
                                            PrefList.B = i10;
                                            PrefList.C = z;
                                            PrefList r7 = PrefList.r(context2, false);
                                            r7.n(PrefList.A, "mBookAlbumFold2");
                                            r7.n(PrefList.B, "mBookAlbumItem");
                                            r7.l("mBookAlbumRvse", PrefList.C);
                                            r7.a();
                                        } else if (i8 == 16) {
                                            PrefList.A = i9;
                                            PrefList.B = i10;
                                            PrefList.C = z;
                                            PrefList r8 = PrefList.r(context2, false);
                                            r8.n(PrefList.A, "mBookAlbumFold2");
                                            r8.n(PrefList.B, "mBookAlbumItem");
                                            r8.l("mBookAlbumRvse", PrefList.C);
                                            r8.a();
                                        } else if (i8 != 17) {
                                            if (i8 == 18) {
                                                PrefList.L = i9;
                                                PrefList.M = i10;
                                                PrefList.N = z;
                                                PrefList r9 = PrefList.r(context2, false);
                                                r9.n(PrefList.L, "mBookHistFold2");
                                                r9.n(PrefList.M, "mBookHistItem");
                                                r9.l("mBookHistRvse", PrefList.N);
                                                r9.a();
                                            } else if (i8 == 19) {
                                                PrefList.Q = i9;
                                                PrefList.R = i10;
                                                PrefList.S = z;
                                                PrefList r10 = PrefList.r(context2, false);
                                                r10.n(PrefList.Q, "mBookAdsFold");
                                                r10.n(PrefList.R, "mBookAdsItem");
                                                r10.l("mBookAdsRvse", PrefList.S);
                                                r10.a();
                                            } else if (i8 == 20) {
                                                PrefList.V = i9;
                                                PrefList.W = i10;
                                                PrefList.X = z;
                                                PrefList r11 = PrefList.r(context2, false);
                                                r11.n(PrefList.V, "mBookOverFold");
                                                r11.n(PrefList.W, "mBookOverItem");
                                                r11.l("mBookOverRvse", PrefList.X);
                                                r11.a();
                                            } else if (i8 == 21) {
                                                PrefList.a0 = i9;
                                                PrefList.b0 = i10;
                                                PrefList.c0 = z;
                                                PrefList r12 = PrefList.r(context2, false);
                                                r12.n(PrefList.a0, "mBookPopFold");
                                                r12.n(PrefList.b0, "mBookPopItem");
                                                r12.l("mBookPopRvse", PrefList.c0);
                                                r12.a();
                                            } else if (i8 == 22) {
                                                PrefList.f0 = i9;
                                                PrefList.g0 = i10;
                                                PrefList.h0 = z;
                                                PrefList r13 = PrefList.r(context2, false);
                                                r13.n(PrefList.f0, "mBookLinkFold");
                                                r13.n(PrefList.g0, "mBookLinkItem");
                                                r13.l("mBookLinkRvse", PrefList.h0);
                                                r13.a();
                                            } else if (i8 == 23) {
                                                PrefList.k0 = i9;
                                                PrefList.l0 = i10;
                                                PrefList.m0 = z;
                                                PrefList r14 = PrefList.r(context2, false);
                                                r14.n(PrefList.k0, "mBookBlockFold");
                                                r14.n(PrefList.l0, "mBookBlockItem");
                                                r14.l("mBookBlockRvse", PrefList.m0);
                                                r14.a();
                                            } else if (i8 == 24) {
                                                PrefList.p0 = i9;
                                                PrefList.q0 = i10;
                                                PrefList.r0 = z;
                                                PrefList r15 = PrefList.r(context2, false);
                                                r15.n(PrefList.p0, "mBookDcFold");
                                                r15.n(PrefList.q0, "mBookDcItem");
                                                r15.l("mBookDcRvse", PrefList.r0);
                                                r15.a();
                                            } else if (i8 == 25) {
                                                PrefList.u0 = i10;
                                                PrefList.v0 = z;
                                                PrefList r16 = PrefList.r(context2, false);
                                                r16.n(PrefList.u0, "mBookFilterItem");
                                                r16.l("mBookFilterRvse", PrefList.v0);
                                                r16.a();
                                            } else if (i8 == 26) {
                                                PrefList.W0 = i9;
                                                PrefList.X0 = i10;
                                                PrefList.Y0 = z;
                                                PrefList r17 = PrefList.r(context2, false);
                                                r17.n(PrefList.W0, "mBookUserFold");
                                                r17.n(PrefList.X0, "mBookUserItem");
                                                r17.l("mBookUserRvse", PrefList.Y0);
                                                r17.a();
                                            } else if (i8 == 27) {
                                                PrefList.D0 = i10;
                                                PrefList.E0 = z;
                                                PrefList r18 = PrefList.r(context2, false);
                                                r18.n(PrefList.D0, "mBookScrItem");
                                                r18.l("mBookScrRvse", PrefList.E0);
                                                r18.a();
                                            } else if (i8 == 28) {
                                                PrefList.y0 = i9;
                                                PrefList.z0 = i10;
                                                PrefList.A0 = z;
                                                PrefList r19 = PrefList.r(context2, false);
                                                r19.n(PrefList.y0, "mBookJavaFold");
                                                r19.n(PrefList.z0, "mBookJavaItem");
                                                r19.l("mBookJavaRvse", PrefList.A0);
                                                r19.a();
                                            } else if (i8 == 29) {
                                                PrefList.H0 = i9;
                                                PrefList.I0 = i10;
                                                PrefList.J0 = z;
                                                PrefList r20 = PrefList.r(context2, false);
                                                r20.n(PrefList.H0, "mBookTmemFold");
                                                r20.n(PrefList.I0, "mBookTmemItem");
                                                r20.l("mBookTmemRvse", PrefList.J0);
                                                r20.a();
                                            } else if (i8 == 30) {
                                                PrefList.M0 = i9;
                                                PrefList.N0 = i10;
                                                PrefList.O0 = z;
                                                PrefList r21 = PrefList.r(context2, false);
                                                r21.n(PrefList.M0, "mBookTransFold");
                                                r21.n(PrefList.N0, "mBookTransItem");
                                                r21.l("mBookTransRvse", PrefList.O0);
                                                r21.a();
                                            } else if (i8 == 31) {
                                                PrefList.R0 = i9;
                                                PrefList.S0 = i10;
                                                PrefList.T0 = z;
                                                PrefList r22 = PrefList.r(context2, false);
                                                r22.n(PrefList.R0, "mBookPmsFold");
                                                r22.n(PrefList.S0, "mBookPmsItem");
                                                r22.l("mBookPmsRvse", PrefList.T0);
                                                r22.a();
                                            } else if (i8 == 32) {
                                                PrefList.a1 = i9;
                                                PrefList.b1 = i10;
                                                PrefList.c1 = z;
                                                PrefList r23 = PrefList.r(context2, false);
                                                r23.n(PrefList.a1, "mBookDownFold2");
                                                r23.n(PrefList.b1, "mBookDownItem");
                                                r23.l("mBookDownRvse", PrefList.c1);
                                                r23.a();
                                            } else if (i8 == 43) {
                                                PrefList.h1 = i10;
                                                PrefList.i1 = z;
                                                PrefList r24 = PrefList.r(context2, false);
                                                r24.n(PrefList.h1, "mGdriveItem");
                                                r24.l("mGdriveRvse", PrefList.i1);
                                                r24.a();
                                            }
                                        }
                                        DialogSetFull.DialogApplyListener dialogApplyListener2 = dialogSetSort3.d0;
                                        if (dialogApplyListener2 != null) {
                                            dialogApplyListener2.a();
                                        }
                                        dialogSetSort3.dismiss();
                                    }
                                });
                                dialogSetSort2.g(dialogSetSort2.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetSort.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetSort dialogSetSort3 = DialogSetSort.this;
                                        if (dialogSetSort3.h0 == null) {
                                            return;
                                        }
                                        dialogSetSort3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.l0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.l0 = null;
        }
        MyPopupMenu myPopupMenu2 = this.m0;
        if (myPopupMenu2 != null) {
            this.Y = null;
            myPopupMenu2.a();
            this.m0 = null;
        }
        MyPopupMenu myPopupMenu3 = this.n0;
        if (myPopupMenu3 != null) {
            this.Y = null;
            myPopupMenu3.a();
            this.n0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyRecyclerView myRecyclerView = this.i0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.i0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        SettingListAdapter settingListAdapter = this.k0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        super.dismiss();
    }
}
