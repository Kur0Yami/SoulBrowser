package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.dialog.DialogSeekAudio;
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
public class DialogTabMenu extends MyDialogBottom {
    public static final /* synthetic */ int h0 = 0;
    public Context a0;
    public DialogSeekAudio.DialogSeekListener b0;
    public MyDialogRelative c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public MainSelectAdapter f0;
    public final boolean g0;

    public DialogTabMenu(Activity activity, int i, boolean z, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(activity, i);
        this.w = MainApp.g1;
        if (i != 0) {
            this.x = true;
        }
        this.a0 = getContext();
        this.b0 = dialogSeekListener;
        this.g0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMenu.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogTabMenu dialogTabMenu = DialogTabMenu.this;
                Context context = dialogTabMenu.a0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    myDialogRelative.addView(myRecyclerView, layoutParams);
                    dialogTabMenu.c0 = myDialogRelative;
                    dialogTabMenu.d0 = myRecyclerView;
                    Handler handler2 = dialogTabMenu.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMenu.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogTabMenu dialogTabMenu2 = DialogTabMenu.this;
                            boolean z2 = dialogTabMenu2.g0;
                            if (dialogTabMenu2.c0 != null && dialogTabMenu2.a0 != null) {
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogTabMenu2.a0, R.string.new_url, sb, " (");
                                sb.append(dialogTabMenu2.a0.getString(R.string.current_page));
                                sb.append(")");
                                String sb2 = sb.toString();
                                ArrayList arrayList = new ArrayList();
                                if (MainApp.K1) {
                                    if (z2) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_tab_close_dark_24, R.string.delete_all_tab));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_tab_close_right_dark_24, R.string.delete_other_tab));
                                    }
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_disabled_by_default_dark_24, R.string.delete_tab));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_add_box_dark_24, R.string.new_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_tab_new_right_dark_24, sb2));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.outline_library_add_dark_24, R.string.group_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.outline_flip_to_back_dark_24, R.string.back_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_energy_savings_leaf_dark_24, R.string.mem_limit));
                                } else {
                                    if (z2) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_tab_close_black_24, R.string.delete_all_tab));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_tab_close_right_black_24, R.string.delete_other_tab));
                                    }
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_disabled_by_default_black_24, R.string.delete_tab));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_add_box_black_24, R.string.new_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_tab_new_right_black_24, sb2));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.outline_library_add_black_24, R.string.group_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.outline_flip_to_back_black_24, R.string.back_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_energy_savings_leaf_black_24, R.string.mem_limit));
                                }
                                dialogTabMenu2.f0 = new MainSelectAdapter(arrayList, -1, 5, false, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogTabMenu.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i2) {
                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = DialogTabMenu.this.b0;
                                        if (dialogSeekListener2 != null) {
                                            dialogSeekListener2.a(i2);
                                        }
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogTabMenu2.d0);
                                dialogTabMenu2.d0.setAdapter(dialogTabMenu2.f0);
                                dialogTabMenu2.g(dialogTabMenu2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogTabMenu.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i2 = DialogTabMenu.h0;
                                        final DialogTabMenu dialogTabMenu3 = DialogTabMenu.this;
                                        if (dialogTabMenu3.t != null && dialogTabMenu3.c0 != null && (context2 = dialogTabMenu3.a0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogTabMenu3.e0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogTabMenu3.e0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogTabMenu3.e0.setTextColor(-14784824);
                                            }
                                            dialogTabMenu3.e0.setFilterColor(MainUtil.l1());
                                            dialogTabMenu3.e0.setText(R.string.close);
                                            dialogTabMenu3.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTabMenu.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogTabMenu.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogTabMenu3.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogTabMenu3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMenu.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogTabMenu dialogTabMenu4 = DialogTabMenu.this;
                                                            if (dialogTabMenu4.c0 == null) {
                                                                return;
                                                            }
                                                            dialogTabMenu4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogTabMenu3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabMenu.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogTabMenu.this.dismiss();
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
        if (this.a0 == null) {
            return;
        }
        MyDialogRelative myDialogRelative = this.c0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.c0 = null;
        }
        MyRecyclerView myRecyclerView = this.d0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.d0 = null;
        }
        MyLineText myLineText = this.e0;
        if (myLineText != null) {
            myLineText.u();
            this.e0 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.f0;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
