package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingActivity extends CastActivity {
    public static final /* synthetic */ int W1 = 0;
    public DialogSetReset.DialogResetListener C1;
    public View.OnClickListener D1;
    public MyMainRelative E1;
    public MyHeaderView F1;
    public MyButtonImage G1;
    public AppCompatTextView H1;
    public MyButtonImage I1;
    public MyButtonImage J1;
    public FrameLayout K1;
    public MyRecyclerView L1;
    public MyManagerLinear M1;
    public SettingListAdapter N1;
    public int O1;
    public boolean P1;
    public boolean Q1;
    public boolean R1;
    public int S1;
    public boolean T1;
    public int U1;
    public DialogSetReset V1;

    public List D0() {
        return null;
    }

    public final void E0() {
        DialogSetReset dialogSetReset = this.V1;
        if (dialogSetReset != null) {
            dialogSetReset.dismiss();
            this.V1 = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
    public final void F0(int i, boolean z, boolean z2) {
        MyButtonImage myButtonImage;
        MyButtonImage myButtonImage2;
        int i2 = R.id.set_icon_frame;
        int i3 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(this);
        myMainRelative.addView(frameLayout, a.h(-1, -1, 2, i3));
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = MainApp.b1;
        frameLayout.addView(myRecyclerView, layoutParams);
        MyHeaderView myHeaderView = new MyHeaderView(this);
        frameLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage3.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams2.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage3, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        if (i > 0) {
            appCompatTextView.setText(i);
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams3.addRule(16, i2);
        layoutParams3.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams3);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(i2);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams4.addRule(21);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(linearLayout, layoutParams4);
        if (z) {
            myButtonImage = new MyButtonImage(this);
            int G = (int) MainUtil.G(this, 14.0f);
            myButtonImage.setPadding(G, G, G, G);
            myButtonImage.setScaleType(scaleType);
            int i4 = MainApp.g1;
            linearLayout.addView(myButtonImage, i4, i4);
        } else {
            myButtonImage = null;
        }
        if (z2) {
            myButtonImage2 = new MyButtonImage(this);
            int G2 = (int) MainUtil.G(this, 14.0f);
            myButtonImage2.setPadding(G2, G2, G2, G2);
            myButtonImage2.setScaleType(scaleType);
            int i5 = MainApp.g1;
            linearLayout.addView(myButtonImage2, i5, i5);
        } else {
            myButtonImage2 = null;
        }
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setVisibility(4);
        linearLayout.addView(frameLayout2, -2, MainApp.g1);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i3);
        frameLayout3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(12);
        myMainRelative.addView(frameLayout3, layoutParams5);
        this.E1 = myMainRelative;
        this.F1 = myHeaderView;
        this.G1 = myButtonImage3;
        this.H1 = appCompatTextView;
        this.I1 = myButtonImage;
        this.J1 = myButtonImage2;
        this.K1 = frameLayout;
        this.L1 = myRecyclerView;
        B0(myMainRelative, frameLayout2, frameLayout3);
        this.E1.setWindow(getWindow());
        initMainScreenOn(this.E1);
        if (MainApp.K1) {
            this.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.G1.setBgPreColor(-12632257);
            this.H1.setTextColor(-328966);
            this.L1.setBackgroundColor(-16777216);
        } else {
            this.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.G1.setBgPreColor(553648128);
            this.H1.setTextColor(-16777216);
            this.L1.setBackgroundColor(-460552);
        }
        ?? linearLayoutManager = new LinearLayoutManager(1);
        this.M1 = linearLayoutManager;
        this.L1.setLayoutManager(linearLayoutManager);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                final SettingActivity settingActivity = SettingActivity.this;
                if (settingActivity.E1 != null) {
                    settingActivity.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingActivity.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingActivity.this.finish();
                        }
                    });
                    MyRecyclerView myRecyclerView2 = settingActivity.L1;
                    if (myRecyclerView2 == null) {
                        return;
                    }
                    myRecyclerView2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingActivity.3
                        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                        public final void b(RecyclerView recyclerView, int i6, int i7) {
                            SettingActivity settingActivity2 = SettingActivity.this;
                            MyRecyclerView myRecyclerView3 = settingActivity2.L1;
                            if (myRecyclerView3 == null) {
                                return;
                            }
                            if (myRecyclerView3.computeVerticalScrollOffset() > settingActivity2.O1) {
                                settingActivity2.L1.w0();
                            } else {
                                settingActivity2.L1.r0();
                            }
                        }
                    });
                }
            }
        });
    }

    public final boolean G0() {
        DialogSetReset dialogSetReset = this.V1;
        if (dialogSetReset == null) {
            return false;
        }
        return dialogSetReset.t0;
    }

    public final void H0() {
        int i;
        MyMainRelative myMainRelative = this.E1;
        if (myMainRelative != null) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
            this.F1.invalidate();
            if (MainApp.K1) {
                this.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.G1.setBgPreColor(-12632257);
                this.H1.setTextColor(-328966);
            } else {
                this.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
                this.G1.setBgPreColor(553648128);
                this.H1.setTextColor(-16777216);
            }
            MyRecyclerView myRecyclerView = this.L1;
            if (myRecyclerView != null) {
                if (MainApp.K1) {
                    myRecyclerView.setBackgroundColor(-16777216);
                } else {
                    myRecyclerView.setBackgroundColor(-460552);
                }
            }
            if (this.N1 != null) {
                Handler handler = this.O0;
                if (handler == null) {
                    return;
                } else {
                    handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingActivity.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            SettingActivity settingActivity = SettingActivity.this;
                            SettingListAdapter settingListAdapter = settingActivity.N1;
                            if (settingListAdapter != null) {
                                settingListAdapter.E(settingActivity.D0());
                            }
                        }
                    });
                }
            }
            MyButtonImage myButtonImage = this.I1;
            if (myButtonImage != null) {
                if (MainApp.K1) {
                    myButtonImage.setImageResource(R.drawable.outline_replay_dark_20);
                    this.I1.setBgPreColor(-12632257);
                } else {
                    myButtonImage.setImageResource(R.drawable.outline_replay_black_20);
                    this.I1.setBgPreColor(553648128);
                }
            }
            J0();
            A0();
        }
    }

    public final void I0(int i, boolean z) {
        int i2;
        MyMainRelative myMainRelative = this.E1;
        if (myMainRelative != null) {
            if (this.S1 == i && this.T1 == z) {
                return;
            }
            this.S1 = i;
            this.T1 = z;
            Window window = getWindow();
            if (MainApp.K1) {
                i2 = -16777216;
            } else {
                i2 = -460552;
            }
            myMainRelative.j = i;
            myMainRelative.k = z;
            myMainRelative.b(window, i2);
        }
    }

    public final void J0() {
        MyButtonImage myButtonImage = this.J1;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            if (this.P1) {
                myButtonImage.setImageResource(R.drawable.outline_favorite_dark_20);
            } else {
                myButtonImage.setImageResource(R.drawable.outline_help_dark_20);
            }
            this.J1.setBgPreColor(-12632257);
            return;
        }
        if (this.P1) {
            myButtonImage.setImageResource(R.drawable.outline_favorite_black_20);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_help_black_20);
        }
        this.J1.setBgPreColor(553648128);
    }

    public final void K0(boolean z, View.OnClickListener onClickListener) {
        if (this.J1 == null) {
            return;
        }
        this.P1 = z;
        this.D1 = onClickListener;
        J0();
        this.J1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingActivity.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                View.OnClickListener onClickListener2 = SettingActivity.this.D1;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }
        });
    }

    public final void L0(int i, DialogSetReset.DialogResetListener dialogResetListener) {
        MyButtonImage myButtonImage = this.I1;
        if (myButtonImage == null) {
            return;
        }
        this.U1 = i;
        this.C1 = dialogResetListener;
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_replay_dark_20);
            this.I1.setBgPreColor(-12632257);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_replay_black_20);
            this.I1.setBgPreColor(553648128);
        }
        this.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingActivity.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final SettingActivity settingActivity = SettingActivity.this;
                if (settingActivity.V1 != null) {
                    return;
                }
                settingActivity.E0();
                DialogSetReset dialogSetReset = new DialogSetReset(settingActivity, settingActivity.U1, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingActivity.7
                    @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                    public final void a(boolean z) {
                        SettingActivity settingActivity2 = SettingActivity.this;
                        DialogSetReset.DialogResetListener dialogResetListener2 = settingActivity2.C1;
                        if (dialogResetListener2 != null) {
                            dialogResetListener2.a(z);
                        }
                        settingActivity2.E0();
                    }

                    @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                    public final boolean b() {
                        DialogSetReset.DialogResetListener dialogResetListener2 = SettingActivity.this.C1;
                        if (dialogResetListener2 == null) {
                            return false;
                        }
                        return dialogResetListener2.b();
                    }
                });
                settingActivity.V1 = dialogSetReset;
                dialogSetReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingActivity.8
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i2 = SettingActivity.W1;
                        SettingActivity.this.E0();
                    }
                });
            }
        });
    }

    public final void M0() {
        Intent intent;
        int i = -1;
        if (this.L1 != null && (intent = getIntent()) != null && intent.getBooleanExtra("EXTRA_NOTI", false)) {
            i = intent.getIntExtra("EXTRA_INDEX", -1);
        }
        N0(i);
    }

    public final boolean N0(final int i) {
        MyRecyclerView myRecyclerView;
        if (i >= 0 && (myRecyclerView = this.L1) != null) {
            myRecyclerView.postDelayed(new Runnable() { // from class: com.mycompany.app.setting.SettingActivity.4
                @Override // java.lang.Runnable
                public final void run() {
                    LinearLayoutManager linearLayoutManager;
                    SettingActivity settingActivity = SettingActivity.this;
                    MyRecyclerView myRecyclerView2 = settingActivity.L1;
                    if (myRecyclerView2 != null && settingActivity.N1 != null && (linearLayoutManager = (LinearLayoutManager) myRecyclerView2.getLayoutManager()) != null) {
                        int d = settingActivity.N1.d();
                        int i2 = i;
                        if (i2 + 1 < d) {
                            linearLayoutManager.x0(i2 + 1);
                        } else {
                            linearLayoutManager.x0(i2);
                        }
                        SettingListAdapter settingListAdapter = settingActivity.N1;
                        int v = settingListAdapter.v(i2);
                        SettingListAdapter.SettingItem w = settingListAdapter.w(v);
                        if (w != null && w.b == i2) {
                            w.y = true;
                            settingListAdapter.h(v);
                        }
                    }
                }
            }, 200L);
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.Q1) {
            MainApp.K1 = MainUtil.i5(true, configuration);
            MainApp.L1 = MainUtil.i5(false, configuration);
            return;
        }
        boolean z = MainApp.K1;
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        if (z != MainApp.K1) {
            H0();
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.R1 = MainApp.K1;
        this.S1 = MainUtil.l1();
        this.T1 = false;
        MainUtil.u7(this);
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MyButtonImage myButtonImage = this.G1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.G1 = null;
        }
        MyButtonImage myButtonImage2 = this.I1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.I1 = null;
        }
        MyButtonImage myButtonImage3 = this.J1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.J1 = null;
        }
        MyRecyclerView myRecyclerView = this.L1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.L1 = null;
        }
        SettingListAdapter settingListAdapter = this.N1;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.N1 = null;
        }
        this.C1 = null;
        this.D1 = null;
        this.E1 = null;
        this.F1 = null;
        this.H1 = null;
        this.K1 = null;
        this.M1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.Q1 = true;
        if (isFinishing()) {
            E0();
        } else {
            this.R1 = MainApp.K1;
            this.S1 = MainUtil.l1();
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.Q1 = false;
        boolean z = this.R1;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.R1 = z2;
            this.S1 = MainUtil.l1();
            H0();
        } else if (!this.T1) {
            I0(MainUtil.l1(), false);
        }
    }
}
