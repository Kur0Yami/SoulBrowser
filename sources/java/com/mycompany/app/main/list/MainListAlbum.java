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
import com.mycompany.app.compress.CompressUtil;
import com.mycompany.app.dialog.DialogExtract;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.image.ImageViewActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.setting.CastActivity;
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
import java.util.List;

/* loaded from: classes3.dex */
public class MainListAlbum extends CastActivity {
    public static final /* synthetic */ int U1 = 0;
    public boolean C1;
    public boolean D1;
    public boolean E1;
    public boolean F1;
    public int G1;
    public MyMainRelative H1;
    public MainListView I1;
    public MyButtonText J1;
    public int K1;
    public int L1;
    public boolean M1;
    public boolean N1;
    public boolean O1;
    public boolean P1;
    public DialogExtract Q1;
    public List R1;
    public boolean S1;
    public MainListView.ListViewHolder T1;

    public final void D0(Intent intent) {
        MainApp p;
        if (intent != null) {
            boolean booleanExtra = intent.getBooleanExtra("EXTRA_SHORT", false);
            this.D1 = booleanExtra;
            if (booleanExtra) {
                if (PrefList.j == 0) {
                    PrefAlbum.s(this.f1, true);
                    PrefImage.s(this.f1, true);
                    PrefList.s(this.f1, true);
                    PrefPath.s(this.f1, true);
                }
                if (MainUtil.z6() && (p = MainApp.p(getApplicationContext())) != null) {
                    p.p = true;
                }
                int i = PrefList.j;
                this.G1 = i;
                if (i != 1 && i != 2 && i != 3) {
                    this.G1 = 1;
                }
            } else {
                this.G1 = intent.getIntExtra("EXTRA_TYPE", 1);
            }
            int i2 = PrefList.j;
            int i3 = this.G1;
            if (i2 != i3) {
                PrefList.j = i3;
                PrefSet.f(this.f1, 4, i3, "mViewType");
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView = this.I1;
        if (mainListView == null) {
            return false;
        }
        mainListView.q(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        boolean z;
        MainListAlbum mainListAlbum;
        if (i != 7) {
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
                List list = this.R1;
                if (list != null) {
                    DialogExtract dialogExtract = this.Q1;
                    if (dialogExtract == null) {
                        if (dialogExtract != null) {
                            dialogExtract.dismiss();
                            this.Q1 = null;
                        }
                        if (!TextUtils.isEmpty(a2) && !list.isEmpty()) {
                            DialogExtract dialogExtract2 = new DialogExtract(this, this.G1, list, a2, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.main.list.MainListAlbum.5
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    MainListView mainListView = MainListAlbum.this.I1;
                                    if (mainListView != null) {
                                        mainListView.d0(false, -1, false, true);
                                    }
                                }
                            });
                            mainListAlbum = this;
                            mainListAlbum.Q1 = dialogExtract2;
                            dialogExtract2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListAlbum.6
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i3 = MainListAlbum.U1;
                                    MainListAlbum mainListAlbum2 = MainListAlbum.this;
                                    DialogExtract dialogExtract3 = mainListAlbum2.Q1;
                                    if (dialogExtract3 != null) {
                                        dialogExtract3.dismiss();
                                        mainListAlbum2.Q1 = null;
                                    }
                                }
                            });
                            mainListAlbum.R1 = null;
                            return;
                        }
                    }
                    mainListAlbum = this;
                    mainListAlbum.R1 = null;
                    return;
                }
                int i3 = this.G1;
                if (i3 == 2) {
                    if (!a2.equals(PrefPath.t)) {
                        PrefPath.t = a2;
                        PrefSet.c(6, this.f1, "mScanPdf", a2);
                    }
                } else if (i3 == 3) {
                    if (!a2.equals(PrefPath.u)) {
                        PrefPath.u = a2;
                        PrefSet.c(6, this.f1, "mScanZip", a2);
                    }
                } else if (!a2.equals(PrefPath.s)) {
                    PrefPath.s = a2;
                    PrefSet.c(6, this.f1, "mScanAlbum", a2);
                }
                MainUtil.z7(this.f1, data);
                this.F1 = true;
                this.S1 = true;
                MainListView mainListView = this.I1;
                if (mainListView != null) {
                    mainListView.P();
                }
                MainUtil.e8(this, R.string.dir_scanning);
                return;
            }
            return;
        }
        if (i2 == -1 && intent != null && this.I1 != null) {
            if (this.K1 == PrefUtil.d(this.G1) && this.L1 == PrefUtil.e(this.G1) && this.M1 == PrefUtil.f(this.G1) && this.N1 == PrefUtil.a(this.G1) && this.O1 == PrefUtil.c(this.G1) && this.P1 == PrefUtil.b(this.G1)) {
                z = false;
            } else {
                z = true;
            }
            int intExtra = intent.getIntExtra("EXTRA_INDEX", -1);
            if (z) {
                MainListView mainListView2 = this.I1;
                MainListAdapter mainListAdapter = mainListView2.h0;
                if (mainListAdapter != null) {
                    MainItem.ChildItem m = mainListAdapter.m(intExtra);
                    if (m == null) {
                        mainListView2.k0 = -1;
                        mainListView2.l0 = -1;
                        mainListView2.h0.B(-1, false);
                    } else {
                        mainListView2.k0 = m.H;
                        mainListView2.l0 = intExtra;
                        mainListView2.h0.B(intExtra, false);
                    }
                }
                this.F1 = false;
            } else {
                this.F1 = this.I1.g0(intExtra, false);
            }
            if (!this.F1) {
                this.I1.j0 = true;
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        MainListView mainListView = this.I1;
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
        MainListView mainListView = this.I1;
        if (mainListView != null && mainListView.b0(configuration)) {
            MyMainRelative myMainRelative = this.H1;
            if (myMainRelative != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                myMainRelative.b(window, i);
            }
            MyButtonText myButtonText = this.J1;
            if (myButtonText != null) {
                if (MainApp.K1) {
                    myButtonText.setTextColor(-328966);
                    this.J1.u(-16777216, -14211289);
                } else {
                    myButtonText.setTextColor(-16777216);
                    this.J1.u(-460552, 553648128);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.mycompany.app.view.MyListGroup, android.widget.RelativeLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.C1 = true;
        MainUtil.u7(this);
        D0(getIntent());
        if (this.D1) {
            MainApp.x(getResources());
        }
        o0(null, 19);
        o0(null, 7);
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
        ?? relativeLayout = new RelativeLayout(this);
        relativeLayout.setVisibility(4);
        frameLayout.addView((View) relativeLayout, -1, -2);
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
        myButtonText.setText(R.string.scan_dir);
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
        layoutParams11.setMarginEnd(MainApp.g1 * 3);
        frameLayout2.addView(myButtonImage2, layoutParams11);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G2, G2, G2, G2);
        myButtonImage3.setScaleType(scaleType);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams12.gravity = 8388613;
        layoutParams12.setMarginEnd(MainApp.g1 * 2);
        frameLayout2.addView(myButtonImage3, layoutParams12);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setPadding(G2, G2, G2, G2);
        myButtonImage4.setScaleType(scaleType);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams13.gravity = 8388613;
        layoutParams13.setMarginEnd(MainApp.g1);
        frameLayout2.addView(myButtonImage4, layoutParams13);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setPadding(G2, G2, G2, G2);
        myButtonImage5.setScaleType(scaleType);
        int i11 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i11, i11);
        layoutParams14.gravity = 8388613;
        frameLayout2.addView(myButtonImage5, layoutParams14);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        int i12 = MainApp.F1;
        appCompatTextView2.setPadding(i12, 0, i12, 0);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams15.gravity = 8388613;
        layoutParams15.setMarginEnd((int) MainUtil.G(this, 52.0f));
        frameLayout2.addView(appCompatTextView2, layoutParams15);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.setVisibility(8);
        int i13 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(i13, i13);
        layoutParams16.gravity = 8388613;
        frameLayout2.addView(myButtonCheck, layoutParams16);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i4);
        frameLayout3.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams17.addRule(21);
        myHeaderView.addView(frameLayout3, layoutParams17);
        MyProgressBar myProgressBar = new MyProgressBar(this);
        myProgressBar.d((int) MainUtil.G(this, 1.5f));
        FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams18.topMargin = MainApp.b1;
        frameLayout.addView(myProgressBar, layoutParams18);
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setId(i3);
        RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams19.addRule(12);
        myMainRelative.addView(relativeLayout2, layoutParams19);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setVisibility(8);
        relativeLayout2.addView(frameLayout4, -1, -2);
        this.H1 = myMainRelative;
        this.J1 = myButtonText;
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
        obj.g = myButtonRelative;
        obj.f = appCompatTextView;
        obj.h = imageView;
        obj.j = myButtonImage2;
        obj.l = myButtonImage3;
        obj.m = myButtonImage4;
        obj.n = myButtonImage5;
        obj.o = appCompatTextView2;
        obj.p = myButtonCheck;
        obj.q = myProgressBar;
        this.T1 = obj;
        B0(myMainRelative, frameLayout3, frameLayout4);
        this.H1.setWindow(getWindow());
        initMainScreenOn(this.H1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAlbum.1
            /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                int i14;
                final MainListAlbum mainListAlbum = MainListAlbum.this;
                MainListView.ListViewHolder listViewHolder = mainListAlbum.T1;
                mainListAlbum.T1 = null;
                if (listViewHolder != null && mainListAlbum.H1 != null) {
                    int i15 = mainListAlbum.G1;
                    if (i15 == 2) {
                        i14 = R.string.pdf;
                    } else if (i15 == 3) {
                        i14 = R.string.zip;
                    } else {
                        i14 = R.string.album;
                    }
                    ?? obj2 = new Object();
                    obj2.f16734a = i15;
                    obj2.e = listViewHolder;
                    obj2.f = i14;
                    obj2.g = MainApp.b1;
                    obj2.h = true;
                    obj2.j = true;
                    obj2.k = true;
                    mainListAlbum.I1 = new MainListView(mainListAlbum, mainListAlbum.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListAlbum.2
                        @Override // com.mycompany.app.main.MainListListener
                        public final void c(DialogListBook dialogListBook) {
                            MainListAlbum.this.C0(dialogListBook);
                        }

                        /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
                        /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
                        @Override // com.mycompany.app.main.MainListListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void d(int r4) {
                            /*
                                r3 = this;
                                com.mycompany.app.main.list.MainListAlbum r0 = com.mycompany.app.main.list.MainListAlbum.this
                                r0.G1 = r4
                                com.mycompany.app.main.MainListView r4 = r0.I1
                                if (r4 == 0) goto L36
                                com.mycompany.app.view.MyButtonText r1 = r0.J1
                                if (r1 != 0) goto Ld
                                goto L36
                            Ld:
                                boolean r1 = r4.c1
                                r2 = 0
                                if (r1 == 0) goto L13
                                goto L26
                            L13:
                                com.mycompany.app.main.MainListAdapter r4 = r4.h0
                                if (r4 != 0) goto L18
                                goto L26
                            L18:
                                java.util.List r4 = r4.i
                                if (r4 != 0) goto L1e
                                r4 = r2
                                goto L22
                            L1e:
                                int r4 = r4.size()
                            L22:
                                if (r4 != 0) goto L26
                                r4 = 1
                                goto L27
                            L26:
                                r4 = r2
                            L27:
                                if (r4 == 0) goto L2f
                                com.mycompany.app.view.MyButtonText r4 = r0.J1
                                r4.setVisibility(r2)
                                return
                            L2f:
                                com.mycompany.app.view.MyButtonText r4 = r0.J1
                                r0 = 8
                                r4.setVisibility(r0)
                            L36:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.list.MainListAlbum.AnonymousClass2.d(int):void");
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void f(int i16, MainItem.ChildItem childItem, boolean z) {
                            MainListAlbum mainListAlbum2 = MainListAlbum.this;
                            if (mainListAlbum2.I1 != null) {
                                if (!MainUri.r(mainListAlbum2.f1, childItem.g)) {
                                    MainUtil.e8(mainListAlbum2, R.string.invalid_path);
                                    return;
                                }
                                FragmentExpandView fragmentExpandView2 = mainListAlbum2.I1.M;
                                if (fragmentExpandView2 != null) {
                                    fragmentExpandView2.setEnabled(false);
                                }
                                MainListView mainListView = mainListAlbum2.I1;
                                MainListAdapter mainListAdapter = mainListView.h0;
                                if (mainListAdapter != null && mainListAdapter.B(i16, false)) {
                                    mainListView.p(false);
                                }
                                mainListAlbum2.E1 = true;
                                Intent intent = new Intent(mainListAlbum2.f1, (Class<?>) ImageViewActivity.class);
                                intent.putExtra("EXTRA_TYPE", mainListAlbum2.G1);
                                intent.putExtra("EXTRA_BOOK", z);
                                intent.putExtra("EXTRA_INDEX", i16);
                                mainListAlbum2.o0(intent, 7);
                            }
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void k(List list) {
                            MainListAlbum mainListAlbum2 = MainListAlbum.this;
                            mainListAlbum2.R1 = list;
                            int i16 = mainListAlbum2.G1;
                            if (i16 == 2) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.t);
                            } else if (i16 == 3) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.u);
                            } else {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.s);
                            }
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
                        
                            if (r7 == 0) goto L31;
                         */
                        @Override // com.mycompany.app.main.MainListListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void o(com.mycompany.app.list.ListTask.ListTaskConfig r7) {
                            /*
                                r6 = this;
                                com.mycompany.app.main.list.MainListAlbum r0 = com.mycompany.app.main.list.MainListAlbum.this
                                com.mycompany.app.main.MainListView r1 = r0.I1
                                if (r1 != 0) goto L8
                                goto L6b
                            L8:
                                int r2 = r7.t
                                r3 = 1
                                r4 = 0
                                if (r2 <= 0) goto L2c
                                r0.S1 = r4
                                java.util.Locale r1 = java.util.Locale.US
                                android.content.Context r2 = r0.f1
                                int r5 = com.mycompany.app.soulbrowser.R.string.file_added
                                java.lang.String r2 = r2.getString(r5)
                                int r7 = r7.t
                                java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
                                java.lang.Object[] r5 = new java.lang.Object[r3]
                                r5[r4] = r7
                                java.lang.String r7 = java.lang.String.format(r1, r2, r5)
                                com.mycompany.app.main.MainUtil.f8(r0, r7)
                                goto L3b
                            L2c:
                                boolean r7 = r0.S1
                                if (r7 == 0) goto L3b
                                boolean r7 = r1.L
                                if (r7 != 0) goto L3b
                                r0.S1 = r4
                                int r7 = com.mycompany.app.soulbrowser.R.string.no_added
                                com.mycompany.app.main.MainUtil.e8(r0, r7)
                            L3b:
                                com.mycompany.app.main.MainListView r7 = r0.I1
                                if (r7 == 0) goto L6b
                                com.mycompany.app.view.MyButtonText r1 = r0.J1
                                if (r1 != 0) goto L44
                                goto L6b
                            L44:
                                boolean r1 = r7.c1
                                if (r1 == 0) goto L49
                                goto L5b
                            L49:
                                com.mycompany.app.main.MainListAdapter r7 = r7.h0
                                if (r7 != 0) goto L4e
                                goto L5b
                            L4e:
                                java.util.List r7 = r7.i
                                if (r7 != 0) goto L54
                                r7 = r4
                                goto L58
                            L54:
                                int r7 = r7.size()
                            L58:
                                if (r7 != 0) goto L5b
                                goto L5c
                            L5b:
                                r3 = r4
                            L5c:
                                if (r3 == 0) goto L64
                                com.mycompany.app.view.MyButtonText r7 = r0.J1
                                r7.setVisibility(r4)
                                return
                            L64:
                                com.mycompany.app.view.MyButtonText r7 = r0.J1
                                r0 = 8
                                r7.setVisibility(r0)
                            L6b:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.list.MainListAlbum.AnonymousClass2.o(com.mycompany.app.list.ListTask$ListTaskConfig):void");
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void r() {
                            MainListAlbum mainListAlbum2 = MainListAlbum.this;
                            mainListAlbum2.R1 = null;
                            int i16 = mainListAlbum2.G1;
                            if (i16 == 2) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.t);
                            } else if (i16 == 3) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.u);
                            } else {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.s);
                            }
                        }
                    });
                    if (MainApp.K1) {
                        mainListAlbum.J1.setTextColor(-328966);
                        mainListAlbum.J1.u(-16777216, -14211289);
                    } else {
                        mainListAlbum.J1.setTextColor(-16777216);
                        mainListAlbum.J1.u(-460552, 553648128);
                    }
                    mainListAlbum.J1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.list.MainListAlbum.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MainListAlbum mainListAlbum2 = MainListAlbum.this;
                            mainListAlbum2.R1 = null;
                            int i16 = mainListAlbum2.G1;
                            if (i16 == 2) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.t);
                            } else if (i16 == 3) {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.u);
                            } else {
                                mainListAlbum2.E1 = MainUtil.F4(mainListAlbum2, PrefPath.s);
                            }
                        }
                    });
                    Handler handler2 = mainListAlbum.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAlbum.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListAlbum mainListAlbum2 = MainListAlbum.this;
                            MainListView mainListView = mainListAlbum2.I1;
                            if (mainListView != null) {
                                mainListView.I();
                                Handler handler3 = mainListAlbum2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListAlbum.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListView mainListView2 = MainListAlbum.this.I1;
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
        MainListView mainListView = this.I1;
        if (mainListView != null) {
            mainListView.O();
            this.I1 = null;
        }
        MyButtonText myButtonText = this.J1;
        if (myButtonText != null) {
            myButtonText.t();
            this.J1 = null;
        }
        this.H1 = null;
        this.R1 = null;
        CompressUtil.a(getApplicationContext());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        D0(intent);
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        boolean isFinishing = isFinishing();
        super.onPause();
        if (this.D1 && !this.E1) {
            finishAffinity();
        }
        this.E1 = false;
        MainListView mainListView = this.I1;
        if (mainListView != null) {
            mainListView.Q(isFinishing);
        }
        if (isFinishing) {
            DialogExtract dialogExtract = this.Q1;
            if (dialogExtract != null) {
                dialogExtract.dismiss();
                this.Q1 = null;
                return;
            }
            return;
        }
        this.K1 = PrefUtil.d(this.G1);
        this.L1 = PrefUtil.e(this.G1);
        this.M1 = PrefUtil.f(this.G1);
        this.N1 = PrefUtil.a(this.G1);
        this.O1 = PrefUtil.c(this.G1);
        this.P1 = PrefUtil.b(this.G1);
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
        MainListView mainListView = this.I1;
        if (mainListView != null) {
            mainListView.R(z3, z, this.F1);
        }
        this.C1 = false;
        this.F1 = false;
    }
}
