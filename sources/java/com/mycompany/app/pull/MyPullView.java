package com.mycompany.app.pull;

import android.view.ViewConfiguration;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pull.MyMaterialProgressDrawable;
import com.mycompany.app.web.WebViewActivity;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class MyPullView extends MyCircleImageView {
    public final Animation.AnimationListener A;
    public final Animation B;
    public float C;
    public final Runnable D;
    public OnRefreshListener g;
    public boolean h;
    public final int i;
    public final float j;
    public int k;
    public boolean l;
    public float m;
    public float n;
    public float o;
    public boolean p;
    public int q;
    public MyMaterialProgressDrawable r;
    public DecelerateInterpolator s;
    public Animation t;
    public Animation u;
    public Animation v;
    public final float w;
    public int x;
    public boolean y;
    public final Animation z;

    /* renamed from: com.mycompany.app.pull.MyPullView$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends Animation {
        public AnonymousClass5() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            MyPullView myPullView = MyPullView.this;
            if (myPullView.r == null) {
                return;
            }
            float f2 = 1.0f - f;
            myPullView.setScaleX(f2);
            myPullView.setScaleY(f2);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnRefreshListener {
        void a();
    }

    public MyPullView(WebViewActivity webViewActivity, boolean z) {
        super(webViewActivity);
        int i;
        this.z = new Animation() { // from class: com.mycompany.app.pull.MyPullView.2
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                MyPullView myPullView = MyPullView.this;
                if (myPullView.r == null) {
                    return;
                }
                int i2 = myPullView.q;
                myPullView.k = i2 - ((int) (i2 * f));
                myPullView.setTranslationY(myPullView.getTopOffset() + r0);
            }
        };
        this.A = new Animation.AnimationListener() { // from class: com.mycompany.app.pull.MyPullView.3
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                MyPullView myPullView = MyPullView.this;
                if (!myPullView.h) {
                    myPullView.e();
                    return;
                }
                MyMaterialProgressDrawable myMaterialProgressDrawable = myPullView.r;
                if (myMaterialProgressDrawable == null) {
                    return;
                }
                myMaterialProgressDrawable.f.u = KotlinVersion.MAX_COMPONENT_VALUE;
                myMaterialProgressDrawable.start();
                OnRefreshListener onRefreshListener = myPullView.g;
                if (onRefreshListener != null) {
                    onRefreshListener.a();
                }
                myPullView.postDelayed(new Runnable() { // from class: com.mycompany.app.pull.MyPullView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyPullView myPullView2 = MyPullView.this;
                        if (myPullView2.h) {
                            myPullView2.h = false;
                            Animation.AnimationListener animationListener = myPullView2.A;
                            if (myPullView2.r == null) {
                                return;
                            }
                            AnonymousClass5 anonymousClass5 = new AnonymousClass5();
                            myPullView2.t = anonymousClass5;
                            anonymousClass5.setDuration(150L);
                            myPullView2.setAnimationListener(animationListener);
                            myPullView2.clearAnimation();
                            myPullView2.startAnimation(myPullView2.t);
                        }
                    }
                }, 600L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.B = new Animation() { // from class: com.mycompany.app.pull.MyPullView.4
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                MyPullView myPullView = MyPullView.this;
                MyMaterialProgressDrawable myMaterialProgressDrawable = myPullView.r;
                if (myMaterialProgressDrawable == null) {
                    return;
                }
                float f2 = 1.0f - f;
                MyMaterialProgressDrawable.Ring ring = myMaterialProgressDrawable.f;
                if (f2 != ring.q) {
                    ring.q = f2;
                    ring.a();
                }
                int i2 = myPullView.q;
                myPullView.k = i2 + ((int) ((myPullView.w - i2) * f));
                myPullView.setTranslationY(myPullView.getTopOffset() + r0);
            }
        };
        this.D = new Runnable() { // from class: com.mycompany.app.pull.MyPullView.7
            @Override // java.lang.Runnable
            public final void run() {
                MyPullView myPullView = MyPullView.this;
                MyPullView.d(myPullView, myPullView.C);
            }
        };
        boolean k5 = MainUtil.k5(z);
        if (k5) {
            i = -11513776;
        } else {
            i = -328966;
        }
        this.x = i;
        a(i);
        this.i = ViewConfiguration.get(webViewActivity).getScaledTouchSlop();
        this.s = new DecelerateInterpolator(2.0f);
        float G = MainUtil.G(webViewActivity, 64.0f);
        this.w = G;
        this.j = G;
        MyMaterialProgressDrawable myMaterialProgressDrawable = new MyMaterialProgressDrawable(webViewActivity, this, k5);
        this.r = myMaterialProgressDrawable;
        myMaterialProgressDrawable.f.w = i;
        setImageDrawable(myMaterialProgressDrawable);
        this.y = false;
        setVisibility(8);
    }

    public static void b(MyPullView myPullView, float f) {
        Animation animation = myPullView.z;
        MyMaterialProgressDrawable myMaterialProgressDrawable = myPullView.r;
        if (myMaterialProgressDrawable != null) {
            if (f > myPullView.j) {
                Animation animation2 = myPullView.B;
                if (!myPullView.h) {
                    myPullView.h = true;
                    myPullView.q = myPullView.k;
                    animation2.reset();
                    animation2.setDuration(200L);
                    animation2.setInterpolator(myPullView.s);
                    Animation.AnimationListener animationListener = myPullView.A;
                    if (animationListener != null) {
                        myPullView.setAnimationListener(animationListener);
                    }
                    myPullView.clearAnimation();
                    myPullView.startAnimation(animation2);
                    return;
                }
                return;
            }
            myPullView.h = false;
            MyMaterialProgressDrawable.Ring ring = myMaterialProgressDrawable.f;
            ring.e = 0.0f;
            ring.a();
            ring.f = 0.0f;
            ring.a();
            myPullView.q = myPullView.k;
            animation.reset();
            animation.setDuration(200L);
            animation.setInterpolator(myPullView.s);
            myPullView.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.pull.MyPullView.1
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation3) {
                    MyPullView myPullView2 = MyPullView.this;
                    if (myPullView2.r == null) {
                        return;
                    }
                    AnonymousClass5 anonymousClass5 = new AnonymousClass5();
                    myPullView2.t = anonymousClass5;
                    anonymousClass5.setDuration(150L);
                    myPullView2.setAnimationListener(null);
                    myPullView2.clearAnimation();
                    myPullView2.startAnimation(myPullView2.t);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation3) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation3) {
                }
            });
            myPullView.clearAnimation();
            myPullView.startAnimation(animation);
            MyMaterialProgressDrawable.Ring ring2 = myPullView.r.f;
            if (ring2.o) {
                ring2.o = false;
                ring2.a();
            }
        }
    }

    public static void d(MyPullView myPullView, float f) {
        Animation animation;
        Animation animation2;
        if (myPullView.r == null || !myPullView.l || !myPullView.p || f <= 0.0f) {
            return;
        }
        float min = Math.min(1.0f, Math.abs(f / myPullView.j));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f) - myPullView.j;
        float f2 = myPullView.w;
        double max2 = Math.max(0.0f, Math.min(abs, f2 * 2.0f) / f2) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i = (int) ((f2 * min) + (f2 * pow * 2.0f));
        MyMaterialProgressDrawable.Ring ring = myPullView.r.f;
        if (!ring.o) {
            ring.o = true;
            ring.a();
        }
        if (!myPullView.y) {
            myPullView.y = true;
            myPullView.setVisibility(0);
        }
        myPullView.setScaleX(1.0f);
        myPullView.setScaleY(1.0f);
        if (f < myPullView.j) {
            final int i2 = 76;
            if (myPullView.r.f.u > 76 && ((animation2 = myPullView.u) == null || !animation2.hasStarted() || animation2.hasEnded())) {
                final int i3 = myPullView.r.f.u;
                Animation animation3 = new Animation() { // from class: com.mycompany.app.pull.MyPullView.6
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        MyMaterialProgressDrawable myMaterialProgressDrawable = MyPullView.this.r;
                        if (myMaterialProgressDrawable == null) {
                            return;
                        }
                        myMaterialProgressDrawable.f.u = (int) (((i2 - r0) * f3) + i3);
                    }
                };
                animation3.setDuration(300L);
                myPullView.setAnimationListener(null);
                myPullView.clearAnimation();
                myPullView.startAnimation(animation3);
                myPullView.u = animation3;
            }
        } else {
            int i4 = myPullView.r.f.u;
            final int i5 = KotlinVersion.MAX_COMPONENT_VALUE;
            if (i4 < 255 && ((animation = myPullView.v) == null || !animation.hasStarted() || animation.hasEnded())) {
                final int i6 = myPullView.r.f.u;
                Animation animation4 = new Animation() { // from class: com.mycompany.app.pull.MyPullView.6
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        MyMaterialProgressDrawable myMaterialProgressDrawable = MyPullView.this.r;
                        if (myMaterialProgressDrawable == null) {
                            return;
                        }
                        myMaterialProgressDrawable.f.u = (int) (((i5 - r0) * f3) + i6);
                    }
                };
                animation4.setDuration(300L);
                myPullView.setAnimationListener(null);
                myPullView.clearAnimation();
                myPullView.startAnimation(animation4);
                myPullView.v = animation4;
            }
        }
        MyMaterialProgressDrawable myMaterialProgressDrawable = myPullView.r;
        float min2 = Math.min(0.8f, max * 0.8f);
        MyMaterialProgressDrawable.Ring ring2 = myMaterialProgressDrawable.f;
        ring2.e = 0.0f;
        ring2.a();
        ring2.f = min2;
        ring2.a();
        MyMaterialProgressDrawable myMaterialProgressDrawable2 = myPullView.r;
        float min3 = Math.min(1.0f, max);
        MyMaterialProgressDrawable.Ring ring3 = myMaterialProgressDrawable2.f;
        if (min3 != ring3.q) {
            ring3.q = min3;
            ring3.a();
        }
        MyMaterialProgressDrawable.Ring ring4 = myPullView.r.f;
        ring4.g = ((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f;
        ring4.a();
        myPullView.k = i;
        myPullView.setTranslationY(i + myPullView.getTopOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopOffset() {
        int i;
        int i2 = PrefWeb.x;
        if (i2 != 1 && i2 != 2) {
            i = 0;
        } else {
            i = PrefPdf.F;
        }
        if (!MainUtil.V4()) {
            return i - MainApp.Y0;
        }
        return i;
    }

    public final void e() {
        if (this.r != null) {
            if (this.l) {
                this.l = false;
                removeCallbacks(this.D);
            }
            this.p = false;
            this.h = false;
            this.k = 0;
            if (!this.y) {
                return;
            }
            this.y = false;
            setVisibility(8);
            this.r.stop();
            this.r.f.u = KotlinVersion.MAX_COMPONENT_VALUE;
            clearAnimation();
            getBackground().setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
            setTranslationY(this.k + getTopOffset());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005a, code lost:
    
        if (r4.p == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(float r5, float r6, int r7) {
        /*
            r4 = this;
            boolean r0 = r4.h
            java.lang.Runnable r1 = r4.D
            r2 = 0
            if (r0 != 0) goto L7b
            com.mycompany.app.pull.MyMaterialProgressDrawable r0 = r4.r
            if (r0 != 0) goto Ld
            goto L7b
        Ld:
            r0 = 1
            if (r7 == 0) goto L70
            if (r7 == r0) goto L6c
            r3 = 2
            if (r7 == r3) goto L1d
            r5 = 3
            if (r7 == r5) goto L19
            goto L78
        L19:
            r4.g()
            goto L78
        L1d:
            boolean r7 = r4.l
            if (r7 != 0) goto L29
            r4.l = r0
            r4.p = r2
            r4.n = r5
            r4.o = r6
        L29:
            boolean r7 = r4.p
            if (r7 != 0) goto L5d
            float r7 = r4.n
            float r5 = r5 - r7
            float r5 = java.lang.Math.abs(r5)
            float r7 = r4.o
            float r7 = r6 - r7
            float r7 = java.lang.Math.abs(r7)
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 <= 0) goto L58
            float r5 = r4.o
            float r7 = r6 - r5
            int r2 = r4.i
            float r2 = (float) r2
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 <= 0) goto L58
            r4.p = r0
            float r5 = r5 + r2
            r4.m = r5
            com.mycompany.app.pull.MyMaterialProgressDrawable r5 = r4.r
            r7 = 76
            com.mycompany.app.pull.MyMaterialProgressDrawable$Ring r5 = r5.f
            r5.u = r7
        L58:
            boolean r5 = r4.p
            if (r5 != 0) goto L5d
            goto L78
        L5d:
            float r5 = r4.m
            float r6 = r6 - r5
            r5 = 1056964608(0x3f000000, float:0.5)
            float r6 = r6 * r5
            r4.C = r6
            r4.removeCallbacks(r1)
            r4.post(r1)
            goto L78
        L6c:
            r4.setTouchUp(r6)
            goto L78
        L70:
            r4.l = r0
            r4.p = r2
            r4.n = r5
            r4.o = r6
        L78:
            boolean r5 = r4.p
            return r5
        L7b:
            boolean r5 = r4.l
            if (r5 == 0) goto L84
            r4.l = r2
            r4.removeCallbacks(r1)
        L84:
            r4.p = r2
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.pull.MyPullView.f(float, float, int):boolean");
    }

    public final void g() {
        if (this.l) {
            this.l = false;
            removeCallbacks(this.D);
        }
        if (!this.p) {
            return;
        }
        this.p = false;
        post(new Runnable() { // from class: com.mycompany.app.pull.MyPullView.9
            @Override // java.lang.Runnable
            public final void run() {
                MyPullView.b(MyPullView.this, 0.0f);
            }
        });
    }

    public final void h(boolean z) {
        int i;
        if (this.r != null) {
            boolean k5 = MainUtil.k5(z);
            if (k5) {
                i = -11513776;
            } else {
                i = -328966;
            }
            if (this.x != i) {
                this.x = i;
                getContext();
                a(i);
                MyMaterialProgressDrawable.Ring ring = this.r.f;
                if (ring == null) {
                    return;
                }
                if (k5) {
                    ring.j = new int[]{-328966};
                    ring.b(0);
                } else {
                    ring.j = new int[]{-16777216};
                    ring.b(0);
                }
                ring.b(0);
                ring.w = i;
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        e();
        super.onDetachedFromWindow();
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.f17320c = animationListener;
    }

    @Override // com.mycompany.app.pull.MyCircleImageView, android.view.View
    public /* bridge */ /* synthetic */ void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
    }

    public void setBackgroundColorRes(int i) {
        setBackgroundColor(getContext().getColor(i));
    }

    public void setListener(OnRefreshListener onRefreshListener) {
        this.g = onRefreshListener;
    }

    public void setTouchUp(float f) {
        if (this.l) {
            this.l = false;
            removeCallbacks(this.D);
        }
        if (!this.p) {
            return;
        }
        this.p = false;
        final float f2 = (f - this.m) * 0.5f;
        post(new Runnable() { // from class: com.mycompany.app.pull.MyPullView.8
            @Override // java.lang.Runnable
            public final void run() {
                MyPullView.b(MyPullView.this, f2);
            }
        });
    }
}
