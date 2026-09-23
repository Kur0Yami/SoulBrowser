package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
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
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetUrl extends MyDialogBottom {
    public static final /* synthetic */ int j0 = 0;
    public Context a0;
    public DialogSeekAudio.DialogSeekListener b0;
    public String c0;
    public MyDialogRelative d0;
    public MyRecyclerView e0;
    public MyLineText f0;
    public MainSelectAdapter g0;
    public final boolean h0;
    public final boolean i0;

    public DialogSetUrl(WebViewActivity webViewActivity, int i, boolean z, String str, boolean z2, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(webViewActivity, i);
        this.w = MainApp.g1;
        if (i != 0) {
            this.x = true;
        }
        this.a0 = getContext();
        this.b0 = dialogSeekListener;
        this.c0 = str;
        this.h0 = z;
        this.i0 = z2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUrl.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetUrl dialogSetUrl = DialogSetUrl.this;
                Context context = dialogSetUrl.a0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    myDialogRelative.addView(myRecyclerView, layoutParams);
                    dialogSetUrl.d0 = myDialogRelative;
                    dialogSetUrl.e0 = myRecyclerView;
                    Handler handler2 = dialogSetUrl.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUrl.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetUrl dialogSetUrl2 = DialogSetUrl.this;
                            boolean z3 = dialogSetUrl2.i0;
                            boolean z4 = dialogSetUrl2.h0;
                            if (dialogSetUrl2.d0 != null && dialogSetUrl2.a0 != null) {
                                ArrayList arrayList = new ArrayList();
                                if (MainApp.K1) {
                                    if (z4) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_kid_star_dark_24, R.string.add_book));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_add_home_dark_24, R.string.add_quick));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_add_to_home_screen_dark_24, R.string.add_home_2));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_home_dark_24, R.string.set_homepage));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_electric_bolt_dark_24, R.string.set_startpage));
                                    } else {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_link_dark_24, R.string.copy_url));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_share_dark_24, R.string.share_url));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_content_paste_dark_24, R.string.paste_url));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_open_in_new_dark_24, R.string.open_copied_url));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_tab_new_right_dark_24, R.string.open_new_tab));
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.outline_open_with_dark_24, R.string.open_with));
                                        if (!TextUtils.isEmpty(dialogSetUrl2.c0)) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.outline_copyright_dark_24, dialogSetUrl2.c0));
                                        }
                                        if (z3) {
                                            arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_text_snippet_dark_24, R.string.view_certi));
                                        }
                                    }
                                } else if (z4) {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_kid_star_black_24, R.string.add_book));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_add_home_black_24, R.string.add_quick));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_add_to_home_screen_black_24, R.string.add_home_2));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_home_black_24, R.string.set_homepage));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_electric_bolt_black_24, R.string.set_startpage));
                                } else {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_link_black_24, R.string.copy_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_share_black_24, R.string.share_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_content_paste_black_24, R.string.paste_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_open_in_new_black_24, R.string.open_copied_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_tab_new_right_black_24, R.string.open_new_tab));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(5, R.drawable.outline_open_with_black_24, R.string.open_with));
                                    if (!TextUtils.isEmpty(dialogSetUrl2.c0)) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(6, R.drawable.outline_copyright_black_24, dialogSetUrl2.c0));
                                    }
                                    if (z3) {
                                        arrayList.add(new MainSelectAdapter.MainSelectItem(7, R.drawable.outline_text_snippet_black_24, R.string.view_certi));
                                    }
                                }
                                dialogSetUrl2.g0 = new MainSelectAdapter(arrayList, -1, 5, false, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetUrl.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i2) {
                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = DialogSetUrl.this.b0;
                                        if (dialogSeekListener2 != null) {
                                            dialogSeekListener2.a(i2);
                                        }
                                    }
                                });
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogSetUrl2.e0);
                                dialogSetUrl2.e0.setAdapter(dialogSetUrl2.g0);
                                dialogSetUrl2.g(dialogSetUrl2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetUrl.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i2 = DialogSetUrl.j0;
                                        final DialogSetUrl dialogSetUrl3 = DialogSetUrl.this;
                                        if (dialogSetUrl3.t != null && dialogSetUrl3.d0 != null && (context2 = dialogSetUrl3.a0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogSetUrl3.f0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogSetUrl3.f0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogSetUrl3.f0.setTextColor(-14784824);
                                            }
                                            dialogSetUrl3.f0.setFilterColor(MainUtil.l1());
                                            dialogSetUrl3.f0.setText(R.string.close);
                                            dialogSetUrl3.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetUrl.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogSetUrl.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogSetUrl3.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogSetUrl3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUrl.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetUrl dialogSetUrl4 = DialogSetUrl.this;
                                                            if (dialogSetUrl4.d0 == null) {
                                                                return;
                                                            }
                                                            dialogSetUrl4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogSetUrl3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetUrl.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetUrl.this.dismiss();
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
        this.c0 = null;
        this.d0 = null;
        super.dismiss();
    }
}
