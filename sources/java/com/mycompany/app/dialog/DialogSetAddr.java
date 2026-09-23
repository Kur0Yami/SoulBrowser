package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.AddrIconAdapter;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.quick.MenuDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAddrView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetAddr extends MyDialogBottom {
    public static final /* synthetic */ int v0 = 0;
    public Activity a0;
    public Context b0;
    public MyDialogLinear c0;
    public MyAddrView d0;
    public MyRecyclerView e0;
    public AppCompatTextView f0;
    public LinearLayout g0;
    public MyButtonImage[] h0;
    public RelativeLayout i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyLineText m0;
    public AddrIconAdapter n0;
    public MyManagerLinear o0;
    public MenuDragHelper p0;
    public ItemTouchHelper q0;
    public boolean r0;
    public int[] s0;
    public DialogSetMsg t0;
    public boolean u0;

    public DialogSetAddr(Activity activity) {
        super(activity);
        this.a0 = activity;
        this.b0 = getContext();
        this.s0 = MainUtil.a2(PrefMain.H);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAddr.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetAddr dialogSetAddr = DialogSetAddr.this;
                Context context = dialogSetAddr.b0;
                if (context != null) {
                    int i = R.id.item_info_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 80.0f);
                    MyAddrView myAddrView = new MyAddrView(context);
                    frameLayout.addView(myAddrView, -1, G);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, false, false);
                    frameLayout.addView(u, -1, G);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    frameLayout2.setMinimumHeight((int) MainUtil.G(context, 120.0f));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = (int) MainUtil.G(context, 60.0f);
                    frameLayout.addView(frameLayout2, layoutParams);
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    frameLayout3.setMinimumHeight((int) MainUtil.G(context, 100.0f));
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = (int) MainUtil.G(context, 20.0f);
                    frameLayout2.addView(frameLayout3, layoutParams2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setTextSize(1, 14.0f);
                    appCompatTextView.setText(R.string.not_used);
                    appCompatTextView.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.setMarginStart(MainApp.E1);
                    frameLayout3.addView(appCompatTextView, layoutParams3);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setBaselineAligned(false);
                    linearLayout.setOrientation(0);
                    linearLayout.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams4.gravity = 8388627;
                    frameLayout3.addView(linearLayout, layoutParams4);
                    int G2 = (int) MainUtil.G(context, 24.0f);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    float f = G2;
                    myButtonImage.l(f, true);
                    myButtonImage.setBgPreRadius(f);
                    myButtonImage.setVisibility(4);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams5.weight = 1.0f;
                    linearLayout.addView(myButtonImage, layoutParams5);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.l(f, true);
                    myButtonImage2.setBgPreRadius(f);
                    myButtonImage2.setVisibility(4);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams6.weight = 1.0f;
                    linearLayout.addView(myButtonImage2, layoutParams6);
                    MyButtonImage myButtonImage3 = new MyButtonImage(context);
                    myButtonImage3.setScaleType(scaleType);
                    myButtonImage3.l(f, true);
                    myButtonImage3.setBgPreRadius(f);
                    myButtonImage3.setVisibility(4);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams7.weight = 1.0f;
                    linearLayout.addView(myButtonImage3, layoutParams7);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    int i2 = MainApp.E1;
                    relativeLayout.setPadding(i2, i2, i2, i2);
                    relativeLayout.setVisibility(4);
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams8.gravity = 8388627;
                    frameLayout2.addView(relativeLayout, layoutParams8);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setId(i);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setText(R.string.quick_guide_1);
                    relativeLayout.addView(appCompatTextView2, -2, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    j.setText(R.string.addr_icon_info);
                    RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams9.addRule(3, i);
                    layoutParams9.topMargin = MainApp.F1;
                    relativeLayout.addView(j, layoutParams9);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f2 = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f2.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f2, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetAddr.c0 = q;
                    dialogSetAddr.d0 = myAddrView;
                    dialogSetAddr.e0 = u;
                    dialogSetAddr.f0 = appCompatTextView;
                    dialogSetAddr.g0 = linearLayout;
                    dialogSetAddr.i0 = relativeLayout;
                    dialogSetAddr.j0 = appCompatTextView2;
                    dialogSetAddr.k0 = j;
                    dialogSetAddr.l0 = l;
                    dialogSetAddr.m0 = s;
                    dialogSetAddr.h0 = r0;
                    MyButtonImage[] myButtonImageArr = {myButtonImage, myButtonImage2, myButtonImage3};
                    Handler handler2 = dialogSetAddr.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAddr.2
                        /* JADX WARN: Type inference failed for: r1v13, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r1v14, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.main.AddrIconAdapter] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetAddr dialogSetAddr2 = DialogSetAddr.this;
                            if (dialogSetAddr2.c0 != null && dialogSetAddr2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetAddr2.f0.setTextColor(-328966);
                                    dialogSetAddr2.j0.setTextColor(-328966);
                                    dialogSetAddr2.k0.setTextColor(-328966);
                                    dialogSetAddr2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetAddr2.m0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetAddr2.l0.setTextColor(-328966);
                                    dialogSetAddr2.m0.setTextColor(-328966);
                                } else {
                                    dialogSetAddr2.f0.setTextColor(-16777216);
                                    dialogSetAddr2.j0.setTextColor(-16777216);
                                    dialogSetAddr2.k0.setTextColor(-16777216);
                                    dialogSetAddr2.l0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetAddr2.m0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetAddr2.l0.setTextColor(-14784824);
                                    dialogSetAddr2.m0.setTextColor(-16777216);
                                }
                                dialogSetAddr2.d0.setSettingColor(MainUtil.s0(0, false));
                                for (int i3 = 0; i3 < 3; i3++) {
                                    dialogSetAddr2.h0[i3].setTag(Integer.valueOf(i3));
                                    dialogSetAddr2.h0[i3].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            ArrayList arrayList;
                                            MenuIconAdapter.MainMenuItem mainMenuItem;
                                            DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                            AddrIconAdapter addrIconAdapter = dialogSetAddr3.n0;
                                            if (addrIconAdapter == null) {
                                                return;
                                            }
                                            int intValue = ((Integer) view.getTag()).intValue();
                                            if (addrIconAdapter.g != null && (arrayList = addrIconAdapter.h) != null && intValue >= 0 && intValue < arrayList.size() && (mainMenuItem = (MenuIconAdapter.MainMenuItem) addrIconAdapter.h.remove(intValue)) != null) {
                                                addrIconAdapter.g.add(mainMenuItem);
                                                addrIconAdapter.g();
                                            }
                                            dialogSetAddr3.D();
                                        }
                                    });
                                }
                                dialogSetAddr2.o0 = new LinearLayoutManager(0);
                                MyRecyclerView myRecyclerView = dialogSetAddr2.e0;
                                AddrIconAdapter.AddrListener addrListener = new AddrIconAdapter.AddrListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.4
                                    @Override // com.mycompany.app.main.AddrIconAdapter.AddrListener
                                    public final void a(int i4) {
                                        AddrIconAdapter addrIconAdapter;
                                        MenuIconAdapter.MainMenuItem mainMenuItem;
                                        DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                        if (!dialogSetAddr3.r0 && (addrIconAdapter = dialogSetAddr3.n0) != null) {
                                            ArrayList arrayList = addrIconAdapter.g;
                                            if (arrayList != null && i4 >= addrIconAdapter.d && i4 < arrayList.size() && (mainMenuItem = (MenuIconAdapter.MainMenuItem) addrIconAdapter.g.remove(i4)) != null) {
                                                if (addrIconAdapter.h == null) {
                                                    addrIconAdapter.h = new ArrayList();
                                                }
                                                addrIconAdapter.h.add(mainMenuItem);
                                                addrIconAdapter.g();
                                            }
                                            dialogSetAddr3.D();
                                        }
                                    }

                                    @Override // com.mycompany.app.main.AddrIconAdapter.AddrListener
                                    public final void b(AddrIconAdapter.AddrHolder addrHolder) {
                                        ItemTouchHelper itemTouchHelper;
                                        DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                        if (!dialogSetAddr3.r0 && dialogSetAddr3.n0 != null && (itemTouchHelper = dialogSetAddr3.q0) != null) {
                                            itemTouchHelper.t(addrHolder);
                                        }
                                    }
                                };
                                ?? adapter = new RecyclerView.Adapter();
                                adapter.d = 1;
                                adapter.e = myRecyclerView;
                                adapter.f = addrListener;
                                adapter.w(false, false);
                                adapter.i = PrefZone.m0;
                                dialogSetAddr2.n0 = adapter;
                                MenuDragHelper menuDragHelper = new MenuDragHelper(new MenuDragHelper.MenuDragListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.5
                                    @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                                    public final void a(int i4) {
                                        boolean z;
                                        if (i4 == 2) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        DialogSetAddr.this.r0 = z;
                                    }

                                    @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                                    public final void b(int i4, int i5) {
                                        ArrayList arrayList;
                                        int i6;
                                        int size;
                                        MenuIconAdapter.MainMenuItem mainMenuItem;
                                        AddrIconAdapter addrIconAdapter = DialogSetAddr.this.n0;
                                        if (addrIconAdapter != null && (arrayList = addrIconAdapter.g) != null && i4 >= (i6 = addrIconAdapter.d) && i5 >= i6 && i4 < (size = arrayList.size()) && i5 < size && (mainMenuItem = (MenuIconAdapter.MainMenuItem) addrIconAdapter.g.remove(i4)) != null) {
                                            addrIconAdapter.g.add(i5, mainMenuItem);
                                            addrIconAdapter.j(i4, i5);
                                        }
                                    }
                                });
                                dialogSetAddr2.p0 = menuDragHelper;
                                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(menuDragHelper);
                                dialogSetAddr2.q0 = itemTouchHelper;
                                itemTouchHelper.i(dialogSetAddr2.e0);
                                dialogSetAddr2.e0.setLayoutManager(dialogSetAddr2.o0);
                                dialogSetAddr2.e0.setAdapter(dialogSetAddr2.n0);
                                dialogSetAddr2.e0.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.6
                                    @Override // com.mycompany.app.image.ImageSizeListener
                                    public final void a(View view, int i4, int i5) {
                                        AddrIconAdapter addrIconAdapter = DialogSetAddr.this.n0;
                                        if (addrIconAdapter != null) {
                                            addrIconAdapter.g();
                                        }
                                    }
                                });
                                dialogSetAddr2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                        AppCompatTextView appCompatTextView3 = dialogSetAddr3.l0;
                                        if (appCompatTextView3 == null || dialogSetAddr3.u0) {
                                            return;
                                        }
                                        dialogSetAddr3.u0 = true;
                                        appCompatTextView3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAddr.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                DialogSetAddr.B(DialogSetAddr.this, true);
                                                DialogSetAddr.this.u0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogSetAddr2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                        if (dialogSetAddr3.a0 == null || dialogSetAddr3.t0 != null) {
                                            return;
                                        }
                                        dialogSetAddr3.C();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetAddr3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.10
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i4 = DialogSetAddr.v0;
                                                final DialogSetAddr dialogSetAddr4 = DialogSetAddr.this;
                                                dialogSetAddr4.C();
                                                AddrIconAdapter addrIconAdapter = dialogSetAddr4.n0;
                                                if (addrIconAdapter != null) {
                                                    addrIconAdapter.w(true, true);
                                                    dialogSetAddr4.D();
                                                    AppCompatTextView appCompatTextView3 = dialogSetAddr4.l0;
                                                    if (appCompatTextView3 == null || dialogSetAddr4.u0) {
                                                        return;
                                                    }
                                                    dialogSetAddr4.u0 = true;
                                                    appCompatTextView3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetAddr.12
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetAddr dialogSetAddr5 = DialogSetAddr.this;
                                                            DialogSetAddr.B(dialogSetAddr5, false);
                                                            dialogSetAddr5.u0 = false;
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                        dialogSetAddr3.t0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.11
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i4 = DialogSetAddr.v0;
                                                DialogSetAddr.this.C();
                                            }
                                        });
                                    }
                                });
                                dialogSetAddr2.D();
                                dialogSetAddr2.g(dialogSetAddr2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetAddr.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetAddr dialogSetAddr3 = DialogSetAddr.this;
                                        if (dialogSetAddr3.c0 == null) {
                                            return;
                                        }
                                        dialogSetAddr3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void B(com.mycompany.app.dialog.DialogSetAddr r8, boolean r9) {
        /*
            com.mycompany.app.main.AddrIconAdapter r0 = r8.n0
            if (r0 != 0) goto L6
            goto L94
        L6:
            int r1 = r0.d
            int[] r2 = r8.s0
            r3 = 0
            if (r2 == 0) goto Lf
            int r4 = r2.length
            goto L10
        Lf:
            r4 = r3
        L10:
            java.util.ArrayList r5 = r0.g
            if (r5 != 0) goto L15
            goto L1c
        L15:
            int r5 = r5.size()
            int r5 = r5 - r1
            if (r5 >= 0) goto L1d
        L1c:
            r5 = r3
        L1d:
            if (r4 == r5) goto L20
            goto L3a
        L20:
            if (r5 != 0) goto L24
            goto L8f
        L24:
            r4 = r3
        L25:
            if (r4 >= r5) goto L8f
            java.util.ArrayList r6 = r0.g
            int r7 = r4 + r1
            java.lang.Object r6 = r6.get(r7)
            com.mycompany.app.main.MenuIconAdapter$MainMenuItem r6 = (com.mycompany.app.main.MenuIconAdapter.MainMenuItem) r6
            if (r6 != 0) goto L34
            goto L8c
        L34:
            r7 = r2[r4]
            int r6 = r6.f17033a
            if (r7 == r6) goto L8c
        L3a:
            com.mycompany.app.main.AddrIconAdapter r0 = r8.n0
            java.util.ArrayList r1 = r0.g
            int r2 = r0.d
            if (r1 != 0) goto L43
            goto L4a
        L43:
            int r1 = r1.size()
            int r1 = r1 - r2
            if (r1 >= 0) goto L4b
        L4a:
            r1 = r3
        L4b:
            if (r1 != 0) goto L4f
            r0 = 0
            goto L6f
        L4f:
            int[] r4 = new int[r1]
            r5 = r3
        L52:
            if (r5 >= r1) goto L6e
            java.util.ArrayList r6 = r0.g
            int r7 = r5 + r2
            java.lang.Object r6 = r6.get(r7)
            com.mycompany.app.main.MenuIconAdapter$MainMenuItem r6 = (com.mycompany.app.main.MenuIconAdapter.MainMenuItem) r6
            if (r6 != 0) goto L61
            goto L6b
        L61:
            int r6 = r6.f17033a
            if (r6 < 0) goto L6b
            r7 = 3
            if (r6 < r7) goto L69
            goto L6b
        L69:
            r4[r5] = r6
        L6b:
            int r5 = r5 + 1
            goto L52
        L6e:
            r0 = r4
        L6f:
            java.lang.String r0 = com.mycompany.app.main.MainUtil.b2(r0)
            com.mycompany.app.pref.PrefMain.H = r0
            android.content.Context r0 = r8.b0
            com.mycompany.app.pref.PrefMain r0 = com.mycompany.app.pref.PrefMain.r(r0, r3)
            java.lang.String r1 = "mAddrItems2"
            if (r9 == 0) goto L85
            java.lang.String r2 = com.mycompany.app.pref.PrefMain.H
            r0.p(r1, r2)
            goto L88
        L85:
            r0.q(r1)
        L88:
            r0.a()
            goto L8f
        L8c:
            int r4 = r4 + 1
            goto L25
        L8f:
            if (r9 == 0) goto L94
            r8.dismiss()
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetAddr.B(com.mycompany.app.dialog.DialogSetAddr, boolean):void");
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.t0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.t0 = null;
        }
    }

    public final void D() {
        int i;
        AddrIconAdapter addrIconAdapter = this.n0;
        if (addrIconAdapter != null && this.f0 != null) {
            ArrayList arrayList = addrIconAdapter.h;
            if (arrayList != null && !arrayList.isEmpty()) {
                int s0 = MainUtil.s0(0, false);
                int j = MyIconView.j(s0, 0, true);
                int P1 = MainUtil.P1(s0, 0);
                int size = arrayList.size();
                for (int i2 = 0; i2 < 3; i2++) {
                    MyButtonImage myButtonImage = this.h0[i2];
                    if (myButtonImage != null) {
                        if (i2 >= size) {
                            myButtonImage.setVisibility(4);
                        } else {
                            MenuIconAdapter.MainMenuItem mainMenuItem = (MenuIconAdapter.MainMenuItem) arrayList.get(i2);
                            if (mainMenuItem != null && (i = mainMenuItem.f17033a) >= 0 && i < 3) {
                                myButtonImage.setImageResource(MainUtil.N(i, s0));
                                myButtonImage.k(j, P1);
                                myButtonImage.setVisibility(0);
                            } else {
                                myButtonImage.setVisibility(4);
                            }
                        }
                    }
                }
                this.f0.setVisibility(0);
                this.g0.setVisibility(0);
                this.i0.setVisibility(4);
                return;
            }
            this.f0.setVisibility(8);
            this.g0.setVisibility(8);
            this.i0.setVisibility(0);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        C();
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyAddrView myAddrView = this.d0;
        if (myAddrView != null) {
            myAddrView.f18517c = null;
            myAddrView.f = null;
            myAddrView.g = null;
            myAddrView.k = null;
            myAddrView.l = null;
            myAddrView.n = null;
            this.d0 = null;
        }
        MyRecyclerView myRecyclerView = this.e0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.e0 = null;
        }
        MyLineText myLineText = this.m0;
        if (myLineText != null) {
            myLineText.u();
            this.m0 = null;
        }
        AddrIconAdapter addrIconAdapter = this.n0;
        if (addrIconAdapter != null) {
            addrIconAdapter.j = addrIconAdapter.d();
            addrIconAdapter.e = null;
            addrIconAdapter.f = null;
            addrIconAdapter.g = null;
            addrIconAdapter.h = null;
            this.n0 = null;
        }
        MenuDragHelper menuDragHelper = this.p0;
        if (menuDragHelper != null) {
            menuDragHelper.d = null;
            this.p0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.o0 = null;
        this.q0 = null;
        this.s0 = null;
        super.dismiss();
    }
}
