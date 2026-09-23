package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSaveConfirm extends MyDialogBottom {
    public Context a0;
    public DialogSeekAudio.DialogSeekListener b0;
    public MyDialogLinear c0;
    public MyRecyclerView d0;
    public MainSelectAdapter e0;

    public DialogSaveConfirm(Activity activity, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogSeekListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveConfirm.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSaveConfirm dialogSaveConfirm = DialogSaveConfirm.this;
                Context context = dialogSaveConfirm.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    dialogSaveConfirm.c0 = q;
                    dialogSaveConfirm.d0 = u;
                    Handler handler2 = dialogSaveConfirm.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSaveConfirm.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSaveConfirm dialogSaveConfirm2 = DialogSaveConfirm.this;
                            if (dialogSaveConfirm2.c0 != null && dialogSaveConfirm2.a0 != null) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.string.exit_with_save));
                                arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.string.exit_without_save));
                                dialogSaveConfirm2.e0 = new MainSelectAdapter(arrayList, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSaveConfirm.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i) {
                                        DialogSaveConfirm dialogSaveConfirm3 = DialogSaveConfirm.this;
                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSaveConfirm3.b0;
                                        if (dialogSeekListener2 != null) {
                                            dialogSeekListener2.a(i);
                                        }
                                        dialogSaveConfirm3.dismiss();
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogSaveConfirm2.d0);
                                dialogSaveConfirm2.d0.setAdapter(dialogSaveConfirm2.e0);
                                dialogSaveConfirm2.g(dialogSaveConfirm2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSaveConfirm.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSaveConfirm dialogSaveConfirm3 = DialogSaveConfirm.this;
                                        if (dialogSaveConfirm3.c0 == null) {
                                            return;
                                        }
                                        dialogSaveConfirm3.show();
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
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRecyclerView myRecyclerView = this.d0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.d0 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.e0;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.e0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
