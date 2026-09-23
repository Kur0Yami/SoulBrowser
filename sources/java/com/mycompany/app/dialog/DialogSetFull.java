package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineImage;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetFull extends MyDialogBottom {
    public static final /* synthetic */ int y0 = 0;
    public final int a0;
    public MainActivity b0;
    public Context c0;
    public DialogApplyListener d0;
    public MyDialogLinear e0;
    public ConstraintLayout f0;
    public MyButtonRelative g0;
    public ImageView h0;
    public MyLineImage i0;
    public MyLineImage j0;
    public MyLineImage k0;
    public MyLineImage l0;
    public View m0;
    public MyRecyclerView n0;
    public MyLineText o0;
    public SettingListAdapter p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;
    public boolean t0;
    public boolean u0;
    public int v0;
    public GlideRequests w0;
    public final Runnable x0;

    /* loaded from: classes3.dex */
    public interface DialogApplyListener {
        void a();
    }

    public DialogSetFull(MainActivity mainActivity, DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.x0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.8
            @Override // java.lang.Runnable
            public final void run() {
                int i = DialogSetFull.y0;
                DialogSetFull.this.C(true);
            }
        };
        this.b0 = mainActivity;
        this.c0 = getContext();
        this.d0 = dialogApplyListener;
        this.q0 = PrefWeb.t;
        this.r0 = PrefWeb.u;
        this.s0 = PrefWeb.v;
        this.t0 = PrefWeb.w;
        this.a0 = MainApp.E1 + MainApp.G1;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetFull dialogSetFull = DialogSetFull.this;
                Context context = dialogSetFull.c0;
                if (context != null) {
                    int i = R.id.item_frame_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 24.0f);
                    ConstraintLayout constraintLayout = new ConstraintLayout(context);
                    constraintLayout.setId(i);
                    constraintLayout.setPadding(0, G, 0, G);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(constraintLayout, layoutParams);
                    int G2 = (int) MainUtil.G(context, 160.0f);
                    MyButtonRelative myButtonRelative = new MyButtonRelative(context);
                    myButtonRelative.setPadding(MainApp.F1, MainApp.E1, MainApp.F1, MainApp.E1);
                    myButtonRelative.e(MainApp.E1, false);
                    ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(G2, -1);
                    layoutParams2.d = i;
                    layoutParams2.g = i;
                    layoutParams2.W = true;
                    layoutParams2.P = (int) MainUtil.G(context, 300.0f);
                    constraintLayout.addView(myButtonRelative, layoutParams2);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.f(1.0f);
                    myButtonRelative.addView(myLineFrame, -1, -1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myLineFrame.addView(imageView, -1, -1);
                    int G3 = (int) MainUtil.G(context, 20.0f);
                    MyLineImage myLineImage = new MyLineImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                    myLineImage.setScaleType(scaleType);
                    myLineImage.a();
                    myLineFrame.addView(myLineImage, -1, G3);
                    MyLineImage myLineImage2 = new MyLineImage(context);
                    myLineImage2.setScaleType(scaleType);
                    myLineImage2.a();
                    myLineFrame.addView(myLineImage2, -1, G3);
                    MyLineImage myLineImage3 = new MyLineImage(context);
                    myLineImage3.setScaleType(scaleType);
                    myLineImage3.b();
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, G3);
                    layoutParams3.gravity = 80;
                    myLineFrame.addView(myLineImage3, layoutParams3);
                    MyLineImage myLineImage4 = new MyLineImage(context);
                    myLineImage4.setScaleType(scaleType);
                    myLineImage4.b();
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G3);
                    layoutParams4.gravity = 80;
                    myLineFrame.addView(myLineImage4, layoutParams4);
                    View view = new View(context);
                    q.addView(view, -1, 1);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    q.addView(myRecyclerView, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetFull.e0 = q;
                    dialogSetFull.f0 = constraintLayout;
                    dialogSetFull.g0 = myButtonRelative;
                    dialogSetFull.h0 = imageView;
                    dialogSetFull.i0 = myLineImage2;
                    dialogSetFull.j0 = myLineImage4;
                    dialogSetFull.k0 = myLineImage;
                    dialogSetFull.l0 = myLineImage3;
                    dialogSetFull.m0 = view;
                    dialogSetFull.n0 = myRecyclerView;
                    dialogSetFull.o0 = myLineText;
                    Handler handler2 = dialogSetFull.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            final DialogSetFull dialogSetFull2 = DialogSetFull.this;
                            if (dialogSetFull2.e0 != null && dialogSetFull2.c0 != null) {
                                if (MainApp.K1) {
                                    dialogSetFull2.g0.h(-328966, MainApp.n1);
                                    dialogSetFull2.h0.setBackgroundColor(-12632257);
                                    dialogSetFull2.m0.setBackgroundColor(-12632257);
                                    dialogSetFull2.o0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetFull2.o0.setTextColor(-328966);
                                } else {
                                    dialogSetFull2.g0.h(-16777216, MainApp.n1);
                                    dialogSetFull2.h0.setBackgroundColor(-2434342);
                                    dialogSetFull2.m0.setBackgroundColor(-2434342);
                                    dialogSetFull2.o0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetFull2.o0.setTextColor(-14784824);
                                }
                                dialogSetFull2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogSetFull dialogSetFull3 = DialogSetFull.this;
                                        MainActivity mainActivity2 = dialogSetFull3.b0;
                                        if (mainActivity2 != null) {
                                            if (dialogSetFull3.w0 == null) {
                                                dialogSetFull3.w0 = GlideApp.a(mainActivity2);
                                            }
                                            Handler handler3 = dialogSetFull3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.3.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogSetFull dialogSetFull4 = DialogSetFull.this;
                                                    GlideRequests glideRequests = dialogSetFull4.w0;
                                                    if (glideRequests == null) {
                                                        return;
                                                    }
                                                    RequestBuilder s = glideRequests.s(Integer.valueOf(R.drawable.dev_dog));
                                                    DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.f2204a;
                                                    ((RequestBuilder) s.e(diskCacheStrategy)).E(dialogSetFull4.h0);
                                                    if (MainApp.K1) {
                                                        ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_status_bar_b)).e(diskCacheStrategy)).E(dialogSetFull4.i0);
                                                        ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_navi_bar_b)).e(diskCacheStrategy)).E(dialogSetFull4.j0);
                                                        ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_top_bar_b)).e(diskCacheStrategy)).E(dialogSetFull4.k0);
                                                        ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_bot_bar_b)).e(diskCacheStrategy)).E(dialogSetFull4.l0);
                                                        return;
                                                    }
                                                    ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_status_bar_w)).e(diskCacheStrategy)).E(dialogSetFull4.i0);
                                                    ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_navi_bar_w)).e(diskCacheStrategy)).E(dialogSetFull4.j0);
                                                    ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_top_bar_w)).e(diskCacheStrategy)).E(dialogSetFull4.k0);
                                                    ((RequestBuilder) dialogSetFull4.w0.s(Integer.valueOf(R.drawable.sample_bot_bar_w)).e(diskCacheStrategy)).E(dialogSetFull4.l0);
                                                }
                                            });
                                        }
                                    }
                                });
                                MyLineImage myLineImage5 = dialogSetFull2.i0;
                                int i3 = 8;
                                if (dialogSetFull2.q0) {
                                    i2 = 0;
                                } else {
                                    i2 = 8;
                                }
                                myLineImage5.setVisibility(i2);
                                MyLineImage myLineImage6 = dialogSetFull2.j0;
                                if (dialogSetFull2.r0) {
                                    i3 = 0;
                                }
                                myLineImage6.setVisibility(i3);
                                dialogSetFull2.B(dialogSetFull2.p());
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.show_status, 0, 0, dialogSetFull2.q0, true));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.show_navi, 0, 0, dialogSetFull2.r0, true));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.scroll_top, 0, 0, !dialogSetFull2.s0, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(3, R.string.scroll_bot, 0, 0, !dialogSetFull2.t0, true), 1);
                                dialogSetFull2.p0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetFull.4
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z, int i5) {
                                        DialogSetFull dialogSetFull3 = DialogSetFull.this;
                                        int i6 = 8;
                                        if (i4 != 0) {
                                            if (i4 != 1) {
                                                if (i4 != 2) {
                                                    if (i4 != 3) {
                                                        int i7 = DialogSetFull.y0;
                                                        dialogSetFull3.getClass();
                                                        return;
                                                    } else {
                                                        dialogSetFull3.t0 = !z;
                                                        dialogSetFull3.C(false);
                                                        return;
                                                    }
                                                }
                                                dialogSetFull3.s0 = !z;
                                                dialogSetFull3.C(false);
                                                return;
                                            }
                                            MyLineImage myLineImage7 = dialogSetFull3.j0;
                                            if (myLineImage7 != null) {
                                                dialogSetFull3.r0 = z;
                                                if (z) {
                                                    i6 = 0;
                                                }
                                                myLineImage7.setVisibility(i6);
                                                dialogSetFull3.C(false);
                                                return;
                                            }
                                            return;
                                        }
                                        MyLineImage myLineImage8 = dialogSetFull3.i0;
                                        if (myLineImage8 == null) {
                                            return;
                                        }
                                        dialogSetFull3.q0 = z;
                                        if (z) {
                                            i6 = 0;
                                        }
                                        myLineImage8.setVisibility(i6);
                                        dialogSetFull3.C(false);
                                    }
                                });
                                dialogSetFull2.n0.setLayoutManager(t);
                                dialogSetFull2.n0.setAdapter(dialogSetFull2.p0);
                                dialogSetFull2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetFull.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        boolean z = PrefWeb.t;
                                        DialogSetFull dialogSetFull3 = DialogSetFull.this;
                                        boolean z2 = dialogSetFull3.q0;
                                        if (z != z2 || PrefWeb.u != dialogSetFull3.r0 || PrefWeb.v != dialogSetFull3.s0 || PrefWeb.w != dialogSetFull3.t0) {
                                            PrefWeb.t = z2;
                                            PrefWeb.u = dialogSetFull3.r0;
                                            PrefWeb.v = dialogSetFull3.s0;
                                            PrefWeb.w = dialogSetFull3.t0;
                                            PrefWeb r = PrefWeb.r(dialogSetFull3.c0, false);
                                            r.l("mShowStatus", PrefWeb.t);
                                            r.l("mShowNavi", PrefWeb.u);
                                            r.l("mFixTop", PrefWeb.v);
                                            r.l("mFixBot", PrefWeb.w);
                                            r.a();
                                            DialogApplyListener dialogApplyListener2 = dialogSetFull3.d0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                        }
                                        dialogSetFull3.dismiss();
                                    }
                                });
                                dialogSetFull2.g(dialogSetFull2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetFull.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        final DialogSetFull dialogSetFull3 = DialogSetFull.this;
                                        if (dialogSetFull3.e0 != null) {
                                            dialogSetFull3.show();
                                            Handler handler3 = dialogSetFull3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFull.7
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    int i4 = DialogSetFull.y0;
                                                    DialogSetFull.this.C(true);
                                                }
                                            });
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

    public final void B(boolean z) {
        if (this.f0 == null) {
            return;
        }
        if (z) {
            z = q();
        }
        if (z) {
            this.f0.setVisibility(8);
            this.m0.setVisibility(8);
        } else {
            this.f0.setVisibility(0);
            this.m0.setVisibility(0);
        }
    }

    public final void C(boolean z) {
        Runnable runnable;
        ImageView imageView = this.h0;
        if (imageView != null) {
            boolean z2 = this.u0;
            int i = this.a0;
            if (z2) {
                int i2 = this.v0 - 1;
                this.v0 = i2;
                if (i2 <= 0) {
                    this.v0 = 0;
                    this.u0 = false;
                }
            } else {
                int i3 = this.v0 + 1;
                this.v0 = i3;
                if (i3 >= i) {
                    this.v0 = i;
                    this.u0 = true;
                }
            }
            if (this.q0) {
                imageView.setTranslationY(this.v0 + i);
                if (this.s0) {
                    this.k0.setTranslationY(i);
                } else {
                    this.k0.setTranslationY(this.v0);
                }
            } else {
                imageView.setTranslationY(this.v0);
                if (this.s0) {
                    this.k0.setTranslationY(0.0f);
                } else {
                    this.k0.setTranslationY(this.v0 - i);
                }
            }
            if (this.r0) {
                if (this.t0) {
                    this.l0.setTranslationY(-i);
                } else {
                    this.l0.setTranslationY(-this.v0);
                }
            } else if (this.t0) {
                this.l0.setTranslationY(0.0f);
            } else {
                this.l0.setTranslationY(i - this.v0);
            }
            if (z && (runnable = this.x0) != null) {
                this.h0.removeCallbacks(runnable);
                this.h0.postDelayed(runnable, 20L);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        if (this.w0 != null) {
            this.w0 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyButtonRelative myButtonRelative = this.g0;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.g0 = null;
        }
        MyLineImage myLineImage = this.i0;
        if (myLineImage != null) {
            myLineImage.c();
            this.i0 = null;
        }
        MyLineImage myLineImage2 = this.j0;
        if (myLineImage2 != null) {
            myLineImage2.c();
            this.j0 = null;
        }
        MyLineImage myLineImage3 = this.k0;
        if (myLineImage3 != null) {
            myLineImage3.c();
            this.k0 = null;
        }
        MyLineImage myLineImage4 = this.l0;
        if (myLineImage4 != null) {
            myLineImage4.c();
            this.l0 = null;
        }
        MyRecyclerView myRecyclerView = this.n0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.n0 = null;
        }
        MyLineText myLineText = this.o0;
        if (myLineText != null) {
            myLineText.u();
            this.o0 = null;
        }
        SettingListAdapter settingListAdapter = this.p0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.p0 = null;
        }
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.f0 = null;
        this.h0 = null;
        this.m0 = null;
        super.dismiss();
    }
}
