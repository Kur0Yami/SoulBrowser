package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.main.MenuListAdapter;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogMenu;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogMenuMain extends MyDialogBottom {
    public static final /* synthetic */ int G0 = 0;
    public int A0;
    public int B0;
    public TabLayout C0;
    public MyBarView D0;
    public MyPopupMenu E0;
    public boolean F0;
    public WebViewActivity a0;
    public Context b0;
    public DownMenuListener c0;
    public int[] d0;
    public int[] e0;
    public final int f0;
    public final boolean g0;
    public int h0;
    public final boolean i0;
    public final int j0;
    public int k0;
    public MyDialogMenu l0;
    public MyButtonImage m0;
    public MyButtonImage n0;
    public AppCompatTextView o0;
    public MyButtonImage p0;
    public MyButtonImage q0;
    public MyButtonImage r0;
    public MyRecyclerView s0;
    public MenuListAdapter t0;
    public MyRecyclerView u0;
    public MenuIconAdapter v0;
    public FrameLayout w0;
    public ViewPager2 x0;
    public ViewPager2.OnPageChangeCallback y0;
    public int z0;

    /* renamed from: com.mycompany.app.dialog.DialogMenuMain$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements Runnable {
        public AnonymousClass15() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            final DialogMenuMain dialogMenuMain = DialogMenuMain.this;
            ViewPager2 viewPager2 = dialogMenuMain.x0;
            if (viewPager2 != null) {
                dialogMenuMain.y0 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.dialog.DialogMenuMain.16
                    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                    public final void c(int i) {
                        DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                        if (dialogMenuMain2.x0 == null) {
                            return;
                        }
                        dialogMenuMain2.k0 = i;
                    }
                };
                viewPager2.setAdapter(new ViewPagerAdapter());
                dialogMenuMain.x0.b(dialogMenuMain.y0);
                int i = dialogMenuMain.k0;
                if (i < 0 || i >= dialogMenuMain.z0) {
                    dialogMenuMain.k0 = 0;
                }
                int i2 = dialogMenuMain.k0;
                if (i2 != 0) {
                    dialogMenuMain.x0.d(i2, false);
                }
                Handler handler = dialogMenuMain.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.15.1
                    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                        if (dialogMenuMain2.z0 < 2) {
                            dialogMenuMain2.C();
                            return;
                        }
                        TabLayout tabLayout = dialogMenuMain2.C0;
                        if (tabLayout != null && dialogMenuMain2.x0 != null) {
                            if (MainApp.K1) {
                                tabLayout.setSelectedTabIndicatorColor(-5197648);
                            } else {
                                tabLayout.setSelectedTabIndicatorColor(-5854742);
                            }
                            new TabLayoutMediator(dialogMenuMain2.C0, dialogMenuMain2.x0, new Object()).a();
                        }
                        Handler handler2 = dialogMenuMain2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.15.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                TabLayout tabLayout2 = DialogMenuMain.this.C0;
                                if (tabLayout2 != null) {
                                    tabLayout2.setVisibility(0);
                                }
                                DialogMenuMain.this.C();
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogMenuMain$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass19 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* renamed from: com.mycompany.app.dialog.DialogMenuMain$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogMenuMain.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public interface DownMenuListener {
        void a();

        void b(View view, int i);

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return DialogMenuMain.this.z0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ void n(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            int i2;
            MyRecyclerView myRecyclerView;
            final DialogMenuMain dialogMenuMain = DialogMenuMain.this;
            if (dialogMenuMain.b0 == null) {
                myRecyclerView = null;
            } else {
                MyRecyclerView myRecyclerView2 = new MyRecyclerView(dialogMenuMain.b0);
                int[] iArr = dialogMenuMain.d0;
                if (iArr != null) {
                    i2 = iArr.length;
                } else {
                    i2 = 0;
                }
                if (i2 != 0) {
                    int i3 = dialogMenuMain.A0;
                    int i4 = i * i3;
                    int min = Math.min(i3 + i4, iArr.length) - i4;
                    if (min != 0) {
                        final int[] iArr2 = new int[min];
                        for (int i5 = 0; i5 < min; i5++) {
                            iArr2[i5] = dialogMenuMain.d0[i5 + i4];
                        }
                        final MenuIconAdapter menuIconAdapter = new MenuIconAdapter(myRecyclerView2, null, 0, false, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.17
                            @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                            public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                                DownMenuListener downMenuListener = DialogMenuMain.this.c0;
                                if (downMenuListener != null) {
                                    downMenuListener.e();
                                }
                            }

                            @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                            public final void b(View view, int i6, int i7) {
                                DownMenuListener downMenuListener = DialogMenuMain.this.c0;
                                if (downMenuListener != null) {
                                    downMenuListener.b(view, i7);
                                }
                            }
                        });
                        myRecyclerView2.setLayoutManager(new GridLayoutManager(dialogMenuMain.j0));
                        myRecyclerView2.setAdapter(menuIconAdapter);
                        Handler handler = dialogMenuMain.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.18
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (DialogMenuMain.this.l0 == null) {
                                        return;
                                    }
                                    menuIconAdapter.H(iArr2, true);
                                }
                            });
                        }
                    }
                }
                myRecyclerView = myRecyclerView2;
            }
            try {
                MainUtil.W6(myRecyclerView);
                myRecyclerView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                Handler handler2 = dialogMenuMain.i;
                if (handler2 != null) {
                    handler2.post(new AnonymousClass8());
                }
            }
            return new RecyclerView.ViewHolder(myRecyclerView);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    public DialogMenuMain(WebViewActivity webViewActivity, int i, int[] iArr, int[] iArr2, boolean z, boolean z2, int i2, boolean z3, DownMenuListener downMenuListener) {
        super(webViewActivity, i);
        int i3;
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = downMenuListener;
        this.d0 = iArr;
        this.e0 = iArr2;
        this.g0 = z2;
        this.h0 = i2;
        this.i0 = z3;
        if (iArr2 != null) {
            i3 = iArr2.length;
        } else {
            i3 = 0;
        }
        this.f0 = i3;
        this.w = i3 != 0 ? PrefPdf.y : 0;
        int i4 = PrefMain.z;
        this.j0 = i4;
        if (i4 == 0) {
            this.j0 = 5;
            PrefMain.z = 5;
        }
        this.k0 = PrefMain.A;
        int i5 = PrefMain.y;
        if (i5 != 1 && i5 != 2) {
            this.D = true;
        } else if (!z) {
            this.C = true;
            this.x = true;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                final DialogMenuMain dialogMenuMain = DialogMenuMain.this;
                Context context = dialogMenuMain.b0;
                if (context != null) {
                    MyDialogMenu myDialogMenu = new MyDialogMenu(context);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    int i6 = MainApp.F1;
                    myLineFrame.setPadding(i6, 0, i6, 0);
                    myLineFrame.a(MainApp.E1);
                    myDialogMenu.addView(myLineFrame, -1, MainApp.g1);
                    float f = MainApp.g1 / 2.0f;
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setBgPreRadius(f);
                    int i7 = MainApp.g1;
                    myLineFrame.addView(myButtonImage2, i7, i7);
                    MyButtonImage myButtonImage3 = new MyButtonImage(context);
                    myButtonImage3.setScaleType(scaleType);
                    myButtonImage3.setBgPreRadius(f);
                    int i8 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams.setMarginStart(MainApp.f1);
                    myLineFrame.addView(myButtonImage3, layoutParams);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 14.0f);
                    C.setTextColor(-769226);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams2.setMarginStart((int) MainUtil.G(context, 80.0f));
                    myLineFrame.addView(C, layoutParams2);
                    if (dialogMenuMain.i0) {
                        myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(scaleType);
                        myButtonImage.setBgPreRadius(f);
                        int i9 = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i9, i9);
                        layoutParams3.gravity = 8388613;
                        layoutParams3.setMarginEnd(MainApp.g1 * 2);
                        myLineFrame.addView(myButtonImage, layoutParams3);
                    } else {
                        myButtonImage = null;
                    }
                    MyButtonImage myButtonImage4 = new MyButtonImage(context);
                    myButtonImage4.setScaleType(scaleType);
                    myButtonImage4.setBgPreRadius(f);
                    int i10 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i10, i10);
                    layoutParams4.gravity = 8388613;
                    layoutParams4.setMarginEnd(MainApp.g1);
                    myLineFrame.addView(myButtonImage4, layoutParams4);
                    MyButtonImage myButtonImage5 = new MyButtonImage(context);
                    myButtonImage5.setScaleType(scaleType);
                    myButtonImage5.setBgPreRadius(f);
                    int i11 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i11, i11);
                    layoutParams5.gravity = 8388613;
                    myLineFrame.addView(myButtonImage5, layoutParams5);
                    int i12 = PrefMain.y;
                    if (i12 != 1 && i12 != 2) {
                        TabLayout tabLayout = new TabLayout(context);
                        tabLayout.setTabMode(1);
                        tabLayout.setTabGravity(0);
                        tabLayout.setVisibility(8);
                        int G = (int) MainUtil.G(context, 2.0f);
                        int G2 = (int) MainUtil.G(context, 20.0f);
                        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, G);
                        layoutParams6.topMargin = MainApp.g1;
                        layoutParams6.setMarginStart(G2);
                        layoutParams6.setMarginEnd(G2);
                        myDialogMenu.addView(tabLayout, layoutParams6);
                        FrameLayout frameLayout = new FrameLayout(context);
                        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 260.0f));
                        layoutParams7.topMargin = (int) MainUtil.G(context, 50.0f);
                        myDialogMenu.addView(frameLayout, layoutParams7);
                        ViewPager2 viewPager2 = new ViewPager2(context);
                        viewPager2.setOrientation(0);
                        frameLayout.addView(viewPager2, -1, -1);
                        dialogMenuMain.w0 = frameLayout;
                        dialogMenuMain.x0 = viewPager2;
                        dialogMenuMain.C0 = tabLayout;
                    } else {
                        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                        int i13 = MainApp.G1;
                        myRecyclerView.setPadding(0, i13, 0, i13);
                        myRecyclerView.u0(true, true);
                        myRecyclerView.setVerticalScrollBarEnabled(false);
                        myRecyclerView.setHorizontalScrollBarEnabled(false);
                        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams8.topMargin = MainApp.g1;
                        myDialogMenu.addView(myRecyclerView, layoutParams8);
                        if (PrefMain.y == 1) {
                            dialogMenuMain.s0 = myRecyclerView;
                        } else {
                            dialogMenuMain.u0 = myRecyclerView;
                        }
                    }
                    dialogMenuMain.l0 = myDialogMenu;
                    dialogMenuMain.m0 = myButtonImage2;
                    dialogMenuMain.n0 = myButtonImage3;
                    dialogMenuMain.o0 = C;
                    dialogMenuMain.q0 = myButtonImage4;
                    dialogMenuMain.r0 = myButtonImage5;
                    dialogMenuMain.p0 = myButtonImage;
                    if (MainApp.K1) {
                        myDialogMenu.setBackColor(-14606047);
                        dialogMenuMain.m0.setImageResource(R.drawable.outline_restart_alt_dark_20);
                        dialogMenuMain.q0.setImageResource(R.drawable.outline_view_agenda_dark_20);
                        dialogMenuMain.r0.setImageResource(R.drawable.outline_settings_dark_20);
                        dialogMenuMain.m0.setBgPreColor(-12632257);
                        dialogMenuMain.n0.setBgPreColor(-12632257);
                        dialogMenuMain.q0.setBgPreColor(-12632257);
                        dialogMenuMain.r0.setBgPreColor(-12632257);
                    } else {
                        myDialogMenu.setBackColor(-1);
                        dialogMenuMain.m0.setImageResource(R.drawable.outline_restart_alt_black_20);
                        dialogMenuMain.q0.setImageResource(R.drawable.outline_view_agenda_black_20);
                        dialogMenuMain.r0.setImageResource(R.drawable.outline_settings_black_20);
                        dialogMenuMain.m0.setBgPreColor(553648128);
                        dialogMenuMain.n0.setBgPreColor(553648128);
                        dialogMenuMain.q0.setBgPreColor(553648128);
                        dialogMenuMain.r0.setBgPreColor(553648128);
                    }
                    dialogMenuMain.m0.setMaxAlpha(0.85f);
                    dialogMenuMain.q0.setMaxAlpha(0.85f);
                    dialogMenuMain.r0.setMaxAlpha(0.85f);
                    dialogMenuMain.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                            if (downMenuListener2 != null) {
                                downMenuListener2.g();
                            }
                        }
                    });
                    if (dialogMenuMain.h0 > 0) {
                        dialogMenuMain.n0.setImageResource(R.drawable.outline_verified_user_red_20);
                        dialogMenuMain.o0.setText(Integer.toString(dialogMenuMain.h0));
                    } else {
                        if (MainApp.K1) {
                            dialogMenuMain.n0.setImageResource(R.drawable.outline_verified_user_dark_20);
                        } else {
                            dialogMenuMain.n0.setImageResource(R.drawable.outline_verified_user_black_20);
                        }
                        dialogMenuMain.n0.setMaxAlpha(0.85f);
                    }
                    if (PrefAlbum.o) {
                        dialogMenuMain.n0.setNoti(true);
                    }
                    dialogMenuMain.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            boolean z4 = PrefAlbum.o;
                            DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                            if (z4) {
                                PrefAlbum.o = false;
                                PrefSet.d(0, dialogMenuMain2.b0, "mNotiClean", false);
                                MyButtonImage myButtonImage6 = dialogMenuMain2.n0;
                                if (myButtonImage6 != null) {
                                    myButtonImage6.setNoti(false);
                                }
                            }
                            DownMenuListener downMenuListener2 = dialogMenuMain2.c0;
                            if (downMenuListener2 != null) {
                                downMenuListener2.c();
                            }
                        }
                    });
                    MyButtonImage myButtonImage6 = dialogMenuMain.p0;
                    if (myButtonImage6 != null) {
                        if (MainApp.K1) {
                            myButtonImage6.setImageResource(R.drawable.outline_local_cafe_dark_20);
                            dialogMenuMain.p0.setBgPreColor(-12632257);
                        } else {
                            myButtonImage6.setImageResource(R.drawable.outline_local_cafe_black_20);
                            dialogMenuMain.p0.setBgPreColor(553648128);
                        }
                        dialogMenuMain.p0.setMaxAlpha(0.85f);
                        dialogMenuMain.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                                if (downMenuListener2 != null) {
                                    downMenuListener2.h();
                                }
                            }
                        });
                    }
                    dialogMenuMain.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MyPopupMenu myPopupMenu;
                            boolean z4;
                            boolean z5;
                            boolean z6;
                            boolean z7;
                            final DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                            if (dialogMenuMain2.a0 != null && (myPopupMenu = dialogMenuMain2.E0) == null) {
                                if (myPopupMenu != null) {
                                    dialogMenuMain2.Y = null;
                                    myPopupMenu.a();
                                    dialogMenuMain2.E0 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                int i14 = R.string.small_list;
                                boolean z8 = false;
                                if (PrefMain.y == 0) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, i14, z4));
                                int i15 = R.string.large_list;
                                if (PrefMain.y == 1) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, i15, z5));
                                int i16 = R.string.two_lines;
                                if (PrefMain.y == 3) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(3, i16, z6));
                                int i17 = R.string.three_lines;
                                if (PrefMain.y == 4) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(4, i17, z7));
                                int i18 = R.string.expand_mode;
                                if (PrefMain.y == 2) {
                                    z8 = true;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(2, i18, z8));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogMenuMain2.a0, dialogMenuMain2.l0, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.22
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i19 = DialogMenuMain.G0;
                                        DialogMenuMain dialogMenuMain3 = DialogMenuMain.this;
                                        MyPopupMenu myPopupMenu3 = dialogMenuMain3.E0;
                                        if (myPopupMenu3 != null) {
                                            dialogMenuMain3.Y = null;
                                            myPopupMenu3.a();
                                            dialogMenuMain3.E0 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i19) {
                                        int i20 = i19 % 5;
                                        if (PrefMain.y != i20) {
                                            PrefMain.y = i20;
                                            DialogMenuMain dialogMenuMain3 = DialogMenuMain.this;
                                            PrefSet.f(dialogMenuMain3.b0, 5, i20, "mMenuType");
                                            dialogMenuMain3.k0 = 0;
                                            DownMenuListener downMenuListener2 = dialogMenuMain3.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.d();
                                            }
                                        }
                                        return true;
                                    }
                                });
                                dialogMenuMain2.E0 = myPopupMenu2;
                                dialogMenuMain2.Y = myPopupMenu2;
                            }
                        }
                    });
                    dialogMenuMain.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                            if (downMenuListener2 != null) {
                                downMenuListener2.f();
                            }
                        }
                    });
                    Handler handler2 = dialogMenuMain.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i14;
                            int i15;
                            int i16;
                            final DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                            int i17 = dialogMenuMain2.j0;
                            int i18 = PrefMain.y;
                            if (i18 == 1) {
                                if (dialogMenuMain2.s0 != null) {
                                    dialogMenuMain2.t0 = new MenuListAdapter(dialogMenuMain2.d0, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.10
                                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.e();
                                            }
                                        }

                                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                                        public final void b(View view, int i19, int i20) {
                                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.b(view, i20);
                                            }
                                        }
                                    });
                                    MyRecyclerView myRecyclerView2 = dialogMenuMain2.s0;
                                    if (MainApp.K1) {
                                        i16 = -16777216;
                                    } else {
                                        i16 = -460552;
                                    }
                                    myRecyclerView2.setBackgroundColor(i16);
                                    dialogMenuMain2.s0.setLineMenu(true);
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogMenuMain2.s0);
                                    dialogMenuMain2.s0.setAdapter(dialogMenuMain2.t0);
                                    dialogMenuMain2.t(dialogMenuMain2.s0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.11
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                                        public final void a(boolean z4) {
                                            MyRecyclerView myRecyclerView3 = DialogMenuMain.this.s0;
                                            if (myRecyclerView3 == null) {
                                                return;
                                            }
                                            if (z4) {
                                                myRecyclerView3.w0();
                                            } else {
                                                myRecyclerView3.r0();
                                            }
                                        }
                                    });
                                    dialogMenuMain2.C();
                                    return;
                                }
                                return;
                            }
                            if (i18 == 2) {
                                MyRecyclerView myRecyclerView3 = dialogMenuMain2.u0;
                                if (myRecyclerView3 != null) {
                                    dialogMenuMain2.v0 = new MenuIconAdapter(myRecyclerView3, null, 0, false, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.12
                                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.e();
                                            }
                                        }

                                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                                        public final void b(View view, int i19, int i20) {
                                            DownMenuListener downMenuListener2 = DialogMenuMain.this.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.b(view, i20);
                                            }
                                        }
                                    });
                                    dialogMenuMain2.u0.setLayoutManager(new GridLayoutManager(i17));
                                    dialogMenuMain2.u0.setAdapter(dialogMenuMain2.v0);
                                    dialogMenuMain2.t(dialogMenuMain2.u0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.13
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                                        public final void a(boolean z4) {
                                            MyRecyclerView myRecyclerView4 = DialogMenuMain.this.u0;
                                            if (myRecyclerView4 == null) {
                                                return;
                                            }
                                            if (z4) {
                                                myRecyclerView4.w0();
                                            } else {
                                                myRecyclerView4.r0();
                                            }
                                        }
                                    });
                                    Handler handler3 = dialogMenuMain2.i;
                                    if (handler3 != null) {
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.14
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogMenuMain dialogMenuMain3 = DialogMenuMain.this;
                                                MenuIconAdapter menuIconAdapter = dialogMenuMain3.v0;
                                                if (menuIconAdapter == null) {
                                                    return;
                                                }
                                                menuIconAdapter.H(dialogMenuMain3.d0, true);
                                                dialogMenuMain3.C();
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (dialogMenuMain2.w0 != null) {
                                dialogMenuMain2.B0 = (int) MainUtil.G(dialogMenuMain2.b0, 10.0f);
                                int[] iArr3 = dialogMenuMain2.d0;
                                if (iArr3 != null) {
                                    i14 = iArr3.length;
                                } else {
                                    i14 = 0;
                                }
                                if (i14 == 0) {
                                    dialogMenuMain2.w0.setVisibility(8);
                                    dialogMenuMain2.C();
                                    return;
                                }
                                if (PrefMain.y == 3) {
                                    i15 = 2;
                                } else {
                                    i15 = 3;
                                }
                                int i19 = i17 * i15;
                                dialogMenuMain2.A0 = i19;
                                if (i14 < i19) {
                                    i15 = i14 / i17;
                                    if (i14 % i17 != 0) {
                                        i15++;
                                    }
                                }
                                int i20 = i14 / i19;
                                dialogMenuMain2.z0 = i20;
                                if (i14 % i19 != 0) {
                                    dialogMenuMain2.z0 = i20 + 1;
                                }
                                if (i15 != 3) {
                                    int G3 = (dialogMenuMain2.B0 * 2) + ((int) MainUtil.G(dialogMenuMain2.b0, i15 * 80));
                                    ViewGroup.LayoutParams layoutParams9 = dialogMenuMain2.w0.getLayoutParams();
                                    if (layoutParams9 != null) {
                                        layoutParams9.height = G3;
                                    } else {
                                        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, G3);
                                        layoutParams10.topMargin = (int) MainUtil.G(dialogMenuMain2.b0, 50.0f);
                                        dialogMenuMain2.w0.setLayoutParams(layoutParams10);
                                    }
                                }
                                FrameLayout frameLayout2 = dialogMenuMain2.w0;
                                int i21 = dialogMenuMain2.B0;
                                frameLayout2.setPadding(0, i21, 0, i21);
                                if (Build.VERSION.SDK_INT < 31) {
                                    dialogMenuMain2.x0.setOverScrollMode(2);
                                }
                                if (dialogMenuMain2.g0) {
                                    dialogMenuMain2.x0.setLayoutDirection(1);
                                }
                                Handler handler4 = dialogMenuMain2.i;
                                if (handler4 == null) {
                                    return;
                                }
                                handler4.post(new AnonymousClass15());
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        int i;
        if (this.t != null && MainUtil.l1() == 0) {
            View view = new View(this.b0);
            View view2 = new View(this.b0);
            if (MainApp.K1) {
                view.setBackgroundResource(R.drawable.round_bot_left_b);
                view2.setBackgroundResource(R.drawable.round_bot_right_b);
            } else {
                view.setBackgroundResource(R.drawable.round_bot_left_g);
                view2.setBackgroundResource(R.drawable.round_bot_right_g);
            }
            if (this.f0 == 0) {
                i = 0;
            } else {
                i = PrefPdf.y;
            }
            int i2 = MainApp.m1;
            CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(i2, i2);
            layoutParams.f611c = 8388691;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i;
            int i3 = MainApp.m1;
            CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(i3, i3);
            layoutParams2.f611c = 8388693;
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = i;
            try {
                this.t.addView(view, layoutParams);
                this.t.addView(view2, layoutParams2);
            } catch (Exception unused) {
            }
        }
    }

    public final void C() {
        MyDialogMenu myDialogMenu = this.l0;
        if (myDialogMenu == null) {
            return;
        }
        g(myDialogMenu, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.20
            /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.LinearLayout, com.mycompany.app.view.MyBarView, android.view.View] */
            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
            public final void a(View view) {
                int i;
                int i2 = DialogMenuMain.G0;
                final DialogMenuMain dialogMenuMain = DialogMenuMain.this;
                if (dialogMenuMain.t != null && dialogMenuMain.l0 != null) {
                    if (dialogMenuMain.f0 == 0) {
                        dialogMenuMain.B();
                        dialogMenuMain.show();
                        return;
                    }
                    ?? linearLayout = new LinearLayout(dialogMenuMain.b0);
                    dialogMenuMain.D0 = linearLayout;
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    linearLayout.setBackgroundColor(i);
                    dialogMenuMain.D0.setFilterColor(MainUtil.l1());
                    try {
                        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, PrefPdf.y);
                        layoutParams.f611c = 80;
                        dialogMenuMain.t.addView(dialogMenuMain.D0, layoutParams);
                        Handler handler = dialogMenuMain.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.21
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogMenuMain dialogMenuMain2 = DialogMenuMain.this;
                                    if (dialogMenuMain2.D0 == null) {
                                        return;
                                    }
                                    dialogMenuMain2.D0.a(dialogMenuMain2.b0, dialogMenuMain2.e0, null, null, 0, false, 0, 0, false, MainUtil.s0(0, false), 0, 0, 0);
                                    dialogMenuMain2.D0.setListener(new MyBarView.BarListener() { // from class: com.mycompany.app.dialog.DialogMenuMain.21.1
                                        @Override // com.mycompany.app.view.MyBarView.BarListener
                                        public final void a(int i3, View view2, boolean z) {
                                            DialogMenuMain dialogMenuMain3 = DialogMenuMain.this;
                                            if (z) {
                                                DownMenuListener downMenuListener = dialogMenuMain3.c0;
                                                if (downMenuListener != null) {
                                                    downMenuListener.e();
                                                    return;
                                                }
                                                return;
                                            }
                                            DownMenuListener downMenuListener2 = dialogMenuMain3.c0;
                                            if (downMenuListener2 != null) {
                                                downMenuListener2.b(view2, i3);
                                            }
                                        }
                                    });
                                    dialogMenuMain2.B();
                                    dialogMenuMain2.show();
                                }
                            });
                        }
                    } catch (Exception unused) {
                        Handler handler2 = dialogMenuMain.i;
                        if (handler2 != null) {
                            handler2.post(new AnonymousClass8());
                        }
                    }
                }
            }
        });
    }

    public final void D(int i) {
        this.h0 = i;
        if (!this.F0) {
            this.F0 = true;
            MyButtonImage myButtonImage = this.n0;
            if (myButtonImage == null) {
                return;
            }
            myButtonImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogMenuMain.9
                @Override // java.lang.Runnable
                public final void run() {
                    DialogMenuMain dialogMenuMain = DialogMenuMain.this;
                    MyButtonImage myButtonImage2 = dialogMenuMain.n0;
                    if (myButtonImage2 == null) {
                        return;
                    }
                    myButtonImage2.setImageResource(R.drawable.outline_verified_user_red_20);
                    dialogMenuMain.n0.setMaxAlpha(1.0f);
                    dialogMenuMain.o0.setText(Integer.toString(dialogMenuMain.h0));
                    dialogMenuMain.F0 = false;
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        Context context = this.b0;
        if (context == null) {
            return;
        }
        int i = PrefMain.A;
        int i2 = this.k0;
        if (i != i2) {
            PrefMain.A = i2;
            PrefSet.f(context, 5, i2, "mMenuPage");
        }
        MyPopupMenu myPopupMenu = this.E0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.E0 = null;
        }
        ViewPager2 viewPager2 = this.x0;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.y0;
        this.x0 = null;
        this.y0 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MyDialogMenu myDialogMenu = this.l0;
        if (myDialogMenu != null) {
            myDialogMenu.f18666c = false;
            myDialogMenu.h = null;
            myDialogMenu.i = null;
            myDialogMenu.j = null;
            myDialogMenu.k = null;
            this.l0 = null;
        }
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.m0 = null;
        }
        MyButtonImage myButtonImage2 = this.n0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.n0 = null;
        }
        MyButtonImage myButtonImage3 = this.p0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.p0 = null;
        }
        MyButtonImage myButtonImage4 = this.q0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.q0 = null;
        }
        MyButtonImage myButtonImage5 = this.r0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.r0 = null;
        }
        MyRecyclerView myRecyclerView = this.s0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.s0 = null;
        }
        MenuListAdapter menuListAdapter = this.t0;
        if (menuListAdapter != null) {
            menuListAdapter.f = menuListAdapter.d();
            menuListAdapter.d = null;
            menuListAdapter.e = null;
            this.t0 = null;
        }
        MyRecyclerView myRecyclerView2 = this.u0;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.u0 = null;
        }
        MenuIconAdapter menuIconAdapter = this.v0;
        if (menuIconAdapter != null) {
            menuIconAdapter.D();
            this.v0 = null;
        }
        MyBarView myBarView = this.D0;
        if (myBarView != null) {
            myBarView.d();
            this.D0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.o0 = null;
        this.w0 = null;
        this.C0 = null;
        super.dismiss();
    }
}
