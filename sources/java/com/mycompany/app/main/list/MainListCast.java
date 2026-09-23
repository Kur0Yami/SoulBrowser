package com.mycompany.app.main.list;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastSession;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.cast.CastLocal;
import com.mycompany.app.cast.ExpandedControlsActivity;
import com.mycompany.app.data.DataCast;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.setting.SettingCast;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes3.dex */
public class MainListCast extends CastActivity {
    public static final /* synthetic */ int N1 = 0;
    public boolean C1;
    public boolean D1;
    public boolean E1;
    public boolean F1;
    public MyMainRelative G1;
    public MainListView H1;
    public MyButtonText I1;
    public DialogSetMsg J1;
    public boolean K1;
    public CastTask L1;
    public MainListView.ListViewHolder M1;

    /* loaded from: classes3.dex */
    public static class CastTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public int g;
        public MediaQueueItem[] h;
        public boolean i;

        public CastTask(MainListCast mainListCast, List list, int i) {
            WeakReference weakReference = new WeakReference(mainListCast);
            this.e = weakReference;
            if (((MainListCast) weakReference.get()) == null) {
                return;
            }
            this.f = list;
            this.g = i;
            this.i = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0235 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x022b A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r5v21 */
        /* JADX WARN: Type inference failed for: r5v6 */
        /* JADX WARN: Type inference failed for: r5v7 */
        /* JADX WARN: Type inference failed for: r9v16, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 683
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.list.MainListCast.CastTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainListCast mainListCast;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainListCast = (MainListCast) weakReference.get()) == null) {
                return;
            }
            mainListCast.L1 = null;
            CastLocal.a().c();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            MainListCast mainListCast;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainListCast = (MainListCast) weakReference.get()) == null) {
                return;
            }
            mainListCast.L1 = null;
            MediaQueueItem[] mediaQueueItemArr = this.h;
            if (mediaQueueItemArr != null && mediaQueueItemArr.length != 0) {
                try {
                    int length = mediaQueueItemArr.length;
                    if (this.g >= length) {
                        this.g = length - 1;
                    }
                    if (this.g < 0) {
                        this.g = 0;
                    }
                    if (!this.i && !PrefMain.t) {
                        i = 0;
                        mainListCast.p1.j().r(this.h, this.g, i, 0L);
                        mainListCast.E1 = true;
                        mainListCast.startActivity(new Intent(mainListCast.f1, (Class<?>) ExpandedControlsActivity.class));
                        return;
                    }
                    i = 1;
                    mainListCast.p1.j().r(this.h, this.g, i, 0L);
                    mainListCast.E1 = true;
                    mainListCast.startActivity(new Intent(mainListCast.f1, (Class<?>) ExpandedControlsActivity.class));
                    return;
                } catch (Exception unused) {
                    CastLocal.a().c();
                    MainUtil.e8(mainListCast, R.string.play_error);
                    return;
                }
            }
            CastLocal.a().c();
        }
    }

    public static void D0(MainListCast mainListCast, boolean z) {
        if (mainListCast.f1 == null) {
            return;
        }
        mainListCast.E1 = true;
        Intent intent = new Intent(mainListCast.f1, (Class<?>) SettingCast.class);
        if (z) {
            intent.putExtra("EXTRA_NOTI", true);
            intent.putExtra("EXTRA_INDEX", 1);
        }
        mainListCast.startActivity(intent);
    }

    public final void E0(Intent intent) {
        MainApp p;
        if (intent != null) {
            boolean booleanExtra = intent.getBooleanExtra("EXTRA_SHORT", false);
            this.D1 = booleanExtra;
            if (booleanExtra) {
                if (PrefList.r == 0) {
                    PrefAlbum.s(this.f1, true);
                    PrefImage.s(this.f1, true);
                    PrefList.s(this.f1, true);
                    PrefPath.s(this.f1, true);
                }
                if (MainUtil.z6() && (p = MainApp.p(getApplicationContext())) != null) {
                    p.p = true;
                }
            }
        }
    }

    public final void F0() {
        DialogSetMsg dialogSetMsg = this.J1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.J1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView = this.H1;
        if (mainListView == null) {
            return false;
        }
        mainListView.q(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 19 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            String a2 = MainUri.a(data);
            if (TextUtils.isEmpty(a2)) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            int i3 = PrefList.r;
            if (i3 == 4) {
                if (!a2.equals(PrefPath.w)) {
                    DataCast.m(this.f1).j();
                    PrefPath.w = a2;
                    PrefSet.c(6, this.f1, "mScanImage", a2);
                }
            } else if (i3 == 6) {
                if (!a2.equals(PrefPath.y)) {
                    DataCast.m(this.f1).j();
                    PrefPath.y = a2;
                    PrefSet.c(6, this.f1, "mScanMusic", a2);
                }
            } else if (!a2.equals(PrefPath.x)) {
                DataCast.m(this.f1).j();
                PrefPath.x = a2;
                PrefSet.c(6, this.f1, "mScanVideo", a2);
            }
            MainUtil.z7(this.f1, data);
            this.F1 = true;
            this.K1 = true;
            MainListView mainListView = this.H1;
            if (mainListView != null) {
                mainListView.P();
            }
            MainUtil.e8(this, R.string.dir_scanning);
        }
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
            MyMainRelative myMainRelative = this.G1;
            if (myMainRelative != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                myMainRelative.b(window, i);
            }
            MyButtonText myButtonText = this.I1;
            if (myButtonText != null) {
                if (MainApp.K1) {
                    myButtonText.setTextColor(-328966);
                    this.I1.u(-16777216, -14211289);
                } else {
                    myButtonText.setTextColor(-16777216);
                    this.I1.u(-460552, 553648128);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        MainUtil.u7(this);
        E0(getIntent());
        if (this.D1) {
            MainApp.x(getResources());
        }
        o0(null, 19);
        int i = R.id.list_title_text;
        int i2 = R.id.list_icon_frame;
        int i3 = R.id.list_bottom_view;
        int i4 = R.id.list_cast_icon;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(this);
        myMainRelative.addView(frameLayout, a.h(-1, -1, 2, i3));
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
        MyScrollBar myScrollBar = new MyScrollBar(this);
        int i5 = MainApp.b1;
        int i6 = MainApp.i1;
        myScrollBar.O = i5;
        myScrollBar.P = i6;
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
        MyButtonText myButtonText = new MyButtonText(this);
        myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText.setGravity(17);
        myButtonText.setTextSize(1, 14.0f);
        myButtonText.setText(R.string.select_dir);
        myButtonText.setMinHeight(MainApp.f1);
        myButtonText.setBgNorFixed(true);
        myButtonText.setRoundRect(true);
        myButtonText.setRoundRadius(MainApp.F1);
        myButtonText.setVisibility(8);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 80;
        int G = (int) MainUtil.G(this, 20.0f);
        layoutParams4.bottomMargin = G;
        layoutParams4.setMarginStart(G);
        layoutParams4.setMarginEnd(G);
        frameLayout.addView(myButtonText, layoutParams4);
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
        MyButtonRelative myButtonRelative = new MyButtonRelative(this);
        myButtonRelative.e(MainApp.g1 / 2, false);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams7.addRule(16, i2);
        layoutParams7.topMargin = MainApp.G1;
        layoutParams7.setMarginStart(MainApp.g1);
        myHeaderView.addView(myButtonRelative, layoutParams7);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setId(i);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        appCompatTextView.setText(R.string.down_list);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(15);
        layoutParams8.setMarginStart(MainApp.E1);
        myButtonRelative.addView(appCompatTextView, layoutParams8);
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(scaleType);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams9.addRule(17, i);
        myButtonRelative.addView(imageView, layoutParams9);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i2);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams10.addRule(16, i4);
        layoutParams10.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout2, layoutParams10);
        int G2 = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G2, G2, G2, G2);
        myButtonImage2.setScaleType(scaleType);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams11.gravity = 8388613;
        layoutParams11.setMarginEnd(MainApp.g1 * 2);
        frameLayout2.addView(myButtonImage2, layoutParams11);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G2, G2, G2, G2);
        myButtonImage3.setScaleType(scaleType);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams12.gravity = 8388613;
        layoutParams12.setMarginEnd(MainApp.g1);
        frameLayout2.addView(myButtonImage3, layoutParams12);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setPadding(G2, G2, G2, G2);
        myButtonImage4.setScaleType(scaleType);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams13.gravity = 8388613;
        frameLayout2.addView(myButtonImage4, layoutParams13);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        int i11 = MainApp.F1;
        appCompatTextView2.setPadding(i11, 0, i11, 0);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams14.gravity = 8388613;
        layoutParams14.setMarginEnd((int) MainUtil.G(this, 52.0f));
        frameLayout2.addView(appCompatTextView2, layoutParams14);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.setVisibility(8);
        int i12 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i12, i12);
        layoutParams15.gravity = 8388613;
        frameLayout2.addView(myButtonCheck, layoutParams15);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i4);
        frameLayout3.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams16.addRule(21);
        myHeaderView.addView(frameLayout3, layoutParams16);
        MyProgressBar myProgressBar = new MyProgressBar(this);
        myProgressBar.d((int) MainUtil.G(this, 1.5f));
        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams17.topMargin = MainApp.b1;
        frameLayout.addView(myProgressBar, layoutParams17);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setId(i3);
        RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams18.addRule(12);
        myMainRelative.addView(relativeLayout, layoutParams18);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setVisibility(8);
        relativeLayout.addView(frameLayout4, -1, -2);
        this.G1 = myMainRelative;
        this.I1 = myButtonText;
        ?? obj = new Object();
        obj.f16736a = myMainRelative;
        obj.b = frameLayout;
        obj.r = fragmentExpandView;
        obj.s = myScrollBar;
        obj.t = myFadeImage;
        obj.u = myCoverView;
        obj.d = myHeaderView;
        obj.e = myButtonImage;
        obj.g = myButtonRelative;
        obj.f = appCompatTextView;
        obj.h = imageView;
        obj.l = myButtonImage2;
        obj.m = myButtonImage3;
        obj.n = myButtonImage4;
        obj.o = appCompatTextView2;
        obj.p = myButtonCheck;
        obj.q = myProgressBar;
        this.M1 = obj;
        B0(myMainRelative, frameLayout3, frameLayout4);
        this.G1.setWindow(getWindow());
        initMainScreenOn(this.G1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListCast.1
            /* JADX WARN: Type inference failed for: r3v2, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                int i13;
                final MainListCast mainListCast = MainListCast.this;
                MainListView.ListViewHolder listViewHolder = mainListCast.M1;
                mainListCast.M1 = null;
                if (listViewHolder != null && mainListCast.G1 != null) {
                    int i14 = PrefList.r;
                    if (i14 == 4) {
                        i13 = R.string.image;
                    } else if (i14 == 6) {
                        i13 = R.string.audio;
                    } else {
                        i13 = R.string.video;
                    }
                    ?? obj2 = new Object();
                    obj2.f16734a = 13;
                    obj2.e = listViewHolder;
                    obj2.f = i13;
                    obj2.g = MainApp.b1;
                    obj2.h = true;
                    obj2.j = false;
                    obj2.k = true;
                    mainListCast.H1 = new MainListView(mainListCast, mainListCast.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListCast.2
                        @Override // com.mycompany.app.main.MainListListener
                        public final void b(int i15, List list) {
                            final MainListCast mainListCast2 = MainListCast.this;
                            CastSession castSession = mainListCast2.p1;
                            if (castSession != null && castSession.c()) {
                                int i16 = MainListCast.N1;
                                CastTask castTask = mainListCast2.L1;
                                if (castTask != null) {
                                    castTask.f12839c = true;
                                }
                                mainListCast2.L1 = null;
                                CastTask castTask2 = new CastTask(mainListCast2, list, i15);
                                mainListCast2.L1 = castTask2;
                                castTask2.b(mainListCast2.f1);
                                return;
                            }
                            if (PrefMain.s) {
                                mainListCast2.w0();
                                return;
                            }
                            if (mainListCast2.J1 != null) {
                                return;
                            }
                            mainListCast2.F0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(mainListCast2, "[ " + mainListCast2.getString(R.string.tv_cast) + " ]\n" + mainListCast2.getString(R.string.active_function), R.string.setting, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.list.MainListCast.5
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int i17 = MainListCast.N1;
                                    MainListCast mainListCast3 = MainListCast.this;
                                    mainListCast3.F0();
                                    MainListCast.D0(mainListCast3, true);
                                }
                            });
                            mainListCast2.J1 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListCast.6
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i17 = MainListCast.N1;
                                    MainListCast.this.F0();
                                }
                            });
                        }

                        /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
                        /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
                        @Override // com.mycompany.app.main.MainListListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void o(com.mycompany.app.list.ListTask.ListTaskConfig r6) {
                            /*
                                r5 = this;
                                com.mycompany.app.main.list.MainListCast r6 = com.mycompany.app.main.list.MainListCast.this
                                com.mycompany.app.main.MainListView r0 = r6.H1
                                if (r0 == 0) goto L71
                                com.mycompany.app.view.MyButtonText r1 = r6.I1
                                if (r1 != 0) goto Lc
                                goto L71
                            Lc:
                                boolean r1 = r0.c1
                                r2 = 1
                                r3 = 0
                                if (r1 == 0) goto L13
                                goto L26
                            L13:
                                com.mycompany.app.main.MainListAdapter r0 = r0.h0
                                if (r0 != 0) goto L18
                                goto L26
                            L18:
                                java.util.List r0 = r0.i
                                if (r0 != 0) goto L1e
                                r0 = r3
                                goto L22
                            L1e:
                                int r0 = r0.size()
                            L22:
                                if (r0 != 0) goto L26
                                r0 = r2
                                goto L27
                            L26:
                                r0 = r3
                            L27:
                                if (r0 == 0) goto L3a
                                boolean r0 = r6.K1
                                if (r0 == 0) goto L34
                                r6.K1 = r3
                                int r0 = com.mycompany.app.soulbrowser.R.string.no_found
                                com.mycompany.app.main.MainUtil.e8(r6, r0)
                            L34:
                                com.mycompany.app.view.MyButtonText r6 = r6.I1
                                r6.setVisibility(r3)
                                return
                            L3a:
                                boolean r0 = r6.K1
                                if (r0 == 0) goto L6a
                                r6.K1 = r3
                                java.util.Locale r0 = java.util.Locale.US
                                android.content.Context r1 = r6.f1
                                int r4 = com.mycompany.app.soulbrowser.R.string.file_found
                                java.lang.String r1 = r1.getString(r4)
                                com.mycompany.app.main.MainListView r4 = r6.H1
                                com.mycompany.app.main.MainListAdapter r4 = r4.h0
                                if (r4 != 0) goto L52
                            L50:
                                r4 = r3
                                goto L5b
                            L52:
                                java.util.List r4 = r4.i
                                if (r4 != 0) goto L57
                                goto L50
                            L57:
                                int r4 = r4.size()
                            L5b:
                                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                                java.lang.Object[] r2 = new java.lang.Object[r2]
                                r2[r3] = r4
                                java.lang.String r0 = java.lang.String.format(r0, r1, r2)
                                com.mycompany.app.main.MainUtil.f8(r6, r0)
                            L6a:
                                com.mycompany.app.view.MyButtonText r6 = r6.I1
                                r0 = 8
                                r6.setVisibility(r0)
                            L71:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.list.MainListCast.AnonymousClass2.o(com.mycompany.app.list.ListTask$ListTaskConfig):void");
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void r() {
                            int i15 = PrefList.r;
                            MainListCast mainListCast2 = MainListCast.this;
                            if (i15 == 4) {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.w);
                            } else if (i15 == 6) {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.y);
                            } else {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.x);
                            }
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void s() {
                            MainListCast.D0(MainListCast.this, false);
                        }
                    });
                    if (MainApp.K1) {
                        mainListCast.I1.setTextColor(-328966);
                        mainListCast.I1.u(-16777216, -14211289);
                    } else {
                        mainListCast.I1.setTextColor(-16777216);
                        mainListCast.I1.u(-460552, 553648128);
                    }
                    mainListCast.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListCast.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i15 = PrefList.r;
                            MainListCast mainListCast2 = MainListCast.this;
                            if (i15 == 4) {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.w);
                            } else if (i15 == 6) {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.y);
                            } else {
                                mainListCast2.E1 = MainUtil.F4(mainListCast2, PrefPath.x);
                            }
                        }
                    });
                    Handler handler2 = mainListCast.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListCast.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListCast mainListCast2 = MainListCast.this;
                            MainListView mainListView = mainListCast2.H1;
                            if (mainListView != null) {
                                mainListView.I();
                                Handler handler3 = mainListCast2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListCast.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListView mainListView2 = MainListCast.this.H1;
                                        if (mainListView2 == null) {
                                            return;
                                        }
                                        mainListView2.U(true, true);
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
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.O();
            this.H1 = null;
        }
        MyButtonText myButtonText = this.I1;
        if (myButtonText != null) {
            myButtonText.t();
            this.I1 = null;
        }
        this.G1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        E0(intent);
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        boolean isFinishing = isFinishing();
        super.onPause();
        if (this.D1 && !this.E1) {
            finishAffinity();
        }
        this.E1 = false;
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.Q(isFinishing);
        }
        if (isFinishing) {
            F0();
            CastTask castTask = this.L1;
            if (castTask != null) {
                castTask.f12839c = true;
            }
            this.L1 = null;
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        boolean z;
        super.onResume();
        boolean z2 = this.C1;
        boolean z3 = !z2;
        if (!z2 && !this.F1) {
            z = true;
        } else {
            z = false;
        }
        MainListView mainListView = this.H1;
        if (mainListView != null) {
            mainListView.R(z3, z, this.F1);
        }
        this.C1 = false;
        this.F1 = false;
    }
}
