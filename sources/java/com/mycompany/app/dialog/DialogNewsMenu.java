package com.mycompany.app.dialog;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.DialogMenuMain;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.NewsMenuAdapter;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyWebBody;

/* loaded from: classes3.dex */
public class DialogNewsMenu {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f13944a;
    public DialogMenuMain.DownMenuListener b;

    /* renamed from: c, reason: collision with root package name */
    public MyWebBody f13945c;
    public View d;
    public final boolean e;
    public FrameLayout g;
    public MyRoundLinear h;
    public MyLineFrame i;
    public MyButtonImage j;
    public MyRecyclerView k;
    public NewsMenuAdapter l;
    public int m;
    public int n;
    public ValueAnimator o;
    public ValueAnimator p;
    public float q;
    public boolean r;
    public float t;
    public boolean u;
    public final Runnable s = new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.13
        @Override // java.lang.Runnable
        public final void run() {
            DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
            dialogNewsMenu.r = false;
            if (dialogNewsMenu.o == null) {
                return;
            }
            DialogNewsMenu.a(dialogNewsMenu, dialogNewsMenu.q);
        }
    };
    public final Runnable v = new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.17
        @Override // java.lang.Runnable
        public final void run() {
            DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
            dialogNewsMenu.u = false;
            if (dialogNewsMenu.p != null) {
                float f = dialogNewsMenu.t;
                MyRoundLinear myRoundLinear = dialogNewsMenu.h;
                if (myRoundLinear == null) {
                    return;
                }
                myRoundLinear.setAlpha(f);
                dialogNewsMenu.h.setScaleX(f);
                dialogNewsMenu.h.setScaleY(f);
            }
        }
    };
    public final int f = MainUtil.s0(0, true);

    /* renamed from: com.mycompany.app.dialog.DialogNewsMenu$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogNewsMenu(MainActivity mainActivity, MyWebBody myWebBody, View view, boolean z, DialogMenuMain.DownMenuListener downMenuListener) {
        this.f13944a = mainActivity;
        this.b = downMenuListener;
        this.f13945c = myWebBody;
        this.d = view;
        this.e = z;
        MyWebBody myWebBody2 = this.f13945c;
        if (myWebBody2 == null) {
            return;
        }
        myWebBody2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
                MainActivity mainActivity2 = dialogNewsMenu.f13944a;
                if (mainActivity2 != null) {
                    MyRoundLinear myRoundLinear = new MyRoundLinear(mainActivity2);
                    myRoundLinear.setOrientation(1);
                    MyLineFrame myLineFrame = new MyLineFrame(mainActivity2);
                    myLineFrame.a(MainApp.E1);
                    int G = (int) MainUtil.G(mainActivity2, 2.0f);
                    myLineFrame.setPadding(G, 0, G, 0);
                    myRoundLinear.addView(myLineFrame, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(mainActivity2);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    myButtonImage.setBgPreRadius(MainApp.g1 / 2.0f);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388613;
                    myLineFrame.addView(myButtonImage, layoutParams);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(mainActivity2);
                    myRecyclerView.u0(true, true);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    myRoundLinear.addView(myRecyclerView, layoutParams2);
                    dialogNewsMenu.h = myRoundLinear;
                    dialogNewsMenu.k = myRecyclerView;
                    dialogNewsMenu.i = myLineFrame;
                    dialogNewsMenu.j = myButtonImage;
                    MyWebBody myWebBody3 = dialogNewsMenu.f13945c;
                    if (myWebBody3 == null) {
                        return;
                    }
                    myWebBody3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v11, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.main.NewsMenuAdapter] */
                        /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z2;
                            final DialogNewsMenu dialogNewsMenu2 = DialogNewsMenu.this;
                            int i2 = dialogNewsMenu2.f;
                            MyRoundLinear myRoundLinear2 = dialogNewsMenu2.h;
                            if (myRoundLinear2 != null && dialogNewsMenu2.f13944a != null) {
                                if (i2 != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                myRoundLinear2.setDarkMode(z2);
                                dialogNewsMenu2.h.setVisibility(4);
                                dialogNewsMenu2.h.b();
                                dialogNewsMenu2.h.setElevation(MainUtil.G(dialogNewsMenu2.f13944a, 2.0f));
                                dialogNewsMenu2.h.setOnClickListener(new Object());
                                if (i2 == 0) {
                                    dialogNewsMenu2.h.setColor(-1);
                                    dialogNewsMenu2.i.setLineColor(-2434342);
                                    dialogNewsMenu2.j.setImageResource(R.drawable.outline_language_black_20);
                                    dialogNewsMenu2.j.setBgPreColor(553648128);
                                } else {
                                    dialogNewsMenu2.h.setColor(-14606047);
                                    dialogNewsMenu2.i.setLineColor(-12632257);
                                    dialogNewsMenu2.j.setImageResource(R.drawable.outline_language_dark_20);
                                    dialogNewsMenu2.j.setBgPreColor(-12632257);
                                }
                                dialogNewsMenu2.j.setMaxAlpha(0.85f);
                                dialogNewsMenu2.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogMenuMain.DownMenuListener downMenuListener2 = DialogNewsMenu.this.b;
                                        if (downMenuListener2 != null) {
                                            downMenuListener2.f();
                                        }
                                    }
                                });
                                SettingListAdapter.SettingListener settingListener = new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.5
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z3, int i4) {
                                        DialogMenuMain.DownMenuListener downMenuListener2 = DialogNewsMenu.this.b;
                                        if (downMenuListener2 != null) {
                                            downMenuListener2.b(null, i3);
                                        }
                                    }
                                };
                                ?? adapter = new RecyclerView.Adapter();
                                adapter.d = i2;
                                adapter.e = settingListener;
                                dialogNewsMenu2.l = adapter;
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogNewsMenu2.k);
                                dialogNewsMenu2.k.setAdapter(dialogNewsMenu2.l);
                                dialogNewsMenu2.k.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.6
                                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                    public final void b(RecyclerView recyclerView, int i3, int i4) {
                                        DialogNewsMenu dialogNewsMenu3 = DialogNewsMenu.this;
                                        MyRecyclerView myRecyclerView2 = dialogNewsMenu3.k;
                                        if (myRecyclerView2 != null) {
                                            if (myRecyclerView2.computeVerticalScrollOffset() > 0) {
                                                dialogNewsMenu3.k.w0();
                                            } else {
                                                dialogNewsMenu3.k.r0();
                                            }
                                            if (recyclerView.getScrollState() == 2 && recyclerView.canScrollVertically(-1) != recyclerView.canScrollVertically(1)) {
                                                recyclerView.p0();
                                            }
                                        }
                                    }
                                });
                                MyWebBody myWebBody4 = dialogNewsMenu2.f13945c;
                                if (myWebBody4 != null) {
                                    myWebBody4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.7
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogNewsMenu dialogNewsMenu3 = DialogNewsMenu.this;
                                            if (dialogNewsMenu3.h != null && dialogNewsMenu3.f13945c != null) {
                                                try {
                                                    FrameLayout frameLayout = new FrameLayout(dialogNewsMenu3.f13944a);
                                                    dialogNewsMenu3.g = frameLayout;
                                                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.8
                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            DialogNewsMenu.this.b();
                                                        }
                                                    });
                                                    dialogNewsMenu3.g.addView(dialogNewsMenu3.h, dialogNewsMenu3.c());
                                                    dialogNewsMenu3.f13945c.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.9
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            MyWebBody myWebBody5;
                                                            DialogNewsMenu dialogNewsMenu4 = DialogNewsMenu.this;
                                                            FrameLayout frameLayout2 = dialogNewsMenu4.g;
                                                            if (frameLayout2 != null && (myWebBody5 = dialogNewsMenu4.f13945c) != null) {
                                                                myWebBody5.addView(frameLayout2, -1, -1);
                                                                dialogNewsMenu4.f13945c.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.9.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        final DialogNewsMenu dialogNewsMenu5 = DialogNewsMenu.this;
                                                                        MyRoundLinear myRoundLinear3 = dialogNewsMenu5.h;
                                                                        if (myRoundLinear3 != null && dialogNewsMenu5.o == null && dialogNewsMenu5.p == null) {
                                                                            myRoundLinear3.setPivotX(dialogNewsMenu5.m);
                                                                            dialogNewsMenu5.h.setPivotY(dialogNewsMenu5.n);
                                                                            dialogNewsMenu5.q = 0.0f;
                                                                            dialogNewsMenu5.r = false;
                                                                            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                                                                            dialogNewsMenu5.o = ofFloat;
                                                                            ofFloat.setDuration(200L);
                                                                            a.v(dialogNewsMenu5.o);
                                                                            dialogNewsMenu5.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.11
                                                                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                                                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                                                                    DialogNewsMenu dialogNewsMenu6 = DialogNewsMenu.this;
                                                                                    if (dialogNewsMenu6.o != null && dialogNewsMenu6.h != null) {
                                                                                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                                                                        if (dialogNewsMenu6.o != null && dialogNewsMenu6.h != null) {
                                                                                            dialogNewsMenu6.q = floatValue;
                                                                                            if (!dialogNewsMenu6.r) {
                                                                                                dialogNewsMenu6.r = true;
                                                                                                MainApp.N(dialogNewsMenu6.f13944a, dialogNewsMenu6.s);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            });
                                                                            dialogNewsMenu5.o.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.12
                                                                                @Override // android.animation.Animator.AnimatorListener
                                                                                public final void onAnimationCancel(Animator animator) {
                                                                                    DialogNewsMenu dialogNewsMenu6 = DialogNewsMenu.this;
                                                                                    if (dialogNewsMenu6.o != null) {
                                                                                        dialogNewsMenu6.o = null;
                                                                                        MyRoundLinear myRoundLinear4 = dialogNewsMenu6.h;
                                                                                        if (myRoundLinear4 == null) {
                                                                                            return;
                                                                                        }
                                                                                        myRoundLinear4.invalidate();
                                                                                    }
                                                                                }

                                                                                @Override // android.animation.Animator.AnimatorListener
                                                                                public final void onAnimationEnd(Animator animator) {
                                                                                    final DialogNewsMenu dialogNewsMenu6 = DialogNewsMenu.this;
                                                                                    if (dialogNewsMenu6.o == null) {
                                                                                        return;
                                                                                    }
                                                                                    MainApp.N(dialogNewsMenu6.f13944a, new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.14
                                                                                        @Override // java.lang.Runnable
                                                                                        public final void run() {
                                                                                            DialogNewsMenu dialogNewsMenu7 = DialogNewsMenu.this;
                                                                                            if (dialogNewsMenu7.o != null) {
                                                                                                dialogNewsMenu7.o = null;
                                                                                                if (dialogNewsMenu7.h == null) {
                                                                                                    return;
                                                                                                }
                                                                                                DialogNewsMenu.a(dialogNewsMenu7, 1.0f);
                                                                                                dialogNewsMenu7.h.invalidate();
                                                                                            }
                                                                                        }
                                                                                    });
                                                                                }

                                                                                @Override // android.animation.Animator.AnimatorListener
                                                                                public final void onAnimationRepeat(Animator animator) {
                                                                                }

                                                                                @Override // android.animation.Animator.AnimatorListener
                                                                                public final void onAnimationStart(Animator animator) {
                                                                                }
                                                                            });
                                                                            dialogNewsMenu5.o.start();
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    });
                                                } catch (Exception unused) {
                                                    dialogNewsMenu3.f13945c.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.10
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogNewsMenu.this.b();
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    public static void a(DialogNewsMenu dialogNewsMenu, float f) {
        MyRoundLinear myRoundLinear = dialogNewsMenu.h;
        if (myRoundLinear != null) {
            myRoundLinear.setAlpha(f);
            dialogNewsMenu.h.setScaleX(f);
            dialogNewsMenu.h.setScaleY(f);
            if (dialogNewsMenu.h.getVisibility() != 0) {
                dialogNewsMenu.h.setVisibility(0);
            }
        }
    }

    public final boolean b() {
        MyRoundLinear myRoundLinear = this.h;
        if (myRoundLinear == null || this.p != null) {
            return false;
        }
        myRoundLinear.setPivotX(this.m);
        this.h.setPivotY(this.n);
        this.t = 1.0f;
        this.u = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.p = ofFloat;
        ofFloat.setDuration(200L);
        a.r(this.p);
        this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
                if (dialogNewsMenu.p != null && dialogNewsMenu.h != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (dialogNewsMenu.p != null && dialogNewsMenu.h != null) {
                        dialogNewsMenu.t = floatValue;
                        if (!dialogNewsMenu.u) {
                            dialogNewsMenu.u = true;
                            MainApp.N(dialogNewsMenu.f13944a, dialogNewsMenu.v);
                        }
                    }
                }
            }
        });
        this.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogNewsMenu.16
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
                if (dialogNewsMenu.p == null) {
                    return;
                }
                dialogNewsMenu.p = null;
                dialogNewsMenu.d();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final DialogNewsMenu dialogNewsMenu = DialogNewsMenu.this;
                if (dialogNewsMenu.p == null) {
                    return;
                }
                MainApp.N(dialogNewsMenu.f13944a, new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsMenu.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogNewsMenu dialogNewsMenu2 = DialogNewsMenu.this;
                        if (dialogNewsMenu2.p == null) {
                            return;
                        }
                        dialogNewsMenu2.p = null;
                        dialogNewsMenu2.d();
                    }
                });
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
        }
        this.p.start();
        return true;
    }

    public final FrameLayout.LayoutParams c() {
        View view;
        int i;
        int i2;
        int i3;
        int i4;
        MyWebBody myWebBody = this.f13945c;
        if (myWebBody == null || (view = this.d) == null) {
            return null;
        }
        int[] iArr = new int[2];
        myWebBody.getLocationOnScreen(iArr);
        int i5 = 0;
        int paddingLeft = myWebBody.getPaddingLeft() + iArr[0];
        int paddingTop = myWebBody.getPaddingTop() + iArr[1];
        int rectWidth = myWebBody.getRectWidth();
        int rectHeight = myWebBody.getRectHeight();
        view.getLocationOnScreen(iArr);
        int width = view.getWidth() / 2;
        int height = view.getHeight() / 2;
        int i6 = (iArr[0] - paddingLeft) + width;
        int i7 = (iArr[1] - paddingTop) + height;
        int round = Math.round(MainUtil.G(this.f13944a, 220.0f));
        int round2 = Math.round(MainUtil.G(this.f13944a, 568.0f));
        if (this.e) {
            i2 = i6 + round;
            i = i6;
        } else {
            i = i6 - round;
            i2 = i6;
        }
        if (i7 < rectHeight / 2) {
            i4 = i7 + height;
            i3 = i4 + round2;
        } else {
            height = -height;
            i3 = i7 + height;
            i4 = i3 - round2;
        }
        if (i < 0) {
            i = 0;
            if (round > rectWidth) {
                i2 = rectWidth;
            } else {
                i2 = round;
            }
        }
        if (i2 > rectWidth) {
            i = rectWidth - round;
            if (i < 0) {
                i = 0;
            }
            i2 = rectWidth;
        }
        if (i4 < 0) {
            if (round2 > rectHeight) {
                i3 = rectHeight;
                i4 = 0;
            } else {
                i4 = 0;
                i3 = round2;
            }
        }
        if (i3 > rectHeight) {
            int i8 = rectHeight - round2;
            i3 = rectHeight;
            if (i8 >= 0) {
                i5 = i8;
            }
        } else {
            i5 = i4;
        }
        this.m = i6 - i;
        this.n = (i7 - i5) + height;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(i, i5, rectWidth - i2, rectHeight - i3);
        return layoutParams;
    }

    public final void d() {
        if (this.f13944a == null) {
            return;
        }
        MyWebBody myWebBody = this.f13945c;
        if (myWebBody != null) {
            myWebBody.removeView(this.g);
            this.f13945c = null;
        }
        this.g = null;
        MyRoundLinear myRoundLinear = this.h;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.h = null;
        }
        DialogMenuMain.DownMenuListener downMenuListener = this.b;
        if (downMenuListener != null) {
            downMenuListener.a();
            this.b = null;
        }
        MyLineFrame myLineFrame = this.i;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.i = null;
        }
        MyButtonImage myButtonImage = this.j;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j = null;
        }
        MyRecyclerView myRecyclerView = this.k;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k = null;
        }
        NewsMenuAdapter newsMenuAdapter = this.l;
        if (newsMenuAdapter != null) {
            newsMenuAdapter.e = null;
            this.l = null;
        }
        this.f13944a = null;
        this.d = null;
    }
}
