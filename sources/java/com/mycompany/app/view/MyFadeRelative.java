package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.view.MyFadeLinear;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18742c;
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
    public MyFadeLinear.MyVisibleListener q;
    public ImageSizeListener r;
    public float s;
    public boolean t;
    public final Runnable u;
    public float v;
    public boolean w;
    public final Runnable x;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18751a;

        public EventHandler(MyFadeRelative myFadeRelative) {
            super(Looper.getMainLooper());
            this.f18751a = new WeakReference(myFadeRelative);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeRelative myFadeRelative = (MyFadeRelative) this.f18751a.get();
            if (myFadeRelative != null && message.what == 0 && myFadeRelative.l && !myFadeRelative.o) {
                myFadeRelative.d(true);
            }
        }
    }

    public MyFadeRelative(Context context) {
        super(context);
        this.u = new Runnable() { // from class: com.mycompany.app.view.MyFadeRelative.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeRelative myFadeRelative = MyFadeRelative.this;
                myFadeRelative.t = false;
                if (myFadeRelative.h != null) {
                    myFadeRelative.setValAnimShow(myFadeRelative.s);
                }
            }
        };
        this.x = new Runnable() { // from class: com.mycompany.app.view.MyFadeRelative.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeRelative myFadeRelative = MyFadeRelative.this;
                myFadeRelative.w = false;
                if (myFadeRelative.i != null) {
                    myFadeRelative.setValAnimHide(myFadeRelative.v);
                }
            }
        };
        this.f18742c = true;
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

    public final void d(boolean z) {
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
                if (!this.m) {
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
            this.v = alpha;
            this.w = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.i = ofFloat;
            ofFloat.setDuration(alpha * this.f);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeRelative.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.i != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeRelative.i != null) {
                            myFadeRelative.v = floatValue;
                            if (myFadeRelative.w) {
                                return;
                            }
                            myFadeRelative.w = true;
                            MainApp.N(myFadeRelative.getContext(), myFadeRelative.x);
                        }
                    }
                }
            });
            this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeRelative.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.i == null) {
                        return;
                    }
                    myFadeRelative.i = null;
                    myFadeRelative.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.i == null) {
                        return;
                    }
                    MainApp.N(myFadeRelative.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeRelative.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            MyFadeRelative myFadeRelative2 = MyFadeRelative.this;
                            if (myFadeRelative2.i != null) {
                                myFadeRelative2.i = null;
                                if (myFadeRelative2.n) {
                                    i2 = 4;
                                } else {
                                    i2 = 8;
                                }
                                myFadeRelative2.setOnlyVisibility(i2);
                                MyFadeListener myFadeListener = myFadeRelative2.p;
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
                    MyFadeListener myFadeListener = MyFadeRelative.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(false, true);
                    }
                }
            });
            this.i.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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
            h();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final boolean e() {
        if (this.h != null) {
            return false;
        }
        if (this.i == null && getVisibility() == 0) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        if (this.i != null) {
            return false;
        }
        if (this.h == null && getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public void g() {
        this.f18742c = false;
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
        this.r = null;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.j = null;
        }
    }

    public final void h() {
        this.o = false;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            if (this.l) {
                this.j.sendEmptyMessageDelayed(0, this.g);
            }
        }
    }

    public final void i(boolean z) {
        float f;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (!z) {
            setVisibility(0);
            EventHandler eventHandler2 = this.j;
            if (eventHandler2 != null && this.l && !this.o) {
                eventHandler2.sendEmptyMessageDelayed(0, this.g);
                return;
            }
            return;
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
                EventHandler eventHandler3 = this.j;
                if (eventHandler3 != null) {
                    eventHandler3.removeMessages(0);
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
            this.s = f;
            this.t = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration((1.0f - f) * this.f);
            this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeRelative.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.h != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeRelative.h != null) {
                            myFadeRelative.s = floatValue;
                            if (myFadeRelative.t) {
                                return;
                            }
                            myFadeRelative.t = true;
                            MainApp.N(myFadeRelative.getContext(), myFadeRelative.u);
                        }
                    }
                }
            });
            this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeRelative.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.h == null) {
                        return;
                    }
                    myFadeRelative.h = null;
                    myFadeRelative.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeRelative myFadeRelative = MyFadeRelative.this;
                    if (myFadeRelative.h == null) {
                        return;
                    }
                    MainApp.N(myFadeRelative.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeRelative.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeRelative myFadeRelative2 = MyFadeRelative.this;
                            if (myFadeRelative2.h != null) {
                                myFadeRelative2.h = null;
                                myFadeRelative2.setValAnimShow(1.0f);
                                MyFadeListener myFadeListener = myFadeRelative2.p;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
                                }
                                EventHandler eventHandler4 = myFadeRelative2.j;
                                if (eventHandler4 != null) {
                                    eventHandler4.removeMessages(0);
                                    if (myFadeRelative2.l && !myFadeRelative2.o) {
                                        myFadeRelative2.j.sendEmptyMessageDelayed(0, myFadeRelative2.g);
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
                    MyFadeListener myFadeListener = MyFadeRelative.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(true, true);
                    }
                }
            });
            this.h.start();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18742c) {
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
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.r;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        boolean z;
        super.onVisibilityChanged(view, i);
        MyFadeLinear.MyVisibleListener myVisibleListener = this.q;
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
            if (e()) {
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

    public void setSizeListener(ImageSizeListener imageSizeListener) {
        this.r = imageSizeListener;
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

    public void setVisibleListener(MyFadeLinear.MyVisibleListener myVisibleListener) {
        this.q = myVisibleListener;
    }
}
