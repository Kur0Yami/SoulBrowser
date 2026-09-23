package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.setting.SettingTts;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetUseTts extends MyDialogBottom {
    public static final /* synthetic */ int j0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public MyDialogLinear d0;
    public MyButtonImage e0;
    public MyRecyclerView f0;
    public SettingListAdapter g0;
    public DialogSetTts h0;
    public boolean i0;

    public DialogSetUseTts(MainActivity mainActivity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.i0 = PrefTts.j;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUseTts.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetUseTts dialogSetUseTts = DialogSetUseTts.this;
                Context context = dialogSetUseTts.b0;
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
                    dialogSetUseTts.d0 = q;
                    dialogSetUseTts.e0 = myButtonImage;
                    dialogSetUseTts.f0 = u;
                    Handler handler2 = dialogSetUseTts.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUseTts.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetUseTts dialogSetUseTts2 = DialogSetUseTts.this;
                            if (dialogSetUseTts2.d0 != null && dialogSetUseTts2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetUseTts2.e0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetUseTts2.e0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetUseTts2.e0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetUseTts2.e0.setBgPreColor(553648128);
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.tts_on, R.string.tts_info_1, 0, PrefTts.j, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(1, R.string.detail_setting, 0, 0, 0), 1);
                                dialogSetUseTts2.g0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetUseTts.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                                        DialogSetTts dialogSetTts;
                                        int i4 = DialogSetUseTts.j0;
                                        final DialogSetUseTts dialogSetUseTts3 = DialogSetUseTts.this;
                                        if (i2 != 0) {
                                            if (i2 != 1 || dialogSetUseTts3.a0 == null || (dialogSetTts = dialogSetUseTts3.h0) != null) {
                                                return;
                                            }
                                            if (dialogSetTts != null) {
                                                dialogSetTts.dismiss();
                                                dialogSetUseTts3.h0 = null;
                                            }
                                            DialogSetTts dialogSetTts2 = new DialogSetTts(dialogSetUseTts3.a0);
                                            dialogSetUseTts3.h0 = dialogSetTts2;
                                            dialogSetTts2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetUseTts.6
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i5 = DialogSetUseTts.j0;
                                                    DialogSetUseTts dialogSetUseTts4 = DialogSetUseTts.this;
                                                    DialogSetTts dialogSetTts3 = dialogSetUseTts4.h0;
                                                    if (dialogSetTts3 != null) {
                                                        dialogSetTts3.dismiss();
                                                        dialogSetUseTts4.h0 = null;
                                                    }
                                                }
                                            });
                                            return;
                                        }
                                        PrefTts.j = z;
                                        PrefSet.d(12, dialogSetUseTts3.b0, "mTtsMode", z);
                                    }
                                });
                                dialogSetUseTts2.f0.setLayoutManager(t);
                                dialogSetUseTts2.f0.setAdapter(dialogSetUseTts2.g0);
                                dialogSetUseTts2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetUseTts.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetUseTts dialogSetUseTts3 = DialogSetUseTts.this;
                                        if (dialogSetUseTts3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetUseTts3.b0, (Class<?>) SettingTts.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        dialogSetUseTts3.a0.t0(intent, 35);
                                    }
                                });
                                dialogSetUseTts2.g(dialogSetUseTts2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetUseTts.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetUseTts dialogSetUseTts3 = DialogSetUseTts.this;
                                        if (dialogSetUseTts3.d0 == null) {
                                            return;
                                        }
                                        dialogSetUseTts3.show();
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
        boolean z = this.i0;
        boolean z2 = PrefTts.j;
        if (z != z2) {
            this.i0 = z2;
            DialogSetFull.DialogApplyListener dialogApplyListener = this.c0;
            if (dialogApplyListener != null) {
                dialogApplyListener.a();
            }
        }
        DialogSetTts dialogSetTts = this.h0;
        if (dialogSetTts != null) {
            dialogSetTts.dismiss();
            this.h0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyButtonImage myButtonImage = this.e0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.e0 = null;
        }
        MyRecyclerView myRecyclerView = this.f0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.f0 = null;
        }
        SettingListAdapter settingListAdapter = this.g0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.g0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
