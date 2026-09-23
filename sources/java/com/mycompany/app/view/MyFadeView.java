package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeView extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18761c;
    public boolean f;
    public int g;
    public int h;
    public ValueAnimator i;
    public ValueAnimator j;
    public EventHandler k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public MyFadeListener q;
    public float r;
    public boolean s;
    public final Runnable t;
    public float u;
    public boolean v;
    public final Runnable w;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18770a;

        public EventHandler(MyFadeView myFadeView) {
            super(Looper.getMainLooper());
            this.f18770a = new WeakReference(myFadeView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeView myFadeView = (MyFadeView) this.f18770a.get();
            if (myFadeView != null && message.what == 0 && myFadeView.m && !myFadeView.p) {
                myFadeView.d(true);
            }
        }
    }

    public MyFadeView(Context context) {
        super(context);
        this.t = new Runnable() { // from class: com.mycompany.app.view.MyFadeView.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeView myFadeView = MyFadeView.this;
                myFadeView.s = false;
                if (myFadeView.i != null) {
                    myFadeView.setValAnimShow(myFadeView.r);
                }
            }
        };
        this.w = new Runnable() { // from class: com.mycompany.app.view.MyFadeView.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeView myFadeView = MyFadeView.this;
                myFadeView.v = false;
                if (myFadeView.j != null) {
                    myFadeView.setValAnimHide(myFadeView.u);
                }
            }
        };
        this.f18761c = true;
        this.g = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        this.h = 3000;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
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

    public final void d(boolean z) {
        int i;
        EventHandler eventHandler = this.k;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (!this.f && z) {
            if (this.j == null) {
                ValueAnimator valueAnimator = this.i;
                if (valueAnimator != null) {
                    if (!this.n) {
                        valueAnimator.cancel();
                        this.i = null;
                    } else {
                        return;
                    }
                }
                if (getVisibility() != 0) {
                    return;
                }
                this.p = false;
                float alpha = getAlpha();
                this.u = alpha;
                this.v = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
                this.j = ofFloat;
                ofFloat.setDuration(alpha * this.g);
                this.j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeView.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.j != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (myFadeView.j != null) {
                                myFadeView.u = floatValue;
                                if (myFadeView.v) {
                                    return;
                                }
                                myFadeView.v = true;
                                MainApp.N(myFadeView.getContext(), myFadeView.w);
                            }
                        }
                    }
                });
                this.j.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeView.6
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.j == null) {
                            return;
                        }
                        myFadeView.j = null;
                        myFadeView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.j == null) {
                            return;
                        }
                        MainApp.N(myFadeView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeView.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i2;
                                MyFadeView myFadeView2 = MyFadeView.this;
                                if (myFadeView2.j != null) {
                                    myFadeView2.j = null;
                                    if (myFadeView2.o) {
                                        i2 = 4;
                                    } else {
                                        i2 = 8;
                                    }
                                    myFadeView2.setOnlyVisibility(i2);
                                    MyFadeListener myFadeListener = myFadeView2.q;
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
                        MyFadeListener myFadeListener = MyFadeView.this.q;
                        if (myFadeListener != null) {
                            myFadeListener.b(false, true);
                        }
                    }
                });
                this.j.start();
                return;
            }
            return;
        }
        if (this.o) {
            i = 4;
        } else {
            i = 8;
        }
        setVisibility(i);
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.l) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.p = true;
            EventHandler eventHandler = this.k;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            e();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        this.p = false;
        EventHandler eventHandler = this.k;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            if (this.m) {
                this.k.sendEmptyMessageDelayed(0, this.h);
            }
        }
    }

    public final void f(boolean z) {
        float f;
        EventHandler eventHandler = this.k;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (!this.f && z) {
            if (this.i == null) {
                ValueAnimator valueAnimator = this.j;
                if (valueAnimator != null) {
                    if (!this.m || !this.n) {
                        valueAnimator.cancel();
                        this.j = null;
                    } else {
                        return;
                    }
                } else if (getVisibility() == 0) {
                    EventHandler eventHandler2 = this.k;
                    if (eventHandler2 != null) {
                        eventHandler2.removeMessages(0);
                        if (this.m && !this.p) {
                            this.k.sendEmptyMessageDelayed(0, this.h);
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
                this.i = ofFloat;
                ofFloat.setDuration((1.0f - f) * this.g);
                this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeView.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.i != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (myFadeView.i != null) {
                                myFadeView.r = floatValue;
                                if (myFadeView.s) {
                                    return;
                                }
                                myFadeView.s = true;
                                MainApp.N(myFadeView.getContext(), myFadeView.t);
                            }
                        }
                    }
                });
                this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeView.2
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.i == null) {
                            return;
                        }
                        myFadeView.i = null;
                        myFadeView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MyFadeView myFadeView = MyFadeView.this;
                        if (myFadeView.i == null) {
                            return;
                        }
                        MainApp.N(myFadeView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeView.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyFadeView myFadeView2 = MyFadeView.this;
                                if (myFadeView2.i != null) {
                                    myFadeView2.i = null;
                                    myFadeView2.setValAnimShow(1.0f);
                                    MyFadeListener myFadeListener = myFadeView2.q;
                                    if (myFadeListener != null) {
                                        myFadeListener.a(true);
                                    }
                                    EventHandler eventHandler3 = myFadeView2.k;
                                    if (eventHandler3 != null) {
                                        eventHandler3.removeMessages(0);
                                        if (myFadeView2.m && !myFadeView2.p) {
                                            myFadeView2.k.sendEmptyMessageDelayed(0, myFadeView2.h);
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
                        MyFadeListener myFadeListener = MyFadeView.this.q;
                        if (myFadeListener != null) {
                            myFadeListener.b(true, true);
                        }
                    }
                });
                this.i.start();
                return;
            }
            return;
        }
        setVisibility(0);
        EventHandler eventHandler3 = this.k;
        if (eventHandler3 != null && this.m && !this.p) {
            eventHandler3.sendEmptyMessageDelayed(0, this.h);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        if (!this.f18761c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.i = null;
        }
        ValueAnimator valueAnimator2 = this.j;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.j = null;
        }
        super.onDetachedFromWindow();
    }

    public void setAnimTime(int i) {
        this.g = i;
    }

    public void setAutoHide(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (!z) {
                EventHandler eventHandler = this.k;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    this.k = null;
                }
                setVisibility(0);
                return;
            }
            if (this.k == null) {
                this.k = new EventHandler(this);
            }
            if (this.i == null && (this.j != null || getVisibility() != 0)) {
                return;
            }
            this.k.removeMessages(0);
            this.k.sendEmptyMessageDelayed(0, this.h);
        }
    }

    public void setBlocking(boolean z) {
        this.n = z;
    }

    public void setInvisible(boolean z) {
        this.o = z;
    }

    public void setListener(MyFadeListener myFadeListener) {
        this.q = myFadeListener;
    }

    public void setShowTime(int i) {
        this.h = i;
    }

    public void setTouchable(boolean z) {
        this.l = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        ValueAnimator valueAnimator = this.i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.i = null;
        }
        ValueAnimator valueAnimator2 = this.j;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.j = null;
        }
        EventHandler eventHandler = this.k;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        setAlpha(1.0f);
        if (getVisibility() != i) {
            this.p = false;
            MyFadeListener myFadeListener = this.q;
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
}
