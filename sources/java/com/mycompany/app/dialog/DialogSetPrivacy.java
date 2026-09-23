package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.setting.SettingPrivacy;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetPrivacy extends MyDialogBottom {
    public MainActivity a0;
    public Context b0;
    public TabDeletedListener c0;
    public final boolean d0;
    public final boolean e0;
    public int f0;
    public MyDialogLinear g0;
    public MyButtonImage h0;
    public MyRecyclerView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public boolean l0;
    public boolean m0;
    public boolean n0;

    /* renamed from: com.mycompany.app.dialog.DialogSetPrivacy$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler = DialogSetPrivacy.this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogSetPrivacy dialogSetPrivacy = DialogSetPrivacy.this;
                    Context context = dialogSetPrivacy.b0;
                    if (context != null) {
                        try {
                            WebViewDatabase.getInstance(context).clearHttpAuthUsernamePassword();
                        } catch (Exception | NoSuchMethodError unused) {
                        }
                        Handler handler2 = dialogSetPrivacy.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.8.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                Context context2 = DialogSetPrivacy.this.b0;
                                if (context2 == null) {
                                    return;
                                }
                                MainUtil.Q6(context2);
                                DialogSetPrivacy dialogSetPrivacy2 = DialogSetPrivacy.this;
                                dialogSetPrivacy2.s(new AnonymousClass9());
                            }
                        });
                    }
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogSetPrivacy$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00ca A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x008f  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetPrivacy.AnonymousClass9.run():void");
        }
    }

    /* loaded from: classes3.dex */
    public interface TabDeletedListener {
        void a();
    }

    public DialogSetPrivacy(MainActivity mainActivity, boolean z, boolean z2, TabDeletedListener tabDeletedListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = tabDeletedListener;
        this.d0 = z;
        this.e0 = z2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                final DialogSetPrivacy dialogSetPrivacy = DialogSetPrivacy.this;
                Context context = dialogSetPrivacy.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    if (dialogSetPrivacy.e0) {
                        MyLineFrame myLineFrame = new MyLineFrame(context);
                        myLineFrame.setLinePad(MainApp.E1);
                        myLineFrame.setLineDn(true);
                        q.addView(myLineFrame, -1, MainApp.g1);
                        myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        int i = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                        layoutParams.gravity = 8388613;
                        layoutParams.setMarginEnd(MainApp.F1);
                        myLineFrame.addView(myButtonImage, layoutParams);
                    } else {
                        myButtonImage = null;
                    }
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(u, layoutParams2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetPrivacy.g0 = q;
                    dialogSetPrivacy.h0 = myButtonImage;
                    dialogSetPrivacy.i0 = u;
                    dialogSetPrivacy.j0 = myLineText;
                    Handler handler2 = dialogSetPrivacy.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetPrivacy dialogSetPrivacy2 = DialogSetPrivacy.this;
                            if (dialogSetPrivacy2.g0 != null && dialogSetPrivacy2.b0 != null) {
                                MyButtonImage myButtonImage2 = dialogSetPrivacy2.h0;
                                if (myButtonImage2 != null) {
                                    if (MainApp.K1) {
                                        myButtonImage2.setImageResource(R.drawable.outline_settings_dark_20);
                                        dialogSetPrivacy2.h0.setBgPreColor(-12632257);
                                        dialogSetPrivacy2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                        dialogSetPrivacy2.j0.setTextColor(-328966);
                                    } else {
                                        myButtonImage2.setImageResource(R.drawable.outline_settings_black_20);
                                        dialogSetPrivacy2.h0.setBgPreColor(553648128);
                                        dialogSetPrivacy2.j0.setBackgroundResource(R.drawable.selector_list_back);
                                        dialogSetPrivacy2.j0.setTextColor(-14784824);
                                    }
                                } else if (MainApp.K1) {
                                    dialogSetPrivacy2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetPrivacy2.j0.setTextColor(-328966);
                                } else {
                                    dialogSetPrivacy2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetPrivacy2.j0.setTextColor(-14784824);
                                }
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetPrivacy2.k0 = new SettingListAdapter(dialogSetPrivacy2.B(), true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z3, int i3) {
                                        DialogSetPrivacy dialogSetPrivacy3 = DialogSetPrivacy.this;
                                        boolean z4 = dialogSetPrivacy3.d0;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            if (i2 == 5) {
                                                                if (z3) {
                                                                    dialogSetPrivacy3.f0 |= 64;
                                                                } else {
                                                                    dialogSetPrivacy3.f0 &= -65;
                                                                }
                                                                if (!z4) {
                                                                    dialogSetPrivacy3.C();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        if (z3) {
                                                            dialogSetPrivacy3.f0 |= 32;
                                                        } else {
                                                            dialogSetPrivacy3.f0 &= -33;
                                                        }
                                                        if (!z4) {
                                                            dialogSetPrivacy3.C();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    if (z3) {
                                                        dialogSetPrivacy3.f0 |= 16;
                                                    } else {
                                                        dialogSetPrivacy3.f0 &= -17;
                                                    }
                                                    if (!z4) {
                                                        dialogSetPrivacy3.C();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                if (z3) {
                                                    dialogSetPrivacy3.f0 |= 8;
                                                } else {
                                                    dialogSetPrivacy3.f0 &= -9;
                                                }
                                                if (!z4) {
                                                    dialogSetPrivacy3.C();
                                                    return;
                                                }
                                                return;
                                            }
                                            if (z3) {
                                                dialogSetPrivacy3.f0 |= 4;
                                            } else {
                                                dialogSetPrivacy3.f0 &= -5;
                                            }
                                            if (!z4) {
                                                dialogSetPrivacy3.C();
                                                return;
                                            }
                                            return;
                                        }
                                        if (z3) {
                                            dialogSetPrivacy3.f0 |= 2;
                                        } else {
                                            dialogSetPrivacy3.f0 &= -3;
                                        }
                                        if (!z4) {
                                            dialogSetPrivacy3.C();
                                        }
                                    }
                                });
                                dialogSetPrivacy2.i0.setLayoutManager(linearLayoutManager);
                                dialogSetPrivacy2.i0.setAdapter(dialogSetPrivacy2.k0);
                                dialogSetPrivacy2.i0.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.4
                                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                    public final void b(RecyclerView recyclerView, int i2, int i3) {
                                        DialogSetPrivacy dialogSetPrivacy3 = DialogSetPrivacy.this;
                                        MyRecyclerView myRecyclerView = dialogSetPrivacy3.i0;
                                        if (myRecyclerView == null) {
                                            return;
                                        }
                                        if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                            dialogSetPrivacy3.i0.w0();
                                        } else {
                                            dialogSetPrivacy3.i0.r0();
                                        }
                                    }
                                });
                                MyButtonImage myButtonImage3 = dialogSetPrivacy2.h0;
                                if (myButtonImage3 != null) {
                                    myButtonImage3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.5
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogSetPrivacy dialogSetPrivacy3 = DialogSetPrivacy.this;
                                            if (dialogSetPrivacy3.a0 == null) {
                                                return;
                                            }
                                            Intent intent = new Intent(dialogSetPrivacy3.b0, (Class<?>) SettingPrivacy.class);
                                            intent.putExtra("EXTRA_POPUP", true);
                                            dialogSetPrivacy3.a0.t0(intent, 35);
                                        }
                                    });
                                }
                                dialogSetPrivacy2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetPrivacy dialogSetPrivacy3 = DialogSetPrivacy.this;
                                        if (dialogSetPrivacy3.j0 != null && !dialogSetPrivacy3.m0) {
                                            dialogSetPrivacy3.m0 = true;
                                            Handler handler3 = dialogSetPrivacy3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.6.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    int i2;
                                                    DialogSetPrivacy dialogSetPrivacy4 = DialogSetPrivacy.this;
                                                    Context context2 = dialogSetPrivacy4.b0;
                                                    if (context2 != null) {
                                                        if (dialogSetPrivacy4.d0) {
                                                            int i3 = PrefWeb.s;
                                                            int i4 = dialogSetPrivacy4.f0;
                                                            if (i3 != i4) {
                                                                PrefWeb.s = i4;
                                                                PrefSet.f(context2, 14, i4, "mExitDelete2");
                                                            }
                                                            dialogSetPrivacy4.dismiss();
                                                            return;
                                                        }
                                                        MyLineText myLineText2 = dialogSetPrivacy4.j0;
                                                        if (myLineText2 != null) {
                                                            if (MainApp.K1) {
                                                                i2 = -8355712;
                                                            } else {
                                                                i2 = -2434342;
                                                            }
                                                            myLineText2.setTextColor(i2);
                                                            dialogSetPrivacy4.j0.setEnabled(false);
                                                            dialogSetPrivacy4.g0.e(0, 0, true, false);
                                                            int i5 = PrefWeb.r;
                                                            int i6 = dialogSetPrivacy4.f0;
                                                            if (i5 != i6) {
                                                                PrefWeb.r = i6;
                                                                PrefSet.f(dialogSetPrivacy4.b0, 14, i6, "mDataDelete2");
                                                            }
                                                            Context context3 = dialogSetPrivacy4.b0;
                                                            if (context3 == null) {
                                                                return;
                                                            }
                                                            if ((dialogSetPrivacy4.f0 & 4) == 4) {
                                                                MainUtil.k(context3);
                                                            }
                                                            if ((dialogSetPrivacy4.f0 & 8) != 8) {
                                                                dialogSetPrivacy4.s(new AnonymousClass9());
                                                            } else {
                                                                MainUtil.B(dialogSetPrivacy4.i, new AnonymousClass8());
                                                            }
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogSetPrivacy2.g(dialogSetPrivacy2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetPrivacy.7
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetPrivacy dialogSetPrivacy3 = DialogSetPrivacy.this;
                                        if (dialogSetPrivacy3.g0 == null) {
                                            return;
                                        }
                                        dialogSetPrivacy3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final ArrayList B() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        MyLineText myLineText = this.j0;
        if (myLineText == null) {
            return null;
        }
        if (this.d0) {
            this.f0 = PrefWeb.s;
            myLineText.setText(R.string.apply);
        } else {
            this.f0 = PrefWeb.r;
            myLineText.setText(R.string.delete);
            C();
        }
        int i = this.f0;
        if ((i & 2) == 2) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 4) == 4) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 8) == 8) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((i & 16) == 16) {
            z4 = true;
        } else {
            z4 = false;
        }
        if ((i & 32) == 32) {
            z5 = true;
        } else {
            z5 = false;
        }
        if ((i & 64) == 64) {
            z6 = true;
        } else {
            z6 = false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, R.string.recent_search, 0, 0, z, this.d0));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.history, 0, 0, z2, this.d0));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.cookie, R.string.cookie_info, 0, z3, this.d0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.cache, R.string.cache_info, 0, z4, this.d0));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.normal_tab, 0, 0, z5, this.d0));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.secret_tab, 0, 0, z6, this.d0));
        return arrayList;
    }

    public final void C() {
        int i;
        int i2;
        MyLineText myLineText = this.j0;
        if (myLineText == null) {
            return;
        }
        if (this.f0 == 0) {
            if (MainApp.K1) {
                i2 = -8355712;
            } else {
                i2 = -2434342;
            }
            myLineText.setTextColor(i2);
            this.j0.setEnabled(false);
            return;
        }
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -14784824;
        }
        myLineText.setTextColor(i);
        this.j0.setEnabled(true);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        if (this.l0) {
            this.l0 = false;
            TabDeletedListener tabDeletedListener = this.c0;
            if (tabDeletedListener != null) {
                tabDeletedListener.a();
            }
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyButtonImage myButtonImage = this.h0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h0 = null;
        }
        MyRecyclerView myRecyclerView = this.i0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.i0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        SettingListAdapter settingListAdapter = this.k0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
