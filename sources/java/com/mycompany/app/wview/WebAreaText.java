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
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class WebAreaText extends AppCompatTextView {
    public static final int M = MainApp.i1;
    public boolean A;
    public float B;
    public float C;
    public int D;
    public float E;
    public final GestureDetector F;
    public float G;
    public boolean H;
    public final Runnable I;
    public float J;
    public boolean K;
    public final Runnable L;
    public final boolean l;
    public final Context m;
    public String n;
    public boolean o;
    public final int p;
    public final int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public ValueAnimator y;
    public ValueAnimator z;

    /* renamed from: com.mycompany.app.wview.WebAreaText$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    public WebAreaText(Context context) {
        super(context, null);
        this.I = new Runnable() { // from class: com.mycompany.app.wview.WebAreaText.7
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaText webAreaText = WebAreaText.this;
                webAreaText.H = false;
                if (webAreaText.y != null) {
                    webAreaText.setValAnimReset(webAreaText.G);
                }
            }
        };
        this.L = new Runnable() { // from class: com.mycompany.app.wview.WebAreaText.11
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaText webAreaText = WebAreaText.this;
                webAreaText.K = false;
                if (webAreaText.z != null) {
                    webAreaText.setValAnimSwipe(webAreaText.J);
                }
            }
        };
        this.l = true;
        this.m = context;
        this.p = Math.round(MainUtil.G(context, 208.0f));
        this.q = MainApp.g1;
        int i = MainApp.F1;
        setPaddingRelative(i, 0, i, 0);
        setGravity(17);
        setTextSize(1, 14.0f);
        setMaxLines(2);
        v();
        setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaText.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaText webAreaText = WebAreaText.this;
                if (webAreaText.D != 0 || webAreaText.o) {
                    return;
                }
                webAreaText.o = true;
                webAreaText.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaText.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaText webAreaText2 = WebAreaText.this;
                        webAreaText2.setVisibility(8);
                        MainUtil.s(R.string.copied_clipboard, webAreaText2.m, "Copied Title", webAreaText2.n);
                        webAreaText2.o = false;
                    }
                });
            }
        });
        this.F = new GestureDetector(this.m, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.wview.WebAreaText.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                float f3;
                WebAreaText webAreaText = WebAreaText.this;
                if (webAreaText.D == 0) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                if (Math.abs(f) > Math.abs(f2)) {
                    if (webAreaText.D != 2) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f;
                } else {
                    if (webAreaText.D != 1) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f2;
                }
                if (f3 > 100.0f) {
                    if (webAreaText.E > MainApp.E1) {
                        webAreaText.u();
                    }
                } else if (f3 < -100.0f && webAreaText.E < (-MainApp.E1)) {
                    webAreaText.u();
                }
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        });
        setElevation(MainApp.H1);
        setOutlineProvider(new ViewOutlineProvider());
        setClipToOutline(true);
    }

    private void setTransX(float f) {
        setX(this.u + f);
    }

    private void setTransY(float f) {
        setY(this.v + f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimReset(float f) {
        if (this.l) {
            int i = this.D;
            if (i == 2) {
                setTransX(f);
            } else if (i == 1) {
                setTransY(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSwipe(float f) {
        if (!this.l || this.D == 0) {
            return;
        }
        float abs = Math.abs(f - this.E) / M;
        if (this.D == 2) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebAreaText.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public int getViewHeight() {
        return this.q;
    }

    public int getViewWidth() {
        return this.p;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.l) {
            return;
        }
        super.invalidate();
    }

    public final void s() {
        if (!this.w || this.o) {
            return;
        }
        this.o = true;
        post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaText.4
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaText webAreaText = WebAreaText.this;
                webAreaText.setVisibility(8);
                webAreaText.o = false;
            }
        });
    }

    public void setLinkText(String str) {
        this.n = str;
        setText(str);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.w = z;
        super.setVisibility(i);
    }

    public final void t() {
        this.y = null;
        int i = this.D;
        if (i == 2) {
            setTransX(0.0f);
        } else if (i == 1) {
            setTransY(0.0f);
        }
        this.D = 0;
    }

    public final void u() {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        if (!this.l || (i = this.D) == 0 || this.z != null) {
            return;
        }
        float f2 = this.E;
        if (i == 2) {
            i2 = this.u;
            i3 = this.s;
        } else {
            i2 = this.v;
            i3 = this.t;
        }
        int i5 = M;
        if (f2 < 0.0f) {
            if (i == 2) {
                i4 = this.p;
            } else {
                i4 = this.q;
            }
            int i6 = i2 + i4;
            float f3 = i6;
            if (f3 + f2 <= 0.0f) {
                this.z = null;
                this.D = 0;
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
                this.z = null;
                this.D = 0;
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
            this.z = null;
            this.D = 0;
            setVisibility(8);
            return;
        }
        this.J = f2;
        this.K = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.z = ofFloat;
        ofFloat.setDuration(abs);
        this.z.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebAreaText.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebAreaText webAreaText = WebAreaText.this;
                if (webAreaText.D != 0 && webAreaText.z != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webAreaText.z != null) {
                        webAreaText.J = floatValue;
                        if (webAreaText.K) {
                            return;
                        }
                        webAreaText.K = true;
                        MainApp.N(webAreaText.m, webAreaText.L);
                    }
                }
            }
        });
        this.z.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebAreaText.10
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebAreaText webAreaText = WebAreaText.this;
                if (webAreaText.z == null) {
                    return;
                }
                webAreaText.z = null;
                webAreaText.D = 0;
                webAreaText.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebAreaText webAreaText = WebAreaText.this;
                if (webAreaText.z == null) {
                    return;
                }
                MainApp.N(webAreaText.m, new Runnable() { // from class: com.mycompany.app.wview.WebAreaText.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaText webAreaText2 = WebAreaText.this;
                        if (webAreaText2.z == null) {
                            return;
                        }
                        webAreaText2.z = null;
                        webAreaText2.D = 0;
                        webAreaText2.setVisibility(8);
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
        this.z.start();
    }

    public final void v() {
        if (!this.l) {
            return;
        }
        boolean z = MainApp.K1;
        this.x = z;
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
        this.r = paddingTop;
        this.s = width;
        this.t = height;
        if (i == -1234 && i2 == -1234) {
            i3 = (width - this.p) / 2;
            i4 = (height - this.q) / 2;
        } else {
            int i5 = i2 - paddingTop;
            i3 = (i - paddingLeft) - (this.p / 2);
            int i6 = this.q;
            int i7 = i6 * 2;
            if (i5 > i7) {
                i4 = (i5 - i7) - MainApp.G1;
            } else {
                i4 = (i6 / 2) + i5;
            }
        }
        int i8 = this.p;
        if (i3 + i8 > width) {
            i3 = width - i8;
        }
        int i9 = this.q;
        if (i4 + i9 > height) {
            i4 = height - i9;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i4 < 0) {
            i4 = 0;
        }
        this.u = i3;
        this.v = i4;
        setX(i3 + paddingLeft);
        setY(i4 + this.r);
    }
}
