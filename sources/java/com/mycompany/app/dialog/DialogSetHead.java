package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Outline;
import android.os.Handler;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainHeadAdapter;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;

/* loaded from: classes3.dex */
public class DialogSetHead extends MyDialogBottom {
    public Context a0;
    public final DialogSetFull.DialogApplyListener b0;
    public MyDialogLinear c0;
    public FrameLayout d0;
    public View e0;
    public MyBarView f0;
    public MyRecyclerView g0;
    public MyLineText h0;
    public MainHeadAdapter i0;
    public int j0;
    public int k0;
    public int l0;

    public DialogSetHead(Activity activity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.j0 = PrefWeb.P;
        this.k0 = PrefWeb.Q;
        this.l0 = PrefWeb.R;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHead.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetHead dialogSetHead = DialogSetHead.this;
                Context context = dialogSetHead.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, (int) MainUtil.G(context, 96.0f));
                    View view = new View(context);
                    frameLayout.addView(view, -1, (int) MainUtil.G(context, 26.0f));
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    int G = (int) MainUtil.G(context, 24.0f);
                    int i = MainApp.E1;
                    frameLayout2.setPadding(i, 0, i, G);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(frameLayout2, layoutParams);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(false);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    frameLayout2.addView(myRecyclerView, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetHead.c0 = q;
                    dialogSetHead.d0 = frameLayout;
                    dialogSetHead.e0 = view;
                    dialogSetHead.g0 = myRecyclerView;
                    dialogSetHead.h0 = myLineText;
                    Handler handler2 = dialogSetHead.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHead.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v12, types: [androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager, com.mycompany.app.view.MyManagerGrid] */
                        /* JADX WARN: Type inference failed for: r3v3, types: [com.mycompany.app.main.MainHeadAdapter, androidx.recyclerview.widget.RecyclerView$Adapter] */
                        /* JADX WARN: Type inference failed for: r8v0, types: [android.widget.LinearLayout, com.mycompany.app.view.MyBarView] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetHead dialogSetHead2 = DialogSetHead.this;
                            if (dialogSetHead2.c0 != null && dialogSetHead2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetHead2.h0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetHead2.h0.setTextColor(-328966);
                                } else {
                                    dialogSetHead2.h0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetHead2.h0.setTextColor(-14784824);
                                }
                                int[] a2 = MainUtil.a2(PrefMain.D);
                                if (a2 == null || a2.length == 0) {
                                    a2 = new int[]{63, 1, 31, 35};
                                }
                                int[] iArr = a2;
                                ?? linearLayout = new LinearLayout(dialogSetHead2.a0);
                                dialogSetHead2.f0 = linearLayout;
                                linearLayout.a(dialogSetHead2.a0, iArr, null, null, 0, false, 0, 1, false, 2, dialogSetHead2.l0, 0, 1);
                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.Y0);
                                layoutParams2.topMargin = MainApp.Y0 / 2;
                                dialogSetHead2.d0.addView(dialogSetHead2.f0, layoutParams2);
                                dialogSetHead2.B();
                                ?? gridLayoutManager = new GridLayoutManager(4);
                                int i2 = dialogSetHead2.j0;
                                MainSelectAdapter.MainSelectListener mainSelectListener = new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetHead.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i3) {
                                        DialogSetHead dialogSetHead3 = DialogSetHead.this;
                                        if (dialogSetHead3.j0 != i3 && i3 >= 0) {
                                            int[] iArr2 = MainConst.u;
                                            if (i3 < iArr2.length) {
                                                dialogSetHead3.j0 = i3;
                                                int i4 = iArr2[i3];
                                                dialogSetHead3.k0 = i4;
                                                dialogSetHead3.l0 = MainUtil.p6(i4);
                                                dialogSetHead3.B();
                                            }
                                        }
                                    }
                                };
                                ?? adapter = new RecyclerView.Adapter();
                                adapter.d = i2;
                                adapter.e = gridLayoutManager;
                                adapter.f = mainSelectListener;
                                dialogSetHead2.i0 = adapter;
                                dialogSetHead2.g0.setLayoutManager(gridLayoutManager);
                                dialogSetHead2.g0.setAdapter(dialogSetHead2.i0);
                                dialogSetHead2.t(dialogSetHead2.g0, null);
                                dialogSetHead2.g0.setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.dialog.DialogSetHead.4
                                    @Override // android.view.ViewOutlineProvider
                                    public final void getOutline(View view2, Outline outline) {
                                        DialogSetHead dialogSetHead3;
                                        MyRecyclerView myRecyclerView2;
                                        if (outline != null && (myRecyclerView2 = (dialogSetHead3 = DialogSetHead.this).g0) != null) {
                                            outline.setRoundRect(0, 0, myRecyclerView2.getWidth(), dialogSetHead3.g0.getHeight(), MainApp.E1);
                                        }
                                    }
                                });
                                dialogSetHead2.g0.setClipToOutline(true);
                                dialogSetHead2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetHead.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        int i3 = PrefWeb.P;
                                        DialogSetHead dialogSetHead3 = DialogSetHead.this;
                                        int i4 = dialogSetHead3.j0;
                                        if (i3 != i4 && i4 >= 0 && i4 < MainConst.u.length) {
                                            PrefWeb.P = i4;
                                            MainUtil.m7();
                                            PrefSet.f(dialogSetHead3.a0, 14, PrefWeb.P, "mHeadIndex");
                                            DialogSetFull.DialogApplyListener dialogApplyListener2 = dialogSetHead3.b0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                            dialogSetHead3.dismiss();
                                            return;
                                        }
                                        dialogSetHead3.dismiss();
                                    }
                                });
                                dialogSetHead2.g(dialogSetHead2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetHead.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        final DialogSetHead dialogSetHead3 = DialogSetHead.this;
                                        if (dialogSetHead3.c0 == null) {
                                            return;
                                        }
                                        dialogSetHead3.show();
                                        dialogSetHead3.g0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHead.7
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogSetHead dialogSetHead4 = DialogSetHead.this;
                                                MyRecyclerView myRecyclerView2 = dialogSetHead4.g0;
                                                if (myRecyclerView2 != null) {
                                                    myRecyclerView2.i0(dialogSetHead4.j0);
                                                }
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        if (this.f0 == null) {
            return;
        }
        this.e0.setBackgroundColor(this.k0);
        this.f0.setBackgroundColor(this.k0);
        this.f0.g(this.a0, null, null, 0, false, 0, 1, false, 2, this.l0);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyBarView myBarView = this.f0;
        if (myBarView != null) {
            myBarView.d();
            this.f0 = null;
        }
        MyRecyclerView myRecyclerView = this.g0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.g0 = null;
        }
        MyLineText myLineText = this.h0;
        if (myLineText != null) {
            myLineText.u();
            this.h0 = null;
        }
        MainHeadAdapter mainHeadAdapter = this.i0;
        if (mainHeadAdapter != null) {
            mainHeadAdapter.e = null;
            mainHeadAdapter.f = null;
            this.i0 = null;
        }
        this.a0 = null;
        this.d0 = null;
        this.e0 = null;
        super.dismiss();
    }
}
