package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18712c;
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
    public ImageSizeListener q;
    public float r;
    public boolean s;
    public final Runnable t;
    public float u;
    public boolean v;
    public final Runnable w;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18721a;

        public EventHandler(MyFadeFrame myFadeFrame) {
            super(Looper.getMainLooper());
            this.f18721a = new WeakReference(myFadeFrame);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeFrame myFadeFrame = (MyFadeFrame) this.f18721a.get();
            if (myFadeFrame != null && message.what == 0 && myFadeFrame.l && !myFadeFrame.o) {
                myFadeFrame.d(true);
            }
        }
    }

    public MyFadeFrame(Context context) {
        super(context);
        this.t = new Runnable() { // from class: com.mycompany.app.view.MyFadeFrame.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeFrame myFadeFrame = MyFadeFrame.this;
                myFadeFrame.s = false;
                if (myFadeFrame.h != null) {
                    myFadeFrame.setValAnimShow(myFadeFrame.r);
                }
            }
        };
        this.w = new Runnable() { // from class: com.mycompany.app.view.MyFadeFrame.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeFrame myFadeFrame = MyFadeFrame.this;
                myFadeFrame.v = false;
                if (myFadeFrame.i != null) {
                    myFadeFrame.setValAnimHide(myFadeFrame.u);
                }
            }
        };
        this.f18712c = true;
        this.f = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        this.g = 3000;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        if (this.j == null && this.l) {
            this.j = new EventHandler(this);
        }
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
            this.u = alpha;
            this.v = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.i = ofFloat;
            ofFloat.setDuration(alpha * this.f);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeFrame.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.i != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeFrame.i != null) {
                            myFadeFrame.u = floatValue;
                            if (myFadeFrame.v) {
                                return;
                            }
                            myFadeFrame.v = true;
                            MainApp.N(myFadeFrame.getContext(), myFadeFrame.w);
                        }
                    }
                }
            });
            this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeFrame.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.i == null) {
                        return;
                    }
                    myFadeFrame.i = null;
                    myFadeFrame.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.i == null) {
                        return;
                    }
                    MainApp.N(myFadeFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeFrame.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            MyFadeFrame myFadeFrame2 = MyFadeFrame.this;
                            if (myFadeFrame2.i != null) {
                                myFadeFrame2.i = null;
                                if (myFadeFrame2.n) {
                                    i2 = 4;
                                } else {
                                    i2 = 8;
                                }
                                myFadeFrame2.setOnlyVisibility(i2);
                                MyFadeListener myFadeListener = myFadeFrame2.p;
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
                    MyFadeListener myFadeListener = MyFadeFrame.this.p;
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
            g();
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
        this.f18712c = false;
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
        this.o = false;
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            if (this.l) {
                this.j.sendEmptyMessageDelayed(0, this.g);
            }
        }
    }

    public final void h(boolean z) {
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
            this.r = f;
            this.s = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration((1.0f - f) * this.f);
            this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeFrame.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.h != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeFrame.h != null) {
                            myFadeFrame.r = floatValue;
                            if (myFadeFrame.s) {
                                return;
                            }
                            myFadeFrame.s = true;
                            MainApp.N(myFadeFrame.getContext(), myFadeFrame.t);
                        }
                    }
                }
            });
            this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeFrame.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.h == null) {
                        return;
                    }
                    myFadeFrame.h = null;
                    myFadeFrame.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeFrame myFadeFrame = MyFadeFrame.this;
                    if (myFadeFrame.h == null) {
                        return;
                    }
                    MainApp.N(myFadeFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeFrame.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeFrame myFadeFrame2 = MyFadeFrame.this;
                            if (myFadeFrame2.h != null) {
                                myFadeFrame2.h = null;
                                myFadeFrame2.setValAnimShow(1.0f);
                                MyFadeListener myFadeListener = myFadeFrame2.p;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
                                }
                                EventHandler eventHandler4 = myFadeFrame2.j;
                                if (eventHandler4 != null) {
                                    eventHandler4.removeMessages(0);
                                    if (myFadeFrame2.l && !myFadeFrame2.o) {
                                        myFadeFrame2.j.sendEmptyMessageDelayed(0, myFadeFrame2.g);
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
                    MyFadeListener myFadeListener = MyFadeFrame.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(true, true);
                    }
                }
            });
            this.h.start();
        }
    }

    public final void i(boolean z) {
        if (z) {
            h(true);
        } else {
            d(true);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18712c) {
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
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.q;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
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

    public void setSizeListener(ImageSizeListener imageSizeListener) {
        this.q = imageSizeListener;
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
        if (eventHandler == null) {
            if (this.l) {
                this.j = new EventHandler(this);
            }
        } else {
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
}
