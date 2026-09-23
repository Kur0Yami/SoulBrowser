package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextPaint;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyLinkView;
import com.mycompany.app.view.MyPopupAdapter;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MyPopupMenu extends MyPopupWrap {
    public boolean A;

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f18883a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public View f18884c;
    public View d;
    public int e;
    public int f;
    public ArrayList g;
    public final boolean h;
    public MyPopupListener i;
    public FrameLayout j;
    public MyPopupList k;
    public MyPopupAdapter l;
    public int m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public int s;
    public ValueAnimator t;
    public ValueAnimator u;
    public PopupWindow v;
    public float w;
    public boolean x;
    public float z;
    /** When true, item long-press is forwarded to MyPopupListener with id+1000. */
    public boolean C;
    /** Optional header above the item list (favicon / title / action). */
    public View D;
    /** Header height in px when D is set. */
    public int E;
    /** Root content view used for show/hide animation (list or header+list). */
    public View F;
    /** Extra string included in popup width measurement (e.g. header title). */
    public String G;
    public final Runnable y = new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.10
        @Override // java.lang.Runnable
        public final void run() {
            MyPopupMenu myPopupMenu = MyPopupMenu.this;
            myPopupMenu.x = false;
            if (myPopupMenu.t == null) {
                return;
            }
            MyPopupMenu.c(myPopupMenu, myPopupMenu.w);
        }
    };
    public final Runnable B = new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.15
        @Override // java.lang.Runnable
        public final void run() {
            MyPopupMenu myPopupMenu = MyPopupMenu.this;
            myPopupMenu.A = false;
            if (myPopupMenu.u != null) {
                float f = myPopupMenu.z;
                View view = myPopupMenu.g();
                if (view == null) {
                    return;
                }
                view.setAlpha(f);
                view.setScaleX(f);
                view.setScaleY(f);
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface MyPopupListener {
        void a();

        boolean b(View view, int i);
    }

    public MyPopupMenu(MainActivity mainActivity, View view, View view2, ArrayList arrayList, boolean z, MyPopupListener myPopupListener) {
        if (mainActivity != null) {
            this.f18883a = mainActivity;
            Handler handler = mainActivity.O0;
            this.b = handler;
            this.f18884c = view;
            this.d = view2;
            this.g = arrayList;
            this.h = z;
            this.i = myPopupListener;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.1
                @Override // java.lang.Runnable
                public final void run() {
                    final MyPopupMenu myPopupMenu = MyPopupMenu.this;
                    if (myPopupMenu.f18884c != null) {
                        try {
                            FrameLayout frameLayout = new FrameLayout(myPopupMenu.f18883a);
                            myPopupMenu.j = frameLayout;
                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyPopupMenu.2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    MyPopupMenu.this.b();
                                }
                            });
                            PopupWindow popupWindow = new PopupWindow(myPopupMenu.j, -1, -1);
                            myPopupMenu.v = popupWindow;
                            popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.mycompany.app.view.MyPopupMenu.3
                                @Override // android.widget.PopupWindow.OnDismissListener
                                public final void onDismiss() {
                                    MyPopupMenu myPopupMenu2 = MyPopupMenu.this;
                                    myPopupMenu2.v = null;
                                    myPopupMenu2.a();
                                }
                            });
                            myPopupMenu.v.showAtLocation(myPopupMenu.f18884c, 0, 0, 0);
                            Handler handler2 = myPopupMenu.b;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainActivity mainActivity2;
                                    int i;
                                    int i2;
                                    int i3;
                                    int i4;
                                    int min;
                                    int i5;
                                    int i6;
                                    int i7;
                                    int i8;
                                    int i9;
                                    int i10;
                                    String str;
                                    int length;
                                    final MyPopupMenu myPopupMenu2 = MyPopupMenu.this;
                                    if (myPopupMenu2.j != null && (mainActivity2 = myPopupMenu2.f18883a) != null) {
                                        MyPopupList myPopupList = new MyPopupList(mainActivity2);
                                        myPopupList.setVisibility(4);
                                        FrameLayout frameLayout2 = myPopupMenu2.j;
                                        FrameLayout.LayoutParams layoutParams = null;
                                        String str2 = null;
                                        layoutParams = null;
                                        if (myPopupMenu2.g != null && frameLayout2 != null) {
                                            View view3 = myPopupMenu2.d;
                                            boolean O5 = MainUtil.O5(myPopupMenu2.f18883a);
                                            int G = (int) MainUtil.G(myPopupMenu2.f18883a, 196.0f);
                                            ArrayList arrayList2 = myPopupMenu2.g;
                                            if (arrayList2 != null) {
                                                int size = arrayList2.size();
                                                int i11 = 0;
                                                int i12 = 0;
                                                while (i12 < size) {
                                                    Object obj = arrayList2.get(i12);
                                                    i12++;
                                                    MyPopupAdapter.PopMenuItem popMenuItem = (MyPopupAdapter.PopMenuItem) obj;
                                                    if (popMenuItem.b != 0) {
                                                        myPopupMenu2.o = true;
                                                    }
                                                    if (popMenuItem.e || popMenuItem.f) {
                                                        myPopupMenu2.p = true;
                                                    }
                                                    int i13 = popMenuItem.f18881c;
                                                    if (i13 != 0) {
                                                        str = myPopupMenu2.f18883a.getString(i13);
                                                    } else {
                                                        str = popMenuItem.d;
                                                    }
                                                    if (str != null && (length = str.length()) > i11) {
                                                        str2 = str;
                                                        i11 = length;
                                                    }
                                                }
                                                String str3 = myPopupMenu2.G;
                                                if (str3 != null && (length = str3.length()) > i11) {
                                                    str2 = str3;
                                                    i11 = length;
                                                }
                                                if (i11 != 0) {
                                                    Rect rect = new Rect();
                                                    TextPaint textPaint = new TextPaint();
                                                    textPaint.setAntiAlias(true);
                                                    textPaint.setTextSize(MainApp.E1);
                                                    textPaint.getTextBounds(str2, 0, i11, rect);
                                                    int width = rect.width();
                                                    if (width >= G && width <= (G = (int) MainUtil.G(myPopupMenu2.f18883a, 260.0f))) {
                                                        G = width;
                                                    }
                                                }
                                            }
                                            myPopupMenu2.n = (int) MainUtil.G(myPopupMenu2.f18883a, 52.0f);
                                            int[] iArr = new int[2];
                                            frameLayout2.getLocationOnScreen(iArr);
                                            int i14 = iArr[0];
                                            int i15 = iArr[1];
                                            int width2 = frameLayout2.getWidth();
                                            int height = frameLayout2.getHeight();
                                            if (view3 != null) {
                                                view3.getLocationOnScreen(iArr);
                                                i = iArr[0];
                                                i2 = iArr[1];
                                                int width3 = view3.getWidth();
                                                i3 = view3.getHeight();
                                                i4 = width3;
                                            } else {
                                                i = myPopupMenu2.e;
                                                i2 = myPopupMenu2.f;
                                                i3 = 1;
                                                i4 = 1;
                                            }
                                            int i16 = myPopupMenu2.m;
                                            if (i16 == 1) {
                                                min = -(G / 2);
                                            } else if (i16 == 3) {
                                                min = i4 - (G / 2);
                                            } else if (i16 == 2) {
                                                int i17 = MainApp.g1;
                                                if (i4 > i17) {
                                                    min = ((i4 - i17) / 2) + MainApp.E1;
                                                } else {
                                                    min = Math.min(i4 / 2, MainApp.E1);
                                                }
                                            } else {
                                                min = Math.min(i4 / 2, MainApp.E1);
                                            }
                                            int i18 = i - i14;
                                            if (O5) {
                                                i5 = (i18 + i4) - min;
                                            } else {
                                                i5 = i18 + min;
                                            }
                                            int i19 = i3 / 2;
                                            int i20 = (i2 - i15) + i19;
                                            int size2 = myPopupMenu2.g.size() * myPopupMenu2.n;
                                            if (myPopupMenu2.D != null) {
                                                int iHeader = myPopupMenu2.E;
                                                if (iHeader <= 0) {
                                                    iHeader = (int) MainUtil.G(myPopupMenu2.f18883a, 72.0f);
                                                    myPopupMenu2.E = iHeader;
                                                }
                                                size2 += iHeader;
                                                size2 += MainApp.G1;
                                                G = width2;
                                                int i7s = 0;
                                                int i6s = width2;
                                                int i9s = height - size2;
                                                if (i9s < 0) {
                                                    size2 = height;
                                                    i9s = 0;
                                                }
                                                int i8s = height;
                                                myPopupMenu2.r = width2 / 2;
                                                myPopupMenu2.s = size2;
                                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                                                layoutParams2.setMargins(i7s, i9s, width2 - i6s, height - i8s);
                                                layoutParams = layoutParams2;
                                            } else {
                                            if (O5) {
                                                i7 = i5 - G;
                                                i6 = i5;
                                            } else {
                                                i6 = i5 + G;
                                                i7 = i5;
                                            }
                                            if (i20 < height / 2) {
                                                int i21 = myPopupMenu2.m;
                                                if (i21 != 0 && i21 != 2) {
                                                    i19 = 0;
                                                }
                                                i9 = i20 + i19;
                                                i8 = i9 + size2;
                                            } else {
                                                int i22 = myPopupMenu2.m;
                                                if (i22 != 0 && i22 != 2) {
                                                    i19 = 0;
                                                } else {
                                                    i19 = -i19;
                                                }
                                                i8 = i20 + i19;
                                                i9 = i8 - size2;
                                            }
                                            if (i7 < 0) {
                                                if (G > width2) {
                                                    i6 = width2;
                                                } else {
                                                    i6 = G;
                                                }
                                                i7 = 0;
                                            }
                                            if (i6 > width2) {
                                                i7 = width2 - G;
                                                i6 = width2;
                                                if (i7 < 0) {
                                                    i7 = 0;
                                                }
                                            }
                                            if (i9 < 0) {
                                                if (size2 > height) {
                                                    i8 = height;
                                                } else {
                                                    i8 = size2;
                                                }
                                                i9 = 0;
                                            }
                                            if (i8 > height) {
                                                i10 = height - size2;
                                                i8 = height;
                                                if (i10 < 0) {
                                                    i10 = 0;
                                                }
                                            } else {
                                                i10 = i9;
                                            }
                                            int i23 = i5 - i7;
                                            if (O5) {
                                                if (myPopupMenu2.m == 1) {
                                                    i23 -= G;
                                                }
                                            } else if (myPopupMenu2.m == 1) {
                                                i23 += G;
                                            }
                                            myPopupMenu2.r = i23;
                                            myPopupMenu2.s = (i20 - i10) + i19;
                                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                                            layoutParams2.setMargins(i7, i10, width2 - i6, height - i8);
                                            layoutParams = layoutParams2;
                                            }
                                        }
                                        myPopupMenu2.k = myPopupList;
                                        frameLayout2.addView(myPopupMenu2.f(myPopupList), layoutParams);
                                        Handler handler3 = myPopupMenu2.b;
                                        if (handler3 == null) {
                                            return;
                                        }
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.5
                                            /* JADX WARN: Type inference failed for: r2v2, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.view.MyPopupAdapter] */
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final MyPopupMenu myPopupMenu3 = MyPopupMenu.this;
                                                boolean z2 = myPopupMenu3.h;
                                                if (myPopupMenu3.j != null) {
                                                    View viewBg = myPopupMenu3.g();
                                                    if (viewBg != null) {
                                                        if (z2) {
                                                            viewBg.setBackgroundColor(-13816531);
                                                        } else {
                                                            viewBg.setBackgroundColor(-1);
                                                        }
                                                    }
                                                    MainActivity mainActivity3 = myPopupMenu3.f18883a;
                                                    ArrayList arrayList3 = myPopupMenu3.g;
                                                    int i24 = myPopupMenu3.n;
                                                    boolean z3 = myPopupMenu3.o;
                                                    boolean z4 = myPopupMenu3.p;
                                                    MyLinkView.MainLinkListener mainLinkListener = new MyLinkView.MainLinkListener() { // from class: com.mycompany.app.view.MyPopupMenu.6
                                                        @Override // com.mycompany.app.view.MyLinkView.MainLinkListener
                                                        public final void a(View view4, int i25) {
                                                            MyPopupMenu myPopupMenu4 = MyPopupMenu.this;
                                                            MyPopupListener myPopupListener2 = myPopupMenu4.i;
                                                            if (myPopupListener2 != null && myPopupListener2.b(view4, i25)) {
                                                                myPopupMenu4.b();
                                                            }
                                                        }
                                                    };
                                                    ?? adapter = new RecyclerView.Adapter();
                                                    adapter.d = arrayList3;
                                                    adapter.e = z2;
                                                    adapter.f = i24;
                                                    adapter.g = z3;
                                                    adapter.h = z4;
                                                    adapter.j = mainLinkListener;
                                                    if (z3 || z4) {
                                                        adapter.i = (int) MainUtil.G(mainActivity3, 24.0f);
                                                    }
                                                    myPopupMenu3.l = adapter;
                                                    myPopupMenu3.k.setLayoutManager(new LinearLayoutManager(1));
                                                    myPopupMenu3.k.setAdapter(myPopupMenu3.l);
                                                    Handler handler4 = myPopupMenu3.b;
                                                    if (handler4 == null) {
                                                        return;
                                                    }
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final MyPopupMenu myPopupMenu4 = MyPopupMenu.this;
                                                            View viewAnim = myPopupMenu4.g();
                                                            if (viewAnim != null) {
                                                                if (myPopupMenu4.q) {
                                                                    viewAnim.setVisibility(0);
                                                                    return;
                                                                }
                if (myPopupMenu4.t == null && myPopupMenu4.u == null) {
                                                                    viewAnim.setPivotX(myPopupMenu4.r);
                                                                    viewAnim.setPivotY(myPopupMenu4.s);
                                                                    myPopupMenu4.w = 0.0f;
                                                                    myPopupMenu4.x = false;
                                                                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                                                                    myPopupMenu4.t = ofFloat;
                                                                    ofFloat.setDuration(200L);
                                                                    a.v(myPopupMenu4.t);
                                                                    myPopupMenu4.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyPopupMenu.8
                                                                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                                                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                                                            MyPopupMenu myPopupMenu5 = MyPopupMenu.this;
                                                                            if (myPopupMenu5.t != null && myPopupMenu5.g() != null) {
                                                                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                                                                if (myPopupMenu5.t != null && myPopupMenu5.g() != null) {
                                                                                    myPopupMenu5.w = floatValue;
                                                                                    if (!myPopupMenu5.x) {
                                                                                        myPopupMenu5.x = true;
                                                                                        MainApp.N(myPopupMenu5.f18883a, myPopupMenu5.y);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    });
                                                                    myPopupMenu4.t.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyPopupMenu.9
                                                                        @Override // android.animation.Animator.AnimatorListener
                                                                        public final void onAnimationCancel(Animator animator) {
                                                                            MyPopupMenu myPopupMenu5 = MyPopupMenu.this;
                                                                            if (myPopupMenu5.t != null) {
                                                                                myPopupMenu5.t = null;
                                                                                View view2 = myPopupMenu5.g();
                                                                                if (view2 == null) {
                                                                                    return;
                                                                                }
                                                                                view2.invalidate();
                                                                            }
                                                                        }

                                                                        @Override // android.animation.Animator.AnimatorListener
                                                                        public final void onAnimationEnd(Animator animator) {
                                                                            final MyPopupMenu myPopupMenu5 = MyPopupMenu.this;
                                                                            if (myPopupMenu5.t == null) {
                                                                                return;
                                                                            }
                                                                            MainApp.N(myPopupMenu5.f18883a, new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.11
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MyPopupMenu myPopupMenu6 = MyPopupMenu.this;
                                                                                    if (myPopupMenu6.t != null) {
                                                                                        myPopupMenu6.t = null;
                                                                                        if (myPopupMenu6.g() == null) {
                                                                                            return;
                                                                                        }
                                                                                        MyPopupMenu.c(myPopupMenu6, 1.0f);
                                                                                        myPopupMenu6.g().invalidate();
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
                                                                    myPopupMenu4.t.start();
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
                        } catch (Exception unused) {
                            myPopupMenu.a();
                        }
                    }
                }
            });
        }
    }

    public static void c(MyPopupMenu myPopupMenu, float f) {
        View view = myPopupMenu.g();
        if (view != null) {
            view.setAlpha(f);
            view.setScaleX(f);
            view.setScaleY(f);
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
            }
        }
    }

    /** Content root used for animation and background (header wrapper when present). */
    public final View g() {
        View view = this.F;
        if (view != null) {
            return view;
        }
        return this.k;
    }

    /** Wraps the list with an optional header; stores the animatable root in F. */
    public final View f(MyPopupList myPopupList) {
        if (myPopupList == null) {
            return null;
        }
        if (this.D == null || this.f18883a == null) {
            this.F = myPopupList;
            return myPopupList;
        }
        LinearLayout linearLayout = new LinearLayout(this.f18883a);
        linearLayout.setOrientation(1);
        int i = this.E;
        if (i <= 0) {
            i = (int) MainUtil.G(this.f18883a, 72.0f);
            this.E = i;
        }
        linearLayout.addView(this.D, new LinearLayout.LayoutParams(-1, i));
        myPopupList.setVisibility(0);
        myPopupList.setElevation(0.0f);
        myPopupList.setClipToOutline(false);
        myPopupList.setOutlineProvider(null);
        myPopupList.setBackground(null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        linearLayout.addView(myPopupList, layoutParams);
        linearLayout.setElevation(MainUtil.G(this.f18883a, 2.0f));
        linearLayout.setPadding(0, 0, 0, MainApp.G1);
        linearLayout.setVisibility(4);
        this.F = linearLayout;
        return linearLayout;
    }

    @Override // com.mycompany.app.view.MyPopupWrap
    public final void a() {
        MainActivity mainActivity = this.f18883a;
        this.f18883a = null;
        if (mainActivity == null) {
            return;
        }
        MyPopupList myPopupList = this.k;
        if (myPopupList != null) {
            myPopupList.p0();
            this.k = null;
        }
        PopupWindow popupWindow = this.v;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.v = null;
        }
        MyPopupListener myPopupListener = this.i;
        if (myPopupListener != null) {
            myPopupListener.a();
            this.i = null;
        }
        MyPopupAdapter myPopupAdapter = this.l;
        if (myPopupAdapter != null) {
            myPopupAdapter.d = null;
            myPopupAdapter.j = null;
            this.l = null;
        }
        this.f18884c = null;
        this.d = null;
        this.g = null;
        this.j = null;
        this.D = null;
        this.F = null;
        this.G = null;
        this.E = 0;
    }

    @Override // com.mycompany.app.view.MyPopupWrap
    public final void b() {
        View view = g();
        if (view != null) {
            if (this.q) {
                Handler handler = this.b;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.12
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyPopupMenu.this.a();
                        }
                    });
                    return;
                }
                return;
            }
            if (this.u != null) {
                return;
            }
            view.setPivotX(this.r);
            view.setPivotY(this.s);
            this.z = 1.0f;
            this.A = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.u = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.u);
            this.u.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyPopupMenu.13
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyPopupMenu myPopupMenu = MyPopupMenu.this;
                    if (myPopupMenu.u != null && myPopupMenu.g() != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myPopupMenu.u != null && myPopupMenu.g() != null) {
                            myPopupMenu.z = floatValue;
                            if (!myPopupMenu.A) {
                                myPopupMenu.A = true;
                                MainApp.N(myPopupMenu.f18883a, myPopupMenu.B);
                            }
                        }
                    }
                }
            });
            this.u.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyPopupMenu.14
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyPopupMenu myPopupMenu = MyPopupMenu.this;
                    if (myPopupMenu.u == null) {
                        return;
                    }
                    myPopupMenu.u = null;
                    myPopupMenu.a();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyPopupMenu myPopupMenu = MyPopupMenu.this;
                    if (myPopupMenu.u == null) {
                        return;
                    }
                    MainApp.N(myPopupMenu.f18883a, new Runnable() { // from class: com.mycompany.app.view.MyPopupMenu.16
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyPopupMenu myPopupMenu2 = MyPopupMenu.this;
                            if (myPopupMenu2.u == null) {
                                return;
                            }
                            myPopupMenu2.u = null;
                            myPopupMenu2.a();
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
            ValueAnimator valueAnimator = this.t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.t = null;
            }
            this.u.start();
        }
    }

    public final boolean d(int i) {
        ArrayList arrayList = this.g;
        if (arrayList != null && arrayList.size() != 0) {
            ArrayList arrayList2 = this.g;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                MyPopupAdapter.PopMenuItem popMenuItem = (MyPopupAdapter.PopMenuItem) obj;
                if (popMenuItem.f18880a == i) {
                    return popMenuItem.e;
                }
            }
        }
        return false;
    }

    /** Updates a toggle item's on/off state and refreshes its row. */
    public final void e(int i, boolean z) {
        ArrayList arrayList = this.g;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            MyPopupAdapter.PopMenuItem popMenuItem = (MyPopupAdapter.PopMenuItem) arrayList.get(i2);
            if (popMenuItem != null && popMenuItem.f18880a == i) {
                popMenuItem.e = z;
                MyPopupAdapter myPopupAdapter = this.l;
                if (myPopupAdapter != null) {
                    myPopupAdapter.h(i2);
                }
                return;
            }
        }
    }
}
