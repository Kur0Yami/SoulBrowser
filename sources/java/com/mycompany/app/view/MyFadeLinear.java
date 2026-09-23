package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeLinear extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18732c;
    public int f;
    public int g;
    public ValueAnimator h;
    public ValueAnimator i;
    public EventHandler j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public MyFadeListener p;
    public MyVisibleListener q;
    public float r;
    public boolean s;
    public final Runnable t;
    public float u;
    public boolean v;
    public final Runnable w;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18741a;

        public EventHandler(MyFadeLinear myFadeLinear) {
            super(Looper.getMainLooper());
            this.f18741a = new WeakReference(myFadeLinear);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeLinear myFadeLinear = (MyFadeLinear) this.f18741a.get();
            if (myFadeLinear != null && message.what == 0 && myFadeLinear.l && !myFadeLinear.o) {
                myFadeLinear.d(true, false);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface MyVisibleListener {
        void a(boolean z);
    }

    public MyFadeLinear(Context context) {
        super(context);
        this.t = new Runnable() { // from class: com.mycompany.app.view.MyFadeLinear.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeLinear myFadeLinear = MyFadeLinear.this;
                myFadeLinear.s = false;
                if (myFadeLinear.h != null) {
                    myFadeLinear.setValAnimShow(myFadeLinear.r);
                }
            }
        };
        this.w = new Runnable() { // from class: com.mycompany.app.view.MyFadeLinear.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeLinear myFadeLinear = MyFadeLinear.this;
                myFadeLinear.v = false;
                if (myFadeLinear.i != null) {
                    myFadeLinear.setValAnimHide(myFadeLinear.u);
                }
            }
        };
        this.f18732c = true;
        this.f = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        this.g = 3000;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        setAlpha(f);
        if (getVisibility() != 0) {
            setOnlyVisibility(0);
        }
    }

    public final void d(boolean z, boolean z2) {
        int i;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (!z) {
            if (this.n) {
                i = 4;
            } else {
                i = 8;
            }
            setVisibility(i);
            return;
        }
        if (this.i == null) {
            ValueAnimator valueAnimator = this.h;
            if (valueAnimator != null) {
                if (!this.m || z2) {
                    valueAnimator.cancel();
                    this.h = null;
                } else {
                    return;
                }
            }
            if (getVisibility() != 0) {
                return;
            }
            this.o = false;
            float alpha = getAlpha();
            this.u = alpha;
            this.v = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.i = ofFloat;
            ofFloat.setDuration(alpha * this.f);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeLinear.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.i != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeLinear.i != null) {
                            myFadeLinear.u = floatValue;
                            if (myFadeLinear.v) {
                                return;
                            }
                            myFadeLinear.v = true;
                            MainApp.N(myFadeLinear.getContext(), myFadeLinear.w);
                        }
                    }
                }
            });
            this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeLinear.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.i == null) {
                        return;
                    }
                    myFadeLinear.i = null;
                    myFadeLinear.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.i == null) {
                        return;
                    }
                    MainApp.N(myFadeLinear.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeLinear.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            MyFadeLinear myFadeLinear2 = MyFadeLinear.this;
                            if (myFadeLinear2.i != null) {
                                myFadeLinear2.i = null;
                                if (myFadeLinear2.n) {
                                    i2 = 4;
                                } else {
                                    i2 = 8;
                                }
                                myFadeLinear2.setOnlyVisibility(i2);
                                MyFadeListener myFadeListener = myFadeLinear2.p;
                                if (myFadeListener != null) {
                                    myFadeListener.a(false);
                                }
                            }
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    MyFadeListener myFadeListener = MyFadeLinear.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(false, true);
                    }
                }
            });
            this.i.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.k) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.o = true;
            EventHandler eventHandler = this.j;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.o = false;
            EventHandler eventHandler2 = this.j;
            if (eventHandler2 != null) {
                eventHandler2.removeMessages(0);
                if (this.l) {
                    this.j.sendEmptyMessageDelayed(0, this.g);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final boolean e() {
        if (this.i != null) {
            return false;
        }
        if (this.h == null && getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public void f() {
        this.f18732c = false;
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        this.p = null;
        this.q = null;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.j = null;
        }
    }

    public final void g() {
        float f;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (this.h == null) {
            ValueAnimator valueAnimator = this.i;
            if (valueAnimator != null) {
                if (!this.l || !this.m) {
                    valueAnimator.cancel();
                    this.i = null;
                } else {
                    return;
                }
            } else if (getVisibility() == 0) {
                EventHandler eventHandler2 = this.j;
                if (eventHandler2 != null) {
                    eventHandler2.removeMessages(0);
                    if (this.l && !this.o) {
                        this.j.sendEmptyMessageDelayed(0, this.g);
                        return;
                    }
                    return;
                }
                return;
            }
            if (getVisibility() == 0) {
                f = getAlpha();
                if (f >= 1.0f) {
                    return;
                }
            } else {
                f = 0.0f;
            }
            this.r = f;
            this.s = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration((1.0f - f) * this.f);
            this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeLinear.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.h != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeLinear.h != null) {
                            myFadeLinear.r = floatValue;
                            if (myFadeLinear.s) {
                                return;
                            }
                            myFadeLinear.s = true;
                            MainApp.N(myFadeLinear.getContext(), myFadeLinear.t);
                        }
                    }
                }
            });
            this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeLinear.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.h == null) {
                        return;
                    }
                    myFadeLinear.h = null;
                    myFadeLinear.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeLinear myFadeLinear = MyFadeLinear.this;
                    if (myFadeLinear.h == null) {
                        return;
                    }
                    MainApp.N(myFadeLinear.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeLinear.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeLinear myFadeLinear2 = MyFadeLinear.this;
                            if (myFadeLinear2.h != null) {
                                myFadeLinear2.h = null;
                                myFadeLinear2.setValAnimShow(1.0f);
                                MyFadeListener myFadeListener = myFadeLinear2.p;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
                                }
                                EventHandler eventHandler3 = myFadeLinear2.j;
                                if (eventHandler3 != null) {
                                    eventHandler3.removeMessages(0);
                                    if (myFadeLinear2.l && !myFadeLinear2.o) {
                                        myFadeLinear2.j.sendEmptyMessageDelayed(0, myFadeLinear2.g);
                                    }
                                }
                            }
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    MyFadeListener myFadeListener = MyFadeLinear.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(true, true);
                    }
                }
            });
            this.h.start();
        }
    }

    @Override // android.view.View
    public void invalidate() {
        if (!this.f18732c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        boolean z;
        super.onVisibilityChanged(view, i);
        MyVisibleListener myVisibleListener = this.q;
        if (myVisibleListener != null) {
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            myVisibleListener.a(z);
        }
    }

    public void setAnimTime(int i) {
        this.f = i;
    }

    public void setAutoHide(boolean z) {
        if (this.l != z) {
            this.l = z;
            if (!z) {
                EventHandler eventHandler = this.j;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    this.j = null;
                }
                setVisibility(0);
                return;
            }
            if (this.j == null) {
                this.j = new EventHandler(this);
            }
            if (this.h == null && (this.i != null || getVisibility() != 0)) {
                return;
            }
            this.j.removeMessages(0);
            this.j.sendEmptyMessageDelayed(0, this.g);
        }
    }

    public void setBlocking(boolean z) {
        this.m = z;
    }

    public void setInvisible(boolean z) {
        this.n = z;
    }

    public void setListener(MyFadeListener myFadeListener) {
        this.p = myFadeListener;
    }

    public void setShowTime(int i) {
        this.g = i;
    }

    public void setTouchable(boolean z) {
        this.k = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        setAlpha(1.0f);
        if (getVisibility() != i) {
            this.o = false;
            MyFadeListener myFadeListener = this.p;
            if (myFadeListener != null) {
                if (i == 0) {
                    z = true;
                } else {
                    z = false;
                }
                myFadeListener.b(z, false);
            }
        }
        super.setVisibility(i);
    }

    public void setVisibleListener(MyVisibleListener myVisibleListener) {
        this.q = myVisibleListener;
    }
}
