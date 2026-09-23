package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
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
public class DialogOpenType extends MyDialogBottom {
    public static final /* synthetic */ int i0 = 0;
    public Activity a0;
    public Context b0;
    public String c0;
    public final boolean d0;
    public MyDialogRelative e0;
    public MyRecyclerView f0;
    public MyLineText g0;
    public MainSelectAdapter h0;

    public DialogOpenType(Activity activity, int i, String str, boolean z) {
        super(activity, i);
        this.w = MainApp.g1;
        if (i != 0) {
            this.x = true;
        }
        this.a0 = activity;
        this.b0 = getContext();
        this.c0 = str;
        this.d0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOpenType.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogOpenType dialogOpenType = DialogOpenType.this;
                Context context = dialogOpenType.b0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    myDialogRelative.addView(myRecyclerView, layoutParams);
                    dialogOpenType.e0 = myDialogRelative;
                    dialogOpenType.f0 = myRecyclerView;
                    Handler handler2 = dialogOpenType.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOpenType.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogOpenType dialogOpenType2 = DialogOpenType.this;
                            if (dialogOpenType2.e0 != null && dialogOpenType2.b0 != null) {
                                ArrayList arrayList = new ArrayList();
                                if (MainApp.K1) {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_dark_24, R.string.image));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_dark_24, R.string.video));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_dark_24, R.string.audio));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_description_dark_24, R.string.doc));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_dark_24, R.string.others));
                                } else {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_image_black_24, R.string.image));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.baseline_play_arrow_black_24, R.string.video));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.baseline_music_note_black_24, R.string.audio));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_description_black_24, R.string.doc));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_draft_black_24, R.string.others));
                                }
                                dialogOpenType2.h0 = new MainSelectAdapter(arrayList, -1, 5, false, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogOpenType.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i2) {
                                        String str2;
                                        DialogOpenType dialogOpenType3 = DialogOpenType.this;
                                        if (dialogOpenType3.a0 != null) {
                                            if (TextUtils.isEmpty(dialogOpenType3.c0)) {
                                                MainUtil.e8(dialogOpenType3.b0, R.string.invalid_path);
                                            } else {
                                                if (i2 == 4) {
                                                    str2 = "image/*";
                                                } else if (i2 == 5) {
                                                    str2 = "video/*";
                                                } else if (i2 == 6) {
                                                    str2 = "audio/*";
                                                } else if (i2 == 7) {
                                                    str2 = "text/*";
                                                } else {
                                                    str2 = null;
                                                }
                                                MainUtil.d(dialogOpenType3.a0, dialogOpenType3.c0, str2, true, dialogOpenType3.d0);
                                            }
                                        }
                                        dialogOpenType3.dismiss();
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogOpenType2.f0);
                                dialogOpenType2.f0.setAdapter(dialogOpenType2.h0);
                                dialogOpenType2.g(dialogOpenType2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogOpenType.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i2 = DialogOpenType.i0;
                                        final DialogOpenType dialogOpenType3 = DialogOpenType.this;
                                        if (dialogOpenType3.t != null && dialogOpenType3.e0 != null && (context2 = dialogOpenType3.b0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogOpenType3.g0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogOpenType3.g0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogOpenType3.g0.setTextColor(-14784824);
                                            }
                                            dialogOpenType3.g0.setFilterColor(MainUtil.l1());
                                            dialogOpenType3.g0.setText(R.string.close);
                                            dialogOpenType3.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogOpenType.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogOpenType.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogOpenType3.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogOpenType3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOpenType.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogOpenType dialogOpenType4 = DialogOpenType.this;
                                                            if (dialogOpenType4.e0 == null) {
                                                                return;
                                                            }
                                                            dialogOpenType4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogOpenType3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogOpenType.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogOpenType.this.dismiss();
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

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyDialogRelative myDialogRelative = this.e0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.e0 = null;
        }
        MyRecyclerView myRecyclerView = this.f0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.f0 = null;
        }
        MyLineText myLineText = this.g0;
        if (myLineText != null) {
            myLineText.u();
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
        this.e0 = null;
        super.dismiss();
    }
}
