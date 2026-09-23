package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookLink;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookLink;
import com.mycompany.app.dialog.DialogSetAdblock;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingClean;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogBlockLink extends MyDialogBottom {
    public static final /* synthetic */ int w0 = 0;
    public WebViewActivity a0;
    public Context b0;
    public DialogSetAdblock.DialogAdsListener c0;
    public String d0;
    public String e0;
    public String f0;
    public MyDialogLinear g0;
    public MyRoundImage h0;
    public AppCompatTextView i0;
    public MyButtonImage j0;
    public MyRecyclerView k0;
    public SettingListAdapter l0;
    public DialogTask m0;
    public DialogListBook n0;
    public MyPopupMenu o0;
    public int p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;
    public boolean t0;
    public boolean u0;
    public MainListLoader v0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;

        public DialogTask(DialogBlockLink dialogBlockLink, String str, boolean z) {
            WeakReference weakReference = new WeakReference(dialogBlockLink);
            this.e = weakReference;
            DialogBlockLink dialogBlockLink2 = (DialogBlockLink) weakReference.get();
            if (dialogBlockLink2 != null) {
                this.f = str;
                this.g = z;
                if (dialogBlockLink2.g0 == null) {
                    return;
                }
                dialogBlockLink2.setCanceledOnTouchOutside(false);
                dialogBlockLink2.g0.setBlockTouch(true);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogBlockLink dialogBlockLink;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockLink = (DialogBlockLink) weakReference.get()) != null && !this.f12839c) {
                boolean z = this.g;
                String str = this.f;
                if (z) {
                    DataBookLink.m(dialogBlockLink.b0).k(str);
                    DbBookLink.b(dialogBlockLink.b0, str);
                    return;
                }
                DataBookLink m = DataBookLink.m(dialogBlockLink.b0);
                m.getClass();
                try {
                    ArrayList arrayList = m.f12908c;
                    if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                        m.f12908c.remove(str);
                    }
                } catch (Exception unused) {
                }
                Context context = dialogBlockLink.b0;
                DbBookLink dbBookLink = DbBookLink.f12935c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    DbUtil.a(DbBookLink.a(context).getWritableDatabase(), "DbBookLink_table", "_path=?", new String[]{str});
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogBlockLink dialogBlockLink;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockLink = (DialogBlockLink) weakReference.get()) != null) {
                dialogBlockLink.m0 = null;
                if (dialogBlockLink.g0 == null) {
                    return;
                }
                dialogBlockLink.setCanceledOnTouchOutside(true);
                dialogBlockLink.g0.setBlockTouch(false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogBlockLink dialogBlockLink;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBlockLink = (DialogBlockLink) weakReference.get()) != null) {
                dialogBlockLink.m0 = null;
                if (dialogBlockLink.g0 == null) {
                    return;
                }
                dialogBlockLink.setCanceledOnTouchOutside(true);
                dialogBlockLink.g0.setBlockTouch(false);
            }
        }
    }

    public DialogBlockLink(WebViewActivity webViewActivity, String str, String str2, DialogSetAdblock.DialogAdsListener dialogAdsListener) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = dialogAdsListener;
        this.d0 = MainUtil.S6(str);
        String S6 = MainUtil.S6(str2);
        this.e0 = S6;
        this.f0 = MainUtil.I1(S6, true);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockLink.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogBlockLink dialogBlockLink = DialogBlockLink.this;
                Context context = dialogBlockLink.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, G);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(myRoundImage, layoutParams);
                    AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i2.setEllipsize(TextUtils.TruncateAt.END);
                    i2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 16;
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.h1);
                    myLineFrame.addView(i2, layoutParams2);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams3.gravity = 8388629;
                    layoutParams3.setMarginEnd(MainApp.F1);
                    myLineFrame.addView(myButtonImage, layoutParams3);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams4.weight = 1.0f;
                    q.addView(u, layoutParams4);
                    dialogBlockLink.g0 = q;
                    dialogBlockLink.h0 = myRoundImage;
                    dialogBlockLink.i0 = i2;
                    dialogBlockLink.j0 = myButtonImage;
                    dialogBlockLink.k0 = u;
                    Handler handler2 = dialogBlockLink.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBlockLink.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v15, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogBlockLink dialogBlockLink2 = DialogBlockLink.this;
                            if (dialogBlockLink2.g0 != null && dialogBlockLink2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogBlockLink2.i0.setTextColor(-328966);
                                    dialogBlockLink2.j0.setImageResource(R.drawable.outline_settings_dark_20);
                                    dialogBlockLink2.j0.setBgPreColor(-12632257);
                                } else {
                                    dialogBlockLink2.i0.setTextColor(-16777216);
                                    dialogBlockLink2.j0.setImageResource(R.drawable.outline_settings_black_20);
                                    dialogBlockLink2.j0.setBgPreColor(553648128);
                                }
                                String str3 = dialogBlockLink2.e0;
                                if (dialogBlockLink2.h0 != null) {
                                    if (TextUtils.isEmpty(str3)) {
                                        dialogBlockLink2.D();
                                    } else {
                                        ?? obj = new Object();
                                        obj.f16550a = 18;
                                        obj.f16551c = 11;
                                        obj.g = str3;
                                        Bitmap b = MainListLoader.b(obj);
                                        if (MainUtil.f6(b)) {
                                            dialogBlockLink2.h0.setIconSmall(true);
                                            dialogBlockLink2.h0.setImageBitmap(b);
                                        } else {
                                            dialogBlockLink2.v0 = new MainListLoader(dialogBlockLink2.b0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.6
                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void a(MainItem.ChildItem childItem, View view) {
                                                    int i4 = DialogBlockLink.w0;
                                                    DialogBlockLink.this.D();
                                                }

                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                                    DialogBlockLink dialogBlockLink3 = DialogBlockLink.this;
                                                    if (dialogBlockLink3.h0 == null) {
                                                        return;
                                                    }
                                                    if (MainUtil.f6(bitmap)) {
                                                        dialogBlockLink3.h0.setIconSmall(true);
                                                        dialogBlockLink3.h0.setImageBitmap(bitmap);
                                                    } else {
                                                        dialogBlockLink3.D();
                                                    }
                                                }
                                            });
                                            dialogBlockLink2.h0.setTag(0);
                                            dialogBlockLink2.v0.e(obj, dialogBlockLink2.h0);
                                        }
                                    }
                                }
                                String D0 = MainUtil.D0(dialogBlockLink2.e0);
                                if (TextUtils.isEmpty(D0)) {
                                    dialogBlockLink2.i0.setText(dialogBlockLink2.e0);
                                } else {
                                    dialogBlockLink2.i0.setText(D0);
                                }
                                dialogBlockLink2.p0 = PrefSecret.B;
                                dialogBlockLink2.q0 = DataBookLink.m(dialogBlockLink2.b0).n(dialogBlockLink2.f0);
                                dialogBlockLink2.r0 = DataBookLink.m(dialogBlockLink2.b0).o(dialogBlockLink2.e0);
                                dialogBlockLink2.s0 = PrefWeb.o;
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogBlockLink2.l0 = new SettingListAdapter(dialogBlockLink2.B(), true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.3
                                    /* JADX WARN: Type inference failed for: r10v10, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z, int i5) {
                                        boolean z2;
                                        DialogListBook dialogListBook;
                                        final DialogBlockLink dialogBlockLink3 = DialogBlockLink.this;
                                        if (i4 != 0) {
                                            if (i4 != 2) {
                                                if (i4 != 3) {
                                                    if (i4 != 4) {
                                                        int i6 = DialogBlockLink.w0;
                                                        return;
                                                    }
                                                    if (dialogBlockLink3.a0 != null && (dialogListBook = dialogBlockLink3.n0) == null) {
                                                        if (dialogListBook != null) {
                                                            dialogListBook.dismiss();
                                                            dialogBlockLink3.n0 = null;
                                                        }
                                                        ?? obj2 = new Object();
                                                        obj2.f16734a = 22;
                                                        obj2.i = true;
                                                        obj2.f = R.string.blocked_link;
                                                        DialogListBook dialogListBook2 = new DialogListBook(dialogBlockLink3.a0, obj2, dialogBlockLink3.d0, null);
                                                        dialogBlockLink3.n0 = dialogListBook2;
                                                        dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.7
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i7 = DialogBlockLink.w0;
                                                                DialogBlockLink dialogBlockLink4 = DialogBlockLink.this;
                                                                DialogListBook dialogListBook3 = dialogBlockLink4.n0;
                                                                if (dialogListBook3 != null) {
                                                                    dialogListBook3.dismiss();
                                                                    dialogBlockLink4.n0 = null;
                                                                }
                                                                dialogBlockLink4.C(false);
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    return;
                                                }
                                                dialogBlockLink3.r0 = z;
                                                String str4 = dialogBlockLink3.e0;
                                                DialogTask dialogTask = dialogBlockLink3.m0;
                                                if (dialogTask != null) {
                                                    dialogTask.f12839c = true;
                                                }
                                                dialogBlockLink3.m0 = null;
                                                DialogTask dialogTask2 = new DialogTask(dialogBlockLink3, str4, z);
                                                dialogBlockLink3.m0 = dialogTask2;
                                                dialogTask2.b(dialogBlockLink3.b0);
                                                return;
                                            }
                                            dialogBlockLink3.q0 = z;
                                            String str5 = dialogBlockLink3.f0;
                                            DialogTask dialogTask3 = dialogBlockLink3.m0;
                                            if (dialogTask3 != null) {
                                                dialogTask3.f12839c = true;
                                            }
                                            dialogBlockLink3.m0 = null;
                                            DialogTask dialogTask4 = new DialogTask(dialogBlockLink3, str5, z);
                                            dialogBlockLink3.m0 = dialogTask4;
                                            dialogTask4.b(dialogBlockLink3.b0);
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu = dialogBlockLink3.o0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogBlockLink3.Y = null;
                                                myPopupMenu.a();
                                                dialogBlockLink3.o0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList = new ArrayList();
                                                final int length = MainConst.Y.length;
                                                for (int i7 = 0; i7 < length; i7++) {
                                                    int i8 = MainConst.Y[i7];
                                                    int i9 = MainConst.Z[i8];
                                                    if (PrefSecret.B == i8) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(i7, i9, z2));
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogBlockLink3.a0, dialogBlockLink3.g0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.8
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i10 = DialogBlockLink.w0;
                                                        DialogBlockLink dialogBlockLink4 = DialogBlockLink.this;
                                                        MyPopupMenu myPopupMenu3 = dialogBlockLink4.o0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogBlockLink4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogBlockLink4.o0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i10) {
                                                        int i11 = MainConst.Y[i10 % length];
                                                        if (i11 != 0) {
                                                            DialogBlockLink dialogBlockLink4 = DialogBlockLink.this;
                                                            if (i11 == 4) {
                                                                if (PrefSecret.B != i11 && MainUtil.e(dialogBlockLink4.b0, true)) {
                                                                    PrefSecret.B = i11;
                                                                    PrefSecret.C = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefSecret.t(dialogBlockLink4.b0);
                                                                    if (dialogBlockLink4.l0 != null) {
                                                                        dialogBlockLink4.p0 = PrefSecret.B;
                                                                        dialogBlockLink4.q0 = DataBookLink.m(dialogBlockLink4.b0).n(dialogBlockLink4.f0);
                                                                        dialogBlockLink4.r0 = DataBookLink.m(dialogBlockLink4.b0).o(dialogBlockLink4.e0);
                                                                        dialogBlockLink4.l0.E(dialogBlockLink4.B());
                                                                        return true;
                                                                    }
                                                                }
                                                            } else if (dialogBlockLink4.a0 != null) {
                                                                Intent i22 = MainUtil.i2(dialogBlockLink4.b0, i11);
                                                                i22.putExtra("EXTRA_PASS", 2);
                                                                i22.putExtra("EXTRA_TYPE", 1);
                                                                dialogBlockLink4.a0.t0(i22, 3);
                                                                return true;
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogBlockLink3.o0 = myPopupMenu2;
                                                dialogBlockLink3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogBlockLink2.k0.setLayoutManager(linearLayoutManager);
                                dialogBlockLink2.k0.setAdapter(dialogBlockLink2.l0);
                                dialogBlockLink2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogBlockLink dialogBlockLink3 = DialogBlockLink.this;
                                        if (dialogBlockLink3.a0 == null) {
                                            return;
                                        }
                                        Intent intent = new Intent(dialogBlockLink3.b0, (Class<?>) SettingClean.class);
                                        intent.putExtra("EXTRA_POPUP", true);
                                        intent.putExtra("EXTRA_NOTI", true);
                                        if (PrefSecret.B == 0) {
                                            intent.putExtra("EXTRA_INDEX", 17);
                                        } else {
                                            intent.putExtra("EXTRA_INDEX", 16);
                                        }
                                        intent.putExtra("EXTRA_PATH", dialogBlockLink3.d0);
                                        dialogBlockLink3.a0.t0(intent, 35);
                                    }
                                });
                                dialogBlockLink2.g(dialogBlockLink2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogBlockLink.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogBlockLink dialogBlockLink3 = DialogBlockLink.this;
                                        if (dialogBlockLink3.g0 == null) {
                                            return;
                                        }
                                        dialogBlockLink3.show();
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
        ArrayList arrayList = new ArrayList();
        if (PrefSecret.B == 0) {
            arrayList.add(new SettingListAdapter.SettingItem(0, R.string.lock_type, MainConst.Z[PrefSecret.B], 0, 0));
            arrayList.add(new SettingListAdapter.SettingItem(1, R.string.password_lock_1, 0, 0, 0));
            return arrayList;
        }
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.link_block_site, 0, 0, this.q0, true));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.link_block_page, 0, 0, this.r0, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.blocked_link, 0, 0, 0));
        return arrayList;
    }

    public final void C(boolean z) {
        if (this.l0 != null) {
            boolean n = DataBookLink.m(this.b0).n(this.f0);
            boolean o = DataBookLink.m(this.b0).o(this.e0);
            int i = this.p0;
            int i2 = PrefSecret.B;
            if (i != i2 || this.q0 != n || this.r0 != o) {
                this.p0 = i2;
                this.q0 = n;
                this.r0 = o;
                this.l0.E(B());
            }
            DialogListBook dialogListBook = this.n0;
            if (dialogListBook != null) {
                dialogListBook.s(z);
            }
        }
    }

    public final void D() {
        MyRoundImage myRoundImage = this.h0;
        if (myRoundImage == null) {
            return;
        }
        myRoundImage.setIconSmall(false);
        String I1 = MainUtil.I1(this.e0, true);
        if (TextUtils.isEmpty(I1)) {
            I1 = this.e0;
        } else if (I1.length() > 2 && I1.startsWith(".", 1)) {
            I1 = I1.substring(2);
        } else if (I1.length() > 4 && I1.startsWith("www.")) {
            I1 = I1.substring(4);
        }
        this.h0.p(-460552, R.drawable.outline_public_black_24, I1, null);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z;
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.m0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.m0 = null;
        DialogListBook dialogListBook = this.n0;
        if (dialogListBook != null) {
            dialogListBook.dismiss();
            this.n0 = null;
        }
        DialogSetAdblock.DialogAdsListener dialogAdsListener = this.c0;
        if (dialogAdsListener != null) {
            if (this.s0 != PrefWeb.o) {
                z = true;
            } else {
                z = false;
            }
            dialogAdsListener.a(false, z, this.t0, !this.u0, false, null);
            this.c0 = null;
        }
        MainListLoader mainListLoader = this.v0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.v0 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundImage myRoundImage = this.h0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.h0 = null;
        }
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j0 = null;
        }
        MyRecyclerView myRecyclerView = this.k0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k0 = null;
        }
        SettingListAdapter settingListAdapter = this.l0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.l0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
