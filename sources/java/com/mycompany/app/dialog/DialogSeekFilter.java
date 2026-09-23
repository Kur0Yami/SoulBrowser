package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSeekFilter extends MyDialogBottom {
    public static final /* synthetic */ int m0 = 0;
    public Activity a0;
    public Context b0;
    public final boolean c0;
    public MyDialogLinear d0;
    public MyRecyclerView e0;
    public AppCompatTextView f0;
    public MyLineText g0;
    public SettingListAdapter h0;
    public String i0;
    public boolean j0;
    public int k0;
    public DialogSetMsg l0;

    public DialogSeekFilter(Activity activity, boolean z) {
        super(activity);
        boolean z2;
        boolean z3;
        this.a0 = activity;
        this.b0 = getContext();
        this.c0 = z;
        if (z) {
            if (PrefPdf.M > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.j0 = z3;
            this.k0 = PrefPdf.N - 1;
        } else {
            if (PrefPdf.J > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.j0 = z2;
            this.k0 = PrefPdf.K - 1;
        }
        int i = this.k0;
        if (i < 0) {
            this.k0 = 0;
        } else if (i > 99) {
            this.k0 = 99;
        }
        this.i0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_day, this.b0, new StringBuilder(" "));
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekFilter.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSeekFilter dialogSeekFilter = DialogSeekFilter.this;
                Context context = dialogSeekFilter.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
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
                    dialogSeekFilter.d0 = q;
                    dialogSeekFilter.e0 = u;
                    dialogSeekFilter.f0 = l;
                    dialogSeekFilter.g0 = s;
                    Handler handler2 = dialogSeekFilter.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekFilter.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSeekFilter dialogSeekFilter2 = DialogSeekFilter.this;
                            if (dialogSeekFilter2.d0 != null && dialogSeekFilter2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSeekFilter2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekFilter2.g0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSeekFilter2.f0.setTextColor(-328966);
                                    dialogSeekFilter2.g0.setTextColor(-328966);
                                } else {
                                    dialogSeekFilter2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekFilter2.g0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSeekFilter2.f0.setTextColor(-14784824);
                                    dialogSeekFilter2.g0.setTextColor(-16777216);
                                }
                                ArrayList B = dialogSeekFilter2.B();
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSeekFilter2.h0 = new SettingListAdapter(B, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z4, int i3) {
                                        DialogSeekFilter dialogSeekFilter3 = DialogSeekFilter.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                int i4 = DialogSeekFilter.m0;
                                                return;
                                            } else {
                                                dialogSeekFilter3.k0 = i3;
                                                return;
                                            }
                                        }
                                        dialogSeekFilter3.j0 = z4;
                                        SettingListAdapter settingListAdapter = dialogSeekFilter3.h0;
                                        if (settingListAdapter != null) {
                                            settingListAdapter.E(dialogSeekFilter3.B());
                                        }
                                    }
                                });
                                dialogSeekFilter2.e0.setLayoutManager(linearLayoutManager);
                                dialogSeekFilter2.e0.setAdapter(dialogSeekFilter2.h0);
                                dialogSeekFilter2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = DialogSeekFilter.m0;
                                        DialogSeekFilter.this.D(true);
                                    }
                                });
                                dialogSeekFilter2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSeekFilter dialogSeekFilter3 = DialogSeekFilter.this;
                                        if (dialogSeekFilter3.a0 == null || dialogSeekFilter3.l0 != null) {
                                            return;
                                        }
                                        dialogSeekFilter3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekFilter3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.7
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                boolean z4;
                                                int i2 = DialogSeekFilter.m0;
                                                DialogSeekFilter dialogSeekFilter4 = DialogSeekFilter.this;
                                                dialogSeekFilter4.C();
                                                SettingListAdapter settingListAdapter = dialogSeekFilter4.h0;
                                                if (settingListAdapter == null) {
                                                    return;
                                                }
                                                boolean z5 = true;
                                                boolean z6 = !dialogSeekFilter4.c0;
                                                if (dialogSeekFilter4.j0 != z6) {
                                                    dialogSeekFilter4.j0 = z6;
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                if (dialogSeekFilter4.k0 != 6) {
                                                    dialogSeekFilter4.k0 = 6;
                                                } else {
                                                    z5 = z4;
                                                }
                                                if (z5) {
                                                    settingListAdapter.E(dialogSeekFilter4.B());
                                                }
                                                dialogSeekFilter4.D(false);
                                            }
                                        });
                                        dialogSeekFilter3.l0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.8
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i2 = DialogSeekFilter.m0;
                                                DialogSeekFilter.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSeekFilter2.g(dialogSeekFilter2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekFilter.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSeekFilter dialogSeekFilter3 = DialogSeekFilter.this;
                                        if (dialogSeekFilter3.d0 == null) {
                                            return;
                                        }
                                        dialogSeekFilter3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    public final ArrayList B() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, R.string.auto_update, 0, 0, this.j0, true));
        int i = R.string.update_time;
        int i2 = this.k0;
        boolean z = !this.j0;
        String str = this.i0;
        ?? obj = new Object();
        obj.f17931a = 10;
        obj.b = 1;
        obj.f17932c = i;
        obj.o = 99;
        obj.p = i2;
        obj.s = z;
        obj.r = str;
        obj.u = 0;
        arrayList.add(obj);
        return arrayList;
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.l0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.l0 = null;
        }
    }

    public final void D(boolean z) {
        long j;
        int i;
        boolean z2;
        boolean z3 = this.c0;
        if (z3) {
            j = PrefPdf.M;
            i = PrefPdf.N;
        } else {
            j = PrefPdf.J;
            i = PrefPdf.K;
        }
        if (j > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i2 = this.k0;
        if (i2 < 0) {
            this.k0 = 0;
        } else if (i2 > 99) {
            this.k0 = 99;
        }
        int i3 = this.k0 + 1;
        if (z2 != this.j0 || i3 != i) {
            PrefPdf r = PrefPdf.r(this.b0, false);
            if (z3) {
                if (this.j0) {
                    PrefPdf.M = System.currentTimeMillis();
                } else {
                    PrefPdf.M = 0L;
                }
                PrefPdf.N = i3;
                if (z) {
                    r.o(PrefPdf.M, "mScriptTime");
                    r.n(PrefPdf.N, "mScriptDay");
                } else {
                    r.q("mScriptTime");
                    r.q("mScriptDay");
                }
            } else {
                if (this.j0) {
                    PrefPdf.J = System.currentTimeMillis();
                } else {
                    PrefPdf.J = 0L;
                }
                PrefPdf.K = i3;
                if (z) {
                    r.o(PrefPdf.J, "mFilterTime");
                    r.n(PrefPdf.K, "mFilterDay");
                } else {
                    r.q("mFilterTime");
                    r.q("mFilterDay");
                }
            }
            r.a();
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
        C();
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRecyclerView myRecyclerView = this.e0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.e0 = null;
        }
        MyLineText myLineText = this.g0;
        if (myLineText != null) {
            myLineText.u();
            this.g0 = null;
        }
        SettingListAdapter settingListAdapter = this.h0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
