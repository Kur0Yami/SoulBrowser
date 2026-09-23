package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebVideoFull;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetRate extends MyDialogBottom {
    public static final /* synthetic */ int j0 = 0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public MyDialogLinear c0;
    public MyRoundItem d0;
    public MySwitchView e0;
    public AppCompatTextView f0;
    public MyRecyclerView g0;
    public MainSelectAdapter h0;
    public int i0;

    public DialogSetRate(WebViewActivity webViewActivity, int i, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(webViewActivity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.i0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetRate.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetRate dialogSetRate = DialogSetRate.this;
                Context context = dialogSetRate.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRoundItem myRoundItem = new MyRoundItem(context);
                    myRoundItem.d(false, true);
                    myRoundItem.setPadding(MainApp.E1, 0, MainApp.F1, 0);
                    myRoundItem.setMinimumHeight(MainApp.h1);
                    q.addView(myRoundItem, -1, -2);
                    MySwitchView mySwitchView = new MySwitchView(context);
                    int i2 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
                    layoutParams.addRule(21);
                    layoutParams.addRule(15);
                    myRoundItem.addView(mySwitchView, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i3 = MainApp.E1;
                    appCompatTextView.setPadding(0, i3, 0, i3);
                    RelativeLayout.LayoutParams h = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 16.0f, -1, -2);
                    h.addRule(15);
                    h.setMarginEnd(MainApp.g1);
                    myRoundItem.addView(appCompatTextView, h);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.u0(true, false);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.topMargin = MainApp.F1;
                    layoutParams2.weight = 1.0f;
                    q.addView(myRecyclerView, layoutParams2);
                    dialogSetRate.c0 = q;
                    dialogSetRate.d0 = myRoundItem;
                    dialogSetRate.e0 = mySwitchView;
                    dialogSetRate.f0 = appCompatTextView;
                    dialogSetRate.g0 = myRecyclerView;
                    Handler handler2 = dialogSetRate.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetRate.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetRate dialogSetRate2 = DialogSetRate.this;
                            MyDialogLinear myDialogLinear = dialogSetRate2.c0;
                            if (myDialogLinear != null && dialogSetRate2.a0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.setBackgroundColor(-16777216);
                                    dialogSetRate2.d0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetRate2.f0.setTextColor(-328966);
                                } else {
                                    myDialogLinear.setBackgroundColor(-460552);
                                    dialogSetRate2.d0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetRate2.f0.setTextColor(-16777216);
                                }
                                dialogSetRate2.f0.setText(R.string.youtube_speed);
                                int i4 = 0;
                                dialogSetRate2.e0.b(PrefZtwo.V, false);
                                dialogSetRate2.d0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetRate.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetRate dialogSetRate3 = DialogSetRate.this;
                                        if (dialogSetRate3.e0 == null) {
                                            return;
                                        }
                                        boolean z = !PrefZtwo.V;
                                        PrefZtwo.V = z;
                                        PrefSet.d(16, dialogSetRate3.a0, "mYouSpdSave", z);
                                        dialogSetRate3.e0.b(PrefZtwo.V, true);
                                    }
                                });
                                dialogSetRate2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetRate.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetRate dialogSetRate3 = DialogSetRate.this;
                                        if (dialogSetRate3.e0 == null) {
                                            return;
                                        }
                                        boolean z = !PrefZtwo.V;
                                        PrefZtwo.V = z;
                                        PrefSet.d(16, dialogSetRate3.a0, "mYouSpdSave", z);
                                        dialogSetRate3.e0.b(PrefZtwo.V, true);
                                    }
                                });
                                ArrayList arrayList = new ArrayList();
                                while (true) {
                                    float[] fArr = WebVideoFull.o1;
                                    if (i4 < 8) {
                                        float f = fArr[i4];
                                        if (i4 == 3) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(i4, R.string.normal_rate));
                                        } else {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(i4, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + f));
                                        }
                                        i4++;
                                    } else {
                                        dialogSetRate2.h0 = new MainSelectAdapter(arrayList, dialogSetRate2.i0, 3, true, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetRate.5
                                            @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                            public final void a(int i5) {
                                                DialogSetRate dialogSetRate3 = DialogSetRate.this;
                                                if (dialogSetRate3.b0 == null) {
                                                    return;
                                                }
                                                float f2 = WebVideoFull.o1[i5];
                                                if (Float.compare(PrefZtwo.W, f2) != 0) {
                                                    PrefZtwo.W = f2;
                                                    PrefSet.e(dialogSetRate3.a0, f2);
                                                    dialogSetRate3.b0.a();
                                                }
                                                dialogSetRate3.dismiss();
                                            }
                                        });
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogSetRate2.g0);
                                        dialogSetRate2.g0.setAdapter(dialogSetRate2.h0);
                                        dialogSetRate2.g(dialogSetRate2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetRate.6
                                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                            public final void a(View view) {
                                                DialogSetRate dialogSetRate3 = DialogSetRate.this;
                                                if (dialogSetRate3.c0 == null) {
                                                    return;
                                                }
                                                dialogSetRate3.show();
                                            }
                                        });
                                        return;
                                    }
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        int i = 0;
        while (true) {
            float[] fArr = WebVideoFull.o1;
            if (i < 8) {
                if (Float.compare(PrefZtwo.W, fArr[i]) == 0) {
                    break;
                } else {
                    i++;
                }
            } else {
                i = -1;
                break;
            }
        }
        if (this.i0 != i) {
            this.i0 = i;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetRate.7
                @Override // java.lang.Runnable
                public final void run() {
                    DialogSetRate dialogSetRate = DialogSetRate.this;
                    MainSelectAdapter mainSelectAdapter = dialogSetRate.h0;
                    if (mainSelectAdapter != null) {
                        mainSelectAdapter.x(dialogSetRate.i0, dialogSetRate.i);
                    }
                }
            });
        }
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
        MyRoundItem myRoundItem = this.d0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.d0 = null;
        }
        MySwitchView mySwitchView = this.e0;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.e0 = null;
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
        this.f0 = null;
        super.dismiss();
    }
}
