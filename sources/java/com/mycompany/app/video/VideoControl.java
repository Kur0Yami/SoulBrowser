package com.mycompany.app.video;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyFadeRelative;
import com.mycompany.app.view.MyTextView;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class VideoControl extends MyFadeRelative {
    public Window A;
    public ControlListener B;
    public int C;
    public boolean D;
    public View E;
    public AppCompatTextView F;
    public MyButtonImage G;
    public LinearLayout H;
    public MyButtonImage I;
    public MyButtonImage J;
    public MyButtonImage K;
    public MyButtonImage L;
    public MyButtonImage M;
    public MyButtonImage N;
    public MyButtonImage O;
    public MyButtonCheck P;
    public MyAreaView Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public RelativeLayout V;
    public MyButtonImage W;
    public MyButtonImage a0;
    public MyButtonImage b0;
    public MyButtonImage c0;
    public MyButtonImage d0;
    public MyButtonImage e0;
    public MyButtonImage f0;
    public MyTextView g0;
    public MyButtonImage h0;
    public MyTextView i0;
    public SeekBar j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public boolean m0;
    public boolean n0;
    public EventHandler o0;
    public boolean p0;
    public WebView q0;
    public boolean r0;
    public FrameLayout s0;
    public FrameLayout t0;
    public final SeekBar.OnSeekBarChangeListener u0;
    public VideoActivity y;
    public MainActivity z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.video.VideoControl$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass14 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.video.VideoControl$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.video.VideoControl$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface ControlListener {
        void A(int i);

        void B();

        void D();

        void E(boolean z);

        boolean G();

        void H();

        void J();

        void L();

        String N();

        void O();

        boolean a();

        void b(boolean z);

        void c();

        void controlAudio(View view);

        void controlRate(View view);

        void controlRotate(View view);

        void controlSize(View view);

        void controlSubIcon(View view);

        void d();

        int e();

        int f();

        boolean g();

        void h(int i);

        void i();

        void j();

        void l();

        int u();

        void z(boolean z);
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18474a;

        public EventHandler(VideoControl videoControl) {
            super(Looper.getMainLooper());
            this.f18474a = new WeakReference(videoControl);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            VideoControl videoControl = (VideoControl) this.f18474a.get();
            if (videoControl == null || message.what != 0) {
                return;
            }
            videoControl.E(true);
        }
    }

    public VideoControl(VideoActivity videoActivity) {
        super(videoActivity);
        this.u0 = new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.video.VideoControl.28
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    VideoControl videoControl = VideoControl.this;
                    if (videoControl.B == null || !videoControl.f()) {
                        return;
                    }
                    videoControl.t(videoControl.B.f(), seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                VideoControl videoControl = VideoControl.this;
                if (videoControl.B == null || !videoControl.f()) {
                    return;
                }
                videoControl.n0 = true;
                videoControl.m0 = true;
                videoControl.setIconsClickable(false);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                VideoControl videoControl = VideoControl.this;
                if (videoControl.B == null || !videoControl.f()) {
                    return;
                }
                videoControl.D();
                videoControl.C(false);
            }
        };
        this.y = videoActivity;
        setAnimTime(HttpStatusCodes.STATUS_CODE_OK);
        setTouchable(true);
        setAutoHide(true);
    }

    private int getNaviHeight() {
        if (this.z != null && this.A != null && !r()) {
            if (MainConst.e) {
                return this.C;
            }
            return MainUtil.P2(this.y, this.A, this.z.a0());
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
    public static void j(VideoControl videoControl) {
        AppCompatTextView appCompatTextView = videoControl.F;
        if (appCompatTextView == 0) {
            return;
        }
        appCompatTextView.setOnClickListener(new Object());
        videoControl.G.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                controlListener.d();
                videoControl2.o(true);
            }
        });
        videoControl.H.setOnClickListener(new Object());
        videoControl.x();
        videoControl.I.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.controlRotate(view);
                videoControl2.C(true);
            }
        });
        videoControl.J.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.controlSize(view);
                videoControl2.C(true);
            }
        });
        videoControl.v();
        videoControl.K.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.B();
                videoControl2.C(true);
            }
        });
        int i = Build.VERSION.SDK_INT;
        videoControl.L.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.controlRate(view);
                videoControl2.C(true);
            }
        });
        videoControl.M.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.l();
            }
        });
        if (i >= 26) {
            videoControl.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoControl videoControl2 = VideoControl.this;
                    ControlListener controlListener = videoControl2.B;
                    if (controlListener == null) {
                        return;
                    }
                    controlListener.O();
                    videoControl2.o(true);
                }
            });
        } else {
            videoControl.N.setVisibility(8);
        }
        videoControl.O.setNoti(PrefVideo.x);
        videoControl.O.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                if (videoControl2.B == null) {
                    return;
                }
                if (PrefVideo.x) {
                    PrefVideo.x = false;
                    PrefSet.d(13, videoControl2.y, "mNotiSet2", false);
                    MyButtonImage myButtonImage = videoControl2.O;
                    if (myButtonImage != null) {
                        myButtonImage.setNoti(false);
                    }
                }
                videoControl2.B.J();
                videoControl2.o(true);
            }
        });
        videoControl.P.setCheckArea(true);
        videoControl.P.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                if (videoControl2.B != null) {
                    videoControl2.m0 = true;
                    if (videoControl2.P == null) {
                        return;
                    }
                    if (!videoControl2.p()) {
                        videoControl2.setTouchLock(true);
                        videoControl2.C(true);
                    } else if (PrefSecret.D == 0) {
                        videoControl2.setTouchLock(false);
                        videoControl2.C(true);
                    } else {
                        videoControl2.B.H();
                        videoControl2.o(true);
                    }
                }
            }
        });
        videoControl.V.setOnClickListener(new Object());
        videoControl.W.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                if (videoControl2.D) {
                    VideoControl.k(videoControl2);
                } else {
                    VideoControl.l(videoControl2);
                }
            }
        });
        videoControl.a0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                if (controlListener.G()) {
                    videoControl2.B.D();
                } else if (videoControl2.B.g()) {
                    videoControl2.B.c();
                } else {
                    videoControl2.B.j();
                }
                videoControl2.C(true);
            }
        });
        videoControl.b0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                if (videoControl2.D) {
                    VideoControl.l(videoControl2);
                } else {
                    VideoControl.k(videoControl2);
                }
            }
        });
        videoControl.c0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                if (videoControl2.B == null) {
                    return;
                }
                videoControl2.m0 = true;
                MyButtonImage myButtonImage = videoControl2.c0;
                if (myButtonImage != null && myButtonImage.z != null && PrefVideo.z) {
                    PrefVideo.z = false;
                    PrefSet.d(13, videoControl2.y, "mNotiAudio", false);
                    videoControl2.c0.setNoti(false);
                }
                videoControl2.B.controlAudio(view);
                videoControl2.C(true);
            }
        });
        videoControl.d0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                videoControl2.m0 = true;
                controlListener.controlSubIcon(view);
                videoControl2.C(true);
            }
        });
        videoControl.setIconDown(videoControl.p0);
        videoControl.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                controlListener.i();
                videoControl2.o(true);
            }
        });
        videoControl.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                controlListener.E(true);
                videoControl2.o(true);
            }
        });
        videoControl.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoControl.22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoControl videoControl2 = VideoControl.this;
                ControlListener controlListener = videoControl2.B;
                if (controlListener == null) {
                    return;
                }
                controlListener.E(false);
                videoControl2.o(true);
            }
        });
        videoControl.j0.setSplitTrack(false);
        videoControl.j0.setMax(1000);
        videoControl.j0.setOnSeekBarChangeListener(videoControl.u0);
        videoControl.j0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.video.VideoControl.23
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoControl.this.q();
            }
        });
        videoControl.setIconShow(true);
        videoControl.o0 = new EventHandler(videoControl);
    }

    public static void k(VideoControl videoControl) {
        ControlListener controlListener = videoControl.B;
        if (controlListener != null) {
            videoControl.m0 = true;
            int f = controlListener.f();
            if (f == 0) {
                return;
            }
            int e = videoControl.B.e() + 10000;
            if (e <= f) {
                f = e;
            }
            videoControl.B.h(f);
            videoControl.C(true);
        }
    }

    public static void l(VideoControl videoControl) {
        ControlListener controlListener = videoControl.B;
        if (controlListener != null) {
            videoControl.m0 = true;
            if (controlListener.f() == 0) {
                return;
            }
            int e = videoControl.B.e() - 10000;
            if (e < 0) {
                e = 0;
            }
            videoControl.B.h(e);
            videoControl.C(true);
        }
    }

    private void setIconShow(boolean z) {
        if (this.G == null) {
            return;
        }
        int i = 4;
        if (z) {
            WebView webView = this.q0;
            if (webView != null) {
                B(webView, this.r0);
                return;
            }
            this.F.setVisibility(0);
            this.G.setVisibility(0);
            this.H.setVisibility(0);
            this.I.setVisibility(0);
            this.J.setVisibility(0);
            this.K.setVisibility(0);
            this.L.setVisibility(0);
            this.M.setVisibility(0);
            this.O.setVisibility(0);
            this.P.setVisibility(0);
            this.W.setVisibility(0);
            this.a0.setVisibility(0);
            this.b0.setVisibility(0);
            this.c0.setVisibility(0);
            this.d0.setVisibility(0);
            this.f0.setVisibility(0);
            this.g0.setVisibility(0);
            this.h0.setVisibility(0);
            this.i0.setVisibility(0);
            MyAreaView myAreaView = this.Q;
            if (myAreaView.a()) {
                i = 0;
            }
            myAreaView.setVisibility(i);
            this.V.setVisibility(0);
            return;
        }
        this.F.setVisibility(4);
        this.G.setVisibility(8);
        this.H.setVisibility(4);
        this.P.setVisibility(8);
        this.W.setVisibility(8);
        this.a0.setVisibility(8);
        this.b0.setVisibility(8);
        this.c0.setVisibility(8);
        this.d0.setVisibility(8);
        this.f0.setVisibility(8);
        this.g0.setVisibility(8);
        this.h0.setVisibility(8);
        this.i0.setVisibility(8);
        this.Q.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconsClickable(boolean z) {
        MyButtonImage myButtonImage = this.G;
        if (myButtonImage == null) {
            return;
        }
        myButtonImage.setClickable(z);
        this.I.setClickable(z);
        this.J.setClickable(z);
        this.K.setClickable(z);
        this.L.setClickable(z);
        this.M.setClickable(z);
        this.N.setClickable(z);
        this.O.setClickable(z);
        this.P.setClickable(z);
        this.W.setClickable(z);
        this.a0.setClickable(z);
        this.b0.setClickable(z);
        this.c0.setClickable(z);
        this.d0.setClickable(z);
        this.e0.setClickable(z);
    }

    public final void A() {
        if (this.z != null && this.A != null && this.E != null) {
            int naviHeight = getNaviHeight();
            if (naviHeight > 0) {
                this.E.setVisibility(0);
                ViewGroup.LayoutParams layoutParams = this.E.getLayoutParams();
                if (layoutParams != null && layoutParams.height != naviHeight) {
                    layoutParams.height = naviHeight;
                } else {
                    return;
                }
            } else {
                this.E.setVisibility(4);
                ViewGroup.LayoutParams layoutParams2 = this.E.getLayoutParams();
                if (layoutParams2 != null && layoutParams2.height != 0) {
                    layoutParams2.height = 0;
                } else {
                    return;
                }
            }
            post(new Runnable() { // from class: com.mycompany.app.video.VideoControl.27
                @Override // java.lang.Runnable
                public final void run() {
                    View view = VideoControl.this.E;
                    if (view != null) {
                        view.requestLayout();
                    }
                }
            });
        }
    }

    public final void B(WebView webView, boolean z) {
        if (this.F == null) {
            return;
        }
        this.q0 = webView;
        this.r0 = z;
        u();
        this.H.setVisibility(0);
        this.W.setVisibility(8);
        this.a0.setVisibility(8);
        this.b0.setVisibility(8);
        this.c0.setVisibility(8);
        this.d0.setVisibility(8);
        this.e0.setVisibility(8);
        this.Q.setVisibility(8);
        this.V.setVisibility(8);
        if (this.r0) {
            this.F.setVisibility(4);
            this.G.setVisibility(0);
            this.I.setVisibility(0);
            this.J.setVisibility(8);
            this.K.setVisibility(0);
            this.L.setVisibility(0);
            this.M.setVisibility(8);
            this.O.setVisibility(8);
            this.P.setVisibility(8);
            this.f0.setVisibility(8);
            this.g0.setVisibility(8);
            this.h0.setVisibility(8);
            this.i0.setVisibility(8);
            return;
        }
        this.F.setVisibility(0);
        this.G.setVisibility(0);
        this.I.setVisibility(0);
        this.J.setVisibility(0);
        this.K.setVisibility(0);
        this.L.setVisibility(0);
        this.M.setVisibility(0);
        this.O.setVisibility(0);
        this.P.setVisibility(0);
        this.f0.setVisibility(0);
        this.g0.setVisibility(0);
        this.h0.setVisibility(0);
        this.i0.setVisibility(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(boolean r7) {
        /*
            r6 = this;
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r6.f()
            r1 = 0
            if (r0 != 0) goto Lf
            r6.setIconsPressed(r1)
        Lf:
            boolean r0 = r6.r()
            if (r0 == 0) goto L18
            int r0 = r6.R
            goto L1a
        L18:
            int r0 = r6.S
        L1a:
            int r2 = r6.T
            r3 = 1
            r4 = 4
            if (r2 == r0) goto L39
            r6.T = r0
            com.mycompany.app.view.MyAreaView r2 = r6.Q
            android.view.ViewGroup$LayoutParams r2 = r2.getLayoutParams()
            android.widget.RelativeLayout$LayoutParams r2 = (android.widget.RelativeLayout.LayoutParams) r2
            if (r2 == 0) goto L39
            r2.topMargin = r0
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            r0.requestLayout()
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            r0.setSkipDraw(r3)
            goto L41
        L39:
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            boolean r0 = r0.a()
            if (r0 == 0) goto L70
        L41:
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            int r2 = r6.U
            com.mycompany.app.view.MyButtonImage r5 = r6.f0
            int r5 = r5.getTop()
            r0.e(r2, r5)
            boolean r0 = r6.p()
            if (r0 == 0) goto L5a
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            r0.setVisibility(r4)
            goto L5f
        L5a:
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            r0.setVisibility(r1)
        L5f:
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            boolean r1 = r0.A
            if (r1 == 0) goto L75
            com.mycompany.app.video.VideoControl$24 r1 = new com.mycompany.app.video.VideoControl$24
            r1.<init>()
            r4 = 100
            r0.postDelayed(r1, r4)
            goto L75
        L70:
            com.mycompany.app.view.MyAreaView r0 = r6.Q
            r0.setVisibility(r4)
        L75:
            r6.i(r3)
            r6.E(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.video.VideoControl.C(boolean):void");
    }

    public final void D() {
        if (this.j0 == null || !this.n0) {
            return;
        }
        t(this.B.f(), this.j0.getProgress());
        setIconsClickable(true);
        this.n0 = false;
    }

    public final void E(boolean z) {
        EventHandler eventHandler;
        MyTextView myTextView;
        if (this.B != null && (eventHandler = this.o0) != null) {
            eventHandler.removeMessages(0);
            if (!z) {
                w();
                this.o0.sendEmptyMessageDelayed(0, 1000L);
                return;
            }
            if (f() && !this.n0) {
                if (!isEnabled()) {
                    this.o0.sendEmptyMessageDelayed(0, 1000L);
                    return;
                }
                this.F.setText(this.B.N());
                x();
                v();
                w();
                if (this.B != null && (myTextView = this.g0) != null) {
                    if (PrefVideo.u) {
                        myTextView.setText(PrefVideo.v + "%");
                    } else {
                        myTextView.setText("S");
                    }
                    int u = this.B.u();
                    this.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + u);
                    if (u == 0) {
                        this.h0.setImageResource(R.drawable.outline_volume_off_white_24);
                    } else {
                        this.h0.setImageResource(R.drawable.outline_volume_up_white_24);
                    }
                }
                int f = this.B.f();
                int e = this.B.e();
                this.o0.sendEmptyMessageDelayed(0, 1000 - (e % 1000));
                if (f == 0) {
                    this.j0.setMax(0);
                    this.j0.setProgress(0);
                    this.k0.setText("00:00");
                    this.l0.setText("00:00");
                } else if (f < 1000) {
                    this.j0.setMax(f);
                    if (e > f) {
                        this.j0.setProgress(f);
                    } else {
                        this.j0.setProgress(e);
                    }
                    this.k0.setText("00:01");
                    this.l0.setText("00:00");
                } else {
                    this.j0.setMax(1000);
                    if (e > f) {
                        this.j0.setProgress(1000);
                    } else {
                        this.j0.setProgress(Math.round((e * 1000.0f) / f));
                    }
                    this.k0.setText(n(f));
                    this.l0.setText(n(e));
                }
                if (!this.B.g()) {
                    this.B.A(e);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ControlListener controlListener = this.B;
        if (controlListener != null && controlListener.a()) {
            setIconsPressed(false);
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.view.MyFadeRelative
    public final void g() {
        super.g();
        EventHandler eventHandler = this.o0;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.o0 = null;
        }
        MyButtonImage myButtonImage = this.G;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.G = null;
        }
        MyButtonImage myButtonImage2 = this.I;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.I = null;
        }
        MyButtonImage myButtonImage3 = this.J;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.J = null;
        }
        MyButtonImage myButtonImage4 = this.K;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.K = null;
        }
        MyButtonImage myButtonImage5 = this.L;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.L = null;
        }
        MyButtonImage myButtonImage6 = this.M;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.M = null;
        }
        MyButtonImage myButtonImage7 = this.N;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.N = null;
        }
        MyButtonImage myButtonImage8 = this.O;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.O = null;
        }
        MyButtonCheck myButtonCheck = this.P;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.P = null;
        }
        MyAreaView myAreaView = this.Q;
        if (myAreaView != null) {
            myAreaView.c();
            this.Q = null;
        }
        MyButtonImage myButtonImage9 = this.W;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.W = null;
        }
        MyButtonImage myButtonImage10 = this.a0;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.a0 = null;
        }
        MyButtonImage myButtonImage11 = this.b0;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.b0 = null;
        }
        MyButtonImage myButtonImage12 = this.c0;
        if (myButtonImage12 != null) {
            myButtonImage12.j();
            this.c0 = null;
        }
        MyButtonImage myButtonImage13 = this.d0;
        if (myButtonImage13 != null) {
            myButtonImage13.j();
            this.d0 = null;
        }
        MyButtonImage myButtonImage14 = this.e0;
        if (myButtonImage14 != null) {
            myButtonImage14.j();
            this.e0 = null;
        }
        MyButtonImage myButtonImage15 = this.f0;
        if (myButtonImage15 != null) {
            myButtonImage15.j();
            this.f0 = null;
        }
        MyButtonImage myButtonImage16 = this.h0;
        if (myButtonImage16 != null) {
            myButtonImage16.j();
            this.h0 = null;
        }
        this.y = null;
        this.z = null;
        this.B = null;
        this.E = null;
        this.F = null;
        this.H = null;
        this.g0 = null;
        this.i0 = null;
        this.V = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.q0 = null;
        this.s0 = null;
        this.t0 = null;
    }

    public FrameLayout getCastCtrl() {
        return this.t0;
    }

    public FrameLayout getCastIcon() {
        return this.s0;
    }

    public final String n(long j) {
        if (this.B == null) {
            return null;
        }
        return MainUtil.q2(r0.f(), j);
    }

    public final void o(boolean z) {
        if (this.o0 == null) {
            return;
        }
        D();
        d(z);
        this.o0.removeMessages(0);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!MainConst.e) {
            A();
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!MainConst.e) {
            A();
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (!MainConst.e && i == 0) {
            A();
        }
    }

    public final boolean p() {
        MyButtonCheck myButtonCheck = this.P;
        if (myButtonCheck == null) {
            return false;
        }
        return myButtonCheck.D;
    }

    public final boolean q() {
        AppCompatTextView appCompatTextView = this.F;
        if (appCompatTextView != null) {
            if (!appCompatTextView.isPressed() && !this.G.isPressed() && !this.H.isPressed() && !this.I.isPressed() && !this.J.isPressed() && !this.K.isPressed() && !this.L.isPressed() && !this.M.isPressed() && !this.N.isPressed() && !this.O.isPressed() && !this.P.isPressed() && !this.V.isPressed() && !this.W.isPressed() && !this.a0.isPressed() && !this.b0.isPressed() && !this.c0.isPressed() && !this.d0.isPressed() && !this.e0.isPressed()) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean r() {
        MainActivity mainActivity = this.z;
        if (mainActivity == null) {
            return MainUtil.N5(this.y);
        }
        return mainActivity.h0();
    }

    public final boolean s(MotionEvent motionEvent) {
        if (!this.r0 && p()) {
            if (motionEvent != null) {
                this.P.onTouchEvent(motionEvent);
                return true;
            }
            return true;
        }
        return false;
    }

    public void setIconClicked(boolean z) {
        this.m0 = z;
    }

    public void setIconDown(boolean z) {
        int i = 0;
        if (this.r0) {
            z = false;
        }
        this.p0 = z;
        if (this.e0 == null) {
            return;
        }
        if (p()) {
            this.e0.setVisibility(8);
            return;
        }
        MyButtonImage myButtonImage = this.e0;
        if (!this.p0) {
            i = 8;
        }
        myButtonImage.setVisibility(i);
    }

    public void setIconsPressed(boolean z) {
        AppCompatTextView appCompatTextView = this.F;
        if (appCompatTextView == null) {
            return;
        }
        this.m0 = false;
        appCompatTextView.setPressed(z);
        this.G.setPressed(z);
        this.H.setPressed(z);
        this.I.setPressed(z);
        this.J.setPressed(z);
        this.K.setPressed(z);
        this.L.setPressed(z);
        this.M.setPressed(z);
        this.N.setPressed(z);
        this.O.setPressed(z);
        this.P.setPressed(z);
        this.V.setPressed(z);
        this.W.setPressed(z);
        this.a0.setPressed(z);
        this.b0.setPressed(z);
        this.c0.setPressed(z);
        this.d0.setPressed(z);
        this.e0.setPressed(z);
        this.j0.setPressed(z);
    }

    public void setNaviHeight(int i) {
        if (i == 0 || r()) {
            return;
        }
        this.C = i;
    }

    public void setRtl(boolean z) {
        this.D = z;
    }

    public void setTouchLock(boolean z) {
        if (this.P != null) {
            int i = 0;
            if (this.r0) {
                z = false;
            }
            if (z != p()) {
                if (z) {
                    setIconShow(false);
                    this.P.setVisibility(0);
                    this.P.q(true, true);
                    this.e0.setVisibility(8);
                    MainUtil.e8(this.y, R.string.touch_locked);
                } else {
                    setIconShow(true);
                    this.P.setVisibility(0);
                    this.P.q(false, true);
                    MyButtonImage myButtonImage = this.e0;
                    if (!this.p0) {
                        i = 8;
                    }
                    myButtonImage.setVisibility(i);
                    MainUtil.e8(this.y, R.string.touch_unlocked);
                }
                if (this.B == null) {
                    return;
                }
                post(new Runnable() { // from class: com.mycompany.app.video.VideoControl.26
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoControl videoControl = VideoControl.this;
                        ControlListener controlListener = videoControl.B;
                        if (controlListener == null) {
                            return;
                        }
                        controlListener.z(videoControl.p());
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            setIconsPressed(false);
        }
        super.setVisibility(i);
    }

    public final void t(int i, int i2) {
        SeekBar seekBar = this.j0;
        if (seekBar == null) {
            return;
        }
        if (i == 0) {
            w();
            this.j0.setMax(0);
            this.k0.setText("00:00");
            this.l0.setText("00:00");
            return;
        }
        if (i < 1000) {
            seekBar.setMax(1);
            this.B.h(i2);
            this.k0.setText("00:01");
            this.l0.setText("00:00");
            this.B.A(i2);
            return;
        }
        seekBar.setMax(1000);
        int round = Math.round((i2 / 1000.0f) * i);
        this.B.h(round);
        this.k0.setText(n(i));
        this.l0.setText(n(round));
        this.B.A(round);
    }

    public final void u() {
        int i;
        int i2;
        LinearLayout linearLayout = this.H;
        if (linearLayout != null) {
            boolean z = this.r0;
            if (z) {
                i = MainApp.E1;
            } else {
                i = MainApp.G1;
            }
            if (z) {
                i2 = MainApp.g1 + i;
            } else {
                i2 = 0;
            }
            if (linearLayout.getPaddingTop() != i) {
                this.H.setPaddingRelative(0, i, MainApp.G1, 0);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.G.getLayoutParams();
            if (layoutParams == null || layoutParams.topMargin == i2) {
                return;
            }
            layoutParams.topMargin = i2;
            this.G.requestLayout();
        }
    }

    public final void v() {
        MyButtonImage myButtonImage = this.K;
        if (myButtonImage == null) {
            return;
        }
        if (PrefVideo.p) {
            myButtonImage.setImageResource(R.drawable.outline_repeat_white_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_arrow_right_alt_white_24);
        }
    }

    public final void w() {
        ControlListener controlListener = this.B;
        if (controlListener == null || this.a0 == null) {
            return;
        }
        if (controlListener.G()) {
            this.a0.setImageResource(R.drawable.outline_error_white_24);
        } else if (this.B.g()) {
            this.a0.setImageResource(R.drawable.baseline_pause_white_24);
        } else {
            this.a0.setImageResource(R.drawable.baseline_play_arrow_white_24);
        }
    }

    public final void x() {
        MyButtonImage myButtonImage = this.I;
        if (myButtonImage == null) {
            return;
        }
        int i = PrefVideo.o;
        if (i == 1) {
            myButtonImage.setImageResource(R.drawable.outline_screen_lock_portrait_white_24);
        } else if (i == 2) {
            myButtonImage.setImageResource(R.drawable.outline_screen_lock_landscape_white_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_screen_rotation_white_24);
        }
    }

    public final void y(MainActivity mainActivity, Window window, boolean z, boolean z2, ControlListener controlListener) {
        int i;
        this.z = mainActivity;
        this.A = window;
        this.B = controlListener;
        this.D = z;
        this.r0 = z2;
        setListener(new MyFadeListener() { // from class: com.mycompany.app.video.VideoControl.1
            @Override // com.mycompany.app.view.MyFadeListener
            public final void a(boolean z3) {
                if (!z3) {
                    VideoControl.this.setIconsPressed(false);
                }
            }

            @Override // com.mycompany.app.view.MyFadeListener
            public final void b(boolean z3, boolean z4) {
                ControlListener controlListener2 = VideoControl.this.B;
                if (controlListener2 != null) {
                    controlListener2.b(z3);
                }
            }
        });
        MainActivity mainActivity2 = this.z;
        if (mainActivity2 == null) {
            return;
        }
        this.R = (int) MainUtil.G(this.y, 56.0f);
        this.S = (int) MainUtil.G(this.y, 108.0f);
        this.U = (int) MainUtil.G(this.y, 200.0f);
        int i2 = R.id.ctrl_bottom_view;
        int i3 = R.id.ctrl_icon_play;
        int i4 = R.id.ctrl_vol_info;
        int i5 = R.id.ctrl_pad_bot;
        int i6 = R.id.ctrl_curr_time;
        int i7 = R.id.ctrl_total_time;
        int i8 = R.id.ctrl_cast_icon;
        boolean z3 = this.r0;
        int i9 = z3 ? MainApp.E1 : MainApp.G1;
        int i10 = z3 ? MainApp.g1 + i9 : 0;
        int naviHeight = getNaviHeight();
        View view = new View(mainActivity2);
        view.setId(i5);
        view.setBackgroundColor(-1593835520);
        if (naviHeight > 0) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, naviHeight);
        layoutParams.addRule(12);
        addView(view, layoutParams);
        FrameLayout frameLayout = new FrameLayout(mainActivity2);
        frameLayout.setId(i8);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams2.addRule(21);
        addView(frameLayout, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity2, null);
        appCompatTextView.setPadding(MainApp.h1, 0, (int) MainUtil.G(mainActivity2, 12.0f), 0);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setBackgroundColor(-1593835520);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams3.addRule(16, i8);
        addView(appCompatTextView, layoutParams3);
        MyButtonImage myButtonImage = new MyButtonImage(mainActivity2);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setImageResource(R.drawable.outline_chevron_left_white_24);
        myButtonImage.setBgPreColor(-1586137739);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams4.topMargin = i10;
        layoutParams4.setMarginStart(MainApp.G1);
        addView(myButtonImage, layoutParams4);
        LinearLayout linearLayout = new LinearLayout(mainActivity2);
        linearLayout.setPaddingRelative(0, i9, MainApp.G1, 0);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(21);
        layoutParams5.topMargin = MainApp.g1;
        addView(linearLayout, layoutParams5);
        MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity2);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.n(MainApp.j1, MainApp.k1);
        myButtonImage2.k(-1593835520, -1586137739);
        int i12 = MainApp.g1;
        linearLayout.addView(myButtonImage2, i12, i12);
        MyButtonImage myButtonImage3 = new MyButtonImage(mainActivity2);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setImageResource(R.drawable.outline_zoom_out_map_white_24);
        myButtonImage3.n(MainApp.j1, MainApp.k1);
        myButtonImage3.k(-1593835520, -1586137739);
        int i13 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i13, i13);
        MyButtonImage myButtonImage4 = new MyButtonImage(mainActivity2);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.n(MainApp.j1, MainApp.k1);
        myButtonImage4.k(-1593835520, -1586137739);
        int i14 = MainApp.g1;
        linearLayout.addView(myButtonImage4, i14, i14);
        MyButtonImage myButtonImage5 = new MyButtonImage(mainActivity2);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setImageResource(R.drawable.outline_slow_motion_video_white_24);
        myButtonImage5.n(MainApp.j1, MainApp.k1);
        myButtonImage5.k(-1593835520, -1586137739);
        int i15 = MainApp.g1;
        linearLayout.addView(myButtonImage5, i15, i15);
        MyButtonImage myButtonImage6 = new MyButtonImage(mainActivity2);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setImageResource(R.drawable.outline_crop_white_24);
        myButtonImage6.n(MainApp.j1, MainApp.k1);
        myButtonImage6.k(-1593835520, -1586137739);
        int i16 = MainApp.g1;
        linearLayout.addView(myButtonImage6, i16, i16);
        MyButtonImage myButtonImage7 = new MyButtonImage(mainActivity2);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.setImageResource(R.drawable.outline_picture_in_picture_alt_white_24);
        myButtonImage7.n(MainApp.j1, MainApp.k1);
        myButtonImage7.k(-1593835520, -1586137739);
        int i17 = MainApp.g1;
        linearLayout.addView(myButtonImage7, i17, i17);
        MyButtonImage myButtonImage8 = new MyButtonImage(mainActivity2);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.setImageResource(R.drawable.outline_settings_white_24);
        myButtonImage8.n(MainApp.j1, MainApp.k1);
        myButtonImage8.k(-1593835520, -1586137739);
        int i18 = MainApp.g1;
        linearLayout.addView(myButtonImage8, i18, i18);
        if (r()) {
            i = this.R;
        } else {
            i = this.S;
        }
        this.T = i;
        MyAreaView myAreaView = new MyAreaView(mainActivity2);
        myAreaView.setSkipDraw(true);
        myAreaView.setVisibility(4);
        int G = (int) MainUtil.G(mainActivity2, 160.0f);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(G, G);
        layoutParams6.topMargin = i;
        layoutParams6.setMarginStart(MainApp.F1);
        addView(myAreaView, layoutParams6);
        MyButtonCheck myButtonCheck = new MyButtonCheck(mainActivity2);
        myButtonCheck.p(R.drawable.outline_lock_red_24, R.drawable.outline_lock_white_24);
        myButtonCheck.o(MainApp.j1, MainApp.k1);
        myButtonCheck.m(-1593835520, -1586137739);
        int i19 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i19, i19);
        layoutParams7.addRule(21);
        int i20 = MainApp.g1 * 2;
        int i21 = MainApp.G1;
        layoutParams7.topMargin = i20 + i21;
        layoutParams7.setMarginEnd(i21);
        addView(myButtonCheck, layoutParams7);
        MyButtonImage myButtonImage9 = new MyButtonImage(mainActivity2);
        myButtonImage9.setId(i3);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.setImageResource(R.drawable.baseline_pause_white_24);
        myButtonImage9.n(MainApp.j1, MainApp.k1);
        myButtonImage9.k(-1593835520, -1586137739);
        int i22 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i22, i22);
        layoutParams8.addRule(2, i2);
        layoutParams8.addRule(14);
        layoutParams8.bottomMargin = MainApp.E1;
        addView(myButtonImage9, layoutParams8);
        MyButtonImage myButtonImage10 = new MyButtonImage(mainActivity2);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.setImageResource(R.drawable.baseline_fast_rewind_white_24);
        myButtonImage10.n(MainApp.j1, MainApp.k1);
        myButtonImage10.k(-1593835520, -1586137739);
        int i23 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i23, i23);
        layoutParams9.addRule(2, i2);
        layoutParams9.addRule(16, i3);
        layoutParams9.bottomMargin = MainApp.E1;
        layoutParams9.setMarginEnd((int) MainUtil.G(mainActivity2, 32.0f));
        addView(myButtonImage10, layoutParams9);
        MyButtonImage myButtonImage11 = new MyButtonImage(mainActivity2);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.setImageResource(R.drawable.baseline_fast_forward_white_24);
        myButtonImage11.n(MainApp.j1, MainApp.k1);
        myButtonImage11.k(-1593835520, -1586137739);
        int i24 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i24, i24);
        layoutParams10.addRule(2, i2);
        layoutParams10.addRule(17, i3);
        layoutParams10.bottomMargin = MainApp.E1;
        layoutParams10.setMarginStart((int) MainUtil.G(mainActivity2, 32.0f));
        addView(myButtonImage11, layoutParams10);
        MyButtonImage myButtonImage12 = new MyButtonImage(mainActivity2);
        myButtonImage12.setScaleType(scaleType);
        myButtonImage12.setImageResource(R.drawable.baseline_music_note_white_24);
        myButtonImage12.n(MainApp.j1, MainApp.k1);
        myButtonImage12.k(-1593835520, -1586137739);
        int i25 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(i25, i25);
        layoutParams11.addRule(2, i2);
        layoutParams11.bottomMargin = MainApp.E1;
        layoutParams11.setMarginStart(MainApp.G1);
        addView(myButtonImage12, layoutParams11);
        MyButtonImage myButtonImage13 = new MyButtonImage(mainActivity2);
        myButtonImage13.setScaleType(scaleType);
        myButtonImage13.setImageResource(R.drawable.outline_subtitles_white_24);
        myButtonImage13.n(MainApp.j1, MainApp.k1);
        myButtonImage13.k(-1593835520, -1586137739);
        int i26 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(i26, i26);
        layoutParams12.addRule(2, i2);
        layoutParams12.addRule(21);
        layoutParams12.bottomMargin = MainApp.E1;
        layoutParams12.setMarginEnd(MainApp.G1);
        addView(myButtonImage13, layoutParams12);
        MyButtonImage myButtonImage14 = new MyButtonImage(mainActivity2);
        myButtonImage14.setScaleType(scaleType);
        myButtonImage14.setImageResource(R.drawable.outline_brightness_6_white_24);
        myButtonImage14.n(MainApp.j1, MainApp.k1);
        myButtonImage14.k(-1593835520, -1586137739);
        int i27 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(i27, i27);
        layoutParams13.addRule(2, i2);
        layoutParams13.bottomMargin = (int) MainUtil.G(mainActivity2, 68.0f);
        layoutParams13.setMarginStart(MainApp.G1);
        addView(myButtonImage14, layoutParams13);
        MyTextView myTextView = new MyTextView(mainActivity2);
        myTextView.setGravity(16);
        myTextView.setTextSize(1, 16.0f);
        myTextView.setTextColor(-1);
        myTextView.setIncludeFontPadding(false);
        myTextView.setOutlineColor(-16777216);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams14.addRule(2, i2);
        layoutParams14.bottomMargin = (int) MainUtil.G(mainActivity2, 68.0f);
        layoutParams14.setMarginStart(MainApp.h1);
        addView(myTextView, layoutParams14);
        MyButtonImage myButtonImage15 = new MyButtonImage(mainActivity2);
        myButtonImage15.setScaleType(scaleType);
        myButtonImage15.setImageResource(R.drawable.outline_volume_up_white_24);
        myButtonImage15.n(MainApp.j1, MainApp.k1);
        myButtonImage15.k(-1593835520, -1586137739);
        int i28 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(i28, i28);
        layoutParams15.addRule(2, i2);
        layoutParams15.addRule(21);
        layoutParams15.bottomMargin = (int) MainUtil.G(mainActivity2, 68.0f);
        layoutParams15.setMarginEnd(MainApp.G1);
        addView(myButtonImage15, layoutParams15);
        MyTextView myTextView2 = new MyTextView(mainActivity2);
        myTextView2.setId(i4);
        myTextView2.setGravity(8388629);
        myTextView2.setTextSize(1, 16.0f);
        myTextView2.setTextColor(-1);
        myTextView2.setIncludeFontPadding(false);
        myTextView2.setOutlineColor(-16777216);
        myTextView2.setMinWidth(MainApp.E1);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams16.addRule(2, i2);
        layoutParams16.addRule(21);
        layoutParams16.bottomMargin = (int) MainUtil.G(mainActivity2, 68.0f);
        layoutParams16.setMarginEnd(MainApp.h1);
        addView(myTextView2, layoutParams16);
        MyButtonImage myButtonImage16 = new MyButtonImage(mainActivity2);
        myButtonImage16.setScaleType(scaleType);
        myButtonImage16.setImageResource(R.drawable.outline_download_white_24);
        myButtonImage16.n(MainApp.j1, MainApp.k1);
        myButtonImage16.k(-1593835520, -1586137739);
        myButtonImage16.setVisibility(8);
        int i29 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(i29, i29);
        layoutParams17.addRule(2, i2);
        layoutParams17.addRule(16, i4);
        layoutParams17.bottomMargin = (int) MainUtil.G(mainActivity2, 68.0f);
        layoutParams17.setMarginEnd(MainApp.G1);
        addView(myButtonImage16, layoutParams17);
        RelativeLayout relativeLayout = new RelativeLayout(mainActivity2);
        relativeLayout.setId(i2);
        int i30 = MainApp.F1;
        relativeLayout.setPadding(i30, 0, i30, 0);
        relativeLayout.setLayoutDirection(0);
        relativeLayout.setBackgroundColor(-1593835520);
        RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams18.addRule(2, i5);
        addView(relativeLayout, layoutParams18);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(mainActivity2, null);
        appCompatTextView2.setId(i6);
        appCompatTextView2.setGravity(1);
        appCompatTextView2.setTextSize(1, 14.0f);
        appCompatTextView2.setTextColor(-1);
        appCompatTextView2.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams19.addRule(15);
        relativeLayout.addView(appCompatTextView2, layoutParams19);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(mainActivity2, null);
        appCompatTextView3.setId(i7);
        appCompatTextView3.setGravity(1);
        appCompatTextView3.setTextSize(1, 14.0f);
        appCompatTextView3.setTextColor(-1);
        appCompatTextView3.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams20 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams20.addRule(15);
        layoutParams20.addRule(21);
        relativeLayout.addView(appCompatTextView3, layoutParams20);
        SeekBar seekBar = new SeekBar(mainActivity2);
        seekBar.setProgressDrawable(MainUtil.S(mainActivity2, R.drawable.seek_progress_w));
        seekBar.setThumb(MainUtil.S(mainActivity2, R.drawable.seek_thumb_w));
        RelativeLayout.LayoutParams layoutParams21 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams21.addRule(17, i6);
        layoutParams21.addRule(16, i7);
        layoutParams21.addRule(15);
        relativeLayout.addView(seekBar, layoutParams21);
        FrameLayout frameLayout2 = new FrameLayout(mainActivity2);
        frameLayout2.setVisibility(8);
        addView(frameLayout2, a.h(-1, -2, 2, i5));
        this.E = view;
        this.F = appCompatTextView;
        this.G = myButtonImage;
        this.H = linearLayout;
        this.I = myButtonImage2;
        this.J = myButtonImage3;
        this.K = myButtonImage4;
        this.L = myButtonImage5;
        this.M = myButtonImage6;
        this.N = myButtonImage7;
        this.O = myButtonImage8;
        this.P = myButtonCheck;
        this.Q = myAreaView;
        this.V = relativeLayout;
        this.W = myButtonImage10;
        this.a0 = myButtonImage9;
        this.b0 = myButtonImage11;
        this.c0 = myButtonImage12;
        this.d0 = myButtonImage13;
        this.e0 = myButtonImage16;
        this.f0 = myButtonImage14;
        this.g0 = myTextView;
        this.h0 = myButtonImage15;
        this.i0 = myTextView2;
        this.j0 = seekBar;
        this.k0 = appCompatTextView3;
        this.l0 = appCompatTextView2;
        this.s0 = frameLayout;
        this.t0 = frameLayout2;
        ControlListener controlListener2 = this.B;
        if (controlListener2 != null) {
            controlListener2.L();
        }
        post(new Runnable() { // from class: com.mycompany.app.video.VideoControl.2
            @Override // java.lang.Runnable
            public final void run() {
                VideoControl.j(VideoControl.this);
            }
        });
    }

    public final void z() {
        if (this.F == null) {
            return;
        }
        this.q0 = null;
        int i = 0;
        this.r0 = false;
        u();
        if (p()) {
            setIconShow(false);
            this.P.setVisibility(0);
            this.P.q(true, true);
            this.e0.setVisibility(8);
            return;
        }
        setIconShow(true);
        this.P.setVisibility(0);
        this.P.q(false, true);
        MyButtonImage myButtonImage = this.e0;
        if (!this.p0) {
            i = 8;
        }
        myButtonImage.setVisibility(i);
    }
}
