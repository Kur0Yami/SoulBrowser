package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.view.MyFadeLinear;
import com.mycompany.app.view.MyProgressVideo;
import com.mycompany.app.view.MyTextView;

/* loaded from: classes3.dex */
public class WebVideoProgress extends MyFadeLinear {
    public ImageView A;
    public MyTextView B;
    public MyProgressVideo C;
    public float D;
    public long E;
    public float F;
    public Paint G;
    public RectF H;
    public int I;
    public int J;
    public int K;
    public boolean x;
    public int y;
    public WebVidProgListener z;

    /* loaded from: classes3.dex */
    public interface WebVidProgListener {
        void a(int i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        if (!this.x) {
            return;
        }
        Paint paint = this.G;
        if (paint != null && (rectF = this.H) != null) {
            float f = MainApp.E1;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.mycompany.app.view.MyFadeLinear
    public final void f() {
        MyProgressVideo.EventReceiver eventReceiver;
        this.x = false;
        super.f();
        MyProgressVideo myProgressVideo = this.C;
        if (myProgressVideo != null) {
            myProgressVideo.i = false;
            Context context = myProgressVideo.j;
            if (context != null && (eventReceiver = myProgressVideo.x) != null) {
                context.unregisterReceiver(eventReceiver);
                myProgressVideo.x = null;
            }
            myProgressVideo.j = null;
            myProgressVideo.l = null;
            myProgressVideo.m = null;
            myProgressVideo.o = null;
            myProgressVideo.p = null;
            this.C = null;
        }
        this.z = null;
        this.A = null;
        this.B = null;
        this.G = null;
        this.H = null;
    }

    public int getProgress() {
        MyProgressVideo myProgressVideo = this.C;
        if (myProgressVideo == null) {
            return 0;
        }
        return myProgressVideo.getProgress();
    }

    public final void h(int i, int i2) {
        int min;
        ViewGroup.LayoutParams layoutParams;
        if (i != 0 && i2 != 0 && (min = Math.min(i, i2) - (MainApp.i1 * 2)) > 0) {
            this.I = MainApp.f1 + min;
            MyProgressVideo myProgressVideo = this.C;
            if (myProgressVideo != null && (layoutParams = myProgressVideo.getLayoutParams()) != null) {
                layoutParams.width = min;
                j(getWidth(), getHeight());
            }
        }
    }

    public final void i(int i, WebVidProgListener webVidProgListener) {
        this.x = true;
        this.y = i;
        this.z = webVidProgListener;
        MyProgressVideo myProgressVideo = this.C;
        if (myProgressVideo == null) {
            return;
        }
        this.J = -123456;
        myProgressVideo.c(getContext(), this.y, new MyProgressVideo.ProgVideoListener() { // from class: com.mycompany.app.web.WebVideoProgress.1
            @Override // com.mycompany.app.view.MyProgressVideo.ProgVideoListener
            public final void a(int i2, boolean z) {
                boolean z2;
                WebVideoProgress webVideoProgress = WebVideoProgress.this;
                ImageView imageView = webVideoProgress.A;
                if (imageView != null) {
                    if (i2 != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    imageView.setActivated(z2);
                }
                MyTextView myTextView = webVideoProgress.B;
                if (myTextView != null) {
                    if (webVideoProgress.y == 3) {
                        myTextView.setText(MainUtil.q2(webVideoProgress.E, (i2 / 1000.0f) * ((float) r2)));
                    } else {
                        myTextView.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i2);
                    }
                }
                if (z) {
                    webVideoProgress.K = i2;
                    if (webVideoProgress.z == null) {
                        return;
                    }
                    webVideoProgress.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoProgress.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebVideoProgress webVideoProgress2 = WebVideoProgress.this;
                            int i3 = webVideoProgress2.K;
                            WebVidProgListener webVidProgListener2 = webVideoProgress2.z;
                            if (webVidProgListener2 != null) {
                                webVidProgListener2.a(i3);
                            }
                        }
                    });
                }
            }

            @Override // com.mycompany.app.view.MyProgressVideo.ProgVideoListener
            public final void b(int i2) {
                WebVideoProgress.this.J = i2;
            }
        });
        Paint paint = new Paint();
        this.G = paint;
        paint.setAntiAlias(true);
        this.G.setStyle(Paint.Style.FILL);
        this.G.setColor(1627389952);
        this.H = new RectF();
    }

    @Override // com.mycompany.app.view.MyFadeLinear, android.view.View
    public final void invalidate() {
        if (!this.x) {
            return;
        }
        super.invalidate();
    }

    public final void j(int i, int i2) {
        RectF rectF = this.H;
        if (rectF == null) {
            return;
        }
        int i3 = this.I;
        if (i3 > 0) {
            rectF.set((i - i3) / 2, 0.0f, r5 + i3, i2);
        } else {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }

    public final float k(MotionEvent motionEvent, float f) {
        float f2;
        if (this.C != null) {
            setVisibility(0);
            if (Float.compare(this.D, -1.0f) == 0) {
                this.D = this.C.getSize();
                return -1.0f;
            }
            if (this.y == 3) {
                f2 = this.F + f;
            } else {
                f2 = this.D - f;
            }
            this.C.g(motionEvent, f2);
            if (f2 < 0.0f) {
                this.D = 0.0f;
                if (this.y == 3) {
                    this.F = 0.0f;
                    return -1.0f;
                }
            } else if (f2 > this.C.getMaxSize()) {
                float maxSize = this.C.getMaxSize();
                this.D = maxSize;
                if (this.y == 3) {
                    this.F = maxSize;
                }
            } else {
                return this.D;
            }
        }
        return -1.0f;
    }

    public final void l(ImageView imageView, MyTextView myTextView, MyProgressVideo myProgressVideo) {
        this.A = imageView;
        this.B = myTextView;
        this.C = myProgressVideo;
    }

    public final void m() {
        int i;
        if (this.y == 1) {
            if (PrefVideo.u) {
                i = PrefVideo.v;
            } else {
                if (this.J == -123456) {
                    this.J = MainUtil.D3(getContext());
                }
                i = this.J;
            }
            setProgress(i);
        }
        n(0L, 0L);
    }

    public final void n(long j, long j2) {
        ViewGroup.LayoutParams layoutParams;
        if (this.C != null) {
            setVisibility(0);
            this.D = -1.0f;
            if (this.y == 3) {
                if (j2 > j) {
                    j2 = j;
                }
                this.E = j;
                MyProgressVideo myProgressVideo = this.C;
                int round = Math.round((((float) j2) / ((float) j)) * 1000.0f);
                if (myProgressVideo.q == 0 && (layoutParams = myProgressVideo.getLayoutParams()) != null) {
                    myProgressVideo.d(layoutParams.width, myProgressVideo.getHeight());
                }
                myProgressVideo.a(round);
                this.F = myProgressVideo.u;
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        j(i, i2);
    }

    public void setProgress(int i) {
        MyProgressVideo myProgressVideo = this.C;
        if (myProgressVideo == null) {
            return;
        }
        int a2 = myProgressVideo.a(i);
        this.B.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + a2);
    }
}
