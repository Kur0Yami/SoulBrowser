package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetImage extends MyDialogBottom {
    public static final /* synthetic */ int E0 = 0;
    public int A0;
    public boolean B0;
    public boolean C0;
    public int D0;
    public MainActivity a0;
    public Context b0;
    public ChangedListener c0;
    public final boolean d0;
    public MyDialogLinear e0;
    public ImageView f0;
    public AppCompatTextView g0;
    public MyRecyclerView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public MyPopupMenu l0;
    public MyPopupMenu m0;
    public DialogSetMsg n0;
    public final int o0;
    public final boolean p0;
    public final boolean q0;
    public final int r0;
    public final int s0;
    public final boolean t0;
    public final boolean u0;
    public final int v0;
    public int w0;
    public boolean x0;
    public boolean y0;
    public int z0;

    /* loaded from: classes3.dex */
    public interface ChangedListener {
        void a();
    }

    public DialogSetImage(MainActivity mainActivity, ChangedListener changedListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = changedListener;
        this.d0 = p();
        int i = PrefImage.u;
        this.o0 = i;
        boolean z = PrefImage.w;
        this.p0 = z;
        boolean z2 = PrefImage.y;
        this.q0 = z2;
        int i2 = PrefImage.A;
        this.r0 = i2;
        int i3 = PrefImage.t;
        this.s0 = i3;
        boolean z3 = PrefImage.v;
        this.t0 = z3;
        boolean z4 = PrefImage.x;
        this.u0 = z4;
        int i4 = PrefImage.z;
        this.v0 = i4;
        this.w0 = i;
        this.x0 = z;
        this.y0 = z2;
        this.z0 = i2;
        this.A0 = i3;
        this.B0 = z3;
        this.C0 = z4;
        this.D0 = i4;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetImage.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetImage dialogSetImage = DialogSetImage.this;
                Context context = dialogSetImage.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i5 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setSingleLine(true);
                    appCompatTextView.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart(MainApp.i1);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(appCompatTextView, layoutParams2);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams3.weight = 1.0f;
                    q.addView(u, layoutParams3);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetImage.e0 = q;
                    dialogSetImage.f0 = imageView;
                    dialogSetImage.g0 = appCompatTextView;
                    dialogSetImage.h0 = u;
                    dialogSetImage.i0 = l;
                    dialogSetImage.j0 = s;
                    Handler handler2 = dialogSetImage.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetImage.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i6;
                            int i7;
                            final DialogSetImage dialogSetImage2 = DialogSetImage.this;
                            if (dialogSetImage2.e0 != null && dialogSetImage2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetImage2.g0.setTextColor(-328966);
                                    dialogSetImage2.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetImage2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetImage2.i0.setTextColor(-328966);
                                    dialogSetImage2.j0.setTextColor(-328966);
                                } else {
                                    dialogSetImage2.g0.setTextColor(-16777216);
                                    dialogSetImage2.i0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetImage2.j0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetImage2.i0.setTextColor(-14784824);
                                    dialogSetImage2.j0.setTextColor(-16777216);
                                }
                                if (dialogSetImage2.d0) {
                                    ImageView imageView2 = dialogSetImage2.f0;
                                    if (MainApp.K1) {
                                        i7 = R.drawable.outline_stay_current_landscape_dark_24;
                                    } else {
                                        i7 = R.drawable.outline_stay_current_landscape_black_24;
                                    }
                                    imageView2.setImageResource(i7);
                                    dialogSetImage2.g0.setText(R.string.view_land);
                                } else {
                                    ImageView imageView3 = dialogSetImage2.f0;
                                    if (MainApp.K1) {
                                        i6 = R.drawable.outline_stay_current_portrait_dark_24;
                                    } else {
                                        i6 = R.drawable.outline_stay_current_portrait_black_24;
                                    }
                                    imageView3.setImageResource(i6);
                                    dialogSetImage2.g0.setText(R.string.view_port);
                                }
                                ArrayList B = dialogSetImage2.B();
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetImage2.k0 = new SettingListAdapter(B, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetImage.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(final SettingListAdapter.ViewHolder viewHolder, int i8, boolean z5, int i9) {
                                        int i10;
                                        boolean z6;
                                        boolean z7;
                                        boolean z8;
                                        final DialogSetImage dialogSetImage3 = DialogSetImage.this;
                                        boolean z9 = dialogSetImage3.d0;
                                        if (i8 != 0) {
                                            if (i8 != 1) {
                                                if (i8 != 2) {
                                                    if (i8 == 3) {
                                                        int round = Math.round(MainUtil.G(dialogSetImage3.b0, i9));
                                                        if (z9) {
                                                            dialogSetImage3.z0 = round;
                                                            return;
                                                        } else {
                                                            dialogSetImage3.D0 = round;
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                }
                                                if (z9) {
                                                    dialogSetImage3.y0 = z5;
                                                    return;
                                                } else {
                                                    dialogSetImage3.C0 = z5;
                                                    return;
                                                }
                                            }
                                            MyPopupMenu myPopupMenu = dialogSetImage3.m0;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    dialogSetImage3.Y = null;
                                                    myPopupMenu.a();
                                                    dialogSetImage3.m0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    if (z9) {
                                                        z7 = dialogSetImage3.x0;
                                                    } else {
                                                        z7 = dialogSetImage3.B0;
                                                    }
                                                    int length = MainConst.f0.length;
                                                    for (int i11 = 0; i11 < length; i11++) {
                                                        int i12 = MainConst.f0[i11];
                                                        if (i11 == z7) {
                                                            z8 = true;
                                                        } else {
                                                            z8 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i11, i12, z8));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetImage3.a0, dialogSetImage3.e0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetImage.9
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i13 = DialogSetImage.E0;
                                                            DialogSetImage dialogSetImage4 = DialogSetImage.this;
                                                            MyPopupMenu myPopupMenu3 = dialogSetImage4.m0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogSetImage4.Y = null;
                                                                myPopupMenu3.a();
                                                                dialogSetImage4.m0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i13) {
                                                            boolean z10;
                                                            boolean z11;
                                                            int[] iArr = MainConst.f0;
                                                            int length2 = i13 % iArr.length;
                                                            if (length2 == 1) {
                                                                z10 = true;
                                                            } else {
                                                                z10 = false;
                                                            }
                                                            int i14 = DialogSetImage.E0;
                                                            DialogSetImage dialogSetImage4 = DialogSetImage.this;
                                                            boolean z12 = dialogSetImage4.d0;
                                                            if (z12) {
                                                                z11 = dialogSetImage4.x0;
                                                            } else {
                                                                z11 = dialogSetImage4.B0;
                                                            }
                                                            if (z11 != z10) {
                                                                if (z12) {
                                                                    dialogSetImage4.x0 = z10;
                                                                } else {
                                                                    dialogSetImage4.B0 = z10;
                                                                }
                                                                SettingListAdapter settingListAdapter = dialogSetImage4.k0;
                                                                if (settingListAdapter != null) {
                                                                    settingListAdapter.F(1, iArr[length2]);
                                                                    dialogSetImage4.k0.C(1, MainConst.g0[length2]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    dialogSetImage3.m0 = myPopupMenu2;
                                                    dialogSetImage3.Y = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu3 = dialogSetImage3.l0;
                                        if (myPopupMenu3 == null) {
                                            if (myPopupMenu3 != null) {
                                                dialogSetImage3.Y = null;
                                                myPopupMenu3.a();
                                                dialogSetImage3.l0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                int length2 = MainConst.e0.length;
                                                for (int i13 = 0; i13 < length2; i13++) {
                                                    int i14 = MainConst.e0[i13];
                                                    if (z9) {
                                                        i10 = dialogSetImage3.w0;
                                                    } else {
                                                        i10 = dialogSetImage3.A0;
                                                    }
                                                    if (i13 == i10) {
                                                        z6 = true;
                                                    } else {
                                                        z6 = false;
                                                    }
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i13, i14, z6));
                                                }
                                                MyPopupMenu myPopupMenu4 = new MyPopupMenu(dialogSetImage3.a0, dialogSetImage3.e0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetImage.8
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i15 = DialogSetImage.E0;
                                                        DialogSetImage dialogSetImage4 = DialogSetImage.this;
                                                        MyPopupMenu myPopupMenu5 = dialogSetImage4.l0;
                                                        if (myPopupMenu5 != null) {
                                                            dialogSetImage4.Y = null;
                                                            myPopupMenu5.a();
                                                            dialogSetImage4.l0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i15) {
                                                        SettingListAdapter.ViewHolder viewHolder2;
                                                        int i16;
                                                        DialogSetImage dialogSetImage4 = DialogSetImage.this;
                                                        SettingListAdapter settingListAdapter = dialogSetImage4.k0;
                                                        if (settingListAdapter != null && (viewHolder2 = viewHolder) != null && viewHolder2.x != null) {
                                                            int length3 = i15 % MainConst.e0.length;
                                                            boolean z10 = dialogSetImage4.d0;
                                                            if (z10) {
                                                                i16 = dialogSetImage4.w0;
                                                            } else {
                                                                i16 = dialogSetImage4.A0;
                                                            }
                                                            if (i16 != length3) {
                                                                if (z10) {
                                                                    dialogSetImage4.w0 = length3;
                                                                } else {
                                                                    dialogSetImage4.A0 = length3;
                                                                }
                                                                settingListAdapter.E(dialogSetImage4.B());
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetImage3.l0 = myPopupMenu4;
                                                dialogSetImage3.Y = myPopupMenu4;
                                            }
                                        }
                                    }
                                });
                                dialogSetImage2.h0.setLayoutManager(linearLayoutManager);
                                dialogSetImage2.h0.setAdapter(dialogSetImage2.k0);
                                dialogSetImage2.t(dialogSetImage2.h0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogSetImage.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                                    public final void a(boolean z5) {
                                        MyRecyclerView myRecyclerView = DialogSetImage.this.h0;
                                        if (myRecyclerView == null) {
                                            return;
                                        }
                                        if (z5) {
                                            myRecyclerView.w0();
                                        } else {
                                            myRecyclerView.r0();
                                        }
                                    }
                                });
                                dialogSetImage2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetImage.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i8 = DialogSetImage.E0;
                                        DialogSetImage.this.D(true);
                                    }
                                });
                                dialogSetImage2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetImage.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetImage dialogSetImage3 = DialogSetImage.this;
                                        if (dialogSetImage3.a0 == null || dialogSetImage3.n0 != null) {
                                            return;
                                        }
                                        dialogSetImage3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetImage3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetImage.10
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                SettingListAdapter settingListAdapter;
                                                SettingListAdapter settingListAdapter2;
                                                int i8 = DialogSetImage.E0;
                                                DialogSetImage dialogSetImage4 = DialogSetImage.this;
                                                dialogSetImage4.C();
                                                boolean z5 = dialogSetImage4.d0;
                                                if (dialogSetImage4.w0 != 3 || dialogSetImage4.x0 || dialogSetImage4.y0 || dialogSetImage4.z0 != -1) {
                                                    dialogSetImage4.w0 = 3;
                                                    dialogSetImage4.x0 = false;
                                                    dialogSetImage4.y0 = false;
                                                    dialogSetImage4.z0 = -1;
                                                    if (z5 && (settingListAdapter = dialogSetImage4.k0) != null) {
                                                        settingListAdapter.E(dialogSetImage4.B());
                                                    }
                                                }
                                                if (dialogSetImage4.A0 != 0 || dialogSetImage4.B0 || dialogSetImage4.C0 || dialogSetImage4.D0 != -1) {
                                                    dialogSetImage4.A0 = 0;
                                                    dialogSetImage4.B0 = false;
                                                    dialogSetImage4.C0 = false;
                                                    dialogSetImage4.D0 = -1;
                                                    if (!z5 && (settingListAdapter2 = dialogSetImage4.k0) != null) {
                                                        settingListAdapter2.E(dialogSetImage4.B());
                                                    }
                                                }
                                                dialogSetImage4.D(false);
                                            }
                                        });
                                        dialogSetImage3.n0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetImage.11
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i8 = DialogSetImage.E0;
                                                DialogSetImage.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSetImage2.g(dialogSetImage2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetImage.7
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetImage dialogSetImage3 = DialogSetImage.this;
                                        if (dialogSetImage3.e0 == null) {
                                            return;
                                        }
                                        dialogSetImage3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final ArrayList B() {
        ?? r1;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        boolean z3 = this.d0;
        if (z3) {
            r1 = this.x0;
        } else {
            r1 = this.B0;
        }
        Context context = this.b0;
        if (z3) {
            i = this.z0;
        } else {
            i = this.D0;
        }
        int round = Math.round(MainUtil.K6(context, i));
        ArrayList arrayList = new ArrayList();
        int i4 = R.string.type;
        int[] iArr = MainConst.e0;
        if (z3) {
            i2 = this.w0;
        } else {
            i2 = this.A0;
        }
        arrayList.add(new SettingListAdapter.SettingItem(0, i4, iArr[i2], 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.size, MainConst.f0[r1], MainConst.g0[r1], 0));
        int i5 = R.string.page_split;
        int i6 = R.string.split_info;
        if (z3) {
            z = this.y0;
        } else {
            z = this.C0;
        }
        arrayList.add(new SettingListAdapter.SettingItem(2, i5, i6, 0, z, true));
        int i7 = R.string.margin;
        if (z3) {
            i3 = this.w0;
        } else {
            i3 = this.A0;
        }
        if (i3 == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        ?? obj = new Object();
        obj.f17931a = 10;
        obj.b = 3;
        obj.f17932c = i7;
        obj.o = 50;
        obj.p = round;
        obj.s = z2;
        obj.u = 0;
        arrayList.add(obj);
        return arrayList;
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.n0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.n0 = null;
        }
    }

    public final void D(boolean z) {
        int i = PrefImage.u;
        int i2 = this.w0;
        if (i != i2 || PrefImage.w != this.x0 || PrefImage.y != this.y0 || PrefImage.A != this.z0) {
            PrefImage.u = i2;
            PrefImage.w = this.x0;
            PrefImage.y = this.y0;
            PrefImage.A = this.z0;
            PrefImage r = PrefImage.r(this.b0, false);
            r.n(PrefImage.u, "mViewLand");
            r.l("mFitLand", PrefImage.w);
            r.l("mSplitLand", PrefImage.y);
            r.n(PrefImage.A, "mMarginLand");
            r.a();
        }
        int i3 = PrefImage.t;
        int i4 = this.A0;
        if (i3 != i4 || PrefImage.v != this.B0 || PrefImage.x != this.C0 || PrefImage.z != this.D0) {
            PrefImage.t = i4;
            PrefImage.v = this.B0;
            PrefImage.x = this.C0;
            PrefImage.z = this.D0;
            PrefImage r2 = PrefImage.r(this.b0, false);
            r2.n(PrefImage.t, "mViewPort");
            r2.l("mFitPort", PrefImage.v);
            r2.l("mSplitPort", PrefImage.x);
            r2.n(PrefImage.z, "mMarginPort");
            r2.a();
        }
        if (z) {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        ChangedListener changedListener = this.c0;
        if (changedListener != null) {
            if (this.d0) {
                changedListener.a();
                this.c0 = null;
            } else {
                changedListener.a();
                this.c0 = null;
            }
        }
        C();
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
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyRecyclerView myRecyclerView = this.h0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.h0 = null;
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
        this.f0 = null;
        this.g0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
