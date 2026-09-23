package com.mycompany.app.wview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class WebMoveText extends AppCompatTextView {
    public static final int L = MainApp.i1;
    public float A;
    public float B;
    public int C;
    public float D;
    public final GestureDetector E;
    public float F;
    public boolean G;
    public final Runnable H;
    public float I;
    public boolean J;
    public final Runnable K;
    public final boolean l;
    public final Context m;
    public boolean n;
    public final int o;
    public final int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public int v;
    public boolean w;
    public ValueAnimator x;
    public ValueAnimator y;
    public boolean z;

    /* renamed from: com.mycompany.app.wview.WebMoveText$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    public WebMoveText(Context context) {
        super(context, null);
        int i;
        this.H = new Runnable() { // from class: com.mycompany.app.wview.WebMoveText.7
            @Override // java.lang.Runnable
            public final void run() {
                WebMoveText webMoveText = WebMoveText.this;
                webMoveText.G = false;
                if (webMoveText.x != null) {
                    webMoveText.setValAnimReset(webMoveText.F);
                }
            }
        };
        this.K = new Runnable() { // from class: com.mycompany.app.wview.WebMoveText.11
            @Override // java.lang.Runnable
            public final void run() {
                WebMoveText webMoveText = WebMoveText.this;
                webMoveText.J = false;
                if (webMoveText.y != null) {
                    webMoveText.setValAnimSwipe(webMoveText.I);
                }
            }
        };
        this.l = true;
        this.m = context;
        this.o = Math.round(MainUtil.G(context, 208.0f));
        this.p = MainApp.g1;
        int i2 = MainApp.F1;
        setPaddingRelative(i2, 0, i2, 0);
        setGravity(17);
        setTextSize(1, 14.0f);
        setMaxLines(2);
        if (PrefZtri.t0) {
            i = R.string.move_free;
        } else {
            i = R.string.move_long;
        }
        if (this.v != i) {
            this.v = i;
            setText(i);
        }
        v();
        setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebMoveText.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebMoveText webMoveText = WebMoveText.this;
                if (webMoveText.C != 0 || webMoveText.n) {
                    return;
                }
                webMoveText.n = true;
                boolean z = true ^ PrefZtri.t0;
                PrefZtri.t0 = z;
                PrefSet.d(17, webMoveText.m, "mMoveLong", z);
                webMoveText.post(new Runnable() { // from class: com.mycompany.app.wview.WebMoveText.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        WebMoveText.this.setVisibility(8);
                        WebMoveText.this.n = false;
                    }
                });
            }
        });
        this.E = new GestureDetector(this.m, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.wview.WebMoveText.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                float f3;
                WebMoveText webMoveText = WebMoveText.this;
                if (webMoveText.C == 0) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                if (Math.abs(f) > Math.abs(f2)) {
                    if (webMoveText.C != 2) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f;
                } else {
                    if (webMoveText.C != 1) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f2;
                }
                if (f3 > 100.0f) {
                    if (webMoveText.D > MainApp.E1) {
                        webMoveText.u();
                    }
                } else if (f3 < -100.0f && webMoveText.D < (-MainApp.E1)) {
                    webMoveText.u();
                }
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        });
        setElevation(MainApp.H1);
        setOutlineProvider(new ViewOutlineProvider());
        setClipToOutline(true);
    }

    private void setTransX(float f) {
        setX(this.s + f);
    }

    private void setTransY(float f) {
        setY(this.t + f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimReset(float f) {
        if (this.l) {
            int i = this.C;
            if (i == 2) {
                setTransX(f);
            } else if (i == 1) {
                setTransY(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSwipe(float f) {
        if (!this.l || this.C == 0) {
            return;
        }
        float abs = Math.abs(f - this.D) / L;
        if (this.C == 2) {
            setTransX(f);
        } else {
            setTransY(f);
        }
        setAlpha(1.0f - abs);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if (r2 != 3) goto L69;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebMoveText.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public int getViewHeight() {
        return this.p;
    }

    public int getViewWidth() {
        return this.o;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.l) {
            return;
        }
        super.invalidate();
    }

    public final void s() {
        if (!this.u || this.n) {
            return;
        }
        this.n = true;
        post(new Runnable() { // from class: com.mycompany.app.wview.WebMoveText.4
            @Override // java.lang.Runnable
            public final void run() {
                WebMoveText webMoveText = WebMoveText.this;
                webMoveText.setVisibility(8);
                webMoveText.n = false;
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.u = z;
        super.setVisibility(i);
    }

    public final void t() {
        this.x = null;
        int i = this.C;
        if (i == 2) {
            setTransX(0.0f);
        } else if (i == 1) {
            setTransY(0.0f);
        }
        this.C = 0;
    }

    public final void u() {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        if (!this.l || (i = this.C) == 0 || this.y != null) {
            return;
        }
        float f2 = this.D;
        if (i == 2) {
            i2 = this.s;
            i3 = this.q;
        } else {
            i2 = this.t;
            i3 = this.r;
        }
        int i5 = L;
        if (f2 < 0.0f) {
            if (i == 2) {
                i4 = this.o;
            } else {
                i4 = this.p;
            }
            int i6 = i2 + i4;
            float f3 = i6;
            if (f3 + f2 <= 0.0f) {
                this.y = null;
                this.C = 0;
                setVisibility(8);
                return;
            } else {
                f = f2 - i5;
                if (f3 + f <= 0.0f) {
                    f = -i6;
                }
            }
        } else {
            float f4 = i2;
            float f5 = i3;
            if (f4 + f2 >= f5) {
                this.y = null;
                this.C = 0;
                setVisibility(8);
                return;
            } else {
                float f6 = i5 + f2;
                if (f4 + f6 >= f5) {
                    f = i3 - i2;
                } else {
                    f = f6;
                }
            }
        }
        long abs = (Math.abs(f - f2) / i5) * 180.0f;
        if (abs <= 0) {
            this.y = null;
            this.C = 0;
            setVisibility(8);
            return;
        }
        this.I = f2;
        this.J = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.y = ofFloat;
        ofFloat.setDuration(abs);
        this.y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebMoveText.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebMoveText webMoveText = WebMoveText.this;
                if (webMoveText.C != 0 && webMoveText.y != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webMoveText.y != null) {
                        webMoveText.I = floatValue;
                        if (webMoveText.J) {
                            return;
                        }
                        webMoveText.J = true;
                        MainApp.N(webMoveText.m, webMoveText.K);
                    }
                }
            }
        });
        this.y.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebMoveText.10
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebMoveText webMoveText = WebMoveText.this;
                if (webMoveText.y == null) {
                    return;
                }
                webMoveText.y = null;
                webMoveText.C = 0;
                webMoveText.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebMoveText webMoveText = WebMoveText.this;
                if (webMoveText.y == null) {
                    return;
                }
                MainApp.N(webMoveText.m, new Runnable() { // from class: com.mycompany.app.wview.WebMoveText.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebMoveText webMoveText2 = WebMoveText.this;
                        if (webMoveText2.y == null) {
                            return;
                        }
                        webMoveText2.y = null;
                        webMoveText2.C = 0;
                        webMoveText2.setVisibility(8);
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
        this.y.start();
    }

    public final void v() {
        if (!this.l) {
            return;
        }
        boolean z = MainApp.K1;
        this.w = z;
        if (z) {
            setBackgroundResource(R.drawable.selector_list_back_dark);
            setTextColor(-328966);
        } else {
            setBackgroundResource(R.drawable.selector_list_back);
            setTextColor(-16777216);
        }
    }

    public final void w(View view, int i, int i2) {
        int i3;
        int i4;
        if (view == null) {
            return;
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
        int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
        this.q = width;
        this.r = height;
        if (i == -1234 && i2 == -1234) {
            i3 = (width - this.o) / 2;
            i4 = (height - this.p) / 2;
        } else {
            int i5 = i2 - paddingTop;
            i3 = (MainApp.g1 / 2) + ((i - paddingLeft) - (this.o / 2));
            int i6 = this.p;
            if (i5 > i6) {
                i4 = (i5 - i6) - MainApp.G1;
            } else {
                i4 = (i6 / 2) + i5;
            }
        }
        int i7 = this.o;
        if (i3 + i7 > width) {
            i3 = width - i7;
        }
        int i8 = this.p;
        if (i4 + i8 > height) {
            i4 = height - i8;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i4 < 0) {
            i4 = 0;
        }
        int i9 = i3 + paddingLeft;
        this.s = i9;
        this.t = i4 + paddingTop;
        setX(i9);
        setY(this.t);
    }
}
