package com.mycompany.app.setting;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainTxtAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRecyclerView;
import java.io.BufferedReader;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SettingInfoLegalView extends SettingActivity {
    public static final /* synthetic */ int i2 = 0;
    public boolean X1;
    public boolean Y1;
    public MyCoverView Z1;
    public MainTxtAdapter a2;
    public LoadTask b2;
    public GestureDetector c2;
    public ScaleGestureDetector d2;
    public boolean e2;
    public HttpURLConnection f2;
    public InputStream g2;
    public BufferedReader h2;

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;

        public LoadTask(SettingInfoLegalView settingInfoLegalView) {
            this.e = new WeakReference(settingInfoLegalView);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x00c1 A[LOOP:0: B:13:0x00c1->B:25:0x00c1, LOOP_START] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingInfoLegalView.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingInfoLegalView settingInfoLegalView;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingInfoLegalView = (SettingInfoLegalView) weakReference.get()) != null) {
                settingInfoLegalView.b2 = null;
                MyCoverView myCoverView = settingInfoLegalView.Z1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.main.MainTxtAdapter, androidx.recyclerview.widget.RecyclerView$Adapter] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final SettingInfoLegalView settingInfoLegalView;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingInfoLegalView = (SettingInfoLegalView) weakReference.get()) != null) {
                settingInfoLegalView.b2 = null;
                ArrayList arrayList = this.f;
                if (arrayList != null && settingInfoLegalView.L1 != null) {
                    if (settingInfoLegalView.c2 == null) {
                        settingInfoLegalView.c2 = new GestureDetector(settingInfoLegalView, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.setting.SettingInfoLegalView.5
                            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                            public final boolean onDoubleTap(MotionEvent motionEvent) {
                                MainTxtAdapter mainTxtAdapter = SettingInfoLegalView.this.a2;
                                if (mainTxtAdapter == null) {
                                    return true;
                                }
                                int i = mainTxtAdapter.i;
                                if (i > 90 && i < 110) {
                                    mainTxtAdapter.i = HttpStatusCodes.STATUS_CODE_OK;
                                } else {
                                    mainTxtAdapter.i = 100;
                                }
                                mainTxtAdapter.x(mainTxtAdapter.i);
                                return true;
                            }
                        });
                    }
                    ?? adapter = new RecyclerView.Adapter();
                    adapter.f = arrayList;
                    adapter.d = 100;
                    adapter.e = 500;
                    adapter.i = 100;
                    adapter.j = 100;
                    adapter.k = -1;
                    settingInfoLegalView.a2 = adapter;
                    settingInfoLegalView.L1.setAdapter(adapter);
                }
                MyCoverView myCoverView = settingInfoLegalView.Z1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }
    }

    public final void O0(boolean z) {
        BufferedReader bufferedReader = this.h2;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Exception unused) {
            }
        }
        InputStream inputStream = this.g2;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
        }
        if (z) {
            HttpURLConnection httpURLConnection = this.f2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.f2 = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.f2;
        this.f2 = null;
        if (httpURLConnection2 == null) {
            return;
        }
        m0(new Runnable() { // from class: com.mycompany.app.setting.SettingInfoLegalView.4
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if (motionEvent.getActionMasked() == 5 && motionEvent.getPointerCount() > 1 && this.d2 == null && this.f1 != null) {
            this.d2 = new ScaleGestureDetector(this, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.mycompany.app.setting.SettingInfoLegalView.6
                @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
                public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                    MainTxtAdapter mainTxtAdapter = SettingInfoLegalView.this.a2;
                    if (mainTxtAdapter == null) {
                        return true;
                    }
                    mainTxtAdapter.w(scaleGestureDetector);
                    return true;
                }
            });
        }
        GestureDetector gestureDetector = this.c2;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        ScaleGestureDetector scaleGestureDetector = this.d2;
        if (scaleGestureDetector != null) {
            scaleGestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        boolean z = this.e2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.e2 = z2;
            MyRecyclerView myRecyclerView = this.L1;
            if (myRecyclerView != null) {
                if (z2) {
                    i = -14606047;
                } else {
                    i = -1;
                }
                try {
                    myRecyclerView.setBackgroundColor(i);
                    MainTxtAdapter mainTxtAdapter = this.a2;
                    if (mainTxtAdapter != null) {
                        mainTxtAdapter.g();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        this.e2 = MainApp.K1;
        this.X1 = getIntent().getBooleanExtra("EXTRA_WEB", false);
        boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_TOS", false);
        this.Y1 = booleanExtra;
        if (booleanExtra) {
            i = R.string.notice_tos;
        } else {
            i = R.string.notice_privacy;
        }
        int i3 = R.id.set_icon_frame;
        int i4 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = MainApp.b1;
        layoutParams.addRule(2, i4);
        myMainRelative.addView(myRecyclerView, layoutParams);
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.topMargin = MainApp.b1;
        layoutParams2.addRule(2, i4);
        myMainRelative.addView(myCoverView, layoutParams2);
        MyHeaderView myHeaderView = new MyHeaderView(this);
        myMainRelative.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams3.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        if (i > 0) {
            appCompatTextView.setText(i);
        }
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams4.addRule(16, i3);
        layoutParams4.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i3);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams5.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams5);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i4);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams6);
        this.E1 = myMainRelative;
        this.F1 = myHeaderView;
        this.G1 = myButtonImage;
        this.H1 = appCompatTextView;
        this.Z1 = myCoverView;
        this.L1 = myRecyclerView;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.E1.setWindow(getWindow());
        initMainScreenOn(this.E1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingInfoLegalView.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
            @Override // java.lang.Runnable
            public final void run() {
                int i5 = SettingInfoLegalView.i2;
                final SettingInfoLegalView settingInfoLegalView = SettingInfoLegalView.this;
                if (settingInfoLegalView.E1 == null) {
                    return;
                }
                if (MainApp.K1) {
                    settingInfoLegalView.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                    settingInfoLegalView.G1.setBgPreColor(-12632257);
                    settingInfoLegalView.H1.setTextColor(-328966);
                    settingInfoLegalView.L1.setBackgroundColor(-14606047);
                } else {
                    settingInfoLegalView.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
                    settingInfoLegalView.G1.setBgPreColor(553648128);
                    settingInfoLegalView.H1.setTextColor(-16777216);
                    settingInfoLegalView.L1.setBackgroundColor(-1);
                }
                settingInfoLegalView.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingInfoLegalView.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingInfoLegalView.this.finish();
                    }
                });
                ?? linearLayoutManager = new LinearLayoutManager(1);
                settingInfoLegalView.M1 = linearLayoutManager;
                settingInfoLegalView.L1.setLayoutManager(linearLayoutManager);
                settingInfoLegalView.L1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingInfoLegalView.3
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public final void b(RecyclerView recyclerView, int i6, int i7) {
                        SettingInfoLegalView settingInfoLegalView2 = SettingInfoLegalView.this;
                        MyRecyclerView myRecyclerView2 = settingInfoLegalView2.L1;
                        if (myRecyclerView2 == null) {
                            return;
                        }
                        if (myRecyclerView2.computeVerticalScrollOffset() > settingInfoLegalView2.O1) {
                            settingInfoLegalView2.L1.w0();
                        } else {
                            settingInfoLegalView2.L1.r0();
                        }
                    }
                });
                settingInfoLegalView.Z1.m(true);
                LoadTask loadTask = settingInfoLegalView.b2;
                if (loadTask != null) {
                    loadTask.f12839c = true;
                }
                settingInfoLegalView.b2 = null;
                LoadTask loadTask2 = new LoadTask(settingInfoLegalView);
                settingInfoLegalView.b2 = loadTask2;
                loadTask2.b(settingInfoLegalView.f1);
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyCoverView myCoverView = this.Z1;
        if (myCoverView != null) {
            myCoverView.i();
            this.Z1 = null;
        }
        MainTxtAdapter mainTxtAdapter = this.a2;
        if (mainTxtAdapter != null) {
            mainTxtAdapter.n = mainTxtAdapter.d();
            mainTxtAdapter.f = null;
            mainTxtAdapter.h = null;
            mainTxtAdapter.l = null;
            mainTxtAdapter.m = null;
            this.a2 = null;
        }
        this.c2 = null;
        this.d2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            O0(false);
            LoadTask loadTask = this.b2;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.b2 = null;
        }
    }
}
