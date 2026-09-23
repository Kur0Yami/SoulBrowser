package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MyFadeText extends AppCompatTextView {
    public float A;
    public boolean B;
    public final Runnable C;
    public boolean l;
    public int m;
    public int n;
    public ValueAnimator o;
    public ValueAnimator p;
    public EventHandler q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public MyFadeListener w;
    public float x;
    public boolean y;
    public final Runnable z;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18760a;

        public EventHandler(MyFadeText myFadeText) {
            super(Looper.getMainLooper());
            this.f18760a = new WeakReference(myFadeText);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MyFadeText myFadeText = (MyFadeText) this.f18760a.get();
            if (myFadeText != null && message.what == 0 && myFadeText.s && !myFadeText.v) {
                myFadeText.t();
            }
        }
    }

    public MyFadeText(Context context) {
        super(context, null);
        this.z = new Runnable() { // from class: com.mycompany.app.view.MyFadeText.3
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeText myFadeText = MyFadeText.this;
                myFadeText.y = false;
                if (myFadeText.o != null) {
                    myFadeText.setValAnimShow(myFadeText.x);
                }
            }
        };
        this.C = new Runnable() { // from class: com.mycompany.app.view.MyFadeText.7
            @Override // java.lang.Runnable
            public final void run() {
                MyFadeText myFadeText = MyFadeText.this;
                myFadeText.B = false;
                if (myFadeText.p != null) {
                    myFadeText.setValAnimHide(myFadeText.A);
                }
            }
        };
        this.l = true;
        this.m = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        this.n = 3000;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
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

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.r) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.v = true;
            EventHandler eventHandler = this.q;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.v = false;
            EventHandler eventHandler2 = this.q;
            if (eventHandler2 != null) {
                eventHandler2.removeMessages(0);
                if (this.s) {
                    this.q.sendEmptyMessageDelayed(0, this.n);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.l) {
            return;
        }
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
        }
        ValueAnimator valueAnimator2 = this.p;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.p = null;
        }
        super.onDetachedFromWindow();
    }

    public void setAnimTime(int i) {
        this.m = i;
    }

    public void setAutoHide(boolean z) {
        if (this.s != z) {
            this.s = z;
            if (!z) {
                EventHandler eventHandler = this.q;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    this.q = null;
                }
                setVisibility(0);
                return;
            }
            if (this.q == null) {
                this.q = new EventHandler(this);
            }
            if (this.o == null && (this.p != null || getVisibility() != 0)) {
                return;
            }
            this.q.removeMessages(0);
            this.q.sendEmptyMessageDelayed(0, this.n);
        }
    }

    public void setBlocking(boolean z) {
        this.t = z;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        setAlpha(f);
    }

    public void setInvisible(boolean z) {
        this.u = z;
    }

    public void setListener(MyFadeListener myFadeListener) {
        this.w = myFadeListener;
    }

    public void setShowTime(int i) {
        this.n = i;
    }

    public void setTouchable(boolean z) {
        this.r = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        float f;
        boolean z;
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
        }
        ValueAnimator valueAnimator2 = this.p;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.p = null;
        }
        EventHandler eventHandler = this.q;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (isEnabled()) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        setAlpha(f);
        if (getVisibility() != i) {
            this.v = false;
            MyFadeListener myFadeListener = this.w;
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

    public final void t() {
        EventHandler eventHandler = this.q;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (this.p == null) {
            ValueAnimator valueAnimator = this.o;
            if (valueAnimator != null) {
                if (!this.t) {
                    valueAnimator.cancel();
                    this.o = null;
                } else {
                    return;
                }
            }
            if (getVisibility() != 0) {
                return;
            }
            this.v = false;
            float alpha = getAlpha();
            this.A = alpha;
            this.B = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.p = ofFloat;
            ofFloat.setDuration(alpha * this.m);
            this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeText.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.p != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeText.p != null) {
                            myFadeText.A = floatValue;
                            if (myFadeText.B) {
                                return;
                            }
                            myFadeText.B = true;
                            MainApp.N(myFadeText.getContext(), myFadeText.C);
                        }
                    }
                }
            });
            this.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeText.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.p == null) {
                        return;
                    }
                    myFadeText.p = null;
                    myFadeText.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.p == null) {
                        return;
                    }
                    MainApp.N(myFadeText.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeText.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            MyFadeText myFadeText2 = MyFadeText.this;
                            if (myFadeText2.p != null) {
                                myFadeText2.p = null;
                                if (myFadeText2.u) {
                                    i = 4;
                                } else {
                                    i = 8;
                                }
                                myFadeText2.setOnlyVisibility(i);
                                MyFadeListener myFadeListener = myFadeText2.w;
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
                    MyFadeListener myFadeListener = MyFadeText.this.w;
                    if (myFadeListener != null) {
                        myFadeListener.b(false, true);
                    }
                }
            });
            this.p.start();
        }
    }

    public final void u() {
        float f;
        float f2;
        EventHandler eventHandler = this.q;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (this.o == null) {
            ValueAnimator valueAnimator = this.p;
            if (valueAnimator != null) {
                if (!this.s || !this.t) {
                    valueAnimator.cancel();
                    this.p = null;
                } else {
                    return;
                }
            } else if (getVisibility() == 0) {
                EventHandler eventHandler2 = this.q;
                if (eventHandler2 != null) {
                    eventHandler2.removeMessages(0);
                    if (this.s && !this.v) {
                        this.q.sendEmptyMessageDelayed(0, this.n);
                        return;
                    }
                    return;
                }
                return;
            }
            if (getVisibility() == 0) {
                f = getAlpha();
            } else {
                f = 0.0f;
            }
            if (isEnabled()) {
                f2 = 1.0f;
            } else {
                f2 = 0.5f;
            }
            if (f >= f2) {
                return;
            }
            this.x = f;
            this.y = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
            this.o = ofFloat;
            ofFloat.setDuration((1.0f - f) * this.m);
            this.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyFadeText.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.o != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myFadeText.o != null) {
                            myFadeText.x = floatValue;
                            if (myFadeText.y) {
                                return;
                            }
                            myFadeText.y = true;
                            MainApp.N(myFadeText.getContext(), myFadeText.z);
                        }
                    }
                }
            });
            this.o.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyFadeText.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.o == null) {
                        return;
                    }
                    myFadeText.o = null;
                    myFadeText.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyFadeText myFadeText = MyFadeText.this;
                    if (myFadeText.o == null) {
                        return;
                    }
                    MainApp.N(myFadeText.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyFadeText.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            float f3;
                            MyFadeText myFadeText2 = MyFadeText.this;
                            if (myFadeText2.o != null) {
                                myFadeText2.o = null;
                                if (myFadeText2.isEnabled()) {
                                    f3 = 1.0f;
                                } else {
                                    f3 = 0.5f;
                                }
                                myFadeText2.setValAnimShow(f3);
                                MyFadeListener myFadeListener = myFadeText2.w;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
                                }
                                EventHandler eventHandler3 = myFadeText2.q;
                                if (eventHandler3 != null) {
                                    eventHandler3.removeMessages(0);
                                    if (myFadeText2.s && !myFadeText2.v) {
                                        myFadeText2.q.sendEmptyMessageDelayed(0, myFadeText2.n);
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
                    MyFadeListener myFadeListener = MyFadeText.this.w;
                    if (myFadeListener != null) {
                        myFadeListener.b(true, true);
                    }
                }
            });
            this.o.start();
        }
    }
}
