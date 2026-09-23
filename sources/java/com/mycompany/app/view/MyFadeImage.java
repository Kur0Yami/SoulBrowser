package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeImage extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18722c;
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
    public float q;
    public boolean r;
    public final Runnable s;
    public boolean t;
    public float u;
    public boolean v;
    public final Runnable w;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18731a;

        public EventHandler(MyFadeImage myFadeImage) {
            super(Looper.getMainLooper());
            this.f18731a = new WeakReference(myFadeImage);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeImage myFadeImage = (MyFadeImage) this.f18731a.get();
            if (myFadeImage != null && message.what == 0 && myFadeImage.l && !myFadeImage.o) {
                myFadeImage.d();
            }
        }
    }

    public MyFadeImage(Context context) {
        super(context);
        this.s = new Runnable() { // from class: com.mycompany.app.view.MyFadeImage.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeImage myFadeImage = MyFadeImage.this;
                myFadeImage.r = false;
                if (myFadeImage.h != null) {
                    myFadeImage.setValAnimShow(myFadeImage.q);
                }
            }
        };
        this.w = new Runnable() { // from class: com.mycompany.app.view.MyFadeImage.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeImage myFadeImage = MyFadeImage.this;
                myFadeImage.v = false;
                if (myFadeImage.i != null) {
                    myFadeImage.setValAnimHide(myFadeImage.u);
                }
            }
        };
        this.f18722c = true;
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

    public final void d() {
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        boolean z = this.n;
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
            this.t = z;
            this.u = alpha;
            this.v = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.i = ofFloat;
            ofFloat.setDuration(alpha * this.f);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeImage.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.i != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeImage.i != null) {
                            myFadeImage.u = floatValue;
                            if (myFadeImage.v) {
                                return;
                            }
                            myFadeImage.v = true;
                            MainApp.N(myFadeImage.getContext(), myFadeImage.w);
                        }
                    }
                }
            });
            this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeImage.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.i == null) {
                        return;
                    }
                    myFadeImage.i = null;
                    myFadeImage.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.i == null) {
                        return;
                    }
                    MainApp.N(myFadeImage.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeImage.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            MyFadeImage myFadeImage2 = MyFadeImage.this;
                            if (myFadeImage2.i != null) {
                                myFadeImage2.i = null;
                                if (myFadeImage2.t) {
                                    i = 4;
                                } else {
                                    i = 8;
                                }
                                myFadeImage2.setOnlyVisibility(i);
                                MyFadeListener myFadeListener = myFadeImage2.p;
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
                    MyFadeListener myFadeListener = MyFadeImage.this.p;
                    if (myFadeListener != null) {
                        myFadeListener.b(false, true);
                    }
                }
            });
            this.i.start();
        }
    }

    @Override // android.view.View
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

    public final void e() {
        this.f18722c = false;
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
        EventHandler eventHandler = this.j;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.j = null;
        }
    }

    public final void f() {
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
            this.q = f;
            this.r = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration((1.0f - f) * this.f);
            this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeImage.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.h != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeImage.h != null) {
                            myFadeImage.q = floatValue;
                            if (myFadeImage.r) {
                                return;
                            }
                            myFadeImage.r = true;
                            MainApp.N(myFadeImage.getContext(), myFadeImage.s);
                        }
                    }
                }
            });
            this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeImage.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.h == null) {
                        return;
                    }
                    myFadeImage.h = null;
                    myFadeImage.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeImage myFadeImage = MyFadeImage.this;
                    if (myFadeImage.h == null) {
                        return;
                    }
                    MainApp.N(myFadeImage.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeImage.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeImage myFadeImage2 = MyFadeImage.this;
                            if (myFadeImage2.h != null) {
                                myFadeImage2.h = null;
                                myFadeImage2.setValAnimShow(1.0f);
                                MyFadeListener myFadeListener = myFadeImage2.p;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
                                }
                                EventHandler eventHandler3 = myFadeImage2.j;
                                if (eventHandler3 != null) {
                                    eventHandler3.removeMessages(0);
                                    if (myFadeImage2.l && !myFadeImage2.o) {
                                        myFadeImage2.j.sendEmptyMessageDelayed(0, myFadeImage2.g);
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
                    MyFadeListener myFadeListener = MyFadeImage.this.p;
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
        if (!this.f18722c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
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

    @Override // android.widget.ImageView, android.view.View
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
}
