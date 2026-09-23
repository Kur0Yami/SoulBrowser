package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLink;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLinkView;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.List;

/** Bottom-sheet tab menu (toolbar Tab menu and tab long-press); MyDialogLink + header + MyLinkView + Close. */
public class DialogTabPress extends MyDialogBottom {
    public static final /* synthetic */ int n0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public final int c0;
    public final int d0;
    public final boolean e0;
    public final View f0;
    public final TabActionHandler g0;
    public MyDialogLink h0;
    public MyLinkView i0;
    public MyLineText j0;

    public interface TabActionHandler {
        boolean onAction(View view, int id);

        void onDismiss();
    }

    public static ArrayList<MyLinkView.MainLinkItem> buildItems(boolean[] allow) {
        ArrayList<MyLinkView.MainLinkItem> items = new ArrayList<>();
        int mask = PrefWeb.a0;
        for (int id : MainUtil.g3(2, false)) {
            if (id >= 0 && id < allow.length && allow[id] && (mask & (1 << id)) != 0) {
                int icon = MainApp.K1 ? DialogSetPopup.s0[id] : DialogSetPopup.r0[id];
                items.add(new MyLinkView.MainLinkItem(id, icon, DialogSetPopup.q0[id]));
            }
        }
        return items;
    }

    public DialogTabPress(WebViewActivity webViewActivity, View anchor, int groupIndex, int tabIndex, boolean urlBarTab, boolean[] allow, TabActionHandler handler) {
        super(webViewActivity, 0);
        this.w = MainApp.g1;
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = groupIndex;
        this.d0 = tabIndex;
        this.e0 = urlBarTab;
        this.f0 = anchor;
        this.g0 = handler;
        final ArrayList<MyLinkView.MainLinkItem> items = buildItems(allow);
        Handler handler2 = this.i;
        if (handler2 == null) {
            return;
        }
        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabPress.1
            @Override
            public final void run() {
                final DialogTabPress dialog = DialogTabPress.this;
                Context context = dialog.b0;
                if (context == null) {
                    return;
                }
                MyDialogLink body = new MyDialogLink(context);
                body.setOrientation(1);
                body.setPadding(0, 0, 0, MainApp.G1);
                View header = WebViewActivity.D1header(dialog.a0, dialog.d0, dialog.f0);
                if (header != null) {
                    int headerH = (int) MainUtil.G(context, 72.0f);
                    body.addView(header, new FrameLayout.LayoutParams(-1, headerH));
                }
                MyLinkView linkView = new MyLinkView(context);
                linkView.setVerticalScrollBarEnabled(true);
                if (MainApp.K1) {
                    linkView.setBackgroundColor(-14606047);
                    body.setBackColor(-14606047);
                } else {
                    linkView.setBackgroundColor(-1);
                    body.setBackColor(-1);
                }
                linkView.setItems(items);
                MyLinkView.MainLinkListener itemListener = new MyLinkView.MainLinkListener() { // from class: com.mycompany.app.dialog.DialogTabPress.2
                    @Override
                    public final void a(View view, int i) {
                        DialogTabPress dialogTabPress = DialogTabPress.this;
                        TabActionHandler tabActionHandler = dialogTabPress.g0;
                        if (tabActionHandler != null && tabActionHandler.onAction(view, i)) {
                            dialogTabPress.dismiss();
                        }
                    }
                };
                linkView.setListener(itemListener);
                linkView.setLongListener(itemListener);
                body.addView(linkView, -1, -2);
                dialog.h0 = body;
                dialog.i0 = linkView;
                Handler handler3 = dialog.i;
                if (handler3 == null) {
                    return;
                }
                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabPress.3
                    @Override
                    public final void run() {
                        DialogTabPress dialogTabPress = DialogTabPress.this;
                        MyDialogLink myDialogLink = dialogTabPress.h0;
                        if (myDialogLink == null) {
                            return;
                        }
                        dialogTabPress.g(myDialogLink, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogTabPress.4
                            @Override
                            public final void a(View view) {
                                DialogTabPress dialogTabPress2 = DialogTabPress.this;
                                if (dialogTabPress2.t == null || dialogTabPress2.h0 == null || dialogTabPress2.b0 == null) {
                                    return;
                                }
                                MyLineText close = com.google.android.gms.internal.mlkit_vision_text_common.a.r(dialogTabPress2.b0, 17, 1, 16.0f);
                                close.setLinePad(MainApp.E1);
                                close.setLineUp(true);
                                dialogTabPress2.j0 = close;
                                if (MainApp.K1) {
                                    close.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    close.setTextColor(-328966);
                                } else {
                                    close.setBackgroundResource(R.drawable.selector_list_back);
                                    close.setTextColor(-14784824);
                                }
                                close.setFilterColor(MainUtil.l1());
                                close.setText(R.string.close);
                                close.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTabPress.5
                                    @Override
                                    public final void onClick(View view2) {
                                        DialogTabPress.this.dismiss();
                                    }
                                });
                                try {
                                    CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                    layoutParams.f611c = 80;
                                    dialogTabPress2.t.addView(close, layoutParams);
                                    Handler handler4 = dialogTabPress2.i;
                                    if (handler4 != null) {
                                        handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabPress.6
                                            @Override
                                            public final void run() {
                                                DialogTabPress dialogTabPress3 = DialogTabPress.this;
                                                if (dialogTabPress3.h0 != null) {
                                                    dialogTabPress3.show();
                                                }
                                            }
                                        });
                                    }
                                } catch (Exception unused) {
                                    Handler handler5 = dialogTabPress2.i;
                                    if (handler5 != null) {
                                        handler5.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabPress.7
                                            @Override
                                            public final void run() {
                                                DialogTabPress.this.dismiss();
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                });
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        TabActionHandler tabActionHandler = this.g0;
        if (tabActionHandler != null) {
            tabActionHandler.onDismiss();
        }
        MyLinkView myLinkView = this.i0;
        if (myLinkView != null) {
            myLinkView.setListener(null);
            myLinkView.setLongListener(null);
            this.i0 = null;
        }
        this.h0 = null;
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
