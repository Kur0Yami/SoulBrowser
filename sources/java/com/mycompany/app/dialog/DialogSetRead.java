package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.setting.SettingWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetRead extends MyDialogBottom {
    public MainActivity a0;
    public Context b0;
    public SetReadListener c0;
    public String d0;
    public MyDialogLinear e0;
    public MyButtonImage f0;
    public MyRecyclerView g0;
    public MainSelectAdapter h0;

    /* loaded from: classes3.dex */
    public interface SetReadListener {
        void a(String str, boolean z);
    }

    public DialogSetRead(MainActivity mainActivity, String str, SetReadListener setReadListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = setReadListener;
        this.d0 = str;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetRead.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetRead dialogSetRead = DialogSetRead.this;
                Context context = dialogSetRead.b0;
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
                    dialogSetRead.e0 = q;
                    dialogSetRead.f0 = myButtonImage;
                    dialogSetRead.g0 = u;
                    Handler handler2 = dialogSetRead.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetRead.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetRead dialogSetRead2 = DialogSetRead.this;
                            if (dialogSetRead2.e0 != null && dialogSetRead2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetRead2.f0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogSetRead2.f0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetRead2.f0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogSetRead2.f0.setBgPreColor(553648128);
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MainSelectAdapter.MainSelectItem(0, "TEXT"));
                                arrayList.add(new MainSelectAdapter.MainSelectItem(1, "HTML"));
                                dialogSetRead2.h0 = new MainSelectAdapter(arrayList, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetRead.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i2) {
                                        DialogSetRead dialogSetRead3 = DialogSetRead.this;
                                        SetReadListener setReadListener2 = dialogSetRead3.c0;
                                        if (setReadListener2 != null) {
                                            String str2 = dialogSetRead3.d0;
                                            boolean z = true;
                                            if (i2 != 1) {
                                                z = false;
                                            }
                                            setReadListener2.a(str2, z);
                                        }
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogSetRead2.g0);
                                dialogSetRead2.g0.setAdapter(dialogSetRead2.h0);
                                dialogSetRead2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetRead.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetRead dialogSetRead3 = DialogSetRead.this;
                                        if (dialogSetRead3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogSetRead3.b0, (Class<?>) SettingWeb.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        intent.putExtra("EXTRA_INDEX", 3);
                                        intent.putExtra("EXTRA_PATH", dialogSetRead3.d0);
                                        dialogSetRead3.a0.t0(intent, 35);
                                    }
                                });
                                dialogSetRead2.g(dialogSetRead2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetRead.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetRead dialogSetRead3 = DialogSetRead.this;
                                        if (dialogSetRead3.e0 == null) {
                                            return;
                                        }
                                        dialogSetRead3.show();
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
        this.d0 = null;
        super.dismiss();
    }
}
