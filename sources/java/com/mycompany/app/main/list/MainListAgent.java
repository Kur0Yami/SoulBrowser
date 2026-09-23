package com.mycompany.app.main.list;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.work.impl.workers.a;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyScrollBar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MainListAgent extends CastActivity {
    public boolean C1;
    public boolean D1;
    public MyMainRelative E1;
    public MyRecyclerView F1;
    public MainSelectAdapter G1;
    public MainListView H1;
    public int I1;
    public MainListView.ListViewHolder J1;

    public static void D0(MainListAgent mainListAgent, int i, String str, boolean z) {
        if (z) {
            if (PrefZtwo.p != i) {
                PrefZtwo.p = i;
                PrefZtwo.q = null;
                PrefZtwo.t(mainListAgent.f1);
            }
        } else {
            int i2 = i + 100;
            if (PrefZtwo.p != i2 || !MainUtil.q5(PrefZtwo.q, str)) {
                PrefZtwo.p = i2;
                PrefZtwo.q = str;
                PrefZtwo.t(mainListAgent.f1);
            }
        }
        mainListAgent.finish();
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.q(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.D1) {
            int i = this.I1;
            int i2 = PrefZtwo.p;
            if (i != i2) {
                this.I1 = i2;
                Intent intent = new Intent();
                intent.putExtra("EXTRA_TYPE", 42);
                setResult(-1, intent);
            }
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        MainListView mainListView = this.H1;
        if (mainListView != null && mainListView.V()) {
            return;
        }
        finish();
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
        MainListView mainListView = this.H1;
        if (mainListView != null && mainListView.b0(configuration)) {
            MyMainRelative myMainRelative = this.E1;
            if (myMainRelative != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                myMainRelative.b(window, i);
            }
            MyRecyclerView myRecyclerView = this.F1;
            if (myRecyclerView != null) {
                if (MainApp.K1) {
                    myRecyclerView.setBackgroundColor(-14606047);
                } else {
                    myRecyclerView.setBackgroundColor(-1);
                }
                this.G1.g();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v14, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        this.D1 = getIntent().getBooleanExtra("EXTRA_POPUP", false);
        this.I1 = PrefZtwo.p;
        MainUtil.u7(this);
        int i = R.id.list_icon_frame;
        int i2 = R.id.list_default_view;
        int i3 = R.id.list_cast_icon;
        int i4 = R.id.list_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        myMainRelative.addView(myHeaderView, -1, MainApp.b1);
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
        layoutParams3.addRule(16, i3);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout, layoutParams3);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setVisibility(8);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams4.gravity = 8388613;
        frameLayout.addView(myButtonImage2, layoutParams4);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        int i6 = MainApp.F1;
        appCompatTextView2.setPadding(i6, 0, i6, 0);
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
        int i7 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams6.gravity = 8388613;
        frameLayout.addView(myButtonCheck, layoutParams6);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i3);
        frameLayout2.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams7.addRule(21);
        myHeaderView.addView(frameLayout2, layoutParams7);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.setId(i2);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams8.topMargin = MainApp.b1;
        myMainRelative.addView(myRecyclerView, layoutParams8);
        FrameLayout frameLayout3 = new FrameLayout(this);
        RelativeLayout.LayoutParams h = a.h(-1, -1, 3, i2);
        h.addRule(2, i4);
        h.topMargin = MainApp.E1;
        myMainRelative.addView(frameLayout3, h);
        FragmentExpandView fragmentExpandView = new FragmentExpandView(this);
        fragmentExpandView.setGroupIndicator(null);
        fragmentExpandView.setChildDivider(null);
        fragmentExpandView.setDivider(null);
        fragmentExpandView.setVerticalScrollBarEnabled(false);
        fragmentExpandView.setHorizontalScrollBarEnabled(false);
        fragmentExpandView.setSelector(new ColorDrawable(0));
        frameLayout3.addView(fragmentExpandView, -1, -1);
        MyScrollBar myScrollBar = new MyScrollBar(this);
        myScrollBar.setPadBot(MainApp.i1);
        myScrollBar.setVisibility(4);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(MainApp.g1, -1);
        layoutParams9.gravity = 8388613;
        frameLayout3.addView(myScrollBar, layoutParams9);
        MyFadeImage myFadeImage = new MyFadeImage(this);
        myFadeImage.setScaleType(scaleType);
        myFadeImage.setImageResource(R.drawable.logo_gray);
        myFadeImage.setVisibility(8);
        frameLayout3.addView(myFadeImage, -1, -1);
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        frameLayout3.addView(myCoverView, -1, -1);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setId(i4);
        frameLayout4.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12);
        myMainRelative.addView(frameLayout4, layoutParams10);
        this.E1 = myMainRelative;
        this.F1 = myRecyclerView;
        ?? obj = new Object();
        obj.f16736a = myMainRelative;
        obj.d = myHeaderView;
        obj.e = myButtonImage;
        obj.f = appCompatTextView;
        obj.k = myButtonImage2;
        obj.o = appCompatTextView2;
        obj.p = myButtonCheck;
        obj.b = frameLayout3;
        obj.r = fragmentExpandView;
        obj.s = myScrollBar;
        obj.t = myFadeImage;
        obj.u = myCoverView;
        this.J1 = obj;
        B0(myMainRelative, frameLayout2, frameLayout4);
        this.E1.setWindow(getWindow());
        initMainScreenOn(this.E1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAgent.1
            /* JADX WARN: Type inference failed for: r2v10, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final MainListAgent mainListAgent = MainListAgent.this;
                MainListView.ListViewHolder listViewHolder = mainListAgent.J1;
                mainListAgent.J1 = null;
                if (listViewHolder != null && mainListAgent.E1 != null) {
                    if (MainApp.K1) {
                        mainListAgent.F1.setBackgroundColor(-14606047);
                    } else {
                        mainListAgent.F1.setBackgroundColor(-1);
                    }
                    mainListAgent.F1.setLayoutManager(new LinearLayoutManager(1));
                    ArrayList arrayList = new ArrayList();
                    int i8 = R.drawable.outline_public_black_24;
                    String[] strArr = MainConst.G;
                    arrayList.add(new MainSelectAdapter.MainSelectItem(strArr[0], 0, i8, "S"));
                    arrayList.add(new MainSelectAdapter.MainSelectItem(strArr[1], 1, R.drawable.outline_public_black_24, "A"));
                    arrayList.add(new MainSelectAdapter.MainSelectItem(strArr[2], 2, R.drawable.outline_public_black_24, "I"));
                    arrayList.add(new MainSelectAdapter.MainSelectItem(strArr[3], 3, R.drawable.outline_public_black_24, "I"));
                    MainSelectAdapter mainSelectAdapter = new MainSelectAdapter(arrayList, PrefZtwo.p, 2, true, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.main.list.MainListAgent.2
                        @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                        public final void a(int i9) {
                            MainListAgent.D0(MainListAgent.this, i9, null, true);
                        }
                    });
                    mainListAgent.G1 = mainSelectAdapter;
                    mainListAgent.F1.setAdapter(mainSelectAdapter);
                    ?? obj2 = new Object();
                    obj2.f16734a = 36;
                    obj2.b = true;
                    obj2.e = listViewHolder;
                    obj2.f = R.string.user_agent;
                    obj2.g = 0;
                    obj2.h = true;
                    obj2.i = true;
                    obj2.j = true;
                    obj2.k = true;
                    mainListAgent.H1 = new MainListView(mainListAgent, mainListAgent.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListAgent.3
                        @Override // com.mycompany.app.main.MainListListener
                        public final void f(int i9, MainItem.ChildItem childItem, boolean z) {
                            MainListAgent.D0(MainListAgent.this, (int) childItem.y, childItem.g, false);
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void r() {
                            int i9;
                            MainSelectAdapter mainSelectAdapter2 = MainListAgent.this.G1;
                            if (mainSelectAdapter2 != null && (i9 = PrefZtwo.p) < 4) {
                                mainSelectAdapter2.y(i9);
                            }
                        }
                    });
                    Handler handler2 = mainListAgent.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAgent.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListAgent mainListAgent2 = MainListAgent.this;
                            MainListView mainListView = mainListAgent2.H1;
                            if (mainListView != null) {
                                mainListView.I();
                                Handler handler3 = mainListAgent2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAgent.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainSelectAdapter mainSelectAdapter2;
                                        List list;
                                        MainListAgent mainListAgent3 = MainListAgent.this;
                                        if (mainListAgent3.H1 == null) {
                                            return;
                                        }
                                        int i9 = PrefZtwo.p;
                                        if (i9 < 4 && (mainSelectAdapter2 = mainListAgent3.G1) != null && (list = mainSelectAdapter2.d) != null) {
                                            mainSelectAdapter2.f = i9;
                                            Iterator it = list.iterator();
                                            while (it.hasNext()) {
                                                ((MainSelectAdapter.MainSelectItem) it.next()).i = true;
                                            }
                                            mainSelectAdapter2.g();
                                        }
                                        mainListAgent3.H1.M(null);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyRecyclerView myRecyclerView = this.F1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.F1 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.G1;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.G1 = null;
        }
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.O();
            this.H1 = null;
        }
        this.E1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        boolean isFinishing = isFinishing();
        super.onPause();
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.Q(isFinishing);
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        boolean z = !this.C1;
        this.C1 = false;
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.R(z, z, false);
        }
    }
}
