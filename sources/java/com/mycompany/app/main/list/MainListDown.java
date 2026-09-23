package com.mycompany.app.main.list;

import android.content.Context;
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
import com.google.android.gms.cast.framework.CastSession;
import com.mycompany.app.cast.CastUtil;
import com.mycompany.app.cast.ExpandedControlsActivity;
import com.mycompany.app.data.book.DataBookDown;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.dialog.DialogDownFile;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.dialog.DialogOpenType;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainTxtView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImagePreview;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MainListDown extends CastActivity {
    public static String W1;
    public boolean C1;
    public boolean D1;
    public long E1;
    public MyMainRelative F1;
    public MainListView G1;
    public DialogOpenType H1;
    public DialogDownUrl I1;
    public DialogSetDown J1;
    public DialogDownFile K1;
    public DialogPreview L1;
    public boolean M1;
    public boolean N1;
    public boolean O1;
    public MainListView.ListViewHolder P1;
    public String Q1;
    public String R1;
    public String S1;
    public String T1;
    public CastUtil U1;
    public MainDownSvc.DownItem V1;

    /* renamed from: com.mycompany.app.main.list.MainListDown$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass21 implements Runnable {
        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainListAdapter mainListAdapter;
            MainListDown mainListDown = MainListDown.this;
            if (mainListDown.M1) {
                mainListDown.M1 = false;
                MainListView mainListView = mainListDown.G1;
                if (mainListView != null) {
                    mainListView.U(false, false);
                    return;
                }
                return;
            }
            MainListView mainListView2 = mainListDown.G1;
            if (mainListView2 != null && (mainListAdapter = mainListView2.h0) != null) {
                mainListAdapter.notifyDataSetChanged();
                if (mainListView2.d == 32) {
                    mainListView2.m();
                }
            }
        }
    }

    public static void D0(MainListDown mainListDown, String str, String str2, String str3, int i) {
        CastSession castSession = mainListDown.p1;
        if (castSession == null || mainListDown.U1 != null) {
            return;
        }
        mainListDown.U1 = new CastUtil(mainListDown.f1, castSession, mainListDown.O0, new CastUtil.CastSendListener() { // from class: com.mycompany.app.main.list.MainListDown.17
            @Override // com.mycompany.app.cast.CastUtil.CastSendListener
            public final void a(boolean z) {
                String str4 = MainListDown.W1;
                final MainListDown mainListDown2 = MainListDown.this;
                if (!z) {
                    MainUtil.e8(mainListDown2, R.string.play_error);
                    CastUtil castUtil = mainListDown2.U1;
                    if (castUtil != null) {
                        castUtil.b();
                        mainListDown2.U1 = null;
                        return;
                    }
                    return;
                }
                mainListDown2.J0();
                MyMainRelative myMainRelative = mainListDown2.F1;
                if (myMainRelative == null) {
                    return;
                }
                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListDown mainListDown3 = MainListDown.this;
                        mainListDown3.startActivity(new Intent(mainListDown3.f1, (Class<?>) ExpandedControlsActivity.class));
                        CastUtil castUtil2 = mainListDown3.U1;
                        if (castUtil2 != null) {
                            castUtil2.b();
                            mainListDown3.U1 = null;
                        }
                    }
                });
            }
        });
        mainListDown.U1.e(MainUtil.I1(str, true), str, str2, str3, i);
    }

    public static void E0(MainListDown mainListDown, String str, String str2, boolean z) {
        int i = 0;
        if (MainUtil.d(mainListDown, str, str2, false, z)) {
            MainListView mainListView = mainListDown.G1;
            if (mainListView != null) {
                mainListView.y0();
                return;
            }
            return;
        }
        if (!mainListDown.M0()) {
            DialogOpenType dialogOpenType = mainListDown.H1;
            if (dialogOpenType != null) {
                dialogOpenType.dismiss();
                mainListDown.H1 = null;
            }
            int i2 = R.style.DialogExpandTheme;
            if (!mainListDown.h0()) {
                i = i2;
            }
            DialogOpenType dialogOpenType2 = new DialogOpenType(mainListDown, i, str, z);
            mainListDown.H1 = dialogOpenType2;
            dialogOpenType2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListDown.6
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    String str3 = MainListDown.W1;
                    MainListDown mainListDown2 = MainListDown.this;
                    DialogOpenType dialogOpenType3 = mainListDown2.H1;
                    if (dialogOpenType3 != null) {
                        dialogOpenType3.dismiss();
                        mainListDown2.H1 = null;
                    }
                }
            });
            if (!MainConst.e && i == 0) {
                return;
            }
            mainListDown.H1.x(0, 0, false, false, true);
        }
    }

    public static void F0(MainListDown mainListDown, String str, final String str2, final String str3, final String str4) {
        if (mainListDown.L1 != null) {
            return;
        }
        mainListDown.K0();
        if (TextUtils.isEmpty(str)) {
            MainUtil.e8(mainListDown, R.string.invalid_url);
            return;
        }
        DialogPreview dialogPreview = new DialogPreview(mainListDown, str, str2, null, str4, new DialogPreview.PreviewListener() { // from class: com.mycompany.app.main.list.MainListDown.14
            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void a(String str5) {
                MainUtil.s(R.string.copied_clipboard, MainListDown.this, "Copied URL", str5);
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void b(String str5, long j, boolean z) {
                int i;
                String str6 = MainListDown.W1;
                MainListDown mainListDown2 = MainListDown.this;
                mainListDown2.K0();
                mainListDown2.H0();
                CastSession castSession = mainListDown2.p1;
                if (castSession != null && castSession.c()) {
                    if (z) {
                        i = 4;
                    } else {
                        i = 5;
                    }
                    MainListDown.D0(mainListDown2, str5, str3, str4, i);
                    return;
                }
                if (z) {
                    if (mainListDown2.f1 != null) {
                        Intent intent = new Intent(mainListDown2.f1, (Class<?>) MainImagePreview.class);
                        intent.putExtra("EXTRA_PATH", str5);
                        intent.putExtra("EXTRA_REFERER", str2);
                        intent.putExtra("EXTRA_POPUP", false);
                        mainListDown2.startActivity(intent);
                        return;
                    }
                    return;
                }
                if (mainListDown2.f1 == null) {
                    return;
                }
                String I1 = MainUtil.I1(str5, true);
                Intent intent2 = new Intent(mainListDown2.f1, (Class<?>) VideoActivity.class);
                intent2.setData(Uri.parse(str5));
                intent2.putExtra("EXTRA_POPUP", true);
                intent2.putExtra("EXTRA_HOST", I1);
                intent2.putExtra("EXTRA_INDEX", (int) 0);
                mainListDown2.startActivity(intent2);
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void c(String str5, String str6) {
                String str7 = MainListDown.W1;
                MainListDown mainListDown2 = MainListDown.this;
                mainListDown2.K0();
                mainListDown2.H0();
                MainListDown.G0(mainListDown2, str5, str2, str3, str6);
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void d(String str5) {
                String str6 = MainListDown.W1;
                MainListDown mainListDown2 = MainListDown.this;
                mainListDown2.K0();
                mainListDown2.H0();
                MainUtil.a8(mainListDown2, str5, str3);
            }

            @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
            public final void e(String str5, String str6) {
                String str7 = MainListDown.W1;
                MainListDown.this.K0();
            }
        });
        mainListDown.L1 = dialogPreview;
        dialogPreview.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListDown.15
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                String str5 = MainListDown.W1;
                MainListDown.this.K0();
            }
        });
    }

    public static void G0(MainListDown mainListDown, String str, String str2, String str3, String str4) {
        if (mainListDown.M0()) {
            return;
        }
        mainListDown.L0();
        mainListDown.Q1 = str;
        mainListDown.R1 = str2;
        mainListDown.S1 = str3;
        mainListDown.T1 = str4;
        DialogSetDown dialogSetDown = new DialogSetDown(mainListDown, str, str4, mainListDown.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.main.list.MainListDown.10
            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
            public final void a(String str5, String str6, String str7) {
                MainListDown mainListDown2 = MainListDown.this;
                String str8 = mainListDown2.Q1;
                String str9 = mainListDown2.R1;
                String str10 = mainListDown2.S1;
                String str11 = mainListDown2.T1;
                mainListDown2.Q1 = null;
                mainListDown2.R1 = null;
                mainListDown2.S1 = null;
                mainListDown2.T1 = null;
                MainUtil.G4(mainListDown2, str6, str7, str8, str9, str10, str11);
            }
        });
        mainListDown.J1 = dialogSetDown;
        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListDown.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                String str5 = MainListDown.W1;
                MainListDown.this.L0();
            }
        });
    }

    public final void H0() {
        DialogOpenType dialogOpenType = this.H1;
        if (dialogOpenType != null) {
            dialogOpenType.dismiss();
            this.H1 = null;
        }
        J0();
        L0();
        I0();
        K0();
    }

    public final void I0() {
        DialogDownFile dialogDownFile = this.K1;
        if (dialogDownFile != null) {
            dialogDownFile.dismiss();
            this.K1 = null;
        }
    }

    public final void J0() {
        DialogDownUrl dialogDownUrl = this.I1;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.I1 = null;
        }
    }

    public final void K0() {
        DialogPreview dialogPreview = this.L1;
        if (dialogPreview != null) {
            dialogPreview.dismiss();
            this.L1 = null;
        }
    }

    public final void L0() {
        DialogSetDown dialogSetDown = this.J1;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.J1 = null;
        }
        this.Q1 = null;
        this.R1 = null;
        this.S1 = null;
        this.T1 = null;
    }

    public final boolean M0() {
        if (this.H1 != null || this.I1 != null || this.J1 != null || this.K1 != null || this.L1 != null) {
            return true;
        }
        return false;
    }

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
    public final void k0(int i, int i2, Intent intent) {
        DialogDownFile dialogDownFile;
        DialogDownUrl dialogDownUrl = this.I1;
        if ((dialogDownUrl == null || !dialogDownUrl.P(i, i2, intent)) && (dialogDownFile = this.K1) != null && i == 19 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(dialogDownFile.b0, R.string.invalid_path);
                return;
            }
            String a2 = MainUri.a(data);
            if (TextUtils.isEmpty(a2)) {
                MainUtil.e8(dialogDownFile.b0, R.string.invalid_path);
            } else {
                dialogDownFile.K(a2);
                MainUtil.z7(dialogDownFile.b0, data);
            }
        }
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
        DialogOpenType dialogOpenType = this.H1;
        if (dialogOpenType != null) {
            dialogOpenType.dismiss();
            this.H1 = null;
        }
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            if (mainListView.b0(configuration) && (myMainRelative = this.F1) != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                myMainRelative.b(window, i);
            }
            boolean h0 = h0();
            DialogDownUrl dialogDownUrl = this.I1;
            if (dialogDownUrl != null) {
                dialogDownUrl.S(h0);
            } else {
                DialogDownFile dialogDownFile = this.K1;
                if (dialogDownFile != null) {
                    dialogDownFile.G(h0);
                }
            }
            DialogPreview dialogPreview = this.L1;
            if (dialogPreview != null) {
                dialogPreview.D(h0);
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
        long longExtra = getIntent().getLongExtra("EXTRA_ID", -1L);
        this.E1 = longExtra;
        if (longExtra == -1) {
            W1 = getIntent().getStringExtra("EXTRA_PATH");
        } else {
            W1 = null;
        }
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
        MyButtonRelative myButtonRelative = new MyButtonRelative(this);
        myButtonRelative.e(MainApp.g1 / 2, false);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams6.addRule(16, i2);
        layoutParams6.topMargin = MainApp.G1;
        layoutParams6.setMarginStart(MainApp.g1);
        myHeaderView.addView(myButtonRelative, layoutParams6);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setId(i);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        appCompatTextView.setText(R.string.down_list);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.setMarginStart(MainApp.E1);
        myButtonRelative.addView(appCompatTextView, layoutParams7);
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(scaleType);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams8.addRule(17, i);
        myButtonRelative.addView(imageView, layoutParams8);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i2);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams9.addRule(16, i4);
        layoutParams9.topMargin = MainApp.G1;
        myHeaderView.addView(frameLayout2, layoutParams9);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams10.gravity = 8388613;
        layoutParams10.setMarginEnd(MainApp.g1 * 2);
        frameLayout2.addView(myButtonImage2, layoutParams10);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams11.gravity = 8388613;
        layoutParams11.setMarginEnd(MainApp.g1);
        frameLayout2.addView(myButtonImage3, layoutParams11);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setPadding(G, G, G, G);
        myButtonImage4.setScaleType(scaleType);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams12.gravity = 8388613;
        frameLayout2.addView(myButtonImage4, layoutParams12);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        int i11 = MainApp.F1;
        appCompatTextView2.setPadding(i11, 0, i11, 0);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams13.gravity = 8388613;
        layoutParams13.setMarginEnd((int) MainUtil.G(this, 52.0f));
        frameLayout2.addView(appCompatTextView2, layoutParams13);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.setVisibility(8);
        int i12 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i12, i12);
        layoutParams14.gravity = 8388613;
        frameLayout2.addView(myButtonCheck, layoutParams14);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i4);
        frameLayout3.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams15.addRule(21);
        myHeaderView.addView(frameLayout3, layoutParams15);
        MyProgressBar myProgressBar = new MyProgressBar(this);
        myProgressBar.d((int) MainUtil.G(this, 1.5f));
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams16.topMargin = MainApp.b1;
        frameLayout.addView(myProgressBar, layoutParams16);
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setId(i3);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams17.addRule(12);
        myMainRelative.addView(relativeLayout2, layoutParams17);
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
        obj.g = myButtonRelative;
        obj.f = appCompatTextView;
        obj.h = imageView;
        obj.l = myButtonImage2;
        obj.m = myButtonImage3;
        obj.n = myButtonImage4;
        obj.o = appCompatTextView2;
        obj.p = myButtonCheck;
        obj.q = myProgressBar;
        this.P1 = obj;
        B0(myMainRelative, frameLayout3, frameLayout4);
        this.F1.setWindow(getWindow());
        initMainScreenOn(this.F1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.1
            /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                MainDownSvc mainDownSvc;
                final MainListDown mainListDown = MainListDown.this;
                MainListView.ListViewHolder listViewHolder = mainListDown.P1;
                mainListDown.P1 = null;
                if (listViewHolder != null && mainListDown.F1 != null) {
                    int length = MainConst.j0.length;
                    int i13 = 0;
                    for (int i14 = 0; i14 < length; i14++) {
                        if (MainConst.j0[i14] == PrefList.Z0) {
                            i13 = MainConst.k0[i14];
                        }
                    }
                    if (i13 <= 0) {
                        PrefList.Z0 = 0;
                        PrefSet.f(mainListDown.f1, 4, 0, "mBookDownType");
                        i13 = MainConst.k0[0];
                    }
                    ?? obj2 = new Object();
                    obj2.f16734a = 32;
                    obj2.b = true;
                    obj2.e = listViewHolder;
                    obj2.f = i13;
                    obj2.g = MainApp.b1;
                    obj2.h = true;
                    obj2.j = true;
                    obj2.k = true;
                    mainListDown.G1 = new MainListView(mainListDown, mainListDown.f1, obj2, new MainListListener() { // from class: com.mycompany.app.main.list.MainListDown.2
                        @Override // com.mycompany.app.main.MainListListener
                        public final void f(int i15, final MainItem.ChildItem childItem, boolean z) {
                            CastSession castSession;
                            final MainListDown mainListDown2 = MainListDown.this;
                            if (!MainUtil.h6(mainListDown2.f1, childItem.g)) {
                                MainUtil.e8(mainListDown2, R.string.invalid_path);
                                return;
                            }
                            int i16 = childItem.f16550a;
                            if (i16 == 8) {
                                Intent intent = new Intent();
                                intent.putExtra("EXTRA_PATH", childItem.g);
                                intent.putExtra("EXTRA_URL", childItem.q);
                                mainListDown2.setResult(-1, intent);
                                mainListDown2.finish();
                                return;
                            }
                            if (i16 == 5) {
                                int i17 = childItem.d;
                                final int i18 = 2;
                                if (i17 == 1 || i17 == 2) {
                                    String str = MainListDown.W1;
                                    if (!TextUtils.isEmpty(childItem.q)) {
                                        if (childItem.q.startsWith("torrent:")) {
                                            i18 = 1;
                                        } else if (childItem.U <= 1) {
                                            i18 = 0;
                                        }
                                        if (i18 != 0) {
                                            mainListDown2.m0(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.16
                                                /* JADX WARN: Removed duplicated region for block: B:14:0x00c3  */
                                                /* JADX WARN: Removed duplicated region for block: B:17:0x00c9 A[RETURN] */
                                                /* JADX WARN: Removed duplicated region for block: B:19:0x00ca  */
                                                @Override // java.lang.Runnable
                                                /*
                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                    To view partially-correct add '--show-bad-code' argument
                                                */
                                                public final void run() {
                                                    /*
                                                        r9 = this;
                                                        java.lang.String r0 = com.mycompany.app.main.list.MainListDown.W1
                                                        com.mycompany.app.main.list.MainListDown r0 = com.mycompany.app.main.list.MainListDown.this
                                                        android.content.Context r1 = r0.f1
                                                        com.mycompany.app.main.MainItem$ChildItem r2 = r2
                                                        java.lang.String r3 = r2.g
                                                        java.lang.String r1 = com.mycompany.app.main.MainUtil.K0(r1, r3)
                                                        r3 = 1
                                                        int r4 = r3
                                                        r5 = 0
                                                        if (r4 != r3) goto L27
                                                        boolean r3 = android.text.TextUtils.isEmpty(r1)
                                                        if (r3 == 0) goto L1c
                                                        goto Lbd
                                                    L1c:
                                                        java.io.File r3 = new java.io.File
                                                        r3.<init>(r1)
                                                        java.io.File r1 = com.mycompany.app.main.MainUtil.I3(r3)
                                                        goto L9f
                                                    L27:
                                                        boolean r3 = android.text.TextUtils.isEmpty(r1)
                                                        if (r3 == 0) goto L30
                                                    L2d:
                                                        r1 = r5
                                                        goto L9f
                                                    L30:
                                                        java.io.File r3 = new java.io.File
                                                        r3.<init>(r1)
                                                        boolean r4 = r3.isDirectory()
                                                        if (r4 != 0) goto L3c
                                                        goto L2d
                                                    L3c:
                                                        java.io.File[] r3 = r3.listFiles()
                                                        if (r3 == 0) goto L2d
                                                        int r4 = r3.length
                                                        if (r4 != 0) goto L46
                                                        goto L2d
                                                    L46:
                                                        r4 = 0
                                                        r3 = r3[r4]
                                                        if (r3 != 0) goto L4c
                                                        goto L2d
                                                    L4c:
                                                        java.lang.String r3 = r3.getName()
                                                        if (r3 != 0) goto L53
                                                        goto L2d
                                                    L53:
                                                        int r6 = r3.length()
                                                        if (r6 != 0) goto L5a
                                                        goto L2d
                                                    L5a:
                                                        java.lang.String r7 = "vf"
                                                        boolean r8 = r3.endsWith(r7)
                                                        if (r8 == 0) goto L65
                                                        int r6 = r6 + (-2)
                                                        goto L6f
                                                    L65:
                                                        java.lang.String r7 = "v"
                                                        boolean r3 = r3.endsWith(r7)
                                                        if (r3 == 0) goto L2d
                                                        int r6 = r6 + (-1)
                                                    L6f:
                                                        if (r6 != 0) goto L72
                                                        goto L2d
                                                    L72:
                                                        java.lang.StringBuilder r3 = new java.lang.StringBuilder
                                                        r3.<init>()
                                                    L77:
                                                        if (r6 <= 0) goto L7f
                                                        r3.append(r4)
                                                        int r6 = r6 + (-1)
                                                        goto L77
                                                    L7f:
                                                        java.lang.String r3 = r3.toString()
                                                        java.lang.StringBuilder r4 = new java.lang.StringBuilder
                                                        r4.<init>()
                                                        r4.append(r1)
                                                        java.lang.String r1 = "/"
                                                        r4.append(r1)
                                                        r4.append(r3)
                                                        r4.append(r7)
                                                        java.io.File r1 = new java.io.File
                                                        java.lang.String r3 = r4.toString()
                                                        r1.<init>(r3)
                                                    L9f:
                                                        if (r1 == 0) goto Lbd
                                                        long r3 = r1.length()
                                                        r6 = 0
                                                        int r3 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
                                                        if (r3 != 0) goto Lac
                                                        goto Lbd
                                                    Lac:
                                                        android.content.Context r3 = r0.f1
                                                        java.lang.String r1 = r1.getPath()
                                                        android.net.Uri r1 = com.mycompany.app.main.MainUtil.R3(r3, r1)
                                                        if (r1 != 0) goto Lb9
                                                        goto Lbd
                                                    Lb9:
                                                        java.lang.String r5 = r1.toString()
                                                    Lbd:
                                                        boolean r1 = android.text.TextUtils.isEmpty(r5)
                                                        if (r1 == 0) goto Lc5
                                                        java.lang.String r5 = r2.g
                                                    Lc5:
                                                        com.mycompany.app.view.MyMainRelative r0 = r0.F1
                                                        if (r0 != 0) goto Lca
                                                        return
                                                    Lca:
                                                        com.mycompany.app.main.list.MainListDown$16$1 r1 = new com.mycompany.app.main.list.MainListDown$16$1
                                                        r1.<init>()
                                                        r0.post(r1)
                                                        return
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.list.MainListDown.AnonymousClass16.run():void");
                                                }
                                            });
                                            return;
                                        }
                                    }
                                }
                            }
                            int i19 = childItem.f16550a;
                            if ((i19 == 4 || i19 == 5 || i19 == 6) && (castSession = mainListDown2.p1) != null && castSession.c()) {
                                MainListDown.D0(mainListDown2, childItem.g, childItem.h, MainUtil.u2(childItem.h), childItem.f16550a);
                            } else {
                                MainListDown.E0(mainListDown2, childItem.g, MainUtil.u2(childItem.h), false);
                            }
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void h(MainItem.ChildItem childItem) {
                            boolean isEmpty = TextUtils.isEmpty(PrefAlbum.H);
                            final MainListDown mainListDown2 = MainListDown.this;
                            if (!isEmpty && !TextUtils.isEmpty(PrefAlbum.I)) {
                                MainUtil.G4(mainListDown2, PrefAlbum.H, PrefAlbum.I, childItem.q, childItem.r, childItem.h, MainUtil.u2(childItem.h));
                                return;
                            }
                            boolean z = false;
                            if (childItem.f16550a != 4) {
                                String str = MainListDown.W1;
                                if (MainApp.A(mainListDown2.f1) && mainListDown2.F1 != null) {
                                    z = MainApp.z(mainListDown2.f1);
                                }
                            }
                            boolean z2 = z;
                            if (childItem.f16550a == 4 && MainUri.q(childItem.q)) {
                                String str2 = childItem.q;
                                final String str3 = childItem.r;
                                String T2 = MainUtil.T2(childItem.h);
                                String str4 = MainListDown.W1;
                                if (!mainListDown2.M0()) {
                                    mainListDown2.I0();
                                    DialogDownFile dialogDownFile = new DialogDownFile(mainListDown2, str2, str3, T2, z2, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.main.list.MainListDown.12
                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final WebNestView a() {
                                            return null;
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void b(String str5, String str6) {
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void c(String str5, String str6, String str7) {
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void d(final String str5, MainUri.UriItem uriItem, int i15, boolean z3, String str6, final String str7) {
                                            String str8 = MainListDown.W1;
                                            final MainListDown mainListDown3 = MainListDown.this;
                                            mainListDown3.I0();
                                            if (uriItem != null) {
                                                final String str9 = uriItem.e;
                                                if (mainListDown3.f1 == null) {
                                                    return;
                                                }
                                                MainUtil.e8(mainListDown3, R.string.down_start);
                                                mainListDown3.m0(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.9
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MainListDown mainListDown4 = MainListDown.this;
                                                        Context applicationContext = mainListDown4.getApplicationContext();
                                                        String str10 = str5;
                                                        String str11 = str9;
                                                        final boolean t = MainUtil.t(applicationContext, str10, str11);
                                                        if (t) {
                                                            MainUri.UriItem j = MainUri.j(applicationContext, str11, MainUri.e());
                                                            if (j != null) {
                                                                DbBookDown.i(applicationContext, str10, str7, j);
                                                            }
                                                            MainListView mainListView = mainListDown4.G1;
                                                            if (mainListView != null) {
                                                                mainListView.U(false, false);
                                                            }
                                                        }
                                                        MyMainRelative myMainRelative2 = mainListDown4.F1;
                                                        if (myMainRelative2 == null) {
                                                            return;
                                                        }
                                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.9.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                MainListDown mainListDown5 = MainListDown.this;
                                                                if (t) {
                                                                    MainUtil.e8(mainListDown5, R.string.down_complete);
                                                                } else {
                                                                    MainUtil.e8(mainListDown5, R.string.down_fail);
                                                                }
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void f(String str5, String str6, String str7, boolean z3) {
                                            MainListDown.F0(MainListDown.this, str5, str3, str6, str7);
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void g(String str5, String str6, String str7) {
                                        }

                                        @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                        public final void e(int i15, String str5) {
                                        }
                                    });
                                    mainListDown2.K1 = dialogDownFile;
                                    dialogDownFile.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListDown.13
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            String str5 = MainListDown.W1;
                                            MainListDown.this.I0();
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            String str5 = childItem.q;
                            final String str6 = childItem.r;
                            String T22 = MainUtil.T2(childItem.h);
                            long j = childItem.B;
                            int i15 = childItem.f16550a;
                            String str7 = MainListDown.W1;
                            if (mainListDown2.M0()) {
                                return;
                            }
                            mainListDown2.J0();
                            DialogDownUrl dialogDownUrl = new DialogDownUrl(mainListDown2, str5, str6, T22, null, null, j, i15, 0, null, 0, null, true, z2 ? 1 : 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.main.list.MainListDown.7
                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final WebNestView a() {
                                    return null;
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void b(String str8, String str9) {
                                    String str10 = MainListDown.W1;
                                    MainListDown mainListDown3 = MainListDown.this;
                                    mainListDown3.J0();
                                    MainUtil.a8(mainListDown3, str8, str9);
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void c(String str8, String str9, String str10) {
                                    String str11 = MainListDown.W1;
                                    MainListDown mainListDown3 = MainListDown.this;
                                    mainListDown3.J0();
                                    MainListDown.G0(mainListDown3, str8, str6, str9, str10);
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void d(String str8, MainUri.UriItem uriItem, int i16, boolean z3, String str9, String str10) {
                                    MainListDown mainListDown3 = MainListDown.this;
                                    if (uriItem == null) {
                                        String str11 = MainListDown.W1;
                                        mainListDown3.J0();
                                        return;
                                    }
                                    String str12 = MainListDown.W1;
                                    mainListDown3.J0();
                                    if (i16 == 3) {
                                        MainUtil.e8(mainListDown3, R.string.invalid_url);
                                        return;
                                    }
                                    MainApp p = MainApp.p(mainListDown3.getApplicationContext());
                                    if (p == null) {
                                        MainUtil.e8(mainListDown3, R.string.down_fail);
                                        return;
                                    }
                                    mainListDown3.M1 = true;
                                    if (i16 == 1) {
                                        z3 = false;
                                    }
                                    p.R(str8, str10, uriItem, z3);
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void f(String str8, String str9, String str10, boolean z3) {
                                    int i16;
                                    MainListDown mainListDown3 = MainListDown.this;
                                    if (z3) {
                                        if (MainUtil.M4(mainListDown3, str8)) {
                                            String str11 = MainListDown.W1;
                                            mainListDown3.J0();
                                            return;
                                        }
                                        return;
                                    }
                                    if (!TextUtils.isEmpty(str10) && str10.startsWith("text")) {
                                        Intent intent = new Intent(mainListDown3.f1, (Class<?>) MainTxtView.class);
                                        intent.putExtra("EXTRA_PATH", str8);
                                        intent.putExtra("EXTRA_NAME", str9);
                                        mainListDown3.startActivity(intent);
                                        return;
                                    }
                                    CastSession castSession = mainListDown3.p1;
                                    if (castSession != null && castSession.c()) {
                                        if (!TextUtils.isEmpty(str10)) {
                                            if (str10.startsWith("image")) {
                                                i16 = 4;
                                            } else if (str10.startsWith("audio")) {
                                                i16 = 6;
                                            }
                                            MainListDown.D0(mainListDown3, str8, str9, str10, i16);
                                            return;
                                        }
                                        i16 = 5;
                                        MainListDown.D0(mainListDown3, str8, str9, str10, i16);
                                        return;
                                    }
                                    MainListDown.F0(mainListDown3, str8, str6, str9, str10);
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void g(String str8, String str9, String str10) {
                                }

                                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                                public final void e(int i16, String str8) {
                                }
                            });
                            mainListDown2.I1 = dialogDownUrl;
                            dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.list.MainListDown.8
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    String str8 = MainListDown.W1;
                                    MainListDown.this.J0();
                                }
                            });
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void o(ListTask.ListTaskConfig listTaskConfig) {
                            final MainListDown mainListDown2 = MainListDown.this;
                            if (mainListDown2.O1) {
                                mainListDown2.O1 = false;
                                if (mainListDown2.N1) {
                                    mainListDown2.m0(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainDownSvc mainDownSvc2;
                                            ArrayList arrayList;
                                            MainApp p = MainApp.p(MainListDown.this.getApplicationContext());
                                            if (p != null && p.u && (mainDownSvc2 = p.v) != null && mainDownSvc2.r != null && (arrayList = mainDownSvc2.s) != null && !arrayList.isEmpty()) {
                                                mainDownSvc2.r.d(mainDownSvc2.s);
                                            }
                                        }
                                    });
                                }
                            }
                        }

                        @Override // com.mycompany.app.main.MainListListener
                        public final void q(MainItem.ChildItem childItem) {
                            MainListDown mainListDown2 = MainListDown.this;
                            if (!MainUtil.h6(mainListDown2.f1, childItem.g)) {
                                MainUtil.e8(mainListDown2, R.string.invalid_path);
                            } else {
                                MainListDown.E0(mainListDown2, childItem.g, MainUtil.u2(childItem.h), true);
                            }
                        }
                    });
                    mainListDown.O1 = true;
                    MainApp p = MainApp.p(mainListDown.getApplicationContext());
                    if (p != null) {
                        MainDownSvc.DownListListener downListListener = new MainDownSvc.DownListListener() { // from class: com.mycompany.app.main.list.MainListDown.4
                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void a(int i15, long j) {
                                final MainListDown mainListDown2 = MainListDown.this;
                                if (mainListDown2.N1 && mainListDown2.F1 != null) {
                                    if (i15 == -1234) {
                                        DataBookDown.k(mainListDown2.f1).b(j);
                                    } else {
                                        MainItem.ChildItem e = DataBookDown.k(mainListDown2.f1).e(j);
                                        if (e != null) {
                                            e.d = i15;
                                            if (i15 != 2) {
                                                e.N = false;
                                            }
                                        }
                                    }
                                    MyMainRelative myMainRelative2 = mainListDown2.F1;
                                    if (myMainRelative2 != null) {
                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.20
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MainListAdapter mainListAdapter;
                                                MainListDown mainListDown3 = MainListDown.this;
                                                if (mainListDown3.M1) {
                                                    mainListDown3.M1 = false;
                                                    MainListView mainListView = mainListDown3.G1;
                                                    if (mainListView != null) {
                                                        mainListView.U(false, false);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                MainListView mainListView2 = mainListDown3.G1;
                                                if (mainListView2 != null && (mainListAdapter = mainListView2.h0) != null) {
                                                    if (mainListAdapter.p != -1) {
                                                        mainListView2.k0 = -1;
                                                        mainListView2.l0 = -1;
                                                        mainListAdapter.p = -1;
                                                        mainListView2.p(false);
                                                    }
                                                    mainListView2.h0.notifyDataSetChanged();
                                                    if (mainListView2.d == 32) {
                                                        mainListView2.m();
                                                    }
                                                }
                                            }
                                        });
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void b(MainDownSvc.DownItem downItem) {
                                MainListDown mainListDown2 = MainListDown.this;
                                if (mainListDown2.N1 && mainListDown2.F1 != null && downItem != null) {
                                    DataBookDown.k(mainListDown2.f1).l(downItem.b, downItem.f16518c, downItem.o, downItem.p);
                                    MyMainRelative myMainRelative2 = mainListDown2.F1;
                                    if (myMainRelative2 != null) {
                                        myMainRelative2.post(new AnonymousClass21());
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void c() {
                                MainListDown.this.N1 = false;
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void d(ArrayList arrayList) {
                                MyMainRelative myMainRelative2;
                                MainListDown mainListDown2 = MainListDown.this;
                                if (mainListDown2.N1 && mainListDown2.F1 != null && arrayList != null) {
                                    try {
                                        if (!arrayList.isEmpty()) {
                                            int size = arrayList.size();
                                            boolean z = false;
                                            int i15 = 0;
                                            while (i15 < size) {
                                                Object obj3 = arrayList.get(i15);
                                                i15++;
                                                MainDownSvc.DownItem downItem = (MainDownSvc.DownItem) obj3;
                                                if (downItem != null && downItem.f16518c == 1) {
                                                    DataBookDown.k(mainListDown2.f1).l(downItem.b, downItem.f16518c, downItem.o, downItem.p);
                                                    z = true;
                                                }
                                            }
                                            if (z && (myMainRelative2 = mainListDown2.F1) != null) {
                                                myMainRelative2.post(new AnonymousClass21());
                                            }
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void e(MainDownSvc.DownItem downItem) {
                                final MainListDown mainListDown2 = MainListDown.this;
                                if (mainListDown2.N1 && mainListDown2.F1 != null && downItem != null) {
                                    DataBookDown.k(mainListDown2.f1).l(downItem.b, downItem.f16518c, downItem.o, downItem.p);
                                    MyMainRelative myMainRelative2 = mainListDown2.F1;
                                    if (myMainRelative2 != null) {
                                        mainListDown2.V1 = downItem;
                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.19
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MainListAdapter mainListAdapter;
                                                FragmentExpandView fragmentExpandView2;
                                                Object tag;
                                                MainItem.ChildItem childItem;
                                                MainListDown mainListDown3 = MainListDown.this;
                                                MainDownSvc.DownItem downItem2 = mainListDown3.V1;
                                                mainListDown3.V1 = null;
                                                if (mainListDown3.M1) {
                                                    mainListDown3.M1 = false;
                                                    MainListView mainListView = mainListDown3.G1;
                                                    if (mainListView != null) {
                                                        mainListView.U(false, false);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                MainListView mainListView2 = mainListDown3.G1;
                                                if (mainListView2 != null && (mainListAdapter = mainListView2.h0) != null && (fragmentExpandView2 = mainListAdapter.g) != null && mainListAdapter.i != null && downItem2 != null) {
                                                    int childCount = fragmentExpandView2.getChildCount();
                                                    for (int i15 = 0; i15 < childCount; i15++) {
                                                        View childAt = mainListAdapter.g.getChildAt(i15);
                                                        if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListAdapter.ChildHolder)) {
                                                            MainListAdapter.ChildHolder childHolder = (MainListAdapter.ChildHolder) tag;
                                                            if (childHolder.w == downItem2.b) {
                                                                int i16 = childHolder.v;
                                                                if (i16 >= 0 && i16 < mainListAdapter.i.size() && (childItem = (MainItem.ChildItem) mainListAdapter.i.get(childHolder.v)) != null) {
                                                                    int i17 = downItem2.f16518c;
                                                                    childItem.d = i17;
                                                                    childItem.B = downItem2.o;
                                                                    childItem.C = downItem2.p;
                                                                    childItem.D = downItem2.r;
                                                                    childItem.E = downItem2.s;
                                                                    childItem.M = downItem2.J;
                                                                    if (i17 == 3 || i17 == 5) {
                                                                        childItem.G = null;
                                                                    }
                                                                    mainListAdapter.x(childHolder, childItem);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        });
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void f(boolean z) {
                                MyMainRelative myMainRelative2;
                                MainListDown mainListDown2 = MainListDown.this;
                                if (mainListDown2.N1 && (myMainRelative2 = mainListDown2.F1) != null) {
                                    if (z) {
                                        mainListDown2.M1 = true;
                                    }
                                    if (myMainRelative2 != null) {
                                        myMainRelative2.post(new AnonymousClass21());
                                    }
                                }
                            }

                            @Override // com.mycompany.app.main.MainDownSvc.DownListListener
                            public final void onConnected() {
                                MainListDown.this.N1 = true;
                            }
                        };
                        p.G = downListListener;
                        if (p.u && (mainDownSvc = p.v) != null) {
                            mainDownSvc.r = downListListener;
                            downListListener.onConnected();
                        }
                    }
                    Handler handler2 = mainListDown.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainListDown mainListDown2 = MainListDown.this;
                            MainListView mainListView = mainListDown2.G1;
                            if (mainListView != null) {
                                mainListView.I();
                                Handler handler3 = mainListDown2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.main.list.MainListDown.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListDown mainListDown3 = MainListDown.this;
                                        MainListView mainListView2 = mainListDown3.G1;
                                        if (mainListView2 == null) {
                                            return;
                                        }
                                        mainListView2.L(mainListDown3.E1, true);
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
        MainDownSvc mainDownSvc;
        super.onDestroy();
        this.N1 = false;
        MainApp p = MainApp.p(getApplicationContext());
        if (p != null) {
            p.G = null;
            if (p.u && (mainDownSvc = p.v) != null) {
                mainDownSvc.r = null;
            }
        }
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.O();
            this.G1 = null;
        }
        W1 = null;
        this.F1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.G1 != null) {
            long longExtra = intent.getLongExtra("EXTRA_ID", -1L);
            if (longExtra == -1) {
                return;
            }
            this.D1 = true;
            this.G1.L(longExtra, false);
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        MainDownSvc mainDownSvc;
        super.onPause();
        boolean isFinishing = isFinishing();
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.Q(isFinishing);
        }
        DialogPreview dialogPreview = this.L1;
        if (dialogPreview != null) {
            dialogPreview.E();
        }
        if (isFinishing) {
            this.N1 = false;
            MainApp p = MainApp.p(getApplicationContext());
            if (p != null) {
                p.G = null;
                if (p.u && (mainDownSvc = p.v) != null) {
                    mainDownSvc.r = null;
                }
            }
            H0();
            return;
        }
        this.O1 = true;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        boolean z;
        super.onResume();
        boolean z2 = this.C1;
        boolean z3 = !z2;
        if (!z2 && !this.D1) {
            z = true;
        } else {
            z = false;
        }
        this.C1 = false;
        this.D1 = false;
        MainListView mainListView = this.G1;
        if (mainListView != null) {
            mainListView.R(z3, z, false);
        }
        DialogPreview dialogPreview = this.L1;
        if (dialogPreview != null) {
            dialogPreview.H();
        }
    }
}
