package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogPopupMenu extends MyDialogBottom {
    public static final /* synthetic */ int n0 = 0;
    public Context a0;
    public PopupMenuListener b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyRecyclerView f0;
    public MyLineText g0;
    public MainSelectAdapter h0;
    public String i0;
    public String j0;
    public String k0;
    public final boolean l0;
    public MainListLoader m0;

    /* loaded from: classes3.dex */
    public interface PopupMenuListener {
        void a(int i, String str, String str2);
    }

    public DialogPopupMenu(MainActivity mainActivity, int i, String str, String str2, boolean z, PopupMenuListener popupMenuListener) {
        super(mainActivity, i);
        this.w = MainApp.g1;
        if (i != 0) {
            this.x = true;
        }
        this.a0 = getContext();
        this.i0 = str;
        this.j0 = str2;
        this.l0 = z;
        this.b0 = popupMenuListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPopupMenu.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogPopupMenu dialogPopupMenu = DialogPopupMenu.this;
                Context context = dialogPopupMenu.a0;
                if (context != null) {
                    MyDialogLinear myDialogLinear = new MyDialogLinear(context);
                    myDialogLinear.setOrientation(1);
                    myDialogLinear.setRoundUp(true);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    myDialogLinear.addView(myLineFrame, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    int i2 = MainApp.f1;
                    myRoundImage.setCircleRadius(i2 / 2.0f);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(myRoundImage, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setMaxLines(2);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    appCompatTextView.setTextSize(1, 16.0f);
                    int G = (int) MainUtil.G(context, 72.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, G);
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(appCompatTextView, layoutParams2);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams3.bottomMargin = MainApp.G1;
                    layoutParams3.weight = 1.0f;
                    myDialogLinear.addView(myRecyclerView, layoutParams3);
                    dialogPopupMenu.c0 = myDialogLinear;
                    dialogPopupMenu.d0 = myRoundImage;
                    dialogPopupMenu.e0 = appCompatTextView;
                    dialogPopupMenu.f0 = myRecyclerView;
                    Handler handler2 = dialogPopupMenu.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPopupMenu.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v11, types: [com.mycompany.app.main.MainSelectAdapter, androidx.recyclerview.widget.RecyclerView$Adapter] */
                        /* JADX WARN: Type inference failed for: r2v23, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogPopupMenu dialogPopupMenu2 = DialogPopupMenu.this;
                            if (dialogPopupMenu2.c0 != null && dialogPopupMenu2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogPopupMenu2.e0.setTextColor(-328966);
                                } else {
                                    dialogPopupMenu2.e0.setTextColor(-16777216);
                                }
                                dialogPopupMenu2.k0 = MainUtil.O1(dialogPopupMenu2.i0);
                                String D0 = MainUtil.D0(dialogPopupMenu2.i0);
                                if (TextUtils.isEmpty(D0)) {
                                    D0 = dialogPopupMenu2.i0;
                                }
                                boolean z2 = false;
                                if (dialogPopupMenu2.d0 != null) {
                                    if (TextUtils.isEmpty(dialogPopupMenu2.i0)) {
                                        dialogPopupMenu2.d0.p(-460552, R.drawable.outline_public_black_24, dialogPopupMenu2.k0, null);
                                    } else {
                                        Bitmap n4 = MainUtil.n4(dialogPopupMenu2.k0);
                                        if (MainUtil.f6(n4)) {
                                            dialogPopupMenu2.d0.setIconSmall(true);
                                            dialogPopupMenu2.d0.setImageBitmap(n4);
                                        } else {
                                            ?? obj = new Object();
                                            obj.f16550a = 18;
                                            obj.f16551c = 11;
                                            obj.g = dialogPopupMenu2.i0;
                                            dialogPopupMenu2.m0 = new MainListLoader(dialogPopupMenu2.a0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogPopupMenu.8
                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void a(MainItem.ChildItem childItem, View view) {
                                                    DialogPopupMenu dialogPopupMenu3 = DialogPopupMenu.this;
                                                    MyRoundImage myRoundImage2 = dialogPopupMenu3.d0;
                                                    if (myRoundImage2 == null) {
                                                        return;
                                                    }
                                                    myRoundImage2.p(-460552, R.drawable.outline_public_black_24, dialogPopupMenu3.k0, null);
                                                }

                                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                                public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                                    DialogPopupMenu dialogPopupMenu3 = DialogPopupMenu.this;
                                                    if (dialogPopupMenu3.d0 == null) {
                                                        return;
                                                    }
                                                    if (MainUtil.f6(bitmap)) {
                                                        dialogPopupMenu3.d0.setIconSmall(true);
                                                        dialogPopupMenu3.d0.setImageBitmap(bitmap);
                                                    } else {
                                                        dialogPopupMenu3.d0.p(-460552, R.drawable.outline_public_black_24, dialogPopupMenu3.k0, null);
                                                    }
                                                }
                                            });
                                            dialogPopupMenu2.d0.setTag(0);
                                            dialogPopupMenu2.m0.e(obj, dialogPopupMenu2.d0);
                                        }
                                    }
                                }
                                dialogPopupMenu2.e0.setText(D0);
                                ArrayList arrayList = new ArrayList();
                                int i3 = 4;
                                if (MainApp.K1) {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_visibility_dark_24, R.string.preview));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_add_box_dark_24, R.string.new_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_photo_library_dark_24, R.string.only_image));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_cloud_download_dark_24, R.string.image_list));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_block_dark_24, R.string.pop_allow));
                                } else {
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.drawable.outline_visibility_black_24, R.string.preview));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.drawable.outline_add_box_black_24, R.string.new_url));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.drawable.outline_photo_library_black_24, R.string.only_image));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(3, R.drawable.outline_cloud_download_black_24, R.string.image_list));
                                    arrayList.add(new MainSelectAdapter.MainSelectItem(4, R.drawable.outline_block_black_24, R.string.pop_allow));
                                }
                                if (!dialogPopupMenu2.l0) {
                                    i3 = -1;
                                }
                                MainSelectAdapter.MainSelectListener mainSelectListener = new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogPopupMenu.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i4) {
                                        DialogPopupMenu dialogPopupMenu3 = DialogPopupMenu.this;
                                        PopupMenuListener popupMenuListener2 = dialogPopupMenu3.b0;
                                        if (popupMenuListener2 == null) {
                                            return;
                                        }
                                        popupMenuListener2.a(i4, dialogPopupMenu3.i0, dialogPopupMenu3.j0);
                                    }
                                };
                                ?? adapter = new RecyclerView.Adapter();
                                adapter.d = arrayList;
                                adapter.e = 5;
                                adapter.f = i3;
                                if (i3 != -1) {
                                    z2 = true;
                                }
                                adapter.h = z2;
                                adapter.i = mainSelectListener;
                                dialogPopupMenu2.h0 = adapter;
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogPopupMenu2.f0);
                                dialogPopupMenu2.f0.setAdapter(dialogPopupMenu2.h0);
                                dialogPopupMenu2.g(dialogPopupMenu2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPopupMenu.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context2;
                                        int i4 = DialogPopupMenu.n0;
                                        final DialogPopupMenu dialogPopupMenu3 = DialogPopupMenu.this;
                                        if (dialogPopupMenu3.t != null && dialogPopupMenu3.c0 != null && (context2 = dialogPopupMenu3.a0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context2, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogPopupMenu3.g0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogPopupMenu3.g0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogPopupMenu3.g0.setTextColor(-14784824);
                                            }
                                            dialogPopupMenu3.g0.setFilterColor(MainUtil.l1());
                                            dialogPopupMenu3.g0.setText(R.string.close);
                                            dialogPopupMenu3.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPopupMenu.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogPopupMenu.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams4 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams4.f611c = 80;
                                                dialogPopupMenu3.t.addView(r, layoutParams4);
                                                Handler handler3 = dialogPopupMenu3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPopupMenu.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogPopupMenu dialogPopupMenu4 = DialogPopupMenu.this;
                                                            if (dialogPopupMenu4.c0 == null) {
                                                                return;
                                                            }
                                                            dialogPopupMenu4.show();
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogPopupMenu3.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPopupMenu.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogPopupMenu.this.dismiss();
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
        MainListLoader mainListLoader = this.m0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.m0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
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
        this.e0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }
}
