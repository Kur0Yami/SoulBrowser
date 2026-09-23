package com.mycompany.app.main.list;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;

/* loaded from: classes3.dex */
public class MainListImage extends CastActivity {
    public boolean C1;
    public int D1;
    public String E1;
    public MyMainRelative F1;
    public MainListView G1;
    public MainListView.ListViewHolder H1;

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView = this.G1;
        if (mainListView == null) {
            return false;
        }
        mainListView.q(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        MainListView mainListView = this.G1;
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
        MyMainRelative myMainRelative;
        int i;
        super.onConfigurationChanged(configuration);
        MainListView mainListView = this.G1;
        if (mainListView != null && mainListView.b0(configuration) && (myMainRelative = this.F1) != null) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [com.mycompany.app.view.MyListGroup, android.widget.RelativeLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r7v17, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        MainUtil.u7(this);
        this.D1 = getIntent().getIntExtra("EXTRA_TYPE", 1);
        this.E1 = getIntent().getStringExtra("EXTRA_PATH");
        int i = R.id.list_icon_frame;
        int i2 = R.id.list_bottom_view;
        int i3 = R.id.list_cast_icon;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(this);
        myMainRelative.addView(frameLayout, a.h(-1, -1, 2, i2));
        FragmentExpandView fragmentExpandView = new FragmentExpandView(this);
        fragmentExpandView.setGroupIndicator(null);
        fragmentExpandView.setChildDivider(null);
        fragmentExpandView.setDivider(null);
        fragmentExpandView.setVerticalScrollBarEnabled(false);
        fragmentExpandView.setHorizontalScrollBarEnabled(false);
        fragmentExpandView.setSelector(new ColorDrawable(0));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = MainApp.b1;
        frameLayout.addView(fragmentExpandView, layoutParams);
        ?? relativeLayout = new RelativeLayout(this);
        relativeLayout.setVisibility(4);
        frameLayout.addView((View) relativeLayout, -1, -2);
        MyScrollBar myScrollBar = new MyScrollBar(this);
        int i4 = MainApp.b1;
        int i5 = MainApp.i1;
        myScrollBar.O = i4;
        myScrollBar.P = i5;
        myScrollBar.setVisibility(4);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.g1, -1);
        layoutParams2.gravity = 8388613;
        frameLayout.addView(myScrollBar, layoutParams2);
        MyFadeImage myFadeImage = new MyFadeImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myFadeImage.setScaleType(scaleType);
        myFadeImage.setImageResource(R.drawable.logo_gray);
        myFadeImage.setVisibility(8);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.topMargin = MainApp.b1;
        frameLayout.addView(myFadeImage, layoutParams3);
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams4.topMargin = MainApp.b1;
        frameLayout.addView(myCoverView, layoutParams4);
        MyHeaderView myHeaderView = new MyHeaderView(this);
        frameLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams5.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams5);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams6.addRule(16, i);
        layoutParams6.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams6);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams7.addRule(16, i3);
        layoutParams7.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout2, layoutParams7);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i6 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams8.gravity = 8388613;
        layoutParams8.setMarginEnd(MainApp.g1 * 2);
        frameLayout2.addView(myButtonImage2, layoutParams8);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i7 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams9.gravity = 8388613;
        layoutParams9.setMarginEnd(MainApp.g1);
        frameLayout2.addView(myButtonImage3, layoutParams9);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setPadding(G, G, G, G);
        myButtonImage4.setScaleType(scaleType);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams10.gravity = 8388613;
        frameLayout2.addView(myButtonImage4, layoutParams10);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i3);
        frameLayout3.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams11.addRule(21);
        myHeaderView.addView(frameLayout3, layoutParams11);
        MyProgressBar myProgressBar = new MyProgressBar(this);
        myProgressBar.d((int) MainUtil.G(this, 1.5f));
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams12.topMargin = MainApp.b1;
        frameLayout.addView(myProgressBar, layoutParams12);
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setId(i2);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams13.addRule(12);
        myMainRelative.addView(relativeLayout2, layoutParams13);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setVisibility(8);
        relativeLayout2.addView(frameLayout4, -1, -2);
        this.F1 = myMainRelative;
        ?? obj = new Object();
        obj.f16736a = myMainRelative;
        obj.b = frameLayout;
        obj.r = fragmentExpandView;
        obj.f16737c = relativeLayout;
        obj.s = myScrollBar;
        obj.t = myFadeImage;
        obj.u = myCoverView;
        obj.d = myHeaderView;
        obj.e = myButtonImage;
        obj.f = appCompatTextView;
        obj.l = myButtonImage2;
        obj.m = myButtonImage3;
        obj.n = myButtonImage4;
        obj.q = myProgressBar;
        this.H1 = obj;
        B0(myMainRelative, frameLayout3, frameLayout4);
        this.F1.setWindow(getWindow());
        initMainScreenOn(this.F1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListImage.1
            /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                int i9;
                final MainListImage mainListImage = MainListImage.this;
                MainListView.ListViewHolder listViewHolder = mainListImage.H1;
                mainListImage.H1 = null;
                if (listViewHolder != null && mainListImage.F1 != null) {
                    int i10 = mainListImage.D1;
                    if (i10 == 2) {
                        i9 = R.string.pdf;
                    } else if (i10 == 3) {
                        i9 = R.string.zip;
                    } else {
                        i9 = R.string.album;
                    }
                    ?? obj2 = new Object();
                    if (i10 == 12) {
                        obj2.f16734a = 1;
                    } else {
                        obj2.f16734a = i10;
                    }
                    obj2.d = true;
                    obj2.e = listViewHolder;
                    obj2.f = i9;
                    obj2.g = MainApp.b1;
                    obj2.h = true;
                    obj2.j = false;
                    obj2.k = false;
                    mainListImage.G1 = new MainListView(mainListImage, mainListImage.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListImage.2
                        @Override // com.mycompany.app.main.MainListListener
                        public final void f(int i11, MainItem.ChildItem childItem, boolean z) {
                            MainListImage mainListImage2 = MainListImage.this;
                            if (mainListImage2.G1 != null) {
                                if (!MainUri.r(mainListImage2.f1, childItem.g)) {
                                    MainUtil.e8(mainListImage2, R.string.invalid_path);
                                    return;
                                }
                                if (mainListImage2.D1 != 12 && childItem.g.equals(mainListImage2.E1)) {
                                    FragmentExpandView fragmentExpandView2 = mainListImage2.G1.M;
                                    if (fragmentExpandView2 != null) {
                                        fragmentExpandView2.setEnabled(false);
                                    }
                                    mainListImage2.finish();
                                    return;
                                }
                                FragmentExpandView fragmentExpandView3 = mainListImage2.G1.M;
                                if (fragmentExpandView3 != null) {
                                    fragmentExpandView3.setEnabled(false);
                                }
                                MainListView mainListView = mainListImage2.G1;
                                MainListAdapter mainListAdapter = mainListView.h0;
                                if (mainListAdapter != null && mainListAdapter.B(i11, false)) {
                                    mainListView.p(false);
                                }
                                Intent intent = new Intent();
                                intent.putExtra("EXTRA_PATH", childItem.g);
                                intent.putExtra("EXTRA_INDEX", i11);
                                mainListImage2.setResult(-1, intent);
                                mainListImage2.finish();
                            }
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void o(ListTask.ListTaskConfig listTaskConfig) {
                        }
                    });
                    Handler handler2 = mainListImage.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListImage.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListImage mainListImage2 = MainListImage.this;
                            MainListView mainListView = mainListImage2.G1;
                            if (mainListView != null) {
                                mainListView.I();
                                Handler handler3 = mainListImage2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListImage.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListImage mainListImage3 = MainListImage.this;
                                        MainListView mainListView2 = mainListImage3.G1;
                                        if (mainListView2 != null) {
                                            String str = mainListImage3.E1;
                                            ListTask listTask = mainListView2.g0;
                                            if (listTask != null) {
                                                listTask.l(str, false, false);
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

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.O();
            this.G1 = null;
        }
        this.E1 = null;
        this.F1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.Q(isFinishing());
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        boolean z = !this.C1;
        this.C1 = false;
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.R(z, z, false);
        }
    }
}
