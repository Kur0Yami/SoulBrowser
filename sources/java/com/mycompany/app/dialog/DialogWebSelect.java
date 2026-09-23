package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogWebSelect extends MyDialogBottom {
    public static final /* synthetic */ int h0 = 0;
    public Context a0;
    public WebSelectListener b0;
    public final int c0;
    public MyDialogRelative d0;
    public MyRecyclerView e0;
    public MyLineText f0;
    public MainSelectAdapter g0;

    /* loaded from: classes3.dex */
    public interface WebSelectListener {
        void a(int i);

        void b();
    }

    public DialogWebSelect(Activity activity, int i, int i2, WebSelectListener webSelectListener) {
        super(activity, i);
        this.w = MainApp.g1;
        if (i != 0) {
            this.x = true;
        }
        this.a0 = getContext();
        this.b0 = webSelectListener;
        this.c0 = i2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebSelect.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogWebSelect dialogWebSelect = DialogWebSelect.this;
                Context context = dialogWebSelect.a0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    myDialogRelative.addView(myRecyclerView, layoutParams);
                    dialogWebSelect.d0 = myDialogRelative;
                    dialogWebSelect.e0 = myRecyclerView;
                    Handler handler2 = dialogWebSelect.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebSelect.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogWebSelect dialogWebSelect2 = DialogWebSelect.this;
                            int i3 = dialogWebSelect2.c0;
                            if (dialogWebSelect2.d0 != null && dialogWebSelect2.a0 != null) {
                                ArrayList arrayList = new ArrayList();
                                if (MainApp.K1) {
                                    if (i3 == 0) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_dark_24, R.string.image));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(10, R.drawable.outline_photo_camera_dark_24, R.string.camera));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_dark_24, R.string.video));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(11, R.drawable.outline_videocam_dark_24, R.string.camcorder));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_dark_24, R.string.audio));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_dark_24, R.string.file));
                                    } else {
                                        if ((i3 & 2) == 2) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_dark_24, R.string.image));
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(10, R.drawable.outline_photo_camera_dark_24, R.string.camera));
                                        }
                                        if ((i3 & 4) == 4) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_dark_24, R.string.video));
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(11, R.drawable.outline_videocam_dark_24, R.string.camcorder));
                                        }
                                        if ((i3 & 8) == 8) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_dark_24, R.string.audio));
                                        }
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_dark_24, R.string.file));
                                    }
                                } else if (i3 == 0) {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_black_24, R.string.image));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(10, R.drawable.outline_photo_camera_black_24, R.string.camera));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_black_24, R.string.video));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(11, R.drawable.outline_videocam_black_24, R.string.camcorder));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_black_24, R.string.audio));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_black_24, R.string.file));
                                } else {
                                    if ((i3 & 2) == 2) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_black_24, R.string.image));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(10, R.drawable.outline_photo_camera_black_24, R.string.camera));
                                    }
                                    if ((i3 & 4) == 4) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_black_24, R.string.video));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(11, R.drawable.outline_videocam_black_24, R.string.camcorder));
                                    }
                                    if ((i3 & 8) == 8) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_black_24, R.string.audio));
                                    }
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_black_24, R.string.file));
                                }
                                dialogWebSelect2.g0 = new MainSelectAdapter(arrayList, -1, 5, false, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogWebSelect.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i4) {
                                        DialogWebSelect dialogWebSelect3 = DialogWebSelect.this;
                                        WebSelectListener webSelectListener2 = dialogWebSelect3.b0;
                                        if (webSelectListener2 != null) {
                                            webSelectListener2.a(i4);
                                        }
                                        dialogWebSelect3.dismiss();
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogWebSelect2.e0);
                                dialogWebSelect2.e0.setAdapter(dialogWebSelect2.g0);
                                dialogWebSelect2.g(dialogWebSelect2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebSelect.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i4 = DialogWebSelect.h0;
                                        final DialogWebSelect dialogWebSelect3 = DialogWebSelect.this;
                                        if (dialogWebSelect3.t != null && dialogWebSelect3.d0 != null && (context2 = dialogWebSelect3.a0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogWebSelect3.f0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogWebSelect3.f0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogWebSelect3.f0.setTextColor(-14784824);
                                            }
                                            dialogWebSelect3.f0.setFilterColor(MainUtil.l1());
                                            dialogWebSelect3.f0.setText(R.string.close);
                                            dialogWebSelect3.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebSelect.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogWebSelect.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogWebSelect3.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogWebSelect3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebSelect.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogWebSelect dialogWebSelect4 = DialogWebSelect.this;
                                                            if (dialogWebSelect4.d0 == null) {
                                                                return;
                                                            }
                                                            dialogWebSelect4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogWebSelect3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebSelect.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogWebSelect.this.dismiss();
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        WebSelectListener webSelectListener = this.b0;
        if (webSelectListener != null) {
            webSelectListener.b();
        }
        dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogRelative myDialogRelative = this.d0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.d0 = null;
        }
        MyRecyclerView myRecyclerView = this.e0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.e0 = null;
        }
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.g0;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.g0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
