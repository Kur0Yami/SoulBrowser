package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.editor.EditorEmoji;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;

/* loaded from: classes3.dex */
public class DialogEditorEmoji extends MyDialogBottom {
    public static final /* synthetic */ int i0 = 0;
    public Context a0;
    public DialogEditorText.EditorSetListener b0;
    public MyDialogRelative c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public final int f0;
    public int g0;
    public int h0;

    /* loaded from: classes3.dex */
    public class EmojiAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public EmojiAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void n(RecyclerView.ViewHolder viewHolder, int i) {
            ViewPagerHolder viewPagerHolder = (ViewPagerHolder) viewHolder;
            if (viewPagerHolder.f1589a != null && i >= 0 && i < 400) {
                viewPagerHolder.u.setText(EditorEmoji.f15657a[i]);
                viewPagerHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.EmojiAdapter.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CharSequence text;
                        EmojiAdapter emojiAdapter = EmojiAdapter.this;
                        if (DialogEditorEmoji.this.b0 == null || !(view instanceof MyButtonText) || (text = ((MyButtonText) view).getText()) == null) {
                            return;
                        }
                        DialogEditorEmoji.this.b0.a(0, text.toString());
                        DialogEditorEmoji.this.dismiss();
                    }
                });
            }
        }

        /* JADX WARN: Type inference failed for: r2v7, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.dialog.DialogEditorEmoji$ViewPagerHolder] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            Context context = viewGroup.getContext();
            if (context == null) {
                return null;
            }
            MyButtonText myButtonText = new MyButtonText(context);
            myButtonText.setGravity(17);
            myButtonText.setTextSize(1, 36.0f);
            myButtonText.setTextColor(-1);
            myButtonText.setBgPreColor(-1586137739);
            int i2 = DialogEditorEmoji.this.h0;
            myButtonText.setLayoutParams(new ViewGroup.LayoutParams(i2, i2));
            ?? viewHolder = new RecyclerView.ViewHolder(myButtonText);
            viewHolder.u = myButtonText;
            return viewHolder;
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
        public MyButtonText u;
    }

    public DialogEditorEmoji(Activity activity, int i, DialogEditorText.EditorSetListener editorSetListener) {
        super(activity);
        this.w = MainApp.g1;
        this.C = true;
        this.a0 = getContext();
        this.b0 = editorSetListener;
        this.f0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogEditorEmoji dialogEditorEmoji = DialogEditorEmoji.this;
                int i2 = dialogEditorEmoji.f0;
                Context context = dialogEditorEmoji.a0;
                if (context != null) {
                    int G = (int) MainUtil.G(context, 12.0f);
                    dialogEditorEmoji.g0 = 3;
                    int i3 = (i2 - (4 * G)) / 3;
                    while (i3 > MainApp.i1) {
                        int i4 = dialogEditorEmoji.g0;
                        int i5 = i4 + 1;
                        dialogEditorEmoji.g0 = i5;
                        i3 = (i2 - ((i4 + 2) * G)) / i5;
                    }
                    dialogEditorEmoji.h0 = i3;
                    int i6 = dialogEditorEmoji.g0;
                    int round = Math.round((i2 - (i3 * i6)) / (i6 + 1));
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, false, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    layoutParams.setMarginStart(round);
                    myDialogRelative.addView(u, layoutParams);
                    dialogEditorEmoji.c0 = myDialogRelative;
                    dialogEditorEmoji.d0 = u;
                    Handler handler2 = dialogEditorEmoji.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogEditorEmoji dialogEditorEmoji2 = DialogEditorEmoji.this;
                            MyDialogRelative myDialogRelative2 = dialogEditorEmoji2.c0;
                            if (myDialogRelative2 != null && dialogEditorEmoji2.a0 != null) {
                                myDialogRelative2.setBackgroundColor(-1593835520);
                                dialogEditorEmoji2.d0.setLayoutManager(new GridLayoutManager(dialogEditorEmoji2.g0));
                                dialogEditorEmoji2.d0.setAdapter(new EmojiAdapter());
                                dialogEditorEmoji2.t(dialogEditorEmoji2.d0, null);
                                dialogEditorEmoji2.g(dialogEditorEmoji2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.3
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i7 = DialogEditorEmoji.i0;
                                        final DialogEditorEmoji dialogEditorEmoji3 = DialogEditorEmoji.this;
                                        if (dialogEditorEmoji3.t != null && dialogEditorEmoji3.c0 != null && (context2 = dialogEditorEmoji3.a0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogEditorEmoji3.e0 = r;
                                            r.setBackgroundResource(R.drawable.selector_list_back_black);
                                            dialogEditorEmoji3.e0.setTextColor(-1);
                                            dialogEditorEmoji3.e0.setFilterColor(MainUtil.l1());
                                            dialogEditorEmoji3.e0.setText(R.string.close);
                                            dialogEditorEmoji3.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.4
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogEditorEmoji.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogEditorEmoji3.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogEditorEmoji3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogEditorEmoji dialogEditorEmoji4 = DialogEditorEmoji.this;
                                                            if (dialogEditorEmoji4.c0 == null) {
                                                                return;
                                                            }
                                                            dialogEditorEmoji4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogEditorEmoji3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorEmoji.5
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogEditorEmoji.this.dismiss();
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
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
