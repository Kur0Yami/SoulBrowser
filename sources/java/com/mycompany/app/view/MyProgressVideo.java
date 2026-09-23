package com.mycompany.app.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.AudioManager;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefVideo;

/* loaded from: classes3.dex */
public class MyProgressVideo extends View {
    public static final /* synthetic */ int I = 0;
    public boolean A;
    public int B;
    public boolean C;
    public final Runnable D;
    public float E;
    public final Runnable F;
    public final Runnable G;
    public float H;

    /* renamed from: c, reason: collision with root package name */
    public int f18909c;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public Context j;
    public int k;
    public ProgVideoListener l;
    public AudioManager m;
    public int n;
    public Paint o;
    public Paint p;
    public int q;
    public int r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public EventReceiver x;
    public boolean y;
    public boolean z;

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            MyProgressVideo myProgressVideo = MyProgressVideo.this;
            if (myProgressVideo.m == null) {
                return;
            }
            MainApp.J(myProgressVideo.j, new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.EventReceiver.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyProgressVideo myProgressVideo2 = MyProgressVideo.this;
                    AudioManager audioManager = myProgressVideo2.m;
                    if (audioManager == null) {
                        return;
                    }
                    final int streamVolume = audioManager.getStreamVolume(3);
                    myProgressVideo2.post(new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.EventReceiver.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            MyProgressVideo myProgressVideo3 = MyProgressVideo.this;
                            int i = MyProgressVideo.I;
                            myProgressVideo3.f(streamVolume, false);
                            MyProgressVideo.this.invalidate();
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface ProgVideoListener {
        void a(int i, boolean z);

        void b(int i);
    }

    public MyProgressVideo(Context context) {
        super(context);
        this.D = new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.4
            @Override // java.lang.Runnable
            public final void run() {
                int a2;
                final MyProgressVideo myProgressVideo = MyProgressVideo.this;
                float f = myProgressVideo.E;
                if (!myProgressVideo.i) {
                    return;
                }
                int i = myProgressVideo.n;
                if (Float.compare(myProgressVideo.w, 0.0f) == 0) {
                    a2 = 0;
                } else {
                    a2 = myProgressVideo.a((int) (f / myProgressVideo.w));
                }
                if (i == a2) {
                    myProgressVideo.A = false;
                } else {
                    if (myProgressVideo.k != 2) {
                        myProgressVideo.f(myProgressVideo.n, true);
                        myProgressVideo.invalidate();
                        myProgressVideo.A = false;
                        return;
                    }
                    MainApp.J(myProgressVideo.j, new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyProgressVideo myProgressVideo2 = MyProgressVideo.this;
                            myProgressVideo2.f(myProgressVideo2.n, true);
                            if (!myProgressVideo2.i) {
                                return;
                            }
                            myProgressVideo2.post(myProgressVideo2.F);
                        }
                    });
                }
            }
        };
        this.F = new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.6
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressVideo myProgressVideo = MyProgressVideo.this;
                myProgressVideo.invalidate();
                myProgressVideo.A = false;
            }
        };
        this.G = new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.7
            @Override // java.lang.Runnable
            public final void run() {
                int a2;
                final MyProgressVideo myProgressVideo = MyProgressVideo.this;
                float f = myProgressVideo.H;
                if (!myProgressVideo.i) {
                    return;
                }
                int i = myProgressVideo.n;
                if (Float.compare(myProgressVideo.w, 0.0f) == 0) {
                    a2 = 0;
                } else {
                    a2 = myProgressVideo.a((int) (f / myProgressVideo.w));
                }
                if (i == a2) {
                    myProgressVideo.h();
                } else if (myProgressVideo.k != 2) {
                    myProgressVideo.f(myProgressVideo.n, true);
                    myProgressVideo.h();
                } else {
                    MainApp.J(myProgressVideo.j, new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyProgressVideo myProgressVideo2 = MyProgressVideo.this;
                            myProgressVideo2.f(myProgressVideo2.n, true);
                            myProgressVideo2.post(new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.8.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyProgressVideo myProgressVideo3 = MyProgressVideo.this;
                                    int i2 = MyProgressVideo.I;
                                    myProgressVideo3.h();
                                }
                            });
                        }
                    });
                }
            }
        };
    }

    private void setTouchMove(float f) {
        if (!this.A) {
            this.A = true;
            this.y = true;
            this.E = f;
            if (!this.i) {
                return;
            }
            post(this.D);
        }
    }

    private void setTouchUp(float f) {
        this.H = f;
        if (!this.i) {
            return;
        }
        post(this.G);
    }

    public final int a(int i) {
        this.n = i;
        if (i < 0) {
            this.n = 0;
        } else {
            int i2 = this.f;
            if (i > i2) {
                this.n = i2;
            }
        }
        int i3 = this.n;
        if (i3 == 0) {
            this.u = 0.0f;
        } else if (i3 == this.f) {
            this.u = this.t;
        } else {
            this.u = i3 * this.w;
        }
        float f = this.u;
        this.v = f;
        float f2 = this.s;
        if (f > f2) {
            this.v = f2;
        }
        return i3;
    }

    public final void b() {
        Context context = this.j;
        if (context == null) {
            return;
        }
        this.f = this.f18909c + 1;
        int round = Math.round(MainUtil.G(context, 2.0f));
        this.g = round;
        this.h = round * 2;
        Paint paint = new Paint();
        this.o = paint;
        paint.setAntiAlias(true);
        this.o.setStyle(Paint.Style.STROKE);
        this.o.setStrokeWidth(this.g);
        this.o.setColor(-1);
        Paint paint2 = new Paint();
        this.p = paint2;
        paint2.setAntiAlias(true);
        this.p.setStyle(Paint.Style.FILL);
        this.p.setColor(-1);
        f(this.n, false);
    }

    public final void c(Context context, int i, ProgVideoListener progVideoListener) {
        this.i = true;
        this.j = context;
        this.k = i;
        this.l = progVideoListener;
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.1
            @Override // java.lang.Runnable
            public final void run() {
                final MyProgressVideo myProgressVideo = MyProgressVideo.this;
                Context context2 = myProgressVideo.j;
                if (context2 == null) {
                    return;
                }
                int i2 = myProgressVideo.k;
                if (i2 == 1) {
                    myProgressVideo.f18909c = 100;
                    int D3 = MainUtil.D3(context2);
                    ProgVideoListener progVideoListener2 = myProgressVideo.l;
                    if (progVideoListener2 != null) {
                        progVideoListener2.b(D3);
                    }
                    if (PrefVideo.u) {
                        D3 = PrefVideo.v;
                    }
                    myProgressVideo.n = D3;
                    myProgressVideo.b();
                    return;
                }
                if (i2 == 2) {
                    AudioManager audioManager = (AudioManager) context2.getSystemService("audio");
                    myProgressVideo.m = audioManager;
                    if (audioManager != null) {
                        myProgressVideo.f18909c = audioManager.getStreamMaxVolume(3);
                        myProgressVideo.n = audioManager.getStreamVolume(3);
                    }
                    myProgressVideo.post(new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyProgressVideo myProgressVideo2 = MyProgressVideo.this;
                            if (myProgressVideo2.j != null && myProgressVideo2.x == null) {
                                myProgressVideo2.x = new EventReceiver();
                                IntentFilter intentFilter = new IntentFilter();
                                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                                ContextCompat.f(myProgressVideo2.j, myProgressVideo2.x, intentFilter, null, 4);
                            }
                            myProgressVideo2.b();
                        }
                    });
                    return;
                }
                myProgressVideo.f18909c = 1000;
                myProgressVideo.n = 0;
                myProgressVideo.b();
            }
        });
    }

    public final void d(int i, int i2) {
        this.q = i;
        this.r = i2;
        if (this.k == 3) {
            this.s = i - this.h;
        } else {
            this.s = i2 - this.h;
        }
        if (this.f < 2) {
            this.f = 2;
        }
        float f = this.s;
        float f2 = f / (this.f - 1);
        this.w = f2;
        this.t = f + f2;
        a(this.n);
    }

    public final void e() {
        if (this.y) {
            this.z = true;
            return;
        }
        PrefVideo r = PrefVideo.r(getContext());
        r.l("mUserBright3", PrefVideo.u);
        r.n(PrefVideo.v, "mBright3");
        r.a();
    }

    public final void f(int i, boolean z) {
        AudioManager audioManager;
        int a2 = a(i);
        int i2 = this.f18909c;
        if (a2 > i2) {
            a2 = i2;
        }
        int i3 = this.k;
        if (z) {
            int i4 = 0;
            if (i3 == 1) {
                if (a2 >= 0) {
                    i4 = 100;
                    if (a2 <= 100) {
                        i4 = a2;
                    }
                }
                PrefVideo.u = true;
                PrefVideo.v = i4;
                e();
            } else if (i3 == 2 && (audioManager = this.m) != null) {
                audioManager.setStreamVolume(3, a2, 0);
            }
        }
        this.B = a2;
        this.C = z;
        if (this.l == null) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.view.MyProgressVideo.3
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressVideo myProgressVideo = MyProgressVideo.this;
                int i5 = myProgressVideo.B;
                boolean z2 = myProgressVideo.C;
                ProgVideoListener progVideoListener = myProgressVideo.l;
                if (progVideoListener != null) {
                    progVideoListener.a(i5, z2);
                }
            }
        });
    }

    public final void g(MotionEvent motionEvent, float f) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return;
                    }
                }
            }
            setTouchUp(f);
            return;
        }
        setTouchMove(f);
    }

    public float getMaxSize() {
        return this.t;
    }

    public int getProgress() {
        int i = this.n;
        if (i < 0) {
            return 0;
        }
        int i2 = this.f18909c;
        if (i > i2) {
            return i2;
        }
        return i;
    }

    public float getSize() {
        return this.u;
    }

    public final void h() {
        invalidate();
        this.y = false;
        if (this.z) {
            this.z = false;
            e();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.i) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.i && this.o != null) {
            canvas.drawColor(-1593835520);
            canvas.drawRect(0.0f, 0.0f, this.q, this.r, this.o);
            Paint paint = this.p;
            if (paint == null) {
                return;
            }
            if (this.k == 3) {
                float f = this.g;
                canvas.drawRect(f, f, f + this.v, this.r - r14, paint);
            } else {
                int i = this.g;
                float f2 = this.r - i;
                canvas.drawRect(i, f2 - this.v, this.q - i, f2, paint);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        d(i, i2);
    }
}
