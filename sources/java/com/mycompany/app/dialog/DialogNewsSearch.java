package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogEditText;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.web.WebSearchAdapter;
import com.mycompany.app.web.WebSearchAdapter2;
import java.net.URLEncoder;

/* loaded from: classes3.dex */
public class DialogNewsSearch extends MyDialogBottom {
    public Context a0;
    public DialogEditText.EditTextListener b0;
    public View c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public AppCompatAutoCompleteTextView f0;
    public View g0;
    public MyLineText h0;
    public boolean i0;
    public WebSearchAdapter2 j0;

    public DialogNewsSearch(Activity activity, View view, DialogEditText.EditTextListener editTextListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = editTextListener;
        this.c0 = view;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogNewsSearch.B(DialogNewsSearch.this);
            }
        });
    }

    public static void B(DialogNewsSearch dialogNewsSearch) {
        int i;
        Context context = dialogNewsSearch.a0;
        if (context != null) {
            int i2 = R.id.item_frame_view;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 88.0f);
            int G2 = (int) MainUtil.G(context, 12.0f);
            int G3 = (int) MainUtil.G(context, 10.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(i2);
            frameLayout.setPaddingRelative(MainApp.E1, G2, G3, G2);
            q.addView(frameLayout, -1, G);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.news_title);
            frameLayout.addView(j, -2, -2);
            AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = new AppCompatAutoCompleteTextView(context, null);
            appCompatAutoCompleteTextView.setGravity(16);
            appCompatAutoCompleteTextView.setSingleLine(true);
            appCompatAutoCompleteTextView.setTextDirection(3);
            appCompatAutoCompleteTextView.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                appCompatAutoCompleteTextView.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            appCompatAutoCompleteTextView.setImeOptions(268435456);
            appCompatAutoCompleteTextView.setBackground(null);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams.gravity = 8388691;
            layoutParams.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout.addView(appCompatAutoCompleteTextView, layoutParams);
            int G4 = (int) MainUtil.G(context, 2.0f);
            if (MainApp.K1) {
                i = MainApp.n1;
            } else {
                i = G4;
            }
            View view = new View(context);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, i);
            layoutParams2.gravity = 8388691;
            layoutParams2.bottomMargin = G4;
            frameLayout.addView(view, layoutParams2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.search_url);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogNewsSearch.d0 = q;
            dialogNewsSearch.e0 = j;
            dialogNewsSearch.f0 = appCompatAutoCompleteTextView;
            dialogNewsSearch.g0 = view;
            dialogNewsSearch.h0 = myLineText;
            Handler handler = dialogNewsSearch.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogNewsSearch dialogNewsSearch2 = DialogNewsSearch.this;
                    if (dialogNewsSearch2.d0 != null && dialogNewsSearch2.a0 != null) {
                        if (MainApp.K1) {
                            dialogNewsSearch2.e0.setTextColor(-4079167);
                            dialogNewsSearch2.f0.setTextColor(-328966);
                            dialogNewsSearch2.g0.setBackgroundColor(-328966);
                            dialogNewsSearch2.h0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogNewsSearch2.h0.setTextColor(-328966);
                        } else {
                            dialogNewsSearch2.e0.setTextColor(-10395295);
                            dialogNewsSearch2.f0.setTextColor(-16777216);
                            dialogNewsSearch2.g0.setBackgroundColor(-14784824);
                            dialogNewsSearch2.h0.setBackgroundResource(R.drawable.selector_normal);
                            dialogNewsSearch2.h0.setTextColor(-14784824);
                        }
                        dialogNewsSearch2.f0.setThreshold(1);
                        dialogNewsSearch2.f0.setDropDownAnchor(R.id.item_frame_view);
                        dialogNewsSearch2.f0.setDropDownWidth(-1);
                        dialogNewsSearch2.f0.setDropDownHeight(-2);
                        dialogNewsSearch2.f0.setDropDownBackgroundDrawable(new ColorDrawable(16777216));
                        dialogNewsSearch2.f0.setInputType(161);
                        MainUtil.c5(dialogNewsSearch2.f0);
                        dialogNewsSearch2.f0.setSelectAllOnFocus(true);
                        dialogNewsSearch2.f0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogNewsSearch dialogNewsSearch3 = DialogNewsSearch.this;
                                AppCompatAutoCompleteTextView appCompatAutoCompleteTextView2 = dialogNewsSearch3.f0;
                                if (appCompatAutoCompleteTextView2 == null) {
                                    return;
                                }
                                appCompatAutoCompleteTextView2.requestFocus();
                                dialogNewsSearch3.f0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView3;
                                        DialogNewsSearch dialogNewsSearch4 = DialogNewsSearch.this;
                                        Context context2 = dialogNewsSearch4.a0;
                                        if (context2 != null && (appCompatAutoCompleteTextView3 = dialogNewsSearch4.f0) != null) {
                                            MainUtil.c8(context2, appCompatAutoCompleteTextView3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        dialogNewsSearch2.f0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogNewsSearch.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                                DialogNewsSearch dialogNewsSearch3 = DialogNewsSearch.this;
                                AppCompatAutoCompleteTextView appCompatAutoCompleteTextView2 = dialogNewsSearch3.f0;
                                if (appCompatAutoCompleteTextView2 == null || dialogNewsSearch3.i0) {
                                    return true;
                                }
                                dialogNewsSearch3.i0 = true;
                                appCompatAutoCompleteTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogNewsSearch.C(DialogNewsSearch.this, false, null);
                                        DialogNewsSearch.this.i0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogNewsSearch2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsSearch.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogNewsSearch dialogNewsSearch3 = DialogNewsSearch.this;
                                MyLineText myLineText2 = dialogNewsSearch3.h0;
                                if (myLineText2 == null || dialogNewsSearch3.i0) {
                                    return;
                                }
                                dialogNewsSearch3.i0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        DialogNewsSearch.C(DialogNewsSearch.this, false, null);
                                        DialogNewsSearch.this.i0 = false;
                                    }
                                });
                            }
                        });
                        dialogNewsSearch2.g(dialogNewsSearch2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogNewsSearch.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                final DialogNewsSearch dialogNewsSearch3 = DialogNewsSearch.this;
                                if (dialogNewsSearch3.d0 != null) {
                                    dialogNewsSearch3.show();
                                    Handler handler2 = dialogNewsSearch3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.7
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogNewsSearch dialogNewsSearch4 = DialogNewsSearch.this;
                                            if (dialogNewsSearch4.f0 == null) {
                                                return;
                                            }
                                            WebSearchAdapter2 webSearchAdapter2 = new WebSearchAdapter2(dialogNewsSearch4.a0, null, null, null, true, 2, new WebSearchAdapter.WebSearchListener() { // from class: com.mycompany.app.dialog.DialogNewsSearch.8
                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final void a(final int i3, boolean z) {
                                                    AppCompatAutoCompleteTextView appCompatAutoCompleteTextView2;
                                                    if (i3 < 0 || (appCompatAutoCompleteTextView2 = DialogNewsSearch.this.f0) == null) {
                                                        return;
                                                    }
                                                    appCompatAutoCompleteTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.8.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            AppCompatAutoCompleteTextView appCompatAutoCompleteTextView3 = DialogNewsSearch.this.f0;
                                                            if (appCompatAutoCompleteTextView3 != null) {
                                                                appCompatAutoCompleteTextView3.setListSelection(i3);
                                                            }
                                                        }
                                                    });
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final int b() {
                                                    DialogNewsSearch dialogNewsSearch5 = DialogNewsSearch.this;
                                                    if (dialogNewsSearch5.d0 == null) {
                                                        return 0;
                                                    }
                                                    return MainUtil.i4(dialogNewsSearch5.d0) - MainUtil.i4(dialogNewsSearch5.c0);
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final void c() {
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final boolean d() {
                                                    return false;
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final void e(String str) {
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final void g(int i3, String str) {
                                                    DialogNewsSearch dialogNewsSearch5 = DialogNewsSearch.this;
                                                    AppCompatAutoCompleteTextView appCompatAutoCompleteTextView2 = dialogNewsSearch5.f0;
                                                    if (appCompatAutoCompleteTextView2 != null) {
                                                        appCompatAutoCompleteTextView2.setText(str);
                                                        try {
                                                            dialogNewsSearch5.f0.setSelection(i3);
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                }

                                                @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
                                                public final void h(final WebSearchAdapter.SearchItem searchItem) {
                                                    DialogNewsSearch dialogNewsSearch5 = DialogNewsSearch.this;
                                                    AppCompatAutoCompleteTextView appCompatAutoCompleteTextView2 = dialogNewsSearch5.f0;
                                                    if (appCompatAutoCompleteTextView2 == null || dialogNewsSearch5.i0) {
                                                        return;
                                                    }
                                                    dialogNewsSearch5.i0 = true;
                                                    appCompatAutoCompleteTextView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsSearch.8.2
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                                            DialogNewsSearch.C(DialogNewsSearch.this, true, searchItem);
                                                            DialogNewsSearch.this.i0 = false;
                                                        }
                                                    });
                                                }
                                            });
                                            dialogNewsSearch4.j0 = webSearchAdapter2;
                                            dialogNewsSearch4.f0.setAdapter(webSearchAdapter2);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogNewsSearch dialogNewsSearch, boolean z, WebSearchAdapter.SearchItem searchItem) {
        String Q0;
        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = dialogNewsSearch.f0;
        if (appCompatAutoCompleteTextView != null && dialogNewsSearch.b0 != null) {
            if (z) {
                if (searchItem != null) {
                    int i = searchItem.b;
                    if (i == 3) {
                        dialogNewsSearch.dismiss();
                        return;
                    } else if (i == 0) {
                        Q0 = searchItem.f;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                Q0 = MainUtil.Q0(appCompatAutoCompleteTextView, true);
            }
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogNewsSearch.a0, R.string.empty);
            } else {
                try {
                    Q0 = URLEncoder.encode(Q0, "UTF-8");
                } catch (Exception unused) {
                }
                dialogNewsSearch.b0.a(Q0);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineText myLineText = this.h0;
        if (myLineText != null) {
            myLineText.u();
            this.h0 = null;
        }
        WebSearchAdapter2 webSearchAdapter2 = this.j0;
        if (webSearchAdapter2 != null) {
            webSearchAdapter2.f();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        super.dismiss();
    }
}
