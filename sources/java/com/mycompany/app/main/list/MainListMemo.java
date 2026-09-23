package com.mycompany.app.main.list;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogEditMemo;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainListView2;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyScrollBar;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MainListMemo extends CastActivity {
    public static final /* synthetic */ int I1 = 0;
    public boolean C1;
    public MyMainRelative D1;
    public MainListView2 E1;
    public DialogEditMemo F1;
    public MyFadeFrame G1;
    public MainListView.ListViewHolder H1;

    public static void D0(MainListMemo mainListMemo, boolean z) {
        Handler handler;
        if (!z) {
            MyFadeFrame myFadeFrame = mainListMemo.G1;
            if (myFadeFrame != null && mainListMemo.D1 != null) {
                myFadeFrame.f();
                mainListMemo.D1.removeView(mainListMemo.G1);
                mainListMemo.G1 = null;
                if (PrefRead.t) {
                    PrefRead.t = false;
                    PrefSet.d(8, mainListMemo.f1, "mGuideMemo", false);
                    return;
                }
                return;
            }
            return;
        }
        if (!PrefRead.t || (handler = mainListMemo.O0) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListMemo.4
            @Override // java.lang.Runnable
            public final void run() {
                Handler handler2;
                if (PrefRead.t) {
                    final MainListMemo mainListMemo2 = MainListMemo.this;
                    if (mainListMemo2.G1 == null && mainListMemo2.D1 != null && (handler2 = mainListMemo2.O0) != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListMemo.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (PrefRead.t) {
                                    final MainListMemo mainListMemo3 = MainListMemo.this;
                                    if (mainListMemo3.G1 == null && mainListMemo3.D1 != null) {
                                        MyFadeFrame myFadeFrame2 = new MyFadeFrame(mainListMemo3);
                                        int i = MainApp.F1;
                                        myFadeFrame2.setPadding(i, i, i, i);
                                        FrameLayout frameLayout = new FrameLayout(mainListMemo3);
                                        frameLayout.setBackgroundResource(R.drawable.round_guide_8);
                                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                        layoutParams.gravity = 8388691;
                                        myFadeFrame2.addView(frameLayout, layoutParams);
                                        LinearLayout linearLayout = new LinearLayout(mainListMemo3);
                                        int i2 = MainApp.E1;
                                        linearLayout.setPadding(i2, i2, i2, i2);
                                        linearLayout.setOrientation(1);
                                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                                        layoutParams2.gravity = 1;
                                        frameLayout.addView(linearLayout, layoutParams2);
                                        AppCompatTextView appCompatTextView = new AppCompatTextView(mainListMemo3, null);
                                        appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                                        appCompatTextView.setTextSize(1, 16.0f);
                                        appCompatTextView.setTextColor(-1);
                                        linearLayout.addView(appCompatTextView, -2, -2);
                                        mainListMemo3.G1 = myFadeFrame2;
                                        appCompatTextView.setText(R.string.sort_guide_1);
                                        mainListMemo3.G1.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.list.MainListMemo.6
                                            @Override // com.mycompany.app.view.MyFadeListener
                                            public final void a(boolean z2) {
                                                MainListMemo mainListMemo4;
                                                MyFadeFrame myFadeFrame3;
                                                if (!z2 && (myFadeFrame3 = (mainListMemo4 = MainListMemo.this).G1) != null && mainListMemo4.D1 != null) {
                                                    myFadeFrame3.f();
                                                    mainListMemo4.D1.removeView(mainListMemo4.G1);
                                                    mainListMemo4.G1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyFadeListener
                                            public final void b(boolean z2, boolean z3) {
                                            }
                                        });
                                        mainListMemo3.G1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.list.MainListMemo.7
                                            @Override // android.view.View.OnTouchListener
                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                boolean z2 = PrefRead.t;
                                                MainListMemo mainListMemo4 = MainListMemo.this;
                                                if (z2) {
                                                    PrefRead.t = false;
                                                    PrefSet.d(8, mainListMemo4.f1, "mGuideMemo", false);
                                                }
                                                MyFadeFrame myFadeFrame3 = mainListMemo4.G1;
                                                if (myFadeFrame3 != null) {
                                                    myFadeFrame3.d(true);
                                                }
                                                return false;
                                            }
                                        });
                                        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListMemo.8
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                boolean z2 = PrefRead.t;
                                                MainListMemo mainListMemo4 = MainListMemo.this;
                                                if (z2) {
                                                    PrefRead.t = false;
                                                    PrefSet.d(8, mainListMemo4.f1, "mGuideMemo", false);
                                                }
                                                MyFadeFrame myFadeFrame3 = mainListMemo4.G1;
                                                if (myFadeFrame3 != null) {
                                                    myFadeFrame3.d(true);
                                                }
                                            }
                                        });
                                        mainListMemo3.D1.addView(mainListMemo3.G1, -1, -1);
                                        return;
                                    }
                                    return;
                                }
                                int i3 = MainListMemo.I1;
                            }
                        });
                        return;
                    }
                    return;
                }
                int i = MainListMemo.I1;
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked;
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 == null) {
            return false;
        }
        if (mainListView2.w0 || mainListView2.x0) {
            return true;
        }
        if (motionEvent != null) {
            if (mainListView2.E != null && ((actionMasked = motionEvent.getActionMasked()) == 1 || actionMasked == 3)) {
                mainListView2.E.e();
            }
        } else {
            mainListView2.getClass();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 != null && mainListView2.t()) {
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
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 != null && mainListView2.z(configuration) && (myMainRelative = this.D1) != null) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
        }
    }

    /* JADX WARN: Type inference failed for: r14v19, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        MainUtil.u7(this);
        int i = R.id.list_icon_frame;
        int i2 = R.id.list_bottom_view;
        int i3 = R.id.list_cast_icon;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(this);
        myMainRelative.addView(frameLayout, a.h(-1, -1, 2, i2));
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = MainApp.b1;
        frameLayout.addView(myRecyclerView, layoutParams);
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
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(1);
        appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setText(R.string.memo_guide);
        appCompatTextView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 80;
        layoutParams4.setMarginStart(MainApp.f1);
        layoutParams4.setMarginEnd(MainApp.f1);
        layoutParams4.bottomMargin = MainApp.f1;
        frameLayout.addView(appCompatTextView, layoutParams4);
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams5.topMargin = MainApp.b1;
        frameLayout.addView(myCoverView, layoutParams5);
        MyHeaderView myHeaderView = new MyHeaderView(this);
        frameLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams6.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams6);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams7.addRule(16, i);
        layoutParams7.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView2, layoutParams7);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams8.addRule(16, i3);
        layoutParams8.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout2, layoutParams8);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams9.gravity = 8388613;
        layoutParams9.setMarginEnd(MainApp.g1);
        frameLayout2.addView(linearLayout, layoutParams9);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i6 = MainApp.g1;
        linearLayout.addView(myButtonImage2, i6, i6);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setVisibility(8);
        int i7 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i7, i7);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setPadding(G, G, G, G);
        myButtonImage4.setScaleType(scaleType);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams10.gravity = 8388613;
        frameLayout2.addView(myButtonImage4, layoutParams10);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        int i9 = MainApp.F1;
        appCompatTextView3.setPadding(i9, 0, i9, 0);
        appCompatTextView3.setGravity(16);
        appCompatTextView3.setTextDirection(3);
        appCompatTextView3.setTextSize(1, 16.0f);
        appCompatTextView3.setVisibility(8);
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams11.gravity = 8388613;
        layoutParams11.setMarginEnd((int) MainUtil.G(this, 52.0f));
        frameLayout2.addView(appCompatTextView3, layoutParams11);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.setVisibility(8);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams12.gravity = 8388613;
        frameLayout2.addView(myButtonCheck, layoutParams12);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i3);
        frameLayout3.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams13.addRule(21);
        myHeaderView.addView(frameLayout3, layoutParams13);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setId(i2);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams14.addRule(12);
        myMainRelative.addView(relativeLayout, layoutParams14);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setVisibility(8);
        relativeLayout.addView(frameLayout4, -1, -2);
        this.D1 = myMainRelative;
        ?? obj = new Object();
        obj.f16736a = myMainRelative;
        obj.b = frameLayout;
        obj.x = myRecyclerView;
        obj.s = myScrollBar;
        obj.t = myFadeImage;
        obj.B = appCompatTextView;
        obj.u = myCoverView;
        obj.d = myHeaderView;
        obj.e = myButtonImage;
        obj.f = appCompatTextView2;
        obj.y = linearLayout;
        obj.k = myButtonImage2;
        obj.m = myButtonImage3;
        obj.n = myButtonImage4;
        obj.o = appCompatTextView3;
        obj.p = myButtonCheck;
        obj.A = relativeLayout;
        obj.v = frameLayout3;
        obj.w = frameLayout4;
        this.H1 = obj;
        B0(myMainRelative, frameLayout3, frameLayout4);
        this.D1.setWindow(getWindow());
        initMainScreenOn(this.D1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListMemo.1
            /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final MainListMemo mainListMemo = MainListMemo.this;
                MainListView.ListViewHolder listViewHolder = mainListMemo.H1;
                mainListMemo.H1 = null;
                if (listViewHolder != null && mainListMemo.D1 != null) {
                    ?? obj2 = new Object();
                    obj2.f16734a = 37;
                    obj2.b = true;
                    obj2.e = listViewHolder;
                    obj2.f = R.string.memo_title;
                    obj2.g = MainApp.b1;
                    obj2.h = true;
                    obj2.i = true;
                    obj2.j = true;
                    obj2.k = true;
                    mainListMemo.E1 = new MainListView2(mainListMemo, mainListMemo.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListMemo.2
                        @Override // com.mycompany.app.main.MainListListener
                        public final void g() {
                            MainListMemo.this.finish();
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void m(View view) {
                            final MainListMemo mainListMemo2 = MainListMemo.this;
                            DialogEditMemo dialogEditMemo = mainListMemo2.F1;
                            if (dialogEditMemo != null) {
                                return;
                            }
                            if (dialogEditMemo != null) {
                                dialogEditMemo.dismiss();
                                mainListMemo2.F1 = null;
                            }
                            DialogEditMemo dialogEditMemo2 = new DialogEditMemo(mainListMemo2, 37, 0L, null, null, new DialogEditUrl.EditUrlListener() { // from class: com.mycompany.app.main.list.MainListMemo.9
                                @Override // com.mycompany.app.dialog.DialogEditUrl.EditUrlListener
                                public final void a(long j, String str, String str2) {
                                    MainListMemo mainListMemo3 = MainListMemo.this;
                                    if (mainListMemo3.E1 != null) {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(Long.valueOf(j));
                                        mainListMemo3.E1.K(null, null, arrayList);
                                    }
                                }
                            });
                            mainListMemo2.F1 = dialogEditMemo2;
                            dialogEditMemo2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListMemo.10
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i11 = MainListMemo.I1;
                                    MainListMemo mainListMemo3 = MainListMemo.this;
                                    DialogEditMemo dialogEditMemo3 = mainListMemo3.F1;
                                    if (dialogEditMemo3 != null) {
                                        dialogEditMemo3.dismiss();
                                        mainListMemo3.F1 = null;
                                    }
                                }
                            });
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void o(ListTask.ListTaskConfig listTaskConfig) {
                            MainListMemo mainListMemo2 = MainListMemo.this;
                            MainListView2 mainListView2 = mainListMemo2.E1;
                            if (mainListView2 != null && mainListView2.l()) {
                                MainListMemo.D0(mainListMemo2, false);
                            } else {
                                MainListMemo.D0(mainListMemo2, true);
                            }
                        }
                    });
                    Handler handler2 = mainListMemo.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListMemo.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListMemo mainListMemo2 = MainListMemo.this;
                            MainListView2 mainListView2 = mainListMemo2.E1;
                            if (mainListView2 != null) {
                                mainListView2.k();
                                Handler handler3 = mainListMemo2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListMemo.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListView2 mainListView22 = MainListMemo.this.E1;
                                        if (mainListView22 == null) {
                                            return;
                                        }
                                        mainListView22.L(null, null);
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
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 != null) {
            mainListView2.n();
            this.E1 = null;
        }
        MyFadeFrame myFadeFrame = this.G1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.G1 = null;
        }
        this.D1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        DialogEditMemo dialogEditMemo;
        boolean isFinishing = isFinishing();
        super.onPause();
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 != null) {
            mainListView2.o(isFinishing);
        }
        if (isFinishing && (dialogEditMemo = this.F1) != null) {
            dialogEditMemo.dismiss();
            this.F1 = null;
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        boolean z = !this.C1;
        this.C1 = false;
        MainListView2 mainListView2 = this.E1;
        if (mainListView2 != null) {
            mainListView2.p(z, z);
        }
    }
}
