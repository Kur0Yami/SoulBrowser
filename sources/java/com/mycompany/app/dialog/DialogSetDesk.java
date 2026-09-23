package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.db.book.DbBookAgent;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.list.MainListAgent;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetDesk extends MyDialogBottom {
    public MainActivity a0;
    public Context b0;
    public SetDeskListener c0;
    public boolean d0;
    public MyDialogLinear e0;
    public MyButtonImage f0;
    public MyRecyclerView g0;
    public MainSelectAdapter h0;

    /* loaded from: classes3.dex */
    public interface SetDeskListener {
        void a(boolean z);
    }

    public DialogSetDesk(MainActivity mainActivity, boolean z, SetDeskListener setDeskListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = setDeskListener;
        this.d0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDesk.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetDesk dialogSetDesk = DialogSetDesk.this;
                Context context = dialogSetDesk.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388613;
                    layoutParams.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(myButtonImage, layoutParams);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(u, layoutParams2);
                    dialogSetDesk.e0 = q;
                    dialogSetDesk.f0 = myButtonImage;
                    dialogSetDesk.g0 = u;
                    Handler handler2 = dialogSetDesk.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDesk.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            String b;
                            int i2;
                            final DialogSetDesk dialogSetDesk2 = DialogSetDesk.this;
                            if (dialogSetDesk2.e0 != null && dialogSetDesk2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetDesk2.f0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetDesk2.f0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetDesk2.f0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetDesk2.f0.setBgPreColor(553648128);
                                }
                                if (PrefZtwo.p < 4) {
                                    b = MainConst.G[PrefZtwo.p];
                                } else {
                                    b = DbBookAgent.b(dialogSetDesk2.b0, r1 - 100);
                                }
                                if (PrefWeb.j) {
                                    i2 = 2;
                                } else if (dialogSetDesk2.d0) {
                                    i2 = 1;
                                } else {
                                    i2 = 0;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MainSelectAdapter.MainSelectItem(R.string.mobile_mode, b, 0));
                                arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.string.desk_one));
                                arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.string.desk_all));
                                dialogSetDesk2.h0 = new MainSelectAdapter(arrayList, i2, 3, true, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetDesk.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i3) {
                                        DialogSetDesk dialogSetDesk3 = DialogSetDesk.this;
                                        if (dialogSetDesk3.h0 == null) {
                                            return;
                                        }
                                        boolean z2 = false;
                                        boolean z3 = true;
                                        if (i3 != 1) {
                                            if (i3 == 2) {
                                                z2 = true;
                                            } else {
                                                z3 = false;
                                            }
                                        }
                                        if (PrefWeb.j != z2) {
                                            PrefWeb.j = z2;
                                            PrefSet.d(14, dialogSetDesk3.b0, "mDeskLock", z2);
                                        }
                                        if (dialogSetDesk3.d0 != z3) {
                                            dialogSetDesk3.d0 = z3;
                                            SetDeskListener setDeskListener2 = dialogSetDesk3.c0;
                                            if (setDeskListener2 != null) {
                                                setDeskListener2.a(z3);
                                            }
                                        }
                                        dialogSetDesk3.dismiss();
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogSetDesk2.g0);
                                dialogSetDesk2.g0.setAdapter(dialogSetDesk2.h0);
                                dialogSetDesk2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDesk.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetDesk dialogSetDesk3 = DialogSetDesk.this;
                                        if (dialogSetDesk3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetDesk3.b0, (Class<?>) MainListAgent.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        dialogSetDesk3.a0.t0(intent, 35);
                                    }
                                });
                                dialogSetDesk2.g(dialogSetDesk2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetDesk.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetDesk dialogSetDesk3 = DialogSetDesk.this;
                                        if (dialogSetDesk3.e0 == null) {
                                            return;
                                        }
                                        dialogSetDesk3.show();
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
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.f0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.f0 = null;
        }
        MyRecyclerView myRecyclerView = this.g0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.g0 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.h0;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
