package com.mycompany.app.main.list;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.dialog.DialogEditSearch;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDragAdapter;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageCropper;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyScrollBar;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MainListSearch extends CastActivity {
    public static final /* synthetic */ int U1 = 0;
    public boolean C1;
    public MyMainRelative D1;
    public MyButtonImage E1;
    public AppCompatTextView F1;
    public MyButtonImage G1;
    public AppCompatTextView H1;
    public MyButtonCheck I1;
    public MyLineText J1;
    public AppCompatTextView K1;
    public TabLayout L1;
    public ViewPager2 M1;
    public ViewPager2.OnPageChangeCallback N1;
    public boolean O1;
    public boolean[] P1;
    public MyRecyclerView Q1;
    public MainSelectAdapter R1;
    public RelativeLayout S1;
    public MainListView T1;

    /* renamed from: com.mycompany.app.main.list.MainListSearch$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* renamed from: com.mycompany.app.main.list.MainListSearch$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainListView mainListView = MainListSearch.this.T1;
            if (mainListView == null) {
                return;
            }
            mainListView.s0(null, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.list.MainListSearch.3.1
                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                public final void a() {
                    Handler handler = MainListSearch.this.O0;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.3.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ViewPager2 viewPager2 = MainListSearch.this.M1;
                            if (viewPager2 != null) {
                                viewPager2.setCurrentItem(1);
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.main.list.MainListSearch$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.mycompany.app.main.MainSelectAdapter$MainSelectItem] */
        @Override // java.lang.Runnable
        public final void run() {
            int i;
            boolean z;
            final MainListSearch mainListSearch = MainListSearch.this;
            if (mainListSearch.D1 != null) {
                MyRecyclerView myRecyclerView = new MyRecyclerView(mainListSearch);
                mainListSearch.Q1 = myRecyclerView;
                if (MainApp.K1) {
                    myRecyclerView.setBackgroundColor(-14606047);
                } else {
                    myRecyclerView.setBackgroundColor(-1);
                }
                mainListSearch.Q1.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                a.w(1, mainListSearch.Q1);
                mainListSearch.Q1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.main.list.MainListSearch.8
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public final void b(RecyclerView recyclerView, int i2, int i3) {
                        MainListSearch mainListSearch2 = MainListSearch.this;
                        MyRecyclerView myRecyclerView2 = mainListSearch2.Q1;
                        if (myRecyclerView2 == null) {
                            return;
                        }
                        if (myRecyclerView2.computeVerticalScrollOffset() > 0) {
                            mainListSearch2.Q1.w0();
                        } else {
                            mainListSearch2.Q1.r0();
                        }
                    }
                });
                mainListSearch.O1 = MainUtil.M5();
                mainListSearch.P1 = MainUtil.r3();
                mainListSearch.E0();
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                while (true) {
                    int[] iArr = MainConst.D;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    if (mainListSearch.O1) {
                        i = MainConst.C[i2];
                    } else {
                        i = i2;
                    }
                    boolean[] zArr = mainListSearch.P1;
                    if (zArr != null && (i < 0 || i >= zArr.length || !zArr[i])) {
                        z = false;
                    } else {
                        z = true;
                    }
                    int i3 = MainConst.E[i];
                    int i4 = iArr[i];
                    ?? obj = new Object();
                    obj.f16839a = i;
                    obj.f16840c = i3;
                    obj.d = i4;
                    obj.j = z;
                    arrayList.add(obj);
                    i2++;
                }
                MainSelectAdapter mainSelectAdapter = new MainSelectAdapter(arrayList, PrefZtwo.j, 4, true, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.main.list.MainListSearch.9
                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                    public final void a(int i5) {
                        MainListSearch.D0(MainListSearch.this, i5, null, true);
                    }
                });
                mainListSearch.R1 = mainSelectAdapter;
                mainSelectAdapter.j = new MainDragAdapter.MainDragListener() { // from class: com.mycompany.app.main.list.MainListSearch.10
                    @Override // com.mycompany.app.main.MainDragAdapter.MainDragListener
                    public final void a(int i5, boolean z2) {
                        boolean[] zArr2 = MainListSearch.this.P1;
                        if (zArr2 != null && i5 >= 0 && i5 < zArr2.length) {
                            zArr2[i5] = z2;
                        }
                    }
                };
                mainListSearch.Q1.setAdapter(mainSelectAdapter);
            }
            Handler handler = mainListSearch.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.7.1
                /* JADX WARN: Type inference failed for: r1v3, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
                @Override // java.lang.Runnable
                public final void run() {
                    final MainListSearch mainListSearch2 = MainListSearch.this;
                    if (mainListSearch2.D1 != null) {
                        RelativeLayout relativeLayout = new RelativeLayout(mainListSearch2);
                        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                        FrameLayout frameLayout = new FrameLayout(mainListSearch2);
                        relativeLayout.addView(frameLayout, -1, -1);
                        FragmentExpandView fragmentExpandView = new FragmentExpandView(mainListSearch2);
                        fragmentExpandView.setGroupIndicator(null);
                        fragmentExpandView.setChildDivider(null);
                        fragmentExpandView.setDivider(null);
                        fragmentExpandView.setVerticalScrollBarEnabled(false);
                        fragmentExpandView.setHorizontalScrollBarEnabled(false);
                        fragmentExpandView.setSelector(new ColorDrawable(0));
                        frameLayout.addView(fragmentExpandView, -1, -1);
                        MyScrollBar myScrollBar = new MyScrollBar(mainListSearch2);
                        myScrollBar.setPadBot(MainApp.i1);
                        myScrollBar.setVisibility(4);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MainApp.g1, -1);
                        layoutParams.gravity = 8388613;
                        frameLayout.addView(myScrollBar, layoutParams);
                        MyFadeImage myFadeImage = new MyFadeImage(mainListSearch2);
                        myFadeImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        myFadeImage.setImageResource(R.drawable.logo_gray);
                        myFadeImage.setVisibility(8);
                        frameLayout.addView(myFadeImage, -1, -1);
                        MyCoverView myCoverView = new MyCoverView(mainListSearch2);
                        myCoverView.setVisibility(8);
                        frameLayout.addView(myCoverView, -1, -1);
                        mainListSearch2.S1 = relativeLayout;
                        ?? obj2 = new Object();
                        obj2.f16736a = relativeLayout;
                        obj2.b = frameLayout;
                        obj2.r = fragmentExpandView;
                        obj2.s = myScrollBar;
                        obj2.t = myFadeImage;
                        obj2.u = myCoverView;
                        ?? obj3 = new Object();
                        obj3.f16734a = 35;
                        obj3.b = true;
                        obj3.e = obj2;
                        obj3.f = 0;
                        obj3.g = 0;
                        obj3.h = true;
                        obj3.i = false;
                        obj3.j = true;
                        obj3.k = true;
                        mainListSearch2.T1 = new MainListView(mainListSearch2, mainListSearch2.f1, obj3, new MainListListener() { // from class: com.mycompany.app.main.list.MainListSearch.11
                            @Override // com.mycompany.app.main.MainListListener
                            public final void e(int i5, int i6, boolean z2) {
                                MainListSearch mainListSearch3 = MainListSearch.this;
                                AppCompatTextView appCompatTextView = mainListSearch3.H1;
                                if (appCompatTextView == null) {
                                    return;
                                }
                                appCompatTextView.setText(MainUtil.h3(i5, i6));
                                mainListSearch3.I1.q(z2, true);
                            }

                            @Override // com.mycompany.app.main.MainListListener
                            public final void f(int i5, MainItem.ChildItem childItem, boolean z2) {
                                MainListSearch.D0(MainListSearch.this, 0, childItem, false);
                            }

                            @Override // com.mycompany.app.main.MainListListener
                            public final void i(boolean z2, boolean z3) {
                                MainListSearch mainListSearch3 = MainListSearch.this;
                                if (mainListSearch3.H1 == null) {
                                    return;
                                }
                                if (z2) {
                                    if (z3) {
                                        MainUtil.h8(mainListSearch3.f1, mainListSearch3.G1, R.anim.ic_rotate_out, true);
                                        MainUtil.h8(mainListSearch3.f1, mainListSearch3.H1, R.anim.ic_scale_in, false);
                                        MainUtil.h8(mainListSearch3.f1, mainListSearch3.I1, R.anim.ic_rotate_in, false);
                                        return;
                                    } else {
                                        mainListSearch3.G1.setVisibility(8);
                                        mainListSearch3.H1.setVisibility(0);
                                        mainListSearch3.I1.setVisibility(0);
                                        return;
                                    }
                                }
                                if (z3) {
                                    MainUtil.h8(mainListSearch3.f1, mainListSearch3.G1, R.anim.ic_rotate_in, false);
                                    MainUtil.h8(mainListSearch3.f1, mainListSearch3.H1, R.anim.ic_scale_out, true);
                                    MainUtil.h8(mainListSearch3.f1, mainListSearch3.I1, R.anim.ic_rotate_out, true);
                                } else {
                                    mainListSearch3.G1.setVisibility(0);
                                    mainListSearch3.H1.setVisibility(8);
                                    mainListSearch3.I1.setVisibility(8);
                                }
                            }

                            @Override // com.mycompany.app.main.MainListListener
                            public final void r() {
                                if (PrefZtwo.j < 10) {
                                    MainListSearch mainListSearch3 = MainListSearch.this;
                                    if (mainListSearch3.R1 == null) {
                                        return;
                                    }
                                    mainListSearch3.E0();
                                    mainListSearch3.R1.y(PrefZtwo.j);
                                }
                            }
                        });
                    }
                    Handler handler2 = mainListSearch2.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.7.1.1
                        /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final MainListSearch mainListSearch3 = MainListSearch.this;
                            if (mainListSearch3.D1 != null) {
                                if (Build.VERSION.SDK_INT < 31) {
                                    mainListSearch3.M1.setOverScrollMode(2);
                                }
                                if (MainUtil.O5(mainListSearch3.f1)) {
                                    mainListSearch3.M1.setLayoutDirection(1);
                                }
                                MainUtil.q7(mainListSearch3.M1);
                                ViewPager2 viewPager2 = mainListSearch3.M1;
                                if (viewPager2 != null) {
                                    mainListSearch3.N1 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.main.list.MainListSearch.14
                                        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                                        public final void c(int i5) {
                                            MainListSearch mainListSearch4 = MainListSearch.this;
                                            MyLineText myLineText = mainListSearch4.J1;
                                            if (myLineText == null) {
                                                return;
                                            }
                                            if (i5 == 0) {
                                                if (MainApp.K1) {
                                                    myLineText.setTextColor(-328966);
                                                    mainListSearch4.K1.setTextColor(-4079167);
                                                    return;
                                                } else {
                                                    myLineText.setTextColor(-14784824);
                                                    mainListSearch4.K1.setTextColor(-10395295);
                                                    return;
                                                }
                                            }
                                            if (MainApp.K1) {
                                                myLineText.setTextColor(-4079167);
                                                mainListSearch4.K1.setTextColor(-328966);
                                            } else {
                                                myLineText.setTextColor(-10395295);
                                                mainListSearch4.K1.setTextColor(-14784824);
                                            }
                                        }
                                    };
                                    viewPager2.setAdapter(new ViewPagerAdapter());
                                    mainListSearch3.M1.b(mainListSearch3.N1);
                                }
                                new TabLayoutMediator(mainListSearch3.L1, mainListSearch3.M1, new Object()).a();
                                int i5 = PrefZtwo.j;
                                if (i5 < 10) {
                                    mainListSearch3.Q1.i0(i5);
                                    MainSelectAdapter mainSelectAdapter2 = mainListSearch3.R1;
                                    int i6 = PrefZtwo.j;
                                    List list = mainSelectAdapter2.d;
                                    if (list != null) {
                                        mainSelectAdapter2.f = i6;
                                        Iterator it = list.iterator();
                                        while (it.hasNext()) {
                                            ((MainSelectAdapter.MainSelectItem) it.next()).i = true;
                                        }
                                        mainSelectAdapter2.g();
                                    }
                                } else if (i5 > 100) {
                                    mainListSearch3.M1.d(1, false);
                                }
                                Handler handler3 = mainListSearch3.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.13
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListSearch mainListSearch4 = MainListSearch.this;
                                        MainListView mainListView = mainListSearch4.T1;
                                        if (mainListView != null) {
                                            mainListView.I();
                                            Handler handler4 = mainListSearch4.O0;
                                            if (handler4 == null) {
                                                return;
                                            }
                                            handler4.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.13.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainListView mainListView2 = MainListSearch.this.T1;
                                                    if (mainListView2 == null) {
                                                        return;
                                                    }
                                                    mainListView2.M(null);
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return 2;
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
            View view;
            MainListSearch mainListSearch = MainListSearch.this;
            if (i == 0) {
                view = mainListSearch.Q1;
            } else {
                view = mainListSearch.S1;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                mainListSearch.finish();
            }
            int i2 = MainListSearch.U1;
            if (view == null) {
                try {
                    View view2 = new View(mainListSearch.f1);
                    try {
                        view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    } catch (Exception unused2) {
                    }
                    view = view2;
                } catch (Exception unused3) {
                }
            }
            return new RecyclerView.ViewHolder(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    public static void D0(MainListSearch mainListSearch, int i, MainItem.ChildItem childItem, boolean z) {
        if (z) {
            boolean[] zArr = mainListSearch.P1;
            if (zArr != null && i >= 0 && i < zArr.length) {
                zArr[i] = true;
            }
            if (PrefZtwo.j != i) {
                PrefZtwo.j = i;
                PrefZtwo.k = null;
                PrefZtwo.m = 0;
                PrefZtwo.v(mainListSearch.f1);
            }
        } else {
            if (childItem == null) {
                mainListSearch.finish();
                return;
            }
            int i2 = ((int) childItem.y) + 100;
            if (PrefZtwo.j != i2 || PrefZtwo.m != childItem.v || !MainUtil.q5(PrefZtwo.k, childItem.g)) {
                PrefZtwo.j = i2;
                PrefZtwo.k = childItem.g;
                PrefZtwo.m = childItem.v;
                PrefZtwo.v(mainListSearch.f1);
            }
        }
        mainListSearch.finish();
    }

    public final void E0() {
        boolean[] zArr;
        int i;
        int i2 = PrefZtwo.j;
        if (i2 < 10 && (zArr = this.P1) != null) {
            if (i2 < 0 || i2 >= zArr.length || !zArr[i2]) {
                int i3 = 0;
                while (true) {
                    if (i3 >= MainConst.D.length) {
                        break;
                    }
                    if (this.O1) {
                        i = MainConst.C[i3];
                    } else {
                        i = i3;
                    }
                    if (i >= 0) {
                        boolean[] zArr2 = this.P1;
                        if (i < zArr2.length && zArr2[i]) {
                            i2 = i;
                            break;
                        }
                    }
                    i3++;
                }
                if (i2 < 0 || i2 >= this.P1.length) {
                    i2 = 4;
                }
                this.P1[i2] = true;
                if (PrefZtwo.j == i2) {
                    return;
                }
                PrefZtwo.j = i2;
                PrefZtwo.k = null;
                PrefZtwo.m = 0;
                PrefZtwo.v(this.f1);
            }
        }
    }

    public final void F0() {
        MyButtonImage myButtonImage = this.E1;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.F1.setTextColor(-328966);
            this.H1.setTextColor(-328966);
            this.G1.setImageResource(R.drawable.outline_add_dark_20);
            this.J1.setBackgroundResource(R.drawable.selector_normal_dark);
            this.K1.setBackgroundResource(R.drawable.selector_normal_dark);
            this.J1.setTextColor(-328966);
            this.K1.setTextColor(-4079167);
            this.L1.setSelectedTabIndicatorColor(-5197648);
            MyRecyclerView myRecyclerView = this.Q1;
            if (myRecyclerView != null) {
                myRecyclerView.setBackgroundColor(-14606047);
            }
            this.E1.setBgPreColor(-12632257);
            this.G1.setBgPreColor(-12632257);
            this.I1.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
            this.I1.setBgPreColor(-12632257);
            return;
        }
        myButtonImage.setImageResource(R.drawable.outline_chevron_left_black_24);
        this.F1.setTextColor(-16777216);
        this.H1.setTextColor(-16777216);
        this.G1.setImageResource(R.drawable.outline_add_black_20);
        this.J1.setBackgroundResource(R.drawable.selector_normal_gray);
        this.K1.setBackgroundResource(R.drawable.selector_normal_gray);
        this.J1.setTextColor(-14784824);
        this.K1.setTextColor(-10395295);
        this.L1.setSelectedTabIndicatorColor(-5854742);
        MyRecyclerView myRecyclerView2 = this.Q1;
        if (myRecyclerView2 != null) {
            myRecyclerView2.setBackgroundColor(-1);
        }
        this.E1.setBgPreColor(553648128);
        this.G1.setBgPreColor(553648128);
        this.I1.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
        this.I1.setBgPreColor(553648128);
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView;
        ViewPager2 viewPager2 = this.M1;
        if (viewPager2 == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (viewPager2.getCurrentItem() == 1 && (mainListView = this.T1) != null) {
            mainListView.q(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public final void finish() {
        String sb;
        E0();
        boolean[] zArr = this.P1;
        if (zArr == null) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            int length = zArr.length;
            for (int i = 0; i < length; i++) {
                sb2.append(zArr[i] ? 1 : 0);
                if (i < length - 1) {
                    sb2.append("/");
                }
            }
            sb = sb2.toString();
        }
        if (!TextUtils.isEmpty(sb) && !sb.equals(PrefZone.i0)) {
            PrefZone.i0 = sb;
            PrefSet.c(15, this.f1, "mSearchUse2", sb);
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogEditSearch dialogEditSearch;
        MainListView mainListView = this.T1;
        if (mainListView != null && (dialogEditSearch = mainListView.K0) != null) {
            Uri uri = null;
            if (i == 9) {
                Uri uri2 = dialogEditSearch.v0;
                dialogEditSearch.v0 = null;
                if (i2 == -1) {
                    if (intent != null) {
                        uri = intent.getData();
                    }
                    if (uri != null) {
                        uri2 = uri;
                    }
                    MainUtil.z7(dialogEditSearch.b0, uri2);
                    if (dialogEditSearch.a0 != null) {
                        if (uri2 == null) {
                            MainUtil.e8(dialogEditSearch.b0, R.string.invalid_path);
                            return;
                        }
                        String m0 = MainUtil.m0(dialogEditSearch.b0);
                        dialogEditSearch.w0 = m0;
                        if (TextUtils.isEmpty(m0)) {
                            MainUtil.e8(dialogEditSearch.b0, R.string.invalid_path);
                            return;
                        }
                        Intent intent2 = new Intent(dialogEditSearch.b0, (Class<?>) MainImageCropper.class);
                        intent2.setData(uri2);
                        intent2.putExtra("EXTRA_DST", dialogEditSearch.w0);
                        intent2.putExtra("EXTRA_ICON", true);
                        dialogEditSearch.a0.t0(intent2, 12);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == 12) {
                String str = dialogEditSearch.w0;
                dialogEditSearch.w0 = null;
                if (i2 == -1) {
                    if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                        dialogEditSearch.j0 = true;
                        dialogEditSearch.E(0, 0, str);
                    } else {
                        MainUtil.e8(dialogEditSearch.b0, R.string.invalid_path);
                    }
                }
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        MainListView mainListView;
        ViewPager2 viewPager2 = this.M1;
        if (viewPager2 == null) {
            finish();
        } else {
            if (viewPager2.getCurrentItem() == 1 && (mainListView = this.T1) != null && mainListView.V()) {
                return;
            }
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        MainListView mainListView = this.T1;
        if (mainListView != null && mainListView.b0(configuration)) {
            MyMainRelative myMainRelative = this.D1;
            if (myMainRelative != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                myMainRelative.b(window, i);
            }
            F0();
            ViewPager2 viewPager2 = this.M1;
            if (viewPager2 != null) {
                if (viewPager2.getCurrentItem() == 0) {
                    if (MainApp.K1) {
                        this.J1.setTextColor(-328966);
                        this.K1.setTextColor(-4079167);
                        return;
                    } else {
                        this.J1.setTextColor(-14784824);
                        this.K1.setTextColor(-10395295);
                        return;
                    }
                }
                if (MainApp.K1) {
                    this.J1.setTextColor(-4079167);
                    this.K1.setTextColor(-328966);
                } else {
                    this.J1.setTextColor(-10395295);
                    this.K1.setTextColor(-14784824);
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        MainUtil.u7(this);
        o0(null, 9);
        o0(null, 12);
        int i = R.id.list_icon_frame;
        int i2 = R.id.list_cast_icon;
        int i3 = R.id.list_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        myMainRelative.addView(linearLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i3));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        linearLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams2.addRule(16, i);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams3.addRule(16, i2);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout, layoutParams3);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i4 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams4.gravity = 8388613;
        frameLayout.addView(myButtonImage2, layoutParams4);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        int i5 = MainApp.F1;
        appCompatTextView2.setPadding(i5, 0, i5, 0);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams5.gravity = 8388613;
        layoutParams5.setMarginEnd((int) MainUtil.G(this, 52.0f));
        frameLayout.addView(appCompatTextView2, layoutParams5);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.setVisibility(8);
        int i6 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams6.gravity = 8388613;
        frameLayout.addView(myButtonCheck, layoutParams6);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i2);
        frameLayout2.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams7.addRule(21);
        myHeaderView.addView(frameLayout2, layoutParams7);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, -1, MainApp.g1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setText(R.string.default_title);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -1);
        layoutParams8.weight = 1.0f;
        linearLayout2.addView(myLineText, layoutParams8);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setGravity(17);
        appCompatTextView3.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = a.e(appCompatTextView3, R.string.user_defined, 0, -1);
        e.weight = 1.0f;
        linearLayout2.addView(appCompatTextView3, e);
        TabLayout tabLayout = new TabLayout(this);
        tabLayout.setTabMode(1);
        tabLayout.setTabGravity(0);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams9.setMarginStart(MainApp.E1);
        layoutParams9.setMarginEnd(MainApp.E1);
        linearLayout.addView(tabLayout, layoutParams9);
        ViewPager2 viewPager2 = new ViewPager2(this);
        viewPager2.setOrientation(0);
        linearLayout.addView(viewPager2, -1, -1);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i3);
        frameLayout3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12);
        myMainRelative.addView(frameLayout3, layoutParams10);
        this.D1 = myMainRelative;
        this.E1 = myButtonImage;
        this.F1 = appCompatTextView;
        this.G1 = myButtonImage2;
        this.H1 = appCompatTextView2;
        this.I1 = myButtonCheck;
        this.J1 = myLineText;
        this.K1 = appCompatTextView3;
        this.L1 = tabLayout;
        this.M1 = viewPager2;
        B0(myMainRelative, frameLayout2, frameLayout3);
        this.D1.setWindow(getWindow());
        initMainScreenOn(this.D1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListSearch.1
            @Override // java.lang.Runnable
            public final void run() {
                final MainListSearch mainListSearch = MainListSearch.this;
                if (mainListSearch.D1 != null) {
                    mainListSearch.F0();
                    mainListSearch.F1.setText(R.string.search_engine);
                    mainListSearch.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListSearch.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MainListSearch.this.finish();
                        }
                    });
                    mainListSearch.G1.setOnClickListener(new AnonymousClass3());
                    mainListSearch.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListSearch.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MainListView mainListView = MainListSearch.this.T1;
                            if (mainListView != null) {
                                mainListView.m0();
                            }
                        }
                    });
                    mainListSearch.J1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListSearch.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = MainListSearch.this.M1;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(0);
                            }
                        }
                    });
                    mainListSearch.K1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListSearch.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = MainListSearch.this.M1;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(1);
                            }
                        }
                    });
                    Handler handler2 = mainListSearch.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new AnonymousClass7());
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ViewPager2 viewPager2 = this.M1;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.N1;
        this.M1 = null;
        this.N1 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MyButtonImage myButtonImage = this.E1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.E1 = null;
        }
        MyButtonImage myButtonImage2 = this.G1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G1 = null;
        }
        MyButtonCheck myButtonCheck = this.I1;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.I1 = null;
        }
        MyLineText myLineText = this.J1;
        if (myLineText != null) {
            myLineText.u();
            this.J1 = null;
        }
        MyRecyclerView myRecyclerView = this.Q1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.Q1 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.R1;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.R1 = null;
        }
        MainListView mainListView = this.T1;
        if (mainListView != null) {
            mainListView.O();
            this.T1 = null;
        }
        this.D1 = null;
        this.F1 = null;
        this.H1 = null;
        this.K1 = null;
        this.L1 = null;
        this.P1 = null;
        this.S1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        boolean isFinishing = isFinishing();
        super.onPause();
        MainListView mainListView = this.T1;
        if (mainListView != null) {
            mainListView.Q(isFinishing);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        DialogEditSearch dialogEditSearch;
        super.onRequestPermissionsResult(i, strArr, iArr);
        MainListView mainListView = this.T1;
        if (mainListView != null && (dialogEditSearch = mainListView.K0) != null && i == 30 && iArr != null && iArr.length > 0 && iArr[0] == 0) {
            dialogEditSearch.v0 = MainUtil.C4(9, dialogEditSearch.a0, false);
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        boolean z = !this.C1;
        this.C1 = false;
        MainListView mainListView = this.T1;
        if (mainListView != null) {
            mainListView.R(z, z, false);
        }
    }
}
