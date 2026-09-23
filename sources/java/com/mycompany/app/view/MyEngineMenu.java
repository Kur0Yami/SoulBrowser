package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MyEngineMenu extends MyPopupWrap {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f18694a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public View f18695c;
    public View d;
    public ArrayList e;
    public final boolean f;
    public MyEngineListener g;
    public FrameLayout h;
    public MyPopupList i;
    public MyEngineAdapter j;
    public int k;
    public int l;
    public int m;
    public ValueAnimator n;
    public ValueAnimator o;
    public PopupWindow p;
    public float q;
    public boolean r;
    public float t;
    public boolean u;
    public final Runnable s = new Runnable() { // from class: com.mycompany.app.view.MyEngineMenu.10
        @Override // java.lang.Runnable
        public final void run() {
            MyEngineMenu myEngineMenu = MyEngineMenu.this;
            myEngineMenu.r = false;
            if (myEngineMenu.n == null) {
                return;
            }
            MyEngineMenu.c(myEngineMenu, myEngineMenu.q);
        }
    };
    public final Runnable v = new Runnable() { // from class: com.mycompany.app.view.MyEngineMenu.14
        @Override // java.lang.Runnable
        public final void run() {
            MyEngineMenu myEngineMenu = MyEngineMenu.this;
            myEngineMenu.u = false;
            if (myEngineMenu.o != null) {
                float f = myEngineMenu.t;
                MyPopupList myPopupList = myEngineMenu.i;
                if (myPopupList == null) {
                    return;
                }
                myPopupList.setAlpha(f);
                myEngineMenu.i.setScaleX(f);
                myEngineMenu.i.setScaleY(f);
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface MyEngineListener {
        void a();

        void b(int i, int i2, String str);
    }

    public MyEngineMenu(MainActivity mainActivity, View view, View view2, boolean z, MyEngineListener myEngineListener) {
        this.f18694a = mainActivity;
        this.b = mainActivity.O0;
        this.f18695c = view;
        this.d = view2;
        this.f = z;
        this.g = myEngineListener;
        MainApp.J(mainActivity, new Runnable() { // from class: com.mycompany.app.view.MyEngineMenu.1
            /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
            
                r2 = com.mycompany.app.db.book.DbBookSearch.i(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
            
                if (r2 == null) goto L46;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x005a, code lost:
            
                if (r2.size() != 0) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x005e, code lost:
            
                r3 = r1.getResources();
                r2 = r2.iterator();
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x006a, code lost:
            
                if (r2.hasNext() == false) goto L61;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x006c, code lost:
            
                r4 = (com.mycompany.app.web.WebSearch.WebSchItem) r2.next();
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x0072, code lost:
            
                if (r4 != null) goto L60;
             */
            /* JADX WARN: Code restructure failed: missing block: B:44:0x0077, code lost:
            
                if (r0.f18694a != null) goto L35;
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x007a, code lost:
            
                r5 = ((int) r4.f19407a) + 100;
                r6 = r4.d;
             */
            /* JADX WARN: Code restructure failed: missing block: B:46:0x0081, code lost:
            
                if (r6 == 0) goto L62;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x009a, code lost:
            
                r6 = com.mycompany.app.db.book.DbBookSearch.b(r4.f19408c);
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x00a4, code lost:
            
                if (com.mycompany.app.main.MainUtil.f6(r6) != false) goto L66;
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x00a6, code lost:
            
                r6 = com.mycompany.app.db.book.DbBookSearch.d(r1, r4.f19407a);
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x00b0, code lost:
            
                if (com.mycompany.app.main.MainUtil.f6(r6) != false) goto L67;
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x00cb, code lost:
            
                com.mycompany.app.db.book.DbBookSearch.j(r4.f19408c, r6);
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x00d0, code lost:
            
                r7 = new java.lang.Object();
                r7.f18692a = r5;
                r7.f18693c = new android.graphics.drawable.BitmapDrawable(r3, r6);
                r7.e = r4.b;
                r0.e.add(r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:58:0x00b2, code lost:
            
                r6 = new java.lang.Object();
                r6.f18692a = r5;
                r6.b = com.mycompany.app.db.book.DbBookSearch.e(-65536);
                r6.e = r4.b;
                r0.e.add(r6);
             */
            /* JADX WARN: Code restructure failed: missing block: B:62:0x0083, code lost:
            
                r7 = new java.lang.Object();
                r7.f18692a = r5;
                r7.b = com.mycompany.app.db.book.DbBookSearch.e(r6);
                r7.e = r4.b;
                r0.e.add(r7);
             */
            /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, com.mycompany.app.view.MyEngineAdapter$EngineItem] */
            /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.mycompany.app.view.MyEngineAdapter$EngineItem] */
            /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, com.mycompany.app.view.MyEngineAdapter$EngineItem] */
            /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object, com.mycompany.app.view.MyEngineAdapter$EngineItem] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 247
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyEngineMenu.AnonymousClass1.run():void");
            }
        });
    }

    public static void c(MyEngineMenu myEngineMenu, float f) {
        MyPopupList myPopupList = myEngineMenu.i;
        if (myPopupList != null) {
            myPopupList.setAlpha(f);
            myEngineMenu.i.setScaleX(f);
            myEngineMenu.i.setScaleY(f);
            if (myEngineMenu.i.getVisibility() != 0) {
                myEngineMenu.i.setVisibility(0);
            }
        }
    }

    @Override // com.mycompany.app.view.MyPopupWrap
    public final void a() {
        MainActivity mainActivity = this.f18694a;
        this.f18694a = null;
        if (mainActivity == null) {
            return;
        }
        MyPopupList myPopupList = this.i;
        if (myPopupList != null) {
            myPopupList.p0();
            this.i = null;
        }
        PopupWindow popupWindow = this.p;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.p = null;
        }
        MyEngineListener myEngineListener = this.g;
        if (myEngineListener != null) {
            myEngineListener.a();
            this.g = null;
        }
        MyEngineAdapter myEngineAdapter = this.j;
        if (myEngineAdapter != null) {
            myEngineAdapter.d = null;
            myEngineAdapter.h = null;
            this.j = null;
        }
        this.f18695c = null;
        this.d = null;
        this.e = null;
        this.h = null;
    }

    @Override // com.mycompany.app.view.MyPopupWrap
    public final void b() {
        MyPopupList myPopupList = this.i;
        if (myPopupList != null && this.o == null) {
            myPopupList.setPivotX(this.l);
            this.i.setPivotY(this.m);
            this.t = 1.0f;
            this.u = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.o = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.o);
            this.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyEngineMenu.12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyEngineMenu myEngineMenu = MyEngineMenu.this;
                    if (myEngineMenu.o != null && myEngineMenu.i != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myEngineMenu.o != null && myEngineMenu.i != null) {
                            myEngineMenu.t = floatValue;
                            if (!myEngineMenu.u) {
                                myEngineMenu.u = true;
                                MainApp.N(myEngineMenu.f18694a, myEngineMenu.v);
                            }
                        }
                    }
                }
            });
            this.o.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyEngineMenu.13
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyEngineMenu myEngineMenu = MyEngineMenu.this;
                    if (myEngineMenu.o == null) {
                        return;
                    }
                    myEngineMenu.o = null;
                    myEngineMenu.a();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyEngineMenu myEngineMenu = MyEngineMenu.this;
                    if (myEngineMenu.o == null) {
                        return;
                    }
                    MainApp.N(myEngineMenu.f18694a, new Runnable() { // from class: com.mycompany.app.view.MyEngineMenu.15
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEngineMenu myEngineMenu2 = MyEngineMenu.this;
                            if (myEngineMenu2.o == null) {
                                return;
                            }
                            myEngineMenu2.o = null;
                            myEngineMenu2.a();
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
            ValueAnimator valueAnimator = this.n;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.n = null;
            }
            this.o.start();
        }
    }
}
